Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id 7GsGBuxJRmpfNwsAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Thu, 02 Jul 2026 13:22:20 +0200
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 687416F69D8
	for <lists+intel-gfx@lfdr.de>; Thu, 02 Jul 2026 13:22:19 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=none;
	dmarc=none;
	spf=pass (mail.lfdr.de: domain of intel-gfx-bounces@lists.freedesktop.org designates 131.252.210.177 as permitted sender) smtp.mailfrom=intel-gfx-bounces@lists.freedesktop.org
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id C933110F2E5;
	Thu,  2 Jul 2026 11:22:17 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from coelho.fi (coelho.fi [88.99.146.29])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 8808B10F2F5;
 Thu,  2 Jul 2026 11:22:16 +0000 (UTC)
Received: from [62.183.198.118] (helo=[10.147.29.230])
 by coelho.fi with esmtpsa (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
 (Exim 4.98.2) (envelope-from <luca@coelho.fi>)
 id 1wfFUi-00000001MHd-1mZ9; Thu, 02 Jul 2026 14:22:14 +0300
Message-ID: <c8d3918319b066643df94f63771a6a54b61778cc.camel@coelho.fi>
From: Luca Coelho <luca@coelho.fi>
To: Imre Deak <imre.deak@intel.com>, intel-gfx@lists.freedesktop.org, 
 intel-xe@lists.freedesktop.org
Date: Thu, 02 Jul 2026 14:22:11 +0300
In-Reply-To: <20260701153204.4124150-15-imre.deak@intel.com>
References: <20260701153204.4124150-1-imre.deak@intel.com>
 <20260701153204.4124150-15-imre.deak@intel.com>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
User-Agent: Evolution 3.56.2-9 
MIME-Version: 1.0
X-Spam-Checker-Version: SpamAssassin 4.0.3-r1932428 (2026-03-21) on
 farmhouse.coelho.fi
X-Spam-Level: 
X-Spam-Status: No, score=-2.9 required=5.0 tests=ALL_TRUSTED,BAYES_00
 autolearn=ham autolearn_force=no version=4.0.3-r1932428
Subject: Re: [PATCH v2 14/34] drm/i915/dp: Query max BW config via link_caps
 during mode validation
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
X-Spamd-Result: default: False [-0.61 / 15.00];
	MAILLIST(-0.20)[mailman];
	R_SPF_ALLOW(-0.20)[+ip4:131.252.210.177:c];
	MIME_GOOD(-0.10)[text/plain];
	RWL_MAILSPIKE_GOOD(-0.10)[131.252.210.177:from];
	HAS_LIST_UNSUB(-0.01)[];
	TAGGED_RCPT(0.00)[intel-gfx];
	TO_DN_SOME(0.00)[];
	ARC_NA(0.00)[];
	MIME_TRACE(0.00)[0:+];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	ASN(0.00)[asn:6366, ipnet:131.252.0.0/16, country:US];
	DBL_BLOCKED_OPENRESOLVER(0.00)[lists.freedesktop.org:from_smtp,gabe.freedesktop.org:rdns,gabe.freedesktop.org:helo,intel.com:email];
	MID_RHS_MATCH_FROM(0.00)[];
	R_DKIM_NA(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[luca@coelho.fi,intel-gfx-bounces@lists.freedesktop.org];
	FROM_HAS_DN(0.00)[];
	RCPT_COUNT_THREE(0.00)[3];
	FORGED_SENDER_MAILLIST(0.00)[];
	DMARC_NA(0.00)[coelho.fi];
	RCVD_TLS_LAST(0.00)[];
	ALIAS_RESOLVED(0.00)[];
	RCVD_COUNT_THREE(0.00)[3]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: 687416F69D8

On Wed, 2026-07-01 at 18:31 +0300, Imre Deak wrote:
> Query the maximum link BW configuration during mode validation and MST
> link probing directly from intel_dp_link_caps_get_max_bw_config(),
> instead of using the intel_dp_max_link_rate() and
> intel_dp_max_lane_count() helpers.
>=20
> This makes the max BW link config query uniform across mode validation
> and TBT BW calculation, and allows unexporting the
> intel_dp_max_link_rate()/intel_dp_max_lane_count() helpers.
>=20
> v2: Use the max BW link configuration, instead of the max link limits.
>=20
> Signed-off-by: Imre Deak <imre.deak@intel.com>
> ---
>  drivers/gpu/drm/i915/display/intel_dp.c     | 10 ++++++----
>  drivers/gpu/drm/i915/display/intel_dp.h     |  2 --
>  drivers/gpu/drm/i915/display/intel_dp_mst.c | 16 ++++++++++++----
>  3 files changed, 18 insertions(+), 10 deletions(-)
>=20
> diff --git a/drivers/gpu/drm/i915/display/intel_dp.c b/drivers/gpu/drm/i9=
15/display/intel_dp.c
> index bc333bc9296b2..b10bbbf0f49bf 100644
> --- a/drivers/gpu/drm/i915/display/intel_dp.c
> +++ b/drivers/gpu/drm/i915/display/intel_dp.c
> @@ -354,7 +354,7 @@ static int intel_dp_get_max_common_lane_count(struct =
intel_dp *intel_dp)
>  	return min3(source_max, sink_max, lane_max);
>  }
> =20
> -int intel_dp_max_lane_count(struct intel_dp *intel_dp)
> +static int intel_dp_max_lane_count(struct intel_dp *intel_dp)
>  {
>  	struct intel_dp_link_caps *link_caps =3D intel_dp->link.caps;
>  	struct intel_dp_link_config max_link_limits;
> @@ -1331,6 +1331,7 @@ intel_dp_mode_valid_format(struct intel_connector *=
connector,
>  	struct intel_dp *intel_dp =3D intel_attached_dp(connector);
>  	enum intel_output_format output_format;
>  	int max_rate, mode_rate, max_lanes, max_link_clock;
> +	struct intel_dp_link_config max_bw_config;
>  	u16 dsc_max_compressed_bpp =3D 0;
>  	enum drm_mode_status status;
>  	bool dsc =3D false;
> @@ -1343,8 +1344,9 @@ intel_dp_mode_valid_format(struct intel_connector *=
connector,
> =20
>  	output_format =3D intel_dp_output_format(connector, sink_format);
> =20
> -	max_link_clock =3D intel_dp_max_link_rate(intel_dp);
> -	max_lanes =3D intel_dp_max_lane_count(intel_dp);
> +	intel_dp_link_caps_get_max_bw_config(intel_dp->link.caps, &max_bw_confi=
g);
> +	max_link_clock =3D max_bw_config.rate;
> +	max_lanes =3D max_bw_config.lane_count;
> =20
>  	max_rate =3D intel_dp_max_link_data_rate(intel_dp, max_link_clock, max_=
lanes);
> =20
> @@ -1538,7 +1540,7 @@ static void intel_dp_print_rates(struct intel_dp *i=
ntel_dp)
>  	intel_dp_link_caps_print_common_rates(intel_dp->link.caps);
>  }
> =20
> -int
> +static int
>  intel_dp_max_link_rate(struct intel_dp *intel_dp)
>  {
>  	struct intel_dp_link_caps *link_caps =3D intel_dp->link.caps;
> diff --git a/drivers/gpu/drm/i915/display/intel_dp.h b/drivers/gpu/drm/i9=
15/display/intel_dp.h
> index 13872b8c4975e..9564369ea4852 100644
> --- a/drivers/gpu/drm/i915/display/intel_dp.h
> +++ b/drivers/gpu/drm/i915/display/intel_dp.h
> @@ -111,8 +111,6 @@ void intel_dp_mst_suspend(struct intel_display *displ=
ay);
>  void intel_dp_mst_resume(struct intel_display *display);
>  int intel_dp_rate_limit_len(const int *rates, int len, int max_rate);
>  int intel_dp_max_source_lane_count(struct intel_digital_port *dig_port);
> -int intel_dp_max_link_rate(struct intel_dp *intel_dp);
> -int intel_dp_max_lane_count(struct intel_dp *intel_dp);
>  int intel_dp_config_required_rate(const struct intel_crtc_state *crtc_st=
ate);
>  int intel_dp_rate_select(struct intel_dp *intel_dp, int rate);
>  int intel_dp_rate_index(const int *rates, int len, int rate);
> diff --git a/drivers/gpu/drm/i915/display/intel_dp_mst.c b/drivers/gpu/dr=
m/i915/display/intel_dp_mst.c
> index ecc90e8faee11..e113c9e60e67d 100644
> --- a/drivers/gpu/drm/i915/display/intel_dp_mst.c
> +++ b/drivers/gpu/drm/i915/display/intel_dp_mst.c
> @@ -47,6 +47,7 @@
>  #include "intel_display_wa.h"
>  #include "intel_dp.h"
>  #include "intel_dp_hdcp.h"
> +#include "intel_dp_link_caps.h"
>  #include "intel_dp_link_training.h"
>  #include "intel_dp_mst.h"
>  #include "intel_dp_test.h"
> @@ -1476,6 +1477,7 @@ mst_connector_mode_valid_ctx(struct drm_connector *=
_connector,
>  	unsigned long bw_overhead_flags =3D
>  		DRM_DP_BW_OVERHEAD_MST | DRM_DP_BW_OVERHEAD_SSC_REF_CLK;
>  	int min_link_bpp_x16 =3D fxp_q4_from_int(18);
> +	struct intel_dp_link_config max_bw_config;
>  	static bool supports_dsc;
>  	int ret;
>  	bool dsc =3D false;
> @@ -1508,8 +1510,9 @@ mst_connector_mode_valid_ctx(struct drm_connector *=
_connector,
>  		min_link_bpp_x16 =3D intel_dp_compute_min_compressed_bpp_x16(connector=
,
>  									   INTEL_OUTPUT_FORMAT_RGB);
> =20
> -	max_link_clock =3D intel_dp_max_link_rate(intel_dp);
> -	max_lanes =3D intel_dp_max_lane_count(intel_dp);
> +	intel_dp_link_caps_get_max_bw_config(intel_dp->link.caps, &max_bw_confi=
g);
> +	max_link_clock =3D max_bw_config.rate;
> +	max_lanes =3D max_bw_config.lane_count;
> =20
>  	max_rate =3D intel_dp_max_link_data_rate(intel_dp,
>  					       max_link_clock, max_lanes);
> @@ -2135,14 +2138,19 @@ bool intel_dp_mst_crtc_needs_modeset(struct intel=
_atomic_state *state,
>   */
>  void intel_dp_mst_prepare_probe(struct intel_dp *intel_dp)
>  {
> -	int link_rate =3D intel_dp_max_link_rate(intel_dp);
> -	int lane_count =3D intel_dp_max_lane_count(intel_dp);
> +	struct intel_dp_link_config max_bw_config;
> +	int link_rate;
> +	int lane_count;
>  	u8 rate_select;
>  	u8 link_bw;
> =20
>  	if (intel_dp->link.active)
>  		return;
> =20
> +	intel_dp_link_caps_get_max_bw_config(intel_dp->link.caps, &max_bw_confi=
g);
> +	link_rate =3D max_bw_config.rate;
> +	lane_count =3D max_bw_config.lane_count;
> +
>  	if (intel_mst_probed_link_params_valid(intel_dp, link_rate, lane_count)=
)
>  		return;
> =20

Reviewed-by: Luca Coelho <luciano.coelho@intel.com>

--
Cheers,
Luca.
