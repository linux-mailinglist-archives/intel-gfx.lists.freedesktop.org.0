Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 4019E537A5E
	for <lists+intel-gfx@lfdr.de>; Mon, 30 May 2022 14:09:25 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 6F9C310E58B;
	Mon, 30 May 2022 12:09:23 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga12.intel.com (mga12.intel.com [192.55.52.136])
 by gabe.freedesktop.org (Postfix) with ESMTPS id BF1A310E5AD
 for <intel-gfx@lists.freedesktop.org>; Mon, 30 May 2022 12:09:21 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1653912561; x=1685448561;
 h=from:to:subject:in-reply-to:references:date:message-id:
 mime-version:content-transfer-encoding;
 bh=RLyK5CN0XdFSxP+JQMe4Z/lZZKdKZlMabIplY36gqX8=;
 b=ncK2aZ0D2MysmZ7m+dqgjKO0sRMXlZQm7T++2/wlXb26B8yYQOdcaguU
 WzTy2DV6RQOGzdqW5vHUvkbuwh+hsqnGtgCSKp4OIIFh0aMv4LeHphS3N
 LBQk8kMlgMLq6ldmTxMbcLmzUSY/okFY8Pwi1xYMFjbBNWss2e5DfbxrW
 MXlSB6LmqsPXRc615Wavg+V8ueS5xJOf+zT2uCxSoC/7ki7rNdSk8qwPP
 RAvW665Rz+zaYnw8FDiy7tLCGPmlqzrYmHjeCvepp4ouhMpMW4FpsB20G
 gWPAQ7xXa8RGHMYBhknB14DPd2q6EUegjwpgfzERz3QSBoc9Z9daYs7QG Q==;
X-IronPort-AV: E=McAfee;i="6400,9594,10362"; a="254858630"
X-IronPort-AV: E=Sophos;i="5.91,262,1647327600"; d="scan'208";a="254858630"
Received: from orsmga006.jf.intel.com ([10.7.209.51])
 by fmsmga106.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 30 May 2022 05:09:21 -0700
X-IronPort-AV: E=Sophos;i="5.91,262,1647327600"; d="scan'208";a="551321058"
Received: from jkuna-mobl.ger.corp.intel.com (HELO localhost)
 ([10.249.150.228])
 by orsmga006-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 30 May 2022 05:09:19 -0700
From: Jani Nikula <jani.nikula@linux.intel.com>
To: Ville Syrjala <ville.syrjala@linux.intel.com>,
 intel-gfx@lists.freedesktop.org
In-Reply-To: <20220503182242.18797-26-ville.syrjala@linux.intel.com>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
References: <20220503182242.18797-1-ville.syrjala@linux.intel.com>
 <20220503182242.18797-26-ville.syrjala@linux.intel.com>
Date: Mon, 30 May 2022 15:09:17 +0300
Message-ID: <87wne3rzma.fsf@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: quoted-printable
Subject: Re: [Intel-gfx] [PATCH 25/26] drm/i915: Round to closest in M/N
 calculations
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

On Tue, 03 May 2022, Ville Syrjala <ville.syrjala@linux.intel.com> wrote:
> From: Ville Syrj=C3=A4l=C3=A4 <ville.syrjala@linux.intel.com>
>
> Rounding to nearest is what we do for most other clock calculations
> so should probably do that for M/N too.
>
> TODO: GOP seems to truncate instead so fastboot is going to be
> a PITA to get right. Not sure what to do about it yet.

Meh. Damned if you do, damned if you don't.

Acked-by: Jani Nikula <jani.nikula@intel.com>

>
> Signed-off-by: Ville Syrj=C3=A4l=C3=A4 <ville.syrjala@linux.intel.com>
> ---
>  drivers/gpu/drm/i915/display/intel_display.c | 5 +++--
>  1 file changed, 3 insertions(+), 2 deletions(-)
>
> diff --git a/drivers/gpu/drm/i915/display/intel_display.c b/drivers/gpu/d=
rm/i915/display/intel_display.c
> index 89a7c8c1be28..c4257630a3fe 100644
> --- a/drivers/gpu/drm/i915/display/intel_display.c
> +++ b/drivers/gpu/drm/i915/display/intel_display.c
> @@ -2856,7 +2856,7 @@ static void compute_m_n(u32 *ret_m, u32 *ret_n,
>  	else
>  		*ret_n =3D min_t(unsigned int, roundup_pow_of_two(n), DATA_LINK_N_MAX);
>=20=20
> -	*ret_m =3D div_u64(mul_u32_u32(m, *ret_n), n);
> +	*ret_m =3D DIV_ROUND_CLOSEST_ULL(mul_u32_u32(m, *ret_n), n);
>  	intel_reduce_m_n_ratio(ret_m, ret_n);
>  }
>=20=20
> @@ -4602,7 +4602,8 @@ int intel_dotclock_calculate(int link_freq,
>  	if (!m_n->link_n)
>  		return 0;
>=20=20
> -	return div_u64(mul_u32_u32(m_n->link_m, link_freq), m_n->link_n);
> +	return DIV_ROUND_CLOSEST_ULL(mul_u32_u32(m_n->link_m, link_freq),
> +				     m_n->link_n);
>  }
>=20=20
>  /* Returns the currently programmed mode of the given encoder. */

--=20
Jani Nikula, Intel Open Source Graphics Center
