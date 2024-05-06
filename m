Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 3352C8BCAA4
	for <lists+intel-gfx@lfdr.de>; Mon,  6 May 2024 11:27:18 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 6C17310ED9F;
	Mon,  6 May 2024 09:27:16 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="iexmFuMr";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.16])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 6247610ED3A
 for <intel-gfx@lists.freedesktop.org>; Mon,  6 May 2024 09:27:15 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1714987635; x=1746523635;
 h=from:to:subject:in-reply-to:references:date:message-id:
 mime-version:content-transfer-encoding;
 bh=l1zErqFtzvHpRX2ZeAun88fGGt/a19mzs0D0YqbWatk=;
 b=iexmFuMrCSN4Hsl2tmvYRH0f3SlLoiVCAl2nIyxh/6lXsKhnBrcdgPyG
 d9VR8IPPuDECx3/l0zoFKsVjWu1/dXAXcL4ucYJ6yHFpqzvfpGgvnJWR/
 fQDSvNRgEYDYvMKdXUMgSXXbKPVnr1MUf1j1hbG/nQH9H6bSxMbomk7pg
 YN8FMhDthXFy7IywKPPPR+u1jy2o4HKex545FgCo4CkXha5JQvI2eljju
 c7q1orfjEQOa+ydtvBTEXcPexe1qZGUn1k8pgWCT8tlVyEOa849mEA3TO
 G2sbdLFlGyKW5vaYMUxbHojRVegjZwghHLmP3jaPzxnxLNhWAbrHRsXDg Q==;
X-CSE-ConnectionGUID: zAIRkFIaRnSXgGRZ+sCK5g==
X-CSE-MsgGUID: tQJta8XXTNOtv1dlFBRAbQ==
X-IronPort-AV: E=McAfee;i="6600,9927,11064"; a="10847747"
X-IronPort-AV: E=Sophos;i="6.07,257,1708416000"; d="scan'208";a="10847747"
Received: from fmviesa009.fm.intel.com ([10.60.135.149])
 by orvoesa108.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 06 May 2024 02:27:15 -0700
X-CSE-ConnectionGUID: jxdtpIXdR5S/AC8xQ4LGyg==
X-CSE-MsgGUID: UtK4pmNZTJaRYFqBorxywg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.07,257,1708416000"; d="scan'208";a="28070699"
Received: from lfiedoro-mobl.ger.corp.intel.com (HELO localhost)
 ([10.245.246.230])
 by fmviesa009-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 06 May 2024 02:27:13 -0700
From: Jani Nikula <jani.nikula@linux.intel.com>
To: Ville Syrjala <ville.syrjala@linux.intel.com>,
 intel-gfx@lists.freedesktop.org
Subject: Re: [PATCH 12/35] drm/i915/bios: Define VBT blocks 6, 7, 8
 (register tables) contents
In-Reply-To: <20240503122449.27266-13-ville.syrjala@linux.intel.com>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
References: <20240503122449.27266-1-ville.syrjala@linux.intel.com>
 <20240503122449.27266-13-ville.syrjala@linux.intel.com>
Date: Mon, 06 May 2024 12:27:10 +0300
Message-ID: <87bk5jnvdd.fsf@intel.com>
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
> Define the contents for VBT blocks:
> - Block 6 (Extended MMIO Register Table)
> - Block 7 (IO Software Flag Table)
> - Block 8 (MMIO SWF Register Table)
>
> All of these use the same basic layout, with two known variants:
> - data_access_size=3D=3D0xce -> offset,value tuples are u8,u8
> - data_access_size=3D=3D0x02 -> offset,value tuples are u32,u32
>
> Signed-off-by: Ville Syrj=C3=A4l=C3=A4 <ville.syrjala@linux.intel.com>

Reviewed-by: Jani Nikula <jani.nikula@intel.com>

> ---
>  drivers/gpu/drm/i915/display/intel_vbt_defs.h | 16 ++++++++++++++++
>  1 file changed, 16 insertions(+)
>
> diff --git a/drivers/gpu/drm/i915/display/intel_vbt_defs.h b/drivers/gpu/=
drm/i915/display/intel_vbt_defs.h
> index f3478a20ff16..4f0b8be3034c 100644
> --- a/drivers/gpu/drm/i915/display/intel_vbt_defs.h
> +++ b/drivers/gpu/drm/i915/display/intel_vbt_defs.h
> @@ -634,6 +634,22 @@ struct bdb_generic_mode_table_mgm {
>  	struct generic_mode_timings timings[3];
>  } __packed;
>=20=20
> +/*
> + * Block 6 - Extended MMIO Register Table, VBIOS only
> + * Block 7 - IO Software Flag Table, VBIOS only
> + * Block 8 - MMIO SWF Register Table, VBIOS only
> + */
> +struct bdb_reg_table {
> +	u16 table_id;
> +	u8 data_access_size;
> +	/*
> +	 * offset,value tuples:
> +	 * data_access_size=3D=3D0xce -> u8,u8
> +	 * data_access_size=3D=3D0x02 -> u32,u32
> +	 */
> +	/* u16 table_end_marker; */
> +} __packed;
> +
>  /*
>   * Block 9 - SRD Feature Block
>   */

--=20
Jani Nikula, Intel
