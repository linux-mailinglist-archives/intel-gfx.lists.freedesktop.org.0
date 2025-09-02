Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id B11F7B405EB
	for <lists+intel-gfx@lfdr.de>; Tue,  2 Sep 2025 16:02:29 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id EAA0510E736;
	Tue,  2 Sep 2025 14:02:27 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="YbZBEZRE";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.13])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 5FBE310E733;
 Tue,  2 Sep 2025 14:02:26 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1756821746; x=1788357746;
 h=from:to:cc:subject:in-reply-to:references:date:
 message-id:mime-version:content-transfer-encoding;
 bh=IWqqzO6Bs0cqO8mByMkESekIRTWdS1UO36de1rSa0sY=;
 b=YbZBEZRE3P8haGSNi8C14LUW91t0g2OmdEQWfpt4G2nIrcOiNlM0I4QU
 gYOuXhWOBpGgb/D5PSF5EdIqo4kpha1vKj9fzwApWASmfcTap+g5+1VK1
 c7g+oetuDCrEd347ucOQ97JfZPZgzh6f+Lrhxpvbq/MeN3wfEanLoV4aP
 g5Felr/UMDvRgKrDCuO0Bd62c89M/FQyrCxoPEpQrgxsO6zg8/qgmEhQc
 Ckw2qD7Lyv22SZlbzmGYHNNpgamru3Dt2twuBjeLB926UK1mXCb4RsQCf
 BWnNreVpH4IQO9R4dTdEeU84X2zKGccxF0h4/2RkhvLrDAK2Fa6Bo40Dx A==;
X-CSE-ConnectionGUID: W1k3Ci0jSQuXg1QxEwdaRQ==
X-CSE-MsgGUID: FgMzTSSeTSmiySuhqbTiqQ==
X-IronPort-AV: E=McAfee;i="6800,10657,11541"; a="61738027"
X-IronPort-AV: E=Sophos;i="6.18,230,1751266800"; d="scan'208";a="61738027"
Received: from orviesa003.jf.intel.com ([10.64.159.143])
 by fmvoesa107.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 02 Sep 2025 07:02:26 -0700
X-CSE-ConnectionGUID: rZDp+/7oTamCzRLP+9xqCQ==
X-CSE-MsgGUID: cSnIxVUCRj+bt7RObqV7zg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.18,230,1751266800"; d="scan'208";a="175423517"
Received: from dhhellew-desk2.ger.corp.intel.com (HELO localhost)
 ([10.245.246.193])
 by ORVIESA003-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 02 Sep 2025 07:02:23 -0700
From: Jani Nikula <jani.nikula@linux.intel.com>
To: Ville Syrjala <ville.syrjala@linux.intel.com>,
 intel-gfx@lists.freedesktop.org
Cc: intel-xe@lists.freedesktop.org
Subject: Re: [PATCH 7/8] drm/i915/dram: Don't call
 skl_get_dram_info()/skl_get_dram_type() on icl
In-Reply-To: <20250902133113.18778-8-ville.syrjala@linux.intel.com>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
References: <20250902133113.18778-1-ville.syrjala@linux.intel.com>
 <20250902133113.18778-8-ville.syrjala@linux.intel.com>
Date: Tue, 02 Sep 2025 17:02:17 +0300
Message-ID: <38c9fde59c79bd4b38de16c00f1e252f8ea0ec0f@intel.com>
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
> Currently the icl codepaths first determine the memory type from the
> memory controller registers (via skl_get_dram_info()->skl_get_dram_type())
> and then overwrite the results with icl_pcode_read_mem_global_info().
> Get rid of the pointless (and potentially incorrecgt) skl_get_dram_type()
> stuff.
>
> Signed-off-by: Ville Syrj=C3=A4l=C3=A4 <ville.syrjala@linux.intel.com>

Reviewed-by: Jani Nikula <jani.nikula@intel.com>

> ---
>  drivers/gpu/drm/i915/soc/intel_dram.c | 3 ++-
>  1 file changed, 2 insertions(+), 1 deletion(-)
>
> diff --git a/drivers/gpu/drm/i915/soc/intel_dram.c b/drivers/gpu/drm/i915=
/soc/intel_dram.c
> index bf3ba874f8c5..38b7dd20b18d 100644
> --- a/drivers/gpu/drm/i915/soc/intel_dram.c
> +++ b/drivers/gpu/drm/i915/soc/intel_dram.c
> @@ -669,8 +669,9 @@ static int icl_pcode_read_mem_global_info(struct drm_=
i915_private *dev_priv,
>=20=20
>  static int gen11_get_dram_info(struct drm_i915_private *i915, struct dra=
m_info *dram_info)
>  {
> -	int ret =3D skl_get_dram_info(i915, dram_info);
> +	int ret;
>=20=20
> +	ret =3D skl_dram_get_channels_info(i915, dram_info);
>  	if (ret)
>  		return ret;

--=20
Jani Nikula, Intel
