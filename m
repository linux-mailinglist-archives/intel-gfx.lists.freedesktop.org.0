Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id B9D6C449C30
	for <lists+intel-gfx@lfdr.de>; Mon,  8 Nov 2021 20:07:39 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id E3CD56E82A;
	Mon,  8 Nov 2021 19:07:37 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga14.intel.com (mga14.intel.com [192.55.52.115])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 196856E82A
 for <intel-gfx@lists.freedesktop.org>; Mon,  8 Nov 2021 19:07:37 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6200,9189,10162"; a="232552288"
X-IronPort-AV: E=Sophos;i="5.87,218,1631602800"; d="scan'208";a="232552288"
Received: from orsmga007.jf.intel.com ([10.7.209.58])
 by fmsmga103.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 08 Nov 2021 11:07:36 -0800
X-IronPort-AV: E=Sophos;i="5.87,218,1631602800"; d="scan'208";a="491338402"
Received: from mschuett-mobl2.ger.corp.intel.com (HELO localhost)
 ([10.249.33.194])
 by orsmga007-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 08 Nov 2021 11:07:22 -0800
From: Jani Nikula <jani.nikula@linux.intel.com>
To: Tejas Upadhyay <tejaskumarx.surendrakumar.upadhyay@intel.com>,
 intel-gfx@lists.freedesktop.org
