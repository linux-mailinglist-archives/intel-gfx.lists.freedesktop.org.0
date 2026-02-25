Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id 8GSBM67DnmkuXQQAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Wed, 25 Feb 2026 10:41:02 +0100
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 483061952B7
	for <lists+intel-gfx@lfdr.de>; Wed, 25 Feb 2026 10:41:02 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id A846510E72D;
	Wed, 25 Feb 2026 09:41:00 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="Ih/4aD0r";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.15])
 by gabe.freedesktop.org (Postfix) with ESMTPS id EE00210E72D;
 Wed, 25 Feb 2026 09:40:58 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1772012459; x=1803548459;
 h=from:to:cc:subject:in-reply-to:references:date:
 message-id:mime-version:content-transfer-encoding;
 bh=2DjE4FBFB8Zp2xhy3HPQ5Xreuw8JmiHgqlVCdOG0n98=;
 b=Ih/4aD0rd5DjAaEZ6G6JVzTEYmO4zjJiJ1+7KbhbvlTfv649TKKv2PtC
 yCng5M/LQcMeB6WgtyogkOOWaB0yIJ8ge7pU28XmThm9ylaraxeGDFjUp
 hTKkt513gE2Bjw0ENIYnYvLkQogqXe7u9CySsVywwZZByUgwS6Q4T5b7t
 5k9QAD2o6MuKRfUIFX/pffDLhRa6pLn0rL/d7EzY0HALcBpek/EWnqFBu
 OFvPU5hR4CHICQgwmcQxG0CyayQNwGIQ2YCIvPP86EQMBKD5uKcyIdcg3
 65/bXPheyixY98sgCx7aFvwEY9iKSUN/uRhyeIQAuAKnqYcWJ7EZPNzfO w==;
X-CSE-ConnectionGUID: tsJ/JytcR6eZBoAypOyLrw==
X-CSE-MsgGUID: /iSXBrbqSo2BSSry6MfJug==
X-IronPort-AV: E=McAfee;i="6800,10657,11711"; a="76652317"
X-IronPort-AV: E=Sophos;i="6.21,310,1763452800"; d="scan'208";a="76652317"
Received: from fmviesa002.fm.intel.com ([10.60.135.142])
 by orvoesa107.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 25 Feb 2026 01:40:59 -0800
X-CSE-ConnectionGUID: 2WMGbzflQbGAZvBwcemf4A==
X-CSE-MsgGUID: JNvYttPxS26X5cRzAL6qiw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.21,310,1763452800"; d="scan'208";a="239187106"
Received: from mjarzebo-mobl1.ger.corp.intel.com (HELO localhost)
 ([10.245.246.68])
 by fmviesa002-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 25 Feb 2026 01:40:57 -0800
From: Jani Nikula <jani.nikula@linux.intel.com>
To: Ville Syrjala <ville.syrjala@linux.intel.com>,
 intel-gfx@lists.freedesktop.org
Cc: intel-xe@lists.freedesktop.org
Subject: Re: [PATCH 06/19] drm/i915/overlay: Introduce
 i915_overlay_obj_lookup()
In-Reply-To: <20260218152806.18885-7-ville.syrjala@linux.intel.com>
Organization: Intel Finland Oy - BIC 0357606-4 - c/o Alberga Business Park,
 6 krs Bertel Jungin Aukio 5, 02600 Espoo, Finland
References: <20260218152806.18885-1-ville.syrjala@linux.intel.com>
 <20260218152806.18885-7-ville.syrjala@linux.intel.com>
