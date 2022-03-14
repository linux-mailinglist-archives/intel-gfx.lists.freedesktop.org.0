Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 080D84D7EEB
	for <lists+intel-gfx@lfdr.de>; Mon, 14 Mar 2022 10:44:32 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 6BAA110E191;
	Mon, 14 Mar 2022 09:44:30 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga05.intel.com (mga05.intel.com [192.55.52.43])
 by gabe.freedesktop.org (Postfix) with ESMTPS id D730689FF6
 for <intel-gfx@lists.freedesktop.org>; Mon, 14 Mar 2022 09:44:28 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1647251068; x=1678787068;
 h=from:to:subject:in-reply-to:references:date:message-id:
 mime-version:content-transfer-encoding;
 bh=JZfJImN47tHFoGofpQR/5OhhEi1Z5xaUi5at+n7OUiI=;
 b=bjyvDTBHn8IbxGloRQC7qh5KKUMVadiiJ9QQ0eePbDecz+FgumwFrwEy
 dT8MrH1B+7kyah+LpPv8O12PaBrBEQNKvIciv1Q57JUjQfjaH+X1omrf5
 skQ+/Ki33yNOEqeI1I5FvdfCcyyJnKrUjdwl21Y83e+nq3lACDLU8qB4W
 wTEQOWjjfcpK2OGqg6xyld/nHKfVK7tYXAh7TVLVlAVVPWSuIaHNc5q+v
 kABctTTTb5PtdURdjfKOo68W9/GQehmbcvXkCpyN7gf4KtPPVnHFR413f
 P83aQ/TqNL3iVTyKu36OvXKitnfxHGEL3jwrfeLgStGesiCLrtaAqfQzq Q==;
X-IronPort-AV: E=McAfee;i="6200,9189,10285"; a="342406914"
X-IronPort-AV: E=Sophos;i="5.90,180,1643702400"; d="scan'208";a="342406914"
Received: from orsmga008.jf.intel.com ([10.7.209.65])
 by fmsmga105.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 14 Mar 2022 02:44:28 -0700
X-IronPort-AV: E=Sophos;i="5.90,180,1643702400"; d="scan'208";a="556335243"
Received: from vmanav-mobl.ger.corp.intel.com (HELO localhost) ([10.252.55.47])
 by orsmga008-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 14 Mar 2022 02:44:26 -0700
From: Jani Nikula <jani.nikula@linux.intel.com>
To: Ville Syrjala <ville.syrjala@linux.intel.com>,
 intel-gfx@lists.freedesktop.org
In-Reply-To: <20220311172428.14685-3-ville.syrjala@linux.intel.com>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
References: <20220311172428.14685-1-ville.syrjala@linux.intel.com>
 <20220311172428.14685-3-ville.syrjala@linux.intel.com>
Date: Mon, 14 Mar 2022 11:44:23 +0200
Message-ID: <87ee34x408.fsf@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: quoted-printable
Subject: Re: [Intel-gfx] [PATCH v2 02/16] drm/i915/sdvo: Passt the requesed
 mode to intel_sdvo_create_preferred_input_timing()
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

On Fri, 11 Mar 2022, Ville Syrjala <ville.syrjala@linux.intel.com> wrote:
> From: Ville Syrj=C3=A4l=C3=A4 <ville.syrjala@linux.intel.com>
>
> We want to stop using connector->panel.fixed_mode directtly.
> In order to look it up in the future we'll need to have the
> requested mode around, so pass that in fully (instead of just
> passing bits of it).
>
> Signed-off-by: Ville Syrj=C3=A4l=C3=A4 <ville.syrjala@linux.intel.com>

Typo in subject.

Reviewed-by: Jani Nikula <jani.nikula@intel.com>

> ---
>  drivers/gpu/drm/i915/display/intel_sdvo.c | 18 +++++++-----------
>  1 file changed, 7 insertions(+), 11 deletions(-)
>
> diff --git a/drivers/gpu/drm/i915/display/intel_sdvo.c b/drivers/gpu/drm/=
i915/display/intel_sdvo.c
> index 76e1188b01d4..129f6619c3a1 100644
> --- a/drivers/gpu/drm/i915/display/intel_sdvo.c
> +++ b/drivers/gpu/drm/i915/display/intel_sdvo.c
> @@ -783,24 +783,22 @@ static bool intel_sdvo_get_input_timing(struct inte=
l_sdvo *intel_sdvo,
>  static bool
>  intel_sdvo_create_preferred_input_timing(struct intel_sdvo *intel_sdvo,
>  					 struct intel_sdvo_connector *intel_sdvo_connector,
> -					 u16 clock,
> -					 u16 width,
> -					 u16 height)
> +					 const struct drm_display_mode *mode)
>  {
>  	struct intel_sdvo_preferred_input_timing_args args;
>=20=20
>  	memset(&args, 0, sizeof(args));
> -	args.clock =3D clock;
> -	args.width =3D width;
> -	args.height =3D height;
> +	args.clock =3D mode->clock / 10;
> +	args.width =3D mode->hdisplay;
> +	args.height =3D mode->vdisplay;
>  	args.interlace =3D 0;

Nitpick, the memset + member init looks like it really wants to be a
local variable init with designated initializers. But not really part of
this set.

>=20=20
>  	if (IS_LVDS(intel_sdvo_connector)) {
>  		const struct drm_display_mode *fixed_mode =3D
>  			intel_sdvo_connector->base.panel.fixed_mode;
>=20=20
> -		if (fixed_mode->hdisplay !=3D width ||
> -		    fixed_mode->vdisplay !=3D height)
> +		if (fixed_mode->hdisplay !=3D args.width ||
> +		    fixed_mode->vdisplay !=3D args.height)
>  			args.scaled =3D 1;
>  	}
>=20=20
> @@ -1236,9 +1234,7 @@ intel_sdvo_get_preferred_input_mode(struct intel_sd=
vo *intel_sdvo,
>=20=20
>  	if (!intel_sdvo_create_preferred_input_timing(intel_sdvo,
>  						      intel_sdvo_connector,
> -						      mode->clock / 10,
> -						      mode->hdisplay,
> -						      mode->vdisplay))
> +						      mode))
>  		return false;
>=20=20
>  	if (!intel_sdvo_get_preferred_input_timing(intel_sdvo,

--=20
Jani Nikula, Intel Open Source Graphics Center
