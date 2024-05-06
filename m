Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 7E6518BCACB
	for <lists+intel-gfx@lfdr.de>; Mon,  6 May 2024 11:37:30 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id BB6E7112270;
	Mon,  6 May 2024 09:37:28 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="ElSCBKY+";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.18])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 4BCA9112270
 for <intel-gfx@lists.freedesktop.org>; Mon,  6 May 2024 09:37:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1714988247; x=1746524247;
 h=from:to:subject:in-reply-to:references:date:message-id:
 mime-version:content-transfer-encoding;
 bh=yiuDBsd0Z+9TpdxnEkH4deSsLGGkd/CuHt+e7iVH2Yw=;
 b=ElSCBKY+/S93KO/nUmH3qv5YVBWTrOUN4c/XNtXWN6zZTyoVQU+cZ04h
 CvtZ5aLkJgwuO61repw6gt67DkBgf1sA2No50KJRIXa4jUfJyWR94NR7t
 pFFowDYeRJdSWHzd2PppFmlvVz+6sm2HnqSglP9vwsWwVOjo61qh/27QL
 Jxg3F26e1/rS5HLWfR5ZJ7GtdMpgwxwWkaOrjBUd5sktlvleVl8MABfab
 uu+wxs15jfPAINIqaKQ455N8YnI16S6DBVpg4sGXqI5VughVBJldhc1I7
 gZR190jPfvV8j5aulCX0O3UYAzsNbqE+MOnFrzlRUQBMjYEqVf/J86Qhv A==;
X-CSE-ConnectionGUID: pfa8xhNTSiiGufDKH5WyRg==
X-CSE-MsgGUID: X75qkhaUTpC9+uEEgwxn6w==
X-IronPort-AV: E=McAfee;i="6600,9927,11064"; a="10882821"
X-IronPort-AV: E=Sophos;i="6.07,258,1708416000"; d="scan'208";a="10882821"
Received: from orviesa001.jf.intel.com ([10.64.159.141])
 by orvoesa110.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 06 May 2024 02:37:27 -0700
X-CSE-ConnectionGUID: Vh6TI64SRWOHhiKC51S6lQ==
X-CSE-MsgGUID: HJ8VpooeQe+zxHpRb42srw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.07,258,1708416000"; d="scan'208";a="65544124"
Received: from lfiedoro-mobl.ger.corp.intel.com (HELO localhost)
 ([10.245.246.230])
 by smtpauth.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 06 May 2024 02:37:25 -0700
From: Jani Nikula <jani.nikula@linux.intel.com>
To: Ville Syrjala <ville.syrjala@linux.intel.com>,
 intel-gfx@lists.freedesktop.org
Subject: Re: [PATCH 26/35] drm/i915/bios: Define VBT block 28 (EFP DTD)
 contents
In-Reply-To: <20240503122449.27266-27-ville.syrjala@linux.intel.com>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
References: <20240503122449.27266-1-ville.syrjala@linux.intel.com>
 <20240503122449.27266-27-ville.syrjala@linux.intel.com>
Date: Mon, 06 May 2024 12:37:22 +0300
Message-ID: <87ttjbmgbx.fsf@intel.com>
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
> Define the contents of VBT block 28 (EFP DTD).
>
> Signed-off-by: Ville Syrj=C3=A4l=C3=A4 <ville.syrjala@linux.intel.com>

Reviewed-by: Jani Nikula <jani.nikula@intel.com>

> ---
>  drivers/gpu/drm/i915/display/intel_vbt_defs.h | 9 +++++++++
>  1 file changed, 9 insertions(+)
>
> diff --git a/drivers/gpu/drm/i915/display/intel_vbt_defs.h b/drivers/gpu/=
drm/i915/display/intel_vbt_defs.h
> index 1b94d4aba00a..716a339f6e2a 100644
> --- a/drivers/gpu/drm/i915/display/intel_vbt_defs.h
> +++ b/drivers/gpu/drm/i915/display/intel_vbt_defs.h
> @@ -167,6 +167,7 @@ enum bdb_block_id {
>  	BDB_SDVO_LVDS_PPS		=3D 25,
>  	BDB_TV_OPTIONS			=3D 26,
>  	BDB_EDP				=3D 27,
> +	BDB_EFP_DTD			=3D 28, /* 161+ */
>  	BDB_DISPLAY_SELECT_IVB		=3D 29, /* 164+ */
>  	BDB_DISPLAY_REMOVE_IVB		=3D 30, /* 164+ */
>  	BDB_DISPLAY_SELECT_HSW		=3D 31, /* 166+ */
> @@ -1072,6 +1073,14 @@ struct bdb_edp {
>  	u16 edp_dsc_disable;					/* 251+ */
>  } __packed;
>=20=20
> +/*
> + * Block 28 - EFP DTD Block
> + */
> +
> +struct bdb_efp_dtd {
> +	struct bdb_edid_dtd dtd[3];
> +} __packed;
> +
>  /*
>   * Block 29 - Toggle List Block (IVB)
>   */

--=20
Jani Nikula, Intel
