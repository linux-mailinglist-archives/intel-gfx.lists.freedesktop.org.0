Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id ScezNNreOGq+jQcAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Mon, 22 Jun 2026 09:06:02 +0200
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 45F486AD20C
	for <lists+intel-gfx@lfdr.de>; Mon, 22 Jun 2026 09:06:01 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=intel.com header.s=Intel header.b=QLhj84k6;
	spf=pass (mail.lfdr.de: domain of intel-gfx-bounces@lists.freedesktop.org designates 131.252.210.177 as permitted sender) smtp.mailfrom=intel-gfx-bounces@lists.freedesktop.org;
	dmarc=pass (policy=none) header.from=intel.com
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id CC9AD10E4D4;
	Mon, 22 Jun 2026 07:05:59 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.17])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 1A2BF10E4D4;
 Mon, 22 Jun 2026 07:05:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1782111959; x=1813647959;
 h=from:to:cc:subject:in-reply-to:references:date:
 message-id:mime-version:content-transfer-encoding;
 bh=r3ReV/7sv+kIalGFEXesr5x+cmsCvGwy2pojHF1KBZ0=;
 b=QLhj84k66TU11qMj06abHYgpBGsozb5AgMHcUdX1XJk08uYciyNopiKE
 peRCWLwd3eNlgko26YLt2xwofoPZoH/lya52pS9nRC0W2U5uvOB3Mjez3
 aAd1YyJcJ3S1CORwAyyRY3aTbTtMNVJ8CzyMb28aqhNbnV0Ax0A5FytSV
 1aTE+R7KGoe9siJyTDYlOtcgmkOjW8AR9Y4DWf/fJXprhDR5DtIXZotYW
 f40XlnihI297O1YItFNVR3Z12LaTLrXD5dnBxFxQLUMjjtxKyb9gL/50U
 QslMvhz2gqQY2I+joJ4dPUAS/SSi/W5t5fRqh1Yl4bGnEN9acmpfU6U+a Q==;
X-CSE-ConnectionGUID: J526ntkHRZWf27uEntnknw==
X-CSE-MsgGUID: G3CrngRxQLqZZ/mcxRBI0g==
X-IronPort-AV: E=McAfee;i="6800,10657,11824"; a="82703734"
X-IronPort-AV: E=Sophos;i="6.24,218,1774335600"; d="scan'208";a="82703734"
Received: from orviesa009.jf.intel.com ([10.64.159.149])
 by fmvoesa111.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 22 Jun 2026 00:05:58 -0700
X-CSE-ConnectionGUID: F0sHCg53R5+r8U+Qf2PLIw==
X-CSE-MsgGUID: eIohqRHqRRanmGZYu8N3TQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.24,218,1774335600"; d="scan'208";a="249251605"
Received: from abityuts-desk.ger.corp.intel.com (HELO localhost)
 ([10.245.245.82])
 by orviesa009-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 22 Jun 2026 00:05:46 -0700
From: Jani Nikula <jani.nikula@linux.intel.com>
To: Kory Maincent <kory.maincent@bootlin.com>, Maarten Lankhorst
 <maarten.lankhorst@linux.intel.com>, Maxime Ripard <mripard@kernel.org>,
 Thomas Zimmermann <tzimmermann@suse.de>, David Airlie <airlied@gmail.com>,
 Simona Vetter <simona@ffwll.ch>, Rodrigo Vivi <rodrigo.vivi@intel.com>,
 Joonas Lahtinen <joonas.lahtinen@linux.intel.com>, Tvrtko Ursulin
 <tursulin@ursulin.net>, Andrzej Hajda <andrzej.hajda@intel.com>, Neil
 Armstrong <neil.armstrong@linaro.org>, Robert Foss <rfoss@kernel.org>,
 Laurent Pinchart <Laurent.pinchart@ideasonboard.com>, Jonas Karlman
 <jonas@kwiboo.se>, Jernej Skrabec <jernej.skrabec@gmail.com>, Luca
 Ceresoli <luca.ceresoli@bootlin.com>, Chun-Kuang Hu
 <chunkuang.hu@kernel.org>, Philipp Zabel <p.zabel@pengutronix.de>,
 Matthias Brugger <matthias.bgg@gmail.com>, AngeloGioacchino Del Regno
 <angelogioacchino.delregno@collabora.com>, Dmitry Baryshkov
 <lumag@kernel.org>, Daniel Stone <daniels@collabora.com>
