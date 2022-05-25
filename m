Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 5D3905338B6
	for <lists+intel-gfx@lfdr.de>; Wed, 25 May 2022 10:44:12 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id BAD0E10E531;
	Wed, 25 May 2022 08:44:10 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga04.intel.com (mga04.intel.com [192.55.52.120])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 81BC410E554
 for <intel-gfx@lists.freedesktop.org>; Wed, 25 May 2022 08:44:09 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1653468249; x=1685004249;
 h=from:to:subject:in-reply-to:references:date:message-id:
 mime-version:content-transfer-encoding;
 bh=fG/V3Njx0JbsRlUxYYXwOZZg41SPCNDYiZcS9ex61Co=;
 b=MduiK7CRc4cZ9dSa0mr+3bdy1Tp6/LVyz0OfgjNNA5UFoFjzi9JUJwa6
 hn26nynX1dA3Z3M9wIyoO7HwkIyTlAHIaGUrB27sOVDS4s3Lzo7ZYpBtK
 7xP4XT0VRolNztJgH1Bm/uZQPjRIayoiXsAHUNshn7ie5aSq2BVOvcl8X
 o0CpEKS5boOKcNOUpsTP5OT7TKBPY9/QWCdQ3t8zwIZyN7PafRiQh6Z+z
 d1uVfCTyouTmwvaUWReWGkMsRR9W++Zntd1K+XNRuiQtf2mWUQBvpTYQ8
 GYtc8wysgs6aFEuhKTJ5VLY13PYrRWB9H3lFDi/IvPQfney5tWqFgp85Q g==;
X-IronPort-AV: E=McAfee;i="6400,9594,10357"; a="272576200"
X-IronPort-AV: E=Sophos;i="5.91,250,1647327600"; d="scan'208";a="272576200"
Received: from orsmga007.jf.intel.com ([10.7.209.58])
 by fmsmga104.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 25 May 2022 01:44:09 -0700
X-IronPort-AV: E=Sophos;i="5.91,250,1647327600"; d="scan'208";a="573112109"
Received: from mwardyn-mobl2.ger.corp.intel.com (HELO localhost)
 ([10.249.149.191])
 by orsmga007-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 25 May 2022 01:44:07 -0700
From: Jani Nikula <jani.nikula@linux.intel.com>
To: Ville Syrjala <ville.syrjala@linux.intel.com>,
 intel-gfx@lists.freedesktop.org
In-Reply-To: <20220510104242.6099-13-ville.syrjala@linux.intel.com>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
References: <20220510104242.6099-1-ville.syrjala@linux.intel.com>
 <20220510104242.6099-13-ville.syrjala@linux.intel.com>
Date: Wed, 25 May 2022 11:44:05 +0300
Message-ID: <87pmk2uhm2.fsf@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: quoted-printable
Subject: Re: [Intel-gfx] [PATCH 12/15] drm/i915/bios: Split VBT data into
 per-panel vs. global parts
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

On Tue, 10 May 2022, Ville Syrjala <ville.syrjala@linux.intel.com> wrote:
> From: Ville Syrj=C3=A4l=C3=A4 <ville.syrjala@linux.intel.com>
>
> Move the panel specific VBT parsing to happen during the
> output probing stage. Needs to be done because the VBT
> parsing will need to look at the EDID to determine
> the correct panel_type on some machines.
>
> We split the parsed VBT data (i915->vbt) along the same
> boundary. For the moment we just hoist all the panel
> specific stuff into connector->panel.vbt since that seems
> like the most convenient place for eg. the backlight code.

For a lot of stuff I was thinking we'd hang this stuff off of the
encoder, but I guess for panel stuff this makes sense. Child device
stuff in the encoder then.

>  drivers/gpu/drm/i915/i915_drv.h               |  63 ---

Gotta love this.

> diff --git a/drivers/gpu/drm/i915/display/intel_drrs.c b/drivers/gpu/drm/=
i915/display/intel_drrs.c
> index 166caf293f7b..7da4a9cbe4ba 100644
> --- a/drivers/gpu/drm/i915/display/intel_drrs.c
> +++ b/drivers/gpu/drm/i915/display/intel_drrs.c
> @@ -217,9 +217,6 @@ static void intel_drrs_frontbuffer_update(struct drm_=
i915_private *dev_priv,
>  {
>  	struct intel_crtc *crtc;
>=20=20
> -	if (dev_priv->vbt.drrs_type !=3D DRRS_TYPE_SEAMLESS)
> -		return;

I think this was the only unexplained thing in the entire monster patch
that I could spot. With that explained, even just in reply,

Reviewed-by: Jani Nikula <jani.nikula@intel.com>

> -
>  	for_each_intel_crtc(&dev_priv->drm, crtc) {
>  		unsigned int frontbuffer_bits;
>=20=20

--=20
Jani Nikula, Intel Open Source Graphics Center
