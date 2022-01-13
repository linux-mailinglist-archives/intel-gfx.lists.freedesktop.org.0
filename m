Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 80A0B48D8D0
	for <lists+intel-gfx@lfdr.de>; Thu, 13 Jan 2022 14:24:44 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 1FDD2112288;
	Thu, 13 Jan 2022 13:24:38 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga05.intel.com (mga05.intel.com [192.55.52.43])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 5FA3D891BA
 for <intel-gfx@lists.freedesktop.org>; Thu, 13 Jan 2022 13:24:36 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1642080276; x=1673616276;
 h=from:to:cc:subject:in-reply-to:references:date:
 message-id:mime-version:content-transfer-encoding;
 bh=gVLRgvm6V+uRT/GjqkmM2Y+J4uRBVrFTRpfxO/+qmew=;
 b=R5FP5R5IksQZ41MkjE73IChMPtOTk6HddoT+wr9io+2mQkiXeDnxMg3W
 SIJBv/zPlP03Z0uJwWYKutLB5fi189N7UpVxm2TIuqBQT7xQGFpnw75ob
 2Ckf0wnOGdFZUAB7jwNpWV+hdONXN7JFXuVooBsSk05/uN41dQOoEechf
 T1vQKNMgEsOcaDg+k7q7iXbqKuI6rJGSk6w137D2+03qTWA+IlU2NQo7A
 GDHP0jbZtaaVmS4FPmsyKM5w6Oiz/SO19q/5xA0a4S2x65WCDfZQC/3sY
 le0+5AV1O5EUBiku8BKvVZBPUqKh3Rvk/4sTQyMyaPmc6rwlBFeRc/2Fd A==;
X-IronPort-AV: E=McAfee;i="6200,9189,10225"; a="330353528"
X-IronPort-AV: E=Sophos;i="5.88,286,1635231600"; d="scan'208";a="330353528"
Received: from orsmga007.jf.intel.com ([10.7.209.58])
 by fmsmga105.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 13 Jan 2022 05:24:35 -0800
X-IronPort-AV: E=Sophos;i="5.88,286,1635231600"; d="scan'208";a="515922381"
Received: from joneil3-mobl1.ger.corp.intel.com (HELO localhost)
 ([10.252.0.221])
 by orsmga007-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 13 Jan 2022 05:24:34 -0800
From: Jani Nikula <jani.nikula@intel.com>
To: Ville =?utf-8?B?U3lyasOkbMOk?= <ville.syrjala@linux.intel.com>
In-Reply-To: <Yd7ePGLhfyHAeFMF@intel.com>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
References: <20220112111740.1208374-1-jani.nikula@intel.com>
 <Yd7ePGLhfyHAeFMF@intel.com>
Date: Thu, 13 Jan 2022 15:24:30 +0200
Message-ID: <87bl0f7oq9.fsf@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: quoted-printable
Subject: Re: [Intel-gfx] [PATCH RESEND] drm/i915/pcode: rename
 sandybridge_pcode_* to snb_pcode_*
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
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Wed, 12 Jan 2022, Ville Syrj=C3=A4l=C3=A4 <ville.syrjala@linux.intel.com=
> wrote:
> On Wed, Jan 12, 2022 at 01:17:40PM +0200, Jani Nikula wrote:
>> Prefer acronym-based naming to be in line with the rest of the driver.
>>=20
>> Signed-off-by: Jani Nikula <jani.nikula@intel.com>
>
> Reviewed-by: Ville Syrj=C3=A4l=C3=A4 <ville.syrjala@linux.intel.com>

Pushed, thanks for the review.

