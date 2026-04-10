Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id AMwXNcod2WmLmQgAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Fri, 10 Apr 2026 17:56:58 +0200
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 6A4AA3D9EA2
	for <lists+intel-gfx@lfdr.de>; Fri, 10 Apr 2026 17:56:58 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id D4CE810E140;
	Fri, 10 Apr 2026 15:56:56 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="fLcDG4Hb";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.13])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 39F8B10E140;
 Fri, 10 Apr 2026 15:56:55 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1775836616; x=1807372616;
 h=from:to:cc:subject:in-reply-to:references:date:
 message-id:mime-version:content-transfer-encoding;
 bh=giwSkXYu6pn9Pti6NjlI1izF2IJuyUF3Q4rF0vg+Tug=;
 b=fLcDG4HbRKv+aOlvT5B/yBPC2AeWMtYeOP7mB37FwHaQhavPIqZtrYOZ
 lcE2+gkV6WlE4hSsPNRvA5ZLwIp3kZjyCsNILdEYexwedR//xwWFRPMTO
 a2LtUYXUE7YzvUkY7bdzPosiXqh65HRvORA5uZn7rZ4jSIxRbOsqn1bNh
 A7IYOwZLSMtB9TAL81ZcdsTPg6+ZS/kCNbJBO0VJh4SKRPecjX7im0s51
 tVcHBJpqf7dQuCcSWA8rt8wZgPsYHoNOfQmFgBbBl1e61ZcMzdmXiz76R
 GeuqJz9T6mhoOxb+e3w85fqrQSiQuyBcJ/q7mraPg1ydBKzRnUKluZE/O A==;
X-CSE-ConnectionGUID: Rqkr43tQRfeLvvnyA0yJcQ==
X-CSE-MsgGUID: ncQoKsdrQ9K5RtTt0NeMow==
X-IronPort-AV: E=McAfee;i="6800,10657,11755"; a="87935056"
X-IronPort-AV: E=Sophos;i="6.23,171,1770624000"; d="scan'208";a="87935056"
Received: from fmviesa004.fm.intel.com ([10.60.135.144])
 by orvoesa105.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 10 Apr 2026 08:56:36 -0700
X-CSE-ConnectionGUID: iF2w8mTuTdyLHx9zQHwmpw==
X-CSE-MsgGUID: hjd4odrjQr65nZ9HLI9OwQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.23,171,1770624000"; d="scan'208";a="230838521"
Received: from mkosciow-mobl1.ger.corp.intel.com (HELO localhost)
 ([10.245.246.149])
 by fmviesa004-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 10 Apr 2026 08:56:33 -0700
From: Jani Nikula <jani.nikula@linux.intel.com>
To: Ville Syrjala <ville.syrjala@linux.intel.com>,
 intel-gfx@lists.freedesktop.org
Cc: intel-xe@lists.freedesktop.org
Subject: Re: [PATCH 08/10] drm/i915: Reject X/Y tiled BIOS FB if we don't
 have fenced regions
In-Reply-To: <20260410150449.9699-9-ville.syrjala@linux.intel.com>
Organization: Intel Finland Oy - BIC 0357606-4 - c/o Alberga Business Park,
 6 krs Bertel Jungin Aukio 5, 02600 Espoo, Finland
References: <20260410150449.9699-1-ville.syrjala@linux.intel.com>
 <20260410150449.9699-9-ville.syrjala@linux.intel.com>
Date: Fri, 10 Apr 2026 18:56:30 +0300
Message-ID: <12f9a7452b8f8a9a76b9f680f4b250ae61433216@intel.com>
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
X-Rspamd-Queue-Id: 6A4AA3D9EA2
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

On Fri, 10 Apr 2026, Ville Syrjala <ville.syrjala@linux.intel.com> wrote:
> From: Ville Syrj=C3=A4l=C3=A4 <ville.syrjala@linux.intel.com>
>
> The CPU always needs linear view into the BIOS FB, and for X/Y tiled
> buffers that is achieved by the use of a fenced region. If the
> underlying driver doesn't support fenced regions then we can't keep
> the X/Y tiled BIOS FB. i915 has fenced regions, xe does not.
>
> Probably not a big deal since I don't think we've seen tiled BIOS
> FBs outside of some MacBooks. See eg. commit d9a515867bdb
> ("drm/i915/gen9+: Fix initial readout for Y tiled framebuffers").
>
> Signed-off-by: Ville Syrj=C3=A4l=C3=A4 <ville.syrjala@linux.intel.com>

I'll mostly take your word for it.

Reviewed-by: Jani Nikula <jani.nikula@intel.com>

> ---
>  drivers/gpu/drm/i915/display/intel_initial_plane.c | 6 +++++-
>  1 file changed, 5 insertions(+), 1 deletion(-)
>
> diff --git a/drivers/gpu/drm/i915/display/intel_initial_plane.c b/drivers=
/gpu/drm/i915/display/intel_initial_plane.c
> index 5a5adf738d4a..55b6cdded126 100644
> --- a/drivers/gpu/drm/i915/display/intel_initial_plane.c
> +++ b/drivers/gpu/drm/i915/display/intel_initial_plane.c
> @@ -79,9 +79,13 @@ intel_alloc_initial_plane_obj(struct intel_display *di=
splay,
>=20=20
>  	switch (fb->modifier) {
>  	case DRM_FORMAT_MOD_LINEAR:
> +		break;
>  	case I915_FORMAT_MOD_X_TILED:
>  	case I915_FORMAT_MOD_Y_TILED:
> -		break;
> +		/* fenced region needed for linear CPU access to tiled FB */
> +		if (intel_parent_has_fenced_regions(display))
> +			break;
> +		fallthrough;
>  	default:
>  		drm_dbg_kms(display->drm, "Unsupported modifier for initial FB: 0x%llx=
\n",
>  			    fb->modifier);

--=20
Jani Nikula, Intel
