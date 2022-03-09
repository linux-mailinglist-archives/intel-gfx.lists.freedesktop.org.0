Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 666C74D2C7F
	for <lists+intel-gfx@lfdr.de>; Wed,  9 Mar 2022 10:50:37 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 9591F89FD7;
	Wed,  9 Mar 2022 09:50:35 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga07.intel.com (mga07.intel.com [134.134.136.100])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 0FA6289FD7
 for <intel-gfx@lists.freedesktop.org>; Wed,  9 Mar 2022 09:50:34 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1646819434; x=1678355434;
 h=from:to:subject:in-reply-to:references:date:message-id:
 mime-version:content-transfer-encoding;
 bh=MPYp5XIF3Ckt9K1VtlWk387ofz82Fta9DifKLhaB3Iw=;
 b=Q4AozHfogk5SqJNhmPQ3OKOMVb/KPk6tXYYgr3WS2ozEYnDB8Ryka6vh
 LAFmYamBL2vhbcfIDe8xzDmoLbcxVT5y6dORXTji38YjpbLZWLzIztocE
 5PsEvw0tkEvTPbObRXTcDumiFAoARqDNH6lYh17JgdumDuM1U3MwZVbxm
 fCUutHHX5yAv5m9+7dvOLs8UqmCBr/GatXazko57GpgV4jOu/lazHQp85
 oEZM/XYK06MiLIlOBBdSD7o0+1dPrGfo4W0cqWc4XUYYe94Vj56xVntJ0
 /9Ir/2lnAoyIZGyehHIY9KEvvYEKUDlxq8qns/OfQOHDSrO9zxwZr83aa w==;
X-IronPort-AV: E=McAfee;i="6200,9189,10280"; a="318162604"
X-IronPort-AV: E=Sophos;i="5.90,167,1643702400"; d="scan'208";a="318162604"
Received: from orsmga005.jf.intel.com ([10.7.209.41])
 by orsmga105.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 09 Mar 2022 01:50:32 -0800
X-IronPort-AV: E=Sophos;i="5.90,167,1643702400"; d="scan'208";a="711886260"
Received: from byrnec1x-mobl.ger.corp.intel.com (HELO localhost)
 ([10.252.29.235])
 by orsmga005-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 09 Mar 2022 01:50:31 -0800
From: Jani Nikula <jani.nikula@linux.intel.com>
To: Ville Syrjala <ville.syrjala@linux.intel.com>,
 intel-gfx@lists.freedesktop.org
In-Reply-To: <20220307233940.4161-3-ville.syrjala@linux.intel.com>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
References: <20220307233940.4161-1-ville.syrjala@linux.intel.com>
 <20220307233940.4161-3-ville.syrjala@linux.intel.com>
Date: Wed, 09 Mar 2022 11:50:28 +0200
Message-ID: <87pmmvzc7v.fsf@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: quoted-printable
Subject: Re: [Intel-gfx] [PATCH v2 2/8] drm/i915: Remove redundant/wrong
 comments
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

On Tue, 08 Mar 2022, Ville Syrjala <ville.syrjala@linux.intel.com> wrote:
> From: Ville Syrj=C3=A4l=C3=A4 <ville.syrjala@linux.intel.com>
>
> Remove the comment specifying the exact formulat for calculating
> the DPLL frequency from the *_find_best_dpll() functions. Each
> platform variant has its own way to calculate these and we have
> the code already to do that. These comments are entirely redundant
> and often even wrong so just get rid of them.
>
> Signed-off-by: Ville Syrj=C3=A4l=C3=A4 <ville.syrjala@linux.intel.com>

Acked-by: Jani Nikula <jani.nikula@intel.com>

> ---
>  drivers/gpu/drm/i915/display/intel_dpll.c | 15 +++++----------
>  1 file changed, 5 insertions(+), 10 deletions(-)
>
> diff --git a/drivers/gpu/drm/i915/display/intel_dpll.c b/drivers/gpu/drm/=
i915/display/intel_dpll.c
> index b3fd94538c44..f4e5290b86a4 100644
> --- a/drivers/gpu/drm/i915/display/intel_dpll.c
> +++ b/drivers/gpu/drm/i915/display/intel_dpll.c
> @@ -425,8 +425,7 @@ i9xx_select_p2_div(const struct intel_limit *limit,
>=20=20
>  /*
>   * Returns a set of divisors for the desired target clock with the given
> - * refclk, or FALSE.  The returned values represent the clock equation:
> - * reflck * (5 * (m1 + 2) + (m2 + 2)) / (n + 2) / p1 / p2.
> + * refclk, or FALSE.
>   *
>   * Target and reference clocks are specified in kHz.
>   *
> @@ -484,8 +483,7 @@ i9xx_find_best_dpll(const struct intel_limit *limit,
>=20=20
>  /*
>   * Returns a set of divisors for the desired target clock with the given
> - * refclk, or FALSE.  The returned values represent the clock equation:
> - * reflck * (5 * (m1 + 2) + (m2 + 2)) / (n + 2) / p1 / p2.
> + * refclk, or FALSE.
>   *
>   * Target and reference clocks are specified in kHz.
>   *
> @@ -541,8 +539,7 @@ pnv_find_best_dpll(const struct intel_limit *limit,
>=20=20
>  /*
>   * Returns a set of divisors for the desired target clock with the given
> - * refclk, or FALSE.  The returned values represent the clock equation:
> - * reflck * (5 * (m1 + 2) + (m2 + 2)) / (n + 2) / p1 / p2.
> + * refclk, or FALSE.
>   *
>   * Target and reference clocks are specified in kHz.
>   *
> @@ -641,8 +638,7 @@ static bool vlv_PLL_is_optimal(struct drm_device *dev=
, int target_freq,
>=20=20
>  /*
>   * Returns a set of divisors for the desired target clock with the given
> - * refclk, or FALSE.  The returned values represent the clock equation:
> - * reflck * (5 * (m1 + 2) + (m2 + 2)) / (n + 2) / p1 / p2.
> + * refclk, or FALSE.
>   */
>  static bool
>  vlv_find_best_dpll(const struct intel_limit *limit,
> @@ -700,8 +696,7 @@ vlv_find_best_dpll(const struct intel_limit *limit,
>=20=20
>  /*
>   * Returns a set of divisors for the desired target clock with the given
> - * refclk, or FALSE.  The returned values represent the clock equation:
> - * reflck * (5 * (m1 + 2) + (m2 + 2)) / (n + 2) / p1 / p2.
> + * refclk, or FALSE.
>   */
>  static bool
>  chv_find_best_dpll(const struct intel_limit *limit,

--=20
Jani Nikula, Intel Open Source Graphics Center
