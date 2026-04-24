Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id AH7AG0VG62m4KQAAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Fri, 24 Apr 2026 12:30:29 +0200
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 41B5B45D139
	for <lists+intel-gfx@lfdr.de>; Fri, 24 Apr 2026 12:30:28 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id CB29210E3E4;
	Fri, 24 Apr 2026 10:30:26 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="OE9Thzcu";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.17])
 by gabe.freedesktop.org (Postfix) with ESMTPS id E988B10E3E4;
 Fri, 24 Apr 2026 10:30:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1777026626; x=1808562626;
 h=from:to:cc:subject:in-reply-to:references:date:
 message-id:mime-version:content-transfer-encoding;
 bh=s8qwo2sK+rkg9h6fhj/+J015SVQ0AWxHiwcL1+3gv2w=;
 b=OE9Thzcul2KqWWdzPilMtNeL8/yx24ulhtYLLgqk24LaxKNTT/NgcE3N
 juq8vv2OVM4pzISmfjHjW7IgFggiyibxpfL+m7P9No1fTKGvVXdKGh8Po
 oJaBGf8L0o/RQjTQ0aKh9CBp5Y/3i2BUsTuUhl2onXCoPl58ho4G/wzYa
 VnZaJbWlU6zxMoWRbNp/BUJE9+hPklQFj6zOHo/Ggyn2muLkHcFPyj0eA
 sHbtsM+2nwnvouvKQ+MUKOoIQsdAqoOwdEXcAX6gaD09Gd8YlAh7wqVRm
 ILOX0edwRkeUxyIkJW3dJsg/XsVN4+uWrzGwCs9Eld7AYT6Q/98xmRPxB A==;
X-CSE-ConnectionGUID: Jyhvy52EQcyOl8i0YSsyTw==
X-CSE-MsgGUID: sXih052xTgiYQuOuP/Oy6g==
X-IronPort-AV: E=McAfee;i="6800,10657,11765"; a="77992009"
X-IronPort-AV: E=Sophos;i="6.23,196,1770624000"; d="scan'208";a="77992009"
Received: from orviesa002.jf.intel.com ([10.64.159.142])
 by orvoesa109.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 24 Apr 2026 03:30:25 -0700
X-CSE-ConnectionGUID: I09/jbrTQ5OgCqFTSbNCRQ==
X-CSE-MsgGUID: fBd1NLMaROaFlfkq7fX1fw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.23,196,1770624000"; d="scan'208";a="263318818"
Received: from smoticic-mobl1.ger.corp.intel.com (HELO localhost)
 ([10.245.245.89])
 by orviesa002-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 24 Apr 2026 03:30:25 -0700
From: Jani Nikula <jani.nikula@linux.intel.com>
To: Ville Syrjala <ville.syrjala@linux.intel.com>,
 intel-gfx@lists.freedesktop.org
Cc: intel-xe@lists.freedesktop.org
Subject: Re: [PATCH 12/16] drm/xe: Restructure reuse_vma()
In-Reply-To: <20260423165346.20884-13-ville.syrjala@linux.intel.com>
Organization: Intel Finland Oy - BIC 0357606-4 - c/o Alberga Business Park,
 6 krs Bertel Jungin Aukio 5, 02600 Espoo, Finland
References: <20260423165346.20884-1-ville.syrjala@linux.intel.com>
 <20260423165346.20884-13-ville.syrjala@linux.intel.com>