In-Reply-To: <20211108105617.3522809-1-tejaskumarx.surendrakumar.upadhyay@intel.com>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
References: <20211108105617.3522809-1-tejaskumarx.surendrakumar.upadhyay@intel.com>
Date: Mon, 08 Nov 2021 21:07:19 +0200
Message-ID: <87h7cm79g8.fsf@intel.com>
MIME-Version: 1.0
Content-Type: text/plain
Subject: Re: [Intel-gfx] [PATCH V2] drm/i915/gt: Hold RPM wakelock during
 PXP suspend
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
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Mon, 08 Nov 2021, Tejas Upadhyay <tejaskumarx.surendrakumar.upadhyay@intel.com> wrote:
> selftest --r live shows failure in suspend tests when
> RPM wakelock is not acquired during suspend.
>
> This changes addresses below error :
> <4> [154.177535] RPM wakelock ref not held during HW access
> <4> [154.177575] WARNING: CPU: 4 PID: 5772 at
> drivers/gpu/drm/i915/intel_runtime_pm.h:113
> fwtable_write32+0x240/0x320 [i915]
> <4> [154.177974] Modules linked in: i915(+) vgem drm_shmem_helper
> fuse snd_hda_codec_hdmi snd_hda_codec_realtek snd_hda_codec_generic
> ledtrig_audio mei_hdcp mei_pxp x86_pkg_temp_thermal coretemp
> crct10dif_pclmul crc32_pclmul ghash_clmulni_intel snd_intel_dspcfg
> snd_hda_codec snd_hwdep igc snd_hda_core ttm mei_me ptp
> snd_pcm prime_numbers mei i2c_i801 pps_core i2c_smbus intel_lpss_pci
> btusb btrtl btbcm btintel bluetooth ecdh_generic ecc [last unloaded: i915]
> <4> [154.178143] CPU: 4 PID: 5772 Comm: i915_selftest Tainted: G
> U            5.15.0-rc6-CI-Patchwork_21432+ #1
> <4> [154.178154] Hardware name: ASUS System Product Name/TUF GAMING
> Z590-PLUS WIFI, BIOS 0811 04/06/2021
> <4> [154.178160] RIP: 0010:fwtable_write32+0x240/0x320 [i915]
> <4> [154.178604] Code: 15 7b e1 0f 0b e9 34 fe ff ff 80 3d a9 89 31
> 00 00 0f 85 31 fe ff ff 48 c7 c7 88 9e 4f a0 c6 05 95 89 31 00 01 e8
> c0 15 7b e1 <0f> 0b e9 17 fe ff ff 8b 05 0f 83 58 e2 85 c0 0f 85 8d
> 00 00 00 48
> <4> [154.178614] RSP: 0018:ffffc900016279f0 EFLAGS: 00010286
> <4> [154.178626] RAX: 0000000000000000 RBX: ffff888204fe0ee0
> RCX: 0000000000000001
> <4> [154.178634] RDX: 0000000080000001 RSI: ffffffff823142b5
> RDI: 00000000ffffffff
> <4> [154.178641] RBP: 00000000000320f0 R08: 0000000000000000
> R09: c0000000ffffcd5a
> <4> [154.178647] R10: 00000000000f8c90 R11: ffffc90001627808
> R12: 0000000000000000
> <4> [154.178654] R13: 0000000040000000 R14: ffffffffa04d12e0
> R15: 0000000000000000
> <4> [154.178660] FS:  00007f7390aa4c00(0000) GS:ffff88844f000000(0000)
> knlGS:0000000000000000
> <4> [154.178669] CS:  0010 DS: 0000 ES: 0000 CR0: 0000000080050033
> <4> [154.178675] CR2: 000055bc40595028 CR3: 0000000204474005
> CR4: 0000000000770ee0
> <4> [154.178682] PKRU: 55555554
> <4> [154.178687] Call Trace:
> <4> [154.178706]  intel_pxp_fini_hw+0x23/0x30 [i915]
> <4> [154.179284]  intel_pxp_suspend+0x1f/0x30 [i915]
> <4> [154.179807]  live_gt_resume+0x5b/0x90 [i915]
>
> Changes since V1 :
> 	- split the HW access parts in gt_suspend_late - Daniele
> 	- Remove default PXP configs
>
> Signed-off-by: Tejas Upadhyay <tejaskumarx.surendrakumar.upadhyay@intel.com>
> ---
>  drivers/gpu/drm/i915/gt/intel_gt_pm.c   |  7 ++++---
>  drivers/gpu/drm/i915/pxp/intel_pxp_pm.c | 15 ++++++++++++---
>  drivers/gpu/drm/i915/pxp/intel_pxp_pm.h | 18 ++++++++++++++++--
>  3 files changed, 32 insertions(+), 8 deletions(-)
>
> diff --git a/drivers/gpu/drm/i915/gt/intel_gt_pm.c b/drivers/gpu/drm/i915/gt/intel_gt_pm.c
> index b4a8594bc46c..d4029de1c80d 100644
> --- a/drivers/gpu/drm/i915/gt/intel_gt_pm.c
> +++ b/drivers/gpu/drm/i915/gt/intel_gt_pm.c
> @@ -303,7 +303,7 @@ void intel_gt_suspend_prepare(struct intel_gt *gt)
>  	user_forcewake(gt, true);
>  	wait_for_suspend(gt);
>  
> -	intel_pxp_suspend(&gt->pxp, false);
> +	intel_pxp_suspend_prepare(&gt->pxp, false);
>  }
>  
>  static suspend_state_t pm_suspend_target(void)
> @@ -328,6 +328,7 @@ void intel_gt_suspend_late(struct intel_gt *gt)
>  	GEM_BUG_ON(gt->awake);
>  
>  	intel_uc_suspend(&gt->uc);
> +	intel_pxp_suspend(&gt->pxp);
>  
>  	/*
>  	 * On disabling the device, we want to turn off HW access to memory
> @@ -355,7 +356,7 @@ void intel_gt_suspend_late(struct intel_gt *gt)
>  
>  void intel_gt_runtime_suspend(struct intel_gt *gt)
>  {
> -	intel_pxp_suspend(&gt->pxp, true);
> +	intel_pxp_runtime_suspend(&gt->pxp);
>  	intel_uc_runtime_suspend(&gt->uc);
>  
>  	GT_TRACE(gt, "\n");
> @@ -373,7 +374,7 @@ int intel_gt_runtime_resume(struct intel_gt *gt)
>  	if (ret)
>  		return ret;
>  
> -	intel_pxp_resume(&gt->pxp);
> +	intel_pxp_runtime_resume(&gt->pxp);
>  
>  	return 0;
>  }
> diff --git a/drivers/gpu/drm/i915/pxp/intel_pxp_pm.c b/drivers/gpu/drm/i915/pxp/intel_pxp_pm.c
> index 23fd86de5a24..3f91996dc6be 100644
> --- a/drivers/gpu/drm/i915/pxp/intel_pxp_pm.c
> +++ b/drivers/gpu/drm/i915/pxp/intel_pxp_pm.c
> @@ -7,8 +7,9 @@
>  #include "intel_pxp_irq.h"
>  #include "intel_pxp_pm.h"
>  #include "intel_pxp_session.h"
> +#include "i915_drv.h"
>  
> -void intel_pxp_suspend(struct intel_pxp *pxp, bool runtime)
> +void intel_pxp_suspend_prepare(struct intel_pxp *pxp, bool runtime)
>  {
>  	if (!intel_pxp_is_enabled(pxp))
>  		return;
> @@ -23,10 +24,18 @@ void intel_pxp_suspend(struct intel_pxp *pxp, bool runtime)
>  	 */
>  	if (!runtime)
>  		intel_pxp_invalidate(pxp);
> +}
>  
> -	intel_pxp_fini_hw(pxp);
> +void intel_pxp_suspend(struct intel_pxp *pxp)
> +{
> +	intel_wakeref_t wakeref;
>  
> -	pxp->hw_state_invalidated = false;
> +	if (!intel_pxp_is_enabled(pxp))
> +		return;
> +	with_intel_runtime_pm(&pxp_to_gt(pxp)->i915->runtime_pm, wakeref) {
> +		intel_pxp_fini_hw(pxp);
> +		pxp->hw_state_invalidated = false;
> +	}
>  }
>  
>  void intel_pxp_resume(struct intel_pxp *pxp)
> diff --git a/drivers/gpu/drm/i915/pxp/intel_pxp_pm.h b/drivers/gpu/drm/i915/pxp/intel_pxp_pm.h
> index c89e97a0c3d0..f2cf3117ed93 100644
> --- a/drivers/gpu/drm/i915/pxp/intel_pxp_pm.h
> +++ b/drivers/gpu/drm/i915/pxp/intel_pxp_pm.h
> @@ -9,10 +9,15 @@
>  #include "intel_pxp_types.h"
>  
>  #ifdef CONFIG_DRM_I915_PXP
> -void intel_pxp_suspend(struct intel_pxp *pxp, bool runtime);
> +void intel_pxp_suspend_prepare(struct intel_pxp *pxp, bool runtime);
> +void intel_pxp_suspend(struct intel_pxp *pxp);
>  void intel_pxp_resume(struct intel_pxp *pxp);
>  #else
> -static inline void intel_pxp_suspend(struct intel_pxp *pxp, bool runtime)
> +static inline void intel_pxp_suspend_prepare(struct intel_pxp *pxp, bool runtime)
> +{
> +}
> +
> +static inline void intel_pxp_suspend(struct intel_pxp *pxp)
>  {
>  }
>  
> @@ -20,5 +25,14 @@ static inline void intel_pxp_resume(struct intel_pxp *pxp)
>  {
>  }
>  #endif
> +static inline void intel_pxp_runtime_suspend(struct intel_pxp *pxp)
> +{
> +	intel_pxp_suspend_prepare(pxp, true);
> +	intel_pxp_suspend(pxp);
> +}
>  
> +static inline void intel_pxp_runtime_resume(struct intel_pxp *pxp)
> +{
> +	intel_pxp_resume(pxp);
> +}

For the casual reader, the pxp suspend/resume functions have become an
impossible interface to use correctly without digging into the source
code.

Separate runtime suspend/resume calls *and* a suspend function with
runtime parameter?!?

BR,
Jani.

>  #endif /* __INTEL_PXP_PM_H__ */

-- 
Jani Nikula, Intel Open Source Graphics Center
