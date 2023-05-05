Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id AC9966F7F63
	for <lists+intel-gfx@lfdr.de>; Fri,  5 May 2023 10:51:59 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id CAF8610E0D3;
	Fri,  5 May 2023 08:51:57 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga04.intel.com (mga04.intel.com [192.55.52.120])
 by gabe.freedesktop.org (Postfix) with ESMTPS id BB14C10E0D3
 for <intel-gfx@lists.freedesktop.org>; Fri,  5 May 2023 08:51:56 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1683276716; x=1714812716;
 h=from:to:cc:subject:in-reply-to:references:date:
 message-id:mime-version:content-transfer-encoding;
 bh=aFCBW8nTatWeLbNKYf321wSXbxf8ToTi0kxhbaNbnmU=;
 b=KkTdURXbcmeHkKp3JcOkAcr70IvL9+LrKYsj7bVnTA5nvdEMz6MGO92G
 LvR/WwXIxLCFGlKM3vUVNZ9e2wd9FHlJ8LwBLAwtY3SCZZDFVV3lcaFnH
 2WfXCG/UE0KGyJOipTuzP53dgikF8B5ctKj+xEX2fjsL3JNinvJ94qEy+
 2BoH55TKDAkCuxE3UQbH+B4aJCeCyOwjZBN0W0ZGQ4p27Q12C+j596cmy
 EAqaoHeYGeA5ARafVWuklIGIDg62ysCjrKbaFTKAG2mRFbYsxwd555bS2
 /bsHPU6DXOdv/1Le1F4gPB87thdF+qo+xE9xBSOkyMUCDKHs3mwJjvDwd g==;
X-IronPort-AV: E=McAfee;i="6600,9927,10700"; a="347986628"
X-IronPort-AV: E=Sophos;i="5.99,251,1677571200"; d="scan'208";a="347986628"
Received: from orsmga004.jf.intel.com ([10.7.209.38])
 by fmsmga104.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 05 May 2023 01:51:55 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10700"; a="821581293"
X-IronPort-AV: E=Sophos;i="5.99,251,1677571200"; d="scan'208";a="821581293"
Received: from jsanche3-mobl1.ger.corp.intel.com (HELO localhost)
 ([10.252.37.83])
 by orsmga004-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 05 May 2023 01:51:53 -0700
From: Jani Nikula <jani.nikula@linux.intel.com>
To: Ville =?utf-8?B?U3lyasOkbMOk?= <ville.syrjala@linux.intel.com>, Imre Deak
 <imre.deak@intel.com>
In-Reply-To: <ZFPG6lWkrkoHSSha@intel.com>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
References: <20230503231048.432368-1-imre.deak@intel.com>
 <20230503231048.432368-8-imre.deak@intel.com> <ZFPG6lWkrkoHSSha@intel.com>
Date: Fri, 05 May 2023 11:51:51 +0300
Message-ID: <871qjvyxco.fsf@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: quoted-printable
Subject: Re: [Intel-gfx] [PATCH v2 07/12] drm/i915/dp: Add link training
 debug and error printing helpers
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

On Thu, 04 May 2023, Ville Syrj=C3=A4l=C3=A4 <ville.syrjala@linux.intel.com=
> wrote:
> On Thu, May 04, 2023 at 02:10:43AM +0300, Imre Deak wrote:
>> Add functions for printing link training debug and error messages, both
>> to prepare for the next patch, which downgrades an error to a debug
>> message if the sink is disconnected and to remove some code duplication.
>>=20
>> v2: (Ville)
>> - Always print the connector prefix.
>> - Preserve the drm_dbg_kms() debug category.
>>=20
>> Cc: Ville Syrj=C3=A4l=C3=A4 <ville.syrjala@linux.intel.com>
>> Signed-off-by: Imre Deak <imre.deak@intel.com>
>
> While I don't really like the custom debug infrastructure I can't
> immediately see any really better way to do this.

To avoid any confusion, NAK on this patch.

For one thing, I'm firmly in the same camp with the custom debug
wrappers. I hate it that gem/gt has started adding their own wrappers,
and as you add one as an example, it just expands from there. We now
have tons. I think it's enough that we have *drm* specific wrappers.

That said, I could've lived with this one, as it's limited to within a
file (though I know that can change all too quickly if we're not
vigilant).

The reason for rejecting this altogether is in the
implementation. Having an extra function in there makes the function
name debugging in __drm_dev_dbg() (where all this leads to after the
onion has been peeled) result in:

<7>[   35.817968] i915 0000:00:02.0: [drm:lt_msg [i915]] [CONNECTOR:119:DP-=
2][ENCODER:118:DDI E/PHY E][DPRX] Using LINK_BW_SET value 0a
<7>[   35.818535] i915 0000:00:02.0: [drm:lt_msg [i915]] [CONNECTOR:119:DP-=
2][ENCODER:118:DDI E/PHY E][DPRX] 8b/10b, lanes: 2, vswing levels: 0/0/0/0,=
 pre-emphasis levels: 0/0/0/0
<7>[   35.818685] i915 0000:00:02.0: [drm:hsw_set_signal_levels [i915]] Usi=
ng signal levels 00000000
<7>[   35.818841] i915 0000:00:02.0: [drm:lt_msg [i915]] [CONNECTOR:119:DP-=
2][ENCODER:118:DDI E/PHY E][DPRX] Using DP training pattern TPS1
<7>[   35.819990] i915 0000:00:02.0: [drm:lt_msg [i915]] [CONNECTOR:119:DP-=
2][ENCODER:118:DDI E/PHY E][DPRX] Clock recovery OK
<7>[   35.820146] i915 0000:00:02.0: [drm:lt_msg [i915]] [CONNECTOR:119:DP-=
2][ENCODER:118:DDI E/PHY E][DPRX] Using DP training pattern TPS2
<7>[   35.821886] i915 0000:00:02.0: [drm:lt_msg [i915]] [CONNECTOR:119:DP-=
2][ENCODER:118:DDI E/PHY E][DPRX] Channel EQ done. DP Training successful
<7>[   35.822035] i915 0000:00:02.0: [drm:lt_msg [i915]] [CONNECTOR:119:DP-=
2][ENCODER:118:DDI E/PHY E][DPRX] Link Training passed at link rate =3D 270=
000, lane count =3D 2

And that's just useless.

I don't want it fixed with some __always_inline hack either.

Back to the drawing board, I'm afraid.


BR,
Jani.