Date: Fri, 24 Apr 2026 13:30:21 +0300
Message-ID: <85603a402f5b436b4de11fd275e9de266744c74f@intel.com>
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
X-Rspamd-Queue-Id: 41B5B45D139
X-Rspamd-Action: no action
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
	RCPT_COUNT_THREE(0.00)[3];
	DKIM_TRACE(0.00)[intel.com:+];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	FROM_NEQ_ENVFROM(0.00)[jani.nikula@linux.intel.com,intel-gfx-bounces@lists.freedesktop.org];
	FORGED_SENDER_MAILLIST(0.00)[];
	MID_RHS_MATCH_FROMTLD(0.00)[];
	ASN(0.00)[asn:6366, ipnet:131.252.0.0/16, country:US];
	TAGGED_RCPT(0.00)[intel-gfx];
	MISSING_XM_UA(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[gabe.freedesktop.org:helo,gabe.freedesktop.org:rdns,intel.com:email,intel.com:dkim,intel.com:mid]

On Thu, 23 Apr 2026, Ville Syrjala <ville.syrjala@linux.intel.com> wrote:
> From: Ville Syrj=C3=A4l=C3=A4 <ville.syrjala@linux.intel.com>
>
> Restructure reuse_vma() into a form that doesn't need the plane
> state structs, and rename the result to xe_fb_pin_reuse_vma().
> This will become the new fb_pin parent interface.
>
> Signed-off-by: Ville Syrj=C3=A4l=C3=A4 <ville.syrjala@linux.intel.com>

Reviewed-by: Jani Nikula <jani.nikula@intel.com>

> ---
>  drivers/gpu/drm/xe/display/xe_fb_pin.c | 48 ++++++++++++++------------
>  1 file changed, 25 insertions(+), 23 deletions(-)
>
> diff --git a/drivers/gpu/drm/xe/display/xe_fb_pin.c b/drivers/gpu/drm/xe/=
display/xe_fb_pin.c
> index bdd6a4da0997..cd287efded28 100644
> --- a/drivers/gpu/drm/xe/display/xe_fb_pin.c
> +++ b/drivers/gpu/drm/xe/display/xe_fb_pin.c
> @@ -486,36 +486,31 @@ static void xe_fb_pin_dpt_unpin(struct intel_dpt *d=
pt,
>  	__xe_unpin_fb_vma(ggtt_vma);
>  }
>=20=20
> -static bool reuse_vma(struct intel_plane_state *new_plane_state,
> -		      const struct intel_plane_state *old_plane_state)
> +static struct i915_vma *
> +xe_fb_pin_reuse_vma(struct i915_vma *old_ggtt_vma,
> +		    struct drm_gem_object *old_obj,
> +		    const struct i915_gtt_view *old_view,
> +		    struct drm_gem_object *new_obj,
> +		    const struct i915_gtt_view *new_view,
> +		    u32 *out_offset)
>  {
> -	struct intel_plane *plane =3D to_intel_plane(new_plane_state->uapi.plan=
e);
> -	struct i915_vma *vma;
> +	if (old_ggtt_vma && old_obj =3D=3D new_obj &&
> +	    !memcmp(&old_view, &new_view, sizeof(*new_view))) {
> +		refcount_inc(&old_ggtt_vma->ref);
>=20=20
> -	if (old_plane_state->hw.fb =3D=3D new_plane_state->hw.fb &&
> -	    !memcmp(&old_plane_state->view.gtt,
> -		    &new_plane_state->view.gtt,
> -		    sizeof(new_plane_state->view.gtt))) {
> -		vma =3D old_plane_state->ggtt_vma;
> -		goto found;
> +		*out_offset =3D xe_ggtt_node_addr(old_ggtt_vma->node);
> +
> +		return old_ggtt_vma;
>  	}
>=20=20
> -	return false;
> -
> -found:
> -	refcount_inc(&vma->ref);
> -	new_plane_state->ggtt_vma =3D vma;
> -
> -	new_plane_state->surf =3D xe_ggtt_node_addr(new_plane_state->ggtt_vma->=
node) +
> -		plane->surf_offset(new_plane_state);
> -
> -	return true;
> +	return NULL;
>  }
>=20=20
>  int intel_plane_pin_fb(struct intel_plane_state *new_plane_state,
>  		       const struct intel_plane_state *old_plane_state)
>  {
> -	struct intel_framebuffer *fb =3D to_intel_framebuffer(new_plane_state->=
hw.fb);
> +	const struct intel_framebuffer *fb =3D to_intel_framebuffer(new_plane_s=
tate->hw.fb);
> +	const struct intel_framebuffer *old_fb =3D to_intel_framebuffer(old_pla=
ne_state->hw.fb);
>  	struct drm_gem_object *obj =3D intel_fb_bo(&fb->base);
>  	struct intel_plane *plane =3D to_intel_plane(new_plane_state->uapi.plan=
e);
>  	struct intel_fb_pin_params pin_params =3D {
> @@ -529,8 +524,14 @@ int intel_plane_pin_fb(struct intel_plane_state *new=
_plane_state,
>  	u32 offset;
>  	int ret;
>=20=20
> -	if (reuse_vma(new_plane_state, old_plane_state))
> -		return 0;
> +	ggtt_vma =3D xe_fb_pin_reuse_vma(old_plane_state->ggtt_vma,
> +				       intel_fb_bo(&old_fb->base),
> +				       &old_plane_state->view.gtt,
> +				       intel_fb_bo(&fb->base),
> +				       &new_plane_state->view.gtt,
> +				       &offset);
> +	if (ggtt_vma)
> +		goto got_vma;
>=20=20
>  	if (!intel_fb_uses_dpt(&fb->base)) {
>  		ret =3D xe_fb_pin_ggtt_pin(obj, &pin_params,
> @@ -544,6 +545,7 @@ int intel_plane_pin_fb(struct intel_plane_state *new_=
plane_state,
>  			return ret;
>  	}
>=20=20
> +got_vma:
>  	new_plane_state->dpt_vma =3D dpt_vma;
>  	new_plane_state->ggtt_vma =3D ggtt_vma;
>  	new_plane_state->fence_id =3D fence_id;

--=20
Jani Nikula, Intel
