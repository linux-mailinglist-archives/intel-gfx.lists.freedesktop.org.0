Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 298888BCAE9
	for <lists+intel-gfx@lfdr.de>; Mon,  6 May 2024 11:40:49 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 622DF1127B7;
	Mon,  6 May 2024 09:40:47 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="GNeMj7qt";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.20])
 by gabe.freedesktop.org (Postfix) with ESMTPS id DC7C7112299
 for <intel-gfx@lists.freedesktop.org>; Mon,  6 May 2024 09:40:46 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1714988447; x=1746524447;
 h=from:to:subject:in-reply-to:references:date:message-id:
 mime-version:content-transfer-encoding;
 bh=bNPEWQZwCMn2xwxZ0FKjkHkFqOE1PT/Xqx+owJ6jxco=;
 b=GNeMj7qtlr+uZO1nMRU9DUBXB64Naz/CcqcynXPHXuLHsubavN4jvACp
 GS9KSZrLmmPbSj3V6K/Zw+lduJXgRdYGoJ/Lpd6OlPxuos4qRdjThkNVe
 zP85qg1iZiWEQrrqPRa+xS4VooC16DoOFh/N3ji+1+J6jKnVmYR+My1am
 smRvN1FR+oMlnyVyvoNL69gRSbePpIOj0vGYzTQ49U8e4aQSnuxt0Ihrn
 1Ci3D3pLqoxXlDqNMkFOxi9NJGsJKCDASxz5hne8eIXkUutrbkayj4SY2
 2T/WkmSng799tbjg26+k9qvzmV3fIUHWNgPXDDxIkcg7yoVLi1cw4VMjO A==;
X-CSE-ConnectionGUID: ZFwjZ48GT/WS03lS3BNstg==
X-CSE-MsgGUID: 0+Zn0KgvSjK/By7IOnZWCg==
X-IronPort-AV: E=McAfee;i="6600,9927,11064"; a="10560364"
X-IronPort-AV: E=Sophos;i="6.07,258,1708416000"; d="scan'208";a="10560364"
Received: from fmviesa007.fm.intel.com ([10.60.135.147])
 by orvoesa112.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 06 May 2024 02:40:46 -0700
X-CSE-ConnectionGUID: Wc1zlKRPQ7+dWNnMJrC5+g==
X-CSE-MsgGUID: 8Gb8GeRwSAKnZioI5dNx+g==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.07,258,1708416000"; d="scan'208";a="28113909"
Received: from lfiedoro-mobl.ger.corp.intel.com (HELO localhost)
 ([10.245.246.230])
 by fmviesa007-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 06 May 2024 02:40:45 -0700
From: Jani Nikula <jani.nikula@linux.intel.com>
To: Ville Syrjala <ville.syrjala@linux.intel.com>,
 intel-gfx@lists.freedesktop.org
Subject: Re: [PATCH 30/35] drm/i915/bios: Define VBT block 55 (RGB Palette
 Table) contents
In-Reply-To: <20240503122449.27266-31-ville.syrjala@linux.intel.com>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
References: <20240503122449.27266-1-ville.syrjala@linux.intel.com>
 <20240503122449.27266-31-ville.syrjala@linux.intel.com>
Date: Mon, 06 May 2024 12:40:42 +0300
Message-ID: <87le4nmg6d.fsf@intel.com>
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
> Define the contents of VBT block 55 (RGB Palette Table).
>
> Note that I've not actually seen any real world VBTs with this
> block.
>
> Signed-off-by: Ville Syrj=C3=A4l=C3=A4 <ville.syrjala@linux.intel.com>

Reviewed-by: Jani Nikula <jani.nikula@intel.com>

> ---
>  drivers/gpu/drm/i915/display/intel_vbt_defs.h | 12 ++++++++++++
>  1 file changed, 12 insertions(+)
>
> diff --git a/drivers/gpu/drm/i915/display/intel_vbt_defs.h b/drivers/gpu/=
drm/i915/display/intel_vbt_defs.h
> index 8b4f76c54829..50d0d96fca67 100644
> --- a/drivers/gpu/drm/i915/display/intel_vbt_defs.h
> +++ b/drivers/gpu/drm/i915/display/intel_vbt_defs.h
> @@ -182,6 +182,7 @@ enum bdb_block_id {
>  	BDB_FIXED_SET_MODE		=3D 51, /* 172+ */
>  	BDB_MIPI_CONFIG			=3D 52, /* 175+ */
>  	BDB_MIPI_SEQUENCE		=3D 53, /* 177+ */
> +	BDB_RGB_PALETTE			=3D 54, /* 180+ */
>  	BDB_COMPRESSION_PARAMETERS	=3D 56, /* 213+ */
>  	BDB_GENERIC_DTD			=3D 58, /* 229+ */
>  	BDB_SKIP			=3D 254, /* VBIOS only */
> @@ -1423,6 +1424,17 @@ struct bdb_mipi_sequence {
>  	u8 data[]; /* up to 6 variable length blocks */
>  } __packed;
>=20=20
> +/*
> + * Block 55 - RGB Palette Table
> + */
> +
> +struct bdb_rgb_palette {
> +	u8 is_enabled;
> +	u8 red[256];
> +	u8 blue[256];
> +	u8 green[256];
> +} __packed;
> +
>  /*
>   * Block 56 - Compression Parameters
>   */

--=20
Jani Nikula, Intel
