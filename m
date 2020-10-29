Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 6B9F329F75D
	for <lists+intel-gfx@lfdr.de>; Thu, 29 Oct 2020 23:06:35 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 33C396E915;
	Thu, 29 Oct 2020 22:06:32 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 4778A6E915
 for <intel-gfx@lists.freedesktop.org>; Thu, 29 Oct 2020 22:06:31 +0000 (UTC)
IronPort-SDR: epCZswCSiqWkfo9e4nCleq4GhbMWH27i1kWZZapsuuZEO/j0HKWRICDpNy0cD+BjgiKbFbRzEN
 IEQcKxkzj79A==
X-IronPort-AV: E=McAfee;i="6000,8403,9789"; a="155492413"
X-IronPort-AV: E=Sophos;i="5.77,430,1596524400"; d="scan'208";a="155492413"
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
 by orsmga101.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 29 Oct 2020 15:06:30 -0700
IronPort-SDR: 0FjZo4rOy1Cd/Rfu8E0XCDP243fOxUZ6nzBKB0CfmcFQt1hyBk/fOsPeOyk3X2Y4BhSI12Q3kh
 YwjZq3mt6pKg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.77,430,1596524400"; d="scan'208";a="356411900"
Received: from fmsmsx602.amr.corp.intel.com ([10.18.126.82])
 by fmsmga002.fm.intel.com with ESMTP; 29 Oct 2020 15:06:29 -0700
Received: from fmsmsx612.amr.corp.intel.com (10.18.126.92) by
 fmsmsx602.amr.corp.intel.com (10.18.126.82) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.1713.5; Thu, 29 Oct 2020 15:06:29 -0700
Received: from fmsmsx611.amr.corp.intel.com (10.18.126.91) by
 fmsmsx612.amr.corp.intel.com (10.18.126.92) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.1713.5; Thu, 29 Oct 2020 15:06:29 -0700
Received: from fmsmsx611.amr.corp.intel.com ([10.18.126.91]) by
 fmsmsx611.amr.corp.intel.com ([10.18.126.91]) with mapi id 15.01.1713.004;
 Thu, 29 Oct 2020 15:06:29 -0700
From: "Srivatsa, Anusha" <anusha.srivatsa@intel.com>
To: "De Marchi, Lucas" <lucas.demarchi@intel.com>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>
Thread-Topic: [Intel-gfx] [PATCH 3/3] drm/i915: remove some debug-only
 registers from MCHBAR
Thread-Index: AQHWrBwvk+r56klfVE+T1ie0dLPw5qmvJwqw
Date: Thu, 29 Oct 2020 22:06:28 +0000
Message-ID: <9f4e757fbc0546ff87a7ce893b46d6bf@intel.com>
References: <20201027044618.719064-1-lucas.demarchi@intel.com>
 <20201027044618.719064-3-lucas.demarchi@intel.com>
In-Reply-To: <20201027044618.719064-3-lucas.demarchi@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
dlp-version: 11.5.1.3
dlp-product: dlpe-windows
dlp-reaction: no-action
x-originating-ip: [10.22.254.132]
MIME-Version: 1.0
Subject: Re: [Intel-gfx] [PATCH 3/3] drm/i915: remove some debug-only
 registers from MCHBAR
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>



