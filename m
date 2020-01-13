Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 0A1FA13932B
	for <lists+intel-gfx@lfdr.de>; Mon, 13 Jan 2020 15:09:51 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 9455A6E0BC;
	Mon, 13 Jan 2020 14:09:48 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga04.intel.com (mga04.intel.com [192.55.52.120])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 749376E0B9
 for <intel-gfx@lists.freedesktop.org>; Mon, 13 Jan 2020 14:09:27 +0000 (UTC)
X-Amp-Result: UNKNOWN
X-Amp-Original-Verdict: FILE UNKNOWN
X-Amp-File-Uploaded: False
Received: from orsmga007.jf.intel.com ([10.7.209.58])
 by fmsmga104.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 13 Jan 2020 06:09:27 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.69,429,1571727600"; d="scan'208";a="213005446"
Received: from stinkbox.fi.intel.com (HELO stinkbox) ([10.237.72.174])
 by orsmga007.jf.intel.com with SMTP; 13 Jan 2020 06:09:24 -0800
Received: by stinkbox (sSMTP sendmail emulation);
 Mon, 13 Jan 2020 16:09:23 +0200
Date: Mon, 13 Jan 2020 16:09:23 +0200
From: Ville =?iso-8859-1?Q?Syrj=E4l=E4?= <ville.syrjala@linux.intel.com>
To: Chris Wilson <chris@chris-wilson.co.uk>
Message-ID: <20200113140923.GP13686@intel.com>
References: <20200113132614.1820518-1-chris@chris-wilson.co.uk>
 <20200113132956.1832986-1-chris@chris-wilson.co.uk>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200113132956.1832986-1-chris@chris-wilson.co.uk>
X-Patchwork-Hint: comment
User-Agent: Mutt/1.10.1 (2018-07-13)
Subject: Re: [Intel-gfx] [PATCH v2] drm/i915/gt: Sanitize and reset GPU
 before removing powercontext
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
Cc: intel-gfx@lists.freedesktop.org
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Mon, Jan 13, 2020 at 01:29:56PM +0000, Chris Wilson wrote:
> As a final paranoid step (we _should_ have reset the GPU on suspending
> the device prior to unload), reset the GPU once more before removing the
> powercontext and other related power saving paraphernalia.
> =

> A clue that this may not be the case is
> =

> <7> [313.203721] __intel_gt_set_wedged rcs'0
> <7> [313.203746] __intel_gt_set_wedged 	Awake? 3
> <7> [313.203751] __intel_gt_set_wedged 	Barriers?: no
> <7> [313.203756] __intel_gt_set_wedged 	Latency: 0us
> <7> [313.203762] __intel_gt_set_wedged 	Reset count: 0 (global 0)
> <7> [313.203766] __intel_gt_set_wedged 	Requests:
> <7> [313.203785] __intel_gt_set_wedged 	MMIO base:  0x00002000
> <7> [313.203819] __intel_gt_set_wedged 	RING_START: 0x00000000
> <7> [313.203826] __intel_gt_set_wedged 	RING_HEAD:  0x00000000
> <7> [313.203833] __intel_gt_set_wedged 	RING_TAIL:  0x00000000
> <7> [313.203844] __intel_gt_set_wedged 	RING_CTL:   0x00000000
> <7> [313.203854] __intel_gt_set_wedged 	RING_MODE:  0x00000000
> <7> [313.203861] __intel_gt_set_wedged 	RING_IMR: fffffefe
> <7> [313.203875] __intel_gt_set_wedged 	ACTHD:  0x00000000_00000000
> <7> [313.203888] __intel_gt_set_wedged 	BBADDR: 0x00000000_00000000
> <7> [313.203901] __intel_gt_set_wedged 	DMA_FADDR: 0x00000000_00000000
> <7> [313.203909] __intel_gt_set_wedged 	IPEIR: 0x00000000
> <7> [313.203916] __intel_gt_set_wedged 	IPEHR: 0xcccccccc
> <7> [313.203921] __intel_gt_set_wedged 	Execlist tasklet queued? no (enab=
led), preempt? inactive, timeslice? inactive
> <7> [313.203932] __intel_gt_set_wedged 	Execlist status: 0x00044032 00000=
020; CSB read:5, write:0, entries:6
> <7> [313.203937] __intel_gt_set_wedged 	Execlist CSB[0]: 0x00000001, cont=
ext: 0
> <7> [313.203952] __intel_gt_set_wedged 		Pending[0] ring:{start:000c4000,=
 hwsp:fedfc000, seqno:00000000}, rq:  402e:2-  prio=3D2147483647 @ 207ms: [=
i915]
> <7> [313.203983] __intel_gt_set_wedged 		E  402e:2-  prio=3D2147483647 @ =
207ms: [i915]
> <7> [313.204006] __intel_gt_set_wedged 		Queue priority hint: 3
> =

> during rapid fault-injection reloads. 0xcc is POISON_FREE_INIT which
> suggests that the system cleared the pages on initialisation as they are
> still being used from the previous module load.
> =

> Despite that we also have a couple of GPU resets prior to this...
> I have a sneaky suspicion that may be a GuC artifact.
> =

> Signed-off-by: Chris Wilson <chris@chris-wilson.co.uk>
> Cc: Andi Shyti <andi.shyti@intel.com>
> Cc: Mika Kuoppala <mika.kuoppala@linux.intel.com>
> =

> drm/i915/gt: Lift clearing GT wedged out of gt_sanitize
> =

> We only want to try and reset a wedged device on resume, not before
> suspend, so lift the recovery out of the commont gt_sanitize().
> =

