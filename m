Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 65399A83D7B
	for <lists+intel-gfx@lfdr.de>; Thu, 10 Apr 2025 10:51:08 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id DCB2210E0C9;
	Thu, 10 Apr 2025 08:51:06 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="giir69dy";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.10])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 2A2A410E0C9;
 Thu, 10 Apr 2025 08:51:06 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1744275066; x=1775811066;
 h=from:to:cc:subject:in-reply-to:references:date:
 message-id:mime-version:content-transfer-encoding;
 bh=FBVTkhyb9KgEzTfbUYmkeK7lXnYc15szLFOJUh08RFs=;
 b=giir69dyX1PACpF9xZjmGFfejD5XnAlpR1c/sTZIc+bINVtzPoe7oeVv
 zjH1RXrVNkgsSvkdDHLCA4EZjBSmVo39eoAhjvkPTRzVioFTtDQY4164j
 eoSj/ybyMXQCkFMaVUna8dky/fVrNYuIKc8PV6D2ElNTvAS4vi2PMfHET
 Z0pDcdazxLEOwLsAez+7WQq+zH6eS1GdnoZtdTBYODDu2o/dMem0vSFOu
 dOoE9pnk3qkz9NdcO9I3RcMAFCQ5O4Y2dRFAso4FhjOSXBsNjJyhkuJh7
 nlPEpQR/jpLgYRft/70vLUs0okKEBG36wLT3VFfX6rgZD+z7kFkyOohx0 A==;
X-CSE-ConnectionGUID: pUnAuhmRTAqW815dqu9pNQ==
X-CSE-MsgGUID: ltcLMtmGTlO+Y5TTFwHavw==
X-IronPort-AV: E=McAfee;i="6700,10204,11399"; a="57161856"
X-IronPort-AV: E=Sophos;i="6.15,202,1739865600"; d="scan'208";a="57161856"
Received: from fmviesa010.fm.intel.com ([10.60.135.150])
 by fmvoesa104.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 10 Apr 2025 01:51:06 -0700
X-CSE-ConnectionGUID: DiXwNRpBS/yKezhCdpUaNA==
X-CSE-MsgGUID: 2/80kdB0QL6H2XJlGIVhTw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.15,202,1739865600"; d="scan'208";a="129375464"
Received: from vpanait-mobl.ger.corp.intel.com (HELO localhost)
 ([10.245.246.28])
 by fmviesa010-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 10 Apr 2025 01:51:04 -0700
From: Jani Nikula <jani.nikula@linux.intel.com>
To: Ville Syrjala <ville.syrjala@linux.intel.com>,
 intel-gfx@lists.freedesktop.org
Cc: intel-xe@lists.freedesktop.org
Subject: Re: [PATCH v2 3/6] drm/i915: Move the intel_dpt_offset() check into
 intel_plane_pin_fb()
In-Reply-To: <20250402172240.9275-4-ville.syrjala@linux.intel.com>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
References: <20250402172240.9275-1-ville.syrjala@linux.intel.com>
 <20250402172240.9275-4-ville.syrjala@linux.intel.com>
Date: Thu, 10 Apr 2025 11:51:01 +0300
Message-ID: <87y0w8v1qi.fsf@intel.com>
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

On Wed, 02 Apr 2025, Ville Syrjala <ville.syrjala@linux.intel.com> wrote:
> From: Ville Syrj=C3=A4l=C3=A4 <ville.syrjala@linux.intel.com>
>
> Now that we handle all the other vma offset stuff in
> intel_plane_pin_fb() it seems more proper to do the
> dpt_vma offset check there as well.
>
> Signed-off-by: Ville Syrj=C3=A4l=C3=A4 <ville.syrjala@linux.intel.com>

Reviewed-by: Jani Nikula <jani.nikula@intel.com>

> ---
>  drivers/gpu/drm/i915/display/intel_fb_pin.c        | 7 +++++++
>  drivers/gpu/drm/i915/display/skl_universal_plane.c | 6 ------
>  2 files changed, 7 insertions(+), 6 deletions(-)
>
> diff --git a/drivers/gpu/drm/i915/display/intel_fb_pin.c b/drivers/gpu/dr=
m/i915/display/intel_fb_pin.c
> index f2d8675dd98a..a5b9d87b2255 100644
> --- a/drivers/gpu/drm/i915/display/intel_fb_pin.c
> +++ b/drivers/gpu/drm/i915/display/intel_fb_pin.c
> @@ -259,6 +259,7 @@ intel_plane_fb_vtd_guard(const struct intel_plane_sta=
te *plane_state)
>  int intel_plane_pin_fb(struct intel_plane_state *plane_state,
>  		       const struct intel_plane_state *old_plane_state)
>  {
> +	struct intel_display *display =3D to_intel_display(plane_state);
>  	struct intel_plane *plane =3D to_intel_plane(plane_state->uapi.plane);
>  	const struct intel_framebuffer *fb =3D
>  		to_intel_framebuffer(plane_state->hw.fb);
> @@ -297,6 +298,12 @@ int intel_plane_pin_fb(struct intel_plane_state *pla=
ne_state,
>  		plane_state->dpt_vma =3D vma;
>=20=20
>  		WARN_ON(plane_state->ggtt_vma =3D=3D plane_state->dpt_vma);
> +
> +		/*
> +		 * The DPT object contains only one vma, so
> +		 * the VMA's offset within the DPT is always 0.
> +		 */
> +		drm_WARN_ON(display->drm, intel_dpt_offset(plane_state->dpt_vma));
>  	}
>=20=20
>  	/*
> diff --git a/drivers/gpu/drm/i915/display/skl_universal_plane.c b/drivers=
/gpu/drm/i915/display/skl_universal_plane.c
> index b82a9e07350b..808580826b0e 100644
> --- a/drivers/gpu/drm/i915/display/skl_universal_plane.c
> +++ b/drivers/gpu/drm/i915/display/skl_universal_plane.c
> @@ -1271,12 +1271,6 @@ static u32 skl_surf_address(const struct intel_pla=
ne_state *plane_state,
>  	u32 offset =3D plane_state->view.color_plane[color_plane].offset;
>=20=20
>  	if (intel_fb_uses_dpt(fb)) {
> -		/*
> -		 * The DPT object contains only one vma, so the VMA's offset
> -		 * within the DPT is always 0.
> -		 */
> -		drm_WARN_ON(display->drm, plane_state->dpt_vma &&
> -			    intel_dpt_offset(plane_state->dpt_vma));
>  		drm_WARN_ON(display->drm, offset & 0x1fffff);
>  		return offset >> 9;
>  	} else {

--=20
Jani Nikula, Intel
