Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 46290278D8A
	for <lists+intel-gfx@lfdr.de>; Fri, 25 Sep 2020 18:02:59 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 7EAA66ED3B;
	Fri, 25 Sep 2020 16:02:54 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga17.intel.com (mga17.intel.com [192.55.52.151])
 by gabe.freedesktop.org (Postfix) with ESMTPS id E6D926ED39;
 Fri, 25 Sep 2020 16:02:52 +0000 (UTC)
IronPort-SDR: kr0g8CKE+TPVwylPXtkVUKdPUBFNkjLnNYEPMUB9G3hofxDKu8v+m+JrVuFtXoVouQK3L01pU2
 S6xhZhC7Q58Q==
X-IronPort-AV: E=McAfee;i="6000,8403,9755"; a="141590321"
X-IronPort-AV: E=Sophos;i="5.77,302,1596524400"; d="scan'208";a="141590321"
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga007.fm.intel.com ([10.253.24.52])
 by fmsmga107.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 25 Sep 2020 09:02:52 -0700
IronPort-SDR: 52r8Z1QnkIaOG3G+o7Rm7jRTDJC2Duk57WnuP5OEFpOyP68tui4oAlC6dKnfYjiG41rX44IOC7
 CM2i/kdT71sg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.77,302,1596524400"; d="scan'208";a="291825012"
Received: from stinkbox.fi.intel.com (HELO stinkbox) ([10.237.72.174])
 by fmsmga007.fm.intel.com with SMTP; 25 Sep 2020 09:02:48 -0700
Received: by stinkbox (sSMTP sendmail emulation);
 Fri, 25 Sep 2020 19:02:47 +0300
Date: Fri, 25 Sep 2020 19:02:47 +0300
From: Ville =?iso-8859-1?Q?Syrj=E4l=E4?= <ville.syrjala@linux.intel.com>
To: Imre Deak <imre.deak@intel.com>
Message-ID: <20200925160247.GR6112@intel.com>
References: <20200924184805.294493-1-imre.deak@intel.com>
 <20200924184805.294493-5-imre.deak@intel.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200924184805.294493-5-imre.deak@intel.com>
X-Patchwork-Hint: comment
User-Agent: Mutt/1.10.1 (2018-07-13)
Subject: Re: [Intel-gfx] [PATCH v2 4/6] drm/dp: Add LTTPR helpers
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
Cc: intel-gfx@lists.freedesktop.org, dri-devel@lists.freedesktop.org
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Thu, Sep 24, 2020 at 09:48:03PM +0300, Imre Deak wrote:
> Add the helpers and register definitions needed to read out the common
> and per-PHY LTTPR capabilities and perform link training in the LTTPR
> non-transparent mode.
> =

> v2:
> - Add drm_dp_dpcd_read_phy_link_status() and DP_PHY_LTTPR() here instead
>   of adding these to i915. (Ville)
> =

> Cc: dri-devel@lists.freedesktop.org
> Cc: Ville Syrj=E4l=E4 <ville.syrjala@linux.intel.com>
> Signed-off-by: Imre Deak <imre.deak@intel.com>
> ---
>  drivers/gpu/drm/drm_dp_helper.c | 244 +++++++++++++++++++++++++++++++-
>  include/drm/drm_dp_helper.h     |  62 ++++++++
>  2 files changed, 302 insertions(+), 4 deletions(-)
> =

> diff --git a/drivers/gpu/drm/drm_dp_helper.c b/drivers/gpu/drm/drm_dp_hel=
per.c
> index 478dd51f738d..6014c858b06b 100644
> --- a/drivers/gpu/drm/drm_dp_helper.c
> +++ b/drivers/gpu/drm/drm_dp_helper.c
> @@ -150,11 +150,8 @@ void drm_dp_link_train_clock_recovery_delay(const u8=
 dpcd[DP_RECEIVER_CAP_SIZE])
>  }
>  EXPORT_SYMBOL(drm_dp_link_train_clock_recovery_delay);
>  =

