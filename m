Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 6BB18140BFD
	for <lists+intel-gfx@lfdr.de>; Fri, 17 Jan 2020 15:04:22 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 0B1A36F584;
	Fri, 17 Jan 2020 14:04:20 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga05.intel.com (mga05.intel.com [192.55.52.43])
 by gabe.freedesktop.org (Postfix) with ESMTPS id D72A76F584
 for <intel-gfx@lists.freedesktop.org>; Fri, 17 Jan 2020 14:04:18 +0000 (UTC)
X-Amp-Result: UNKNOWN
X-Amp-Original-Verdict: FILE UNKNOWN
X-Amp-File-Uploaded: False
Received: from orsmga008.jf.intel.com ([10.7.209.65])
 by fmsmga105.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 17 Jan 2020 06:04:17 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.70,330,1574150400"; d="scan'208";a="218916560"
Received: from stinkbox.fi.intel.com (HELO stinkbox) ([10.237.72.174])
 by orsmga008.jf.intel.com with SMTP; 17 Jan 2020 06:04:14 -0800
Received: by stinkbox (sSMTP sendmail emulation);
 Fri, 17 Jan 2020 16:04:14 +0200
Date: Fri, 17 Jan 2020 16:04:14 +0200
From: Ville =?iso-8859-1?Q?Syrj=E4l=E4?= <ville.syrjala@linux.intel.com>
To: Lee Shawn C <shawn.c.lee@intel.com>
Message-ID: <20200117140414.GL13686@intel.com>
References: <20200117134717.2703-1-shawn.c.lee@intel.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200117134717.2703-1-shawn.c.lee@intel.com>
X-Patchwork-Hint: comment
User-Agent: Mutt/1.10.1 (2018-07-13)
Subject: Re: [Intel-gfx] [PATCH] drm/i915: Check require bandwidth did not
 exceed LSPCON limitation
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
Cc: Cooper Chiou <cooper.chiou@intel.com>, intel-gfx@lists.freedesktop.org,
 Sam McNally <sammc@google.com>
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Fri, Jan 17, 2020 at 09:47:17PM +0800, Lee Shawn C wrote:
> While mode setting, driver would calculate mode rate based on
> resolution and bpp. And choose the best bpp that did not exceed
> DP bandwidtd.
> =

> But LSPCON had more restriction due to it convert DP to HDMI.
> Driver should respect HDMI's bandwidth limitation if LSPCON
> was active. This change would ignore the bpp when its required
> output bandwidth already over HDMI 2.0 or 1.4 spec.
> =

> Cc: Imre Deak <imre.deak@intel.com>
> Cc: Ville Syrj=E4l=E4 <ville.syrjala@linux.intel.com>
> Cc: Maarten Lankhorst <maarten.lankhorst@linux.intel.com>
> Cc: Jani Nikula <jani.nikula@linux.intel.com>
> Cc: Cooper Chiou <cooper.chiou@intel.com>
> Cc: Sam McNally <sammc@google.com>
> Signed-off-by: Lee Shawn C <shawn.c.lee@intel.com>
> ---
>  drivers/gpu/drm/i915/display/intel_dp.c     | 45 +++++++++++++++++++++
>  drivers/gpu/drm/i915/display/intel_lspcon.c |  5 +++
>  drivers/gpu/drm/i915/display/intel_lspcon.h |  1 +
>  3 files changed, 51 insertions(+)
> =

> diff --git a/drivers/gpu/drm/i915/display/intel_dp.c b/drivers/gpu/drm/i9=
15/display/intel_dp.c
> index c7424e2a04a3..c27d3e7ac219 100644
> --- a/drivers/gpu/drm/i915/display/intel_dp.c
> +++ b/drivers/gpu/drm/i915/display/intel_dp.c
> @@ -1976,6 +1976,47 @@ static int intel_dp_output_bpp(const struct intel_=
crtc_state *crtc_state, int bp
>  	return bpp;
>  }
>  =

> +static bool
> +intel_dp_lspcon_exceed_bandwidth_limitation(struct intel_dp *intel_dp,
> +					    struct intel_crtc_state *pipe_config,
> +					    int bpp)
> +{
> +	struct intel_lspcon *lspcon =3D dp_to_lspcon(intel_dp);
> +	struct intel_connector *connector =3D intel_dp->attached_connector;
> +	const struct drm_display_info *info =3D &connector->base.display_info;
> +	enum drm_lspcon_mode lspcon_current_mode =3D lspcon_get_mode(lspcon);
> +	const int pcon_mode_max_tmds_clock =3D 600000;
> +	const int ls_mode_max_tmds_clock   =3D 340000;
> +	int mode_rate, max_tmds_clock =3D pcon_mode_max_tmds_clock;
> +
> +	if (lspcon->active) {
> +		switch (bpp) {
> +		case 36:
> +			mode_rate =3D pipe_config->hw.adjusted_mode.crtc_clock * 3 / 2;
> +			break;
> +		case 30:
> +			mode_rate =3D pipe_config->hw.adjusted_mode.crtc_clock * 5 / 4;
> +			break;
> +		case 24:
> +		default:
> +			mode_rate =3D pipe_config->hw.adjusted_mode.crtc_clock;
> +			break;
> +		}
> +
> +		if (lspcon_current_mode =3D=3D DRM_LSPCON_MODE_LS)
> +			max_tmds_clock =3D ls_mode_max_tmds_clock;
> +
> +		if (info->max_tmds_clock)
> +			max_tmds_clock =3D min(max_tmds_clock,
> +					     info->max_tmds_clock);
> +
> +		if (mode_rate > max_tmds_clock)
> +			return true;
> +	}
> +
> +	return false;
> +}

That's rather ad-hoc. I've been cooking a much more generic solution to
deal with all kinds of DP DFPs. It should handle the TMDS limits for
HDMI/DVI DFPs (and on board LSPCON too IIRC), as well as hooking up
YUV 444->420 conversion if supported by the dongle (though those old
on board LSPCON chips do that differently so shouldn't affect them).

Rebased version available here:
git://github.com/vsyrjala/linux.git dp_downstream_ports_4

One caveat is that I've not re-tested it in maybe half a year,
so not entirely sure it still works 100%.

-- =

Ville Syrj=E4l=E4
Intel
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
