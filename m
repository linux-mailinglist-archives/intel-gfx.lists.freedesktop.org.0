Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id kEZyGyIBA2rdzQEAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Tue, 12 May 2026 12:29:54 +0200
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id F16EC51E918
	for <lists+intel-gfx@lfdr.de>; Tue, 12 May 2026 12:29:53 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id E923310E1E6;
	Tue, 12 May 2026 10:29:51 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="UyHBP+BT";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.10])
 by gabe.freedesktop.org (Postfix) with ESMTPS id A1BC010E09D;
 Tue, 12 May 2026 10:29:50 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1778581791; x=1810117791;
 h=from:to:cc:subject:in-reply-to:references:date:
 message-id:mime-version:content-transfer-encoding;
 bh=lrBcZHIGPmn7EU99aSM17iQZr9Xy6ZmPB9UxNt+LWOg=;
 b=UyHBP+BT+Ng0UQpBKynYRTqmZKGyZpnhGyQG7XP3Df/mSC8s5MEmo8Q1
 rJzzBb4dCD3ytIx9aBFSk9ckTVTKSLzt61GBRxaAfXIOGVYR2k6GgT1w4
 vonZWp9wV0TBSEu/Fs4H9BWSDyWuWopY3yU0HcXv6eRnNLeq1D/wyfnxL
 /BQLWgfIIRxnzlFCQAcG1DWgI6fLQBcFfntThFizdrbNXcFT2QzDA/7sc
 yYbyea3BcDFBNS+om3ZyDTs/w95cjve2auAd8KAduSbvEYhE74MlLrSyx
 VBpN+A07T95zXNoLPutdlhvIf5JsYSvyUKerEPeWekHgh/5SGRen4LinI w==;
X-CSE-ConnectionGUID: 2I/nbpH4T/WzwnflHdrgMw==
X-CSE-MsgGUID: 8MC+AMdqTXyROJXPdd44uQ==
X-IronPort-AV: E=McAfee;i="6800,10657,11783"; a="90869572"
X-IronPort-AV: E=Sophos;i="6.23,230,1770624000"; d="scan'208";a="90869572"
Received: from orviesa007.jf.intel.com ([10.64.159.147])
 by fmvoesa104.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 12 May 2026 03:29:50 -0700
X-CSE-ConnectionGUID: iLNe98UgRnK21yihZkM+YQ==
X-CSE-MsgGUID: fEeydMW6RouhGA4W8Jq75g==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.23,230,1770624000"; d="scan'208";a="237972307"
Received: from vpanait-mobl.ger.corp.intel.com (HELO localhost)
 ([10.245.245.203])
 by orviesa007-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 12 May 2026 03:29:49 -0700
From: Jani Nikula <jani.nikula@linux.intel.com>
To: Ville Syrjala <ville.syrjala@linux.intel.com>,
 intel-gfx@lists.freedesktop.org
Cc: intel-xe@lists.freedesktop.org
Subject: Re: [PATCH 02/14] drm/i915/fbdev: Extract bios_fb_ok()
In-Reply-To: <20260511214122.8468-3-ville.syrjala@linux.intel.com>
Organization: Intel Finland Oy - BIC 0357606-4 - c/o Alberga Business Park,
 6 krs Bertel Jungin Aukio 5, 02600 Espoo, Finland
References: <20260511214122.8468-1-ville.syrjala@linux.intel.com>
 <20260511214122.8468-3-ville.syrjala@linux.intel.com>
Date: Tue, 12 May 2026 13:29:44 +0300
Message-ID: <b4cd01b6b2eff29d1d4a7194d329612db9abd515@intel.com>
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
X-Rspamd-Queue-Id: F16EC51E918
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
	DBL_BLOCKED_OPENRESOLVER(0.00)[intel.com:email,intel.com:mid,intel.com:dkim,gabe.freedesktop.org:helo,gabe.freedesktop.org:rdns]
X-Rspamd-Action: no action

On Tue, 12 May 2026, Ville Syrjala <ville.syrjala@linux.intel.com> wrote:
> From: Ville Syrj=C3=A4l=C3=A4 <ville.syrjala@linux.intel.com>
>
> Pull the "is the BIOS FB OK?" checks to a helper function. We'll
> add other relevant checks there later.
>
> Signed-off-by: Ville Syrj=C3=A4l=C3=A4 <ville.syrjala@linux.intel.com>

Reviewed-by: Jani Nikula <jani.nikula@intel.com>

> ---
>  drivers/gpu/drm/i915/display/intel_fbdev.c | 26 +++++++++++++++-------
>  1 file changed, 18 insertions(+), 8 deletions(-)
>
> diff --git a/drivers/gpu/drm/i915/display/intel_fbdev.c b/drivers/gpu/drm=
/i915/display/intel_fbdev.c
> index df1d3d9dc3e5..f9c135400453 100644
> --- a/drivers/gpu/drm/i915/display/intel_fbdev.c
> +++ b/drivers/gpu/drm/i915/display/intel_fbdev.c
> @@ -262,6 +262,23 @@ __intel_fbdev_fb_alloc(struct intel_display *display,
>=20=20
>  }
>=20=20
> +static bool bios_fb_ok(const struct intel_framebuffer *fb,
> +		       const struct drm_fb_helper_surface_size *sizes)
> +{
> +	struct intel_display *display =3D to_intel_display(fb->base.dev);
> +	int width =3D fb->base.width;
> +	int height =3D fb->base.height;
> +
> +	if (sizes->fb_width > width || sizes->fb_height > height) {
> +		drm_dbg_kms(display->drm,
> +			    "BIOS fb too small (%dx%d), we require (%dx%d), releasing it\n",
> +			    width, height, sizes->fb_width, sizes->fb_height);
> +		return false;
> +	}
> +
> +	return true;
> +}
> +
>  int intel_fbdev_driver_fbdev_probe(struct drm_fb_helper *helper,
>  				   struct drm_fb_helper_surface_size *sizes)
>  {
> @@ -279,14 +296,7 @@ int intel_fbdev_driver_fbdev_probe(struct drm_fb_hel=
per *helper,
>=20=20
>  	ifbdev->fb =3D NULL;
>=20=20
> -	if (fb &&
> -	    (sizes->fb_width > fb->base.width ||
> -	     sizes->fb_height > fb->base.height)) {
> -		drm_dbg_kms(display->drm,
> -			    "BIOS fb too small (%dx%d), we require (%dx%d),"
> -			    " releasing it\n",
> -			    fb->base.width, fb->base.height,
> -			    sizes->fb_width, sizes->fb_height);
> +	if (fb && !bios_fb_ok(fb, sizes)) {
>  		drm_framebuffer_put(&fb->base);
>  		fb =3D NULL;
>  	}

--=20
Jani Nikula, Intel
