Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id D83401D293F
	for <lists+intel-gfx@lfdr.de>; Thu, 14 May 2020 09:57:56 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 740EB89E1D;
	Thu, 14 May 2020 07:57:54 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga05.intel.com (mga05.intel.com [192.55.52.43])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 8ADB589DFC
 for <intel-gfx@lists.freedesktop.org>; Thu, 14 May 2020 07:57:52 +0000 (UTC)
IronPort-SDR: cOLUnG7ilpu06lItR/mphR193Ee0N/YIGxXJ6z2yG2OO27XKGg5eKsDb87J+ukBcqhEpwfS5le
 tgTSiG4rrJ8Q==
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
 by fmsmga105.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 14 May 2020 00:57:52 -0700
IronPort-SDR: G0xGa8WCYyB0AftXjVyXvJS6RjfP4IsqQQFDXw+dxZm2Ks2bZZdHn3tMIufzHD0SD5yaUcDCqc
 7DCpiyv3D1iA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.73,390,1583222400"; d="scan'208";a="297946166"
Received: from gaia.fi.intel.com ([10.237.72.192])
 by fmsmga002.fm.intel.com with ESMTP; 14 May 2020 00:57:51 -0700
Received: by gaia.fi.intel.com (Postfix, from userid 1000)
 id 9FF615C1DC1; Thu, 14 May 2020 10:55:38 +0300 (EEST)
From: Mika Kuoppala <mika.kuoppala@linux.intel.com>
To: Chris Wilson <chris@chris-wilson.co.uk>, intel-gfx@lists.freedesktop.org
In-Reply-To: <20200513074809.18194-16-chris@chris-wilson.co.uk>
References: <20200513074809.18194-1-chris@chris-wilson.co.uk>
 <20200513074809.18194-16-chris@chris-wilson.co.uk>
Date: Thu, 14 May 2020 10:55:38 +0300
Message-ID: <87y2pvt0g5.fsf@gaia.fi.intel.com>
MIME-Version: 1.0
Subject: Re: [Intel-gfx] [PATCH 16/24] drm/i915/selftests: Always call the
 provided engine->emit_init_breadcrumb
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
Cc: Chris Wilson <chris@chris-wilson.co.uk>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

Chris Wilson <chris@chris-wilson.co.uk> writes:

> While this does not appear to fix any issues, the backend itself knows
> when it wants to emit a breadcrumb, so let it make the final call.
>
> Signed-off-by: Chris Wilson <chris@chris-wilson.co.uk>

Reviewed-by: Mika Kuoppala <mika.kuoppala@linux.intel.com>

> ---
>  drivers/gpu/drm/i915/selftests/i915_perf.c   | 3 +--
>  drivers/gpu/drm/i915/selftests/igt_spinner.c | 3 +--
>  2 files changed, 2 insertions(+), 4 deletions(-)
>
> diff --git a/drivers/gpu/drm/i915/selftests/i915_perf.c b/drivers/gpu/drm/i915/selftests/i915_perf.c
> index 5608fab98d5d..ca0c9dbab713 100644
> --- a/drivers/gpu/drm/i915/selftests/i915_perf.c
> +++ b/drivers/gpu/drm/i915/selftests/i915_perf.c
> @@ -221,8 +221,7 @@ static int live_noa_delay(void *arg)
>  		goto out;
>  	}
>  
> -	if (rq->engine->emit_init_breadcrumb &&
> -	    i915_request_timeline(rq)->has_initial_breadcrumb) {
> +	if (rq->engine->emit_init_breadcrumb) {
>  		err = rq->engine->emit_init_breadcrumb(rq);
>  		if (err) {
>  			i915_request_add(rq);
> diff --git a/drivers/gpu/drm/i915/selftests/igt_spinner.c b/drivers/gpu/drm/i915/selftests/igt_spinner.c
> index 9ad4ab088466..e35ba5f9e73f 100644
> --- a/drivers/gpu/drm/i915/selftests/igt_spinner.c
> +++ b/drivers/gpu/drm/i915/selftests/igt_spinner.c
> @@ -169,8 +169,7 @@ igt_spinner_create_request(struct igt_spinner *spin,
>  
>  	intel_gt_chipset_flush(engine->gt);
>  
> -	if (engine->emit_init_breadcrumb &&
> -	    i915_request_timeline(rq)->has_initial_breadcrumb) {
> +	if (engine->emit_init_breadcrumb) {
>  		err = engine->emit_init_breadcrumb(rq);
>  		if (err)
>  			goto cancel_rq;
> -- 
> 2.20.1
>
> _______________________________________________
> Intel-gfx mailing list
> Intel-gfx@lists.freedesktop.org
> https://lists.freedesktop.org/mailman/listinfo/intel-gfx
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
