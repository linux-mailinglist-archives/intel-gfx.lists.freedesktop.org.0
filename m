Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id AKeLO4cC4mna0QAAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Fri, 17 Apr 2026 11:51:03 +0200
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 5638E41995C
	for <lists+intel-gfx@lfdr.de>; Fri, 17 Apr 2026 11:51:03 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id D9D6E10E9A1;
	Fri, 17 Apr 2026 09:51:01 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="WEUq8tGS";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.13])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 5FE5010E9A1;
 Fri, 17 Apr 2026 09:51:01 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1776419462; x=1807955462;
 h=from:to:cc:subject:in-reply-to:references:date:
 message-id:mime-version:content-transfer-encoding;
 bh=dtDFJ1Sqp2aQBuNKgVNpbjc+Pp7GFLsrEzQHsc1Rd+k=;
 b=WEUq8tGSxMR2W4THThjMxTsCypI+1sgqwxqArTc5X93x1JCPpdgUhC+B
 Td8RqWEmJb/Xk3+lPHmYH+uZJfoSL/jvvcerWnpF3qgzHg5Mqf75lQdW0
 eWDrWcyvi7hctlV/XM5ZJv8xCnxXmLsw3o5D+QJypRzmEAwPiD6s60DNJ
 hftzPlt2+735Tetp1qKiuLqnHFs1iMDUF1SkAfb+hYvmNMdBfdX2vmdNx
 7Nb8w7Fl/FCTlsv5FjAZvHMxT1Rs1c8TSp7zbkr2Z/ulL8FKxhsHamAyW
 zpE/+Z1QgX/4dCMTT5h9vD75EPkWmmwigNQcoU6dUyAyjBHEUrjS7kjQc Q==;
X-CSE-ConnectionGUID: 5wpAveEUQkejYypNzNEbmw==
X-CSE-MsgGUID: PI7cNkLmQAK6tQqVu9Np9w==
X-IronPort-AV: E=McAfee;i="6800,10657,11761"; a="80023134"
X-IronPort-AV: E=Sophos;i="6.23,184,1770624000"; d="scan'208";a="80023134"
Received: from fmviesa004.fm.intel.com ([10.60.135.144])
 by fmvoesa107.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 17 Apr 2026 02:50:59 -0700
X-CSE-ConnectionGUID: eiVzfIX2TXOEzXHMzpAu2A==
X-CSE-MsgGUID: mT/kXLseSni32CcaBs5UUg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.23,184,1770624000"; d="scan'208";a="232742301"
Received: from amilburn-desk.amilburn-desk (HELO localhost) ([10.245.245.127])
 by fmviesa004-auth.fm.intel.com with
 ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 17 Apr 2026 02:50:57 -0700
From: Jani Nikula <jani.nikula@linux.intel.com>
To: Ville Syrjala <ville.syrjala@linux.intel.com>,
 intel-gfx@lists.freedesktop.org
Cc: intel-xe@lists.freedesktop.org
Subject: Re: [PATCH 07/11] drm/i915: Introduce pin_params.needs_physical
In-Reply-To: <20260416174448.28264-8-ville.syrjala@linux.intel.com>
Organization: Intel Finland Oy - BIC 0357606-4 - c/o Alberga Business Park,
 6 krs Bertel Jungin Aukio 5, 02600 Espoo, Finland
References: <20260416174448.28264-1-ville.syrjala@linux.intel.com>
 <20260416174448.28264-8-ville.syrjala@linux.intel.com>
Date: Fri, 17 Apr 2026 12:50:55 +0300
Message-ID: <be1ac262a723b245b01e20913d461905c2148e6d@intel.com>
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
	DBL_BLOCKED_OPENRESOLVER(0.00)[intel.com:email,intel.com:dkim,intel.com:mid,gabe.freedesktop.org:helo,gabe.freedesktop.org:rdns]
X-Rspamd-Queue-Id: 5638E41995C
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

On Thu, 16 Apr 2026, Ville Syrjala <ville.syrjala@linux.intel.com> wrote:
> From: Ville Syrj=C3=A4l=C3=A4 <ville.syrjala@linux.intel.com>
>
> Add a new flag pin_params.needs_physical to inform the pinning
> code that the display needs a physical address and not GGTT
> address.
>
> This isn't strictly necessary as the current phys_alignment!=3D0
> check is enough in practice. But theoretically one could have
> needs_physical=3D=3Dtrue without any alignment requirements. And
> having an explicit flag feels a bit less magical.

Agreed.

Reviewed-by: Jani Nikula <jani.nikula@intel.com>


>
> Signed-off-by: Ville Syrj=C3=A4l=C3=A4 <ville.syrjala@linux.intel.com>
> ---
>  drivers/gpu/drm/i915/display/intel_fb_pin.h | 1 +
>  drivers/gpu/drm/i915/i915_fb_pin.c          | 3 ++-
>  2 files changed, 3 insertions(+), 1 deletion(-)
>
> diff --git a/drivers/gpu/drm/i915/display/intel_fb_pin.h b/drivers/gpu/dr=
m/i915/display/intel_fb_pin.h
> index cf54a96569de..3e37e9874f50 100644
> --- a/drivers/gpu/drm/i915/display/intel_fb_pin.h
> +++ b/drivers/gpu/drm/i915/display/intel_fb_pin.h
> @@ -21,6 +21,7 @@ struct intel_fb_pin_params {
>  	unsigned int vtd_guard;
>  	bool needs_cpu_lmem_access;
>  	bool needs_low_address;
> +	bool needs_physical;
>  };
>=20=20
>  struct i915_vma *
> diff --git a/drivers/gpu/drm/i915/i915_fb_pin.c b/drivers/gpu/drm/i915/i9=
15_fb_pin.c
> index 97e4cdfd2447..bfe9a5342e13 100644
> --- a/drivers/gpu/drm/i915/i915_fb_pin.c
> +++ b/drivers/gpu/drm/i915/i915_fb_pin.c
> @@ -148,7 +148,7 @@ intel_fb_pin_to_ggtt(const struct drm_framebuffer *fb,
>  	i915_gem_ww_ctx_init(&ww, true);
>  retry:
>  	ret =3D i915_gem_object_lock(obj, &ww);
> -	if (!ret && pin_params->phys_alignment)
> +	if (!ret && pin_params->needs_physical)
>  		ret =3D i915_gem_object_attach_phys(obj, pin_params->phys_alignment);
>  	else if (!ret && HAS_LMEM(i915))
>  		ret =3D i915_gem_object_migrate(obj, &ww, INTEL_REGION_LMEM_0);
> @@ -271,6 +271,7 @@ int intel_plane_pin_fb(struct intel_plane_state *plan=
e_state,
>  			.vtd_guard =3D intel_plane_fb_vtd_guard(plane_state),
>  			.needs_cpu_lmem_access =3D intel_fb_needs_cpu_access(&fb->base),
>  			.needs_low_address =3D intel_plane_needs_low_address(display),
> +			.needs_physical =3D intel_plane_needs_physical(plane),
>  		};
>  		int fence_id =3D -1;

--=20
Jani Nikula, Intel
