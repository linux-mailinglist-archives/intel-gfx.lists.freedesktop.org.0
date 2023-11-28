Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id E88BB7FB9FC
	for <lists+intel-gfx@lfdr.de>; Tue, 28 Nov 2023 13:22:32 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id E9EBB10E4F6;
	Tue, 28 Nov 2023 12:22:29 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.55.52.120])
 by gabe.freedesktop.org (Postfix) with ESMTPS id A6D1410E4F6
 for <intel-gfx@lists.freedesktop.org>; Tue, 28 Nov 2023 12:22:28 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1701174148; x=1732710148;
 h=from:to:subject:in-reply-to:references:date:message-id:
 mime-version:content-transfer-encoding;
 bh=4VK2d8pjni5lNVRWQgSLJaQEda8yumLj2fiddAM6pbk=;
 b=kmdLdFwaK1dC1LR9c/t3rU+Hh5UPg5PrphJnxrI0zHUhrml7xLErWT/h
 J2OZk7p6swAuyYPMKKFqWDxhKs/12+xWJZ7gT91GIYkGeirosjCXAiJPs
 n+5YQJIeg/4qLGYbD7oMrr/ZJX4Szl7gh86VHac1AUeZ0OhQEAs6nE8lE
 wSEpYzpD8E4IbPCrPHo70zFxD7KXgvYo8R5ux3cAb9tv5n+1o/Z02mT2Z
 AO0e37UQtrBIA3uFBMahUYqeTdSZ/wevxj7SZCWE9yDzANgZ30lcTKWtb
 2hUEy/bkurDtmqfHNpekh85e1eK1M3o0Jl8iJLZyCR5+9cPsVxERCt2Qr g==;
X-IronPort-AV: E=McAfee;i="6600,9927,10907"; a="391786113"
X-IronPort-AV: E=Sophos;i="6.04,233,1695711600"; d="scan'208";a="391786113"
Received: from orsmga004.jf.intel.com ([10.7.209.38])
 by fmsmga104.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 28 Nov 2023 04:22:27 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10907"; a="892065716"
X-IronPort-AV: E=Sophos;i="6.04,233,1695711600"; d="scan'208";a="892065716"
Received: from mravivx-mobl.ger.corp.intel.com (HELO localhost)
 ([10.252.42.57])
 by orsmga004-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 28 Nov 2023 04:22:26 -0800
From: Jani Nikula <jani.nikula@linux.intel.com>
To: Ville Syrjala <ville.syrjala@linux.intel.com>,
 intel-gfx@lists.freedesktop.org
In-Reply-To: <20231127145028.4899-1-ville.syrjala@linux.intel.com>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
References: <20231127145028.4899-1-ville.syrjala@linux.intel.com>
Date: Tue, 28 Nov 2023 14:22:23 +0200
Message-ID: <8734wq83uo.fsf@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: quoted-printable
Subject: Re: [Intel-gfx] [PATCH 1/4] drm/i915: Skip some timing checks on
 BXT/GLK DSI transcoders
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