>
>> ---
>>  drivers/gpu/drm/i915/display/intel_bw.c       | 13 +++-----
>>  drivers/gpu/drm/i915/display/intel_cdclk.c    | 30 +++++++++---------
>>  drivers/gpu/drm/i915/display/intel_display.c  |  6 ++--
>>  .../drm/i915/display/intel_display_power.c    | 11 +++----
>>  drivers/gpu/drm/i915/display/intel_hdcp.c     |  3 +-
>>  drivers/gpu/drm/i915/gt/intel_gt_pm_debugfs.c |  8 ++---
>>  drivers/gpu/drm/i915/gt/intel_llc.c           |  9 +++---
>>  drivers/gpu/drm/i915/gt/intel_rc6.c           |  5 ++-
>>  drivers/gpu/drm/i915/gt/intel_rps.c           |  8 ++---
>>  drivers/gpu/drm/i915/gt/selftest_llc.c        |  5 ++-
>>  drivers/gpu/drm/i915/gt/selftest_rps.c        |  5 ++-
>>  drivers/gpu/drm/i915/intel_dram.c             |  6 ++--
>>  drivers/gpu/drm/i915/intel_pcode.c            | 31 +++++++------------
>>  drivers/gpu/drm/i915/intel_pcode.h            | 12 +++----
>>  drivers/gpu/drm/i915/intel_pm.c               | 20 ++++++------
>>  15 files changed, 70 insertions(+), 102 deletions(-)
>>=20
>> diff --git a/drivers/gpu/drm/i915/display/intel_bw.c b/drivers/gpu/drm/i=
915/display/intel_bw.c
>> index 2da4aacc956b..c35bad21b657 100644
>> --- a/drivers/gpu/drm/i915/display/intel_bw.c
>> +++ b/drivers/gpu/drm/i915/display/intel_bw.c
>> @@ -75,10 +75,9 @@ static int icl_pcode_read_qgv_point_info(struct drm_i=
915_private *dev_priv,
>>  	u16 dclk;
>>  	int ret;
>>=20=20
>> -	ret =3D sandybridge_pcode_read(dev_priv,
>> -				     ICL_PCODE_MEM_SUBSYSYSTEM_INFO |
>> -				     ICL_PCODE_MEM_SS_READ_QGV_POINT_INFO(point),
>> -				     &val, &val2);
>> +	ret =3D snb_pcode_read(dev_priv, ICL_PCODE_MEM_SUBSYSYSTEM_INFO |
>> +			     ICL_PCODE_MEM_SS_READ_QGV_POINT_INFO(point),
>> +			     &val, &val2);
>>  	if (ret)
>>  		return ret;
>>=20=20
>> @@ -102,10 +101,8 @@ static int adls_pcode_read_psf_gv_point_info(struct=
 drm_i915_private *dev_priv,
>>  	int ret;
>>  	int i;
>>=20=20
>> -	ret =3D sandybridge_pcode_read(dev_priv,
>> -				     ICL_PCODE_MEM_SUBSYSYSTEM_INFO |
>> -				     ADL_PCODE_MEM_SS_READ_PSF_GV_INFO,
>> -				     &val, NULL);
>> +	ret =3D snb_pcode_read(dev_priv, ICL_PCODE_MEM_SUBSYSYSTEM_INFO |
>> +			     ADL_PCODE_MEM_SS_READ_PSF_GV_INFO, &val, NULL);
>>  	if (ret)
>>  		return ret;
>>=20=20
>> diff --git a/drivers/gpu/drm/i915/display/intel_cdclk.c b/drivers/gpu/dr=
m/i915/display/intel_cdclk.c
>> index 1f13398e8ac2..7e20967307df 100644
>> --- a/drivers/gpu/drm/i915/display/intel_cdclk.c
>> +++ b/drivers/gpu/drm/i915/display/intel_cdclk.c
>> @@ -805,8 +805,7 @@ static void bdw_set_cdclk(struct drm_i915_private *d=
ev_priv,
>>  		     "trying to change cdclk frequency with cdclk not enabled\n"))
>>  		return;
>>=20=20
>> -	ret =3D sandybridge_pcode_write(dev_priv,
>> -				      BDW_PCODE_DISPLAY_FREQ_CHANGE_REQ, 0x0);
>> +	ret =3D snb_pcode_write(dev_priv, BDW_PCODE_DISPLAY_FREQ_CHANGE_REQ, 0=
x0);
>>  	if (ret) {
>>  		drm_err(&dev_priv->drm,
>>  			"failed to inform pcode about cdclk change\n");
>> @@ -834,8 +833,8 @@ static void bdw_set_cdclk(struct drm_i915_private *d=
ev_priv,
>>  			 LCPLL_CD_SOURCE_FCLK_DONE) =3D=3D 0, 1))
>>  		drm_err(&dev_priv->drm, "Switching back to LCPLL failed\n");
>>=20=20
>> -	sandybridge_pcode_write(dev_priv, HSW_PCODE_DE_WRITE_FREQ_REQ,
>> -				cdclk_config->voltage_level);
>> +	snb_pcode_write(dev_priv, HSW_PCODE_DE_WRITE_FREQ_REQ,
>> +			cdclk_config->voltage_level);
>>=20=20
>>  	intel_de_write(dev_priv, CDCLK_FREQ,
>>  		       DIV_ROUND_CLOSEST(cdclk, 1000) - 1);
>> @@ -1138,8 +1137,8 @@ static void skl_set_cdclk(struct drm_i915_private =
*dev_priv,
>>  	intel_de_posting_read(dev_priv, CDCLK_CTL);
>>=20=20
>>  	/* inform PCU of the change */
>> -	sandybridge_pcode_write(dev_priv, SKL_PCODE_CDCLK_CONTROL,
>> -				cdclk_config->voltage_level);
>> +	snb_pcode_write(dev_priv, SKL_PCODE_CDCLK_CONTROL,
>> +			cdclk_config->voltage_level);
>>=20=20
>>  	intel_update_cdclk(dev_priv);
>>  }
>> @@ -1717,10 +1716,9 @@ static void bxt_set_cdclk(struct drm_i915_private=
 *dev_priv,
>>  		 * BSpec requires us to wait up to 150usec, but that leads to
>>  		 * timeouts; the 2ms used here is based on experiment.
>>  		 */
>> -		ret =3D sandybridge_pcode_write_timeout(dev_priv,
>> -						      HSW_PCODE_DE_WRITE_FREQ_REQ,
>> -						      0x80000000, 150, 2);
>> -
>> +		ret =3D snb_pcode_write_timeout(dev_priv,
>> +					      HSW_PCODE_DE_WRITE_FREQ_REQ,
>> +					      0x80000000, 150, 2);
>>  	if (ret) {
>>  		drm_err(&dev_priv->drm,
>>  			"Failed to inform PCU about cdclk change (err %d, freq %d)\n",
>> @@ -1781,8 +1779,8 @@ static void bxt_set_cdclk(struct drm_i915_private =
*dev_priv,
>>  		intel_crtc_wait_for_next_vblank(intel_crtc_for_pipe(dev_priv, pipe));
>>=20=20
>>  	if (DISPLAY_VER(dev_priv) >=3D 11) {
>> -		ret =3D sandybridge_pcode_write(dev_priv, SKL_PCODE_CDCLK_CONTROL,
>> -					      cdclk_config->voltage_level);
>> +		ret =3D snb_pcode_write(dev_priv, SKL_PCODE_CDCLK_CONTROL,
>> +				      cdclk_config->voltage_level);
>>  	} else {
>>  		/*
>>  		 * The timeout isn't specified, the 2ms used here is based on
>> @@ -1790,10 +1788,10 @@ static void bxt_set_cdclk(struct drm_i915_privat=
e *dev_priv,
>>  		 * FIXME: Waiting for the request completion could be delayed
>>  		 * until the next PCODE request based on BSpec.
>>  		 */
>> -		ret =3D sandybridge_pcode_write_timeout(dev_priv,
>> -						      HSW_PCODE_DE_WRITE_FREQ_REQ,
>> -						      cdclk_config->voltage_level,
>> -						      150, 2);
>> +		ret =3D snb_pcode_write_timeout(dev_priv,
>> +					      HSW_PCODE_DE_WRITE_FREQ_REQ,
>> +					      cdclk_config->voltage_level,
>> +					      150, 2);
>>  	}
>>=20=20
>>  	if (ret) {
>> diff --git a/drivers/gpu/drm/i915/display/intel_display.c b/drivers/gpu/=
drm/i915/display/intel_display.c
>> index bf7ce684dd8e..01e9b5baecd2 100644
>> --- a/drivers/gpu/drm/i915/display/intel_display.c
>> +++ b/drivers/gpu/drm/i915/display/intel_display.c
>> @@ -1118,8 +1118,8 @@ void hsw_enable_ips(const struct intel_crtc_state =
*crtc_state)
>>  	drm_WARN_ON(dev, !(crtc_state->active_planes & ~BIT(PLANE_CURSOR)));
>>=20=20
>>  	if (IS_BROADWELL(dev_priv)) {
>> -		drm_WARN_ON(dev, sandybridge_pcode_write(dev_priv, DISPLAY_IPS_CONTRO=
L,
>> -							 IPS_ENABLE | IPS_PCODE_CONTROL));
>> +		drm_WARN_ON(dev, snb_pcode_write(dev_priv, DISPLAY_IPS_CONTROL,
>> +						 IPS_ENABLE | IPS_PCODE_CONTROL));
>>  		/* Quoting Art Runyan: "its not safe to expect any particular
>>  		 * value in IPS_CTL bit 31 after enabling IPS through the
>>  		 * mailbox." Moreover, the mailbox may return a bogus state,
>> @@ -1149,7 +1149,7 @@ void hsw_disable_ips(const struct intel_crtc_state=
 *crtc_state)
>>=20=20
>>  	if (IS_BROADWELL(dev_priv)) {
>>  		drm_WARN_ON(dev,
>> -			    sandybridge_pcode_write(dev_priv, DISPLAY_IPS_CONTROL, 0));
>> +			    snb_pcode_write(dev_priv, DISPLAY_IPS_CONTROL, 0));
>>  		/*
>>  		 * Wait for PCODE to finish disabling IPS. The BSpec specified
>>  		 * 42ms timeout value leads to occasional timeouts so use 100ms
>> diff --git a/drivers/gpu/drm/i915/display/intel_display_power.c b/driver=
s/gpu/drm/i915/display/intel_display_power.c
>> index fba35fb6d2df..ee4617299e64 100644
>> --- a/drivers/gpu/drm/i915/display/intel_display_power.c
>> +++ b/drivers/gpu/drm/i915/display/intel_display_power.c
>> @@ -683,9 +683,8 @@ static void icl_tc_cold_exit(struct drm_i915_private=
 *i915)
>>  	int ret, tries =3D 0;
>>=20=20
>>  	while (1) {
>> -		ret =3D sandybridge_pcode_write_timeout(i915,
>> -						      ICL_PCODE_EXIT_TCCOLD,
>> -						      0, 250, 1);
>> +		ret =3D snb_pcode_write_timeout(i915, ICL_PCODE_EXIT_TCCOLD, 0,
>> +					      250, 1);
>>  		if (ret !=3D -EAGAIN || ++tries =3D=3D 3)
>>  			break;
>>  		msleep(1);
>> @@ -4053,8 +4052,7 @@ tgl_tc_cold_request(struct drm_i915_private *i915,=
 bool block)
>>  		 * Spec states that we should timeout the request after 200us
>>  		 * but the function below will timeout after 500us
>>  		 */
>> -		ret =3D sandybridge_pcode_read(i915, TGL_PCODE_TCCOLD, &low_val,
>> -					     &high_val);
>> +		ret =3D snb_pcode_read(i915, TGL_PCODE_TCCOLD, &low_val, &high_val);
>>  		if (ret =3D=3D 0) {
>>  			if (block &&
>>  			    (low_val & TGL_PCODE_EXIT_TCCOLD_DATA_L_EXIT_FAILED))
>> @@ -5469,8 +5467,7 @@ static u32 hsw_read_dcomp(struct drm_i915_private =
*dev_priv)
>>  static void hsw_write_dcomp(struct drm_i915_private *dev_priv, u32 val)
>>  {
>>  	if (IS_HASWELL(dev_priv)) {
>> -		if (sandybridge_pcode_write(dev_priv,
>> -					    GEN6_PCODE_WRITE_D_COMP, val))
>> +		if (snb_pcode_write(dev_priv, GEN6_PCODE_WRITE_D_COMP, val))
>>  			drm_dbg_kms(&dev_priv->drm,
>>  				    "Failed to write to D_COMP\n");
>>  	} else {
>> diff --git a/drivers/gpu/drm/i915/display/intel_hdcp.c b/drivers/gpu/drm=
/i915/display/intel_hdcp.c
>> index 4509fe7438e8..e1ecf38db0ef 100644
>> --- a/drivers/gpu/drm/i915/display/intel_hdcp.c
>> +++ b/drivers/gpu/drm/i915/display/intel_hdcp.c
>> @@ -297,8 +297,7 @@ static int intel_hdcp_load_keys(struct drm_i915_priv=
ate *dev_priv)
>>  	 * Mailbox interface.
>>  	 */
>>  	if (DISPLAY_VER(dev_priv) =3D=3D 9 && !IS_BROXTON(dev_priv)) {
>> -		ret =3D sandybridge_pcode_write(dev_priv,
>> -					      SKL_PCODE_LOAD_HDCP_KEYS, 1);
>> +		ret =3D snb_pcode_write(dev_priv, SKL_PCODE_LOAD_HDCP_KEYS, 1);
>>  		if (ret) {
>>  			drm_err(&dev_priv->drm,
>>  				"Failed to initiate HDCP key load (%d)\n",
>> diff --git a/drivers/gpu/drm/i915/gt/intel_gt_pm_debugfs.c b/drivers/gpu=
/drm/i915/gt/intel_gt_pm_debugfs.c
>> index 404dfa7673c6..6c5c1d0363bf 100644
>> --- a/drivers/gpu/drm/i915/gt/intel_gt_pm_debugfs.c
>> +++ b/drivers/gpu/drm/i915/gt/intel_gt_pm_debugfs.c
>> @@ -134,8 +134,7 @@ static int gen6_drpc(struct seq_file *m)
>>  	}
>>=20=20
>>  	if (GRAPHICS_VER(i915) <=3D 7)
>> -		sandybridge_pcode_read(i915, GEN6_PCODE_READ_RC6VIDS,
>> -				       &rc6vids, NULL);
>> +		snb_pcode_read(i915, GEN6_PCODE_READ_RC6VIDS, &rc6vids, NULL);
>>=20=20
>>  	seq_printf(m, "RC1e Enabled: %s\n",
>>  		   yesno(rcctl1 & GEN6_RC_CTL_RC1e_ENABLE));
>> @@ -557,9 +556,8 @@ static int llc_show(struct seq_file *m, void *data)
>>  	wakeref =3D intel_runtime_pm_get(gt->uncore->rpm);
>>  	for (gpu_freq =3D min_gpu_freq; gpu_freq <=3D max_gpu_freq; gpu_freq++=
) {
>>  		ia_freq =3D gpu_freq;
>> -		sandybridge_pcode_read(i915,
>> -				       GEN6_PCODE_READ_MIN_FREQ_TABLE,
>> -				       &ia_freq, NULL);
>> +		snb_pcode_read(i915, GEN6_PCODE_READ_MIN_FREQ_TABLE,
>> +			       &ia_freq, NULL);
>>  		seq_printf(m, "%d\t\t%d\t\t\t\t%d\n",
>>  			   intel_gpu_freq(rps,
>>  					  (gpu_freq *
>> diff --git a/drivers/gpu/drm/i915/gt/intel_llc.c b/drivers/gpu/drm/i915/=
gt/intel_llc.c
>> index 08d7d5ae263a..63f18830c611 100644
>> --- a/drivers/gpu/drm/i915/gt/intel_llc.c
>> +++ b/drivers/gpu/drm/i915/gt/intel_llc.c
>> @@ -140,11 +140,10 @@ static void gen6_update_ring_freq(struct intel_llc=
 *llc)
>>  		unsigned int ia_freq, ring_freq;
>>=20=20
>>  		calc_ia_freq(llc, gpu_freq, &consts, &ia_freq, &ring_freq);
>> -		sandybridge_pcode_write(i915,
>> -					GEN6_PCODE_WRITE_MIN_FREQ_TABLE,
>> -					ia_freq << GEN6_PCODE_FREQ_IA_RATIO_SHIFT |
>> -					ring_freq << GEN6_PCODE_FREQ_RING_RATIO_SHIFT |
>> -					gpu_freq);
>> +		snb_pcode_write(i915, GEN6_PCODE_WRITE_MIN_FREQ_TABLE,
>> +				ia_freq << GEN6_PCODE_FREQ_IA_RATIO_SHIFT |
>> +				ring_freq << GEN6_PCODE_FREQ_RING_RATIO_SHIFT |
>> +				gpu_freq);
>>  	}
>>  }
>>=20=20
>> diff --git a/drivers/gpu/drm/i915/gt/intel_rc6.c b/drivers/gpu/drm/i915/=
gt/intel_rc6.c
>> index 31ebe3f1765d..bb0d6e363f5d 100644
>> --- a/drivers/gpu/drm/i915/gt/intel_rc6.c
>> +++ b/drivers/gpu/drm/i915/gt/intel_rc6.c
>> @@ -268,8 +268,7 @@ static void gen6_rc6_enable(struct intel_rc6 *rc6)
>>  	    GEN6_RC_CTL_HW_ENABLE;
>>=20=20
>>  	rc6vids =3D 0;
>> -	ret =3D sandybridge_pcode_read(i915, GEN6_PCODE_READ_RC6VIDS,
>> -				     &rc6vids, NULL);
>> +	ret =3D snb_pcode_read(i915, GEN6_PCODE_READ_RC6VIDS, &rc6vids, NULL);
>>  	if (GRAPHICS_VER(i915) =3D=3D 6 && ret) {
>>  		drm_dbg(&i915->drm, "Couldn't check for BIOS workaround\n");
>>  	} else if (GRAPHICS_VER(i915) =3D=3D 6 &&
>> @@ -279,7 +278,7 @@ static void gen6_rc6_enable(struct intel_rc6 *rc6)
>>  			GEN6_DECODE_RC6_VID(rc6vids & 0xff), 450);
>>  		rc6vids &=3D 0xffff00;
>>  		rc6vids |=3D GEN6_ENCODE_RC6_VID(450);
>> -		ret =3D sandybridge_pcode_write(i915, GEN6_PCODE_WRITE_RC6VIDS, rc6vi=
ds);
>> +		ret =3D snb_pcode_write(i915, GEN6_PCODE_WRITE_RC6VIDS, rc6vids);
>>  		if (ret)
>>  			drm_err(&i915->drm,
>>  				"Couldn't fix incorrect rc6 voltage\n");
>> diff --git a/drivers/gpu/drm/i915/gt/intel_rps.c b/drivers/gpu/drm/i915/=
gt/intel_rps.c
>> index bd35e45d3aaa..8a13bc005b45 100644
>> --- a/drivers/gpu/drm/i915/gt/intel_rps.c
>> +++ b/drivers/gpu/drm/i915/gt/intel_rps.c
>> @@ -1091,9 +1091,8 @@ static void gen6_rps_init(struct intel_rps *rps)
>>  	    IS_GEN9_BC(i915) || GRAPHICS_VER(i915) >=3D 11) {
>>  		u32 ddcc_status =3D 0;
>>=20=20
>> -		if (sandybridge_pcode_read(i915,
>> -					   HSW_PCODE_DYNAMIC_DUTY_CYCLE_CONTROL,
>> -					   &ddcc_status, NULL) =3D=3D 0)
>> +		if (snb_pcode_read(i915, HSW_PCODE_DYNAMIC_DUTY_CYCLE_CONTROL,
>> +				   &ddcc_status, NULL) =3D=3D 0)
>>  			rps->efficient_freq =3D
>>  				clamp_t(u8,
>>  					(ddcc_status >> 8) & 0xff,
>> @@ -1941,8 +1940,7 @@ void intel_rps_init(struct intel_rps *rps)
>>  	if (GRAPHICS_VER(i915) =3D=3D 6 || IS_IVYBRIDGE(i915) || IS_HASWELL(i9=
15)) {
>>  		u32 params =3D 0;
>>=20=20
>> -		sandybridge_pcode_read(i915, GEN6_READ_OC_PARAMS,
>> -				       &params, NULL);
>> +		snb_pcode_read(i915, GEN6_READ_OC_PARAMS, &params, NULL);
>>  		if (params & BIT(31)) { /* OC supported */
>>  			drm_dbg(&i915->drm,
>>  				"Overclocking supported, max: %dMHz, overclock: %dMHz\n",
>> diff --git a/drivers/gpu/drm/i915/gt/selftest_llc.c b/drivers/gpu/drm/i9=
15/gt/selftest_llc.c
>> index 459b775f163a..2cd184ab32b1 100644
>> --- a/drivers/gpu/drm/i915/gt/selftest_llc.c
>> +++ b/drivers/gpu/drm/i915/gt/selftest_llc.c
>> @@ -31,9 +31,8 @@ static int gen6_verify_ring_freq(struct intel_llc *llc)
>>  		calc_ia_freq(llc, gpu_freq, &consts, &ia_freq, &ring_freq);
>>=20=20
>>  		val =3D gpu_freq;
>> -		if (sandybridge_pcode_read(i915,
>> -					   GEN6_PCODE_READ_MIN_FREQ_TABLE,
>> -					   &val, NULL)) {
>> +		if (snb_pcode_read(i915, GEN6_PCODE_READ_MIN_FREQ_TABLE,
>> +				   &val, NULL)) {
>>  			pr_err("Failed to read freq table[%d], range [%d, %d]\n",
>>  			       gpu_freq, consts.min_gpu_freq, consts.max_gpu_freq);
>>  			err =3D -ENXIO;
>> diff --git a/drivers/gpu/drm/i915/gt/selftest_rps.c b/drivers/gpu/drm/i9=
15/gt/selftest_rps.c
>> index bd170ba1cf00..e1e5dd5f7638 100644
>> --- a/drivers/gpu/drm/i915/gt/selftest_rps.c
>> +++ b/drivers/gpu/drm/i915/gt/selftest_rps.c
>> @@ -519,9 +519,8 @@ static void show_pcu_config(struct intel_rps *rps)
>>  	for (gpu_freq =3D min_gpu_freq; gpu_freq <=3D max_gpu_freq; gpu_freq++=
) {
>>  		int ia_freq =3D gpu_freq;
>>=20=20
>> -		sandybridge_pcode_read(i915,
>> -				       GEN6_PCODE_READ_MIN_FREQ_TABLE,
>> -				       &ia_freq, NULL);
>> +		snb_pcode_read(i915, GEN6_PCODE_READ_MIN_FREQ_TABLE,
>> +			       &ia_freq, NULL);
>>=20=20
>>  		pr_info("%5d  %5d  %5d\n",
>>  			gpu_freq * 50,
>> diff --git a/drivers/gpu/drm/i915/intel_dram.c b/drivers/gpu/drm/i915/in=
tel_dram.c
>> index 84bb212bae4b..3e26ccabf7f9 100644
>> --- a/drivers/gpu/drm/i915/intel_dram.c
>> +++ b/drivers/gpu/drm/i915/intel_dram.c
>> @@ -389,10 +389,8 @@ static int icl_pcode_read_mem_global_info(struct dr=
m_i915_private *dev_priv)
>>  	u32 val =3D 0;
>>  	int ret;
>>=20=20
>> -	ret =3D sandybridge_pcode_read(dev_priv,
>> -				     ICL_PCODE_MEM_SUBSYSYSTEM_INFO |
>> -				     ICL_PCODE_MEM_SS_READ_GLOBAL_INFO,
>> -				     &val, NULL);
>> +	ret =3D snb_pcode_read(dev_priv, ICL_PCODE_MEM_SUBSYSYSTEM_INFO |
>> +			     ICL_PCODE_MEM_SS_READ_GLOBAL_INFO, &val, NULL);
>>  	if (ret)
>>  		return ret;
>>=20=20
>> diff --git a/drivers/gpu/drm/i915/intel_pcode.c b/drivers/gpu/drm/i915/i=
ntel_pcode.c
>> index e8c886e4e78d..db4403f63cac 100644
>> --- a/drivers/gpu/drm/i915/intel_pcode.c
>> +++ b/drivers/gpu/drm/i915/intel_pcode.c
>> @@ -51,11 +51,10 @@ static int gen7_check_mailbox_status(u32 mbox)
>>  	}
>>  }
>>=20=20
>> -static int __sandybridge_pcode_rw(struct drm_i915_private *i915,
>> -				  u32 mbox, u32 *val, u32 *val1,
>> -				  int fast_timeout_us,
>> -				  int slow_timeout_ms,
>> -				  bool is_read)
>> +static int __snb_pcode_rw(struct drm_i915_private *i915, u32 mbox,
>> +			  u32 *val, u32 *val1,
>> +			  int fast_timeout_us, int slow_timeout_ms,
>> +			  bool is_read)
>>  {
>>  	struct intel_uncore *uncore =3D &i915->uncore;
>>=20=20
>> @@ -94,15 +93,12 @@ static int __sandybridge_pcode_rw(struct drm_i915_pr=
ivate *i915,
>>  		return gen6_check_mailbox_status(mbox);
>>  }
>>=20=20
>> -int sandybridge_pcode_read(struct drm_i915_private *i915, u32 mbox,
>> -			   u32 *val, u32 *val1)
>> +int snb_pcode_read(struct drm_i915_private *i915, u32 mbox, u32 *val, u=
32 *val1)
>>  {
>>  	int err;
>>=20=20
>>  	mutex_lock(&i915->sb_lock);
>> -	err =3D __sandybridge_pcode_rw(i915, mbox, val, val1,
>> -				     500, 20,
>> -				     true);
>> +	err =3D __snb_pcode_rw(i915, mbox, val, val1, 500, 20, true);
>>  	mutex_unlock(&i915->sb_lock);
>>=20=20
>>  	if (err) {
>> @@ -114,17 +110,14 @@ int sandybridge_pcode_read(struct drm_i915_private=
 *i915, u32 mbox,
>>  	return err;
>>  }
>>=20=20
>> -int sandybridge_pcode_write_timeout(struct drm_i915_private *i915,
>> -				    u32 mbox, u32 val,
>> -				    int fast_timeout_us,
>> -				    int slow_timeout_ms)
>> +int snb_pcode_write_timeout(struct drm_i915_private *i915, u32 mbox, u3=
2 val,
>> +			    int fast_timeout_us, int slow_timeout_ms)
>>  {
>>  	int err;
>>=20=20
>>  	mutex_lock(&i915->sb_lock);
>> -	err =3D __sandybridge_pcode_rw(i915, mbox, &val, NULL,
>> -				     fast_timeout_us, slow_timeout_ms,
>> -				     false);
>> +	err =3D __snb_pcode_rw(i915, mbox, &val, NULL,
>> +			     fast_timeout_us, slow_timeout_ms, false);
>>  	mutex_unlock(&i915->sb_lock);
>>=20=20
>>  	if (err) {
>> @@ -140,9 +133,7 @@ static bool skl_pcode_try_request(struct drm_i915_pr=
ivate *i915, u32 mbox,
>>  				  u32 request, u32 reply_mask, u32 reply,
>>  				  u32 *status)
>>  {
>> -	*status =3D __sandybridge_pcode_rw(i915, mbox, &request, NULL,
>> -					 500, 0,
>> -					 true);
>> +	*status =3D __snb_pcode_rw(i915, mbox, &request, NULL, 500, 0, true);
>>=20=20
>>  	return *status || ((request & reply_mask) =3D=3D reply);
>>  }
>> diff --git a/drivers/gpu/drm/i915/intel_pcode.h b/drivers/gpu/drm/i915/i=
ntel_pcode.h
>> index 50806649d4b6..0962a17fac48 100644
>> --- a/drivers/gpu/drm/i915/intel_pcode.h
>> +++ b/drivers/gpu/drm/i915/intel_pcode.h
>> @@ -10,13 +10,11 @@
>>=20=20
>>  struct drm_i915_private;
>>=20=20
>> -int sandybridge_pcode_read(struct drm_i915_private *i915, u32 mbox,
>> -			   u32 *val, u32 *val1);
>> -int sandybridge_pcode_write_timeout(struct drm_i915_private *i915, u32 =
mbox,
>> -				    u32 val, int fast_timeout_us,
>> -				    int slow_timeout_ms);
>> -#define sandybridge_pcode_write(i915, mbox, val)	\
>> -	sandybridge_pcode_write_timeout(i915, mbox, val, 500, 0)
>> +int snb_pcode_read(struct drm_i915_private *i915, u32 mbox, u32 *val, u=
32 *val1);
>> +int snb_pcode_write_timeout(struct drm_i915_private *i915, u32 mbox, u3=
2 val,
>> +			    int fast_timeout_us, int slow_timeout_ms);
>> +#define snb_pcode_write(i915, mbox, val)			\
>> +	snb_pcode_write_timeout(i915, mbox, val, 500, 0)
>>=20=20
>>  int skl_pcode_request(struct drm_i915_private *i915, u32 mbox, u32 requ=
est,
>>  		      u32 reply_mask, u32 reply, int timeout_base_ms);
>> diff --git a/drivers/gpu/drm/i915/intel_pm.c b/drivers/gpu/drm/i915/inte=
l_pm.c
>> index 4ecd995c5cc7..9eec905545b9 100644
>> --- a/drivers/gpu/drm/i915/intel_pm.c
>> +++ b/drivers/gpu/drm/i915/intel_pm.c
>> @@ -2890,9 +2890,8 @@ static void intel_read_wm_latency(struct drm_i915_=
private *dev_priv,
>>=20=20
>>  		/* read the first set of memory latencies[0:3] */
>>  		val =3D 0; /* data0 to be programmed to 0 for first set */
>> -		ret =3D sandybridge_pcode_read(dev_priv,
>> -					     GEN9_PCODE_READ_MEM_LATENCY,
>> -					     &val, NULL);
>> +		ret =3D snb_pcode_read(dev_priv, GEN9_PCODE_READ_MEM_LATENCY,
>> +				     &val, NULL);
>>=20=20
>>  		if (ret) {
>>  			drm_err(&dev_priv->drm,
>> @@ -2910,9 +2909,8 @@ static void intel_read_wm_latency(struct drm_i915_=
private *dev_priv,
>>=20=20
>>  		/* read the second set of memory latencies[4:7] */
>>  		val =3D 1; /* data0 to be programmed to 1 for second set */
>> -		ret =3D sandybridge_pcode_read(dev_priv,
>> -					     GEN9_PCODE_READ_MEM_LATENCY,
>> -					     &val, NULL);
>> +		ret =3D snb_pcode_read(dev_priv, GEN9_PCODE_READ_MEM_LATENCY,
>> +				     &val, NULL);
>>  		if (ret) {
>>  			drm_err(&dev_priv->drm,
>>  				"SKL Mailbox read error =3D %d\n", ret);
>> @@ -3702,9 +3700,9 @@ skl_setup_sagv_block_time(struct drm_i915_private =
*dev_priv)
>>  		u32 val =3D 0;
>>  		int ret;
>>=20=20
>> -		ret =3D sandybridge_pcode_read(dev_priv,
>> -					     GEN12_PCODE_READ_SAGV_BLOCK_TIME_US,
>> -					     &val, NULL);
>> +		ret =3D snb_pcode_read(dev_priv,
>> +				     GEN12_PCODE_READ_SAGV_BLOCK_TIME_US,
>> +				     &val, NULL);
>>  		if (!ret) {
>>  			dev_priv->sagv_block_time_us =3D val;
>>  			return;
>> @@ -3751,8 +3749,8 @@ intel_enable_sagv(struct drm_i915_private *dev_pri=
v)
>>  		return 0;
>>=20=20
>>  	drm_dbg_kms(&dev_priv->drm, "Enabling SAGV\n");
>> -	ret =3D sandybridge_pcode_write(dev_priv, GEN9_PCODE_SAGV_CONTROL,
>> -				      GEN9_SAGV_ENABLE);
>> +	ret =3D snb_pcode_write(dev_priv, GEN9_PCODE_SAGV_CONTROL,
>> +			      GEN9_SAGV_ENABLE);
>>=20=20
>>  	/* We don't need to wait for SAGV when enabling */
>>=20=20
>> --=20
>> 2.30.2

--=20
Jani Nikula, Intel Open Source Graphics Center
