Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id CA38F8BCB08
	for <lists+intel-gfx@lfdr.de>; Mon,  6 May 2024 11:46:06 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 258BE112CBD;
	Mon,  6 May 2024 09:46:05 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="Q7UvQqjE";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.18])
 by gabe.freedesktop.org (Postfix) with ESMTPS id B771511228D
 for <intel-gfx@lists.freedesktop.org>; Mon,  6 May 2024 09:46:03 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1714988764; x=1746524764;
 h=from:to:subject:in-reply-to:references:date:message-id:
 mime-version:content-transfer-encoding;
 bh=+r6agFMWbDE0r0J+IHE3zaDA3/JFJFPvPUgoVWbo8XA=;
 b=Q7UvQqjEugzqA7vTpubsX7/XEcnBCvzeL1raaTp7e0mhJOAvLDwGGmbZ
 UshZhCJwCafXpUd/WfWa9dhAux2ST5djOWdmuYD6QCsSXByoeSP46UkHb
 qL2/aCat8b5o3+mm18df7M5XVRhWQqEAe+N1Gv2/HaI7uzrRtZeA32cOA
 vog4ss31DggBrWIu0aju8Mpp08Ok/zFXUtDnh4v2Cdr8+iKkUIloIPEgK
 +fS+aLslSKuJJaPLPrV06UtyEUYOhlT5995A38uhUQ9VNXgxuOTADO56V
 ibavWEmrFFMgOokoSj2sU7qxLsfvepE8l5Cmv8PqtYVWcF46Fc+1i6hq/ Q==;
X-CSE-ConnectionGUID: NF4ei3ACQ0aGnqYlSYcbkg==
X-CSE-MsgGUID: JyFV0lT6R5K/4HH6EF5qSQ==
X-IronPort-AV: E=McAfee;i="6600,9927,11064"; a="10883816"
X-IronPort-AV: E=Sophos;i="6.07,258,1708416000"; d="scan'208";a="10883816"
Received: from orviesa004.jf.intel.com ([10.64.159.144])
 by orvoesa110.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 06 May 2024 02:46:04 -0700
X-CSE-ConnectionGUID: tYjaxMXqSyOGnA/PnR4m3A==
X-CSE-MsgGUID: uOvhYoCwRpKOpHh6KpWwTQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.07,258,1708416000"; d="scan'208";a="32921147"
Received: from lfiedoro-mobl.ger.corp.intel.com (HELO localhost)
 ([10.245.246.230])
 by orviesa004-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 06 May 2024 02:46:01 -0700
From: Jani Nikula <jani.nikula@linux.intel.com>
To: Ville Syrjala <ville.syrjala@linux.intel.com>,
 intel-gfx@lists.freedesktop.org
Subject: Re: [PATCH 35/35] drm/i915/bios: Define VBT block 253 (PRD Table)
 contents
In-Reply-To: <20240503122449.27266-36-ville.syrjala@linux.intel.com>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
References: <20240503122449.27266-1-ville.syrjala@linux.intel.com>
 <20240503122449.27266-36-ville.syrjala@linux.intel.com>
Date: Mon, 06 May 2024 12:45:58 +0300
Message-ID: <87cypzmfxl.fsf@intel.com>
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
> Define the contents of VBT block 253 (PRD Table).
>
> Unfortunately the block has two definitions, with the cutoff
> supposedly happening on ICL vs. TGL. Also according to some
> notes it might be that the VBIOS (if that's still a thing)
> still uses the old definition even on TGL+. Quite the mess.
>
> Signed-off-by: Ville Syrj=C3=A4l=C3=A4 <ville.syrjala@linux.intel.com>

Reviewed-by: Jani Nikula <jani.nikula@intel.com>

> ---
>  drivers/gpu/drm/i915/display/intel_vbt_defs.h | 26 +++++++++++++++++++
>  1 file changed, 26 insertions(+)
>
> diff --git a/drivers/gpu/drm/i915/display/intel_vbt_defs.h b/drivers/gpu/=
drm/i915/display/intel_vbt_defs.h
> index 338f6133bb1e..9d5b87ff1728 100644
> --- a/drivers/gpu/drm/i915/display/intel_vbt_defs.h
> +++ b/drivers/gpu/drm/i915/display/intel_vbt_defs.h
> @@ -189,6 +189,7 @@ enum bdb_block_id {
>  	BDB_VSWING_PREEMPH		=3D 57, /* 218+ */
>  	BDB_GENERIC_DTD			=3D 58, /* 229+ */
>  	BDB_INT15_HOOK			=3D 252, /* VBIOS only */
> +	BDB_PRD_TABLE			=3D 253,
>  	BDB_SKIP			=3D 254, /* VBIOS only */
>  };
>=20=20
> @@ -1576,4 +1577,29 @@ struct bdb_generic_dtd {
>  	struct generic_dtd_entry dtd[];	/* up to 24 DTD's */
>  } __packed;
>=20=20
> +/*
> + * Block 253 - PRD Table
> + */
> +
> +struct prd_entry_old {
> +	u8 displays_attached;
> +	u8 display_in_pipe_a;
> +	u8 display_in_pipe_b;
> +} __packed;
> +
> +struct bdb_prd_table_old {
> +	struct prd_entry_old list[0];				/* ???-216 */
> +	u16 num_entries;					/* ???-216 */
> +} __packed;
> +
> +struct prd_entry_new {
> +	u16 primary_display;
> +	u16 secondary_display;
> +} __packed;
> +
> +struct bdb_prd_table_new {
> +	u16 num_entries;					/* 217+ */
> +	struct prd_entry_new list[];				/* 217+ */
> +} __packed;
> +
>  #endif /* _INTEL_VBT_DEFS_H_ */

--=20
Jani Nikula, Intel