Cc: Thomas Petazzoni <thomas.petazzoni@bootlin.com>, Mark Yacoub
 <markyacoub@google.com>, Sean Paul <seanpaul@google.com>, Manasi Navare
 <navaremanasi@google.com>, Drew Davenport <ddavenport@google.com>, Louis
 Chauvet <louis.chauvet@bootlin.com>, Luca Ceresoli
 <luca.ceresoli@bootlin.com>, dri-devel@lists.freedesktop.org,
 linux-kernel@vger.kernel.org, intel-gfx@lists.freedesktop.org,
 intel-xe@lists.freedesktop.org, linux-mediatek@lists.infradead.org,
 linux-arm-kernel@lists.infradead.org, Kory Maincent
 <kory.maincent@bootlin.com>
Subject: Re: [PATCH RFC v2 1/4] drm: Introduce DisplayPort connector helpers
 with link training state
In-Reply-To: <20260619-feat_link_cap-v2-1-a3dec4c02ad9@bootlin.com>
Organization: Intel Finland Oy - BIC 0357606-4 - c/o Alberga Business Park,
 6 krs Bertel Jungin Aukio 5, 02600 Espoo, Finland
References: <20260619-feat_link_cap-v2-0-a3dec4c02ad9@bootlin.com>
 <20260619-feat_link_cap-v2-1-a3dec4c02ad9@bootlin.com>
