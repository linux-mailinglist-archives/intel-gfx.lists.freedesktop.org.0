Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id aLSROLA162nRJwAAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Fri, 24 Apr 2026 11:19:44 +0200
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 6CC3045C103
	for <lists+intel-gfx@lfdr.de>; Fri, 24 Apr 2026 11:19:44 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id F375810E3A4;
	Fri, 24 Apr 2026 09:19:42 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="FXE6wexs";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.15])
 by gabe.freedesktop.org (Postfix) with ESMTPS id E614210E3A4;
 Fri, 24 Apr 2026 09:19:41 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1777022382; x=1808558382;
 h=from:to:cc:subject:in-reply-to:references:date:
 message-id:mime-version:content-transfer-encoding;
 bh=XhQAxsgKi7+J2rPiUPbGk2W4vS2G8988IUhHZAJFDXg=;
 b=FXE6wexsR8eDAsE40TyjoW4rUTDJrXmOMTU95KV2lKTsSZO1xCqAlkjZ
 wYbQWkb8ISxmqKbFFHdEIM26w8MgS//34LGvDAbChJl3NWoNgqlmne3ek
 iDep/mmk4Q7tAWERaQQwA0JEj2BMBc8jKqzFjdqRcJcoOewF0y1w9Gder
 zASQz6qPRV1iNEZExRC2jcYf6V4T3tDsLNhiqmvW4+5OahwYGTEy/ReqS
 RA1ytnvcnLvaoUiTAXWzR3GZX3vr1Hfi+2/B18spiv5FZuwumIi0iBPiJ
 ZVJV+rIbXj8zA6jg63xJyJQxzfiRyrwn3xlW/uXkWOM3a3o9FzbiM2XUy A==;
X-CSE-ConnectionGUID: 5uzm3JZFTTGt5h4pttAoLw==
X-CSE-MsgGUID: 1LFXj//2Qt+UuAqZrcIcFA==
X-IronPort-AV: E=McAfee;i="6800,10657,11765"; a="81607216"
X-IronPort-AV: E=Sophos;i="6.23,196,1770624000"; d="scan'208";a="81607216"
Received: from orviesa006.jf.intel.com ([10.64.159.146])
 by orvoesa107.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 24 Apr 2026 02:19:41 -0700
X-CSE-ConnectionGUID: sCShZh9HTru4u5O4hp804Q==
X-CSE-MsgGUID: I5xUjv8QRMOlw6S/YrRoVA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.23,196,1770624000"; d="scan'208";a="231902003"
Received: from smoticic-mobl1.ger.corp.intel.com (HELO localhost)
 ([10.245.245.89])
 by orviesa006-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 24 Apr 2026 02:19:40 -0700
From: Jani Nikula <jani.nikula@linux.intel.com>
To: Ville Syrjala <ville.syrjala@linux.intel.com>,
 intel-gfx@lists.freedesktop.org
Cc: intel-xe@lists.freedesktop.org
Subject: Re: [PATCH 03/16] drm/i915: Move the i915_dpt_offset()==0 assert
In-Reply-To: <20260423165346.20884-4-ville.syrjala@linux.intel.com>
Organization: Intel Finland Oy - BIC 0357606-4 - c/o Alberga Business Park,
 6 krs Bertel Jungin Aukio 5, 02600 Espoo, Finland
References: <20260423165346.20884-1-ville.syrjala@linux.intel.com>
 <20260423165346.20884-4-ville.syrjala@linux.intel.com>
Date: Fri, 24 Apr 2026 12:19:37 +0300
Message-ID: <a4b7e308fd8cc8d9a80a121fac1eef718a399148@intel.com>
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
X-Rspamd-Queue-Id: 6CC3045C103
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
	DBL_BLOCKED_OPENRESOLVER(0.00)[gabe.freedesktop.org:helo,gabe.freedesktop.org:rdns,intel.com:email,intel.com:dkim,intel.com:mid]

On Thu, 23 Apr 2026, Ville Syrjala <ville.syrjala@linux.intel.com> wrote:
> From: Ville Syrj=C3=A4l=C3=A4 <ville.syrjala@linux.intel.com>
>
> Move the i915_dpt_offset() check into the lower level
> intel_fb_pin_to_dpt() function. Clears out some of the unnecessary
> junk from the higher level code, making it easier to introduce
> the new fb_pin parent interface.
>
> Signed-off-by: Ville Syrj=C3=A4l=C3=A4 <ville.syrjala@linux.intel.com>

Reviewed-by: Jani Nikula <jani.nikula@intel.com>

> ---
>  drivers/gpu/drm/i915/i915_fb_pin.c | 13 ++++++-------
>  1 file changed, 6 insertions(+), 7 deletions(-)
>
> diff --git a/drivers/gpu/drm/i915/i915_fb_pin.c b/drivers/gpu/drm/i915/i9=
15_fb_pin.c
> index b800b55530a5..400ad8768c11 100644
> --- a/drivers/gpu/drm/i915/i915_fb_pin.c
> +++ b/drivers/gpu/drm/i915/i915_fb_pin.c
> @@ -101,6 +101,12 @@ intel_fb_pin_to_dpt(struct drm_gem_object *_obj, str=
uct intel_dpt *dpt,
>  	i915_gem_object_flush_if_display(obj);
>=20=20
>  	i915_vma_get(vma);
> +
> +	/*
> +	 * The DPT object contains only one vma, and there is no VT-d
> +	 * guard, so the VMA's offset within the DPT is always 0.
> +	 */
> +	drm_WARN_ON(&i915->drm, i915_dpt_offset(vma));
>  err:
>  	atomic_dec(&i915->pending_fb_pin);
>=20=20
> @@ -255,7 +261,6 @@ int intel_plane_pin_fb(struct intel_plane_state *plan=
e_state,
>  		       const struct intel_plane_state *old_plane_state)
>  {
>  	struct intel_display *display =3D to_intel_display(plane_state);
> -	struct drm_i915_private *i915 =3D to_i915(plane_state->uapi.plane->dev);
>  	struct intel_plane *plane =3D to_intel_plane(plane_state->uapi.plane);
>  	const struct intel_framebuffer *fb =3D
>  		to_intel_framebuffer(plane_state->hw.fb);
> @@ -304,12 +309,6 @@ int intel_plane_pin_fb(struct intel_plane_state *pla=
ne_state,
>  		plane_state->dpt_vma =3D vma;
>=20=20
>  		WARN_ON(plane_state->ggtt_vma =3D=3D plane_state->dpt_vma);
> -
> -		/*
> -		 * The DPT object contains only one vma, and there is no VT-d
> -		 * guard, so the VMA's offset within the DPT is always 0.
> -		 */
> -		drm_WARN_ON(&i915->drm, i915_dpt_offset(plane_state->dpt_vma));
>  	}
>=20=20
>  	/*

--=20
Jani Nikula, Intel
