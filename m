Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 57B1016C25D
	for <lists+intel-gfx@lfdr.de>; Tue, 25 Feb 2020 14:31:21 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 817F86E22E;
	Tue, 25 Feb 2020 13:31:19 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga17.intel.com (mga17.intel.com [192.55.52.151])
 by gabe.freedesktop.org (Postfix) with ESMTPS id ECE5D6E22E
 for <intel-gfx@lists.freedesktop.org>; Tue, 25 Feb 2020 13:31:18 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
 by fmsmga107.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 25 Feb 2020 05:31:18 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.70,484,1574150400"; d="scan'208";a="350148723"
Received: from awymyslx-mobl.ger.corp.intel.com (HELO [10.249.153.102])
 ([10.249.153.102])
 by fmsmga001.fm.intel.com with ESMTP; 25 Feb 2020 05:31:17 -0800
To: Chris Wilson <chris@chris-wilson.co.uk>, intel-gfx@lists.freedesktop.org
References: <20200225132342.427055-1-chris@chris-wilson.co.uk>
From: Lionel Landwerlin <lionel.g.landwerlin@intel.com>
Organization: Intel Corporation (UK) Ltd. - Co. Reg. #1134945 - Pipers Way,
 Swindon SN3 1RJ
Message-ID: <8c4af2cf-31e7-2fce-030b-5505c8efcb68@intel.com>
Date: Tue, 25 Feb 2020 15:31:16 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.5.0
MIME-Version: 1.0
In-Reply-To: <20200225132342.427055-1-chris@chris-wilson.co.uk>
Content-Language: en-US
Subject: Re: [Intel-gfx] [PATCH] drm/i915/perf: Mark up the racy use of
 perf->exclusive_stream
X-BeenThere: intel-gfx@lists.freedesktop.org
X-Mailman-Version: 2.1.29
Precedence: list
List-Id: Intel graphics driver community testing & development
 <intel-gfx.lists.freedesktop.org>
List-Unsubscribe: <https://lists.freedesktop.org/mailman/options/intel-gfx>,
 <mailto:intel-gfx-request@lists.freedesktop.org?subject=unsubscribe>
List-Archive: <https://lists.freedesktop.org/archives/intel-gfx>
List-Post: <mailto:intel-gfx@lists.freedesktop.org>
List-Help: <mailto:intel-gfx-request@lists.freedesktop.org?subject=help>
List-Subscribe: <https://lists.freedesktop.org/mailman/listinfo/intel-gfx>,
 <mailto:intel-gfx-request@lists.freedesktop.org?subject=subscribe>
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

Actually, what about drivers/gpu/drm/i915/gt/intel_sseu.c?

-Lionel

On 25/02/2020 15:23, Chris Wilson wrote:
> Inside the general i915_oa_init_reg_state() we avoid using the
> perf->mutex. However, we rely on perf->exclusive_stream being valid to
> access at that point, and for that we have to control the race with
> disabling perf. This relies on the disabling being a heavy barrier that
> inspects all active contexts, after marking the perf->exclusive_stream
> as not avaiable. This should ensure that there are no more concurrent
> accesses to the perf->exclusive_stream as we destroy it.
>
> Mark up the races around the perf->exclusive_stream so that they stand
> out much more. (And hopefully we will be running kcsan to start
> validating that the only races we have are carefully controlled.)
>
> Signed-off-by: Chris Wilson <chris@chris-wilson.co.uk>
> Cc: Lionel Landwerlin <lionel.g.landwerlin@intel.com>
> ---
>   drivers/gpu/drm/i915/i915_perf.c | 13 +++++++------
>   1 file changed, 7 insertions(+), 6 deletions(-)
>
> diff --git a/drivers/gpu/drm/i915/i915_perf.c b/drivers/gpu/drm/i915/i915_perf.c
> index e34c79df6ebc..0838a12e2dc5 100644
> --- a/drivers/gpu/drm/i915/i915_perf.c
> +++ b/drivers/gpu/drm/i915/i915_perf.c
> @@ -1405,8 +1405,10 @@ static void i915_oa_stream_destroy(struct i915_perf_stream *stream)
>   	/*
>   	 * Unset exclusive_stream first, it will be checked while disabling
>   	 * the metric set on gen8+.
> +	 *
> +	 * See i915_oa_init_reg_state() and lrc_configure_all_contexts()
>   	 */
> -	perf->exclusive_stream = NULL;
> +	WRITE_ONCE(perf->exclusive_stream, NULL);
>   	perf->ops.disable_metric_set(stream);
>   
>   	free_oa_buffer(stream);
> @@ -2847,7 +2849,7 @@ static int i915_oa_stream_init(struct i915_perf_stream *stream,
>   		goto err_oa_buf_alloc;
>   
>   	stream->ops = &i915_oa_stream_ops;
> -	perf->exclusive_stream = stream;
> +	WRITE_ONCE(perf->exclusive_stream, stream);
>   
>   	ret = perf->ops.enable_metric_set(stream);
>   	if (ret) {
> @@ -2867,7 +2869,7 @@ static int i915_oa_stream_init(struct i915_perf_stream *stream,
>   	return 0;
>   
>   err_enable:
> -	perf->exclusive_stream = NULL;
> +	WRITE_ONCE(perf->exclusive_stream, NULL);
>   	perf->ops.disable_metric_set(stream);
>   
>   	free_oa_buffer(stream);
> @@ -2893,12 +2895,11 @@ void i915_oa_init_reg_state(const struct intel_context *ce,
>   {
>   	struct i915_perf_stream *stream;
>   
> -	/* perf.exclusive_stream serialised by lrc_configure_all_contexts() */
> -
>   	if (engine->class != RENDER_CLASS)
>   		return;
>   
> -	stream = engine->i915->perf.exclusive_stream;
> +	/* perf.exclusive_stream serialised by lrc_configure_all_contexts() */
> +	stream = READ_ONCE(engine->i915->perf.exclusive_stream);
>   	/*
>   	 * For gen12, only CTX_R_PWR_CLK_STATE needs update, but the caller
>   	 * is already doing that, so nothing to be done for gen12 here.


_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