> -----Original Message-----
> From: Intel-gfx <intel-gfx-bounces@lists.freedesktop.org> On Behalf Of
> Lucas De Marchi
> Sent: Monday, October 26, 2020 9:46 PM
> To: intel-gfx@lists.freedesktop.org
> Subject: [Intel-gfx] [PATCH 3/3] drm/i915: remove some debug-only registers
> from MCHBAR
> 
> GT_PERF_STATUS and RP_STATE_LIMITS were added a long time ago in
> commit 3b8d8d91d51c ("drm/i915: dynamic render p-state support for
> Sandy Bridge").  Other than printing their values in debugfs we don't do
> anything with them.  There's not much useful information in them. These
> registers may change location in future platforms, but instead of adding
> new locations, it's simpler to just remove them.
> 
> Cc: Matt Roper <matthew.d.roper@intel.com>
> Signed-off-by: Lucas De Marchi <lucas.demarchi@intel.com>

Reviewed-by: Anusha Srivatsa <anusha.srivatsa@intel.com>

> ---
>  drivers/gpu/drm/i915/gt/debugfs_gt_pm.c | 17 ++---------------
>  drivers/gpu/drm/i915/i915_debugfs.c     | 17 ++---------------
>  drivers/gpu/drm/i915/i915_reg.h         |  3 ---
>  3 files changed, 4 insertions(+), 33 deletions(-)
> 
> diff --git a/drivers/gpu/drm/i915/gt/debugfs_gt_pm.c
> b/drivers/gpu/drm/i915/gt/debugfs_gt_pm.c
> index 174a24553322..8a68088c12ea 100644
> --- a/drivers/gpu/drm/i915/gt/debugfs_gt_pm.c
> +++ b/drivers/gpu/drm/i915/gt/debugfs_gt_pm.c
> @@ -296,8 +296,6 @@ static int frequency_show(struct seq_file *m, void
> *unused)
>  		seq_printf(m, "efficient (RPe) frequency: %d MHz\n",
>  			   intel_gpu_freq(rps, rps->efficient_freq));
>  	} else if (INTEL_GEN(i915) >= 6) {
> -		u32 rp_state_limits;
> -		u32 gt_perf_status;
>  		u32 rp_state_cap;
>  		u32 rpmodectl, rpinclimit, rpdeclimit;
>  		u32 rpstat, cagf, reqf;
> @@ -307,14 +305,10 @@ static int frequency_show(struct seq_file *m, void
> *unused)
>  		u32 pm_ier, pm_imr, pm_isr, pm_iir, pm_mask;
>  		int max_freq;
> 
> -		rp_state_limits = intel_uncore_read(uncore,
> GEN6_RP_STATE_LIMITS);
> -		if (IS_GEN9_LP(i915)) {
> +		if (IS_GEN9_LP(i915))
>  			rp_state_cap = intel_uncore_read(uncore,
> BXT_RP_STATE_CAP);
> -			gt_perf_status = intel_uncore_read(uncore,
> BXT_GT_PERF_STATUS);
> -		} else {
> +		else
>  			rp_state_cap = intel_uncore_read(uncore,
> GEN6_RP_STATE_CAP);
> -			gt_perf_status = intel_uncore_read(uncore,
> GEN6_GT_PERF_STATUS);
> -		}
> 
>  		/* RPSTAT1 is in the GT power well */
>  		intel_uncore_forcewake_get(uncore, FORCEWAKE_ALL); @@
> -390,13 +384,6 @@ static int frequency_show(struct seq_file *m, void
> *unused)
>  				   pm_isr, pm_iir);
>  		seq_printf(m, "pm_intrmsk_mbz: 0x%08x\n",
>  			   rps->pm_intrmsk_mbz);
> -		seq_printf(m, "GT_PERF_STATUS: 0x%08x\n",
> gt_perf_status);
> -		seq_printf(m, "Render p-state ratio: %d\n",
> -			   (gt_perf_status & (INTEL_GEN(i915) >= 9 ? 0x1ff00 :
> 0xff00)) >> 8);
> -		seq_printf(m, "Render p-state VID: %d\n",
> -			   gt_perf_status & 0xff);
> -		seq_printf(m, "Render p-state limit: %d\n",
> -			   rp_state_limits & 0xff);
>  		seq_printf(m, "RPSTAT1: 0x%08x\n", rpstat);
>  		seq_printf(m, "RPMODECTL: 0x%08x\n", rpmodectl);
>  		seq_printf(m, "RPINCLIMIT: 0x%08x\n", rpinclimit); diff --git
> a/drivers/gpu/drm/i915/i915_debugfs.c
> b/drivers/gpu/drm/i915/i915_debugfs.c
> index ea469168cd44..c01f27eebf9c 100644
> --- a/drivers/gpu/drm/i915/i915_debugfs.c
> +++ b/drivers/gpu/drm/i915/i915_debugfs.c
> @@ -838,8 +838,6 @@ static int i915_frequency_info(struct seq_file *m,
> void *unused)
>  			   "efficient (RPe) frequency: %d MHz\n",
>  			   intel_gpu_freq(rps, rps->efficient_freq));
>  	} else if (INTEL_GEN(dev_priv) >= 6) {
> -		u32 rp_state_limits;
> -		u32 gt_perf_status;
>  		u32 rp_state_cap;
>  		u32 rpmodectl, rpinclimit, rpdeclimit;
>  		u32 rpstat, cagf, reqf;
> @@ -848,14 +846,10 @@ static int i915_frequency_info(struct seq_file *m,
> void *unused)
>  		u32 pm_ier, pm_imr, pm_isr, pm_iir, pm_mask;
>  		int max_freq;
> 
> -		rp_state_limits = I915_READ(GEN6_RP_STATE_LIMITS);
> -		if (IS_GEN9_LP(dev_priv)) {
> +		if (IS_GEN9_LP(dev_priv))
>  			rp_state_cap = I915_READ(BXT_RP_STATE_CAP);
> -			gt_perf_status = I915_READ(BXT_GT_PERF_STATUS);
> -		} else {
> +		else
>  			rp_state_cap = I915_READ(GEN6_RP_STATE_CAP);
> -			gt_perf_status =
> I915_READ(GEN6_GT_PERF_STATUS);
> -		}
> 
>  		/* RPSTAT1 is in the GT power well */
>  		intel_uncore_forcewake_get(&dev_priv->uncore,
> FORCEWAKE_ALL); @@ -924,13 +918,6 @@ static int
> i915_frequency_info(struct seq_file *m, void *unused)
>  				   pm_isr, pm_iir);
>  		seq_printf(m, "pm_intrmsk_mbz: 0x%08x\n",
>  			   rps->pm_intrmsk_mbz);
> -		seq_printf(m, "GT_PERF_STATUS: 0x%08x\n",
> gt_perf_status);
> -		seq_printf(m, "Render p-state ratio: %d\n",
> -			   (gt_perf_status & (INTEL_GEN(dev_priv) >= 9 ?
> 0x1ff00 : 0xff00)) >> 8);
> -		seq_printf(m, "Render p-state VID: %d\n",
> -			   gt_perf_status & 0xff);
> -		seq_printf(m, "Render p-state limit: %d\n",
> -			   rp_state_limits & 0xff);
>  		seq_printf(m, "RPSTAT1: 0x%08x\n", rpstat);
>  		seq_printf(m, "RPMODECTL: 0x%08x\n", rpmodectl);
>  		seq_printf(m, "RPINCLIMIT: 0x%08x\n", rpinclimit); diff --git
> a/drivers/gpu/drm/i915/i915_reg.h b/drivers/gpu/drm/i915/i915_reg.h
> index 8b021f77cb1f..6e7a0dc38bce 100644
> --- a/drivers/gpu/drm/i915/i915_reg.h
> +++ b/drivers/gpu/drm/i915/i915_reg.h
> @@ -4044,9 +4044,6 @@ static inline bool i915_mmio_reg_valid(i915_reg_t
> reg)  #define GEN6_GT_THREAD_STATUS_REG _MMIO(0x13805c)  #define
> GEN6_GT_THREAD_STATUS_CORE_MASK 0x7
> 
> -#define GEN6_GT_PERF_STATUS
> 	_MMIO(MCHBAR_MIRROR_BASE_SNB + 0x5948)
> -#define BXT_GT_PERF_STATUS      _MMIO(MCHBAR_MIRROR_BASE_SNB +
> 0x7070)
> -#define GEN6_RP_STATE_LIMITS
> 	_MMIO(MCHBAR_MIRROR_BASE_SNB + 0x5994)
>  #define GEN6_RP_STATE_CAP	_MMIO(MCHBAR_MIRROR_BASE_SNB +
> 0x5998)
>  #define BXT_RP_STATE_CAP        _MMIO(0x138170)
>  #define GEN9_RP_STATE_LIMITS	_MMIO(0x138148)
> --
> 2.29.0
> 
> _______________________________________________
> Intel-gfx mailing list
> Intel-gfx@lists.freedesktop.org
> https://lists.freedesktop.org/mailman/listinfo/intel-gfx
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
