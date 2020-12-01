Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 2A88E2CADBE
	for <lists+intel-gfx@lfdr.de>; Tue,  1 Dec 2020 21:51:18 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 986316E918;
	Tue,  1 Dec 2020 20:51:16 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
 by gabe.freedesktop.org (Postfix) with ESMTPS id E096C6E918
 for <intel-gfx@lists.freedesktop.org>; Tue,  1 Dec 2020 20:51:15 +0000 (UTC)
IronPort-SDR: kApA+nnOd56De2H9XbRZeN68y6E+PeYsMIA+43mU9dBLoDI8FZV9+MefdL4MTU1QhZWJpD0REy
 bd0upMMfnYKw==
X-IronPort-AV: E=McAfee;i="6000,8403,9822"; a="191111356"
X-IronPort-AV: E=Sophos;i="5.78,385,1599548400"; d="scan'208";a="191111356"
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga005.fm.intel.com ([10.253.24.32])
 by fmsmga101.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 01 Dec 2020 12:51:11 -0800
IronPort-SDR: hGYuLzMC3+bN/NwNcur1bi4m4dolMQi3oI6bH2BCpWAw0ylJ5qdASoeSvjxhKbZ498GPrfkEY2
 MoT5o+P+j4rQ==
X-IronPort-AV: E=Sophos;i="5.78,385,1599548400"; d="scan'208";a="539265532"
Received: from gbendige-mobl3.amr.corp.intel.com (HELO ldmartin-desk1)
 ([10.251.21.114])
 by fmsmga005-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 01 Dec 2020 12:51:09 -0800
Date: Tue, 1 Dec 2020 12:51:08 -0800
From: Lucas De Marchi <lucas.demarchi@intel.com>
To: "Srivatsa, Anusha" <anusha.srivatsa@intel.com>
Message-ID: <20201201205108.hx4p7lgjeo3xyqee@ldmartin-desk1>
X-Patchwork-Hint: comment
References: <20201117185029.22078-1-aditya.swarup@intel.com>
 <20201117185029.22078-16-aditya.swarup@intel.com>
 <7c78eb2a1d5440cf89a76e17e90d0cfa@intel.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <7c78eb2a1d5440cf89a76e17e90d0cfa@intel.com>
Subject: Re: [Intel-gfx] [PATCH 15/21] drm/i915/adl_s: Add display, gt,
 ctx and ADL-S
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
Cc: "Nikula, Jani" <jani.nikula@intel.com>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>
Content-Transfer-Encoding: quoted-printable
Content-Type: text/plain; charset="iso-8859-1"; Format="flowed"
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Tue, Dec 01, 2020 at 10:46:58AM -0800, Anusha Srivatsa wrote:
>s/Add display, gt, ctx and ADL-S/ Add display, gt, ctx WA for ADL-S
>
>Anusha
>
>
>> -----Original Message-----
>> From: Intel-gfx <intel-gfx-bounces@lists.freedesktop.org> On Behalf Of
>> Aditya Swarup
>> Sent: Tuesday, November 17, 2020 10:50 AM
>> To: intel-gfx@lists.freedesktop.org
>> Cc: Nikula, Jani <jani.nikula@intel.com>; De Marchi, Lucas
>> <lucas.demarchi@intel.com>
>> Subject: [Intel-gfx] [PATCH 15/21] drm/i915/adl_s: Add display, gt, ctx =
and
>> ADL-S
>>
>> - Inherit the gen12 workarounds.
>> - Add placeholders to setup GT WA.
>> - Extend permanent driver WA Wa_1409767108 to adl-s and
>>   Wa_14010685332 to adl-s.
>> - Extend permanent driver WA Wa_1606054188 to adl-s
>> - Add Wa_14011765242 for adl-s A0 stepping.
>>
>> v2:
>> - Extend Wa_14010919138 and Wa_14010229206 to ADL-S (Madhumitha)
>> - Extend Wa_22010271021 to ADLS (cyokoyam)
>>
>> Cc: Jani Nikula <jani.nikula@intel.com>
>> Cc: Ville Syrj=E4l=E4 <ville.syrjala@linux.intel.com>
>> Cc: Imre Deak <imre.deak@intel.com>
>> Cc: Matt Roper <matthew.d.roper@intel.com>
>> Cc: Lucas De Marchi <lucas.demarchi@intel.com>
>> Signed-off-by: Madhumitha Tolakanahalli Pradeep
>> <madhumitha.tolakanahalli.pradeep@intel.com>
>> Signed-off-by: Aditya Swarup <aditya.swarup@intel.com>
>> ---
>>  .../drm/i915/display/intel_display_power.c    |  7 +-
>>  drivers/gpu/drm/i915/display/intel_sprite.c   |  4 +-
>>  drivers/gpu/drm/i915/gt/intel_workarounds.c   | 91 +++++++++++++------

