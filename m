Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 17AE62A4572
	for <lists+intel-gfx@lfdr.de>; Tue,  3 Nov 2020 13:46:46 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 688466E429;
	Tue,  3 Nov 2020 12:46:43 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga04.intel.com (mga04.intel.com [192.55.52.120])
 by gabe.freedesktop.org (Postfix) with ESMTPS id D661B6E429
 for <intel-gfx@lists.freedesktop.org>; Tue,  3 Nov 2020 12:46:42 +0000 (UTC)
IronPort-SDR: Qw5oc59STHOAWIgVMkZHMHEMBjW069tDUqRz2NDeoIh1lRREbmO5BE4Ym+iqItYlrPcTjrqQRm
 3chV7rZYDvcA==
X-IronPort-AV: E=McAfee;i="6000,8403,9793"; a="166453457"
X-IronPort-AV: E=Sophos;i="5.77,448,1596524400"; d="scan'208";a="166453457"
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga008.fm.intel.com ([10.253.24.58])
 by fmsmga104.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 03 Nov 2020 04:46:42 -0800
IronPort-SDR: 2ZeKZZ/GDwfIvhIXakKjzHuhzlM1sk/eUjhSaU/1hLbK4YDRQoMIYtc8w7wSg4NcSpUt5SGk6R
 98TDDjpK6NBg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.77,448,1596524400"; d="scan'208";a="305801091"
Received: from gaia.fi.intel.com ([10.237.72.192])
 by fmsmga008.fm.intel.com with ESMTP; 03 Nov 2020 04:46:41 -0800
Received: by gaia.fi.intel.com (Postfix, from userid 1000)
 id 5F7055C2054; Tue,  3 Nov 2020 14:44:53 +0200 (EET)
From: Mika Kuoppala <mika.kuoppala@linux.intel.com>
To: Chris Wilson <chris@chris-wilson.co.uk>, intel-gfx@lists.freedesktop.org
In-Reply-To: <20201102221057.29626-2-chris@chris-wilson.co.uk>
References: <20201102221057.29626-1-chris@chris-wilson.co.uk>
 <20201102221057.29626-2-chris@chris-wilson.co.uk>
Date: Tue, 03 Nov 2020 14:44:53 +0200
Message-ID: <87361qfw3e.fsf@gaia.fi.intel.com>
MIME-Version: 1.0
Subject: Re: [Intel-gfx] [PATCH 2/2] drm/i915/gt: Flush xcs before tgl
 breadcrumbs
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
Cc: stable@vger.kernel.org, Chris Wilson <chris@chris-wilson.co.uk>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

Chris Wilson <chris@chris-wilson.co.uk> writes:

> In a simple test case that writes to scratch and then busy-waits for the
> batch to be signaled, we observe that the signal is before the write is
> posted. That is bad news.
>
> Splitting the flush + write_dword into two separate flush_dw prevents
> the issue from being reproduced, we can presume the post-sync op is not
> so post-sync.
>

Only thing that is mildly surpricing is that first one doesnt
need postop write.

> Testcase: igt/gem_exec_fence/parallel
> Signed-off-by: Chris Wilson <chris@chris-wilson.co.uk>
> Cc: Mika Kuoppala <mika.kuoppala@linux.intel.com>
> Cc: stable@vger.kernel.org

Acked-by: Mika Kuoppala <mika.kuoppala@linux.intel.com>
> ---
>  drivers/gpu/drm/i915/gt/intel_lrc.c | 3 ++-
>  1 file changed, 2 insertions(+), 1 deletion(-)
>
> diff --git a/drivers/gpu/drm/i915/gt/intel_lrc.c b/drivers/gpu/drm/i915/gt/intel_lrc.c
> index d0be98b67138..a437140a987d 100644
> --- a/drivers/gpu/drm/i915/gt/intel_lrc.c
> +++ b/drivers/gpu/drm/i915/gt/intel_lrc.c
> @@ -5047,7 +5047,8 @@ gen12_emit_fini_breadcrumb_tail(struct i915_request *request, u32 *cs)
>  
>  static u32 *gen12_emit_fini_breadcrumb(struct i915_request *rq, u32 *cs)
>  {
> -	return gen12_emit_fini_breadcrumb_tail(rq, emit_xcs_breadcrumb(rq, cs));
> +	cs = emit_xcs_breadcrumb(rq, __gen8_emit_flush_dw(cs, 0, 0, 0));
> +	return gen12_emit_fini_breadcrumb_tail(rq, cs);
>  }
>  
>  static u32 *
> -- 
> 2.20.1
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
