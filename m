Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id B43804D2C0B
	for <lists+intel-gfx@lfdr.de>; Wed,  9 Mar 2022 10:31:04 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 5712B10E11B;
	Wed,  9 Mar 2022 09:31:02 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga03.intel.com (mga03.intel.com [134.134.136.65])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 741AB10E11B
 for <intel-gfx@lists.freedesktop.org>; Wed,  9 Mar 2022 09:31:00 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1646818260; x=1678354260;
 h=from:to:subject:in-reply-to:references:date:message-id:
 mime-version:content-transfer-encoding;
 bh=2ozDu7JynUOnSOWvvbGxTxdaJtGJLl/mOrIpYtGt5nw=;
 b=Dqe6zA7R5IcrIXZ/PjvrAxGJiu5gAphrbj259Cd96/0tL1YMB2aJa0q8
 b7YRCVdB4pvva7fMy8g3Dh3fp+xPrFMiNlflAnPu3povhFcvcnKUx6R9/
 MfZl3OLMUvQoaNxKUlUysv0aRCEKE72IkH9Qnp4KsqFCC/O9Q4mxpdbmq
 +9wedairpPhrmH27YgMzvC3hgRHBLVQtZ0naidEcZPRIPMu4ZB0hxmm0l
 219ARbzgVq4tg860WkuSgwWhnyO3UK+Ob2hW2m96qCKgsdYrnEjdOKTsV
 ybwgfBDFEDiEi+4nkMJsAr3ri2YOj+cdHrVKsypmfLT91LvWg32upmjqR g==;
X-IronPort-AV: E=McAfee;i="6200,9189,10280"; a="254872449"
X-IronPort-AV: E=Sophos;i="5.90,167,1643702400"; d="scan'208";a="254872449"
Received: from orsmga002.jf.intel.com ([10.7.209.21])
 by orsmga103.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 09 Mar 2022 01:30:59 -0800
X-IronPort-AV: E=Sophos;i="5.90,167,1643702400"; d="scan'208";a="510432896"
Received: from byrnec1x-mobl.ger.corp.intel.com (HELO localhost)
 ([10.252.29.235])
 by orsmga002-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 09 Mar 2022 01:30:58 -0800
From: Jani Nikula <jani.nikula@linux.intel.com>
To: Ville Syrjala <ville.syrjala@linux.intel.com>,
 intel-gfx@lists.freedesktop.org
In-Reply-To: <20220307233940.4161-8-ville.syrjala@linux.intel.com>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
References: <20220307233940.4161-1-ville.syrjala@linux.intel.com>
 <20220307233940.4161-8-ville.syrjala@linux.intel.com>
Date: Wed, 09 Mar 2022 11:30:56 +0200
Message-ID: <871qzb1nhr.fsf@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: quoted-printable
Subject: Re: [Intel-gfx] [PATCH v2 7/8] drm/i915: Populate bxt/glk DPLL
 clock limits a bit more
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
> Set the bxt/glk DPLL min dotclock to 25MHz (HDMI minimum)
> and the max to 594 MHz (HDMI max). The supported DP frequencies
> (162MHz-540MHz) fit within the same range.
>
> Signed-off-by: Ville Syrj=C3=A4l=C3=A4 <ville.syrjala@linux.intel.com>

Acked-by: Jani Nikula <jani.nikula@intel.com>

> ---
>  drivers/gpu/drm/i915/display/intel_dpll.c | 3 +--
>  1 file changed, 1 insertion(+), 2 deletions(-)
>
> diff --git a/drivers/gpu/drm/i915/display/intel_dpll.c b/drivers/gpu/drm/=
i915/display/intel_dpll.c
> index f4e5290b86a4..7377f1f009ba 100644
> --- a/drivers/gpu/drm/i915/display/intel_dpll.c
> +++ b/drivers/gpu/drm/i915/display/intel_dpll.c
> @@ -285,8 +285,7 @@ static const struct intel_limit intel_limits_chv =3D {
>  };
>=20=20
>  static const struct intel_limit intel_limits_bxt =3D {
> -	/* FIXME: find real dot limits */
> -	.dot =3D { .min =3D 0, .max =3D INT_MAX },
> +	.dot =3D { .min =3D 25000, .max =3D 594000 },
>  	.vco =3D { .min =3D 4800000, .max =3D 6700000 },
>  	.n =3D { .min =3D 1, .max =3D 1 },
>  	.m1 =3D { .min =3D 2, .max =3D 2 },

--=20
Jani Nikula, Intel Open Source Graphics Center
