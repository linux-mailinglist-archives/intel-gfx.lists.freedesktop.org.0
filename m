Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 734241D9200
	for <lists+intel-gfx@lfdr.de>; Tue, 19 May 2020 10:27:36 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 07F526E2E0;
	Tue, 19 May 2020 08:27:34 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga14.intel.com (mga14.intel.com [192.55.52.115])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 0A5856E2E0
 for <intel-gfx@lists.freedesktop.org>; Tue, 19 May 2020 08:27:32 +0000 (UTC)
IronPort-SDR: r76SZeTFliI7xuw1X0U8KqK4/FqqkFRFTI0F/76WREI+Ip8wV4F6+OdSDzhwLiAf+XmmnfhAfp
 vukHnVHHqNUA==
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
 by fmsmga103.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 19 May 2020 01:27:32 -0700
IronPort-SDR: vfVESI/gCcveURi1IvuQEG3lkLdOaUCPn3sSl4bTlNFNF5CjYQ2r+TYPNwhcZXjWfc5TLSYHUF
 qYmNNwgzIgiw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.73,409,1583222400"; d="scan'208";a="299505031"
Received: from stinkbox.fi.intel.com (HELO stinkbox) ([10.237.72.174])
 by fmsmga002.fm.intel.com with SMTP; 19 May 2020 01:27:30 -0700
Received: by stinkbox (sSMTP sendmail emulation);
 Tue, 19 May 2020 11:27:29 +0300
Date: Tue, 19 May 2020 11:27:29 +0300
From: Ville =?iso-8859-1?Q?Syrj=E4l=E4?= <ville.syrjala@linux.intel.com>
To: Swathi Dhanavanthri <swathi.dhanavanthri@intel.com>
Message-ID: <20200519082729.GT6112@intel.com>
References: <20200519005832.27748-1-swathi.dhanavanthri@intel.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200519005832.27748-1-swathi.dhanavanthri@intel.com>
X-Patchwork-Hint: comment
User-Agent: Mutt/1.10.1 (2018-07-13)
Subject: Re: [Intel-gfx] [PATCH] drm/i915/ehl: Extend w/a 14010685332 to
 JSP/MCC
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

On Mon, May 18, 2020 at 05:58:32PM -0700, Swathi Dhanavanthri wrote:
> This is a permanent w/a for JSL/EHL.This is to be applied to the
> PCH types on JSL/EHL ie JSP/MCC
> Bspec: 52888
> =

> Signed-off-by: Swathi Dhanavanthri <swathi.dhanavanthri@intel.com>
> ---
>  drivers/gpu/drm/i915/i915_irq.c | 4 ++--
>  1 file changed, 2 insertions(+), 2 deletions(-)
> =

> diff --git a/drivers/gpu/drm/i915/i915_irq.c b/drivers/gpu/drm/i915/i915_=
irq.c
> index 4dc601dffc08..1974369cebb8 100644
> --- a/drivers/gpu/drm/i915/i915_irq.c
> +++ b/drivers/gpu/drm/i915/i915_irq.c
> @@ -2902,8 +2902,8 @@ static void gen11_display_irq_reset(struct drm_i915=
_private *dev_priv)
>  	if (INTEL_PCH_TYPE(dev_priv) >=3D PCH_ICP)
>  		GEN3_IRQ_RESET(uncore, SDE);
>  =

> -	/* Wa_14010685332:icl */
> -	if (INTEL_PCH_TYPE(dev_priv) =3D=3D PCH_ICP) {
> +	/* Wa_14010685332:icl,jsl,ehl */
> +	if (INTEL_PCH_TYPE(dev_priv) =3D=3D PCH_ICP || PCH_JSP || PCH_MCC) {

That's not how c works.

>  		intel_uncore_rmw(uncore, SOUTH_CHICKEN1,
>  				 SBCLK_RUN_REFCLK_DIS, SBCLK_RUN_REFCLK_DIS);
>  		intel_uncore_rmw(uncore, SOUTH_CHICKEN1,
> -- =

> 2.20.1
> =

> _______________________________________________
> Intel-gfx mailing list
> Intel-gfx@lists.freedesktop.org
> https://lists.freedesktop.org/mailman/listinfo/intel-gfx

-- =

Ville Syrj=E4l=E4
Intel
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
