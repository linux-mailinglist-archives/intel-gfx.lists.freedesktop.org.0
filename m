Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 87B661E1E16
	for <lists+intel-gfx@lfdr.de>; Tue, 26 May 2020 11:13:03 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id E551B89BA1;
	Tue, 26 May 2020 09:13:00 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga11.intel.com (mga11.intel.com [192.55.52.93])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 8060189612
 for <intel-gfx@lists.freedesktop.org>; Tue, 26 May 2020 09:12:59 +0000 (UTC)
IronPort-SDR: vX8VFfjvyN0EUNSJ0lrL2CoObqZS+IUJjkU11q4CyVY6C37paKw0fFnTTlT63qwv/9GCF76ihd
 B5nMEHLLBLRQ==
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga008.fm.intel.com ([10.253.24.58])
 by fmsmga102.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 26 May 2020 02:12:59 -0700
IronPort-SDR: 9m+w+RmftQRjKpgkd4raeHMKx7c/Etb0il76EEVrFuRDwi1hKwm3MJsGN3PwNMp8r3xZTIE/Ff
 vv1XlMhbfG5A==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.73,436,1583222400"; d="scan'208";a="256408563"
Received: from gaia.fi.intel.com ([10.237.72.192])
 by fmsmga008.fm.intel.com with ESMTP; 26 May 2020 02:12:58 -0700
Received: by gaia.fi.intel.com (Postfix, from userid 1000)
 id 8CD0F5C2C40; Tue, 26 May 2020 12:10:35 +0300 (EEST)
From: Mika Kuoppala <mika.kuoppala@linux.intel.com>
To: Chris Wilson <chris@chris-wilson.co.uk>, intel-gfx@lists.freedesktop.org
In-Reply-To: <20200525151459.12083-1-chris@chris-wilson.co.uk>
References: <20200525120411.6543-1-chris@chris-wilson.co.uk>
 <20200525151459.12083-1-chris@chris-wilson.co.uk>
Date: Tue, 26 May 2020 12:10:35 +0300
Message-ID: <87a71vt62c.fsf@gaia.fi.intel.com>
MIME-Version: 1.0
Subject: Re: [Intel-gfx] [PATCH] drm/i915/gt: Force the GT reset on shutdown
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
Cc: stable@kernel.org, Chris Wilson <chris@chris-wilson.co.uk>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

Chris Wilson <chris@chris-wilson.co.uk> writes:

> Before we return control to the system, and letting it reuse all the
> pages being accessed by HW, we must disable the HW. At the moment, we
> dare not reset the GPU if it will clobber the display, but once we know
> the display has been disabled, we can proceed with the reset as we
> shutdown the module. We know the next user must reinitialise the HW for
> their purpose.
>
> Closes: https://gitlab.freedesktop.org/drm/intel/-/issues/489
> Signed-off-by: Chris Wilson <chris@chris-wilson.co.uk>
> Cc: stable@kernel.org

Reviewed-by: Mika Kuoppala <mika.kuoppala@linux.intel.com>
> ---
>  drivers/gpu/drm/i915/gt/intel_gt.c | 5 +++++
>  1 file changed, 5 insertions(+)
>
> diff --git a/drivers/gpu/drm/i915/gt/intel_gt.c b/drivers/gpu/drm/i915/gt/intel_gt.c
> index f069551e412f..ebc29b6ee86c 100644
> --- a/drivers/gpu/drm/i915/gt/intel_gt.c
> +++ b/drivers/gpu/drm/i915/gt/intel_gt.c
> @@ -616,6 +616,11 @@ void intel_gt_driver_unregister(struct intel_gt *gt)
>  void intel_gt_driver_release(struct intel_gt *gt)
>  {
>  	struct i915_address_space *vm;
> +	intel_wakeref_t wakeref;
> +
> +	/* Scrub all HW state upon release */
> +	with_intel_runtime_pm(gt->uncore->rpm, wakeref)
> +		__intel_gt_reset(gt, ALL_ENGINES);
>  
>  	vm = fetch_and_zero(&gt->vm);
>  	if (vm) /* FIXME being called twice on error paths :( */
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
