Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 5D9AF4EDB02
	for <lists+intel-gfx@lfdr.de>; Thu, 31 Mar 2022 15:59:19 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 3770910EE8E;
	Thu, 31 Mar 2022 13:59:17 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga14.intel.com (mga14.intel.com [192.55.52.115])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 1FFBA10EE8E
 for <intel-gfx@lists.freedesktop.org>; Thu, 31 Mar 2022 13:59:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1648735156; x=1680271156;
 h=from:to:subject:in-reply-to:references:date:message-id:
 mime-version:content-transfer-encoding;
 bh=85rK6yuqh72TbMshPvVFgzQFeAE1OxQzsgM0AnYDedE=;
 b=ADtthzmvSDo8Cy2VHL/Sa9YjgoA/9ujpu8F/gJbYQul75LTYMfpziqMn
 eFzB/CaXbTfTI1GIwheVVgQ6rYtQJfqjLAvlsw41+L/h3AVEIkagR4stz
 87q/pure79IXKv4ljR9P2ZjZMOj+O6aSXW1kymYFR4WoHlhRzAci0UnfA
 skhcSv00g0YHOJzdeHQ7y8teoPZpuU5Dfak4fP9rUqleTCRdIG8TVLv1b
 HAX9kScKk1TsnkW8xrZ/Pn1wZvdiZc7FbeCL4V0CkZBevqvZscR24eg0f
 CQyfWKK9tHXXfKWY3BePZq7Gt82HMIFh1dxJUJ0HDNX5UrwO6ZVClANed g==;
X-IronPort-AV: E=McAfee;i="6200,9189,10302"; a="260025631"
X-IronPort-AV: E=Sophos;i="5.90,225,1643702400"; d="scan'208";a="260025631"
Received: from orsmga005.jf.intel.com ([10.7.209.41])
 by fmsmga103.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 31 Mar 2022 06:59:15 -0700
X-IronPort-AV: E=Sophos;i="5.90,225,1643702400"; d="scan'208";a="720473098"
Received: from gluca-mobl1.ger.corp.intel.com (HELO localhost)
 ([10.252.48.194])
 by orsmga005-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 31 Mar 2022 06:59:14 -0700
From: Jani Nikula <jani.nikula@linux.intel.com>
To: Ville Syrjala <ville.syrjala@linux.intel.com>,
 intel-gfx@lists.freedesktop.org
In-Reply-To: <20220331112822.11462-12-ville.syrjala@linux.intel.com>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
References: <20220331112822.11462-1-ville.syrjala@linux.intel.com>
 <20220331112822.11462-12-ville.syrjala@linux.intel.com>
Date: Thu, 31 Mar 2022 16:59:11 +0300
Message-ID: <87pmm28bps.fsf@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: quoted-printable
Subject: Re: [Intel-gfx] [PATCH v2 11/11] drm/i915: Allow static DRRS on LVDS
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

On Thu, 31 Mar 2022, Ville Syrjala <ville.syrjala@linux.intel.com> wrote:
> From: Ville Syrj=C3=A4l=C3=A4 <ville.syrjala@linux.intel.com>
>
> Nothing special about static DRRS on LVDS, it's just your
> bog standard modeset. Let's allow it.
>
> Signed-off-by: Ville Syrj=C3=A4l=C3=A4 <ville.syrjala@linux.intel.com>
> ---
>  drivers/gpu/drm/i915/display/intel_lvds.c | 3 ++-
>  1 file changed, 2 insertions(+), 1 deletion(-)
>
> diff --git a/drivers/gpu/drm/i915/display/intel_lvds.c b/drivers/gpu/drm/=
i915/display/intel_lvds.c
> index 73129d21f5e5..e8478161f8b9 100644
> --- a/drivers/gpu/drm/i915/display/intel_lvds.c
> +++ b/drivers/gpu/drm/i915/display/intel_lvds.c
> @@ -968,7 +968,8 @@ void intel_lvds_init(struct drm_i915_private *dev_pri=
v)
>  	intel_connector->edid =3D edid;
>=20=20
>  	/* Try EDID first */
> -	intel_panel_add_edid_fixed_modes(intel_connector, false);
> +	intel_panel_add_edid_fixed_modes(intel_connector,
> +					 dev_priv->vbt.drrs_type !=3D DRRS_TYPE_NONE);

I guess the final question on this, and the previous patch for that
matter, is why would the VBT block your regular modeset between two
different refresh rates?

It does sound like the VBT setting is more about OEM decided policy than
anything else.

Anyway,

Reviewed-by: Jani Nikula <jani.nikula@intel.com>

>=20=20
>  	/* Failed to get EDID, what about VBT? */
>  	if (!intel_panel_preferred_fixed_mode(intel_connector))

--=20
Jani Nikula, Intel Open Source Graphics Center
