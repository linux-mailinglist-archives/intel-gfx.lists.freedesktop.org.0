Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id AIZ4C7k/62nZKAAAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Fri, 24 Apr 2026 12:02:33 +0200
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 985EA45CAE2
	for <lists+intel-gfx@lfdr.de>; Fri, 24 Apr 2026 12:02:32 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 68F6510F4B6;
	Fri, 24 Apr 2026 10:02:30 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="NPTzFZp0";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.14])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 5D46410F4B6;
 Fri, 24 Apr 2026 10:02:29 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1777024950; x=1808560950;
 h=from:to:cc:subject:in-reply-to:references:date:
 message-id:mime-version:content-transfer-encoding;
 bh=zdoPNKQHVHBhpUb4UGp7C12LJWf1ykGkylbSZrLJ75I=;
 b=NPTzFZp0SsYvDQK5x3n5ND0MuZ7BAhtc6fpAlykN4ChPxI1RuONI3rz4
 oYFkjOjRmgnPn/eKOoF4x7kmeU6uxgkqWgPzPpQuYZgd8p9IPfn3QYKeh
 vBVm7PBuLCiEjkfOvAf0sHCeHLlpOSU/+CeukkJVqlGwHJeFV4bGN2MkZ
 t58rONhYOCESKaxjp+KPKJHDz0Saszz1oj9qtnJSGZcR5N/yNEOlgGl/c
 2yh8mT2gIkD2b5mQ1V9OiiJNbXJKOmKSxXU4rWxmnD7ysfit9is1JPm43
 V8WWPB8o1KHArMZbFKxZqw1ZL0YcmcoZ/TqFsjdDiqswHRqVp7gvIwY/7 Q==;
X-CSE-ConnectionGUID: uOP4NagWR+CX6X9dyzc8mg==
X-CSE-MsgGUID: YIDeM2dtTsOSmFSHzkkbpw==
X-IronPort-AV: E=McAfee;i="6800,10657,11765"; a="78059849"
X-IronPort-AV: E=Sophos;i="6.23,196,1770624000"; d="scan'208";a="78059849"
Received: from fmviesa001.fm.intel.com ([10.60.135.141])
 by fmvoesa108.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 24 Apr 2026 03:02:29 -0700
X-CSE-ConnectionGUID: DST4uC75SHysk86QWZMulQ==
X-CSE-MsgGUID: ayhi4XgUQW2Rx17raWPNkw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.23,196,1770624000"; d="scan'208";a="256432717"
Received: from smoticic-mobl1.ger.corp.intel.com (HELO localhost)
 ([10.245.245.89])
 by smtpauth.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 24 Apr 2026 03:02:28 -0700
From: Jani Nikula <jani.nikula@linux.intel.com>
To: Ville Syrjala <ville.syrjala@linux.intel.com>,
 intel-gfx@lists.freedesktop.org
Cc: intel-xe@lists.freedesktop.org
Subject: Re: [PATCH 07/16] drm/xe: Move the FORCE_WC assert into
 __xe_pin_fb_vma()
In-Reply-To: <20260423165346.20884-8-ville.syrjala@linux.intel.com>
Organization: Intel Finland Oy - BIC 0357606-4 - c/o Alberga Business Park,
 6 krs Bertel Jungin Aukio 5, 02600 Espoo, Finland
References: <20260423165346.20884-1-ville.syrjala@linux.intel.com>
 <20260423165346.20884-8-ville.syrjala@linux.intel.com>
Date: Fri, 24 Apr 2026 13:02:25 +0300
Message-ID: <bfb356535fb16b7d7cf5fa5a40c264af8ca89583@intel.com>
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
X-Rspamd-Queue-Id: 985EA45CAE2
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
	DBL_BLOCKED_OPENRESOLVER(0.00)[intel.com:email,intel.com:dkim,intel.com:mid]

On Thu, 23 Apr 2026, Ville Syrjala <ville.syrjala@linux.intel.com> wrote:
> From: Ville Syrj=C3=A4l=C3=A4 <ville.syrjala@linux.intel.com>
>
> No need to bother the higher level pinning code with the
> FORCE_WC assert. Move it into the lower level function.

Might mention that this introduces the check also to the
intel_fb_pin_to_ggtt() path.

Reviewed-by: Jani Nikula <jani.nikula@intel.com>


>
> Signed-off-by: Ville Syrj=C3=A4l=C3=A4 <ville.syrjala@linux.intel.com>
> ---
>  drivers/gpu/drm/xe/display/xe_fb_pin.c | 7 +++----
>  1 file changed, 3 insertions(+), 4 deletions(-)
>
> diff --git a/drivers/gpu/drm/xe/display/xe_fb_pin.c b/drivers/gpu/drm/xe/=
display/xe_fb_pin.c
> index afb6cdda537e..487c092cd000 100644
> --- a/drivers/gpu/drm/xe/display/xe_fb_pin.c
> +++ b/drivers/gpu/drm/xe/display/xe_fb_pin.c
> @@ -329,6 +329,9 @@ static struct i915_vma *__xe_pin_fb_vma(struct drm_ge=
m_object *obj, bool is_dpt,
>  	struct drm_exec exec;
>  	int ret =3D 0;
>=20=20
> +	/* We reject creating !SCANOUT fb's, so this is weird.. */
> +	drm_WARN_ON(bo->ttm.base.dev, !(bo->flags & XE_BO_FLAG_FORCE_WC));
> +
>  	if (!vma)
>  		return ERR_PTR(-ENODEV);
>=20=20
> @@ -466,7 +469,6 @@ int intel_plane_pin_fb(struct intel_plane_state *new_=
plane_state,
>  {
>  	struct drm_framebuffer *fb =3D new_plane_state->hw.fb;
>  	struct drm_gem_object *obj =3D intel_fb_bo(fb);
> -	struct xe_bo *bo =3D gem_to_xe_bo(obj);
>  	struct i915_vma *vma;
>  	struct intel_plane *plane =3D to_intel_plane(new_plane_state->uapi.plan=
e);
>  	struct intel_fb_pin_params pin_params =3D {
> @@ -478,9 +480,6 @@ int intel_plane_pin_fb(struct intel_plane_state *new_=
plane_state,
>  	if (reuse_vma(new_plane_state, old_plane_state))
>  		return 0;
>=20=20
> -	/* We reject creating !SCANOUT fb's, so this is weird.. */
> -	drm_WARN_ON(bo->ttm.base.dev, !(bo->flags & XE_BO_FLAG_FORCE_WC));
> -
>  	vma =3D __xe_pin_fb_vma(obj, intel_fb_uses_dpt(fb), &pin_params);
>=20=20
>  	if (IS_ERR(vma))

--=20
Jani Nikula, Intel
