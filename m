Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 4C03D4E94CB
	for <lists+intel-gfx@lfdr.de>; Mon, 28 Mar 2022 13:34:27 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id C618210E18D;
	Mon, 28 Mar 2022 11:34:24 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 590A610E18D
 for <intel-gfx@lists.freedesktop.org>; Mon, 28 Mar 2022 11:34:24 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1648467264; x=1680003264;
 h=from:to:subject:in-reply-to:references:date:message-id:
 mime-version:content-transfer-encoding;
 bh=F6PvwIsATkes1nhraHzb0+2qTYIdqq7qLC/kWct4OGY=;
 b=SiapLspycTybf9oAaTGJ/jgEKrzPLX8EB494gRQZUmsuWEy4COVBZQgW
 balq+pc2VUx9A1FIpvElk3iHl5+jMZ7ZxIlaW4kKNNKwE/nKicmp6ZY3c
 TGli+CI7TZFx0htQLd4V2GDG3hhlkWuWr9pt24Zl8MN2q+xkHjvAowmkm
 YsVMLltJyrDmW+F56LxDoPYV13lUTHVM2YG2sDFllYsOm/jqaThfT8CJf
 kKUoFVa38HSjJCRUOR3AvCiv36s2VAXAnsw3NGGHf7+SqFDuwPx/ZjkLt
 FOr3LtUkafp3l5FiD2yO7aESbRuI5+8G03T+OJbTIUAw3+ZDNXOhuo/v2 g==;
X-IronPort-AV: E=McAfee;i="6200,9189,10299"; a="283864227"
X-IronPort-AV: E=Sophos;i="5.90,217,1643702400"; d="scan'208";a="283864227"
Received: from orsmga003.jf.intel.com ([10.7.209.27])
 by fmsmga101.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 28 Mar 2022 04:34:23 -0700
X-IronPort-AV: E=Sophos;i="5.90,217,1643702400"; d="scan'208";a="502481199"
Received: from aysivtso-mobl.ccr.corp.intel.com (HELO localhost)
 ([10.252.62.56])
 by orsmga003-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 28 Mar 2022 04:34:22 -0700
From: Jani Nikula <jani.nikula@linux.intel.com>
To: Ville Syrjala <ville.syrjala@linux.intel.com>,
 intel-gfx@lists.freedesktop.org
In-Reply-To: <20220323182935.4701-9-ville.syrjala@linux.intel.com>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
References: <20220323182935.4701-1-ville.syrjala@linux.intel.com>
 <20220323182935.4701-9-ville.syrjala@linux.intel.com>
Date: Mon, 28 Mar 2022 14:34:13 +0300
Message-ID: <87lewue2fe.fsf@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: quoted-printable
Subject: Re: [Intel-gfx] [PATCH 8/9] drm/i915: Use
 intel_panel_edid_fixed_mode() for sdvo
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

On Wed, 23 Mar 2022, Ville Syrjala <ville.syrjala@linux.intel.com> wrote:
> From: Ville Syrj=C3=A4l=C3=A4 <ville.syrjala@linux.intel.com>
>
> Despite the name intel_panel_edid_fixed_mode() doesn't actually
> look in the EDID. All it does is dig out the preferred mode from
> the connector's probed_modes list. That is also what the SDVO
> LVDS code is doing by hand. Let's just call
> intel_panel_edid_fixed_mode().
>
> The slight difference in behaviour is that the SDVO code currently
> bails if it can't find the preferred mode, whereas
> intel_panel_edid_fixed_mode() will fall back to just returning
> the first mode from the probed_modes list. Can't imagine why
> such an LVDS panel would even exist, and also why would you have
> a panel and be expected to not use it? So I'm going to assume
> this is a total non-issue.
>
> Signed-off-by: Ville Syrj=C3=A4l=C3=A4 <ville.syrjala@linux.intel.com>

Reviewed-by: Jani Nikula <jani.nikula@intel.com>

> ---
>  drivers/gpu/drm/i915/display/intel_sdvo.c | 13 +++----------
>  1 file changed, 3 insertions(+), 10 deletions(-)
>
> diff --git a/drivers/gpu/drm/i915/display/intel_sdvo.c b/drivers/gpu/drm/=
i915/display/intel_sdvo.c
> index 27b3d3a79989..62e2e8b4358c 100644
> --- a/drivers/gpu/drm/i915/display/intel_sdvo.c
> +++ b/drivers/gpu/drm/i915/display/intel_sdvo.c
> @@ -2886,7 +2886,7 @@ intel_sdvo_lvds_init(struct intel_sdvo *intel_sdvo,=
 int device)
>  	struct drm_connector *connector;
>  	struct intel_connector *intel_connector;
>  	struct intel_sdvo_connector *intel_sdvo_connector;
> -	struct drm_display_mode *mode;
> +	struct drm_display_mode *fixed_mode;
>=20=20
>  	DRM_DEBUG_KMS("initialising LVDS device %d\n", device);
>=20=20
> @@ -2917,16 +2917,9 @@ intel_sdvo_lvds_init(struct intel_sdvo *intel_sdvo=
, int device)
>=20=20
>  	intel_sdvo_get_lvds_modes(connector);
>=20=20
> -	list_for_each_entry(mode, &connector->probed_modes, head) {
> -		if (mode->type & DRM_MODE_TYPE_PREFERRED) {
> -			struct drm_display_mode *fixed_mode =3D
> -				drm_mode_duplicate(connector->dev, mode);
> +	fixed_mode =3D intel_panel_edid_fixed_mode(intel_connector);
>=20=20
> -			intel_panel_init(intel_connector,
> -					 fixed_mode, NULL);
> -			break;
> -		}
> -	}
> +	intel_panel_init(intel_connector, fixed_mode, NULL);
>=20=20
>  	if (!intel_panel_preferred_fixed_mode(intel_connector))
>  		goto err;

--=20
Jani Nikula, Intel Open Source Graphics Center
