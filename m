Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 3441CCAFB4B
	for <lists+intel-gfx@lfdr.de>; Tue, 09 Dec 2025 11:58:35 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 9523510E50C;
	Tue,  9 Dec 2025 10:58:33 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="EtddptZ6";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.9])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 1B0DA10E50A;
 Tue,  9 Dec 2025 10:58:32 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1765277912; x=1796813912;
 h=from:to:cc:subject:in-reply-to:references:date:
 message-id:mime-version:content-transfer-encoding;
 bh=0JdgsNQ5FHlCuUeC54j2HGoY4bAXd+brRmpo8MHLJp4=;
 b=EtddptZ6qkkIgKidy2+ENTZG+++Hoxym+TxCYJwEezp1xoSm4l7Xe/Xr
 MfI4T2Z8DLtlDIPUOLB0Ru0CKf7pGJX2uzp1XjlwIqp5ECFaMXMDTN6QJ
 Le6wlyxR+8zkdIQmmPYxgsKTvnxqUrbFfESISfS4G62vnuP9FhVOxPSmv
 jG2an0Wt7M1xgjEKzl0MAMfRZ5oPiO4ABYeDIiAD4ENX741sRNfUmWOsm
 vyZQS5XBpNJm4iCKRaec2BaQkSshLT1cNzUQ0HCy8CudLuZcMtj1zDm+U
 PEsyGYyVy6VY9eMHNWeCOLY1J1Arb4eJb6TZfj/Tc9AKF5GFnr410TzpO w==;
X-CSE-ConnectionGUID: FBNYj22kR56snJwPTmkGLQ==
X-CSE-MsgGUID: Yz+ipB0aRf61zxZEb+QpPA==
X-IronPort-AV: E=McAfee;i="6800,10657,11636"; a="77917964"
X-IronPort-AV: E=Sophos;i="6.20,261,1758610800"; d="scan'208";a="77917964"
Received: from fmviesa001.fm.intel.com ([10.60.135.141])
 by fmvoesa103.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 09 Dec 2025 02:58:31 -0800
X-CSE-ConnectionGUID: 60bHkl2VR6G0HwkxH3vq3Q==
X-CSE-MsgGUID: 38Tr5WwpRS6wwvUUEyMbVQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.20,261,1758610800"; d="scan'208";a="227237865"
Received: from mwiniars-mobl.ger.corp.intel.com (HELO localhost)
 ([10.245.246.154])
 by smtpauth.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 09 Dec 2025 02:58:30 -0800
From: Jani Nikula <jani.nikula@linux.intel.com>
To: Ville Syrjala <ville.syrjala@linux.intel.com>,
 intel-gfx@lists.freedesktop.org
Cc: intel-xe@lists.freedesktop.org
Subject: Re: [PATCH 17/19] drm/i915: Get rid of the INTEL_GMCH_CTRL alias
In-Reply-To: <20251208182637.334-18-ville.syrjala@linux.intel.com>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
References: <20251208182637.334-1-ville.syrjala@linux.intel.com>
 <20251208182637.334-18-ville.syrjala@linux.intel.com>
Date: Tue, 09 Dec 2025 12:58:27 +0200
Message-ID: <f7ad9b7fc7d7422a2370fb223ceb4cd5b9d3a48c@intel.com>
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
> INTEL_GMCH_CTRL and I830_GMCH_CTRL are the same register.
> Get rid of the INTEL_GMCH_CTRL name.
>
> Signed-off-by: Ville Syrj=C3=A4l=C3=A4 <ville.syrjala@linux.intel.com>

Reviewed-by: Jani Nikula <jani.nikula@intel.com>

> ---
>  drivers/gpu/drm/i915/display/intel_vga.c | 2 +-
>  include/drm/intel/i915_drm.h             | 5 +++--
>  2 files changed, 4 insertions(+), 3 deletions(-)
>
> diff --git a/drivers/gpu/drm/i915/display/intel_vga.c b/drivers/gpu/drm/i=
915/display/intel_vga.c
> index 9e1f3ab632d5..6fc3e3702cb8 100644
> --- a/drivers/gpu/drm/i915/display/intel_vga.c
> +++ b/drivers/gpu/drm/i915/display/intel_vga.c
> @@ -20,7 +20,7 @@
>=20=20
>  static unsigned int intel_gmch_ctrl_reg(struct intel_display *display)
>  {
> -	return DISPLAY_VER(display) >=3D 6 ? SNB_GMCH_CTRL : INTEL_GMCH_CTRL;
> +	return DISPLAY_VER(display) >=3D 6 ? SNB_GMCH_CTRL : I830_GMCH_CTRL;
>  }
>=20=20
>  static bool intel_vga_decode_is_enabled(struct intel_display *display)
> diff --git a/include/drm/intel/i915_drm.h b/include/drm/intel/i915_drm.h
> index adff68538484..91f628367f1f 100644
> --- a/include/drm/intel/i915_drm.h
> +++ b/include/drm/intel/i915_drm.h
> @@ -44,8 +44,6 @@ extern struct resource intel_graphics_stolen_res;
>   * This is all handled in the intel-gtt.ko module. i915.ko only
>   * cares about the vga bit for the vga arbiter.
>   */
> -#define INTEL_GMCH_CTRL		0x52
> -#define INTEL_GMCH_VGA_DISABLE  (1 << 1)
>  #define SNB_GMCH_CTRL		0x50
>  #define    SNB_GMCH_GGMS_SHIFT	8 /* GTT Graphics Memory Size */
>  #define    SNB_GMCH_GGMS_MASK	0x3
> @@ -80,6 +78,9 @@ extern struct resource intel_graphics_stolen_res;
>  #define INTEL_GMCH_GMS_STOLEN_224M	(0xc << 4)
>  #define INTEL_GMCH_GMS_STOLEN_352M	(0xd << 4)
>=20=20
> +/* valid for both I830_GMCH_CTRL and SNB_GMCH_CTRL */
> +#define   INTEL_GMCH_VGA_DISABLE  (1 << 1)
> +
>  #define I830_DRB3		0x63
>  #define I85X_DRB3		0x43
>  #define I865_TOUD		0xc4

--=20
Jani Nikula, Intel