Date: Wed, 25 Feb 2026 11:40:54 +0200
Message-ID: <5a09243cf3043f86f063b685dcf677dec681cffe@intel.com>
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
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-1.31 / 15.00];
	DMARC_POLICY_ALLOW(-0.50)[intel.com,none];
	R_DKIM_ALLOW(-0.20)[intel.com:s=Intel];
	MAILLIST(-0.20)[mailman];
	R_SPF_ALLOW(-0.20)[+ip4:131.252.210.177:c];
	RWL_MAILSPIKE_GOOD(-0.10)[131.252.210.177:from];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	RCVD_COUNT_THREE(0.00)[4];
	FROM_HAS_DN(0.00)[];
	ARC_NA(0.00)[];
	MIME_TRACE(0.00)[0:+];
	HAS_ORG_HEADER(0.00)[];
	TO_DN_SOME(0.00)[];
	DKIM_TRACE(0.00)[intel.com:+];
	RCPT_COUNT_THREE(0.00)[3];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	FROM_NEQ_ENVFROM(0.00)[jani.nikula@linux.intel.com,intel-gfx-bounces@lists.freedesktop.org];
	FORGED_SENDER_MAILLIST(0.00)[];
	MID_RHS_MATCH_FROMTLD(0.00)[];
	ASN(0.00)[asn:6366, ipnet:131.252.0.0/16, country:US];
	TAGGED_RCPT(0.00)[intel-gfx];
	MISSING_XM_UA(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[gabe.freedesktop.org:helo,gabe.freedesktop.org:rdns,intel.com:mid,intel.com:dkim,intel.com:email]
X-Rspamd-Queue-Id: 483061952B7
X-Rspamd-Action: no action

On Wed, 18 Feb 2026, Ville Syrjala <ville.syrjala@linux.intel.com> wrote:
> From: Ville Syrj=C3=A4l=C3=A4 <ville.syrjala@linux.intel.com>
>
> Extract the BO lookup and tiling check into a new
> helper called i915_overlay_obj_lookup(). This will have to
> move to the i915 side of the parent vs. display driver split.
>
> There is a slight change here in that we now do the tiling
> check before taking the modeset locks, but those locks don't
> protect the BO tiling stuff in any way, so nothing is really
> different here.
>
> Note that the hardware should support X-tiled scanout also
> for the overlay, but I guess no one ever bothered to hook
> it up and test it. So the check should stay at least for now.
>
> Signed-off-by: Ville Syrj=C3=A4l=C3=A4 <ville.syrjala@linux.intel.com>
> ---
>  drivers/gpu/drm/i915/display/intel_overlay.c | 31 ++++++++++++++------
>  1 file changed, 22 insertions(+), 9 deletions(-)
>
> diff --git a/drivers/gpu/drm/i915/display/intel_overlay.c b/drivers/gpu/d=
rm/i915/display/intel_overlay.c
> index e1707a678acb..5c4f8bf8ac44 100644
> --- a/drivers/gpu/drm/i915/display/intel_overlay.c
> +++ b/drivers/gpu/drm/i915/display/intel_overlay.c
> @@ -1125,6 +1125,26 @@ static int check_overlay_src(struct intel_display =
*display,
>  	return 0;
>  }
>=20=20
> +static struct drm_i915_gem_object *
> +i915_overlay_obj_lookup(struct drm_device *drm,
> +			struct drm_file *file_priv,
> +			u32 handle)
> +{
> +	struct drm_i915_gem_object *bo;
> +
> +	bo =3D i915_gem_object_lookup(file_priv, handle);
> +	if (!bo)
> +		return ERR_PTR(-ENOENT);
> +
> +	if (i915_gem_object_is_tiled(bo)) {
> +		drm_dbg(drm, "buffer used for overlay image can not be tiled\n");
> +		i915_gem_object_put(bo);
> +		return ERR_PTR(-EINVAL);
> +	}
> +
> +	return bo;
> +}
> +
>  int intel_overlay_put_image_ioctl(struct drm_device *dev, void *data,
>  				  struct drm_file *file_priv)
>  {
> @@ -1155,19 +1175,12 @@ int intel_overlay_put_image_ioctl(struct drm_devi=
ce *dev, void *data,
>  		return -ENOENT;
>  	crtc =3D to_intel_crtc(drmmode_crtc);
>=20=20
> -	new_bo =3D i915_gem_object_lookup(file_priv, params->bo_handle);
> +	new_bo =3D i915_overlay_obj_lookup(dev, file_priv, params->bo_handle);
>  	if (!new_bo)

i915_overlay_obj_lookup() returns error pointers.

> -		return -ENOENT;
> +		return PTR_ERR(new_bo);
>=20=20
>  	drm_modeset_lock_all(dev);
>=20=20
> -	if (i915_gem_object_is_tiled(new_bo)) {
> -		drm_dbg_kms(display->drm,
> -			    "buffer used for overlay image can not be tiled\n");
> -		ret =3D -EINVAL;
> -		goto out_unlock;
> -	}
> -
>  	ret =3D intel_overlay_recover_from_interrupt(overlay);
>  	if (ret !=3D 0)
>  		goto out_unlock;

--=20
Jani Nikula, Intel