> -void drm_dp_link_train_channel_eq_delay(const u8 dpcd[DP_RECEIVER_CAP_SI=
ZE])
> +static void __drm_dp_link_train_channel_eq_delay(unsigned long rd_interv=
al)
>  {
> -	unsigned long rd_interval =3D dpcd[DP_TRAINING_AUX_RD_INTERVAL] &
> -					 DP_TRAINING_AUX_RD_MASK;
> -
>  	if (rd_interval > 4)
>  		DRM_DEBUG_KMS("AUX interval %lu, out of range (max 4)\n",
>  			      rd_interval);
> @@ -166,8 +163,35 @@ void drm_dp_link_train_channel_eq_delay(const u8 dpc=
d[DP_RECEIVER_CAP_SIZE])
>  =

>  	usleep_range(rd_interval, rd_interval * 2);
>  }
> +
> +void drm_dp_link_train_channel_eq_delay(const u8 dpcd[DP_RECEIVER_CAP_SI=
ZE])
> +{
> +	__drm_dp_link_train_channel_eq_delay(dpcd[DP_TRAINING_AUX_RD_INTERVAL] &
> +					     DP_TRAINING_AUX_RD_MASK);
> +}
>  EXPORT_SYMBOL(drm_dp_link_train_channel_eq_delay);
>  =