this needs to be split out from the rest, since now the gt part is
applied to a different branch.

Lucas De Marchi

>>  drivers/gpu/drm/i915/intel_device_info.c      |  6 +-
>>  4 files changed, 72 insertions(+), 36 deletions(-)
>>
>> diff --git a/drivers/gpu/drm/i915/display/intel_display_power.c
>> b/drivers/gpu/drm/i915/display/intel_display_power.c
>> index 06c036e2092c..8b163d804a41 100644
>> --- a/drivers/gpu/drm/i915/display/intel_display_power.c
>> +++ b/drivers/gpu/drm/i915/display/intel_display_power.c
>> @@ -5282,9 +5282,10 @@ static void tgl_bw_buddy_init(struct
>> drm_i915_private *dev_priv)
>>  	unsigned long abox_mask =3D INTEL_INFO(dev_priv)->abox_mask;
>>  	int config, i;
>>
>> -	if (IS_DG1_REVID(dev_priv, DG1_REVID_A0, DG1_REVID_A0) ||
>> +	if (IS_ALDERLAKE_S(dev_priv) ||
>> +	    IS_DG1_REVID(dev_priv, DG1_REVID_A0, DG1_REVID_A0) ||
>>  	    IS_TGL_DISP_REVID(dev_priv, REVID_A0, REVID_B0))
>> -		/* Wa_1409767108:tgl,dg1 */
>> +		/* Wa_1409767108:tgl,dg1,adl-s */
>>  		table =3D wa_1409767108_buddy_page_masks;
>>  	else
>>  		table =3D tgl_buddy_page_masks;
>> @@ -5322,7 +5323,7 @@ static void icl_display_core_init(struct
>> drm_i915_private *dev_priv,
>>
>>  	gen9_set_dc_state(dev_priv, DC_STATE_DISABLE);
>>
>> -	/* Wa_14011294188:ehl,jsl,tgl,rkl */
>> +	/* Wa_14011294188:ehl,jsl,tgl,rkl,adl-s */
>>  	if (INTEL_PCH_TYPE(dev_priv) >=3D PCH_JSP &&
>>  	    INTEL_PCH_TYPE(dev_priv) < PCH_DG1)
>>  		intel_de_rmw(dev_priv, SOUTH_DSPCLK_GATE_D, 0, diff --git
>> a/drivers/gpu/drm/i915/display/intel_sprite.c
>> b/drivers/gpu/drm/i915/display/intel_sprite.c
>> index f7da4a56054e..1e954e2928fe 100644
>> --- a/drivers/gpu/drm/i915/display/intel_sprite.c
>> +++ b/drivers/gpu/drm/i915/display/intel_sprite.c
>> @@ -2359,8 +2359,8 @@ static int skl_plane_check_fb(const struct
>> intel_crtc_state *crtc_state,
>>  		return -EINVAL;
>>  	}
>>
>> -	/* Wa_1606054188:tgl */
>> -	if (IS_TIGERLAKE(dev_priv) &&
>> +	/* Wa_1606054188:tgl,adl-s */
>> +	if ((IS_ALDERLAKE_S(dev_priv) || IS_TIGERLAKE(dev_priv)) &&
>>  	    plane_state->ckey.flags & I915_SET_COLORKEY_SOURCE &&
>>  	    intel_format_is_p01x(fb->format->format)) {
>>  		drm_dbg_kms(&dev_priv->drm,
>> diff --git a/drivers/gpu/drm/i915/gt/intel_workarounds.c
>> b/drivers/gpu/drm/i915/gt/intel_workarounds.c
>> index d88d3d60fb1c..e6f149bd537f 100644
>> --- a/drivers/gpu/drm/i915/gt/intel_workarounds.c
>> +++ b/drivers/gpu/drm/i915/gt/intel_workarounds.c
>> @@ -664,22 +664,6 @@ static void tgl_ctx_workarounds_init(struct
>> intel_engine_cs *engine,
>>  				     struct i915_wa_list *wal)
>>  {
>>  	gen12_ctx_workarounds_init(engine, wal);
>> -
>> -	/*
>> -	 * Wa_1604555607:tgl,rkl
>> -	 *
>> -	 * Note that the implementation of this workaround is further
>> modified
>> -	 * according to the FF_MODE2 guidance given by
>> Wa_1608008084:gen12.
>> -	 * FF_MODE2 register will return the wrong value when read. The
>> default
>> -	 * value for this register is zero for all fields and there are no bit
>> -	 * masks. So instead of doing a RMW we should just write the GS
>> Timer
>> -	 * and TDS timer values for Wa_1604555607 and Wa_16011163337.
>> -	 */
>> -	wa_add(wal,
>> -	       FF_MODE2,
>> -	       FF_MODE2_GS_TIMER_MASK | FF_MODE2_TDS_TIMER_MASK,
>> -	       FF_MODE2_GS_TIMER_224  | FF_MODE2_TDS_TIMER_128,
>> -	       0);
>>  }
>>
>>  static void dg1_ctx_workarounds_init(struct intel_engine_cs *engine, @@=
 -
>> 696,6 +680,12 @@ static void dg1_ctx_workarounds_init(struct
>> intel_engine_cs *engine,
>>
>> DG1_HZ_READ_SUPPRESSION_OPTIMIZATION_DISABLE);
>>  }
>>
>> +static void adls_ctx_workarounds_init(struct intel_engine_cs *engine,
>> +				      struct i915_wa_list *wal)
>> +{
>> +	gen12_ctx_workarounds_init(engine, wal); }
>> +
>>  static void
>>  __intel_engine_init_ctx_wa(struct intel_engine_cs *engine,
>>  			   struct i915_wa_list *wal,
>> @@ -708,7 +698,31 @@ __intel_engine_init_ctx_wa(struct intel_engine_cs
>> *engine,
>>
>>  	wa_init_start(wal, name, engine->name);
>>
>> -	if (IS_DG1(i915))
>> +	if (INTEL_GEN(i915) >=3D 12) {
>> +		/*
>> +		 * This setting isn't actually a workaround, but is a general
>> +		 * tuning setting that needs to be programmed on all
>> platforms
>> +		 * gen12+. Although some platforms also refer to this
>> setting
>> +		 * as Wa_1604555607, we need to program it even on
>> platforms that
>> +		 * don't explicitly list that workaround.
>> +		 *
>> +		 * Note that the implementation is further modified
>> according
>> +		 * to the FF_MODE2 guidance given by
>> Wa_1608008084:gen12.
>> +		 * FF_MODE2 register will return the wrong value when
>> read.
>> +		 * The default value for this register is zero for all fields
>> +		 * and there are no bit masks. So instead of doing a RMW,
>> we
>> +		 * should just write the value directly.
>> +		 */
>> +		wa_add(wal,
>> +			FF_MODE2,
>> +			FF_MODE2_TDS_TIMER_MASK,
>> +			FF_MODE2_TDS_TIMER_128,
>> +			0);
>> +	}
>> +
>> +	if (IS_ALDERLAKE_S(i915))
>> +		adls_ctx_workarounds_init(engine, wal);
>> +	else if (IS_DG1(i915))
>>  		dg1_ctx_workarounds_init(engine, wal);
>>  	else if (IS_ROCKETLAKE(i915) || IS_TIGERLAKE(i915))
>>  		tgl_ctx_workarounds_init(engine, wal); @@ -1294,10
>> +1308,18 @@ dg1_gt_workarounds_init(struct drm_i915_private *i915,
>> struct i915_wa_list *wal)
>>  			    VSUNIT_CLKGATE_DIS_TGL);
>>  }
>>
>> +static void
>> +adls_gt_workarounds_init(struct drm_i915_private *i915, struct
>> +i915_wa_list *wal) {
>> +	gen12_gt_workarounds_init(i915, wal);
>> +}
>> +
>>  static void
>>  gt_init_workarounds(struct drm_i915_private *i915, struct i915_wa_list
>> *wal)  {
>> -	if (IS_DG1(i915))
>> +	if (IS_ALDERLAKE_S(i915))
>> +		adls_gt_workarounds_init(i915, wal);
>> +	else if (IS_DG1(i915))
>>  		dg1_gt_workarounds_init(i915, wal);
>>  	else if (IS_TIGERLAKE(i915))
>>  		tgl_gt_workarounds_init(i915, wal);
>> @@ -1678,6 +1700,11 @@ static void dg1_whitelist_build(struct
>> intel_engine_cs *engine)
>>  				  RING_FORCE_TO_NONPRIV_ACCESS_RD);  }
>>
>> +static void adls_whitelist_build(struct intel_engine_cs *engine) {
>> +	tgl_whitelist_build(engine);
>> +}
>> +
>>  void intel_engine_init_whitelist(struct intel_engine_cs *engine)  {
>>  	struct drm_i915_private *i915 =3D engine->i915; @@ -1685,7 +1712,9
>> @@ void intel_engine_init_whitelist(struct intel_engine_cs *engine)
>>
>>  	wa_init_start(w, "whitelist", engine->name);
>>
>> -	if (IS_DG1(i915))
>> +	if (IS_ALDERLAKE_S(i915))
>> +		adls_whitelist_build(engine);
>> +	else if (IS_DG1(i915))
>>  		dg1_whitelist_build(engine);
>>  	else if (IS_GEN(i915, 12))
>>  		tgl_whitelist_build(engine);
>> @@ -1766,37 +1795,38 @@ rcs_engine_wa_init(struct intel_engine_cs
>> *engine, struct i915_wa_list *wal)
>>  			    VSUNIT_CLKGATE_DIS_TGL);
>>  	}
>>
>> -	if (IS_DG1(i915) || IS_ROCKETLAKE(i915) || IS_TIGERLAKE(i915)) {
>> -		/* Wa_1606931601:tgl,rkl,dg1 */
>> +	if (IS_ALDERLAKE_S(i915) || IS_DG1(i915) ||
>> +	    IS_ROCKETLAKE(i915) || IS_TIGERLAKE(i915)) {
>> +		/* Wa_1606931601:tgl,rkl,dg1,adl-s */
>>  		wa_masked_en(wal, GEN7_ROW_CHICKEN2,
>> GEN12_DISABLE_EARLY_READ);
>>
>>  		/*
>>  		 * Wa_1407928979:tgl A*
>>  		 * Wa_18011464164:tgl[B0+],dg1[B0+]
>>  		 * Wa_22010931296:tgl[B0+],dg1[B0+]
>> -		 * Wa_14010919138:rkl, dg1
>> +		 * Wa_14010919138:rkl,dg1,adl-s
>>  		 */
>>  		wa_write_or(wal, GEN7_FF_THREAD_MODE,
>>  			    GEN12_FF_TESSELATION_DOP_GATE_DISABLE);
>>
>>  		/*
>>  		 * Wa_1606700617:tgl,dg1
>> -		 * Wa_22010271021:tgl,rkl,dg1
>> +		 * Wa_22010271021:tgl,rkl,dg1, adl-s
>>  		 */
>>  		wa_masked_en(wal,
>>  			     GEN9_CS_DEBUG_MODE1,
>>  			     FF_DOP_CLOCK_GATE_DISABLE);
>>  	}
>>
>> -	if (IS_DG1_REVID(i915, DG1_REVID_A0, DG1_REVID_A0) ||
>> +	if (IS_ALDERLAKE_S(i915) || IS_DG1_REVID(i915, DG1_REVID_A0,
>> +DG1_REVID_A0) ||
>>  	    IS_ROCKETLAKE(i915) || IS_TIGERLAKE(i915)) {
>> -		/* Wa_1409804808:tgl,rkl,dg1[a0] */
>> +		/* Wa_1409804808:tgl,rkl,dg1[a0],adl-s */
>>  		wa_masked_en(wal, GEN7_ROW_CHICKEN2,
>>  			     GEN12_PUSH_CONST_DEREF_HOLD_DIS);
>>
>>  		/*
>>  		 * Wa_1409085225:tgl
>> -		 * Wa_14010229206:tgl,rkl,dg1[a0]
>> +		 * Wa_14010229206:tgl,rkl,dg1[a0],adl-s
>>  		 */
>>  		wa_masked_en(wal, GEN9_ROW_CHICKEN4,
>> GEN12_DISABLE_TDL_PUSH);
>>
>> @@ -1810,10 +1840,11 @@ rcs_engine_wa_init(struct intel_engine_cs
>> *engine, struct i915_wa_list *wal)
>>  		 * it applies to all steppings so we trust the "all steppings."
>>  		 * For DG1 this only applies to A0.
>>  		 */
>> -		wa_masked_en(wal,
>> -			     GEN6_RC_SLEEP_PSMI_CONTROL,
>> -
>> GEN12_WAIT_FOR_EVENT_POWER_DOWN_DISABLE |
>> -			     GEN8_RC_SEMA_IDLE_MSG_DISABLE);
>> +		if (!IS_ALDERLAKE_S(i915))
>> +			wa_masked_en(wal,
>> +				     GEN6_RC_SLEEP_PSMI_CONTROL,
>> +
>> GEN12_WAIT_FOR_EVENT_POWER_DOWN_DISABLE |
>> +				     GEN8_RC_SEMA_IDLE_MSG_DISABLE);
>>  	}
>>
>>  	if (IS_GEN(i915, 12)) {
>> diff --git a/drivers/gpu/drm/i915/intel_device_info.c
>> b/drivers/gpu/drm/i915/intel_device_info.c
>> index 7310e019c611..64a09954fd54 100644
>> --- a/drivers/gpu/drm/i915/intel_device_info.c
>> +++ b/drivers/gpu/drm/i915/intel_device_info.c
>> @@ -394,7 +394,11 @@ void intel_device_info_runtime_init(struct
>> drm_i915_private *dev_priv)
>>  	struct intel_runtime_info *runtime =3D RUNTIME_INFO(dev_priv);
>>  	enum pipe pipe;
>>
>> -	if (INTEL_GEN(dev_priv) >=3D 10) {
>> +	/* Wa_14011765242: adl-s A0 */
>> +	if (IS_ADLS_DISP_REVID(dev_priv, REVID_A0, REVID_A0))
>> +		for_each_pipe(dev_priv, pipe)
>> +			runtime->num_scalers[pipe] =3D 0;
>> +	else if (INTEL_GEN(dev_priv) >=3D 10) {
>>  		for_each_pipe(dev_priv, pipe)
>>  			runtime->num_scalers[pipe] =3D 2;
>>  	} else if (IS_GEN(dev_priv, 9)) {
>> --
>> 2.27.0
>>
>> _______________________________________________
>> Intel-gfx mailing list
>> Intel-gfx@lists.freedesktop.org
>> https://lists.freedesktop.org/mailman/listinfo/intel-gfx
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
