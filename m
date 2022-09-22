Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 802A55E6758
	for <lists+intel-gfx@lfdr.de>; Thu, 22 Sep 2022 17:42:23 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id E610610E3F0;
	Thu, 22 Sep 2022 15:42:20 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga06.intel.com (mga06b.intel.com [134.134.136.31])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 442E010E3F0
 for <intel-gfx@lists.freedesktop.org>; Thu, 22 Sep 2022 15:42:18 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1663861338; x=1695397338;
 h=from:to:subject:in-reply-to:references:date:message-id:
 mime-version:content-transfer-encoding;
 bh=J7yb6KE7zTtmD3zSGCBHARf2L2iEEoBpf0pBQhroRcs=;
 b=dZwVthr1Z6llJoJ+Jda9MHk5UmtSAEz5qU+WhNitbFS8jL1QRZghSnsd
 aDh7oV+nFAg1ym5jHzxsFDkDq9Lb0YDUNlqZ6jUZ02TM8xAls3YkAuG/M
 0nIUZf7EUIcpHujk0ZwovENeoJsbP/78uBeONAswHzkKoYgYmYPsvyht/
 AOI6hPxf77y8tixxGRsEU0vi2bvFarMzy4bOGtSY9oJf7NlEZ33gmWuQs
 WfgXRLx3mV4YjynvTfr6uJuHm6qK4f3X6uGumepP6fFlk43awz0ALN6y5
 74+X3zx6r2Jn0swpWo/FHXkHumAxzybZA2XnFhx/lgGYOr7SgBd4GJQic A==;
X-IronPort-AV: E=McAfee;i="6500,9779,10478"; a="362105536"
X-IronPort-AV: E=Sophos;i="5.93,335,1654585200"; d="scan'208";a="362105536"
Received: from orsmga003.jf.intel.com ([10.7.209.27])
 by orsmga104.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 22 Sep 2022 08:42:17 -0700
X-IronPort-AV: E=Sophos;i="5.93,335,1654585200"; d="scan'208";a="571012757"
Received: from jnikula-mobl4.fi.intel.com (HELO localhost) ([10.237.66.153])
 by orsmga003-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 22 Sep 2022 08:42:16 -0700
From: Jani Nikula <jani.nikula@linux.intel.com>
To: Ville Syrjala <ville.syrjala@linux.intel.com>,
 intel-gfx@lists.freedesktop.org
In-Reply-To: <20220921122343.13061-2-ville.syrjala@linux.intel.com>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
References: <20220921122343.13061-1-ville.syrjala@linux.intel.com>
 <20220921122343.13061-2-ville.syrjala@linux.intel.com>
Date: Thu, 22 Sep 2022 18:41:59 +0300
Message-ID: <87edw35sc8.fsf@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: quoted-printable
Subject: Re: [Intel-gfx] [PATCH 1/4] drm/i915: Always initialize dpll.lock
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

On Wed, 21 Sep 2022, Ville Syrjala <ville.syrjala@linux.intel.com> wrote:
> From: Ville Syrj=C3=A4l=C3=A4 <ville.syrjala@linux.intel.com>
>
> Initialize the dll.lock mutex whether or not we manage to
> initialize the rest of the dpll mgr.
>
> Signed-off-by: Ville Syrj=C3=A4l=C3=A4 <ville.syrjala@linux.intel.com>

Reviewed-by: Jani Nikula <jani.nikula@intel.com>


> ---
>  drivers/gpu/drm/i915/display/intel_dpll_mgr.c | 3 ++-
>  1 file changed, 2 insertions(+), 1 deletion(-)
>
> diff --git a/drivers/gpu/drm/i915/display/intel_dpll_mgr.c b/drivers/gpu/=
drm/i915/display/intel_dpll_mgr.c
> index e5fb66a5dd02..9c60cf69cde1 100644
> --- a/drivers/gpu/drm/i915/display/intel_dpll_mgr.c
> +++ b/drivers/gpu/drm/i915/display/intel_dpll_mgr.c
> @@ -4193,6 +4193,8 @@ void intel_shared_dpll_init(struct drm_i915_private=
 *dev_priv)
>  	const struct dpll_info *dpll_info;
>  	int i;
>=20=20
> +	mutex_init(&dev_priv->display.dpll.lock);
> +
>  	if (IS_DG2(dev_priv))
>  		/* No shared DPLLs on DG2; port PLLs are part of the PHY */
>  		dpll_mgr =3D NULL;
> @@ -4237,7 +4239,6 @@ void intel_shared_dpll_init(struct drm_i915_private=
 *dev_priv)
>=20=20
>  	dev_priv->display.dpll.mgr =3D dpll_mgr;
>  	dev_priv->display.dpll.num_shared_dpll =3D i;
> -	mutex_init(&dev_priv->display.dpll.lock);
>  }
>=20=20
>  /**

--=20
Jani Nikula, Intel Open Source Graphics Center
