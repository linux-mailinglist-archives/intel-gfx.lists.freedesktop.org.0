Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id 0BmvDK8e2WnVmQgAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Fri, 10 Apr 2026 18:00:47 +0200
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 959293D9FAF
	for <lists+intel-gfx@lfdr.de>; Fri, 10 Apr 2026 18:00:46 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id DD7A910E978;
	Fri, 10 Apr 2026 16:00:44 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="g98p4xPo";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.11])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 9DB9610E255;
 Fri, 10 Apr 2026 16:00:43 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1775836844; x=1807372844;
 h=from:to:cc:subject:in-reply-to:references:date:
 message-id:mime-version:content-transfer-encoding;
 bh=MnOHOVyLa4WG6izrpiO+PKp8MguobJrDN7Hi32t8CjA=;
 b=g98p4xPo/J1kmeHHWYWGfZJIfcypk5H+tqWaJazlVxj5b9rlGcj0+cWo
 /2BI02TLyg+uo57hLLtVRoMoJVQ1ncBMuIos7gsMkPo3IkRZeARlccIQf
 fSLEIPd0o93fliDUe3ZL3XanekowIVg24kNwoy6dCm9DpphwL1yLRJEAR
 LmK/4EzWAqo0O/Dlq8ZhBn97WKB9Tpdnk2UwxutXmYuj/pkK0rEYvhDlC
 98saUHpiukh86Wo7Aj3h6ObfiAAjiqZeNUommHoPni0ZVe/hmpWSLZh1h
 DGjoRlXQmMjqkVNjp7dZxrcR3X4n1TGtb6mF+gmJ7tcHHZIhYqDjRefnI w==;
X-CSE-ConnectionGUID: jp1xgJoBRMOuhQjlhxhOvA==
X-CSE-MsgGUID: G+Vm8wiSTJyQlucSk1E+gA==
X-IronPort-AV: E=McAfee;i="6800,10657,11755"; a="87144385"
X-IronPort-AV: E=Sophos;i="6.23,171,1770624000"; d="scan'208";a="87144385"
Received: from fmviesa010.fm.intel.com ([10.60.135.150])
 by orvoesa103.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 10 Apr 2026 09:00:35 -0700
X-CSE-ConnectionGUID: sL+rxAJqSva7QI8uMHVJwg==
X-CSE-MsgGUID: MqC8Nu05Q2SylUIztWTThg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.23,171,1770624000"; d="scan'208";a="224810970"
Received: from mkosciow-mobl1.ger.corp.intel.com (HELO localhost)
 ([10.245.246.149])
 by fmviesa010-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 10 Apr 2026 09:00:33 -0700
From: Jani Nikula <jani.nikula@linux.intel.com>
To: Ville Syrjala <ville.syrjala@linux.intel.com>,
 intel-gfx@lists.freedesktop.org
Cc: intel-xe@lists.freedesktop.org
Subject: Re: [PATCH 09/10] drm/i915: Completely reject DPT BIOS FBs.
In-Reply-To: <20260410150449.9699-10-ville.syrjala@linux.intel.com>
Organization: Intel Finland Oy - BIC 0357606-4 - c/o Alberga Business Park,
 6 krs Bertel Jungin Aukio 5, 02600 Espoo, Finland
References: <20260410150449.9699-1-ville.syrjala@linux.intel.com>
 <20260410150449.9699-10-ville.syrjala@linux.intel.com>
Date: Fri, 10 Apr 2026 19:00:31 +0300
Message-ID: <fad463cb24fc7e63cfd8360e370b7b7f9f4367a1@intel.com>
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
	DBL_BLOCKED_OPENRESOLVER(0.00)[intel.com:dkim,intel.com:email,intel.com:mid,gabe.freedesktop.org:helo,gabe.freedesktop.org:rdns]
X-Rspamd-Queue-Id: 959293D9FAF
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

On Fri, 10 Apr 2026, Ville Syrjala <ville.syrjala@linux.intel.com> wrote:
> From: Ville Syrj=C3=A4l=C3=A4 <ville.syrjala@linux.intel.com>
>
> Our BIOS FB handling can't deal with DPT, and instead everything
> just assumes a direct GGTT mapping. Reject any BIOS FB using DPT.
> Most likely this should never happen anyway.
>
> Signed-off-by: Ville Syrj=C3=A4l=C3=A4 <ville.syrjala@linux.intel.com>

Seems cleaner.

Reviewed-by: Jani Nikula <jani.nikula@intel.com>


> ---
>  drivers/gpu/drm/i915/display/intel_initial_plane.c | 9 +++++++++
>  drivers/gpu/drm/i915/display/skl_universal_plane.c | 6 ------
>  2 files changed, 9 insertions(+), 6 deletions(-)
>
> diff --git a/drivers/gpu/drm/i915/display/intel_initial_plane.c b/drivers=
/gpu/drm/i915/display/intel_initial_plane.c
> index 55b6cdded126..e3d1b2d1669c 100644
> --- a/drivers/gpu/drm/i915/display/intel_initial_plane.c
> +++ b/drivers/gpu/drm/i915/display/intel_initial_plane.c
> @@ -92,6 +92,15 @@ intel_alloc_initial_plane_obj(struct intel_display *di=
splay,
>  		return NULL;
>  	}
>=20=20
> +	/*
> +	 * Would need to preserve the DPT, its GGTT
> +	 * mapping, and the actual FB memory.
> +	 */
> +	if (intel_fb_modifier_uses_dpt(display, fb->modifier)) {
> +		drm_dbg_kms(display->drm, "DPT not supported for initial FB\n");
> +		return NULL;
> +	}
> +
>  	return display->parent->initial_plane->alloc_obj(display->drm, plane_co=
nfig);
>  }
>=20=20
> diff --git a/drivers/gpu/drm/i915/display/skl_universal_plane.c b/drivers=
/gpu/drm/i915/display/skl_universal_plane.c
> index 00c863e378a1..5aef8123d8b8 100644
> --- a/drivers/gpu/drm/i915/display/skl_universal_plane.c
> +++ b/drivers/gpu/drm/i915/display/skl_universal_plane.c
> @@ -3148,12 +3148,6 @@ skl_get_initial_plane_config(struct intel_crtc *cr=
tc,
>=20=20
>  	fb->format =3D drm_get_format_info(display->drm, fourcc, fb->modifier);
>=20=20
> -	if (!display->params.enable_dpt &&
> -	    intel_fb_modifier_uses_dpt(display, fb->modifier)) {
> -		drm_dbg_kms(display->drm, "DPT disabled, skipping initial FB\n");
> -		goto error;
> -	}
> -
>  	/*
>  	 * DRM_MODE_ROTATE_ is counter clockwise to stay compatible with Xrandr
>  	 * while i915 HW rotation is clockwise, that's why this swapping.

--=20
Jani Nikula, Intel
