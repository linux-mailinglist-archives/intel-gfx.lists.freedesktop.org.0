Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 525BE3EBC9E
	for <lists+intel-gfx@lfdr.de>; Fri, 13 Aug 2021 21:36:26 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 7425C6E8CA;
	Fri, 13 Aug 2021 19:36:15 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
 by gabe.freedesktop.org (Postfix) with ESMTPS id D9D816E8C8
 for <intel-gfx@lists.freedesktop.org>; Fri, 13 Aug 2021 19:36:13 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6200,9189,10075"; a="237663679"
X-IronPort-AV: E=Sophos;i="5.84,319,1620716400"; d="scan'208";a="237663679"
Received: from fmsmga003.fm.intel.com ([10.253.24.29])
 by fmsmga101.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 13 Aug 2021 12:36:13 -0700
X-IronPort-AV: E=Sophos;i="5.84,319,1620716400"; d="scan'208";a="518303833"
Received: from cgearing-mobl.ger.corp.intel.com (HELO localhost)
 ([10.251.209.226])
 by fmsmga003-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 13 Aug 2021 12:36:11 -0700
From: Jani Nikula <jani.nikula@intel.com>
To: Matt Roper <matthew.d.roper@intel.com>
Cc: intel-gfx@lists.freedesktop.org, Manasi Navare <manasi.d.navare@intel.com>
In-Reply-To: <20210813175933.GA1556418@mdroper-desk1.amr.corp.intel.com>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
References: <20210813115151.19290-1-jani.nikula@intel.com>
 <20210813115151.19290-2-jani.nikula@intel.com>
 <20210813175933.GA1556418@mdroper-desk1.amr.corp.intel.com>
Date: Fri, 13 Aug 2021 22:36:08 +0300
Message-ID: <87bl61kuhj.fsf@intel.com>
MIME-Version: 1.0
Content-Type: text/plain
Subject: Re: [Intel-gfx] [PATCH 2/3] drm/i915/dg2: use existing mechanisms
 for SNPS PHY translations
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