Date: Mon, 22 Jun 2026 10:05:42 +0300
Message-ID: <e0cbdae76c30b588af9b801d5025628b54a7d15e@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: quoted-printable
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
X-Rspamd-Action: no action
X-Spamd-Result: default: False [0.19 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	DMARC_POLICY_ALLOW(-0.50)[intel.com,none];
	R_SPF_ALLOW(-0.20)[+ip4:131.252.210.177:c];
	R_DKIM_ALLOW(-0.20)[intel.com:s=Intel];
	MAILLIST(-0.20)[mailman];
	MIME_GOOD(-0.10)[text/plain];
	RWL_MAILSPIKE_GOOD(-0.10)[131.252.210.177:from];
	HAS_LIST_UNSUB(-0.01)[];
	RCPT_COUNT_TWELVE(0.00)[36];
	RCVD_TLS_LAST(0.00)[];
	MIME_TRACE(0.00)[0:+];
	RCVD_COUNT_THREE(0.00)[4];
	FREEMAIL_TO(0.00)[bootlin.com,linux.intel.com,kernel.org,suse.de,gmail.com,ffwll.ch,intel.com,ursulin.net,linaro.org,ideasonboard.com,kwiboo.se,pengutronix.de,collabora.com];
	HAS_ORG_HEADER(0.00)[];
	ARC_NA(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	TO_DN_SOME(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[jani.nikula@linux.intel.com,intel-gfx-bounces@lists.freedesktop.org];
	FROM_HAS_DN(0.00)[];
	DKIM_TRACE(0.00)[intel.com:+];
	ALIAS_RESOLVED(0.00)[];
	TAGGED_RCPT(0.00)[intel-gfx];
	MID_RHS_MATCH_FROMTLD(0.00)[];
	MISSING_XM_UA(0.00)[];
	ASN(0.00)[asn:6366, ipnet:131.252.0.0/16, country:US];
	DBL_BLOCKED_OPENRESOLVER(0.00)[bootlin.com:email,lists.freedesktop.org:from_smtp,intel.com:dkim,intel.com:mid,gabe.freedesktop.org:rdns,gabe.freedesktop.org:helo]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: 45F486AD20C

On Fri, 19 Jun 2026, Kory Maincent <kory.maincent@bootlin.com> wrote:
> Add managed and unmanaged DisplayPort connector initialization helpers,
> drmm_connector_dp_init() and drm_connector_dp_init_with_ddc(), modeled
> after the existing HDMI counterpart drmm_connector_hdmi_init().
>
> These helpers initialize DP-specific connector state and expose link
> training capabilities and state to userspace via sysfs attributes under
> dp_link:
>
>   - source_link_rates_caps: Array of source-supported link rates
>   - source_max_lane_count_caps: Source maximum lane count capability
>   - source_dsc_caps: Source Display Stream Compression support
>   - sink_max_link_rate_caps: Sink maximum link rate capability
>   - sink_max_lane_count_caps: Sink maximum lane count capability
>   - sink_dsc_caps: Sink DSC support
>   - cur_link_rate: Current negotiated link rate
>   - cur_lane_count: Current negotiated lane count
>   - dsc_en: DSC enabled in current link training
>   - max_link_rate: Maximum achievable link rate (limited by source/sink)
>   - max_lane_count: Maximum achievable lane count (limited by source/sink)
>
> Link rates are passed by the driver in deca-kbps, following the DRM
> convention, but exposed to userspace in kbps for clarity.
>
> Additional helpers are provided to manage link capabilities and parameters
> at runtime:
>   - drm_dp_sink_set_link_caps(): Set sink capabilities after DPCD read
>   - drm_dp_sink_reset_link_caps(): Reset sink capabilities on disconnect
>   - drm_dp_set_cur_link_params(): Update current link training parameters
>   - drm_dp_set_max_link_params(): Update maximum achievable parameters
>
> The aim of such development is to guide users to select the most suitable
> DisplayPort connector for their needs. For example, if you have a USB-C
> hub with lesser capabilities than your computer=E2=80=99s native DisplayP=
ort
> connector (such as HBR2 versus HBR3 support), the system could recommend
> connecting high-resolution displays directly to the computer=E2=80=99s po=
rt
> instead of through the hub to ensure optimal performance.
>
> Signed-off-by: Kory Maincent <kory.maincent@bootlin.com>
> ---
>
> Changes in v2:
> - Remove voltage swing and pre-emphasis properties
> - Expose link training state via sysfs dp_link/ group instead of
>   connector properties
> - Rename variables from link_train to link as they relate directly to
>   the link capabilities
> - Add comprehensive sysfs attributes for both source and sink capabilities
> - Add separate helpers for managing sink capabilities and for current and
>   maximum link parameters
> ---
>  drivers/gpu/drm/display/drm_dp_helper.c | 144 ++++++++++++++++++++++++++=
++++++
>  drivers/gpu/drm/drm_connector.c         | 122 +++++++++++++++++++++++++++
>  drivers/gpu/drm/drm_sysfs.c             | 100 ++++++++++++++++++++++
>  include/drm/display/drm_dp_helper.h     |   7 ++
>  include/drm/drm_connector.h             | 105 +++++++++++++++++++++++
>  5 files changed, 478 insertions(+)
>
> diff --git a/drivers/gpu/drm/display/drm_dp_helper.c b/drivers/gpu/drm/di=
splay/drm_dp_helper.c
> index 9c31e14cc413b..bd0e1eb657412 100644
> --- a/drivers/gpu/drm/display/drm_dp_helper.c
> +++ b/drivers/gpu/drm/display/drm_dp_helper.c
> @@ -4900,3 +4900,147 @@ int drm_dp_max_dprx_data_rate(int max_link_rate, =
int max_lanes)
>  				  1000000 * 8);
>  }
>  EXPORT_SYMBOL(drm_dp_max_dprx_data_rate);
> +
> +static int drm_dp_dpcd_read_link_rate_caps(struct drm_dp_aux *aux)
> +{
> +	u8 data;
> +	int ret;
> +
> +	ret =3D drm_dp_dpcd_read_byte(aux, DP_DP13_DPCD_REV + DP_MAIN_LINK_CHAN=
NEL_CODING, &data);
> +	if (ret < 0)
> +		return ret;
> +
> +	if (data & DP_CAP_ANSI_128B132B) {
> +		ret =3D drm_dp_dpcd_read_byte(aux, DP_128B132B_SUPPORTED_LINK_RATES, &=
data);
> +		if (ret < 0)
> +			return ret;
> +
> +		if (data & DP_UHBR20)
> +			return 20000000;
> +		if (data & DP_UHBR13_5)
> +			return 13500000;
> +		if (data & DP_UHBR10)
> +			return 10000000;
> +	}
> +
> +	ret =3D drm_dp_dpcd_read_byte(aux, DP_MAX_LINK_RATE, &data);
> +	if (ret < 0)
> +		return ret;
> +
> +	return data * 270000;
> +}

There are three ways of reporting the sink link rates. DP_MAX_LINK_RATE
is the only one that reports the maximum. The other two can report any
rates. The above doesn't handle DP_SUPPORTED_LINK_RATES.

The drivers need to figure out *all* supported rates. What is the point
of adding a "helper" that reads these DPCD registers but only reports
the max rate? Using this will only mean duplicated reads of the
registers. This may confuse the sinks, as well as the CTS.

This is not a good design.

> +
> +/**
> + * drm_dp_sink_set_link_caps - Set DisplayPort sink link capabilities
> + * @connector: DisplayPort connector
> + * @aux: The DP AUX channel to use
> + *
> + * This function sets the DisplayPort sink (monitor) link training capab=
ilities
> + * for the given connector. These capabilities are typically read from t=
he
> + * sink's DPCD registers during HPD processing.
> + */
> +void drm_dp_sink_set_link_caps(struct drm_connector *connector,
> +			       struct drm_dp_aux *aux)
> +{
> +	u32 lane_count, link_rate;
> +	u8 data;
> +	int ret;
> +
> +	if (!connector)
> +		return;
> +
> +	WARN_ON(!drm_modeset_is_locked(&connector->dev->mode_config.connection_=
mutex));
> +
> +	ret =3D drm_dp_dpcd_read_byte(aux, DP_MAX_LANE_COUNT, &data);
> +	if (ret < 0)
> +		return;
> +
> +	lane_count =3D data & DP_MAX_LANE_COUNT_MASK;
> +
> +	ret =3D drm_dp_dpcd_read_link_rate_caps(aux);
> +	if (ret < 0)
> +		return;
> +
> +	link_rate =3D ret;
> +
> +	ret =3D drm_dp_dpcd_read_byte(aux, DP_DSC_SUPPORT, &data);
> +	if (ret < 0)
> +		return;
> +
> +	connector->dp.sink_max_lane_count_caps =3D lane_count;
> +	connector->dp.sink_max_link_rate_caps =3D link_rate;
> +	connector->dp.sink_dsc_caps =3D ret & DP_DSC_DECOMPRESSION_IS_SUPPORTED;
> +}
> +EXPORT_SYMBOL_GPL(drm_dp_sink_set_link_caps);
> +
> +/**
> + * drm_dp_set_cur_link_params - Set current DisplayPort link parameters
> + * @connector: DisplayPort connector
> + * @link_rate: Current link rate in deca-kbps
> + * @lane_count: Current lane count
> + * @dsc_en: Display Stream Compression enabled
> + *
> + * This function sets the current active DisplayPort link parameters aft=
er
> + * link training has completed. These parameters represent the actual li=
nk
> + * configuration being used for display output.
> + */
> +void drm_dp_set_cur_link_params(struct drm_connector *connector,
> +				u32 link_rate, u32 lane_count, bool dsc_en)
> +{
> +	if (!connector)
> +		return;
> +
> +	WARN_ON(!drm_modeset_is_locked(&connector->dev->mode_config.connection_=
mutex));
> +
> +	/* Convert deca-kbps in kbps */
> +	connector->dp.cur_link_rate =3D link_rate * 10;
> +	connector->dp.cur_lane_count =3D lane_count;
> +	connector->dp.dsc_en =3D dsc_en;
> +}
> +EXPORT_SYMBOL_GPL(drm_dp_set_cur_link_params);
> +
> +/**
> + * drm_dp_set_max_link_params - Set maximum DisplayPort link parameters
> + * @connector: DisplayPort connector
> + * @link_rate: Maximum link rate in kbps
> + * @lane_count: Maximum lane count
> + *
> + * This function sets the maximum achievable DisplayPort link parameters,
> + * which represent the intersection of source and sink capabilities. The=
se
> + * values are the upper bounds for link training attempts.
> + */
> +void drm_dp_set_max_link_params(struct drm_connector *connector, u32 lin=
k_rate,
> +				u32 lane_count)
> +{
> +	if (!connector)
> +		return;
> +
> +	WARN_ON(!drm_modeset_is_locked(&connector->dev->mode_config.connection_=
mutex));
> +
> +	connector->dp.max_link_rate =3D link_rate;
> +	connector->dp.max_lane_count =3D lane_count;
> +}
> +EXPORT_SYMBOL_GPL(drm_dp_set_max_link_params);
> +
> +/**
> + * drm_dp_sink_reset_link_caps - Reset DisplayPort sink capabilities
> + * @connector: DisplayPort connector
> + *
> + * This function resets all DisplayPort sink link capabilities and param=
eters
> + * to their default state. This should be called when a sink is disconne=
cted
> + * to clear stale capability information.
> + */
> +void drm_dp_sink_reset_link_caps(struct drm_connector *connector)
> +{
> +	if (!connector)
> +		return;
> +
> +	WARN_ON(!drm_modeset_is_locked(&connector->dev->mode_config.connection_=
mutex));
> +
> +	drm_dp_set_cur_link_params(connector, 0, 0, false);
> +	drm_dp_set_max_link_params(connector, 0, 0);
> +	connector->dp.sink_max_link_rate_caps =3D 0;
> +	connector->dp.sink_max_lane_count_caps =3D 0;
> +	connector->dp.sink_dsc_caps =3D false;
> +}
> +EXPORT_SYMBOL_GPL(drm_dp_sink_reset_link_caps);
> diff --git a/drivers/gpu/drm/drm_connector.c b/drivers/gpu/drm/drm_connec=
tor.c
> index a5d13b92b665c..259af3240c057 100644
> --- a/drivers/gpu/drm/drm_connector.c
> +++ b/drivers/gpu/drm/drm_connector.c
> @@ -489,6 +489,128 @@ int drm_connector_init_with_ddc(struct drm_device *=
dev,
>  }
>  EXPORT_SYMBOL(drm_connector_init_with_ddc);
>=20=20
> +static int drm_dp_source_set_link_caps(struct drm_connector *connector,
> +				       const struct drm_connector_dp_link_caps *link_caps)
> +{
> +	u32 *_link_rates;
> +
> +	_link_rates =3D devm_kmemdup_array(connector->dev->dev,
> +					 link_caps->link_rates,
> +					 link_caps->nlink_rates,
> +					 sizeof(*link_caps->link_rates),
> +					 GFP_KERNEL);
> +	if (!_link_rates)
> +		return -ENOMEM;
> +
> +	for (int i =3D 0; i < link_caps->nlink_rates; i++)
> +		/* Convert deca-kbps in kbps */
> +		_link_rates[i] *=3D 10;

Why do you have different rates in different places? Ditch the
conversions?

> +
> +	connector->dp.source_link_rates_caps =3D _link_rates;
> +	connector->dp.source_num_link_rates_caps =3D link_caps->nlink_rates;
> +	connector->dp.source_max_lane_count_caps =3D link_caps->nlanes;
> +	connector->dp.source_dsc_caps =3D link_caps->dsc;

Why do you define a struct, and then not use it as a sub-struct in
connector->dp?

> +
> +	return 0;
> +}
> +
> +/**
> + * drmm_connector_dp_init - Init a preallocated DisplayPort connector
> + * @dev: DRM device
> + * @connector: A pointer to the DisplayPort connector to init
> + * @funcs: callbacks for this connector
> + * @dp_link_caps: DisplayPort link training capabilities. The pointer
> + *		  is not kept by the DRM core
> + * @connector_type: user visible type of the connector
> + * @ddc: optional pointer to the associated ddc adapter
> + *
> + * Initialises a preallocated DisplayPort connector. Connectors can be
> + * subclassed as part of driver connector objects.
> + *
> + * Cleanup is automatically handled with a call to
> + * drm_connector_cleanup() in a DRM-managed action.
> + *
> + * The connector structure should be allocated with drmm_kzalloc().
> + *
> + * The @drm_connector_funcs.destroy hook must be NULL.
> + *
> + * Returns:
> + * Zero on success, error code on failure.
> + */
> +int drmm_connector_dp_init(struct drm_device *dev,
> +			   struct drm_connector *connector,
> +			   const struct drm_connector_funcs *funcs,
> +			   const struct drm_connector_dp_link_caps *dp_link_caps,
> +			   int connector_type,
> +			   struct i2c_adapter *ddc)
> +{
> +	int ret;
> +
> +	if (!(connector_type =3D=3D DRM_MODE_CONNECTOR_DisplayPort ||
> +	      connector_type =3D=3D DRM_MODE_CONNECTOR_eDP))
> +		return -EINVAL;
> +
> +	if (!dp_link_caps)
> +		return -EINVAL;
> +
> +	ret =3D drmm_connector_init(dev, connector, funcs, connector_type, ddc);
> +	if (ret)
> +		return ret;
> +
> +	return drm_dp_source_set_link_caps(connector, dp_link_caps);
> +}
> +EXPORT_SYMBOL(drmm_connector_dp_init);
> +
> +/**
> + * drm_connector_dp_init_with_ddc - Init a preallocated DisplayPort conn=
ector
> + * @dev: DRM device
> + * @connector: A pointer to the DisplayPort connector to init
> + * @funcs: callbacks for this connector
> + * @dp_link_caps: DisplayPort link training capabilities. The pointer
> + *		  is not kept by the DRM core
> + * @connector_type: user visible type of the connector
> + * @ddc: optional pointer to the associated ddc adapter
> + *
> + * Initialises a preallocated connector. Connectors should be
> + * subclassed as part of driver connector objects.
> + *
> + * At driver unload time the driver's &drm_connector_funcs.destroy hook
> + * should call drm_connector_cleanup() and free the connector structure.
> + * The connector structure should not be allocated with devm_kzalloc().
> + *
> + * Ensures that the ddc field of the connector is correctly set.
> + *
> + * Note: consider using drmm_connector_dp_init() instead of
> + * drm_connector_dp_init_with_ddc() to let the DRM managed resource
> + * infrastructure take care of cleanup and deallocation.
> + *
> + * Returns:
> + * Zero on success, error code on failure.
> + */
> +int drm_connector_dp_init_with_ddc(struct drm_device *dev,
> +				   struct drm_connector *connector,
> +				   const struct drm_connector_funcs *funcs,
> +				   const struct drm_connector_dp_link_caps *dp_link_caps,
> +				   int connector_type,
> +				   struct i2c_adapter *ddc)
> +{
> +	int ret;
> +
> +	if (!(connector_type =3D=3D DRM_MODE_CONNECTOR_DisplayPort ||
> +	      connector_type =3D=3D DRM_MODE_CONNECTOR_eDP))
> +		return -EINVAL;
> +
> +	if (!dp_link_caps)
> +		return -EINVAL;
> +
> +	ret =3D drm_connector_init_with_ddc(dev, connector, funcs, connector_ty=
pe, ddc);
> +	if (ret)
> +		return ret;
> +
> +	return drm_dp_source_set_link_caps(connector, dp_link_caps);
> +}
> +EXPORT_SYMBOL(drm_connector_dp_init_with_ddc);
> +
>  static void drm_connector_cleanup_action(struct drm_device *dev,
>  					 void *ptr)
>  {
> diff --git a/drivers/gpu/drm/drm_sysfs.c b/drivers/gpu/drm/drm_sysfs.c
> index ef4e923a87284..653fecf23d717 100644
> --- a/drivers/gpu/drm/drm_sysfs.c
> +++ b/drivers/gpu/drm/drm_sysfs.c
> @@ -340,6 +340,95 @@ static const struct attribute_group *connector_dev_g=
roups[] =3D {
>  	NULL
>  };
>=20=20
> +static ssize_t drm_link_rates_show(u32 num_link_rates, const u32 *link_r=
ates, char *buf)
> +{
> +	int size =3D 0;
> +
> +	if (!num_link_rates)
> +		return 0;
> +
> +	size +=3D sysfs_emit_at(buf, size, "%d", link_rates[0]);
> +	for (int i =3D 1; i < num_link_rates; i++)
> +		size +=3D sysfs_emit_at(buf, size, " %d", link_rates[i]);
> +
> +	size +=3D sysfs_emit_at(buf, size, "\n");
> +	return size;
> +}
> +
> +static ssize_t source_link_rates_caps_show(struct device *device,
> +					   struct device_attribute *attr,
> +					   char *buf)
> +{
> +	struct drm_connector *connector =3D to_drm_connector(device);
> +	ssize_t size;
> +
> +	drm_modeset_lock(&connector->dev->mode_config.connection_mutex, NULL);
> +	size =3D drm_link_rates_show(connector->dp.source_num_link_rates_caps,
> +				   connector->dp.source_link_rates_caps, buf);
> +	drm_modeset_unlock(&connector->dev->mode_config.connection_mutex);
> +	return size;
> +}
> +
> +#define DRM_CONNECTOR_DP_ATTR_SHOW_SIMPLE(_name) \
> +static ssize_t _name##_show(struct device *device, \
> +			    struct device_attribute *attr, \
> +			    char *buf) \
> +{ \
> +	struct drm_connector *connector =3D to_drm_connector(device); \
> +	int ret; \
> +	drm_modeset_lock(&connector->dev->mode_config.connection_mutex, NULL); \
> +	if (!connector->dp._name) { \
> +		drm_modeset_unlock(&connector->dev->mode_config.connection_mutex); \
> +		return 0; \
> +	} \
> +	ret =3D sysfs_emit(buf, "%d\n", connector->dp._name); \
> +	drm_modeset_unlock(&connector->dev->mode_config.connection_mutex); \
> +	return ret; \
> +}
> +
> +DRM_CONNECTOR_DP_ATTR_SHOW_SIMPLE(source_max_lane_count_caps);
> +DRM_CONNECTOR_DP_ATTR_SHOW_SIMPLE(source_dsc_caps);
> +DRM_CONNECTOR_DP_ATTR_SHOW_SIMPLE(sink_dsc_caps);
> +DRM_CONNECTOR_DP_ATTR_SHOW_SIMPLE(sink_max_link_rate_caps);
> +DRM_CONNECTOR_DP_ATTR_SHOW_SIMPLE(sink_max_lane_count_caps);
> +DRM_CONNECTOR_DP_ATTR_SHOW_SIMPLE(cur_link_rate);
> +DRM_CONNECTOR_DP_ATTR_SHOW_SIMPLE(cur_lane_count);
> +DRM_CONNECTOR_DP_ATTR_SHOW_SIMPLE(dsc_en);
> +DRM_CONNECTOR_DP_ATTR_SHOW_SIMPLE(max_link_rate);
> +DRM_CONNECTOR_DP_ATTR_SHOW_SIMPLE(max_lane_count);
> +
> +static DEVICE_ATTR_RO(source_link_rates_caps);
> +static DEVICE_ATTR_RO(source_max_lane_count_caps);
> +static DEVICE_ATTR_RO(source_dsc_caps);
> +static DEVICE_ATTR_RO(sink_max_link_rate_caps);
> +static DEVICE_ATTR_RO(sink_max_lane_count_caps);
> +static DEVICE_ATTR_RO(sink_dsc_caps);
> +static DEVICE_ATTR_RO(cur_link_rate);
> +static DEVICE_ATTR_RO(cur_lane_count);
> +static DEVICE_ATTR_RO(dsc_en);
> +static DEVICE_ATTR_RO(max_link_rate);
> +static DEVICE_ATTR_RO(max_lane_count);
> +
> +static struct attribute *connector_dp_link_attrs[] =3D {
> +	&dev_attr_source_link_rates_caps.attr,
> +	&dev_attr_source_max_lane_count_caps.attr,
> +	&dev_attr_source_dsc_caps.attr,
> +	&dev_attr_sink_max_link_rate_caps.attr,
> +	&dev_attr_sink_max_lane_count_caps.attr,
> +	&dev_attr_sink_dsc_caps.attr,
> +	&dev_attr_cur_link_rate.attr,
> +	&dev_attr_cur_lane_count.attr,
> +	&dev_attr_dsc_en.attr,
> +	&dev_attr_max_link_rate.attr,
> +	&dev_attr_max_lane_count.attr,
> +	NULL
> +};
> +
> +static const struct attribute_group connector_dp_link_group =3D {
> +	.name =3D "dp_link",
> +	.attrs =3D connector_dp_link_attrs,
> +};
> +
>  int drm_sysfs_connector_add(struct drm_connector *connector)
>  {
>  	struct drm_device *dev =3D connector->dev;
> @@ -376,6 +465,15 @@ int drm_sysfs_connector_add(struct drm_connector *co=
nnector)
>=20=20
>  	connector->kdev =3D kdev;
>=20=20
> +	if (connector->connector_type =3D=3D DRM_MODE_CONNECTOR_DisplayPort ||
> +	    connector->connector_type =3D=3D DRM_MODE_CONNECTOR_eDP) {
> +		r =3D sysfs_create_group(&connector->kdev->kobj, &connector_dp_link_gr=
oup);
> +		if (r) {
> +			drm_err(dev, "failed to create DP connector sysfs: %d\n", r);
> +			goto err_dp_sysfs;
> +		}
> +	}
> +
>  	if (dev_fwnode(kdev)) {
>  		r =3D component_add(kdev, &typec_connector_ops);
>  		if (r)
> @@ -384,6 +482,8 @@ int drm_sysfs_connector_add(struct drm_connector *con=
nector)
>=20=20
>  	return 0;
>=20=20
> +err_dp_sysfs:
> +	device_del(kdev);
>  err_free:
>  	put_device(kdev);
>  	return r;
> diff --git a/include/drm/display/drm_dp_helper.h b/include/drm/display/dr=
m_dp_helper.h
> index 8c2d77a032f06..e7620ecb2380a 100644
> --- a/include/drm/display/drm_dp_helper.h
> +++ b/include/drm/display/drm_dp_helper.h
> @@ -1031,4 +1031,11 @@ ssize_t drm_dp_vsc_sdp_pack(const struct drm_dp_vs=
c_sdp *vsc, struct dp_sdp *sdp
>  int drm_dp_link_symbol_cycles(int lane_count, int pixels, int dsc_slice_=
count,
>  			      int bpp_x16, int symbol_size, bool is_mst);
>=20=20
> +void drm_dp_sink_set_link_caps(struct drm_connector *connector, struct d=
rm_dp_aux *aux);
> +void drm_dp_sink_reset_link_caps(struct drm_connector *connector);
> +void drm_dp_set_cur_link_params(struct drm_connector *connector, u32 lin=
k_rate,
> +				u32 lane_count, bool dsc_en);
> +void drm_dp_set_max_link_params(struct drm_connector *connector, u32 lin=
k_rate,
> +				u32 lane_count);
> +
>  #endif /* _DRM_DP_HELPER_H_ */
> diff --git a/include/drm/drm_connector.h b/include/drm/drm_connector.h
> index 529755c2e8620..a08b8e9766abe 100644
> --- a/include/drm/drm_connector.h
> +++ b/include/drm/drm_connector.h
> @@ -2003,6 +2003,93 @@ struct drm_connector_cec {
>  	void *data;
>  };
>=20=20
> +/**
> + * struct drm_connector_dp_link_caps - DRM DisplayPort link capabilities
> + */
> +struct drm_connector_dp_link_caps {
> +	/**
> +	 * @nlanes: Maximum number of lanes number supported
> +	 */
> +	u8 nlanes;
> +
> +	/**
> +	 * @nlink_rates: Number of link rates supported
> +	 */
> +	u32 nlink_rates;
> +
> +	/**
> +	 * @link_rates: Array listing the supported link rates in deca-kbps
> +	 */
> +	const u32 *link_rates;

Just make all of the above ints? There's nothing specifically u32 or u8
about any of them. They're just integers.

> +
> +	/**
> +	 * @dsc: Display Stream Compression supported
> +	 */
> +	bool dsc;
> +};
> +
> +/**
> + * struct drm_connector_dp - DRM Connector DisplayPort-related structure
> + */
> +struct drm_connector_dp {
> +	/**
> +	 * @source_link_rates_caps: Array of supported link rates by the
> +	 * source in kbps
> +	 */
> +	const u32 *source_link_rates_caps;
> +	/**
> +	 * @source_num_link_rates_caps: Number of link rates in
> +	 * @source_link_rates_caps array
> +	 */
> +	u32 source_num_link_rates_caps;
> +	/**
> +	 * @source_max_lane_count_caps: Maximum number of lanes supported by
> +	 * the source
> +	 */
> +	u32 source_max_lane_count_caps;
> +	/**
> +	 * @source_dsc_caps: Display Stream Compression capability of the
> +	 * source
> +	 */
> +	bool source_dsc_caps;

Why doesn't the above use a struct?

> +	/**
> +	 * @sink_max_link_rate_caps: Maximum link rate supported by the sink
> +	 * in kbps
> +	 */
> +	u32 sink_max_link_rate_caps;

Why all rates for source, but just one rate for sink? Why is it called
_caps?


> +	/**
> +	 * @sink_max_lane_count_caps: Maximum number of lanes supported by the
> +	 * sink
> +	 */
> +	u32 sink_max_lane_count_caps;
> +	/**
> +	 * @sink_dsc_caps: Display Stream Compression capability of the sink
> +	 */
> +	bool sink_dsc_caps;

Could use the same struct here.

> +	/**
> +	 * @cur_link_rate: Current negotiated link rate in kbps
> +	 */
> +	u32 cur_link_rate;
> +	/**
> +	 * @cur_lane_count: Current negotiated number of lanes
> +	 */
> +	u32 cur_lane_count;
> +	/**
> +	 * @dsc_en: Display Stream Compression enabled status
> +	 */

These should be ints.

> +	bool dsc_en;
> +	/**
> +	 * @max_link_rate: Maximum achievable link rate considering both
> +	 * source and sink capabilities in deca-kbps
> +	 */
> +	u32 max_link_rate;

IMO this should be an intersection of source and sink rates.

> +	/**
> +	 * @max_lane_count: Maximum achievable lane count considering both
> +	 * source and sink capabilities
> +	 */
> +	u32 max_lane_count;

These should be ints.

> +};
> +
>  /**
>   * struct drm_connector - central DRM connector control structure
>   *
> @@ -2426,6 +2513,11 @@ struct drm_connector {
>  	 * @cec: CEC-related data.
>  	 */
>  	struct drm_connector_cec cec;
> +
> +	/**
> +	 * @dp: DisplayPort-related variable and properties.
> +	 */
> +	struct drm_connector_dp dp;
>  };
>=20=20
>  #define obj_to_connector(x) container_of(x, struct drm_connector, base)
> @@ -2458,6 +2550,19 @@ int drmm_connector_hdmi_init(struct drm_device *de=
v,
>  			     struct i2c_adapter *ddc,
>  			     unsigned long supported_formats,
>  			     unsigned int max_bpc);
> +int drm_connector_dp_init_with_ddc(struct drm_device *dev,
> +				   struct drm_connector *connector,
> +				   const struct drm_connector_funcs *funcs,
> +				   const struct drm_connector_dp_link_caps *dp_link_caps,
> +				   int connector_type,
> +				   struct i2c_adapter *ddc);
> +
> +int drmm_connector_dp_init(struct drm_device *dev,
> +			   struct drm_connector *connector,
> +			   const struct drm_connector_funcs *funcs,
> +			   const struct drm_connector_dp_link_caps *dp_link_caps,
> +			   int connector_type,
> +			   struct i2c_adapter *ddc);
>  void drm_connector_attach_edid_property(struct drm_connector *connector);
>  int drm_connector_register(struct drm_connector *connector);
>  int drm_connector_dynamic_register(struct drm_connector *connector);

--=20
Jani Nikula, Intel