> Signed-off-by: Chris Wilson <chris@chris-wilson.co.uk>
> Cc: Andi Shyti <andi.shyti@intel.com>
> Cc: Mika Kuoppala <mika.kuoppala@linux.intel.com>
> ---
>  drivers/gpu/drm/i915/gt/intel_gt_pm.c | 56 +++++++++++----------------
>  1 file changed, 22 insertions(+), 34 deletions(-)
> =

> diff --git a/drivers/gpu/drm/i915/gt/intel_gt_pm.c b/drivers/gpu/drm/i915=
/gt/intel_gt_pm.c
> index d1c2f034296a..09a78d767e24 100644
> --- a/drivers/gpu/drm/i915/gt/intel_gt_pm.c
> +++ b/drivers/gpu/drm/i915/gt/intel_gt_pm.c
> @@ -118,36 +118,16 @@ void intel_gt_pm_init(struct intel_gt *gt)
>  	intel_rps_init(&gt->rps);
>  }
>  =

> -static bool reset_engines(struct intel_gt *gt)
> +static void reset_engines(struct intel_gt *gt)
>  {
>  	if (INTEL_INFO(gt->i915)->gpu_reset_clobbers_display)

Should that be a !gpu_reset_clobbers_display now?

> -		return false;
> -
> -	return __intel_gt_reset(gt, ALL_ENGINES) =3D=3D 0;
> +		__intel_gt_reset(gt, ALL_ENGINES);
>  }
>  =

> -static void gt_sanitize(struct intel_gt *gt, bool force)
> +static void gt_sanitize(struct intel_gt *gt)
>  {
>  	struct intel_engine_cs *engine;
>  	enum intel_engine_id id;
> -	intel_wakeref_t wakeref;
> -
> -	GT_TRACE(gt, "force:%s", yesno(force));
> -
> -	/* Use a raw wakeref to avoid calling intel_display_power_get early */
> -	wakeref =3D intel_runtime_pm_get(gt->uncore->rpm);
> -	intel_uncore_forcewake_get(gt->uncore, FORCEWAKE_ALL);
> -
> -	/*
> -	 * As we have just resumed the machine and woken the device up from
> -	 * deep PCI sleep (presumably D3_cold), assume the HW has been reset
> -	 * back to defaults, recovering from whatever wedged state we left it
> -	 * in and so worth trying to use the device once more.
> -	 */
> -	if (intel_gt_is_wedged(gt))
> -		intel_gt_unset_wedged(gt);
> -
> -	intel_uc_sanitize(&gt->uc);
>  =

>  	for_each_engine(engine, gt, id)
>  		if (engine->reset.prepare)
> @@ -155,21 +135,18 @@ static void gt_sanitize(struct intel_gt *gt, bool f=
orce)
>  =

>  	intel_uc_reset_prepare(&gt->uc);
>  =

> -	if (reset_engines(gt) || force) {
> -		for_each_engine(engine, gt, id)
> -			__intel_engine_reset(engine, false);
> -	}
> +	reset_engines(gt);
> +	for_each_engine(engine, gt, id)
> +		__intel_engine_reset(engine, false);
>  =

>  	for_each_engine(engine, gt, id)
>  		if (engine->reset.finish)
>  			engine->reset.finish(engine);
> -
> -	intel_uncore_forcewake_put(gt->uncore, FORCEWAKE_ALL);
> -	intel_runtime_pm_put(gt->uncore->rpm, wakeref);
>  }
>  =

>  void intel_gt_pm_fini(struct intel_gt *gt)
>  {
> +	intel_gt_set_wedged(gt);
>  	intel_rc6_fini(&gt->rc6);
>  }
>  =

> @@ -194,13 +171,25 @@ int intel_gt_resume(struct intel_gt *gt)
>  	intel_gt_pm_get(gt);
>  =

>  	intel_uncore_forcewake_get(gt->uncore, FORCEWAKE_ALL);
> +
>  	intel_rc6_sanitize(&gt->rc6);
> -	gt_sanitize(gt, true);
> -	if (intel_gt_is_wedged(gt)) {
> +	intel_uc_sanitize(&gt->uc);
> +
> +	/*
> +	 * As we have just resumed the machine and woken the device up from
> +	 * deep PCI sleep (presumably D3_cold), assume the HW has been reset
> +	 * back to defaults, recovering from whatever wedged state we left it
> +	 * in and so worth trying to use the device once more.
> +	 */
> +	if (intel_gt_is_wedged(gt))
> +		intel_gt_unset_wedged(gt);
> +	if (unlikely(intel_gt_is_wedged(gt))) {
>  		err =3D -EIO;
>  		goto out_fw;
>  	}
>  =

> +	gt_sanitize(gt);
> +
>  	/* Only when the HW is re-initialised, can we replay the requests */
>  	err =3D intel_gt_init_hw(gt);
>  	if (err) {
> @@ -308,8 +297,7 @@ void intel_gt_suspend_late(struct intel_gt *gt)
>  		intel_llc_disable(&gt->llc);
>  	}
>  =

> -	gt_sanitize(gt, false);
> -
> +	intel_gt_set_wedged(gt);
>  	GT_TRACE(gt, "\n");
>  }
>  =

> -- =

> 2.25.0.rc2
> =

> _______________________________________________
> Intel-gfx mailing list
> Intel-gfx@lists.freedesktop.org
> https://lists.freedesktop.org/mailman/listinfo/intel-gfx

-- =

Ville Syrj=E4l=E4
Intel
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
