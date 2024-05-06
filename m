Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id A35DF8BCAF6
	for <lists+intel-gfx@lfdr.de>; Mon,  6 May 2024 11:42:12 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 17B56112292;
	Mon,  6 May 2024 09:42:11 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="V6Bz3KtY";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.9])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 71DD2112293
 for <intel-gfx@lists.freedesktop.org>; Mon,  6 May 2024 09:42:09 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1714988529; x=1746524529;
 h=from:to:subject:in-reply-to:references:date:message-id:
 mime-version:content-transfer-encoding;
 bh=2O3lOpLEIFyY3GgJ86AVOuLEXddSq75ocp2AWfa4cyA=;
 b=V6Bz3KtYp8RfZMp/6x5LfFnA/xCQHWsLiWN2AwpBaIwbm4oxZi0dspmE
 8bpy0yO09yoBUtwI2bas+MgcKltT8JlccYvHE+CH8mh4mkYmDsR5dGvk3
 JPDDVoujRbwgMOi+iVTtvCo7ZuN6lm4MAT12NrqS30U4MkRhH9NUWLJsu
 KPGblf8sw+N1HFpnXziBr6mE7lVMeagwVN6hV/LobkW47m6aaNWq3vbgw
 GH1TYP2TpykM1vDdinSIepy1T/H2avmvlAv5EddCuPLLtyBJJ+LZ2aInV
 ZfkDEOYGZnhnz7JNIf+YlxeGJf2nDjejfuGPETSKDcbu53DfwQeB34H1l w==;
X-CSE-ConnectionGUID: BEnoeGOrQeqBcNiyZIfwtw==
X-CSE-MsgGUID: 64ZXZoJ9Qp6sBUdf7QVaSw==
X-IronPort-AV: E=McAfee;i="6600,9927,11064"; a="21403727"
X-IronPort-AV: E=Sophos;i="6.07,258,1708416000"; d="scan'208";a="21403727"
Received: from orviesa009.jf.intel.com ([10.64.159.149])
 by fmvoesa103.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 06 May 2024 02:42:08 -0700
X-CSE-ConnectionGUID: Bm8ViM1LSVaueSwMHcOjDg==
X-CSE-MsgGUID: R085NoMASKSoeaERg5rJbg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.07,258,1708416000"; d="scan'208";a="28194674"
Received: from lfiedoro-mobl.ger.corp.intel.com (HELO localhost)
 ([10.245.246.230])
 by orviesa009-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 06 May 2024 02:42:07 -0700
From: Jani Nikula <jani.nikula@linux.intel.com>
To: Ville Syrjala <ville.syrjala@linux.intel.com>,
 intel-gfx@lists.freedesktop.org
Subject: Re: [PATCH 31/35] drm/i915/bios: Define VBT block 57 (Vswing
 PreEmphasis Table) contents
In-Reply-To: <20240503122449.27266-32-ville.syrjala@linux.intel.com>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
References: <20240503122449.27266-1-ville.syrjala@linux.intel.com>
 <20240503122449.27266-32-ville.syrjala@linux.intel.com>
Date: Mon, 06 May 2024 12:42:03 +0300
Message-ID: <87ikzrmg44.fsf@intel.com>
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

On Fri, 03 May 2024, Ville Syrjala <ville.syrjala@linux.intel.com> wrote:
> From: Ville Syrj=C3=A4l=C3=A4 <ville.syrjala@linux.intel.com>
>
> Define the contents of VBT block 57 (Vswing PreEmphasis Table).
>
> The contents is highly platform specific. The columns of the
> table corresponding to some set of PHY/etc registers. The rows
> corresponding to all legal vswing+pre-emphasis combinations
> (ie. should be 10 rows in each table). And each table
> corresponds to a platform specific (mostly undocumented)
> mapping based on link rate/eDP low-vswing/etc. parameters.
>
> Signed-off-by: Ville Syrj=C3=A4l=C3=A4 <ville.syrjala@linux.intel.com>

I guess we should use this... but I'm not sure how.

Reviewed-by: Jani Nikula <jani.nikula@intel.com>

> ---
>  drivers/gpu/drm/i915/display/intel_vbt_defs.h | 11 +++++++++++
>  1 file changed, 11 insertions(+)
>
> diff --git a/drivers/gpu/drm/i915/display/intel_vbt_defs.h b/drivers/gpu/=
drm/i915/display/intel_vbt_defs.h
> index 50d0d96fca67..0e5a2bf429f4 100644
> --- a/drivers/gpu/drm/i915/display/intel_vbt_defs.h
> +++ b/drivers/gpu/drm/i915/display/intel_vbt_defs.h
> @@ -184,6 +184,7 @@ enum bdb_block_id {
>  	BDB_MIPI_SEQUENCE		=3D 53, /* 177+ */
>  	BDB_RGB_PALETTE			=3D 54, /* 180+ */
>  	BDB_COMPRESSION_PARAMETERS	=3D 56, /* 213+ */
> +	BDB_VSWING_PREEMPH		=3D 57, /* 218+ */
>  	BDB_GENERIC_DTD			=3D 58, /* 229+ */
>  	BDB_SKIP			=3D 254, /* VBIOS only */
>  };
> @@ -1486,6 +1487,16 @@ struct bdb_compression_parameters {
>  	struct dsc_compression_parameters_entry data[16];
>  } __packed;
>=20=20
> +/*
> + * Block 57 -  Vswing PreEmphasis Table
> + */
> +
> +struct bdb_vswing_preemph {
> +	u8 num_tables;
> +	u8 num_columns;
> +	u32 tables[];
> +} __packed;
> +
>  /*
>   * Block 58 - Generic DTD Block
>   */

--=20
Jani Nikula, Intel
