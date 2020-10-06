Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 299C0284A62
	for <lists+intel-gfx@lfdr.de>; Tue,  6 Oct 2020 12:36:38 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 28A296E183;
	Tue,  6 Oct 2020 10:36:35 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga12.intel.com (mga12.intel.com [192.55.52.136])
 by gabe.freedesktop.org (Postfix) with ESMTPS id AEA4E6E183
 for <intel-gfx@lists.freedesktop.org>; Tue,  6 Oct 2020 10:36:33 +0000 (UTC)
IronPort-SDR: 9n/eXiJtQ6QxY/Uj5fBCLrriRViFB6h6ppfEH5JGkwI2KxyZoYLBBS0GDrje5HlcWtOuYjUOV8
 +IIeKXngUSDQ==
X-IronPort-AV: E=McAfee;i="6000,8403,9765"; a="143831096"
X-IronPort-AV: E=Sophos;i="5.77,342,1596524400"; d="scan'208";a="143831096"
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga002.jf.intel.com ([10.7.209.21])
 by fmsmga106.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 06 Oct 2020 03:36:32 -0700
IronPort-SDR: 35Kxq5dl5b+5RLY8zkj5CPQI5jG4/N3LhmMAObypdGSTC/REj6b+wFezVbkNWWkFima9DV8CPU
 1oNCXd3+q2Wg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.77,342,1596524400"; d="scan'208";a="327503824"
Received: from gaia.fi.intel.com ([10.237.72.192])
 by orsmga002.jf.intel.com with ESMTP; 06 Oct 2020 03:36:31 -0700
Received: by gaia.fi.intel.com (Postfix, from userid 1000)
 id CAF205C1E61; Tue,  6 Oct 2020 13:35:04 +0300 (EEST)
From: Mika Kuoppala <mika.kuoppala@linux.intel.com>
To: Chris Wilson <chris@chris-wilson.co.uk>, intel-gfx@lists.freedesktop.org
In-Reply-To: <20200929112639.24223-1-chris@chris-wilson.co.uk>
References: <20200929112639.24223-1-chris@chris-wilson.co.uk>
Date: Tue, 06 Oct 2020 13:35:04 +0300
Message-ID: <87lfgjfxrb.fsf@gaia.fi.intel.com>
MIME-Version: 1.0
Subject: Re: [Intel-gfx] [PATCH] drm/i915/gt: Scrub HW state on remove
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

> Currently we do a final scrub of the HW state upon release. However,
> when rebinding the device, this is too late as the device may either
> have been partially rebound or the device is no longer accessible. If
> the device has been removed before release, the reset goes astray
> leaving the device in an inconsistent state, unlikely to work without a
> full PCI reset. Furthermore, if the device is partially rebound before
> the HW scrubbing, there may be leftover HW state that should have been
> scrubbed. Either way, we need to push the scrubbing earlier before the
> removal, so into unregister. The danger is that on older machines,
> reseting the GPU also impact the display engine and so the reset should
> be after modesetting is disabled (and before reuse we need to recover
> modesetting).
>
> Closes: https://gitlab.freedesktop.org/drm/intel/-/issues/2508
> Testcase: igt/core_hotunplug
> Signed-off-by: Chris Wilson <chris@chris-wilson.co.uk>

Reviewed-by: Mika Kuoppala <mika.kuoppala@linux.intel.com>

> ---
>  drivers/gpu/drm/i915/gt/intel_gt.c | 11 ++++++-----
>  1 file changed, 6 insertions(+), 5 deletions(-)
>
> diff --git a/drivers/gpu/drm/i915/gt/intel_gt.c b/drivers/gpu/drm/i915/gt/intel_gt.c
> index 39b428c5049c..44f1d51e5ae5 100644
> --- a/drivers/gpu/drm/i915/gt/intel_gt.c
> +++ b/drivers/gpu/drm/i915/gt/intel_gt.c
> @@ -614,6 +614,8 @@ void intel_gt_driver_remove(struct intel_gt *gt)
>  
>  void intel_gt_driver_unregister(struct intel_gt *gt)
>  {
> +	intel_wakeref_t wakeref;
> +
>  	intel_rps_driver_unregister(&gt->rps);
>  
>  	/*
> @@ -622,16 +624,15 @@ void intel_gt_driver_unregister(struct intel_gt *gt)
>  	 * resources.
>  	 */
>  	intel_gt_set_wedged(gt);
> +
> +	/* Scrub all HW state upon release */
> +	with_intel_runtime_pm(gt->uncore->rpm, wakeref)
> +		__intel_gt_reset(gt, ALL_ENGINES);
>  }
>  
>  void intel_gt_driver_release(struct intel_gt *gt)
>  {
>  	struct i915_address_space *vm;
> -	intel_wakeref_t wakeref;
> -
> -	/* Scrub all HW state upon release */
> -	with_intel_runtime_pm(gt->uncore->rpm, wakeref)
> -		__intel_gt_reset(gt, ALL_ENGINES);
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
