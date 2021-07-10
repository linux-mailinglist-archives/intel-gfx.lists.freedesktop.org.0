Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 6CC503C331F
	for <lists+intel-gfx@lfdr.de>; Sat, 10 Jul 2021 07:42:41 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id CA74F6EAD6;
	Sat, 10 Jul 2021 05:42:39 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga12.intel.com (mga12.intel.com [192.55.52.136])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 55C566EAD6
 for <intel-gfx@lists.freedesktop.org>; Sat, 10 Jul 2021 05:42:38 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6200,9189,10040"; a="189492104"
X-IronPort-AV: E=Sophos;i="5.84,229,1620716400"; d="scan'208";a="189492104"
Received: from orsmga002.jf.intel.com ([10.7.209.21])
 by fmsmga106.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 09 Jul 2021 22:42:36 -0700
X-IronPort-AV: E=Sophos;i="5.84,229,1620716400"; d="scan'208";a="429043021"
Received: from mdroper-desk1.fm.intel.com (HELO
 mdroper-desk1.amr.corp.intel.com) ([10.1.27.134])
 by orsmga002-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 09 Jul 2021 22:42:35 -0700
Date: Fri, 9 Jul 2021 22:42:33 -0700
From: Matt Roper <matthew.d.roper@intel.com>
To: =?iso-8859-1?Q?Jos=E9?= Roberto de Souza <jose.souza@intel.com>
Message-ID: <20210710054233.GT951094@mdroper-desk1.amr.corp.intel.com>
References: <20210708211827.288601-1-jose.souza@intel.com>
 <20210708211827.288601-7-jose.souza@intel.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20210708211827.288601-7-jose.souza@intel.com>
Subject: Re: [Intel-gfx] [PATCH 7/7] drm/i915/display/xelpd: Exetend
 Wa_14011508470
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
Cc: intel-gfx@lists.freedesktop.org
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Thu, Jul 08, 2021 at 02:18:27PM -0700, Jos=E9 Roberto de Souza wrote:
> This workaround is also applicable to xelpd display so extending it.
> =

> Cc: Gwan-gyeong Mun <gwan-gyeong.mun@intel.com>
> Signed-off-by: Jos=E9 Roberto de Souza <jose.souza@intel.com>

Reviewed-by: Matt Roper <matthew.d.roper@intel.com>

> ---
>  drivers/gpu/drm/i915/display/intel_display_power.c | 4 ++--
>  1 file changed, 2 insertions(+), 2 deletions(-)
> =

> diff --git a/drivers/gpu/drm/i915/display/intel_display_power.c b/drivers=
/gpu/drm/i915/display/intel_display_power.c
> index 6fc766da66054..d92db471411e5 100644
> --- a/drivers/gpu/drm/i915/display/intel_display_power.c
> +++ b/drivers/gpu/drm/i915/display/intel_display_power.c
> @@ -5883,8 +5883,8 @@ static void icl_display_core_init(struct drm_i915_p=
rivate *dev_priv,
>  	if (resume && intel_dmc_has_payload(dev_priv))
>  		intel_dmc_load_program(dev_priv);
>  =

> -	/* Wa_14011508470 */
> -	if (DISPLAY_VER(dev_priv) =3D=3D 12) {
> +	/* Wa_14011508470:tgl,dg1,rkl,adl-s,adl-p */
> +	if (DISPLAY_VER(dev_priv) >=3D 12) {
>  		val =3D DCPR_CLEAR_MEMSTAT_DIS | DCPR_SEND_RESP_IMM |
>  		      DCPR_MASK_LPMODE | DCPR_MASK_MAXLATENCY_MEMUP_CLR;
>  		intel_uncore_rmw(&dev_priv->uncore, GEN11_CHICKEN_DCPR_2, 0, val);
> -- =

> 2.32.0
> =

> _______________________________________________
> Intel-gfx mailing list
> Intel-gfx@lists.freedesktop.org
> https://lists.freedesktop.org/mailman/listinfo/intel-gfx

-- =

Matt Roper
Graphics Software Engineer
VTT-OSGC Platform Enablement
Intel Corporation
(916) 356-2795
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
