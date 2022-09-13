Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 74F455B68AB
	for <lists+intel-gfx@lfdr.de>; Tue, 13 Sep 2022 09:29:41 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id DDF6510E62F;
	Tue, 13 Sep 2022 07:29:35 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga17.intel.com (mga17.intel.com [192.55.52.151])
 by gabe.freedesktop.org (Postfix) with ESMTPS id F17EC10E646
 for <intel-gfx@lists.freedesktop.org>; Tue, 13 Sep 2022 07:29:31 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1663054172; x=1694590172;
 h=from:to:subject:in-reply-to:references:date:message-id:
 mime-version:content-transfer-encoding;
 bh=G8wjdCqcup4IJnfrnEWqgqXeluRmCU9JUxO6E9fl8aY=;
 b=bloNrnzjM5gizIymhoKH1FSWhKDvO8f7ci3kLnGB7u7YSgOo8+ytILCT
 +GAXbaHKk2rZQDfGhkrlyu3tnY0+OmXo/sdHLpSQjRDY/VhHjupsR/puM
 gFvKceVn0uUlBy4UFJ7ZB2w4adP4WfC+xPahKADTojrOF14ujAh07+sUG
 Z7vl1Ezrpdq11pJS2GfdUZf11l1dDJW9I9Z+1S6u0W8cE43pqH+fdh0v7
 KSTdS4EoL81yQHfLKamhXzDZncAG07LNfTzlk5DxV5DfhaoV4sG/jx5Oc
 vdmTTgKg5VrPOCmZQvfzeFIBklebjp0mSYUJUY1UFn2Jfr/hw8K4HOW4y g==;
X-IronPort-AV: E=McAfee;i="6500,9779,10468"; a="278459156"
X-IronPort-AV: E=Sophos;i="5.93,312,1654585200"; d="scan'208";a="278459156"
Received: from fmsmga008.fm.intel.com ([10.253.24.58])
 by fmsmga107.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 13 Sep 2022 00:29:31 -0700
X-IronPort-AV: E=Sophos;i="5.93,312,1654585200"; d="scan'208";a="678447913"
Received: from pmalinow-mobl.ger.corp.intel.com (HELO localhost)
 ([10.252.58.145])
 by fmsmga008-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 13 Sep 2022 00:29:30 -0700
From: Jani Nikula <jani.nikula@intel.com>
To: Andrzej Hajda <andrzej.hajda@intel.com>, intel-gfx@lists.freedesktop.org
In-Reply-To: <e2f9f8d5-4279-8368-9e7d-a5f4066bac44@intel.com>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
References: <20220912132313.2774603-1-jani.nikula@intel.com>
 <e2f9f8d5-4279-8368-9e7d-a5f4066bac44@intel.com>
Date: Tue, 13 Sep 2022 10:29:25 +0300
Message-ID: <87tu5b4tre.fsf@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: quoted-printable
Subject: Re: [Intel-gfx] [RESEND] drm/i915/dp: use drm_dp_phy_name() for
 logging
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

On Mon, 12 Sep 2022, Andrzej Hajda <andrzej.hajda@intel.com> wrote:
> On 12.09.2022 15:23, Jani Nikula wrote:
>> Drop the local intel_dp_phy_name() function, and replace with
>> drm_dp_phy_name(). This lets us drop a number of local buffers.
>>=20
>> v2: Rebase
>>=20
>> Cc: Ville Syrj=C3=A4l=C3=A4 <ville.syrjala@linux.intel.com>
>> Reviewed-by: Ville Syrj=C3=A4l=C3=A4 <ville.syrjala@linux.intel.com> # v1
>> Signed-off-by: Jani Nikula <jani.nikula@intel.com>
>
> Reviewed-by: Andrzej Hajda <andrzej.hajda@intel.com>

Thanks, pushed to drm-intel-next.

BR,
Jani.

