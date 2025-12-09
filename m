Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 2C1B5CAFB42
	for <lists+intel-gfx@lfdr.de>; Tue, 09 Dec 2025 11:56:36 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 9B82F10E509;
	Tue,  9 Dec 2025 10:56:34 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="cHpr9Q3c";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.17])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 3E1FB10E509;
 Tue,  9 Dec 2025 10:56:34 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1765277794; x=1796813794;
 h=from:to:cc:subject:in-reply-to:references:date:
 message-id:mime-version:content-transfer-encoding;
 bh=6IKjrUvl1FVXhRTWmlwDLdVDt7ismwdOgzbCjRn0Hfk=;
 b=cHpr9Q3c2+v2VlnuvLminh6TnCHXJVEtH7rhARuFMU6FUBLpi3w2Qtfs
 bfsNdpf+s+HaDpGyNxKfatu5lqcIVZiUtCPFGKSLd/NNtuhxxsdeZvCEU
 5RK9YTzJpG5jrLSrNQZ1rOL5UbeHvZYOdZEEDEen8gdc4lLTGKtHEvmVs
 oZHFm6EwjjnM6cH7EoKNpbWQwk1ERX+2fWLCbqNjJCjUII5Qusut6nnFB
 KLJoFE5R3M6DzKjFw7uLUrxJHyUkOvcz4bW2W6kCfFMTIE69GU2ymCnmK
 9KtFM+lunsBE5uSNNUQ0UVBXfmDuyu9u+y7D+18Q6JOLk97LiW2pQXf5d w==;
X-CSE-ConnectionGUID: TfmVmpJ0QjiuLvoRbhiTzg==
X-CSE-MsgGUID: kPHwi0zDRmWZPEKQE5s/0A==
X-IronPort-AV: E=McAfee;i="6800,10657,11636"; a="67126161"
X-IronPort-AV: E=Sophos;i="6.20,261,1758610800"; d="scan'208";a="67126161"
Received: from fmviesa003.fm.intel.com ([10.60.135.143])
 by fmvoesa111.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 09 Dec 2025 02:56:34 -0800
X-CSE-ConnectionGUID: bsf+TfnJTaOcLMtMkDxWhQ==
X-CSE-MsgGUID: WgikmVAiS+W4EsHyNTM3Bg==
X-ExtLoop1: 1
Received: from mwiniars-mobl.ger.corp.intel.com (HELO localhost)
 ([10.245.246.154])
 by fmviesa003-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 09 Dec 2025 02:56:32 -0800
From: Jani Nikula <jani.nikula@linux.intel.com>
To: Ville Syrjala <ville.syrjala@linux.intel.com>,
 intel-gfx@lists.freedesktop.org
Cc: intel-xe@lists.freedesktop.org
Subject: Re: [PATCH 15/19] drm/i915/crt: Use IS0_R instead of VGA_MIS_W
In-Reply-To: <20251208182637.334-16-ville.syrjala@linux.intel.com>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
References: <20251208182637.334-1-ville.syrjala@linux.intel.com>
 <20251208182637.334-16-ville.syrjala@linux.intel.com>
Date: Tue, 09 Dec 2025 12:56:29 +0200
Message-ID: <fc2341f6d4224ecba5f317cbe5f20380fc9e8d3d@intel.com>
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

On Mon, 08 Dec 2025, Ville Syrjala <ville.syrjala@linux.intel.com> wrote:
> From: Ville Syrj=C3=A4l=C3=A4 <ville.syrjala@linux.intel.com>
>
> Use the proper IS0_R name for the VGA input status register 0, instead
> of using the VGA_MIS_W alias which is meant for write accesses to the
> same address. Yes, VGA registers are weird.
>
> Signed-off-by: Ville Syrj=C3=A4l=C3=A4 <ville.syrjala@linux.intel.com>

Reviewed-by: Jani Nikula <jani.nikula@intel.com>

> ---
>  drivers/gpu/drm/i915/display/intel_crt.c | 4 ++--
>  1 file changed, 2 insertions(+), 2 deletions(-)
>
> diff --git a/drivers/gpu/drm/i915/display/intel_crt.c b/drivers/gpu/drm/i=
915/display/intel_crt.c
> index dedc26f6a2b2..6f216ba887bc 100644
> --- a/drivers/gpu/drm/i915/display/intel_crt.c
> +++ b/drivers/gpu/drm/i915/display/intel_crt.c
> @@ -738,7 +738,7 @@ intel_crt_load_detect(struct intel_crt *crt, enum pip=
e pipe)
>  		 * border color for Color info.
>  		 */
>  		intel_crtc_wait_for_next_vblank(intel_crtc_for_pipe(display, pipe));
> -		st00 =3D intel_vga_read(display, VGA_MIS_W, true);
> +		st00 =3D intel_vga_read(display, VGA_IS0_R, true);
>  		status =3D ((st00 & (1 << 4)) !=3D 0) ?
>  			connector_status_connected :
>  			connector_status_disconnected;
> @@ -786,7 +786,7 @@ intel_crt_load_detect(struct intel_crt *crt, enum pip=
e pipe)
>  		do {
>  			count++;
>  			/* Read the ST00 VGA status register */
> -			st00 =3D intel_vga_read(display, VGA_MIS_W, true);
> +			st00 =3D intel_vga_read(display, VGA_IS0_R, true);
>  			if (st00 & (1 << 4))
>  				detect++;
>  		} while ((intel_de_read(display, PIPEDSL(display, pipe)) =3D=3D dsl));

--=20
Jani Nikula, Intel
