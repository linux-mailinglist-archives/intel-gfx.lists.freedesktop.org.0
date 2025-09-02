Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 4E7D5B404C7
	for <lists+intel-gfx@lfdr.de>; Tue,  2 Sep 2025 15:46:31 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id A6FF410E721;
	Tue,  2 Sep 2025 13:46:29 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="lTXyMvjM";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.11])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 37C4310E721;
 Tue,  2 Sep 2025 13:46:28 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1756820788; x=1788356788;
 h=from:to:cc:subject:in-reply-to:references:date:
 message-id:mime-version:content-transfer-encoding;
 bh=varB7XTQyQaxdmRUnlQ29tpwZcGJ8QkLbTFIl5Vyg6E=;
 b=lTXyMvjMmJ8GF0vdozPA63Hp/hnh5IuDtxGDRl2I4D2Tdy1o4rsJ8ks2
 kc8DBVpnjIblrvTJ33rOKhOF1Z/dLVRS3PDZPC+MYQeTIXILqvqAIgLUj
 pwSPWmNj+pPexTUgBlUHGfKp1lChZzdob1FgR0uGzz6dncbkwWlMcJWtq
 DGm2NbYqjH/gR1vURGuKyglYN2/oxFKODEaZVUDBHqeqrWFDML6Xp+5Fa
 tAz5BORWm24KQehX6wWh3l/MgOlrsiMFZwt5LMQzNnICuiku0qVDHHPUk
 SHpbOSfywV2UrEJ8KCW4WM+hdE1TaixZLWx1d4/yVts+xm3+E62qrX8/q Q==;
X-CSE-ConnectionGUID: KHGXstUYQ6O4K7HcWVvvpg==
X-CSE-MsgGUID: OrrSj6drROmshn8TPxw40A==
X-IronPort-AV: E=McAfee;i="6800,10657,11541"; a="69706048"
X-IronPort-AV: E=Sophos;i="6.18,230,1751266800"; d="scan'208";a="69706048"
Received: from fmviesa005.fm.intel.com ([10.60.135.145])
 by fmvoesa105.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 02 Sep 2025 06:46:28 -0700
X-CSE-ConnectionGUID: vhznDpT9Q/azpnTMqKFO0w==
X-CSE-MsgGUID: I0iIZPWUQbu3/EUHgI8ogA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.18,230,1751266800"; d="scan'208";a="175658835"
Received: from dhhellew-desk2.ger.corp.intel.com (HELO localhost)
 ([10.245.246.193])
 by fmviesa005-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 02 Sep 2025 06:46:26 -0700
From: Jani Nikula <jani.nikula@linux.intel.com>
To: Ville Syrjala <ville.syrjala@linux.intel.com>,
 intel-gfx@lists.freedesktop.org
Cc: intel-xe@lists.freedesktop.org
Subject: Re: [PATCH 3/8] drm/i915/dram: Pack dram_info better
In-Reply-To: <20250902133113.18778-4-ville.syrjala@linux.intel.com>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
References: <20250902133113.18778-1-ville.syrjala@linux.intel.com>
 <20250902133113.18778-4-ville.syrjala@linux.intel.com>
Date: Tue, 02 Sep 2025 16:46:23 +0300
Message-ID: <cda7d8ac5f158572bb4e6ae2606c545a4c4452e1@intel.com>
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

On Tue, 02 Sep 2025, Ville Syrjala <ville.syrjala@linux.intel.com> wrote:
> From: Ville Syrj=C3=A4l=C3=A4 <ville.syrjala@linux.intel.com>
>
> struct dram_info has two holes in the middle. Shuffle things
> around to plug them.
>
> Signed-off-by: Ville Syrj=C3=A4l=C3=A4 <ville.syrjala@linux.intel.com>

Reviewed-by: Jani Nikula <jani.nikula@intel.com>

> ---
>  drivers/gpu/drm/i915/soc/intel_dram.h | 10 +++++-----
>  1 file changed, 5 insertions(+), 5 deletions(-)
>
> diff --git a/drivers/gpu/drm/i915/soc/intel_dram.h b/drivers/gpu/drm/i915=
/soc/intel_dram.h
> index 846a77b1aa90..6212944d44aa 100644
> --- a/drivers/gpu/drm/i915/soc/intel_dram.h
> +++ b/drivers/gpu/drm/i915/soc/intel_dram.h
> @@ -12,9 +12,6 @@ struct drm_i915_private;
>  struct drm_device;
>=20=20
>  struct dram_info {
> -	bool wm_lv_0_adjust_needed;
> -	u8 num_channels;
> -	bool symmetric_memory;
>  	enum intel_dram_type {
>  		INTEL_DRAM_UNKNOWN,
>  		INTEL_DRAM_DDR2,
> @@ -28,10 +25,13 @@ struct dram_info {
>  		INTEL_DRAM_GDDR_ECC,
>  		__INTEL_DRAM_TYPE_MAX,
>  	} type;
> -	u8 num_qgv_points;
> -	u8 num_psf_gv_points;
>  	unsigned int fsb_freq;
>  	unsigned int mem_freq;
> +	u8 num_channels;
> +	u8 num_qgv_points;
> +	u8 num_psf_gv_points;
> +	bool symmetric_memory;
> +	bool wm_lv_0_adjust_needed;
>  };
>=20=20
>  void intel_dram_edram_detect(struct drm_i915_private *i915);

--=20
Jani Nikula, Intel