> +void drm_dp_lttpr_link_train_clock_recovery_delay(void)
> +{
> +	usleep_range(100, 200);
> +}
> +EXPORT_SYMBOL(drm_dp_lttpr_link_train_clock_recovery_delay);
> +
> +static u8 dp_lttpr_phy_cap(const u8 phy_cap[DP_LTTPR_PHY_CAP_SIZE], int =
r)
> +{
> +	return phy_cap[r - DP_TRAINING_AUX_RD_INTERVAL_PHY_REPEATER1];
> +}
> +
> +void drm_dp_lttpr_link_train_channel_eq_delay(const u8 phy_cap[DP_LTTPR_=
PHY_CAP_SIZE])
> +{
> +	u8 interval =3D dp_lttpr_phy_cap(phy_cap,
> +				       DP_TRAINING_AUX_RD_INTERVAL_PHY_REPEATER1) &
> +		      DP_TRAINING_AUX_RD_MASK;
> +
> +	__drm_dp_link_train_channel_eq_delay(interval);
> +}
> +EXPORT_SYMBOL(drm_dp_lttpr_link_train_channel_eq_delay);
> +
>  u8 drm_dp_link_rate_to_bw_code(int link_rate)
>  {
>  	/* Spec says link_bw =3D link_rate / 0.27Gbps */
> @@ -363,6 +387,71 @@ int drm_dp_dpcd_read_link_status(struct drm_dp_aux *=
aux,
>  }
>  EXPORT_SYMBOL(drm_dp_dpcd_read_link_status);
>  =

> +/**
> + * drm_dp_dpcd_read_phy_link_status - get the link status information fo=
r a DP PHY
> + * @aux: DisplayPort AUX channel
> + * @dp_phy: the DP PHY to get the link status for
> + * @link_status: buffer to return the status in
> + *
> + * Fetch the AUX DPCD registers for the DPRX or an LTTPR PHY link status=
. The
> + * layout of the returned @link_status matches the DPCD register layout =
of the
> + * DPRX PHY link status.
> + *
> + * Returns 0 if the information was read successfully or a negative erro=
r code
> + * on failure.
> + */
> +int drm_dp_dpcd_read_phy_link_status(struct drm_dp_aux *aux,
> +				     enum drm_dp_phy dp_phy,
> +				     u8 link_status[DP_LINK_STATUS_SIZE])
> +{
> +	u8 lttpr_status[DP_LINK_STATUS_SIZE - 1];
> +	int ret;
> +
> +	if (dp_phy =3D=3D DP_PHY_DPRX) {
> +		ret =3D drm_dp_dpcd_read(aux,
> +				       DP_LANE0_1_STATUS,
> +				       link_status,
> +				       DP_LINK_STATUS_SIZE);
> +
> +		if (ret < 0)
> +			return ret;
> +
> +		WARN_ON(ret !=3D DP_LINK_STATUS_SIZE);
> +
> +		return 0;
> +	}
> +
> +	ret =3D drm_dp_dpcd_read(aux,
> +			       DP_LANE0_1_STATUS_PHY_REPEATER(dp_phy),
> +			       lttpr_status,
> +			       sizeof(lttpr_status));
> +
> +	if (ret < 0)
> +		return ret;
> +
> +	WARN_ON(ret !=3D sizeof(lttpr_status));
> +
> +#define link_reg(reg)	link_status[(reg) - DP_LANE0_1_STATUS]
> +#define lttpr_reg(reg)	lttpr_status[(reg) - DP_LANE0_1_STATUS_PHY_REPEAT=
ER1]
> +
> +	/* Convert the LTTPR to the sink PHY link status layout */
> +	link_reg(DP_LANE0_1_STATUS) =3D lttpr_reg(DP_LANE0_1_STATUS_PHY_REPEATE=
R1);
> +	link_reg(DP_LANE2_3_STATUS) =3D lttpr_reg(DP_LANE2_3_STATUS_PHY_REPEATE=
R1);
> +	link_reg(DP_LANE_ALIGN_STATUS_UPDATED) =3D
> +		lttpr_reg(DP_LANE_ALIGN_STATUS_UPDATED_PHY_REPEATER1);
> +	link_reg(DP_SINK_STATUS) =3D 0;
> +	link_reg(DP_ADJUST_REQUEST_LANE0_1) =3D
> +		lttpr_reg(DP_ADJUST_REQUEST_LANE0_1_PHY_REPEATER1);
> +	link_reg(DP_ADJUST_REQUEST_LANE2_3) =3D
> +		lttpr_reg(DP_ADJUST_REQUEST_LANE2_3_PHY_REPEATER1);
> +
> +#undef link_reg
> +#undef lttpr_reg

Alternative might be to read to the target buffer directly
and just memmove() the stuff around a bit. Would avoid having
the second buffer on stack. But it's a small buffer so meh.

Reviewed-by: Ville Syrj=E4l=E4 <ville.syrjala@linux.intel.com>

> +
> +	return 0;
> +}
> +EXPORT_SYMBOL(drm_dp_dpcd_read_phy_link_status);
> +
>  static bool is_edid_digital_input_dp(const struct edid *edid)
>  {
>  	return edid && edid->revision >=3D 4 &&
> @@ -2098,6 +2187,153 @@ int drm_dp_dsc_sink_supported_input_bpcs(const u8=
 dsc_dpcd[DP_DSC_RECEIVER_CAP_S
>  }
>  EXPORT_SYMBOL(drm_dp_dsc_sink_supported_input_bpcs);
>  =

> +/**
> + * drm_dp_read_lttpr_common_caps - read the LTTPR common capabilities
> + * @aux: DisplayPort AUX channel
> + * @caps: buffer to return the capability info in
> + *
> + * Read capabilities common to all LTTPRs.
> + *
> + * Returns 0 on success or a negative error code on failure.
> + */
> +int drm_dp_read_lttpr_common_caps(struct drm_dp_aux *aux,
> +				  u8 caps[DP_LTTPR_COMMON_CAP_SIZE])
> +{
> +	int ret;
> +
> +	ret =3D drm_dp_dpcd_read(aux,
> +			       DP_LT_TUNABLE_PHY_REPEATER_FIELD_DATA_STRUCTURE_REV,
> +			       caps, DP_LTTPR_COMMON_CAP_SIZE);
> +	if (ret < 0)
> +		return ret;
> +
> +	WARN_ON(ret !=3D DP_LTTPR_COMMON_CAP_SIZE);
> +
> +	return 0;
> +}
> +EXPORT_SYMBOL(drm_dp_read_lttpr_common_caps);
> +
> +/**
> + * drm_dp_read_lttpr_phy_caps - read the capabilities for a given LTTPR =
PHY
> + * @aux: DisplayPort AUX channel
> + * @dp_phy: LTTPR PHY to read the capabilities for
> + * @caps: buffer to return the capability info in
> + *
> + * Read the capabilities for the given LTTPR PHY.
> + *
> + * Returns 0 on success or a negative error code on failure.
> + */
> +int drm_dp_read_lttpr_phy_caps(struct drm_dp_aux *aux,
> +			       enum drm_dp_phy dp_phy,
> +			       u8 caps[DP_LTTPR_PHY_CAP_SIZE])
> +{
> +	int ret;
> +
> +	ret =3D drm_dp_dpcd_read(aux,
> +			       DP_TRAINING_AUX_RD_INTERVAL_PHY_REPEATER(dp_phy),
> +			       caps, DP_LTTPR_PHY_CAP_SIZE);
> +	if (ret < 0)
> +		return ret;
> +
> +	WARN_ON(ret !=3D DP_LTTPR_PHY_CAP_SIZE);
> +
> +	return 0;
> +}
> +EXPORT_SYMBOL(drm_dp_read_lttpr_phy_caps);
> +
> +static u8 dp_lttpr_common_cap(const u8 caps[DP_LTTPR_COMMON_CAP_SIZE], i=
nt r)
> +{
> +	return caps[r - DP_LT_TUNABLE_PHY_REPEATER_FIELD_DATA_STRUCTURE_REV];
> +}
> +
> +/**
> + * drm_dp_lttpr_count - get the number of detected LTTPRs
> + * @caps: LTTPR common capabilities
> + *
> + * Get the number of detected LTTPRs from the LTTPR common capabilities =
info.
> + *
> + * Returns:
> + *   -ERANGE if more than supported number (8) of LTTPRs are detected
> + *   -EINVAL if the DP_PHY_REPEATER_CNT register contains an invalid val=
ue
> + *   otherwise the number of detected LTTPRs
> + */
> +int drm_dp_lttpr_count(const u8 caps[DP_LTTPR_COMMON_CAP_SIZE])
> +{
> +	u8 count =3D dp_lttpr_common_cap(caps, DP_PHY_REPEATER_CNT);
> +
> +	switch (hweight8(count)) {
> +	case 0:
> +		return 0;
> +	case 1:
> +		return 8 - ilog2(count);
> +	case 8:
> +		return -ERANGE;
> +	default:
> +		return -EINVAL;
> +	}
> +}
> +EXPORT_SYMBOL(drm_dp_lttpr_count);
> +
> +/**
> + * drm_dp_lttpr_max_link_rate - get the maximum link rate supported by a=
ll LTTPRs
> + * @caps: LTTPR common capabilities
> + *
> + * Returns the maximum link rate supported by all detected LTTPRs.
> + */
> +int drm_dp_lttpr_max_link_rate(const u8 caps[DP_LTTPR_COMMON_CAP_SIZE])
> +{
> +	u8 rate =3D dp_lttpr_common_cap(caps, DP_MAX_LINK_RATE_PHY_REPEATER);
> +
> +	return drm_dp_bw_code_to_link_rate(rate);
> +}
> +EXPORT_SYMBOL(drm_dp_lttpr_max_link_rate);
> +
> +/**
> + * drm_dp_lttpr_max_lane_count - get the maximum lane count supported by=
 all LTTPRs
> + * @caps: LTTPR common capabilities
> + *
> + * Returns the maximum lane count supported by all detected LTTPRs.
> + */
> +int drm_dp_lttpr_max_lane_count(const u8 caps[DP_LTTPR_COMMON_CAP_SIZE])
> +{
> +	u8 max_lanes =3D dp_lttpr_common_cap(caps, DP_MAX_LANE_COUNT_PHY_REPEAT=
ER);
> +
> +	return max_lanes & DP_MAX_LANE_COUNT_MASK;
> +}
> +EXPORT_SYMBOL(drm_dp_lttpr_max_lane_count);
> +
> +/**
> + * drm_dp_lttpr_voltage_swing_level_3_supported - check for LTTPR vswing=
3 support
> + * @caps: LTTPR PHY capabilities
> + *
> + * Returns true if the @caps for an LTTPR TX PHY indicate support for
> + * voltage swing level 3.
> + */
> +bool
> +drm_dp_lttpr_voltage_swing_level_3_supported(const u8 caps[DP_LTTPR_PHY_=
CAP_SIZE])
> +{
> +	u8 txcap =3D dp_lttpr_phy_cap(caps, DP_TRANSMITTER_CAPABILITY_PHY_REPEA=
TER1);
> +
> +	return txcap & DP_VOLTAGE_SWING_LEVEL_3_SUPPORTED;
> +}
> +EXPORT_SYMBOL(drm_dp_lttpr_voltage_swing_level_3_supported);
> +
> +/**
> + * drm_dp_lttpr_pre_emphasis_level_3_supported - check for LTTPR preemph=
3 support
> + * @caps: LTTPR PHY capabilities
> + *
> + * Returns true if the @caps for an LTTPR TX PHY indicate support for
> + * pre-emphasis level 3.
> + */
> +bool
> +drm_dp_lttpr_pre_emphasis_level_3_supported(const u8 caps[DP_LTTPR_PHY_C=
AP_SIZE])
> +{
> +	u8 txcap =3D dp_lttpr_phy_cap(caps, DP_TRANSMITTER_CAPABILITY_PHY_REPEA=
TER1);
> +
> +	return txcap & DP_PRE_EMPHASIS_LEVEL_3_SUPPORTED;
> +}
> +EXPORT_SYMBOL(drm_dp_lttpr_pre_emphasis_level_3_supported);
> +
>  /**
>   * drm_dp_get_phy_test_pattern() - get the requested pattern from the si=
nk.
>   * @aux: DisplayPort AUX channel
> diff --git a/include/drm/drm_dp_helper.h b/include/drm/drm_dp_helper.h
> index e144b4b9d79a..42b6ab14920a 100644
> --- a/include/drm/drm_dp_helper.h
> +++ b/include/drm/drm_dp_helper.h
> @@ -1118,15 +1118,58 @@ struct drm_device;
>  #define DP_MAX_LANE_COUNT_PHY_REPEATER			    0xf0004 /* 1.4a */
>  #define DP_Repeater_FEC_CAPABILITY			    0xf0004 /* 1.4 */
>  #define DP_PHY_REPEATER_EXTENDED_WAIT_TIMEOUT		    0xf0005 /* 1.4a */
> +
> +enum drm_dp_phy {
> +	DP_PHY_DPRX,
> +
> +	DP_PHY_LTTPR1,
> +	DP_PHY_LTTPR2,
> +	DP_PHY_LTTPR3,
> +	DP_PHY_LTTPR4,
> +	DP_PHY_LTTPR5,
> +	DP_PHY_LTTPR6,
> +	DP_PHY_LTTPR7,
> +	DP_PHY_LTTPR8,
> +
> +	DP_MAX_LTTPR_COUNT =3D DP_PHY_LTTPR8,
> +};
> +
> +#define DP_PHY_LTTPR(i)					    (DP_PHY_LTTPR1 + (i))
> +
> +#define __DP_LTTPR1_BASE				    0xf0010 /* 1.3 */
> +#define __DP_LTTPR2_BASE				    0xf0060 /* 1.3 */
> +#define DP_LTTPR_BASE(dp_phy) \
> +	(__DP_LTTPR1_BASE + (__DP_LTTPR2_BASE - __DP_LTTPR1_BASE) * \
> +		((dp_phy) - DP_PHY_LTTPR1))
> +
> +#define DP_LTTPR_REG(dp_phy, lttpr1_reg) \
> +	(DP_LTTPR_BASE(dp_phy) - DP_LTTPR_BASE(DP_PHY_LTTPR1) + (lttpr1_reg))
> +
>  #define DP_TRAINING_PATTERN_SET_PHY_REPEATER1		    0xf0010 /* 1.3 */
> +#define DP_TRAINING_PATTERN_SET_PHY_REPEATER(dp_phy) \
> +	DP_LTTPR_REG(dp_phy, DP_TRAINING_PATTERN_SET_PHY_REPEATER1)
> +
>  #define DP_TRAINING_LANE0_SET_PHY_REPEATER1		    0xf0011 /* 1.3 */
> +#define DP_TRAINING_LANE0_SET_PHY_REPEATER(dp_phy) \
> +	DP_LTTPR_REG(dp_phy, DP_TRAINING_LANE0_SET_PHY_REPEATER1)
> +
>  #define DP_TRAINING_LANE1_SET_PHY_REPEATER1		    0xf0012 /* 1.3 */
>  #define DP_TRAINING_LANE2_SET_PHY_REPEATER1		    0xf0013 /* 1.3 */
>  #define DP_TRAINING_LANE3_SET_PHY_REPEATER1		    0xf0014 /* 1.3 */
>  #define DP_TRAINING_AUX_RD_INTERVAL_PHY_REPEATER1	    0xf0020 /* 1.4a */
> +#define DP_TRAINING_AUX_RD_INTERVAL_PHY_REPEATER(dp_phy)	\
> +	DP_LTTPR_REG(dp_phy, DP_TRAINING_AUX_RD_INTERVAL_PHY_REPEATER1)
> +
>  #define DP_TRANSMITTER_CAPABILITY_PHY_REPEATER1		    0xf0021 /* 1.4a */
> +# define DP_VOLTAGE_SWING_LEVEL_3_SUPPORTED		    BIT(0)
> +# define DP_PRE_EMPHASIS_LEVEL_3_SUPPORTED		    BIT(1)
> +
>  #define DP_LANE0_1_STATUS_PHY_REPEATER1			    0xf0030 /* 1.3 */
> +#define DP_LANE0_1_STATUS_PHY_REPEATER(dp_phy) \
> +	DP_LTTPR_REG(dp_phy, DP_LANE0_1_STATUS_PHY_REPEATER1)
> +
>  #define DP_LANE2_3_STATUS_PHY_REPEATER1			    0xf0031 /* 1.3 */
> +
>  #define DP_LANE_ALIGN_STATUS_UPDATED_PHY_REPEATER1	    0xf0032 /* 1.3 */
>  #define DP_ADJUST_REQUEST_LANE0_1_PHY_REPEATER1		    0xf0033 /* 1.3 */
>  #define DP_ADJUST_REQUEST_LANE2_3_PHY_REPEATER1		    0xf0034 /* 1.3 */
> @@ -1236,9 +1279,13 @@ u8 drm_dp_get_adjust_request_post_cursor(const u8 =
link_status[DP_LINK_STATUS_SIZ
>  #define DP_DSC_RECEIVER_CAP_SIZE        0xf
>  #define EDP_PSR_RECEIVER_CAP_SIZE	2
>  #define EDP_DISPLAY_CTL_CAP_SIZE	3
> +#define DP_LTTPR_COMMON_CAP_SIZE	8
> +#define DP_LTTPR_PHY_CAP_SIZE		3
>  =

>  void drm_dp_link_train_clock_recovery_delay(const u8 dpcd[DP_RECEIVER_CA=
P_SIZE]);
> +void drm_dp_lttpr_link_train_clock_recovery_delay(void);
>  void drm_dp_link_train_channel_eq_delay(const u8 dpcd[DP_RECEIVER_CAP_SI=
ZE]);
> +void drm_dp_lttpr_link_train_channel_eq_delay(const u8 caps[DP_LTTPR_PHY=
_CAP_SIZE]);
>  =

>  u8 drm_dp_link_rate_to_bw_code(int link_rate);
>  int drm_dp_bw_code_to_link_rate(u8 link_bw);
> @@ -1697,6 +1744,10 @@ int drm_dp_read_dpcd_caps(struct drm_dp_aux *aux,
>  int drm_dp_dpcd_read_link_status(struct drm_dp_aux *aux,
>  				 u8 status[DP_LINK_STATUS_SIZE]);
>  =

> +int drm_dp_dpcd_read_phy_link_status(struct drm_dp_aux *aux,
> +				     enum drm_dp_phy dp_phy,
> +				     u8 link_status[DP_LINK_STATUS_SIZE]);
> +
>  bool drm_dp_send_real_edid_checksum(struct drm_dp_aux *aux,
>  				    u8 real_edid_checksum);
>  =

> @@ -1746,6 +1797,17 @@ bool drm_dp_read_sink_count_cap(struct drm_connect=
or *connector,
>  				const struct drm_dp_desc *desc);
>  int drm_dp_read_sink_count(struct drm_dp_aux *aux);
>  =

> +int drm_dp_read_lttpr_common_caps(struct drm_dp_aux *aux,
> +				  u8 caps[DP_LTTPR_COMMON_CAP_SIZE]);
> +int drm_dp_read_lttpr_phy_caps(struct drm_dp_aux *aux,
> +			       enum drm_dp_phy dp_phy,
> +			       u8 caps[DP_LTTPR_PHY_CAP_SIZE]);
> +int drm_dp_lttpr_count(const u8 cap[DP_LTTPR_COMMON_CAP_SIZE]);
> +int drm_dp_lttpr_max_link_rate(const u8 caps[DP_LTTPR_COMMON_CAP_SIZE]);
> +int drm_dp_lttpr_max_lane_count(const u8 caps[DP_LTTPR_COMMON_CAP_SIZE]);
> +bool drm_dp_lttpr_voltage_swing_level_3_supported(const u8 caps[DP_LTTPR=
_PHY_CAP_SIZE]);
> +bool drm_dp_lttpr_pre_emphasis_level_3_supported(const u8 caps[DP_LTTPR_=
PHY_CAP_SIZE]);
> +
>  void drm_dp_remote_aux_init(struct drm_dp_aux *aux);
>  void drm_dp_aux_init(struct drm_dp_aux *aux);
>  int drm_dp_aux_register(struct drm_dp_aux *aux);
> -- =

> 2.25.1

-- =

Ville Syrj=E4l=E4
Intel
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
