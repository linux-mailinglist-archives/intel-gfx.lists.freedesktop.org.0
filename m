Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id A6496524A66
	for <lists+intel-gfx@lfdr.de>; Thu, 12 May 2022 12:36:41 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 89CFA10EFFD;
	Thu, 12 May 2022 10:36:39 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga04.intel.com (mga04.intel.com [192.55.52.120])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 0374210EFF2
 for <intel-gfx@lists.freedesktop.org>; Thu, 12 May 2022 10:36:37 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1652351798; x=1683887798;
 h=from:to:cc:subject:in-reply-to:references:date:
 message-id:mime-version;
 bh=tbzcFRXII49U2EVMP6eiEj8FfHe6tINN2pp712J+RHw=;
 b=U/PUE9Xz4G/E8a/DHVXJ6P/rZYfBVbkio08pwHt1jejCrNhhh2q3iHHy
 NCnqn2nKQYyhYBNf/u2k6CMjrttD0yMJUjpFSAPxRVT3IY71PdWzmq+oz
 wifRaibLPBhtcSTmLVZ8uWyFFGB3kaeebVbM/wY9Um32x9f9RW/cvPOPu
 b1mP9tZnSm+93fMWw0zWSRYCsQtpJMrsZGb65IAXsSVps9AUjwIJfeeV2
 Ft7w+XaK6z8ooKhxEYnzRppAdioe6uOMRxcZSXMoSWtdxSDMjBRry7NRG
 MNhjTyvcUNOIFke8bWMypvqQ9be7+FtVJIYYmGmwrQDV42YYRCKWTOVE4 Q==;
X-IronPort-AV: E=McAfee;i="6400,9594,10344"; a="268796101"
X-IronPort-AV: E=Sophos;i="5.91,219,1647327600"; d="scan'208";a="268796101"
Received: from orsmga008.jf.intel.com ([10.7.209.65])
 by fmsmga104.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 12 May 2022 03:36:37 -0700
X-IronPort-AV: E=Sophos;i="5.91,219,1647327600"; d="scan'208";a="594607254"
Received: from ksadlows-mobl.ger.corp.intel.com (HELO localhost)
 ([10.249.130.178])
 by orsmga008-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 12 May 2022 03:36:34 -0700
From: Jani Nikula <jani.nikula@intel.com>
To: Ashutosh Dixit <ashutosh.dixit@intel.com>, intel-gfx@lists.freedesktop.org
In-Reply-To: <4051707182a95ac2ebb754d40b988e976a3e7c61.1652320806.git.ashutosh.dixit@intel.com>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
References: <cover.1652320806.git.ashutosh.dixit@intel.com>
 <4051707182a95ac2ebb754d40b988e976a3e7c61.1652320806.git.ashutosh.dixit@intel.com>
Date: Thu, 12 May 2022 13:36:31 +0300
Message-ID: <87czgjhwb4.fsf@intel.com>
MIME-Version: 1.0
Content-Type: text/plain
Subject: Re: [Intel-gfx] [PATCH 3/7] drm/i915/pcode: Extend pcode functions
 for multiple gt's
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

On Wed, 11 May 2022, Ashutosh Dixit <ashutosh.dixit@intel.com> wrote:
> Each gt contains an independent instance of pcode. Extend pcode functions
> to interface with pcode on different gt's. To avoid creating dependency of
> display functionality on intel_gt, pcode function interfaces are exposed in
> terms of uncore rather than intel_gt. Callers have been converted to pass
> in the appropritate (i915 or intel_gt) uncore to the pcode functions.
>
> v2: Expose pcode functions in terms of uncore rather than gt (Jani/Rodrigo)
> v3: Retain previous function names to eliminate needless #defines (Rodrigo)
> v4: Move out i915_pcode_init() to a separate patch (Tvrtko)
>     Remove duplicated drm_err/drm_dbg from intel_pcode_init() (Tvrtko)

Couple of nitpicks inline, and not insisting on changing. Basically ack
on this from me.

