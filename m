Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id C77B73C3317
	for <lists+intel-gfx@lfdr.de>; Sat, 10 Jul 2021 07:29:37 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 55D236EAD4;
	Sat, 10 Jul 2021 05:29:35 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 7DD156EAD4
 for <intel-gfx@lists.freedesktop.org>; Sat, 10 Jul 2021 05:29:33 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6200,9189,10040"; a="196990276"
X-IronPort-AV: E=Sophos;i="5.84,228,1620716400"; d="scan'208";a="196990276"
Received: from fmsmga003.fm.intel.com ([10.253.24.29])
 by orsmga101.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 09 Jul 2021 22:29:29 -0700
X-IronPort-AV: E=Sophos;i="5.84,228,1620716400"; d="scan'208";a="488645099"
Received: from mdroper-desk1.fm.intel.com (HELO
 mdroper-desk1.amr.corp.intel.com) ([10.1.27.134])
 by fmsmga003-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 09 Jul 2021 22:29:29 -0700
Date: Fri, 9 Jul 2021 22:29:28 -0700
From: Matt Roper <matthew.d.roper@intel.com>
To: =?iso-8859-1?Q?Jos=E9?= Roberto de Souza <jose.souza@intel.com>
Message-ID: <20210710052928.GR951094@mdroper-desk1.amr.corp.intel.com>
References: <20210708211827.288601-1-jose.souza@intel.com>
 <20210708211827.288601-5-jose.souza@intel.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20210708211827.288601-5-jose.souza@intel.com>
Subject: Re: [Intel-gfx] [PATCH 5/7] drm/i915: Limit Wa_22010178259 to
 affected platforms
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

On Thu, Jul 08, 2021 at 02:18:25PM -0700, Jos=E9 Roberto de Souza wrote:
> This workaround is not needed for platforms with display 13.
> =

> Cc: Gwan-gyeong Mun <gwan-gyeong.mun@intel.com>
> Signed-off-by: Jos=E9 Roberto de Souza <jose.souza@intel.com>

Reviewed-by: Matt Roper <matthew.d.roper@intel.com>

> ---
>  drivers/gpu/drm/i915/display/intel_display_power.c | 9 +++++----
>  1 file changed, 5 insertions(+), 4 deletions(-)
> =

> diff --git a/drivers/gpu/drm/i915/display/intel_display_power.c b/drivers=
/gpu/drm/i915/display/intel_display_power.c
> index 285380079aab2..6fc766da66054 100644
> --- a/drivers/gpu/drm/i915/display/intel_display_power.c
> +++ b/drivers/gpu/drm/i915/display/intel_display_power.c
> @@ -5822,10 +5822,11 @@ static void tgl_bw_buddy_init(struct drm_i915_pri=
vate *dev_priv)
>  			intel_de_write(dev_priv, BW_BUDDY_PAGE_MASK(i),
>  				       table[config].page_mask);
>  =

> -			/* Wa_22010178259:tgl,rkl */
> -			intel_de_rmw(dev_priv, BW_BUDDY_CTL(i),
> -				     BW_BUDDY_TLB_REQ_TIMER_MASK,
> -				     BW_BUDDY_TLB_REQ_TIMER(0x8));
> +			/* Wa_22010178259:tgl,dg1,rkl,adl-s */
> +			if (DISPLAY_VER(dev_priv) =3D=3D 12)
> +				intel_de_rmw(dev_priv, BW_BUDDY_CTL(i),
> +					     BW_BUDDY_TLB_REQ_TIMER_MASK,
> +					     BW_BUDDY_TLB_REQ_TIMER(0x8));
>  		}
>  	}
>  }
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
