Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 3E9E44C46F7
	for <lists+intel-gfx@lfdr.de>; Fri, 25 Feb 2022 14:54:59 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 62A9010E988;
	Fri, 25 Feb 2022 13:54:57 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
X-Greylist: delayed 593 seconds by postgrey-1.36 at gabe;
 Fri, 25 Feb 2022 13:54:55 UTC
Received: from mail.igloonet.cz (mail.igloonet.cz [185.50.228.108])
 by gabe.freedesktop.org (Postfix) with ESMTPS id B831010E988
 for <intel-gfx@lists.freedesktop.org>; Fri, 25 Feb 2022 13:54:55 +0000 (UTC)
Received: from [10.43.17.3] (nat-pool-brq-t.redhat.com [213.175.37.10])
 (using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
 key-exchange ECDHE (P-256) server-signature RSA-PSS (4096 bits) server-digest
 SHA256) (No client certificate requested)
 by mail.igloonet.cz (Postfix) with ESMTPSA id A2E2CCB3FC
 for <intel-gfx@lists.freedesktop.org>; Fri, 25 Feb 2022 14:44:56 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=bzatek.net;
 s=igloo2-alfa; t=1645796697;
 bh=pT9L8/4YUrf0XUjGC8Kx2ORgiPQq9Ygg+oAPdnB4Dk4=;
 h=Subject:From:Reply-To:To:Date:In-Reply-To:References;
 b=mAzh9T6m2TbG5eueYt4b7+ERCjIyFdEwEjdJnNi3ydFuSlHcQDqGyuRc9rHV54IG4
 yP5KeknLaH/ZQ/1gwu1qcTOLYoD51N1cp3kcRkQgfyJz9/lDlvncNDbfleSsjAlSNa
 2sozBwj5fCRbQcfabe6lxuYqepbuSpOWKquwCrW8=
Message-ID: <22d1e0509025c1dd4a58657e7293934fa6297199.camel@bzatek.net>
From: Tomas Bzatek <bugs@bzatek.net>
To: intel-gfx@lists.freedesktop.org
Date: Fri, 25 Feb 2022 14:44:55 +0100
In-Reply-To: <20220224132142.12927-1-ville.syrjala@linux.intel.com>
References: <20220224132142.12927-1-ville.syrjala@linux.intel.com>
Content-Type: text/plain; charset="UTF-8"
User-Agent: Evolution 3.42.4 
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Subject: Re: [Intel-gfx] [PATCH] drm/i915: s/JSP2/ICP2/ PCH
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
Reply-To: bugs@bzatek.net
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

Works fine, thanks.

Tested-by: Tomas Bzatek <bugs@bzatek.net>


On Thu, 2022-02-24 at 15:21 +0200, Ville Syrjala wrote:
> From: Ville Syrjälä <ville.syrjala@linux.intel.com>
> 
> This JSP2 PCH actually seems to to be some special Apple
> specific ICP variant rather than a JSP. Make it so. Or at
> least all the references to it seem to be some Apple ICL
> machines. Didn't manage to find these PCI IDs in any
> public chipset docs unfortunately.
> 
> The only thing we're losing here with this JSP->ICP change
> is Wa_14011294188, but based on the HSD that isn't actually
> needed on any ICP based design (including JSP), only TGP
> based stuff (including MCC) really need it. The documented
> w/a just never made that distinction because Windows didn't
> want to differentiate between JSP and MCC (not sure how
> they handle hpd/ddc/etc. then though...).
> 
> Cc: Matt Roper <matthew.d.roper@intel.com>
> Cc: Vivek Kasireddy <vivek.kasireddy@intel.com>
> Closes: https://gitlab.freedesktop.org/drm/intel/-/issues/4226
> Fixes: 943682e3bd19 ("drm/i915: Introduce Jasper Lake PCH")
> Signed-off-by: Ville Syrjälä <ville.syrjala@linux.intel.com>
> Acked-by: Vivek Kasireddy <vivek.kasireddy@intel.com>
> ---
>  drivers/gpu/drm/i915/intel_pch.c | 2 +-
>  drivers/gpu/drm/i915/intel_pch.h | 2 +-
>  2 files changed, 2 insertions(+), 2 deletions(-)
> 
> diff --git a/drivers/gpu/drm/i915/intel_pch.c b/drivers/gpu/drm/i915/intel_pch.c
> index 4f7a61d5502e..4cce044efde2 100644
> --- a/drivers/gpu/drm/i915/intel_pch.c
> +++ b/drivers/gpu/drm/i915/intel_pch.c
> @@ -108,6 +108,7 @@ intel_pch_type(const struct drm_i915_private *dev_priv, unsigned short id)
>  		/* Comet Lake V PCH is based on KBP, which is SPT compatible */
>  		return PCH_SPT;
>  	case INTEL_PCH_ICP_DEVICE_ID_TYPE:
> +	case INTEL_PCH_ICP2_DEVICE_ID_TYPE:
>  		drm_dbg_kms(&dev_priv->drm, "Found Ice Lake PCH\n");
>  		drm_WARN_ON(&dev_priv->drm, !IS_ICELAKE(dev_priv));
>  		return PCH_ICP;
> @@ -123,7 +124,6 @@ intel_pch_type(const struct drm_i915_private *dev_priv, unsigned short id)
>  			    !IS_GEN9_BC(dev_priv));
>  		return PCH_TGP;
>  	case INTEL_PCH_JSP_DEVICE_ID_TYPE:
> -	case INTEL_PCH_JSP2_DEVICE_ID_TYPE:
>  		drm_dbg_kms(&dev_priv->drm, "Found Jasper Lake PCH\n");
>  		drm_WARN_ON(&dev_priv->drm, !IS_JSL_EHL(dev_priv));
>  		return PCH_JSP;
> diff --git a/drivers/gpu/drm/i915/intel_pch.h b/drivers/gpu/drm/i915/intel_pch.h
> index 6fd20408f7bf..b7a8cf409d48 100644
> --- a/drivers/gpu/drm/i915/intel_pch.h
> +++ b/drivers/gpu/drm/i915/intel_pch.h
> @@ -50,11 +50,11 @@ enum intel_pch {
>  #define INTEL_PCH_CMP2_DEVICE_ID_TYPE		0x0680
>  #define INTEL_PCH_CMP_V_DEVICE_ID_TYPE		0xA380
>  #define INTEL_PCH_ICP_DEVICE_ID_TYPE		0x3480
> +#define INTEL_PCH_ICP2_DEVICE_ID_TYPE		0x3880
>  #define INTEL_PCH_MCC_DEVICE_ID_TYPE		0x4B00
>  #define INTEL_PCH_TGP_DEVICE_ID_TYPE		0xA080
>  #define INTEL_PCH_TGP2_DEVICE_ID_TYPE		0x4380
>  #define INTEL_PCH_JSP_DEVICE_ID_TYPE		0x4D80
> -#define INTEL_PCH_JSP2_DEVICE_ID_TYPE		0x3880
>  #define INTEL_PCH_ADP_DEVICE_ID_TYPE		0x7A80
>  #define INTEL_PCH_ADP2_DEVICE_ID_TYPE		0x5180
>  #define INTEL_PCH_ADP3_DEVICE_ID_TYPE		0x7A00
