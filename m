Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 0C0BA4F86CA
	for <lists+intel-gfx@lfdr.de>; Thu,  7 Apr 2022 20:01:17 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 4E52410EC16;
	Thu,  7 Apr 2022 18:01:15 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
 by gabe.freedesktop.org (Postfix) with ESMTPS id A284D10EC16
 for <intel-gfx@lists.freedesktop.org>; Thu,  7 Apr 2022 18:01:14 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1649354474; x=1680890474;
 h=from:to:subject:in-reply-to:references:date:message-id:
 mime-version:content-transfer-encoding;
 bh=B8stvgGw2XNejffSg5MKDSqBaQeh47veQL92YHrFJLE=;
 b=Y4OApubTX+bFSyUAgnIz1MYUYduRWHQ66TVKyuTJftu/vJlXQpKqokmZ
 tyhx3gyVLKbR8CQyLfMXkOTvoIAPwntcH7XOWVd8ucZk09nifJdp38iYt
 IPJU8cAq3XCrl/d0f3W1yubyD1UBMqpb1iLllpr7rzaRCuYnwrDl27yw0
 5K6m+YnAhHQyaGTcG9X6pGSX+EZlxLjMpscdS4Iq2AJ3hizKiYpx3YBZQ
 iwmrLZpWFrT4/myRnU4KSq6GH5pqUyQUdnWLgO11vTz9y67XkLkBkWeH9
 //eMzSxpNw1gsc7Z5AbxfykA+Xmxwt+a13dZGbKbEvHjlJEMwSp0ZP4Ch Q==;
X-IronPort-AV: E=McAfee;i="6400,9594,10310"; a="261091576"
X-IronPort-AV: E=Sophos;i="5.90,242,1643702400"; d="scan'208";a="261091576"
Received: from orsmga007.jf.intel.com ([10.7.209.58])
 by orsmga102.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 07 Apr 2022 11:01:14 -0700
X-IronPort-AV: E=Sophos;i="5.90,242,1643702400"; d="scan'208";a="550173494"
Received: from kgibala-mobl.ger.corp.intel.com (HELO localhost)
 ([10.249.142.48])
 by orsmga007-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 07 Apr 2022 11:01:12 -0700
From: Jani Nikula <jani.nikula@linux.intel.com>
To: Ville Syrjala <ville.syrjala@linux.intel.com>,
 intel-gfx@lists.freedesktop.org
In-Reply-To: <20220405173410.11436-21-ville.syrjala@linux.intel.com>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
References: <20220405173410.11436-1-ville.syrjala@linux.intel.com>
 <20220405173410.11436-21-ville.syrjala@linux.intel.com>
Date: Thu, 07 Apr 2022 21:01:10 +0300
Message-ID: <87wng03h95.fsf@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: quoted-printable
Subject: Re: [Intel-gfx] [PATCH v2 20/22] drm/i915: Respect VBT seamless
 DRRS min refresh rate
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

On Tue, 05 Apr 2022, Ville Syrjala <ville.syrjala@linux.intel.com> wrote:
> From: Ville Syrj=C3=A4l=C3=A4 <ville.syrjala@linux.intel.com>
>
> Make sure our choice of downclock mode respects the VBT
> seameless DRRS min refresh rate limit.
>
> Signed-off-by: Ville Syrj=C3=A4l=C3=A4 <ville.syrjala@linux.intel.com>
> ---
>  drivers/gpu/drm/i915/display/intel_panel.c | 10 +++++++---
>  1 file changed, 7 insertions(+), 3 deletions(-)
>
> diff --git a/drivers/gpu/drm/i915/display/intel_panel.c b/drivers/gpu/drm=
/i915/display/intel_panel.c
> index 03398feb6676..35d8676438a3 100644
> --- a/drivers/gpu/drm/i915/display/intel_panel.c
> +++ b/drivers/gpu/drm/i915/display/intel_panel.c
> @@ -75,13 +75,17 @@ const struct drm_display_mode *
>  intel_panel_downclock_mode(struct intel_connector *connector,
>  			   const struct drm_display_mode *adjusted_mode)
>  {
> +	struct drm_i915_private *i915 =3D to_i915(connector->base.dev);
>  	const struct drm_display_mode *fixed_mode, *best_mode =3D NULL;
> -	int vrefresh =3D drm_mode_vrefresh(adjusted_mode);
> +	int min_vrefresh =3D i915->vbt.seamless_drrs_min_refresh_rate;

Just remembered the rabbit hole goes deeper with dual eDP and supporting
multiple copies of all the panel type specific stuff... ;)

> +	int max_vrefresh =3D drm_mode_vrefresh(adjusted_mode);
>=20=20
>  	/* pick the fixed_mode with the lowest refresh rate */
>  	list_for_each_entry(fixed_mode, &connector->panel.fixed_modes, head) {
> -		if (drm_mode_vrefresh(fixed_mode) < vrefresh) {
> -			vrefresh =3D drm_mode_vrefresh(fixed_mode);
> +		int vrefesh =3D drm_mode_vrefresh(fixed_mode);

*vrefresh

Reviewed-by: Jani Nikula <jani.nikula@intel.com>


> +
> +		if (vrefesh >=3D min_vrefresh && vrefesh < max_vrefresh) {
> +			max_vrefresh =3D vrefesh;
>  			best_mode =3D fixed_mode;
>  		}
>  	}

--=20
Jani Nikula, Intel Open Source Graphics Center