>
> Reviewed-by: Ville Syrj=C3=A4l=C3=A4 <ville.syrjala@linux.intel.com>
>
>> ---
>>  .../drm/i915/display/intel_dp_link_training.c | 387 +++++++-----------
>>  1 file changed, 140 insertions(+), 247 deletions(-)
>>=20
>> diff --git a/drivers/gpu/drm/i915/display/intel_dp_link_training.c b/dri=
vers/gpu/drm/i915/display/intel_dp_link_training.c
>> index e92c62bcc9b85..f83944eaac128 100644
>> --- a/drivers/gpu/drm/i915/display/intel_dp_link_training.c
>> +++ b/drivers/gpu/drm/i915/display/intel_dp_link_training.c
>> @@ -26,6 +26,43 @@
>>  #include "intel_dp.h"
>>  #include "intel_dp_link_training.h"
>>=20=20
>> +__printf(4, 5)
>> +static void lt_msg(struct intel_dp *intel_dp, enum drm_dp_phy dp_phy,
>> +		   bool is_error, const char *format, ...)
>> +{
>> +	struct drm_i915_private *i915 =3D dp_to_i915(intel_dp);
>> +	struct intel_encoder *encoder =3D &dp_to_dig_port(intel_dp)->base;
>> +	struct intel_connector *connector =3D intel_dp->attached_connector;
>> +	struct va_format vaf;
>> +	va_list args;
>> +
>> +	if (drm_WARN_ON(&i915->drm, !connector))
>> +		return;
>> +
>> +	va_start(args, format);
>> +	vaf.fmt =3D format;
>> +	vaf.va =3D &args;
>> +
>> +	if (is_error)
>> +		drm_err(&i915->drm, "[CONNECTOR:%d:%s][ENCODER:%d:%s][%s] %pV\n",
>> +			connector->base.base.id, connector->base.name,
>> +			encoder->base.base.id, encoder->base.name,
>> +			drm_dp_phy_name(dp_phy),
>> +			&vaf);
>> +	else
>> +		drm_dbg_kms(&i915->drm, "[CONNECTOR:%d:%s][ENCODER:%d:%s][%s] %pV\n",
>> +			    connector->base.base.id, connector->base.name,
>> +			    encoder->base.base.id, encoder->base.name,
>> +			    drm_dp_phy_name(dp_phy),
>> +			    &vaf);
>> +}
>> +
>> +#define lt_err(intel_dp, dp_phy, format, ...) \
>> +	lt_msg(intel_dp, dp_phy, true, format, ## __VA_ARGS__)
>> +
>> +#define lt_dbg(intel_dp, dp_phy, format, ...) \
>> +	lt_msg(intel_dp, dp_phy, false, format, ## __VA_ARGS__)
>> +
>>  static void intel_dp_reset_lttpr_common_caps(struct intel_dp *intel_dp)
>>  {
>>  	memset(intel_dp->lttpr_common_caps, 0, sizeof(intel_dp->lttpr_common_c=
aps));
>> @@ -47,29 +84,21 @@ static void intel_dp_read_lttpr_phy_caps(struct inte=
l_dp *intel_dp,
>>  					 const u8 dpcd[DP_RECEIVER_CAP_SIZE],
>>  					 enum drm_dp_phy dp_phy)
>>  {
>> -	struct intel_encoder *encoder =3D &dp_to_dig_port(intel_dp)->base;
>>  	u8 *phy_caps =3D intel_dp_lttpr_phy_caps(intel_dp, dp_phy);
>>=20=20
>>  	if (drm_dp_read_lttpr_phy_caps(&intel_dp->aux, dpcd, dp_phy, phy_caps)=
 < 0) {
>> -		drm_dbg_kms(&dp_to_i915(intel_dp)->drm,
>> -			    "[ENCODER:%d:%s][%s] failed to read the PHY caps\n",
>> -			    encoder->base.base.id, encoder->base.name,
>> -			    drm_dp_phy_name(dp_phy));
>> +		lt_dbg(intel_dp, dp_phy, "failed to read the PHY caps\n");
>>  		return;
>>  	}
>>=20=20
>> -	drm_dbg_kms(&dp_to_i915(intel_dp)->drm,
>> -		    "[ENCODER:%d:%s][%s] PHY capabilities: %*ph\n",
>> -		    encoder->base.base.id, encoder->base.name,
>> -		    drm_dp_phy_name(dp_phy),
>> -		    (int)sizeof(intel_dp->lttpr_phy_caps[0]),
>> -		    phy_caps);
>> +	lt_dbg(intel_dp, dp_phy, "PHY capabilities: %*ph\n",
>> +	       (int)sizeof(intel_dp->lttpr_phy_caps[0]),
>> +	       phy_caps);
>>  }
>>=20=20
>>  static bool intel_dp_read_lttpr_common_caps(struct intel_dp *intel_dp,
>>  					    const u8 dpcd[DP_RECEIVER_CAP_SIZE])
>>  {
>> -	struct intel_encoder *encoder =3D &dp_to_dig_port(intel_dp)->base;
>>  	int ret;
>>=20=20
>>  	ret =3D drm_dp_read_lttpr_common_caps(&intel_dp->aux, dpcd,
>> @@ -77,11 +106,9 @@ static bool intel_dp_read_lttpr_common_caps(struct i=
ntel_dp *intel_dp,
>>  	if (ret < 0)
>>  		goto reset_caps;
>>=20=20
>> -	drm_dbg_kms(&dp_to_i915(intel_dp)->drm,
>> -		    "[ENCODER:%d:%s] LTTPR common capabilities: %*ph\n",
>> -		    encoder->base.base.id, encoder->base.name,
>> -		    (int)sizeof(intel_dp->lttpr_common_caps),
>> -		    intel_dp->lttpr_common_caps);
>> +	lt_dbg(intel_dp, DP_PHY_DPRX, "LTTPR common capabilities: %*ph\n",
>> +	       (int)sizeof(intel_dp->lttpr_common_caps),
>> +	       intel_dp->lttpr_common_caps);
>>=20=20
>>  	/* The minimum value of LT_TUNABLE_PHY_REPEATER_FIELD_DATA_STRUCTURE_R=
EV is 1.4 */
>>  	if (intel_dp->lttpr_common_caps[0] < 0x14)
>> @@ -105,8 +132,6 @@ intel_dp_set_lttpr_transparent_mode(struct intel_dp =
*intel_dp, bool enable)
>>=20=20
>>  static int intel_dp_init_lttpr(struct intel_dp *intel_dp, const u8 dpcd=
[DP_RECEIVER_CAP_SIZE])
>>  {
>> -	struct intel_encoder *encoder =3D &dp_to_dig_port(intel_dp)->base;
>> -	struct drm_i915_private *i915 =3D to_i915(encoder->base.dev);
>>  	int lttpr_count;
>>  	int i;
>>=20=20
>> @@ -138,9 +163,8 @@ static int intel_dp_init_lttpr(struct intel_dp *inte=
l_dp, const u8 dpcd[DP_RECEI
>>  		return 0;
>>=20=20
>>  	if (!intel_dp_set_lttpr_transparent_mode(intel_dp, false)) {
>> -		drm_dbg_kms(&i915->drm,
>> -			    "[ENCODER:%d:%s] Switching to LTTPR non-transparent LT mode fail=
ed, fall-back to transparent mode\n",
>> -			    encoder->base.base.id, encoder->base.name);
>> +		lt_dbg(intel_dp, DP_PHY_DPRX,
>> +		       "Switching to LTTPR non-transparent LT mode failed, fall-back =
to transparent mode\n");
>>=20=20
>>  		intel_dp_set_lttpr_transparent_mode(intel_dp, true);
>>  		intel_dp_reset_lttpr_count(intel_dp);
>> @@ -409,26 +433,22 @@ intel_dp_get_adjust_train(struct intel_dp *intel_d=
p,
>>  			  enum drm_dp_phy dp_phy,
>>  			  const u8 link_status[DP_LINK_STATUS_SIZE])
>>  {
>> -	struct intel_encoder *encoder =3D &dp_to_dig_port(intel_dp)->base;
>> -	struct drm_i915_private *i915 =3D to_i915(encoder->base.dev);
>>  	int lane;
>>=20=20
>>  	if (intel_dp_is_uhbr(crtc_state)) {
>> -		drm_dbg_kms(&i915->drm, "[ENCODER:%d:%s][%s] 128b/132b, lanes: %d, "
>> -			    "TX FFE request: " TRAIN_REQ_FMT "\n",
>> -			    encoder->base.base.id, encoder->base.name,
>> -			    drm_dp_phy_name(dp_phy),
>> -			    crtc_state->lane_count,
>> -			    TRAIN_REQ_TX_FFE_ARGS(link_status));
>> +		lt_dbg(intel_dp, dp_phy,
>> +		       "128b/132b, lanes: %d, "
>> +		       "TX FFE request: " TRAIN_REQ_FMT "\n",
>> +		       crtc_state->lane_count,
>> +		       TRAIN_REQ_TX_FFE_ARGS(link_status));
>>  	} else {
>> -		drm_dbg_kms(&i915->drm, "[ENCODER:%d:%s][%s] 8b/10b, lanes: %d, "
>> -			    "vswing request: " TRAIN_REQ_FMT ", "
>> -			    "pre-emphasis request: " TRAIN_REQ_FMT "\n",
>> -			    encoder->base.base.id, encoder->base.name,
>> -			    drm_dp_phy_name(dp_phy),
>> -			    crtc_state->lane_count,
>> -			    TRAIN_REQ_VSWING_ARGS(link_status),
>> -			    TRAIN_REQ_PREEMPH_ARGS(link_status));
>> +		lt_dbg(intel_dp, dp_phy,
>> +		       "8b/10b, lanes: %d, "
>> +		       "vswing request: " TRAIN_REQ_FMT ", "
>> +		       "pre-emphasis request: " TRAIN_REQ_FMT "\n",
>> +		       crtc_state->lane_count,
>> +		       TRAIN_REQ_VSWING_ARGS(link_status),
>> +		       TRAIN_REQ_PREEMPH_ARGS(link_status));
>>  	}
>>=20=20
>>  	for (lane =3D 0; lane < 4; lane++)
>> @@ -487,16 +507,11 @@ intel_dp_program_link_training_pattern(struct inte=
l_dp *intel_dp,
>>  				       enum drm_dp_phy dp_phy,
>>  				       u8 dp_train_pat)
>>  {
>> -	struct intel_encoder *encoder =3D &dp_to_dig_port(intel_dp)->base;
>> -	struct drm_i915_private *i915 =3D to_i915(encoder->base.dev);
>>  	u8 train_pat =3D intel_dp_training_pattern_symbol(dp_train_pat);
>>=20=20
>>  	if (train_pat !=3D DP_TRAINING_PATTERN_DISABLE)
>> -		drm_dbg_kms(&i915->drm,
>> -			    "[ENCODER:%d:%s][%s] Using DP training pattern TPS%c\n",
>> -			    encoder->base.base.id, encoder->base.name,
>> -			    drm_dp_phy_name(dp_phy),
>> -			    dp_training_pattern_name(train_pat));
>> +		lt_dbg(intel_dp, dp_phy, "Using DP training pattern TPS%c\n",
>> +		       dp_training_pattern_name(train_pat));
>>=20=20
>>  	intel_dp->set_link_train(intel_dp, crtc_state, dp_train_pat);
>>  }
>> @@ -531,24 +546,21 @@ void intel_dp_set_signal_levels(struct intel_dp *i=
ntel_dp,
>>  				enum drm_dp_phy dp_phy)
>>  {
>>  	struct intel_encoder *encoder =3D &dp_to_dig_port(intel_dp)->base;
>> -	struct drm_i915_private *i915 =3D to_i915(encoder->base.dev);
>>=20=20
>>  	if (intel_dp_is_uhbr(crtc_state)) {
>> -		drm_dbg_kms(&i915->drm, "[ENCODER:%d:%s][%s] 128b/132b, lanes: %d, "
>> -			    "TX FFE presets: " TRAIN_SET_FMT "\n",
>> -			    encoder->base.base.id, encoder->base.name,
>> -			    drm_dp_phy_name(dp_phy),
>> -			    crtc_state->lane_count,
>> -			    TRAIN_SET_TX_FFE_ARGS(intel_dp->train_set));
>> +		lt_dbg(intel_dp, dp_phy,
>> +		       "128b/132b, lanes: %d, "
>> +		       "TX FFE presets: " TRAIN_SET_FMT "\n",
>> +		       crtc_state->lane_count,
>> +		       TRAIN_SET_TX_FFE_ARGS(intel_dp->train_set));
>>  	} else {
>> -		drm_dbg_kms(&i915->drm, "[ENCODER:%d:%s][%s] 8b/10b, lanes: %d, "
>> -			    "vswing levels: " TRAIN_SET_FMT ", "
>> -			    "pre-emphasis levels: " TRAIN_SET_FMT "\n",
>> -			    encoder->base.base.id, encoder->base.name,
>> -			    drm_dp_phy_name(dp_phy),
>> -			    crtc_state->lane_count,
>> -			    TRAIN_SET_VSWING_ARGS(intel_dp->train_set),
>> -			    TRAIN_SET_PREEMPH_ARGS(intel_dp->train_set));
>> +		lt_dbg(intel_dp, dp_phy,
>> +		       "8b/10b, lanes: %d, "
>> +		       "vswing levels: " TRAIN_SET_FMT ", "
>> +		       "pre-emphasis levels: " TRAIN_SET_FMT "\n",
>> +		       crtc_state->lane_count,
>> +		       TRAIN_SET_VSWING_ARGS(intel_dp->train_set),
>> +		       TRAIN_SET_PREEMPH_ARGS(intel_dp->train_set));
>>  	}
>>=20=20
>>  	if (intel_dp_phy_is_downstream_of_source(intel_dp, dp_phy))
>> @@ -677,8 +689,6 @@ static bool
>>  intel_dp_prepare_link_train(struct intel_dp *intel_dp,
>>  			    const struct intel_crtc_state *crtc_state)
>>  {
>> -	struct intel_encoder *encoder =3D &dp_to_dig_port(intel_dp)->base;
>> -	struct drm_i915_private *i915 =3D to_i915(encoder->base.dev);
>>  	u8 link_bw, rate_select;
>>=20=20
>>  	if (intel_dp->prepare_link_retrain)
>> @@ -699,24 +709,21 @@ intel_dp_prepare_link_train(struct intel_dp *intel=
_dp,
>>  	 * link rates are not stable.
>>  	 */
>>  	if (!link_bw) {
>> -		struct intel_connector *connector =3D intel_dp->attached_connector;
>>  		__le16 sink_rates[DP_MAX_SUPPORTED_RATES];
>>=20=20
>> -		drm_dbg_kms(&i915->drm, "[CONNECTOR:%d:%s] Reloading eDP link rates\n=
",
>> -			    connector->base.base.id, connector->base.name);
>> +		lt_dbg(intel_dp, DP_PHY_DPRX, "Reloading eDP link rates\n");
>>=20=20
>>  		drm_dp_dpcd_read(&intel_dp->aux, DP_SUPPORTED_LINK_RATES,
>>  				 sink_rates, sizeof(sink_rates));
>>  	}
>>=20=20
>>  	if (link_bw)
>> -		drm_dbg_kms(&i915->drm,
>> -			    "[ENCODER:%d:%s] Using LINK_BW_SET value %02x\n",
>> -			    encoder->base.base.id, encoder->base.name, link_bw);
>> +		lt_dbg(intel_dp, DP_PHY_DPRX, "Using LINK_BW_SET value %02x\n",
>> +		       link_bw);
>>  	else
>> -		drm_dbg_kms(&i915->drm,
>> -			    "[ENCODER:%d:%s] Using LINK_RATE_SET value %02x\n",
>> -			    encoder->base.base.id, encoder->base.name, rate_select);
>> +		lt_dbg(intel_dp, DP_PHY_DPRX,
>> +			    "Using LINK_RATE_SET value %02x\n",
>> +			    rate_select);
>>  	/*
>>  	 * Spec DP2.1 Section 3.5.2.16
>>  	 * Prior to LT DPTX should set 128b/132b DP Channel coding and then se=
t link rate
>> @@ -758,15 +765,10 @@ void
>>  intel_dp_dump_link_status(struct intel_dp *intel_dp, enum drm_dp_phy dp=
_phy,
>>  			  const u8 link_status[DP_LINK_STATUS_SIZE])
>>  {
>> -	struct intel_encoder *encoder =3D &dp_to_dig_port(intel_dp)->base;
>> -	struct drm_i915_private *i915 =3D to_i915(encoder->base.dev);
>> -
>> -	drm_dbg_kms(&i915->drm,
>> -		    "[ENCODER:%d:%s][%s] ln0_1:0x%x ln2_3:0x%x align:0x%x sink:0x%x a=
dj_req0_1:0x%x adj_req2_3:0x%x\n",
>> -		    encoder->base.base.id, encoder->base.name,
>> -		    drm_dp_phy_name(dp_phy),
>> -		    link_status[0], link_status[1], link_status[2],
>> -		    link_status[3], link_status[4], link_status[5]);
>> +	lt_dbg(intel_dp, dp_phy,
>> +	       "ln0_1:0x%x ln2_3:0x%x align:0x%x sink:0x%x adj_req0_1:0x%x adj=
_req2_3:0x%x\n",
>> +	       link_status[0], link_status[1], link_status[2],
>> +	       link_status[3], link_status[4], link_status[5]);
>>  }
>>=20=20
>>  /*
>> @@ -778,8 +780,6 @@ intel_dp_link_training_clock_recovery(struct intel_d=
p *intel_dp,
>>  				      const struct intel_crtc_state *crtc_state,
>>  				      enum drm_dp_phy dp_phy)
>>  {
>> -	struct intel_encoder *encoder =3D &dp_to_dig_port(intel_dp)->base;
>> -	struct drm_i915_private *i915 =3D to_i915(encoder->base.dev);
>>  	u8 old_link_status[DP_LINK_STATUS_SIZE] =3D {};
>>  	int voltage_tries, cr_tries, max_cr_tries;
>>  	u8 link_status[DP_LINK_STATUS_SIZE];
>> @@ -794,9 +794,7 @@ intel_dp_link_training_clock_recovery(struct intel_d=
p *intel_dp,
>>  	if (!intel_dp_reset_link_train(intel_dp, crtc_state, dp_phy,
>>  				       DP_TRAINING_PATTERN_1 |
>>  				       DP_LINK_SCRAMBLING_DISABLE)) {
>> -		drm_err(&i915->drm, "[ENCODER:%d:%s][%s] Failed to enable link traini=
ng\n",
>> -			encoder->base.base.id, encoder->base.name,
>> -			drm_dp_phy_name(dp_phy));
>> +		lt_err(intel_dp, dp_phy, "Failed to enable link training\n");
>>  		return false;
>>  	}
>>=20=20
>> @@ -819,35 +817,24 @@ intel_dp_link_training_clock_recovery(struct intel=
_dp *intel_dp,
>>=20=20
>>  		if (drm_dp_dpcd_read_phy_link_status(&intel_dp->aux, dp_phy,
>>  						     link_status) < 0) {
>> -			drm_err(&i915->drm, "[ENCODER:%d:%s][%s] Failed to get link status\n=
",
>> -				encoder->base.base.id, encoder->base.name,
>> -				drm_dp_phy_name(dp_phy));
>> +			lt_err(intel_dp, dp_phy, "Failed to get link status\n");
>>  			return false;
>>  		}
>>=20=20
>>  		if (drm_dp_clock_recovery_ok(link_status, crtc_state->lane_count)) {
>> -			drm_dbg_kms(&i915->drm,
>> -				    "[ENCODER:%d:%s][%s] Clock recovery OK\n",
>> -				    encoder->base.base.id, encoder->base.name,
>> -				    drm_dp_phy_name(dp_phy));
>> +			lt_dbg(intel_dp, dp_phy, "Clock recovery OK\n");
>>  			return true;
>>  		}
>>=20=20
>>  		if (voltage_tries =3D=3D 5) {
>>  			intel_dp_dump_link_status(intel_dp, dp_phy, link_status);
>> -			drm_dbg_kms(&i915->drm,
>> -				    "[ENCODER:%d:%s][%s] Same voltage tried 5 times\n",
>> -				    encoder->base.base.id, encoder->base.name,
>> -				    drm_dp_phy_name(dp_phy));
>> +			lt_dbg(intel_dp, dp_phy, "Same voltage tried 5 times\n");
>>  			return false;
>>  		}
>>=20=20
>>  		if (max_vswing_reached) {
>>  			intel_dp_dump_link_status(intel_dp, dp_phy, link_status);
>> -			drm_dbg_kms(&i915->drm,
>> -				    "[ENCODER:%d:%s][%s] Max Voltage Swing reached\n",
>> -				    encoder->base.base.id, encoder->base.name,
>> -				    drm_dp_phy_name(dp_phy));
>> +			lt_dbg(intel_dp, dp_phy, "Max Voltage Swing reached\n");
>>  			return false;
>>  		}
>>=20=20
>> @@ -855,10 +842,7 @@ intel_dp_link_training_clock_recovery(struct intel_=
dp *intel_dp,
>>  		intel_dp_get_adjust_train(intel_dp, crtc_state, dp_phy,
>>  					  link_status);
>>  		if (!intel_dp_update_link_train(intel_dp, crtc_state, dp_phy)) {
>> -			drm_err(&i915->drm,
>> -				"[ENCODER:%d:%s][%s] Failed to update link training\n",
>> -				encoder->base.base.id, encoder->base.name,
>> -				drm_dp_phy_name(dp_phy));
>> +			lt_err(intel_dp, dp_phy, "Failed to update link training\n");
>>  			return false;
>>  		}
>>=20=20
>> @@ -874,10 +858,8 @@ intel_dp_link_training_clock_recovery(struct intel_=
dp *intel_dp,
>>  	}
>>=20=20
>>  	intel_dp_dump_link_status(intel_dp, dp_phy, link_status);
>> -	drm_err(&i915->drm,
>> -		"[ENCODER:%d:%s][%s] Failed clock recovery %d times, giving up!\n",
>> -		encoder->base.base.id, encoder->base.name,
>> -		drm_dp_phy_name(dp_phy), max_cr_tries);
>> +	lt_err(intel_dp, dp_phy, "Failed clock recovery %d times, giving up!\n=
",
>> +	       max_cr_tries);
>>=20=20
>>  	return false;
>>  }
>> @@ -911,11 +893,11 @@ static u32 intel_dp_training_pattern(struct intel_=
dp *intel_dp,
>>  		return DP_TRAINING_PATTERN_4;
>>  	} else if (crtc_state->port_clock =3D=3D 810000) {
>>  		if (!source_tps4)
>> -			drm_dbg_kms(&i915->drm,
>> -				    "8.1 Gbps link rate without source TPS4 support\n");
>> +			lt_dbg(intel_dp, dp_phy,
>> +			       "8.1 Gbps link rate without source TPS4 support\n");
>>  		if (!sink_tps4)
>> -			drm_dbg_kms(&i915->drm,
>> -				    "8.1 Gbps link rate without sink TPS4 support\n");
>> +			lt_dbg(intel_dp, dp_phy,
>> +			       "8.1 Gbps link rate without sink TPS4 support\n");
>>  	}
>>=20=20
>>  	/*
>> @@ -929,11 +911,11 @@ static u32 intel_dp_training_pattern(struct intel_=
dp *intel_dp,
>>  		return  DP_TRAINING_PATTERN_3;
>>  	} else if (crtc_state->port_clock >=3D 540000) {
>>  		if (!source_tps3)
>> -			drm_dbg_kms(&i915->drm,
>> -				    ">=3D5.4/6.48 Gbps link rate without source TPS3 support\n");
>> +			lt_dbg(intel_dp, dp_phy,
>> +			       ">=3D5.4/6.48 Gbps link rate without source TPS3 support\n");
>>  		if (!sink_tps3)
>> -			drm_dbg_kms(&i915->drm,
>> -				    ">=3D5.4/6.48 Gbps link rate without sink TPS3 support\n");
>> +			lt_dbg(intel_dp, dp_phy,
>> +			       ">=3D5.4/6.48 Gbps link rate without sink TPS3 support\n");
>>  	}
>>=20=20
>>  	return DP_TRAINING_PATTERN_2;
>> @@ -949,8 +931,6 @@ intel_dp_link_training_channel_equalization(struct i=
ntel_dp *intel_dp,
>>  					    const struct intel_crtc_state *crtc_state,
>>  					    enum drm_dp_phy dp_phy)
>>  {
>> -	struct intel_encoder *encoder =3D &dp_to_dig_port(intel_dp)->base;
>> -	struct drm_i915_private *i915 =3D to_i915(encoder->base.dev);
>>  	int tries;
>>  	u32 training_pattern;
>>  	u8 link_status[DP_LINK_STATUS_SIZE];
>> @@ -969,10 +949,7 @@ intel_dp_link_training_channel_equalization(struct =
intel_dp *intel_dp,
>>  	/* channel equalization */
>>  	if (!intel_dp_set_link_train(intel_dp, crtc_state, dp_phy,
>>  				     training_pattern)) {
>> -		drm_err(&i915->drm,
>> -			"[ENCODER:%d:%s][%s] Failed to start channel equalization\n",
>> -			encoder->base.base.id, encoder->base.name,
>> -			drm_dp_phy_name(dp_phy));
>> +		lt_err(intel_dp, dp_phy, "Failed to start channel equalization\n");
>>  		return false;
>>  	}
>>=20=20
>> @@ -981,10 +958,7 @@ intel_dp_link_training_channel_equalization(struct =
intel_dp *intel_dp,
>>=20=20
>>  		if (drm_dp_dpcd_read_phy_link_status(&intel_dp->aux, dp_phy,
>>  						     link_status) < 0) {
>> -			drm_err(&i915->drm,
>> -				"[ENCODER:%d:%s][%s] Failed to get link status\n",
>> -				encoder->base.base.id, encoder->base.name,
>> -				drm_dp_phy_name(dp_phy));
>> +			lt_err(intel_dp, dp_phy, "Failed to get link status\n");
>>  			break;
>>  		}
>>=20=20
>> @@ -992,21 +966,15 @@ intel_dp_link_training_channel_equalization(struct=
 intel_dp *intel_dp,
>>  		if (!drm_dp_clock_recovery_ok(link_status,
>>  					      crtc_state->lane_count)) {
>>  			intel_dp_dump_link_status(intel_dp, dp_phy, link_status);
>> -			drm_dbg_kms(&i915->drm,
>> -				    "[ENCODER:%d:%s][%s] Clock recovery check failed, cannot "
>> -				    "continue channel equalization\n",
>> -				    encoder->base.base.id, encoder->base.name,
>> -				    drm_dp_phy_name(dp_phy));
>> +			lt_dbg(intel_dp, dp_phy,
>> +			       "Clock recovery check failed, cannot continue channel equaliz=
ation\n");
>>  			break;
>>  		}
>>=20=20
>>  		if (drm_dp_channel_eq_ok(link_status,
>>  					 crtc_state->lane_count)) {
>>  			channel_eq =3D true;
>> -			drm_dbg_kms(&i915->drm,
>> -				    "[ENCODER:%d:%s][%s] Channel EQ done. DP Training successful\n",
>> -				    encoder->base.base.id, encoder->base.name,
>> -				    drm_dp_phy_name(dp_phy));
>> +			lt_dbg(intel_dp, dp_phy, "Channel EQ done. DP Training successful\n"=
);
>>  			break;
>>  		}
>>=20=20
>> @@ -1014,10 +982,7 @@ intel_dp_link_training_channel_equalization(struct=
 intel_dp *intel_dp,
>>  		intel_dp_get_adjust_train(intel_dp, crtc_state, dp_phy,
>>  					  link_status);
>>  		if (!intel_dp_update_link_train(intel_dp, crtc_state, dp_phy)) {
>> -			drm_err(&i915->drm,
>> -				"[ENCODER:%d:%s][%s] Failed to update link training\n",
>> -				encoder->base.base.id, encoder->base.name,
>> -				drm_dp_phy_name(dp_phy));
>> +			lt_err(intel_dp, dp_phy, "Failed to update link training\n");
>>  			break;
>>  		}
>>  	}
>> @@ -1025,10 +990,7 @@ intel_dp_link_training_channel_equalization(struct=
 intel_dp *intel_dp,
>>  	/* Try 5 times, else fail and try at lower BW */
>>  	if (tries =3D=3D 5) {
>>  		intel_dp_dump_link_status(intel_dp, dp_phy, link_status);
>> -		drm_dbg_kms(&i915->drm,
>> -			    "[ENCODER:%d:%s][%s] Channel equalization failed 5 times\n",
>> -			    encoder->base.base.id, encoder->base.name,
>> -			    drm_dp_phy_name(dp_phy));
>> +		lt_dbg(intel_dp, dp_phy, "Channel equalization failed 5 times\n");
>>  	}
>>=20=20
>>  	return channel_eq;
>> @@ -1047,13 +1009,12 @@ static int
>>  intel_dp_128b132b_intra_hop(struct intel_dp *intel_dp,
>>  			    const struct intel_crtc_state *crtc_state)
>>  {
>> -	struct drm_i915_private *i915 =3D dp_to_i915(intel_dp);
>>  	u8 sink_status;
>>  	int ret;
>>=20=20
>>  	ret =3D drm_dp_dpcd_readb(&intel_dp->aux, DP_SINK_STATUS, &sink_status=
);
>>  	if (ret !=3D 1) {
>> -		drm_dbg_kms(&i915->drm, "Failed to read sink status\n");
>> +		lt_dbg(intel_dp, DP_PHY_DPRX, "Failed to read sink status\n");
>>  		return ret < 0 ? ret : -EIO;
>>  	}
>>=20=20
>> @@ -1079,9 +1040,6 @@ intel_dp_128b132b_intra_hop(struct intel_dp *intel=
_dp,
>>  void intel_dp_stop_link_train(struct intel_dp *intel_dp,
>>  			      const struct intel_crtc_state *crtc_state)
>>  {
>> -	struct drm_i915_private *i915 =3D dp_to_i915(intel_dp);
>> -	struct intel_encoder *encoder =3D &dp_to_dig_port(intel_dp)->base;
>> -
>>  	intel_dp->link_trained =3D true;
>>=20=20
>>  	intel_dp_disable_dpcd_training_pattern(intel_dp, DP_PHY_DPRX);
>> @@ -1090,9 +1048,7 @@ void intel_dp_stop_link_train(struct intel_dp *int=
el_dp,
>>=20=20
>>  	if (intel_dp_is_uhbr(crtc_state) &&
>>  	    wait_for(intel_dp_128b132b_intra_hop(intel_dp, crtc_state) =3D=3D =
0, 500)) {
>> -		drm_dbg_kms(&i915->drm,
>> -			    "[ENCODER:%d:%s] 128b/132b intra-hop not clearing\n",
>> -			    encoder->base.base.id, encoder->base.name);
>> +		lt_dbg(intel_dp, DP_PHY_DPRX, "128b/132b intra-hop not clearing\n");
>>  	}
>>  }
>>=20=20
>> @@ -1101,8 +1057,6 @@ intel_dp_link_train_phy(struct intel_dp *intel_dp,
>>  			const struct intel_crtc_state *crtc_state,
>>  			enum drm_dp_phy dp_phy)
>>  {
>> -	struct intel_connector *connector =3D intel_dp->attached_connector;
>> -	struct intel_encoder *encoder =3D &dp_to_dig_port(intel_dp)->base;
>>  	bool ret =3D false;
>>=20=20
>>  	if (!intel_dp_link_training_clock_recovery(intel_dp, crtc_state, dp_ph=
y))
>> @@ -1114,13 +1068,10 @@ intel_dp_link_train_phy(struct intel_dp *intel_d=
p,
>>  	ret =3D true;
>>=20=20
>>  out:
>> -	drm_dbg_kms(&dp_to_i915(intel_dp)->drm,
>> -		    "[CONNECTOR:%d:%s][ENCODER:%d:%s][%s] Link Training %s at link ra=
te =3D %d, lane count =3D %d\n",
>> -		    connector->base.base.id, connector->base.name,
>> -		    encoder->base.base.id, encoder->base.name,
>> -		    drm_dp_phy_name(dp_phy),
>> -		    ret ? "passed" : "failed",
>> -		    crtc_state->port_clock, crtc_state->lane_count);
>> +	lt_dbg(intel_dp, dp_phy,
>> +	       "Link Training %s at link rate =3D %d, lane count =3D %d\n",
>> +	       ret ? "passed" : "failed",
>> +	       crtc_state->port_clock, crtc_state->lane_count);
>>=20=20
>>  	return ret;
>>  }
>> @@ -1129,13 +1080,10 @@ static void intel_dp_schedule_fallback_link_trai=
ning(struct intel_dp *intel_dp,
>>  						     const struct intel_crtc_state *crtc_state)
>>  {
>>  	struct intel_connector *intel_connector =3D intel_dp->attached_connect=
or;
>> -	struct intel_encoder *encoder =3D &dp_to_dig_port(intel_dp)->base;
>>=20=20
>>  	if (intel_dp->hobl_active) {
>> -		drm_dbg_kms(&dp_to_i915(intel_dp)->drm,
>> -			    "[ENCODER:%d:%s] Link Training failed with HOBL active, "
>> -			    "not enabling it from now on",
>> -			    encoder->base.base.id, encoder->base.name);
>> +		lt_dbg(intel_dp, DP_PHY_DPRX,
>> +		       "Link Training failed with HOBL active, not enabling it from n=
ow on\n");
>>  		intel_dp->hobl_failed =3D true;
>>  	} else if (intel_dp_get_link_train_fallback_values(intel_dp,
>>  							   crtc_state->port_clock,
>> @@ -1182,8 +1130,6 @@ static bool
>>  intel_dp_128b132b_lane_eq(struct intel_dp *intel_dp,
>>  			  const struct intel_crtc_state *crtc_state)
>>  {
>> -	struct intel_encoder *encoder =3D &dp_to_dig_port(intel_dp)->base;
>> -	struct drm_i915_private *i915 =3D to_i915(encoder->base.dev);
>>  	u8 link_status[DP_LINK_STATUS_SIZE];
>>  	int delay_us;
>>  	int try, max_tries =3D 20;
>> @@ -1198,9 +1144,7 @@ intel_dp_128b132b_lane_eq(struct intel_dp *intel_d=
p,
>>  	 */
>>  	if (!intel_dp_reset_link_train(intel_dp, crtc_state, DP_PHY_DPRX,
>>  				       DP_TRAINING_PATTERN_1)) {
>> -		drm_err(&i915->drm,
>> -			"[ENCODER:%d:%s] Failed to start 128b/132b TPS1\n",
>> -			encoder->base.base.id, encoder->base.name);
>> +		lt_err(intel_dp, DP_PHY_DPRX, "Failed to start 128b/132b TPS1\n");
>>  		return false;
>>  	}
>>=20=20
>> @@ -1208,27 +1152,21 @@ intel_dp_128b132b_lane_eq(struct intel_dp *intel=
_dp,
>>=20=20
>>  	/* Read the initial TX FFE settings. */
>>  	if (drm_dp_dpcd_read_link_status(&intel_dp->aux, link_status) < 0) {
>> -		drm_err(&i915->drm,
>> -			"[ENCODER:%d:%s] Failed to read TX FFE presets\n",
>> -			encoder->base.base.id, encoder->base.name);
>> +		lt_err(intel_dp, DP_PHY_DPRX, "Failed to read TX FFE presets\n");
>>  		return false;
>>  	}
>>=20=20
>>  	/* Update signal levels and training set as requested. */
>>  	intel_dp_get_adjust_train(intel_dp, crtc_state, DP_PHY_DPRX, link_stat=
us);
>>  	if (!intel_dp_update_link_train(intel_dp, crtc_state, DP_PHY_DPRX)) {
>> -		drm_err(&i915->drm,
>> -			"[ENCODER:%d:%s] Failed to set initial TX FFE settings\n",
>> -			encoder->base.base.id, encoder->base.name);
>> +		lt_err(intel_dp, DP_PHY_DPRX, "Failed to set initial TX FFE settings\=
n");
>>  		return false;
>>  	}
>>=20=20
>>  	/* Start transmitting 128b/132b TPS2. */
>>  	if (!intel_dp_set_link_train(intel_dp, crtc_state, DP_PHY_DPRX,
>>  				     DP_TRAINING_PATTERN_2)) {
>> -		drm_err(&i915->drm,
>> -			"[ENCODER:%d:%s] Failed to start 128b/132b TPS2\n",
>> -			encoder->base.base.id, encoder->base.name);
>> +		lt_err(intel_dp, DP_PHY_DPRX, "Failed to start 128b/132b TPS2\n");
>>  		return false;
>>  	}
>>=20=20
>> @@ -1245,32 +1183,25 @@ intel_dp_128b132b_lane_eq(struct intel_dp *intel=
_dp,
>>  		delay_us =3D drm_dp_128b132b_read_aux_rd_interval(&intel_dp->aux);
>>=20=20
>>  		if (drm_dp_dpcd_read_link_status(&intel_dp->aux, link_status) < 0) {
>> -			drm_err(&i915->drm,
>> -				"[ENCODER:%d:%s] Failed to read link status\n",
>> -				encoder->base.base.id, encoder->base.name);
>> +			lt_err(intel_dp, DP_PHY_DPRX, "Failed to read link status\n");
>>  			return false;
>>  		}
>>=20=20
>>  		if (drm_dp_128b132b_link_training_failed(link_status)) {
>>  			intel_dp_dump_link_status(intel_dp, DP_PHY_DPRX, link_status);
>> -			drm_err(&i915->drm,
>> -				"[ENCODER:%d:%s] Downstream link training failure\n",
>> -				encoder->base.base.id, encoder->base.name);
>> +			lt_err(intel_dp, DP_PHY_DPRX,
>> +			       "Downstream link training failure\n");
>>  			return false;
>>  		}
>>=20=20
>>  		if (drm_dp_128b132b_lane_channel_eq_done(link_status, crtc_state->lan=
e_count)) {
>> -			drm_dbg_kms(&i915->drm,
>> -				    "[ENCODER:%d:%s] Lane channel eq done\n",
>> -				    encoder->base.base.id, encoder->base.name);
>> +			lt_dbg(intel_dp, DP_PHY_DPRX, "Lane channel eq done\n");
>>  			break;
>>  		}
>>=20=20
>>  		if (timeout) {
>>  			intel_dp_dump_link_status(intel_dp, DP_PHY_DPRX, link_status);
>> -			drm_err(&i915->drm,
>> -				"[ENCODER:%d:%s] Lane channel eq timeout\n",
>> -				encoder->base.base.id, encoder->base.name);
>> +			lt_err(intel_dp, DP_PHY_DPRX, "Lane channel eq timeout\n");
>>  			return false;
>>  		}
>>=20=20
>> @@ -1280,18 +1211,14 @@ intel_dp_128b132b_lane_eq(struct intel_dp *intel=
_dp,
>>  		/* Update signal levels and training set as requested. */
>>  		intel_dp_get_adjust_train(intel_dp, crtc_state, DP_PHY_DPRX, link_sta=
tus);
>>  		if (!intel_dp_update_link_train(intel_dp, crtc_state, DP_PHY_DPRX)) {
>> -			drm_err(&i915->drm,
>> -				"[ENCODER:%d:%s] Failed to update TX FFE settings\n",
>> -				encoder->base.base.id, encoder->base.name);
>> +			lt_err(intel_dp, DP_PHY_DPRX, "Failed to update TX FFE settings\n");
>>  			return false;
>>  		}
>>  	}
>>=20=20
>>  	if (try =3D=3D max_tries) {
>>  		intel_dp_dump_link_status(intel_dp, DP_PHY_DPRX, link_status);
>> -		drm_err(&i915->drm,
>> -			"[ENCODER:%d:%s] Max loop count reached\n",
>> -			encoder->base.base.id, encoder->base.name);
>> +		lt_err(intel_dp, DP_PHY_DPRX, "Max loop count reached\n");
>>  		return false;
>>  	}
>>=20=20
>> @@ -1300,32 +1227,24 @@ intel_dp_128b132b_lane_eq(struct intel_dp *intel=
_dp,
>>  			timeout =3D true; /* try one last time after deadline */
>>=20=20
>>  		if (drm_dp_dpcd_read_link_status(&intel_dp->aux, link_status) < 0) {
>> -			drm_err(&i915->drm,
>> -				"[ENCODER:%d:%s] Failed to read link status\n",
>> -				encoder->base.base.id, encoder->base.name);
>> +			lt_err(intel_dp, DP_PHY_DPRX, "Failed to read link status\n");
>>  			return false;
>>  		}
>>=20=20
>>  		if (drm_dp_128b132b_link_training_failed(link_status)) {
>>  			intel_dp_dump_link_status(intel_dp, DP_PHY_DPRX, link_status);
>> -			drm_err(&i915->drm,
>> -				"[ENCODER:%d:%s] Downstream link training failure\n",
>> -				encoder->base.base.id, encoder->base.name);
>> +			lt_err(intel_dp, DP_PHY_DPRX, "Downstream link training failure\n");
>>  			return false;
>>  		}
>>=20=20
>>  		if (drm_dp_128b132b_eq_interlane_align_done(link_status)) {
>> -			drm_dbg_kms(&i915->drm,
>> -				    "[ENCODER:%d:%s] Interlane align done\n",
>> -				    encoder->base.base.id, encoder->base.name);
>> +			lt_dbg(intel_dp, DP_PHY_DPRX, "Interlane align done\n");
>>  			break;
>>  		}
>>=20=20
>>  		if (timeout) {
>>  			intel_dp_dump_link_status(intel_dp, DP_PHY_DPRX, link_status);
>> -			drm_err(&i915->drm,
>> -				"[ENCODER:%d:%s] Interlane align timeout\n",
>> -				encoder->base.base.id, encoder->base.name);
>> +			lt_err(intel_dp, DP_PHY_DPRX, "Interlane align timeout\n");
>>  			return false;
>>  		}
>>=20=20
>> @@ -1343,16 +1262,12 @@ intel_dp_128b132b_lane_cds(struct intel_dp *inte=
l_dp,
>>  			   const struct intel_crtc_state *crtc_state,
>>  			   int lttpr_count)
>>  {
>> -	struct intel_encoder *encoder =3D &dp_to_dig_port(intel_dp)->base;
>> -	struct drm_i915_private *i915 =3D to_i915(encoder->base.dev);
>>  	u8 link_status[DP_LINK_STATUS_SIZE];
>>  	unsigned long deadline;
>>=20=20
>>  	if (drm_dp_dpcd_writeb(&intel_dp->aux, DP_TRAINING_PATTERN_SET,
>>  			       DP_TRAINING_PATTERN_2_CDS) !=3D 1) {
>> -		drm_err(&i915->drm,
>> -			"[ENCODER:%d:%s] Failed to start 128b/132b TPS2 CDS\n",
>> -			encoder->base.base.id, encoder->base.name);
>> +		lt_err(intel_dp, DP_PHY_DPRX, "Failed to start 128b/132b TPS2 CDS\n");
>>  		return false;
>>  	}
>>=20=20
>> @@ -1368,34 +1283,26 @@ intel_dp_128b132b_lane_cds(struct intel_dp *inte=
l_dp,
>>  		usleep_range(2000, 3000);
>>=20=20
>>  		if (drm_dp_dpcd_read_link_status(&intel_dp->aux, link_status) < 0) {
>> -			drm_err(&i915->drm,
>> -				"[ENCODER:%d:%s] Failed to read link status\n",
>> -				encoder->base.base.id, encoder->base.name);
>> +			lt_err(intel_dp, DP_PHY_DPRX, "Failed to read link status\n");
>>  			return false;
>>  		}
>>=20=20
>>  		if (drm_dp_128b132b_eq_interlane_align_done(link_status) &&
>>  		    drm_dp_128b132b_cds_interlane_align_done(link_status) &&
>>  		    drm_dp_128b132b_lane_symbol_locked(link_status, crtc_state->lane_=
count)) {
>> -			drm_dbg_kms(&i915->drm,
>> -				    "[ENCODER:%d:%s] CDS interlane align done\n",
>> -				    encoder->base.base.id, encoder->base.name);
>> +			lt_err(intel_dp, DP_PHY_DPRX, "CDS interlane align done\n");
>>  			break;
>>  		}
>>=20=20
>>  		if (drm_dp_128b132b_link_training_failed(link_status)) {
>>  			intel_dp_dump_link_status(intel_dp, DP_PHY_DPRX, link_status);
>> -			drm_err(&i915->drm,
>> -				"[ENCODER:%d:%s] Downstream link training failure\n",
>> -				encoder->base.base.id, encoder->base.name);
>> +			lt_err(intel_dp, DP_PHY_DPRX, "Downstream link training failure\n");
>>  			return false;
>>  		}
>>=20=20
>>  		if (timeout) {
>>  			intel_dp_dump_link_status(intel_dp, DP_PHY_DPRX, link_status);
>> -			drm_err(&i915->drm,
>> -				"[ENCODER:%d:%s] CDS timeout\n",
>> -				encoder->base.base.id, encoder->base.name);
>> +			lt_err(intel_dp, DP_PHY_DPRX, "CDS timeout\n");
>>  			return false;
>>  		}
>>  	}
>> @@ -1411,15 +1318,10 @@ intel_dp_128b132b_link_train(struct intel_dp *in=
tel_dp,
>>  			     const struct intel_crtc_state *crtc_state,
>>  			     int lttpr_count)
>>  {
>> -	struct drm_i915_private *i915 =3D dp_to_i915(intel_dp);
>> -	struct intel_connector *connector =3D intel_dp->attached_connector;
>> -	struct intel_encoder *encoder =3D &dp_to_dig_port(intel_dp)->base;
>>  	bool passed =3D false;
>>=20=20
>>  	if (wait_for(intel_dp_128b132b_intra_hop(intel_dp, crtc_state) =3D=3D =
0, 500)) {
>> -		drm_err(&i915->drm,
>> -			"[ENCODER:%d:%s] 128b/132b intra-hop not clear\n",
>> -			encoder->base.base.id, encoder->base.name);
>> +		lt_err(intel_dp, DP_PHY_DPRX, "128b/132b intra-hop not clear\n");
>>  		return false;
>>  	}
>>=20=20
>> @@ -1427,12 +1329,10 @@ intel_dp_128b132b_link_train(struct intel_dp *in=
tel_dp,
>>  	    intel_dp_128b132b_lane_cds(intel_dp, crtc_state, lttpr_count))
>>  		passed =3D true;
>>=20=20
>> -	drm_dbg_kms(&i915->drm,
>> -		    "[CONNECTOR:%d:%s][ENCODER:%d:%s] 128b/132b Link Training %s at l=
ink rate =3D %d, lane count =3D %d\n",
>> -		    connector->base.base.id, connector->base.name,
>> -		    encoder->base.base.id, encoder->base.name,
>> -		    passed ? "passed" : "failed",
>> -		    crtc_state->port_clock, crtc_state->lane_count);
>> +	lt_dbg(intel_dp, DP_PHY_DPRX,
>> +	       "128b/132b Link Training %s at link rate =3D %d, lane count =3D=
 %d\n",
>> +	       passed ? "passed" : "failed",
>> +	       crtc_state->port_clock, crtc_state->lane_count);
>>=20=20
>>  	return passed;
>>  }
>> @@ -1451,8 +1351,6 @@ void intel_dp_start_link_train(struct intel_dp *in=
tel_dp,
>>  			       const struct intel_crtc_state *crtc_state)
>>  {
>>  	struct drm_i915_private *i915 =3D dp_to_i915(intel_dp);
>> -	struct intel_connector *connector =3D intel_dp->attached_connector;
>> -	struct intel_encoder *encoder =3D &dp_to_dig_port(intel_dp)->base;
>>  	bool passed;
>>=20=20
>>  	/*
>> @@ -1485,10 +1383,7 @@ void intel_dp_start_link_train(struct intel_dp *i=
ntel_dp,
>>  	 * ignore_long_hpd flag can unset from the testcase.
>>  	 */
>>  	if (!passed && i915->display.hotplug.ignore_long_hpd) {
>> -		drm_dbg_kms(&i915->drm,
>> -			    "[CONNECTOR:%d:%s][ENCODER:%d:%s] Ignore the link failure\n",
>> -			    connector->base.base.id, connector->base.name,
>> -			    encoder->base.base.id, encoder->base.name);
>> +		lt_dbg(intel_dp, DP_PHY_DPRX, "Ignore the link failure\n");
>>  		return;
>>  	}
>>=20=20
>> @@ -1499,8 +1394,6 @@ void intel_dp_start_link_train(struct intel_dp *in=
tel_dp,
>>  void intel_dp_128b132b_sdp_crc16(struct intel_dp *intel_dp,
>>  				 const struct intel_crtc_state *crtc_state)
>>  {
>> -	struct drm_i915_private *i915 =3D dp_to_i915(intel_dp);
>> -
>>  	/*
>>  	 * VIDEO_DIP_CTL register bit 31 should be set to '0' to not
>>  	 * disable SDP CRC. This is applicable for Display version 13.
>> @@ -1513,5 +1406,5 @@ void intel_dp_128b132b_sdp_crc16(struct intel_dp *=
intel_dp,
>>  				   DP_SDP_ERROR_DETECTION_CONFIGURATION,
>>  				   DP_SDP_CRC16_128B132B_EN);
>>=20=20
>> -	drm_dbg_kms(&i915->drm, "DP2.0 SDP CRC16 for 128b/132b enabled\n");
>> +	lt_dbg(intel_dp, DP_PHY_DPRX, "DP2.0 SDP CRC16 for 128b/132b enabled\n=
");
>>  }
>> --=20
>> 2.37.2

--=20
Jani Nikula, Intel Open Source Graphics Center