On Fri, 13 Aug 2021, Matt Roper <matthew.d.roper@intel.com> wrote:
> On Fri, Aug 13, 2021 at 02:51:50PM +0300, Jani Nikula wrote:
>> We use encoder->get_buf_trans() in many places, for example
>> intel_ddi_dp_voltage_max(), and the hook was set to some old platform's
>> function for DG2 SNPS PHY. Convert SNPS PHY to use the same translation
>> mechanisms as everything else.
>> 
>> Cc: Manasi Navare <manasi.d.navare@intel.com>
>> Cc: Matt Roper <matthew.d.roper@intel.com>
>> Signed-off-by: Jani Nikula <jani.nikula@intel.com>
>> ---
>>  drivers/gpu/drm/i915/display/intel_ddi.c      |  6 +-
>>  .../drm/i915/display/intel_ddi_buf_trans.c    | 31 +++++++++-
>>  .../drm/i915/display/intel_ddi_buf_trans.h    |  7 +++
>>  drivers/gpu/drm/i915/display/intel_snps_phy.c | 61 ++++++-------------
>>  drivers/gpu/drm/i915/display/intel_snps_phy.h |  3 +-
>>  5 files changed, 59 insertions(+), 49 deletions(-)
>> 
>> diff --git a/drivers/gpu/drm/i915/display/intel_ddi.c b/drivers/gpu/drm/i915/display/intel_ddi.c
>> index 8cf5d1572ee0..9e46cf5c4378 100644
>> --- a/drivers/gpu/drm/i915/display/intel_ddi.c
>> +++ b/drivers/gpu/drm/i915/display/intel_ddi.c
>> @@ -1388,7 +1388,7 @@ dg2_set_signal_levels(struct intel_dp *intel_dp,
>>  	struct intel_encoder *encoder = &dp_to_dig_port(intel_dp)->base;
>>  	int level = intel_ddi_dp_level(intel_dp, crtc_state);
>>  
>> -	intel_snps_phy_ddi_vswing_sequence(encoder, level);
>> +	intel_snps_phy_ddi_vswing_sequence(encoder, crtc_state, level);
>>  }
>>  
>>  static void
>> @@ -2388,7 +2388,7 @@ static void dg2_ddi_pre_enable_dp(struct intel_atomic_state *state,
>>  	 */
>>  
>>  	/* 5.e Configure voltage swing and related IO settings */
>> -	intel_snps_phy_ddi_vswing_sequence(encoder, level);
>> +	intel_snps_phy_ddi_vswing_sequence(encoder, crtc_state, level);
>>  
>>  	/*
>>  	 * 5.f Configure and enable DDI_BUF_CTL
>> @@ -3057,7 +3057,7 @@ static void intel_enable_ddi_hdmi(struct intel_atomic_state *state,
>>  			    connector->base.id, connector->name);
>>  
>>  	if (IS_DG2(dev_priv))
>> -		intel_snps_phy_ddi_vswing_sequence(encoder, U32_MAX);
>> +		intel_snps_phy_ddi_vswing_sequence(encoder, crtc_state, level);
>>  	else if (DISPLAY_VER(dev_priv) >= 12)
>>  		tgl_ddi_vswing_sequence(encoder, crtc_state, level);
>>  	else if (DISPLAY_VER(dev_priv) == 11)
>> diff --git a/drivers/gpu/drm/i915/display/intel_ddi_buf_trans.c b/drivers/gpu/drm/i915/display/intel_ddi_buf_trans.c
>> index ba2c08f1a797..ebb39624bfc9 100644
>> --- a/drivers/gpu/drm/i915/display/intel_ddi_buf_trans.c
>> +++ b/drivers/gpu/drm/i915/display/intel_ddi_buf_trans.c
>> @@ -983,6 +983,25 @@ static const struct intel_ddi_buf_trans adlp_dkl_phy_ddi_translations_dp_hbr2_hb
>>  	.num_entries = ARRAY_SIZE(_adlp_dkl_phy_ddi_translations_dp_hbr2_hbr3),
>>  };
>>  
>> +static const union intel_ddi_buf_trans_entry _dg2_snps_translations[] = {
>> +	{ .snps = { 26, 0, 0 } },	/* VS 0, pre-emph 0 */
>> +	{ .snps = { 33, 0, 6 } },	/* VS 0, pre-emph 1 */
>> +	{ .snps = { 38, 0, 12 } },	/* VS 0, pre-emph 2 */
>> +	{ .snps = { 43, 0, 19 } },	/* VS 0, pre-emph 3 */
>> +	{ .snps = { 39, 0, 0 } },	/* VS 1, pre-emph 0 */
>> +	{ .snps = { 44, 0, 8 } },	/* VS 1, pre-emph 1 */
>> +	{ .snps = { 47, 0, 15 } },	/* VS 1, pre-emph 2 */
>> +	{ .snps = { 52, 0, 0 } },	/* VS 2, pre-emph 0 */
>> +	{ .snps = { 51, 0, 10 } },	/* VS 2, pre-emph 1 */
>> +	{ .snps = { 62, 0, 0 } },	/* VS 3, pre-emph 0 */
>> +};
>> +
>> +static const struct intel_ddi_buf_trans dg2_snps_translations = {
>> +	.entries = _dg2_snps_translations,
>> +	.num_entries = ARRAY_SIZE(_dg2_snps_translations),
>> +	.hdmi_default_entry = ARRAY_SIZE(_dg2_snps_translations) - 1,
>> +};
>> +
>>  bool is_hobl_buf_trans(const struct intel_ddi_buf_trans *table)
>>  {
>>  	return table == &tgl_combo_phy_ddi_translations_edp_hbr2_hobl;
>> @@ -1563,6 +1582,14 @@ adlp_get_dkl_buf_trans(struct intel_encoder *encoder,
>>  		return adlp_get_dkl_buf_trans_dp(encoder, crtc_state, n_entries);
>>  }
>>  
>> +static const struct intel_ddi_buf_trans *
>> +dg2_get_snps_buf_trans(struct intel_encoder *encoder,
>> +		       const struct intel_crtc_state *crtc_state,
>> +		       int *n_entries)
>> +{
>> +	return intel_get_buf_trans(&dg2_snps_translations, n_entries);
>> +}
>> +
>>  int intel_ddi_hdmi_num_entries(struct intel_encoder *encoder,
>>  			       const struct intel_crtc_state *crtc_state,
>>  			       int *default_entry)
>> @@ -1588,7 +1615,9 @@ void intel_ddi_buf_trans_init(struct intel_encoder *encoder)
>>  	struct drm_i915_private *i915 = to_i915(encoder->base.dev);
>>  	enum phy phy = intel_port_to_phy(i915, encoder->port);
>>  
>> -	if (IS_ALDERLAKE_P(i915)) {
>> +	if (IS_DG2(i915)) {
>> +		encoder->get_buf_trans = dg2_get_snps_buf_trans;
>> +	} else if (IS_ALDERLAKE_P(i915)) {
>>  		if (intel_phy_is_combo(i915, phy))
>>  			encoder->get_buf_trans = adlp_get_combo_buf_trans;
>>  		else
>
> While we're at it, maybe change the 'else' to a IS_HASWELL check and
> then add a new 'else' with MISSING_CASE to make sure we don't miss this
> for future platforms?
>
> Up to you.  Either way,
>
> Reviewed-by: Matt Roper <matthew.d.roper@intel.com>

Thanks! I decided to push these as-is, and will send a follow-up to add
the MISSING_CASE.

BR,
Jani.


>
>
>> diff --git a/drivers/gpu/drm/i915/display/intel_ddi_buf_trans.h b/drivers/gpu/drm/i915/display/intel_ddi_buf_trans.h
>> index 2acd720f9d4f..94d338287f61 100644
>> --- a/drivers/gpu/drm/i915/display/intel_ddi_buf_trans.h
>> +++ b/drivers/gpu/drm/i915/display/intel_ddi_buf_trans.h
>> @@ -45,12 +45,19 @@ struct tgl_dkl_phy_ddi_buf_trans {
>>  	u32 dkl_de_emphasis_control;
>>  };
>>  
>> +struct dg2_snps_phy_buf_trans {
>> +	u8 snps_vswing;
>> +	u8 snps_pre_cursor;
>> +	u8 snps_post_cursor;
>> +};
>> +
>>  union intel_ddi_buf_trans_entry {
>>  	struct hsw_ddi_buf_trans hsw;
>>  	struct bxt_ddi_buf_trans bxt;
>>  	struct icl_ddi_buf_trans icl;
>>  	struct icl_mg_phy_ddi_buf_trans mg;
>>  	struct tgl_dkl_phy_ddi_buf_trans dkl;
>> +	struct dg2_snps_phy_buf_trans snps;
>>  };
>>  
>>  struct intel_ddi_buf_trans {
>> diff --git a/drivers/gpu/drm/i915/display/intel_snps_phy.c b/drivers/gpu/drm/i915/display/intel_snps_phy.c
>> index 18b52b64af95..d81f71296297 100644
>> --- a/drivers/gpu/drm/i915/display/intel_snps_phy.c
>> +++ b/drivers/gpu/drm/i915/display/intel_snps_phy.c
>> @@ -5,6 +5,7 @@
>>  
>>  #include <linux/util_macros.h>
>>  
>> +#include "intel_ddi_buf_trans.h"
>>  #include "intel_de.h"
>>  #include "intel_display_types.h"
>>  #include "intel_snps_phy.h"
>> @@ -50,58 +51,30 @@ void intel_snps_phy_update_psr_power_state(struct drm_i915_private *dev_priv,
>>  			 SNPS_PHY_TX_REQ_LN_DIS_PWR_STATE_PSR, val);
>>  }
>>  
>> -static const u32 dg2_ddi_translations[] = {
>> -	/* VS 0, pre-emph 0 */
>> -	REG_FIELD_PREP(SNPS_PHY_TX_EQ_MAIN, 26),
>> -
>> -	/* VS 0, pre-emph 1 */
>> -	REG_FIELD_PREP(SNPS_PHY_TX_EQ_MAIN, 33) |
>> -		REG_FIELD_PREP(SNPS_PHY_TX_EQ_POST, 6),
>> -
>> -	/* VS 0, pre-emph 2 */
>> -	REG_FIELD_PREP(SNPS_PHY_TX_EQ_MAIN, 38) |
>> -		REG_FIELD_PREP(SNPS_PHY_TX_EQ_POST, 12),
>> -
>> -	/* VS 0, pre-emph 3 */
>> -	REG_FIELD_PREP(SNPS_PHY_TX_EQ_MAIN, 43) |
>> -		REG_FIELD_PREP(SNPS_PHY_TX_EQ_POST, 19),
>> -
>> -	/* VS 1, pre-emph 0 */
>> -	REG_FIELD_PREP(SNPS_PHY_TX_EQ_MAIN, 39),
>> -
>> -	/* VS 1, pre-emph 1 */
>> -	REG_FIELD_PREP(SNPS_PHY_TX_EQ_MAIN, 44) |
>> -		REG_FIELD_PREP(SNPS_PHY_TX_EQ_POST, 8),
>> -
>> -	/* VS 1, pre-emph 2 */
>> -	REG_FIELD_PREP(SNPS_PHY_TX_EQ_MAIN, 47) |
>> -		REG_FIELD_PREP(SNPS_PHY_TX_EQ_POST, 15),
>> -
>> -	/* VS 2, pre-emph 0 */
>> -	REG_FIELD_PREP(SNPS_PHY_TX_EQ_MAIN, 52),
>> -
>> -	/* VS 2, pre-emph 1 */
>> -	REG_FIELD_PREP(SNPS_PHY_TX_EQ_MAIN, 51) |
>> -		REG_FIELD_PREP(SNPS_PHY_TX_EQ_POST, 10),
>> -
>> -	/* VS 3, pre-emph 0 */
>> -	REG_FIELD_PREP(SNPS_PHY_TX_EQ_MAIN, 62),
>> -};
>> -
>>  void intel_snps_phy_ddi_vswing_sequence(struct intel_encoder *encoder,
>> -					u32 level)
>> +					const struct intel_crtc_state *crtc_state,
>> +					int level)
>>  {
>>  	struct drm_i915_private *dev_priv = to_i915(encoder->base.dev);
>> +	const struct intel_ddi_buf_trans *ddi_translations;
>>  	enum phy phy = intel_port_to_phy(dev_priv, encoder->port);
>>  	int n_entries, ln;
>>  
>> -	n_entries = ARRAY_SIZE(dg2_ddi_translations);
>> -	if (level >= n_entries)
>> +	ddi_translations = encoder->get_buf_trans(encoder, crtc_state, &n_entries);
>> +	if (drm_WARN_ON_ONCE(&dev_priv->drm, !ddi_translations))
>> +		return;
>> +	if (drm_WARN_ON_ONCE(&dev_priv->drm, level < 0 || level >= n_entries))
>>  		level = n_entries - 1;
>>  
>> -	for (ln = 0; ln < 4; ln++)
>> -		intel_de_write(dev_priv, SNPS_PHY_TX_EQ(ln, phy),
>> -			       dg2_ddi_translations[level]);
>> +	for (ln = 0; ln < 4; ln++) {
>> +		u32 val = 0;
>> +
>> +		val |= REG_FIELD_PREP(SNPS_PHY_TX_EQ_MAIN, ddi_translations->entries[level].snps.snps_vswing);
>> +		val |= REG_FIELD_PREP(SNPS_PHY_TX_EQ_PRE, ddi_translations->entries[level].snps.snps_pre_cursor);
>> +		val |= REG_FIELD_PREP(SNPS_PHY_TX_EQ_POST, ddi_translations->entries[level].snps.snps_post_cursor);
>> +
>> +		intel_de_write(dev_priv, SNPS_PHY_TX_EQ(ln, phy), val);
>> +	}
>>  }
>>  
>>  /*
>> diff --git a/drivers/gpu/drm/i915/display/intel_snps_phy.h b/drivers/gpu/drm/i915/display/intel_snps_phy.h
>> index 6261ff88ef5c..a68547a6fee5 100644
>> --- a/drivers/gpu/drm/i915/display/intel_snps_phy.h
>> +++ b/drivers/gpu/drm/i915/display/intel_snps_phy.h
>> @@ -30,6 +30,7 @@ int intel_mpllb_calc_port_clock(struct intel_encoder *encoder,
>>  
>>  int intel_snps_phy_check_hdmi_link_rate(int clock);
>>  void intel_snps_phy_ddi_vswing_sequence(struct intel_encoder *encoder,
>> -					u32 level);
>> +					const struct intel_crtc_state *crtc_state,
>> +					int level);
>>  
>>  #endif /* __INTEL_SNPS_PHY_H__ */
>> -- 
>> 2.20.1
>> 

-- 
Jani Nikula, Intel Open Source Graphics Center