>
> Cc: Tvrtko Ursulin <tvrtko.ursulin@linux.intel.com>
> Cc: Jani Nikula <jani.nikula@intel.com>
> Signed-off-by: Ashutosh Dixit <ashutosh.dixit@intel.com>
> Reviewed-by: Rodrigo Vivi <rodrigo.vivi@intel.com>
> Reviewed-by: Andi Shyti <andi.shyti@linux.intel.com>
> ---
>  drivers/gpu/drm/i915/display/hsw_ips.c        |  4 +-
>  drivers/gpu/drm/i915/display/intel_bw.c       |  6 +-
>  drivers/gpu/drm/i915/display/intel_cdclk.c    | 16 ++---
>  .../drm/i915/display/intel_display_power.c    |  2 +-
>  .../i915/display/intel_display_power_well.c   |  4 +-
>  drivers/gpu/drm/i915/display/intel_hdcp.c     |  2 +-
>  drivers/gpu/drm/i915/gt/intel_gt_pm_debugfs.c |  4 +-
>  drivers/gpu/drm/i915/gt/intel_llc.c           |  3 +-
>  drivers/gpu/drm/i915/gt/intel_rc6.c           |  4 +-
>  drivers/gpu/drm/i915/gt/intel_rps.c           |  4 +-
>  drivers/gpu/drm/i915/gt/selftest_llc.c        |  2 +-
>  drivers/gpu/drm/i915/gt/selftest_rps.c        |  2 +-
>  drivers/gpu/drm/i915/i915_driver.c            |  4 +-
>  drivers/gpu/drm/i915/intel_dram.c             |  2 +-
>  drivers/gpu/drm/i915/intel_pcode.c            | 69 ++++++++-----------
>  drivers/gpu/drm/i915/intel_pcode.h            | 14 ++--
>  drivers/gpu/drm/i915/intel_pm.c               | 10 +--
>  17 files changed, 70 insertions(+), 82 deletions(-)
>
> diff --git a/drivers/gpu/drm/i915/display/hsw_ips.c b/drivers/gpu/drm/i915/display/hsw_ips.c
> index 38014e0cc9ad..861dcd2eb890 100644
> --- a/drivers/gpu/drm/i915/display/hsw_ips.c
> +++ b/drivers/gpu/drm/i915/display/hsw_ips.c
> @@ -28,7 +28,7 @@ static void hsw_ips_enable(const struct intel_crtc_state *crtc_state)
>  
>  	if (IS_BROADWELL(i915)) {
>  		drm_WARN_ON(&i915->drm,
> -			    snb_pcode_write(i915, DISPLAY_IPS_CONTROL,
> +			    snb_pcode_write(&i915->uncore, DISPLAY_IPS_CONTROL,
>  					    IPS_ENABLE | IPS_PCODE_CONTROL));
>  		/*
>  		 * Quoting Art Runyan: "its not safe to expect any particular
> @@ -62,7 +62,7 @@ bool hsw_ips_disable(const struct intel_crtc_state *crtc_state)
>  
>  	if (IS_BROADWELL(i915)) {
>  		drm_WARN_ON(&i915->drm,
> -			    snb_pcode_write(i915, DISPLAY_IPS_CONTROL, 0));
> +			    snb_pcode_write(&i915->uncore, DISPLAY_IPS_CONTROL, 0));
>  		/*
>  		 * Wait for PCODE to finish disabling IPS. The BSpec specified
>  		 * 42ms timeout value leads to occasional timeouts so use 100ms
> diff --git a/drivers/gpu/drm/i915/display/intel_bw.c b/drivers/gpu/drm/i915/display/intel_bw.c
> index 37bd7b17f3d0..79269d2c476b 100644
> --- a/drivers/gpu/drm/i915/display/intel_bw.c
> +++ b/drivers/gpu/drm/i915/display/intel_bw.c
> @@ -78,7 +78,7 @@ static int icl_pcode_read_qgv_point_info(struct drm_i915_private *dev_priv,
>  	u16 dclk;
>  	int ret;
>  
> -	ret = snb_pcode_read(dev_priv, ICL_PCODE_MEM_SUBSYSYSTEM_INFO |
> +	ret = snb_pcode_read(&dev_priv->uncore, ICL_PCODE_MEM_SUBSYSYSTEM_INFO |
>  			     ICL_PCODE_MEM_SS_READ_QGV_POINT_INFO(point),
>  			     &val, &val2);
>  	if (ret)
> @@ -104,7 +104,7 @@ static int adls_pcode_read_psf_gv_point_info(struct drm_i915_private *dev_priv,
>  	int ret;
>  	int i;
>  
> -	ret = snb_pcode_read(dev_priv, ICL_PCODE_MEM_SUBSYSYSTEM_INFO |
> +	ret = snb_pcode_read(&dev_priv->uncore, ICL_PCODE_MEM_SUBSYSYSTEM_INFO |
>  			     ADL_PCODE_MEM_SS_READ_PSF_GV_INFO, &val, NULL);
>  	if (ret)
>  		return ret;
> @@ -123,7 +123,7 @@ int icl_pcode_restrict_qgv_points(struct drm_i915_private *dev_priv,
>  	int ret;
>  
>  	/* bspec says to keep retrying for at least 1 ms */
> -	ret = skl_pcode_request(dev_priv, ICL_PCODE_SAGV_DE_MEM_SS_CONFIG,
> +	ret = skl_pcode_request(&dev_priv->uncore, ICL_PCODE_SAGV_DE_MEM_SS_CONFIG,
>  				points_mask,
>  				ICL_PCODE_REP_QGV_MASK | ADLS_PCODE_REP_PSF_MASK,
>  				ICL_PCODE_REP_QGV_SAFE | ADLS_PCODE_REP_PSF_SAFE,
> diff --git a/drivers/gpu/drm/i915/display/intel_cdclk.c b/drivers/gpu/drm/i915/display/intel_cdclk.c
> index b2017d8161b4..6e80162632dd 100644
> --- a/drivers/gpu/drm/i915/display/intel_cdclk.c
> +++ b/drivers/gpu/drm/i915/display/intel_cdclk.c
> @@ -800,7 +800,7 @@ static void bdw_set_cdclk(struct drm_i915_private *dev_priv,
>  		     "trying to change cdclk frequency with cdclk not enabled\n"))
>  		return;
>  
> -	ret = snb_pcode_write(dev_priv, BDW_PCODE_DISPLAY_FREQ_CHANGE_REQ, 0x0);
> +	ret = snb_pcode_write(&dev_priv->uncore, BDW_PCODE_DISPLAY_FREQ_CHANGE_REQ, 0x0);
>  	if (ret) {
>  		drm_err(&dev_priv->drm,
>  			"failed to inform pcode about cdclk change\n");
> @@ -828,7 +828,7 @@ static void bdw_set_cdclk(struct drm_i915_private *dev_priv,
>  			 LCPLL_CD_SOURCE_FCLK_DONE) == 0, 1))
>  		drm_err(&dev_priv->drm, "Switching back to LCPLL failed\n");
>  
> -	snb_pcode_write(dev_priv, HSW_PCODE_DE_WRITE_FREQ_REQ,
> +	snb_pcode_write(&dev_priv->uncore, HSW_PCODE_DE_WRITE_FREQ_REQ,
>  			cdclk_config->voltage_level);
>  
>  	intel_de_write(dev_priv, CDCLK_FREQ,
> @@ -1086,7 +1086,7 @@ static void skl_set_cdclk(struct drm_i915_private *dev_priv,
>  	drm_WARN_ON_ONCE(&dev_priv->drm,
>  			 IS_SKYLAKE(dev_priv) && vco == 8640000);
>  
> -	ret = skl_pcode_request(dev_priv, SKL_PCODE_CDCLK_CONTROL,
> +	ret = skl_pcode_request(&dev_priv->uncore, SKL_PCODE_CDCLK_CONTROL,
>  				SKL_CDCLK_PREPARE_FOR_CHANGE,
>  				SKL_CDCLK_READY_FOR_CHANGE,
>  				SKL_CDCLK_READY_FOR_CHANGE, 3);
> @@ -1132,7 +1132,7 @@ static void skl_set_cdclk(struct drm_i915_private *dev_priv,
>  	intel_de_posting_read(dev_priv, CDCLK_CTL);
>  
>  	/* inform PCU of the change */
> -	snb_pcode_write(dev_priv, SKL_PCODE_CDCLK_CONTROL,
> +	snb_pcode_write(&dev_priv->uncore, SKL_PCODE_CDCLK_CONTROL,
>  			cdclk_config->voltage_level);
>  
>  	intel_update_cdclk(dev_priv);
> @@ -1702,7 +1702,7 @@ static void bxt_set_cdclk(struct drm_i915_private *dev_priv,
>  
>  	/* Inform power controller of upcoming frequency change. */
>  	if (DISPLAY_VER(dev_priv) >= 11)
> -		ret = skl_pcode_request(dev_priv, SKL_PCODE_CDCLK_CONTROL,
> +		ret = skl_pcode_request(&dev_priv->uncore, SKL_PCODE_CDCLK_CONTROL,
>  					SKL_CDCLK_PREPARE_FOR_CHANGE,
>  					SKL_CDCLK_READY_FOR_CHANGE,
>  					SKL_CDCLK_READY_FOR_CHANGE, 3);
> @@ -1711,7 +1711,7 @@ static void bxt_set_cdclk(struct drm_i915_private *dev_priv,
>  		 * BSpec requires us to wait up to 150usec, but that leads to
>  		 * timeouts; the 2ms used here is based on experiment.
>  		 */
> -		ret = snb_pcode_write_timeout(dev_priv,
> +		ret = snb_pcode_write_timeout(&dev_priv->uncore,
>  					      HSW_PCODE_DE_WRITE_FREQ_REQ,
>  					      0x80000000, 150, 2);
>  	if (ret) {
> @@ -1774,7 +1774,7 @@ static void bxt_set_cdclk(struct drm_i915_private *dev_priv,
>  		intel_crtc_wait_for_next_vblank(intel_crtc_for_pipe(dev_priv, pipe));
>  
>  	if (DISPLAY_VER(dev_priv) >= 11) {
> -		ret = snb_pcode_write(dev_priv, SKL_PCODE_CDCLK_CONTROL,
> +		ret = snb_pcode_write(&dev_priv->uncore, SKL_PCODE_CDCLK_CONTROL,
>  				      cdclk_config->voltage_level);
>  	} else {
>  		/*
> @@ -1783,7 +1783,7 @@ static void bxt_set_cdclk(struct drm_i915_private *dev_priv,
>  		 * FIXME: Waiting for the request completion could be delayed
>  		 * until the next PCODE request based on BSpec.
>  		 */
> -		ret = snb_pcode_write_timeout(dev_priv,
> +		ret = snb_pcode_write_timeout(&dev_priv->uncore,
>  					      HSW_PCODE_DE_WRITE_FREQ_REQ,
>  					      cdclk_config->voltage_level,
>  					      150, 2);
> diff --git a/drivers/gpu/drm/i915/display/intel_display_power.c b/drivers/gpu/drm/i915/display/intel_display_power.c
> index 1d9bd5808849..74249da35281 100644
> --- a/drivers/gpu/drm/i915/display/intel_display_power.c
> +++ b/drivers/gpu/drm/i915/display/intel_display_power.c
> @@ -1194,7 +1194,7 @@ static u32 hsw_read_dcomp(struct drm_i915_private *dev_priv)
>  static void hsw_write_dcomp(struct drm_i915_private *dev_priv, u32 val)
>  {
>  	if (IS_HASWELL(dev_priv)) {
> -		if (snb_pcode_write(dev_priv, GEN6_PCODE_WRITE_D_COMP, val))
> +		if (snb_pcode_write(&dev_priv->uncore, GEN6_PCODE_WRITE_D_COMP, val))
>  			drm_dbg_kms(&dev_priv->drm,
>  				    "Failed to write to D_COMP\n");
>  	} else {
> diff --git a/drivers/gpu/drm/i915/display/intel_display_power_well.c b/drivers/gpu/drm/i915/display/intel_display_power_well.c
> index 5be18eb94042..91cfd5890f46 100644
> --- a/drivers/gpu/drm/i915/display/intel_display_power_well.c
> +++ b/drivers/gpu/drm/i915/display/intel_display_power_well.c
> @@ -474,7 +474,7 @@ static void icl_tc_cold_exit(struct drm_i915_private *i915)
>  	int ret, tries = 0;
>  
>  	while (1) {
> -		ret = snb_pcode_write_timeout(i915, ICL_PCODE_EXIT_TCCOLD, 0,
> +		ret = snb_pcode_write_timeout(&i915->uncore, ICL_PCODE_EXIT_TCCOLD, 0,
>  					      250, 1);
>  		if (ret != -EAGAIN || ++tries == 3)
>  			break;
> @@ -1739,7 +1739,7 @@ tgl_tc_cold_request(struct drm_i915_private *i915, bool block)
>  		 * Spec states that we should timeout the request after 200us
>  		 * but the function below will timeout after 500us
>  		 */
> -		ret = snb_pcode_read(i915, TGL_PCODE_TCCOLD, &low_val, &high_val);
> +		ret = snb_pcode_read(&i915->uncore, TGL_PCODE_TCCOLD, &low_val, &high_val);
>  		if (ret == 0) {
>  			if (block &&
>  			    (low_val & TGL_PCODE_EXIT_TCCOLD_DATA_L_EXIT_FAILED))
> diff --git a/drivers/gpu/drm/i915/display/intel_hdcp.c b/drivers/gpu/drm/i915/display/intel_hdcp.c
> index 44ac0cee8b77..8ea66a2e1b09 100644
> --- a/drivers/gpu/drm/i915/display/intel_hdcp.c
> +++ b/drivers/gpu/drm/i915/display/intel_hdcp.c
> @@ -298,7 +298,7 @@ static int intel_hdcp_load_keys(struct drm_i915_private *dev_priv)
>  	 * Mailbox interface.
>  	 */
>  	if (DISPLAY_VER(dev_priv) == 9 && !IS_BROXTON(dev_priv)) {
> -		ret = snb_pcode_write(dev_priv, SKL_PCODE_LOAD_HDCP_KEYS, 1);
> +		ret = snb_pcode_write(&dev_priv->uncore, SKL_PCODE_LOAD_HDCP_KEYS, 1);
>  		if (ret) {
>  			drm_err(&dev_priv->drm,
>  				"Failed to initiate HDCP key load (%d)\n",
> diff --git a/drivers/gpu/drm/i915/gt/intel_gt_pm_debugfs.c b/drivers/gpu/drm/i915/gt/intel_gt_pm_debugfs.c
> index 0c6b9eb724ae..90a440865037 100644
> --- a/drivers/gpu/drm/i915/gt/intel_gt_pm_debugfs.c
> +++ b/drivers/gpu/drm/i915/gt/intel_gt_pm_debugfs.c
> @@ -138,7 +138,7 @@ static int gen6_drpc(struct seq_file *m)
>  	}
>  
>  	if (GRAPHICS_VER(i915) <= 7)
> -		snb_pcode_read(i915, GEN6_PCODE_READ_RC6VIDS, &rc6vids, NULL);
> +		snb_pcode_read(gt->uncore, GEN6_PCODE_READ_RC6VIDS, &rc6vids, NULL);

Pedantically, I'm wondering if this (and similar places) should first be
i915->uncore, to be replaced with gt->uncore in the next patch.

>  
>  	seq_printf(m, "RC1e Enabled: %s\n",
>  		   str_yes_no(rcctl1 & GEN6_RC_CTL_RC1e_ENABLE));
> @@ -545,7 +545,7 @@ static int llc_show(struct seq_file *m, void *data)
>  	wakeref = intel_runtime_pm_get(gt->uncore->rpm);
>  	for (gpu_freq = min_gpu_freq; gpu_freq <= max_gpu_freq; gpu_freq++) {
>  		ia_freq = gpu_freq;
> -		snb_pcode_read(i915, GEN6_PCODE_READ_MIN_FREQ_TABLE,
> +		snb_pcode_read(gt->uncore, GEN6_PCODE_READ_MIN_FREQ_TABLE,
>  			       &ia_freq, NULL);
>  		seq_printf(m, "%d\t\t%d\t\t\t\t%d\n",
>  			   intel_gpu_freq(rps,
> diff --git a/drivers/gpu/drm/i915/gt/intel_llc.c b/drivers/gpu/drm/i915/gt/intel_llc.c
> index 40e2e28ee6c7..14fe65812e42 100644
> --- a/drivers/gpu/drm/i915/gt/intel_llc.c
> +++ b/drivers/gpu/drm/i915/gt/intel_llc.c
> @@ -124,7 +124,6 @@ static void calc_ia_freq(struct intel_llc *llc,
>  
>  static void gen6_update_ring_freq(struct intel_llc *llc)
>  {
> -	struct drm_i915_private *i915 = llc_to_gt(llc)->i915;
>  	struct ia_constants consts;
>  	unsigned int gpu_freq;
>  
> @@ -142,7 +141,7 @@ static void gen6_update_ring_freq(struct intel_llc *llc)
>  		unsigned int ia_freq, ring_freq;
>  
>  		calc_ia_freq(llc, gpu_freq, &consts, &ia_freq, &ring_freq);
> -		snb_pcode_write(i915, GEN6_PCODE_WRITE_MIN_FREQ_TABLE,
> +		snb_pcode_write(llc_to_gt(llc)->uncore, GEN6_PCODE_WRITE_MIN_FREQ_TABLE,
>  				ia_freq << GEN6_PCODE_FREQ_IA_RATIO_SHIFT |
>  				ring_freq << GEN6_PCODE_FREQ_RING_RATIO_SHIFT |
>  				gpu_freq);
> diff --git a/drivers/gpu/drm/i915/gt/intel_rc6.c b/drivers/gpu/drm/i915/gt/intel_rc6.c
> index b4770690e794..f8d0523f4c18 100644
> --- a/drivers/gpu/drm/i915/gt/intel_rc6.c
> +++ b/drivers/gpu/drm/i915/gt/intel_rc6.c
> @@ -272,7 +272,7 @@ static void gen6_rc6_enable(struct intel_rc6 *rc6)
>  	    GEN6_RC_CTL_HW_ENABLE;
>  
>  	rc6vids = 0;
> -	ret = snb_pcode_read(i915, GEN6_PCODE_READ_RC6VIDS, &rc6vids, NULL);
> +	ret = snb_pcode_read(rc6_to_gt(rc6)->uncore, GEN6_PCODE_READ_RC6VIDS, &rc6vids, NULL);
>  	if (GRAPHICS_VER(i915) == 6 && ret) {
>  		drm_dbg(&i915->drm, "Couldn't check for BIOS workaround\n");
>  	} else if (GRAPHICS_VER(i915) == 6 &&
> @@ -282,7 +282,7 @@ static void gen6_rc6_enable(struct intel_rc6 *rc6)
>  			GEN6_DECODE_RC6_VID(rc6vids & 0xff), 450);
>  		rc6vids &= 0xffff00;
>  		rc6vids |= GEN6_ENCODE_RC6_VID(450);
> -		ret = snb_pcode_write(i915, GEN6_PCODE_WRITE_RC6VIDS, rc6vids);
> +		ret = snb_pcode_write(rc6_to_gt(rc6)->uncore, GEN6_PCODE_WRITE_RC6VIDS, rc6vids);
>  		if (ret)
>  			drm_err(&i915->drm,
>  				"Couldn't fix incorrect rc6 voltage\n");
> diff --git a/drivers/gpu/drm/i915/gt/intel_rps.c b/drivers/gpu/drm/i915/gt/intel_rps.c
> index 3bd8415a0f1b..a62d323ff056 100644
> --- a/drivers/gpu/drm/i915/gt/intel_rps.c
> +++ b/drivers/gpu/drm/i915/gt/intel_rps.c
> @@ -1144,7 +1144,7 @@ static void gen6_rps_init(struct intel_rps *rps)
>  
>  		if (IS_GEN9_BC(i915) || GRAPHICS_VER(i915) >= 11)
>  			mult = GEN9_FREQ_SCALER;
> -		if (snb_pcode_read(i915, HSW_PCODE_DYNAMIC_DUTY_CYCLE_CONTROL,
> +		if (snb_pcode_read(rps_to_gt(rps)->uncore, HSW_PCODE_DYNAMIC_DUTY_CYCLE_CONTROL,
>  				   &ddcc_status, NULL) == 0)
>  			rps->efficient_freq =
>  				clamp_t(u32,
> @@ -1984,7 +1984,7 @@ void intel_rps_init(struct intel_rps *rps)
>  	if (GRAPHICS_VER(i915) == 6 || IS_IVYBRIDGE(i915) || IS_HASWELL(i915)) {
>  		u32 params = 0;
>  
> -		snb_pcode_read(i915, GEN6_READ_OC_PARAMS, &params, NULL);
> +		snb_pcode_read(rps_to_gt(rps)->uncore, GEN6_READ_OC_PARAMS, &params, NULL);
>  		if (params & BIT(31)) { /* OC supported */
>  			drm_dbg(&i915->drm,
>  				"Overclocking supported, max: %dMHz, overclock: %dMHz\n",
> diff --git a/drivers/gpu/drm/i915/gt/selftest_llc.c b/drivers/gpu/drm/i915/gt/selftest_llc.c
> index 2cd184ab32b1..cfd736d88939 100644
> --- a/drivers/gpu/drm/i915/gt/selftest_llc.c
> +++ b/drivers/gpu/drm/i915/gt/selftest_llc.c
> @@ -31,7 +31,7 @@ static int gen6_verify_ring_freq(struct intel_llc *llc)
>  		calc_ia_freq(llc, gpu_freq, &consts, &ia_freq, &ring_freq);
>  
>  		val = gpu_freq;
> -		if (snb_pcode_read(i915, GEN6_PCODE_READ_MIN_FREQ_TABLE,
> +		if (snb_pcode_read(llc_to_gt(llc)->uncore, GEN6_PCODE_READ_MIN_FREQ_TABLE,
>  				   &val, NULL)) {
>  			pr_err("Failed to read freq table[%d], range [%d, %d]\n",
>  			       gpu_freq, consts.min_gpu_freq, consts.max_gpu_freq);
> diff --git a/drivers/gpu/drm/i915/gt/selftest_rps.c b/drivers/gpu/drm/i915/gt/selftest_rps.c
> index 6a69ac0184ad..cfb4708dd62e 100644
> --- a/drivers/gpu/drm/i915/gt/selftest_rps.c
> +++ b/drivers/gpu/drm/i915/gt/selftest_rps.c
> @@ -521,7 +521,7 @@ static void show_pcu_config(struct intel_rps *rps)
>  	for (gpu_freq = min_gpu_freq; gpu_freq <= max_gpu_freq; gpu_freq++) {
>  		int ia_freq = gpu_freq;
>  
> -		snb_pcode_read(i915, GEN6_PCODE_READ_MIN_FREQ_TABLE,
> +		snb_pcode_read(rps_to_gt(rps)->uncore, GEN6_PCODE_READ_MIN_FREQ_TABLE,
>  			       &ia_freq, NULL);
>  
>  		pr_info("%5d  %5d  %5d\n",
> diff --git a/drivers/gpu/drm/i915/i915_driver.c b/drivers/gpu/drm/i915/i915_driver.c
> index 90b0ce5051af..0e9763868d68 100644
> --- a/drivers/gpu/drm/i915/i915_driver.c
> +++ b/drivers/gpu/drm/i915/i915_driver.c
> @@ -629,7 +629,7 @@ static int i915_driver_hw_probe(struct drm_i915_private *dev_priv)
>  
>  	intel_opregion_setup(dev_priv);
>  
> -	ret = intel_pcode_init(dev_priv);
> +	ret = intel_pcode_init(&dev_priv->uncore);
>  	if (ret)
>  		goto err_msi;
>  
> @@ -1251,7 +1251,7 @@ static int i915_drm_resume(struct drm_device *dev)
>  
>  	disable_rpm_wakeref_asserts(&dev_priv->runtime_pm);
>  
> -	ret = intel_pcode_init(dev_priv);
> +	ret = intel_pcode_init(&dev_priv->uncore);
>  	if (ret)
>  		return ret;
>  
> diff --git a/drivers/gpu/drm/i915/intel_dram.c b/drivers/gpu/drm/i915/intel_dram.c
> index 2b9e7833da96..437447119770 100644
> --- a/drivers/gpu/drm/i915/intel_dram.c
> +++ b/drivers/gpu/drm/i915/intel_dram.c
> @@ -393,7 +393,7 @@ static int icl_pcode_read_mem_global_info(struct drm_i915_private *dev_priv)
>  	u32 val = 0;
>  	int ret;
>  
> -	ret = snb_pcode_read(dev_priv, ICL_PCODE_MEM_SUBSYSYSTEM_INFO |
> +	ret = snb_pcode_read(&dev_priv->uncore, ICL_PCODE_MEM_SUBSYSYSTEM_INFO |
>  			     ICL_PCODE_MEM_SS_READ_GLOBAL_INFO, &val, NULL);
>  	if (ret)
>  		return ret;
> diff --git a/drivers/gpu/drm/i915/intel_pcode.c b/drivers/gpu/drm/i915/intel_pcode.c
> index ac727546868e..2be700932322 100644
> --- a/drivers/gpu/drm/i915/intel_pcode.c
> +++ b/drivers/gpu/drm/i915/intel_pcode.c
> @@ -52,14 +52,12 @@ static int gen7_check_mailbox_status(u32 mbox)
>  	}
>  }
>  
> -static int __snb_pcode_rw(struct drm_i915_private *i915, u32 mbox,
> +static int __snb_pcode_rw(struct intel_uncore *uncore, u32 mbox,
>  			  u32 *val, u32 *val1,
>  			  int fast_timeout_us, int slow_timeout_ms,
>  			  bool is_read)
>  {
> -	struct intel_uncore *uncore = &i915->uncore;

Nitpick, personally, I would probably have just replaced the above with

	struct drm_i915_private *i915 = uncore->i915;

to minimize the diff. Ditto everywhere. But not a big deal.

BR,
Jani.

> -
> -	lockdep_assert_held(&i915->sb_lock);
> +	lockdep_assert_held(&uncore->i915->sb_lock);
>  
>  	/*
>  	 * GEN6_PCODE_* are outside of the forcewake domain, we can use
> @@ -88,22 +86,22 @@ static int __snb_pcode_rw(struct drm_i915_private *i915, u32 mbox,
>  	if (is_read && val1)
>  		*val1 = intel_uncore_read_fw(uncore, GEN6_PCODE_DATA1);
>  
> -	if (GRAPHICS_VER(i915) > 6)
> +	if (GRAPHICS_VER(uncore->i915) > 6)
>  		return gen7_check_mailbox_status(mbox);
>  	else
>  		return gen6_check_mailbox_status(mbox);
>  }
>  
> -int snb_pcode_read(struct drm_i915_private *i915, u32 mbox, u32 *val, u32 *val1)
> +int snb_pcode_read(struct intel_uncore *uncore, u32 mbox, u32 *val, u32 *val1)
>  {
>  	int err;
>  
> -	mutex_lock(&i915->sb_lock);
> -	err = __snb_pcode_rw(i915, mbox, val, val1, 500, 20, true);
> -	mutex_unlock(&i915->sb_lock);
> +	mutex_lock(&uncore->i915->sb_lock);
> +	err = __snb_pcode_rw(uncore, mbox, val, val1, 500, 20, true);
> +	mutex_unlock(&uncore->i915->sb_lock);
>  
>  	if (err) {
> -		drm_dbg(&i915->drm,
> +		drm_dbg(&uncore->i915->drm,
>  			"warning: pcode (read from mbox %x) mailbox access failed for %ps: %d\n",
>  			mbox, __builtin_return_address(0), err);
>  	}
> @@ -111,18 +109,18 @@ int snb_pcode_read(struct drm_i915_private *i915, u32 mbox, u32 *val, u32 *val1)
>  	return err;
>  }
>  
> -int snb_pcode_write_timeout(struct drm_i915_private *i915, u32 mbox, u32 val,
> +int snb_pcode_write_timeout(struct intel_uncore *uncore, u32 mbox, u32 val,
>  			    int fast_timeout_us, int slow_timeout_ms)
>  {
>  	int err;
>  
> -	mutex_lock(&i915->sb_lock);
> -	err = __snb_pcode_rw(i915, mbox, &val, NULL,
> +	mutex_lock(&uncore->i915->sb_lock);
> +	err = __snb_pcode_rw(uncore, mbox, &val, NULL,
>  			     fast_timeout_us, slow_timeout_ms, false);
> -	mutex_unlock(&i915->sb_lock);
> +	mutex_unlock(&uncore->i915->sb_lock);
>  
>  	if (err) {
> -		drm_dbg(&i915->drm,
> +		drm_dbg(&uncore->i915->drm,
>  			"warning: pcode (write of 0x%08x to mbox %x) mailbox access failed for %ps: %d\n",
>  			val, mbox, __builtin_return_address(0), err);
>  	}
> @@ -130,18 +128,18 @@ int snb_pcode_write_timeout(struct drm_i915_private *i915, u32 mbox, u32 val,
>  	return err;
>  }
>  
> -static bool skl_pcode_try_request(struct drm_i915_private *i915, u32 mbox,
> +static bool skl_pcode_try_request(struct intel_uncore *uncore, u32 mbox,
>  				  u32 request, u32 reply_mask, u32 reply,
>  				  u32 *status)
>  {
> -	*status = __snb_pcode_rw(i915, mbox, &request, NULL, 500, 0, true);
> +	*status = __snb_pcode_rw(uncore, mbox, &request, NULL, 500, 0, true);
>  
>  	return (*status == 0) && ((request & reply_mask) == reply);
>  }
>  
>  /**
>   * skl_pcode_request - send PCODE request until acknowledgment
> - * @i915: device private
> + * @uncore: uncore
>   * @mbox: PCODE mailbox ID the request is targeted for
>   * @request: request ID
>   * @reply_mask: mask used to check for request acknowledgment
> @@ -158,16 +156,16 @@ static bool skl_pcode_try_request(struct drm_i915_private *i915, u32 mbox,
>   * Returns 0 on success, %-ETIMEDOUT in case of a timeout, <0 in case of some
>   * other error as reported by PCODE.
>   */
> -int skl_pcode_request(struct drm_i915_private *i915, u32 mbox, u32 request,
> +int skl_pcode_request(struct intel_uncore *uncore, u32 mbox, u32 request,
>  		      u32 reply_mask, u32 reply, int timeout_base_ms)
>  {
>  	u32 status;
>  	int ret;
>  
> -	mutex_lock(&i915->sb_lock);
> +	mutex_lock(&uncore->i915->sb_lock);
>  
>  #define COND \
> -	skl_pcode_try_request(i915, mbox, request, reply_mask, reply, &status)
> +	skl_pcode_try_request(uncore, mbox, request, reply_mask, reply, &status)
>  
>  	/*
>  	 * Prime the PCODE by doing a request first. Normally it guarantees
> @@ -193,35 +191,26 @@ int skl_pcode_request(struct drm_i915_private *i915, u32 mbox, u32 request,
>  	 * requests, and for any quirks of the PCODE firmware that delays
>  	 * the request completion.
>  	 */
> -	drm_dbg_kms(&i915->drm,
> +	drm_dbg_kms(&uncore->i915->drm,
>  		    "PCODE timeout, retrying with preemption disabled\n");
> -	drm_WARN_ON_ONCE(&i915->drm, timeout_base_ms > 3);
> +	drm_WARN_ON_ONCE(&uncore->i915->drm, timeout_base_ms > 3);
>  	preempt_disable();
>  	ret = wait_for_atomic(COND, 50);
>  	preempt_enable();
>  
>  out:
> -	mutex_unlock(&i915->sb_lock);
> +	mutex_unlock(&uncore->i915->sb_lock);
>  	return status ? status : ret;
>  #undef COND
>  }
>  
> -int intel_pcode_init(struct drm_i915_private *i915)
> +int intel_pcode_init(struct intel_uncore *uncore)
>  {
> -	int ret = 0;
> -
> -	if (!IS_DGFX(i915))
> -		return ret;
> -
> -	ret = skl_pcode_request(i915, DG1_PCODE_STATUS,
> -				DG1_UNCORE_GET_INIT_STATUS,
> -				DG1_UNCORE_INIT_STATUS_COMPLETE,
> -				DG1_UNCORE_INIT_STATUS_COMPLETE, 180000);
> -
> -	drm_dbg(&i915->drm, "PCODE init status %d\n", ret);
> -
> -	if (ret)
> -		drm_err(&i915->drm, "Pcode did not report uncore initialization completion!\n");
> +	if (!IS_DGFX(uncore->i915))
> +		return 0;
>  
> -	return ret;
> +	return skl_pcode_request(uncore, DG1_PCODE_STATUS,
> +				 DG1_UNCORE_GET_INIT_STATUS,
> +				 DG1_UNCORE_INIT_STATUS_COMPLETE,
> +				 DG1_UNCORE_INIT_STATUS_COMPLETE, 180000);
>  }
> diff --git a/drivers/gpu/drm/i915/intel_pcode.h b/drivers/gpu/drm/i915/intel_pcode.h
> index 0962a17fac48..8f6241b114a5 100644
> --- a/drivers/gpu/drm/i915/intel_pcode.h
> +++ b/drivers/gpu/drm/i915/intel_pcode.h
> @@ -8,17 +8,17 @@
>  
>  #include <linux/types.h>
>  
> -struct drm_i915_private;
> +struct intel_uncore;
>  
> -int snb_pcode_read(struct drm_i915_private *i915, u32 mbox, u32 *val, u32 *val1);
> -int snb_pcode_write_timeout(struct drm_i915_private *i915, u32 mbox, u32 val,
> +int snb_pcode_read(struct intel_uncore *uncore, u32 mbox, u32 *val, u32 *val1);
> +int snb_pcode_write_timeout(struct intel_uncore *uncore, u32 mbox, u32 val,
>  			    int fast_timeout_us, int slow_timeout_ms);
> -#define snb_pcode_write(i915, mbox, val)			\
> -	snb_pcode_write_timeout(i915, mbox, val, 500, 0)
> +#define snb_pcode_write(uncore, mbox, val) \
> +	snb_pcode_write_timeout(uncore, mbox, val, 500, 0)
>  
> -int skl_pcode_request(struct drm_i915_private *i915, u32 mbox, u32 request,
> +int skl_pcode_request(struct intel_uncore *uncore, u32 mbox, u32 request,
>  		      u32 reply_mask, u32 reply, int timeout_base_ms);
>  
> -int intel_pcode_init(struct drm_i915_private *i915);
> +int intel_pcode_init(struct intel_uncore *uncore);
>  
>  #endif /* _INTEL_PCODE_H */
> diff --git a/drivers/gpu/drm/i915/intel_pm.c b/drivers/gpu/drm/i915/intel_pm.c
> index ee0047fdc95d..aacb21cbc62e 100644
> --- a/drivers/gpu/drm/i915/intel_pm.c
> +++ b/drivers/gpu/drm/i915/intel_pm.c
> @@ -2874,7 +2874,7 @@ static void intel_read_wm_latency(struct drm_i915_private *dev_priv,
>  
>  		/* read the first set of memory latencies[0:3] */
>  		val = 0; /* data0 to be programmed to 0 for first set */
> -		ret = snb_pcode_read(dev_priv, GEN9_PCODE_READ_MEM_LATENCY,
> +		ret = snb_pcode_read(&dev_priv->uncore, GEN9_PCODE_READ_MEM_LATENCY,
>  				     &val, NULL);
>  
>  		if (ret) {
> @@ -2893,7 +2893,7 @@ static void intel_read_wm_latency(struct drm_i915_private *dev_priv,
>  
>  		/* read the second set of memory latencies[4:7] */
>  		val = 1; /* data0 to be programmed to 1 for second set */
> -		ret = snb_pcode_read(dev_priv, GEN9_PCODE_READ_MEM_LATENCY,
> +		ret = snb_pcode_read(&dev_priv->uncore, GEN9_PCODE_READ_MEM_LATENCY,
>  				     &val, NULL);
>  		if (ret) {
>  			drm_err(&dev_priv->drm,
> @@ -3679,7 +3679,7 @@ intel_sagv_block_time(struct drm_i915_private *dev_priv)
>  		u32 val = 0;
>  		int ret;
>  
> -		ret = snb_pcode_read(dev_priv,
> +		ret = snb_pcode_read(&dev_priv->uncore,
>  				     GEN12_PCODE_READ_SAGV_BLOCK_TIME_US,
>  				     &val, NULL);
>  		if (ret) {
> @@ -3748,7 +3748,7 @@ static void skl_sagv_enable(struct drm_i915_private *dev_priv)
>  		return;
>  
>  	drm_dbg_kms(&dev_priv->drm, "Enabling SAGV\n");
> -	ret = snb_pcode_write(dev_priv, GEN9_PCODE_SAGV_CONTROL,
> +	ret = snb_pcode_write(&dev_priv->uncore, GEN9_PCODE_SAGV_CONTROL,
>  			      GEN9_SAGV_ENABLE);
>  
>  	/* We don't need to wait for SAGV when enabling */
> @@ -3781,7 +3781,7 @@ static void skl_sagv_disable(struct drm_i915_private *dev_priv)
>  
>  	drm_dbg_kms(&dev_priv->drm, "Disabling SAGV\n");
>  	/* bspec says to keep retrying for at least 1 ms */
> -	ret = skl_pcode_request(dev_priv, GEN9_PCODE_SAGV_CONTROL,
> +	ret = skl_pcode_request(&dev_priv->uncore, GEN9_PCODE_SAGV_CONTROL,
>  				GEN9_SAGV_DISABLE,
>  				GEN9_SAGV_IS_DISABLED, GEN9_SAGV_IS_DISABLED,
>  				1);

-- 
Jani Nikula, Intel Open Source Graphics Center