On Mon, 27 Nov 2023, Ville Syrjala <ville.syrjala@linux.intel.com> wrote:
> From: Ville Syrj=C3=A4l=C3=A4 <ville.syrjala@linux.intel.com>
>
> Apparently some BXT/GLK systems have DSI panels whose timings
> don't agree with the normal cpu transcoder hblank>=3D32 limitation.
> This is perhaps fine as there are no specific hblank/etc. limits
> listed for the BXT/GLK DSI transcoders.
>
> Move those checks out from the global intel_mode_valid() into
> into connector specific .mode_valid() hooks, skipping BXT/GLK
> DSI connectors. We'll leave the basic [hv]display/[hv]total
> checks in intel_mode_valid() as those seem like sensible upper
> limits regardless of the transcoder used.
>
> Closes: https://gitlab.freedesktop.org/drm/intel/-/issues/9720
> Fixes: 8f4b1068e7fc ("drm/i915: Check some transcoder timing minimum limi=
ts")
> Signed-off-by: Ville Syrj=C3=A4l=C3=A4 <ville.syrjala@linux.intel.com>
> ---
>  drivers/gpu/drm/i915/display/icl_dsi.c       |  7 +++++++
>  drivers/gpu/drm/i915/display/intel_crt.c     |  5 +++++
>  drivers/gpu/drm/i915/display/intel_display.c | 10 ++++++++++
>  drivers/gpu/drm/i915/display/intel_display.h |  3 +++
>  drivers/gpu/drm/i915/display/intel_dp.c      |  4 ++++
>  drivers/gpu/drm/i915/display/intel_dp_mst.c  |  4 ++++
>  drivers/gpu/drm/i915/display/intel_dvo.c     |  6 ++++++
>  drivers/gpu/drm/i915/display/intel_hdmi.c    |  4 ++++
>  drivers/gpu/drm/i915/display/intel_lvds.c    |  5 +++++
>  drivers/gpu/drm/i915/display/intel_sdvo.c    |  8 +++++++-
>  drivers/gpu/drm/i915/display/intel_tv.c      |  8 +++++++-
>  drivers/gpu/drm/i915/display/vlv_dsi.c       | 18 +++++++++++++++++-
>  12 files changed, 79 insertions(+), 3 deletions(-)
>
> diff --git a/drivers/gpu/drm/i915/display/icl_dsi.c b/drivers/gpu/drm/i91=
5/display/icl_dsi.c
> index 481fcb650850..ac456a2275db 100644
> --- a/drivers/gpu/drm/i915/display/icl_dsi.c
> +++ b/drivers/gpu/drm/i915/display/icl_dsi.c
> @@ -1440,6 +1440,13 @@ static void gen11_dsi_post_disable(struct intel_at=
omic_state *state,
>  static enum drm_mode_status gen11_dsi_mode_valid(struct drm_connector *c=
onnector,
>  						 struct drm_display_mode *mode)
>  {
> +	struct drm_i915_private *i915 =3D to_i915(connector->dev);
> +	enum drm_mode_status status;
> +
> +	status =3D intel_cpu_transcoder_mode_valid(i915, mode);
> +	if (status !=3D MODE_OK)
> +		return status;
> +
>  	/* FIXME: DSC? */
>  	return intel_dsi_mode_valid(connector, mode);
>  }
> diff --git a/drivers/gpu/drm/i915/display/intel_crt.c b/drivers/gpu/drm/i=
915/display/intel_crt.c
> index 0e33a0523a75..abaacea5c2cc 100644
> --- a/drivers/gpu/drm/i915/display/intel_crt.c
> +++ b/drivers/gpu/drm/i915/display/intel_crt.c
> @@ -348,8 +348,13 @@ intel_crt_mode_valid(struct drm_connector *connector,
>  	struct drm_device *dev =3D connector->dev;
>  	struct drm_i915_private *dev_priv =3D to_i915(dev);
>  	int max_dotclk =3D dev_priv->max_dotclk_freq;
> +	enum drm_mode_status status;
>  	int max_clock;
>=20=20
> +	status =3D intel_cpu_transcoder_mode_valid(dev_priv, mode);
> +	if (status !=3D MODE_OK)
> +		return status;
> +
>  	if (mode->flags & DRM_MODE_FLAG_DBLSCAN)
>  		return MODE_NO_DBLESCAN;
>=20=20
> diff --git a/drivers/gpu/drm/i915/display/intel_display.c b/drivers/gpu/d=
rm/i915/display/intel_display.c
> index 5cf162628b95..23b077f43614 100644
> --- a/drivers/gpu/drm/i915/display/intel_display.c
> +++ b/drivers/gpu/drm/i915/display/intel_display.c
> @@ -7734,6 +7734,16 @@ enum drm_mode_status intel_mode_valid(struct drm_d=
evice *dev,
>  	    mode->vtotal > vtotal_max)
>  		return MODE_V_ILLEGAL;
>=20=20
> +	return MODE_OK;
> +}
> +
> +enum drm_mode_status intel_cpu_transcoder_mode_valid(struct drm_i915_pri=
vate *dev_priv,
> +						     const struct drm_display_mode *mode)
> +{

Overall the patch looks fine, even if it's a bit meh we have to
duplicate the calls so much. No way around that I guess.

Reviewed-by: Jani Nikula <jani.nikula@intel.com>

But please explain the intel_cpu_transcoder_mode_valid() naming. I'm not
sure I follow.



--=20
Jani Nikula, Intel
