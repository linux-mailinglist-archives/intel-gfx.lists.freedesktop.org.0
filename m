Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id E30D789677A
	for <lists+intel-gfx@lfdr.de>; Wed,  3 Apr 2024 10:03:47 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 25F8411252E;
	Wed,  3 Apr 2024 08:03:46 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="Pt/rYm9C";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.12])
 by gabe.freedesktop.org (Postfix) with ESMTPS id AE5A1112504;
 Wed,  3 Apr 2024 08:03:44 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1712131424; x=1743667424;
 h=from:to:cc:subject:in-reply-to:references:date:
 message-id:mime-version:content-transfer-encoding;
 bh=jnnGmbacFrUny111x1uye6GLcfZ1b/AdN0Kt5gGriMM=;
 b=Pt/rYm9C9B2HtMhcY0dX9fT0SbkmWXUUPDa+RS8RseWoCErrQaFcDeV3
 SiVxASrxFXVr6b3dkA0F5V/Q4vvvAUXGxOavNNvjVAT16ajyzVoPcFOPl
 nkyVDPDPSCzmt3OAMGP5KfLuiffo5dDa8V/gti5jtAR7VfZ1SJerklwEd
 FMuJHCEuPzXFf/tZ02pv2Rit+njKCVSxoMovc2fEkG+FN3vieKVbTGVU2
 9aANs58TQaEqCqvtIeJbl134NmsWX4cc32z2OuFVY4oEQBfrXMRZkOEGp
 nH6DgU7+PITP0tikL93yz5hTkEY29IJ4443WRx/VIJDLUZ0yvC/Xp4Uh7 A==;
X-CSE-ConnectionGUID: GquZedbfSR+9PSjzXooxmw==
X-CSE-MsgGUID: bZNtFTL6SBu+eH8sj+b0CA==
X-IronPort-AV: E=McAfee;i="6600,9927,11032"; a="11121344"
X-IronPort-AV: E=Sophos;i="6.07,176,1708416000"; d="scan'208";a="11121344"
Received: from orviesa010.jf.intel.com ([10.64.159.150])
 by fmvoesa106.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 03 Apr 2024 01:03:43 -0700
X-CSE-ConnectionGUID: TMHrLnGITqq9huQCgKWdMQ==
X-CSE-MsgGUID: seHLOkkKQcuWIk81DTxxxw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.07,176,1708416000"; d="scan'208";a="18177741"
Received: from melsaid-mobl.ger.corp.intel.com (HELO localhost)
 ([10.252.41.235])
 by orviesa010-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 03 Apr 2024 01:03:41 -0700
From: Jani Nikula <jani.nikula@intel.com>
To: intel-gfx@lists.freedesktop.org, intel-xe@lists.freedesktop.org
Cc: Jouni =?utf-8?Q?H=C3=B6gander?= <jouni.hogander@intel.com>, Luca Coelho
 <luciano.coelho@intel.com>, Lucas De Marchi <lucas.demarchi@intel.com>,
 Rodrigo Vivi <rodrigo.vivi@intel.com>
Subject: Re: [PATCH] drm/i915/display: fix display param dup for NULL char *
 params
In-Reply-To: <20240402155534.1788466-1-jani.nikula@intel.com>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
References: <20240402155534.1788466-1-jani.nikula@intel.com>
Date: Wed, 03 Apr 2024 11:03:38 +0300
Message-ID: <87h6gieuud.fsf@intel.com>
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

On Tue, 02 Apr 2024, Jani Nikula <jani.nikula@intel.com> wrote:
> The display param duplication deviates from the original param
> duplication in that it converts NULL params to to allocated empty
> strings. This works for the vbt_firmware parameter, but not for
> dmc_firmware_path, the user of which interprets NULL and the empty
> string as distinct values. Specifically, the empty dmc_firmware_path
> leads to DMC and PM being disabled.
>
> Just remove the NULL check and pass it to kstrdup(), which safely
> returns NULL for NULL input.

Turns out this fails miserably as well. The debugfs for display params
oopses for NULL value while the i915 core debugfs doesn't. I obviously
didn't realize how the param handling was subtly different between the
two.

Since the quick fix didn't cut it, I've opted to revert 0d82a0d6f556
("drm/i915/display: move dmc_firmware_path to display params") with
Rodrigo's and Lucas' acks. Back to the drawing board.

We probably want to first address the issue with NULL and "" being
distinct values for firmware path params and the fact that you can't set
them back to NULL via debugfs or module param sysfs.

BR,
Jani.


> Fixes: 8015bee0bfec ("drm/i915/display: Add framework to add parameters s=
pecific to display")
> Fixes: 0d82a0d6f556 ("drm/i915/display: move dmc_firmware_path to display=
 params")
> Cc: Jouni H=C3=B6gander <jouni.hogander@intel.com>
> Cc: Luca Coelho <luciano.coelho@intel.com>
> Cc: <stable@vger.kernel.org> # v6.8+
> Signed-off-by: Jani Nikula <jani.nikula@intel.com>
> ---
>  drivers/gpu/drm/i915/display/intel_display_params.c | 4 ++--
>  1 file changed, 2 insertions(+), 2 deletions(-)
>
> diff --git a/drivers/gpu/drm/i915/display/intel_display_params.c b/driver=
s/gpu/drm/i915/display/intel_display_params.c
> index c8e3d6892e23..49c6b42077dc 100644
> --- a/drivers/gpu/drm/i915/display/intel_display_params.c
> +++ b/drivers/gpu/drm/i915/display/intel_display_params.c
> @@ -176,9 +176,9 @@ void intel_display_params_dump(struct drm_i915_privat=
e *i915, struct drm_printer
>  #undef PRINT
>  }
>=20=20
> -__maybe_unused static void _param_dup_charp(char **valp)
> +static void _param_dup_charp(char **valp)
>  {
> -	*valp =3D kstrdup(*valp ? *valp : "", GFP_ATOMIC);
> +	*valp =3D kstrdup(*valp, GFP_ATOMIC);
>  }
>=20=20
>  __maybe_unused static void _param_nop(void *valp)

--=20
Jani Nikula, Intel
