Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id kOU2KygV1mnwAwgAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Wed, 08 Apr 2026 10:43:20 +0200
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 4A97B3B93D2
	for <lists+intel-gfx@lfdr.de>; Wed, 08 Apr 2026 10:43:20 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id CFC2010E595;
	Wed,  8 Apr 2026 08:43:18 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="JlWWD5it";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.19])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 4232C10E58F;
 Wed,  8 Apr 2026 08:43:17 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1775637797; x=1807173797;
 h=from:to:cc:subject:in-reply-to:references:date:
 message-id:mime-version:content-transfer-encoding;
 bh=Wi/hk6XWNyF18m+HDz4zQ9kUVwcOeEBBkVG+l9gCAxo=;
 b=JlWWD5it46azXSwYaBtbQpGoHGVR9v/OfBibRKKj1xDBBKgBtbQGGZf9
 WRsWfe1Hp2jG2V9ktKxx6eEn/Q3ABYRIMv23eMCr5OV07mouyPnZNEKhe
 6ssE1qklF21TzXf8hsZPRHlUgfCKave+5VSw5IRUS62gKy890j9uPiZMd
 kUqVpeVSwgLTkXW1JiTMzpWLXBblwTHIPm7r4HW4nYVRv4Ckl8UQ4C52s
 FGU/O6Ee61SBEN4MQg8Or5nMghOyZsvI2Qa5y78d6sXbc4ddKkPsIiZkG
 G8BKcLe/S6YPV9QKrKRX39otZSi81eKmhZN6dqFhG1k24HBdyoJ3341q8 g==;
X-CSE-ConnectionGUID: EnBX55E1QNWexcNHtEfTiA==
X-CSE-MsgGUID: DvoTbw1bQpiMtTmf1ryX2Q==
X-IronPort-AV: E=McAfee;i="6800,10657,11752"; a="76515116"
X-IronPort-AV: E=Sophos;i="6.23,167,1770624000"; d="scan'208";a="76515116"
Received: from orviesa005.jf.intel.com ([10.64.159.145])
 by orvoesa111.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 08 Apr 2026 01:43:17 -0700
X-CSE-ConnectionGUID: PIFEw8ePTji4/hU+y9klQA==
X-CSE-MsgGUID: YozGg9lqRxyAAQsCBnoxQg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.23,167,1770624000"; d="scan'208";a="233361899"
Received: from krybak-mobl1.ger.corp.intel.com (HELO localhost)
 ([10.245.246.32])
 by orviesa005-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 08 Apr 2026 01:43:15 -0700
From: Jani Nikula <jani.nikula@linux.intel.com>
To: Ville Syrjala <ville.syrjala@linux.intel.com>,
 intel-gfx@lists.freedesktop.org
Cc: intel-xe@lists.freedesktop.org
Subject: Re: [PATCH 02/12] drm/i915/fb: Make
 intel_fb_needs_pot_stride_remap() static
In-Reply-To: <20260407155053.32156-3-ville.syrjala@linux.intel.com>
Organization: Intel Finland Oy - BIC 0357606-4 - c/o Alberga Business Park,
 6 krs Bertel Jungin Aukio 5, 02600 Espoo, Finland
References: <20260407155053.32156-1-ville.syrjala@linux.intel.com>
 <20260407155053.32156-3-ville.syrjala@linux.intel.com>
Date: Wed, 08 Apr 2026 11:43:12 +0300
Message-ID: <c53d7e1be05b94785cdbe8ae47ebac129ba08c6b@intel.com>
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
	NEURAL_HAM(-0.00)[-0.999];
	FROM_NEQ_ENVFROM(0.00)[jani.nikula@linux.intel.com,intel-gfx-bounces@lists.freedesktop.org];
	FORGED_SENDER_MAILLIST(0.00)[];
	MID_RHS_MATCH_FROMTLD(0.00)[];
	ASN(0.00)[asn:6366, ipnet:131.252.0.0/16, country:US];
	TAGGED_RCPT(0.00)[intel-gfx];
	MISSING_XM_UA(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[intel.com:dkim,intel.com:email,intel.com:mid,gabe.freedesktop.org:helo,gabe.freedesktop.org:rdns]
X-Rspamd-Queue-Id: 4A97B3B93D2
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

On Tue, 07 Apr 2026, Ville Syrjala <ville.syrjala@linux.intel.com> wrote:
> From: Ville Syrj=C3=A4l=C3=A4 <ville.syrjala@linux.intel.com>
>
> intel_fb_needs_pot_stride_remap() isn't needed outside intel_fb.c.
> Make it static.
>
> Signed-off-by: Ville Syrj=C3=A4l=C3=A4 <ville.syrjala@linux.intel.com>

Reviewed-by: Jani Nikula <jani.nikula@intel.com>

> ---
>  drivers/gpu/drm/i915/display/intel_fb.c | 2 +-
>  drivers/gpu/drm/i915/display/intel_fb.h | 1 -
>  2 files changed, 1 insertion(+), 2 deletions(-)
>
> diff --git a/drivers/gpu/drm/i915/display/intel_fb.c b/drivers/gpu/drm/i9=
15/display/intel_fb.c
> index 83392c1a1ebe..4b0afea1c456 100644
> --- a/drivers/gpu/drm/i915/display/intel_fb.c
> +++ b/drivers/gpu/drm/i915/display/intel_fb.c
> @@ -1265,7 +1265,7 @@ static bool intel_plane_can_remap(const struct inte=
l_plane_state *plane_state)
>  	return true;
>  }
>=20=20
> -bool intel_fb_needs_pot_stride_remap(const struct intel_framebuffer *fb)
> +static bool intel_fb_needs_pot_stride_remap(const struct intel_framebuff=
er *fb)
>  {
>  	struct intel_display *display =3D to_intel_display(fb->base.dev);
>=20=20
> diff --git a/drivers/gpu/drm/i915/display/intel_fb.h b/drivers/gpu/drm/i9=
15/display/intel_fb.h
> index fb1ec2a1e905..fc2c4d59bf06 100644
> --- a/drivers/gpu/drm/i915/display/intel_fb.h
> +++ b/drivers/gpu/drm/i915/display/intel_fb.h
> @@ -77,7 +77,6 @@ u32 intel_plane_compute_aligned_offset(int *x, int *y,
>  				       const struct intel_plane_state *plane_state,
>  				       int color_plane);
>=20=20
> -bool intel_fb_needs_pot_stride_remap(const struct intel_framebuffer *fb);
>  bool intel_plane_uses_fence(const struct intel_plane_state *plane_state);
>  bool intel_fb_supports_90_270_rotation(const struct intel_framebuffer *f=
b);

--=20
Jani Nikula, Intel
