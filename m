Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id CDE4F4B849C
	for <lists+intel-gfx@lfdr.de>; Wed, 16 Feb 2022 10:40:04 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id CDD0A10E77D;
	Wed, 16 Feb 2022 09:40:02 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga11.intel.com (mga11.intel.com [192.55.52.93])
 by gabe.freedesktop.org (Postfix) with ESMTPS id B453510E77D
 for <intel-gfx@lists.freedesktop.org>; Wed, 16 Feb 2022 09:40:01 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1645004401; x=1676540401;
 h=from:to:subject:in-reply-to:references:date:message-id:
 mime-version:content-transfer-encoding;
 bh=nqp0yrug1/DhpHaCqyf3hcELCmeRXJLjel8+qmsV4qE=;
 b=fBW+C57ywLEOBYdFYXnjldlt3QNs3b7HBc3ciRz1uZWkfXTYCy93C7XA
 AUHezUj3jNViYHpeIB1BkD1Jx2632SFTuQ8MnYvEfk5bxM3R9pjhMqHMU
 Pnno9HkGHmhaEL443PYw+qdqkPCI95oDuaUkhTsi0ibUbRbBwIEXLfR7F
 VbpAp3Lb2VAs3Ujla0pcWnq5c3xAW/jzFg3MXlXSnESjQW/GxCAxSjCW9
 4B3+W++AHE49OrHIYZz+z0Q7JaTh2gWP/PeI0ALAsvTdU9aLcj/7Bbb/h
 71QGLfezMI35nWuQQo/QivOszwHNe6VL41gruQ09AI2hDDTk/wqlPrw2a Q==;
X-IronPort-AV: E=McAfee;i="6200,9189,10259"; a="248161340"
X-IronPort-AV: E=Sophos;i="5.88,373,1635231600"; d="scan'208";a="248161340"
Received: from orsmga008.jf.intel.com ([10.7.209.65])
 by fmsmga102.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 16 Feb 2022 01:40:01 -0800
X-IronPort-AV: E=Sophos;i="5.88,373,1635231600"; d="scan'208";a="544838008"
Received: from rbilei-mobl.ger.corp.intel.com (HELO localhost)
 ([10.252.13.113])
 by orsmga008-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 16 Feb 2022 01:39:59 -0800
From: Jani Nikula <jani.nikula@linux.intel.com>
To: Ville Syrjala <ville.syrjala@linux.intel.com>,
 intel-gfx@lists.freedesktop.org
In-Reply-To: <20220211090629.15555-5-ville.syrjala@linux.intel.com>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
References: <20220211090629.15555-1-ville.syrjala@linux.intel.com>
 <20220211090629.15555-5-ville.syrjala@linux.intel.com>
Date: Wed, 16 Feb 2022 11:39:54 +0200
Message-ID: <871r035evp.fsf@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: quoted-printable
Subject: Re: [Intel-gfx] [PATCH 4/8] drm/i915: Use {active,
 scaled}_planes to compute ilk watermarks
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

On Fri, 11 Feb 2022, Ville Syrjala <ville.syrjala@linux.intel.com> wrote:
> From: Ville Syrj=C3=A4l=C3=A4 <ville.syrjala@linux.intel.com>
>
> Use the {active,scaled}_planes bitmasks from the crtc state
> rather than poking at the plane state directly. One step
> towards eliminating the last use of the somewhat questionble
> intel_atomic_crtc_state_for_each_plane_state() macro which
> peeks into the plane state without actually holding the plane
> mutex.
>
> Signed-off-by: Ville Syrj=C3=A4l=C3=A4 <ville.syrjala@linux.intel.com>

Reviewed-by: Jani Nikula <jani.nikula@intel.com>

> ---
>  drivers/gpu/drm/i915/intel_pm.c | 8 ++------
>  1 file changed, 2 insertions(+), 6 deletions(-)
>
> diff --git a/drivers/gpu/drm/i915/intel_pm.c b/drivers/gpu/drm/i915/intel=
_pm.c
> index 4f2f0e80beef..0fa3dce9bd54 100644
> --- a/drivers/gpu/drm/i915/intel_pm.c
> +++ b/drivers/gpu/drm/i915/intel_pm.c
> @@ -3179,12 +3179,8 @@ static int ilk_compute_pipe_wm(struct intel_atomic=
_state *state,
>  	}
>=20=20
>  	pipe_wm->pipe_enabled =3D crtc_state->hw.active;
> -	if (sprstate) {
> -		pipe_wm->sprites_enabled =3D sprstate->uapi.visible;
> -		pipe_wm->sprites_scaled =3D sprstate->uapi.visible &&
> -			(drm_rect_width(&sprstate->uapi.dst) !=3D drm_rect_width(&sprstate->u=
api.src) >> 16 ||
> -			 drm_rect_height(&sprstate->uapi.dst) !=3D drm_rect_height(&sprstate-=
>uapi.src) >> 16);
> -	}
> +	pipe_wm->sprites_enabled =3D crtc_state->active_planes & BIT(PLANE_SPRI=
TE0);
> +	pipe_wm->sprites_scaled =3D crtc_state->scaled_planes & BIT(PLANE_SPRIT=
E0);
>=20=20
>  	usable_level =3D max_level;

--=20
Jani Nikula, Intel Open Source Graphics Center
