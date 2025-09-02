Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 088EFB405F9
	for <lists+intel-gfx@lfdr.de>; Tue,  2 Sep 2025 16:04:07 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 7660710E73A;
	Tue,  2 Sep 2025 14:04:05 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="RSktGllw";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.13])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 6650410E73A;
 Tue,  2 Sep 2025 14:04:04 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1756821844; x=1788357844;
 h=from:to:cc:subject:in-reply-to:references:date:
 message-id:mime-version:content-transfer-encoding;
 bh=nFn4GCbuBW8K4ig7haQt1Na5YUro7euf6l5puyJ7cWY=;
 b=RSktGllwfoWm9O3LUfOmT/fp/4xZjNyQrsB48cZR7lZ3z96C28U0vNo/
 izcgHFfCNpJKE2R74IbYuu2Mbty72cBnsj1TWRlPYZwEmpJYyVX40Ycm6
 5CDcJv1Qhbqwr2V2NJLMDhgl5CPdSOKGwKWIMEnuytBMtg1WemvnURIOv
 A3ux5pmLGNJIKpinGhS0FSsS/4z9PDKeGevjVkhiIrxVgbuuy0UjKWGxS
 eJ7D6gx3ciJx8DyxF5hTvHhDez3sOO25NOO2LC3nbizPiBu6qwcYaNtMU
 OIeCnQijYNzBCi7cW4b1UcjIejS2AYRoUYq0KbuFr3rMzsExUPDeoXWeB A==;
X-CSE-ConnectionGUID: 1mH6CJuLRBiNpnO9SWoTnw==
X-CSE-MsgGUID: LbPDwPbSTUSmuu0/cHXXjA==
X-IronPort-AV: E=McAfee;i="6800,10657,11541"; a="61738504"
X-IronPort-AV: E=Sophos;i="6.18,230,1751266800"; d="scan'208";a="61738504"
Received: from orviesa003.jf.intel.com ([10.64.159.143])
 by fmvoesa107.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 02 Sep 2025 07:04:04 -0700
X-CSE-ConnectionGUID: Yr+i8mQCTNGiPwPeCekEmA==
X-CSE-MsgGUID: zUkOGZYtQuCL+1/Rhra8AQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.18,230,1751266800"; d="scan'208";a="175424373"
Received: from dhhellew-desk2.ger.corp.intel.com (HELO localhost)
 ([10.245.246.193])
 by ORVIESA003-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 02 Sep 2025 07:04:01 -0700
From: Jani Nikula <jani.nikula@linux.intel.com>
To: Ville Syrjala <ville.syrjala@linux.intel.com>,
 intel-gfx@lists.freedesktop.org
Cc: intel-xe@lists.freedesktop.org
Subject: Re: [PATCH 6/8] drm/i915/dram: Fix some spelling aroynd the 16Gb
 DIMM w/a
In-Reply-To: <20250902133113.18778-7-ville.syrjala@linux.intel.com>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
References: <20250902133113.18778-1-ville.syrjala@linux.intel.com>
 <20250902133113.18778-7-ville.syrjala@linux.intel.com>
Date: Tue, 02 Sep 2025 17:03:58 +0300
Message-ID: <84862ab42996dde1a1e57387c8b0e6f8921c4fa4@intel.com>
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


*around in the subject

On Tue, 02 Sep 2025, Ville Syrjala <ville.syrjala@linux.intel.com> wrote:
> From: Ville Syrj=C3=A4l=C3=A4 <ville.syrjala@linux.intel.com>
>
> Use consistent spelling when talking about the 16Gb DIMM w/a.
>
> Even currently language is a bit off as the w/a is actually
> about DIMMs with 16Gb DRAM devices on them, not the total capacity
> of the whole DIMM. But this language does more or less match how
> Bspec talks about this stuff.
>
> Signed-off-by: Ville Syrj=C3=A4l=C3=A4 <ville.syrjala@linux.intel.com>
> ---
>  drivers/gpu/drm/i915/display/skl_watermark.c | 4 ++--
>  1 file changed, 2 insertions(+), 2 deletions(-)
>
> diff --git a/drivers/gpu/drm/i915/display/skl_watermark.c b/drivers/gpu/d=
rm/i915/display/skl_watermark.c
> index ae3ce0d65cfc..0b9c86042e78 100644
> --- a/drivers/gpu/drm/i915/display/skl_watermark.c
> +++ b/drivers/gpu/drm/i915/display/skl_watermark.c
> @@ -3209,9 +3209,9 @@ adjust_wm_latency(struct intel_display *display,
>  	}
>=20=20
>  	/*
> -	 * WA Level-0 adjustment for 16GB DIMMs: SKL+
> +	 * WA Level-0 adjustment for 16Gb DIMMs: SKL+
>  	 * If we could not get dimm info enable this WA to prevent from
> -	 * any underrun. If not able to get Dimm info assume 16GB dimm
> +	 * any underrun. If not able to get DIMM info assume 16Gb DIMM
>  	 * to avoid any underrun.
>  	 */
>  	if (!display->platform.dg2 && dram_info->has_16gb_dimms)

--=20
Jani Nikula, Intel