>
> Regards
> Andrzej
>
>> ---
>>   .../drm/i915/display/intel_dp_link_training.c | 83 ++++++++-----------
>>   1 file changed, 36 insertions(+), 47 deletions(-)
>>=20
>> diff --git a/drivers/gpu/drm/i915/display/intel_dp_link_training.c b/dri=
vers/gpu/drm/i915/display/intel_dp_link_training.c
>> index d213d8ad1ea5..3d3efcf02011 100644
>> --- a/drivers/gpu/drm/i915/display/intel_dp_link_training.c
>> +++ b/drivers/gpu/drm/i915/display/intel_dp_link_training.c
>> @@ -37,17 +37,6 @@ static void intel_dp_reset_lttpr_count(struct intel_d=
p *intel_dp)
>>   				    DP_LT_TUNABLE_PHY_REPEATER_FIELD_DATA_STRUCTURE_REV] =3D 0;
>>   }
>>=20=20=20
>> -static const char *intel_dp_phy_name(enum drm_dp_phy dp_phy,
>> -				     char *buf, size_t buf_size)
>> -{
>> -	if (dp_phy =3D=3D DP_PHY_DPRX)
>> -		snprintf(buf, buf_size, "DPRX");
>> -	else
>> -		snprintf(buf, buf_size, "LTTPR %d", dp_phy - DP_PHY_LTTPR1 + 1);
>> -
>> -	return buf;
>> -}
>> -
>>   static u8 *intel_dp_lttpr_phy_caps(struct intel_dp *intel_dp,
>>   				   enum drm_dp_phy dp_phy)
>>   {
>> @@ -60,20 +49,19 @@ static void intel_dp_read_lttpr_phy_caps(struct inte=
l_dp *intel_dp,
>>   {
>>   	struct intel_encoder *encoder =3D &dp_to_dig_port(intel_dp)->base;
>>   	u8 *phy_caps =3D intel_dp_lttpr_phy_caps(intel_dp, dp_phy);
>> -	char phy_name[10];
>> -
>> -	intel_dp_phy_name(dp_phy, phy_name, sizeof(phy_name));
>>=20=20=20
>>   	if (drm_dp_read_lttpr_phy_caps(&intel_dp->aux, dpcd, dp_phy, phy_caps=
) < 0) {
>>   		drm_dbg_kms(&dp_to_i915(intel_dp)->drm,
>>   			    "[ENCODER:%d:%s][%s] failed to read the PHY caps\n",
>> -			    encoder->base.base.id, encoder->base.name, phy_name);
>> +			    encoder->base.base.id, encoder->base.name,
>> +			    drm_dp_phy_name(dp_phy));
>>   		return;
>>   	}
>>=20=20=20
>>   	drm_dbg_kms(&dp_to_i915(intel_dp)->drm,
>>   		    "[ENCODER:%d:%s][%s] PHY capabilities: %*ph\n",
>> -		    encoder->base.base.id, encoder->base.name, phy_name,
>> +		    encoder->base.base.id, encoder->base.name,
>> +		    drm_dp_phy_name(dp_phy),
>>   		    (int)sizeof(intel_dp->lttpr_phy_caps[0]),
>>   		    phy_caps);
>>   }
>> @@ -423,14 +411,13 @@ intel_dp_get_adjust_train(struct intel_dp *intel_d=
p,
>>   {
>>   	struct intel_encoder *encoder =3D &dp_to_dig_port(intel_dp)->base;
>>   	struct drm_i915_private *i915 =3D to_i915(encoder->base.dev);
>> -	char phy_name[10];
>>   	int lane;
>>=20=20=20
>>   	if (intel_dp_is_uhbr(crtc_state)) {
>>   		drm_dbg_kms(&i915->drm, "[ENCODER:%d:%s][%s] 128b/132b, lanes: %d, "
>>   			    "TX FFE request: " TRAIN_REQ_FMT "\n",
>>   			    encoder->base.base.id, encoder->base.name,
>> -			    intel_dp_phy_name(dp_phy, phy_name, sizeof(phy_name)),
>> +			    drm_dp_phy_name(dp_phy),
>>   			    crtc_state->lane_count,
>>   			    TRAIN_REQ_TX_FFE_ARGS(link_status));
>>   	} else {
>> @@ -438,7 +425,7 @@ intel_dp_get_adjust_train(struct intel_dp *intel_dp,
>>   			    "vswing request: " TRAIN_REQ_FMT ", "
>>   			    "pre-emphasis request: " TRAIN_REQ_FMT "\n",
>>   			    encoder->base.base.id, encoder->base.name,
>> -			    intel_dp_phy_name(dp_phy, phy_name, sizeof(phy_name)),
>> +			    drm_dp_phy_name(dp_phy),
>>   			    crtc_state->lane_count,
>>   			    TRAIN_REQ_VSWING_ARGS(link_status),
>>   			    TRAIN_REQ_PREEMPH_ARGS(link_status));
>> @@ -503,13 +490,12 @@ intel_dp_program_link_training_pattern(struct inte=
l_dp *intel_dp,
>>   	struct intel_encoder *encoder =3D &dp_to_dig_port(intel_dp)->base;
>>   	struct drm_i915_private *i915 =3D to_i915(encoder->base.dev);
>>   	u8 train_pat =3D intel_dp_training_pattern_symbol(dp_train_pat);
>> -	char phy_name[10];
>>=20=20=20
>>   	if (train_pat !=3D DP_TRAINING_PATTERN_DISABLE)
>>   		drm_dbg_kms(&i915->drm,
>>   			    "[ENCODER:%d:%s][%s] Using DP training pattern TPS%c\n",
>>   			    encoder->base.base.id, encoder->base.name,
>> -			    intel_dp_phy_name(dp_phy, phy_name, sizeof(phy_name)),
>> +			    drm_dp_phy_name(dp_phy),
>>   			    dp_training_pattern_name(train_pat));
>>=20=20=20
>>   	intel_dp->set_link_train(intel_dp, crtc_state, dp_train_pat);
>> @@ -546,13 +532,12 @@ void intel_dp_set_signal_levels(struct intel_dp *i=
ntel_dp,
>>   {
>>   	struct intel_encoder *encoder =3D &dp_to_dig_port(intel_dp)->base;
>>   	struct drm_i915_private *i915 =3D to_i915(encoder->base.dev);
>> -	char phy_name[10];
>>=20=20=20
>>   	if (intel_dp_is_uhbr(crtc_state)) {
>>   		drm_dbg_kms(&i915->drm, "[ENCODER:%d:%s][%s] 128b/132b, lanes: %d, "
>>   			    "TX FFE presets: " TRAIN_SET_FMT "\n",
>>   			    encoder->base.base.id, encoder->base.name,
>> -			    intel_dp_phy_name(dp_phy, phy_name, sizeof(phy_name)),
>> +			    drm_dp_phy_name(dp_phy),
>>   			    crtc_state->lane_count,
>>   			    TRAIN_SET_TX_FFE_ARGS(intel_dp->train_set));
>>   	} else {
>> @@ -560,7 +545,7 @@ void intel_dp_set_signal_levels(struct intel_dp *int=
el_dp,
>>   			    "vswing levels: " TRAIN_SET_FMT ", "
>>   			    "pre-emphasis levels: " TRAIN_SET_FMT "\n",
>>   			    encoder->base.base.id, encoder->base.name,
>> -			    intel_dp_phy_name(dp_phy, phy_name, sizeof(phy_name)),
>> +			    drm_dp_phy_name(dp_phy),
>>   			    crtc_state->lane_count,
>>   			    TRAIN_SET_VSWING_ARGS(intel_dp->train_set),
>>   			    TRAIN_SET_PREEMPH_ARGS(intel_dp->train_set));
>> @@ -754,12 +739,11 @@ intel_dp_dump_link_status(struct intel_dp *intel_d=
p, enum drm_dp_phy dp_phy,
>>   {
>>   	struct intel_encoder *encoder =3D &dp_to_dig_port(intel_dp)->base;
>>   	struct drm_i915_private *i915 =3D to_i915(encoder->base.dev);
>> -	char phy_name[10];
>>=20=20=20
>>   	drm_dbg_kms(&i915->drm,
>>   		    "[ENCODER:%d:%s][%s] ln0_1:0x%x ln2_3:0x%x align:0x%x sink:0x%x =
adj_req0_1:0x%x adj_req2_3:0x%x\n",
>>   		    encoder->base.base.id, encoder->base.name,
>> -		    intel_dp_phy_name(dp_phy, phy_name, sizeof(phy_name)),
>> +		    drm_dp_phy_name(dp_phy),
>>   		    link_status[0], link_status[1], link_status[2],
>>   		    link_status[3], link_status[4], link_status[5]);
>>   }
>> @@ -779,21 +763,19 @@ intel_dp_link_training_clock_recovery(struct intel=
_dp *intel_dp,
>>   	int voltage_tries, cr_tries, max_cr_tries;
>>   	u8 link_status[DP_LINK_STATUS_SIZE];
>>   	bool max_vswing_reached =3D false;
>> -	char phy_name[10];
>>   	int delay_us;
>>=20=20=20
>>   	delay_us =3D drm_dp_read_clock_recovery_delay(&intel_dp->aux,
>>   						    intel_dp->dpcd, dp_phy,
>>   						    intel_dp_is_uhbr(crtc_state));
>>=20=20=20
>> -	intel_dp_phy_name(dp_phy, phy_name, sizeof(phy_name));
>> -
>>   	/* clock recovery */
>>   	if (!intel_dp_reset_link_train(intel_dp, crtc_state, dp_phy,
>>   				       DP_TRAINING_PATTERN_1 |
>>   				       DP_LINK_SCRAMBLING_DISABLE)) {
>>   		drm_err(&i915->drm, "[ENCODER:%d:%s][%s] Failed to enable link train=
ing\n",
>> -			encoder->base.base.id, encoder->base.name, phy_name);
>> +			encoder->base.base.id, encoder->base.name,
>> +			drm_dp_phy_name(dp_phy));
>>   		return false;
>>   	}
>>=20=20=20
>> @@ -817,14 +799,16 @@ intel_dp_link_training_clock_recovery(struct intel=
_dp *intel_dp,
>>   		if (drm_dp_dpcd_read_phy_link_status(&intel_dp->aux, dp_phy,
>>   						     link_status) < 0) {
>>   			drm_err(&i915->drm, "[ENCODER:%d:%s][%s] Failed to get link status\=
n",
>> -				encoder->base.base.id, encoder->base.name, phy_name);
>> +				encoder->base.base.id, encoder->base.name,
>> +				drm_dp_phy_name(dp_phy));
>>   			return false;
>>   		}
>>=20=20=20
>>   		if (drm_dp_clock_recovery_ok(link_status, crtc_state->lane_count)) {
>>   			drm_dbg_kms(&i915->drm,
>>   				    "[ENCODER:%d:%s][%s] Clock recovery OK\n",
>> -				    encoder->base.base.id, encoder->base.name, phy_name);
>> +				    encoder->base.base.id, encoder->base.name,
>> +				    drm_dp_phy_name(dp_phy));
>>   			return true;
>>   		}
>>=20=20=20
>> @@ -832,7 +816,8 @@ intel_dp_link_training_clock_recovery(struct intel_d=
p *intel_dp,
>>   			intel_dp_dump_link_status(intel_dp, dp_phy, link_status);
>>   			drm_dbg_kms(&i915->drm,
>>   				    "[ENCODER:%d:%s][%s] Same voltage tried 5 times\n",
>> -				    encoder->base.base.id, encoder->base.name, phy_name);
>> +				    encoder->base.base.id, encoder->base.name,
>> +				    drm_dp_phy_name(dp_phy));
>>   			return false;
>>   		}
>>=20=20=20
>> @@ -840,7 +825,8 @@ intel_dp_link_training_clock_recovery(struct intel_d=
p *intel_dp,
>>   			intel_dp_dump_link_status(intel_dp, dp_phy, link_status);
>>   			drm_dbg_kms(&i915->drm,
>>   				    "[ENCODER:%d:%s][%s] Max Voltage Swing reached\n",
>> -				    encoder->base.base.id, encoder->base.name, phy_name);
>> +				    encoder->base.base.id, encoder->base.name,
>> +				    drm_dp_phy_name(dp_phy));
>>   			return false;
>>   		}
>>=20=20=20
>> @@ -850,7 +836,8 @@ intel_dp_link_training_clock_recovery(struct intel_d=
p *intel_dp,
>>   		if (!intel_dp_update_link_train(intel_dp, crtc_state, dp_phy)) {
>>   			drm_err(&i915->drm,
>>   				"[ENCODER:%d:%s][%s] Failed to update link training\n",
>> -				encoder->base.base.id, encoder->base.name, phy_name);
>> +				encoder->base.base.id, encoder->base.name,
>> +				drm_dp_phy_name(dp_phy));
>>   			return false;
>>   		}
>>=20=20=20
>> @@ -868,7 +855,8 @@ intel_dp_link_training_clock_recovery(struct intel_d=
p *intel_dp,
>>   	intel_dp_dump_link_status(intel_dp, dp_phy, link_status);
>>   	drm_err(&i915->drm,
>>   		"[ENCODER:%d:%s][%s] Failed clock recovery %d times, giving up!\n",
>> -		encoder->base.base.id, encoder->base.name, phy_name, max_cr_tries);
>> +		encoder->base.base.id, encoder->base.name,
>> +		drm_dp_phy_name(dp_phy), max_cr_tries);
>>=20=20=20
>>   	return false;
>>   }
>> @@ -946,15 +934,12 @@ intel_dp_link_training_channel_equalization(struct=
 intel_dp *intel_dp,
>>   	u32 training_pattern;
>>   	u8 link_status[DP_LINK_STATUS_SIZE];
>>   	bool channel_eq =3D false;
>> -	char phy_name[10];
>>   	int delay_us;
>>=20=20=20
>>   	delay_us =3D drm_dp_read_channel_eq_delay(&intel_dp->aux,
>>   						intel_dp->dpcd, dp_phy,
>>   						intel_dp_is_uhbr(crtc_state));
>>=20=20=20
>> -	intel_dp_phy_name(dp_phy, phy_name, sizeof(phy_name));
>> -
>>   	training_pattern =3D intel_dp_training_pattern(intel_dp, crtc_state, =
dp_phy);
>>   	/* Scrambling is disabled for TPS2/3 and enabled for TPS4 */
>>   	if (training_pattern !=3D DP_TRAINING_PATTERN_4)
>> @@ -966,7 +951,7 @@ intel_dp_link_training_channel_equalization(struct i=
ntel_dp *intel_dp,
>>   		drm_err(&i915->drm,
>>   			"[ENCODER:%d:%s][%s] Failed to start channel equalization\n",
>>   			encoder->base.base.id, encoder->base.name,
>> -			phy_name);
>> +			drm_dp_phy_name(dp_phy));
>>   		return false;
>>   	}
>>=20=20=20
>> @@ -977,7 +962,8 @@ intel_dp_link_training_channel_equalization(struct i=
ntel_dp *intel_dp,
>>   						     link_status) < 0) {
>>   			drm_err(&i915->drm,
>>   				"[ENCODER:%d:%s][%s] Failed to get link status\n",
>> -				encoder->base.base.id, encoder->base.name, phy_name);
>> +				encoder->base.base.id, encoder->base.name,
>> +				drm_dp_phy_name(dp_phy));
>>   			break;
>>   		}
>>=20=20=20
>> @@ -988,7 +974,8 @@ intel_dp_link_training_channel_equalization(struct i=
ntel_dp *intel_dp,
>>   			drm_dbg_kms(&i915->drm,
>>   				    "[ENCODER:%d:%s][%s] Clock recovery check failed, cannot "
>>   				    "continue channel equalization\n",
>> -				    encoder->base.base.id, encoder->base.name, phy_name);
>> +				    encoder->base.base.id, encoder->base.name,
>> +				    drm_dp_phy_name(dp_phy));
>>   			break;
>>   		}
>>=20=20=20
>> @@ -997,7 +984,8 @@ intel_dp_link_training_channel_equalization(struct i=
ntel_dp *intel_dp,
>>   			channel_eq =3D true;
>>   			drm_dbg_kms(&i915->drm,
>>   				    "[ENCODER:%d:%s][%s] Channel EQ done. DP Training successful\n=
",
>> -				    encoder->base.base.id, encoder->base.name, phy_name);
>> +				    encoder->base.base.id, encoder->base.name,
>> +				    drm_dp_phy_name(dp_phy));
>>   			break;
>>   		}
>>=20=20=20
>> @@ -1007,7 +995,8 @@ intel_dp_link_training_channel_equalization(struct =
intel_dp *intel_dp,
>>   		if (!intel_dp_update_link_train(intel_dp, crtc_state, dp_phy)) {
>>   			drm_err(&i915->drm,
>>   				"[ENCODER:%d:%s][%s] Failed to update link training\n",
>> -				encoder->base.base.id, encoder->base.name, phy_name);
>> +				encoder->base.base.id, encoder->base.name,
>> +				drm_dp_phy_name(dp_phy));
>>   			break;
>>   		}
>>   	}
>> @@ -1017,7 +1006,8 @@ intel_dp_link_training_channel_equalization(struct=
 intel_dp *intel_dp,
>>   		intel_dp_dump_link_status(intel_dp, dp_phy, link_status);
>>   		drm_dbg_kms(&i915->drm,
>>   			    "[ENCODER:%d:%s][%s] Channel equalization failed 5 times\n",
>> -			    encoder->base.base.id, encoder->base.name, phy_name);
>> +			    encoder->base.base.id, encoder->base.name,
>> +			    drm_dp_phy_name(dp_phy));
>>   	}
>>=20=20=20
>>   	return channel_eq;
>> @@ -1092,7 +1082,6 @@ intel_dp_link_train_phy(struct intel_dp *intel_dp,
>>   {
>>   	struct intel_connector *connector =3D intel_dp->attached_connector;
>>   	struct intel_encoder *encoder =3D &dp_to_dig_port(intel_dp)->base;
>> -	char phy_name[10];
>>   	bool ret =3D false;
>>=20=20=20
>>   	if (!intel_dp_link_training_clock_recovery(intel_dp, crtc_state, dp_p=
hy))
>> @@ -1108,7 +1097,7 @@ intel_dp_link_train_phy(struct intel_dp *intel_dp,
>>   		    "[CONNECTOR:%d:%s][ENCODER:%d:%s][%s] Link Training %s at link r=
ate =3D %d, lane count =3D %d\n",
>>   		    connector->base.base.id, connector->base.name,
>>   		    encoder->base.base.id, encoder->base.name,
>> -		    intel_dp_phy_name(dp_phy, phy_name, sizeof(phy_name)),
>> +		    drm_dp_phy_name(dp_phy),
>>   		    ret ? "passed" : "failed",
>>   		    crtc_state->port_clock, crtc_state->lane_count);
>>=20=20=20
>

--=20
Jani Nikula, Intel Open Source Graphics Center
