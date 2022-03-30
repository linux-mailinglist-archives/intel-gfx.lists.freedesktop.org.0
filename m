Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 0080C4EBEC8
	for <lists+intel-gfx@lfdr.de>; Wed, 30 Mar 2022 12:30:22 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 6E23910E177;
	Wed, 30 Mar 2022 10:30:21 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga03.intel.com (mga03.intel.com [134.134.136.65])
 by gabe.freedesktop.org (Postfix) with ESMTPS id C135B10E177
 for <intel-gfx@lists.freedesktop.org>; Wed, 30 Mar 2022 10:30:19 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1648636219; x=1680172219;
 h=date:from:to:cc:subject:message-id:references:
 mime-version:content-transfer-encoding:in-reply-to;
 bh=lP4g79nKOPlAdv03TX5Eos7mMG1aZW5aL3wu3OBJmcE=;
 b=Z4zbxOZ8f1OCEzFl5A53B3xgsI5yGLJG/9xzhgMF3efQriFdXNACr1GD
 1NTZ/rSZsDOezceIV3S+B/4efGbIg8i05UWppA206pRfU/nTB2QDngYwG
 GKZpPvy+w3dGhpdDtOqyEbVIxv5oy8uy25617gDbzLg69eurV1oV167VF
 OO1iS9tStKNx8t1Ar6bGhyWF3xCHDBSIx0zLwhtZmxUZRCSztOQSBQMzx
 kfFRap4dGn3oQLZleU1XVZCRYs0XGUjQwKiyKbgZqRqGkwX1WJuUZkqSL
 sPDGXVJhFopQL7GB90VI42/oIWDB7Zm7SfPVluC8IgsF48Kmi4aDoe/i4 w==;
X-IronPort-AV: E=McAfee;i="6200,9189,10301"; a="259482185"
X-IronPort-AV: E=Sophos;i="5.90,222,1643702400"; d="scan'208";a="259482185"
Received: from orsmga008.jf.intel.com ([10.7.209.65])
 by orsmga103.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 30 Mar 2022 03:30:19 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.90,222,1643702400"; d="scan'208";a="565480978"
Received: from stinkpipe.fi.intel.com (HELO stinkbox) ([10.237.72.61])
 by orsmga008.jf.intel.com with SMTP; 30 Mar 2022 03:30:15 -0700
Received: by stinkbox (sSMTP sendmail emulation);
 Wed, 30 Mar 2022 13:30:14 +0300
Date: Wed, 30 Mar 2022 13:30:14 +0300
From: Ville =?iso-8859-1?Q?Syrj=E4l=E4?= <ville.syrjala@linux.intel.com>
To: =?iso-8859-1?Q?Jos=E9?= Roberto de Souza <jose.souza@intel.com>
Message-ID: <YkQxNgcePGJGmuMJ@intel.com>
References: <20220329223102.218689-1-jose.souza@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=iso-8859-1
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <20220329223102.218689-1-jose.souza@intel.com>
X-Patchwork-Hint: comment
Subject: Re: [Intel-gfx] [PATCH v4 1/4] drm/i915/display/tgl+: Set default
 values for all registers in PIPE_MBUS_DBOX_CTL
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
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Tue, Mar 29, 2022 at 03:30:59PM -0700, José Roberto de Souza wrote:
> MBUS_DBOX_B2B_TRANSACTIONS_MAX, MBUS_DBOX_B2B_TRANSACTIONS_DELAY and
> MBUS_DBOX_REGULATE_B2B_TRANSACTIONS_EN were being programmed with
> zeros while specification has different default values for this
> registers in display 12 and newer.
> 
> While at it also converting all MBUS_DBOX macros to use REG_* macros.
> 
> BSpec: 50343
> BSpec: 20231
> Cc: Ville Syrjälä <ville.syrjala@linux.intel.com>
> Cc: Stanislav Lisovskiy <stanislav.lisovskiy@intel.com>
> Signed-off-by: José Roberto de Souza <jose.souza@intel.com>
> ---
>  drivers/gpu/drm/i915/display/intel_display.c | 13 +++++++---
>  drivers/gpu/drm/i915/i915_reg.h              | 26 ++++++++++++--------
>  2 files changed, 26 insertions(+), 13 deletions(-)
> 
> diff --git a/drivers/gpu/drm/i915/display/intel_display.c b/drivers/gpu/drm/i915/display/intel_display.c
> index 28bfb73ae6471..234f363aad651 100644
> --- a/drivers/gpu/drm/i915/display/intel_display.c
> +++ b/drivers/gpu/drm/i915/display/intel_display.c
> @@ -1829,13 +1829,20 @@ static void icl_pipe_mbus_enable(struct intel_crtc *crtc, bool joined_mbus)
>  {
>  	struct drm_i915_private *dev_priv = to_i915(crtc->base.dev);
>  	enum pipe pipe = crtc->pipe;
> -	u32 val;
> +	u32 val = 0;
> +
> +	if (DISPLAY_VER(dev_priv) >= 12) {
> +		val |= MBUS_DBOX_B2B_TRANSACTIONS_MAX(16);
> +		val |= MBUS_DBOX_B2B_TRANSACTIONS_DELAY(1);
> +		val |= MBUS_DBOX_REGULATE_B2B_TRANSACTIONS_EN;
> +	}
>  
>  	/* Wa_22010947358:adl-p */
>  	if (IS_ALDERLAKE_P(dev_priv))
> -		val = joined_mbus ? MBUS_DBOX_A_CREDIT(6) : MBUS_DBOX_A_CREDIT(4);
> +		val |= joined_mbus ? MBUS_DBOX_A_CREDIT(6) :
> +				     MBUS_DBOX_A_CREDIT(4);
>  	else
> -		val = MBUS_DBOX_A_CREDIT(2);
> +		val |= MBUS_DBOX_A_CREDIT(2);

It might make sense to have per-platform functions to determine
the whole register value. But that's a separate topic.

>  
>  	if (DISPLAY_VER(dev_priv) >= 12) {
>  		val |= MBUS_DBOX_BW_CREDIT(2);
> diff --git a/drivers/gpu/drm/i915/i915_reg.h b/drivers/gpu/drm/i915/i915_reg.h
> index a0d652f19ff93..f47f9dfc9b0ce 100644
> --- a/drivers/gpu/drm/i915/i915_reg.h
> +++ b/drivers/gpu/drm/i915/i915_reg.h
> @@ -1103,16 +1103,22 @@
>  #define MBUS_ABOX_BT_CREDIT_POOL1_MASK	(0x1F << 0)
>  #define MBUS_ABOX_BT_CREDIT_POOL1(x)	((x) << 0)
>  
> -#define _PIPEA_MBUS_DBOX_CTL		0x7003C
> -#define _PIPEB_MBUS_DBOX_CTL		0x7103C
> -#define PIPE_MBUS_DBOX_CTL(pipe)	_MMIO_PIPE(pipe, _PIPEA_MBUS_DBOX_CTL, \
> -						   _PIPEB_MBUS_DBOX_CTL)
> -#define MBUS_DBOX_BW_CREDIT_MASK	(3 << 14)
> -#define MBUS_DBOX_BW_CREDIT(x)		((x) << 14)
> -#define MBUS_DBOX_B_CREDIT_MASK		(0x1F << 8)
> -#define MBUS_DBOX_B_CREDIT(x)		((x) << 8)
> -#define MBUS_DBOX_A_CREDIT_MASK		(0xF << 0)
> -#define MBUS_DBOX_A_CREDIT(x)		((x) << 0)
> +#define _PIPEA_MBUS_DBOX_CTL			0x7003C
> +#define _PIPEB_MBUS_DBOX_CTL			0x7103C
> +#define PIPE_MBUS_DBOX_CTL(pipe)		_MMIO_PIPE(pipe, _PIPEA_MBUS_DBOX_CTL, \
> +							   _PIPEB_MBUS_DBOX_CTL)
> +#define MBUS_DBOX_B2B_TRANSACTIONS_MAX_MASK	REG_GENMASK(24, 20)

Could throw in some tgl+ comments onto these b2b defines.

> +#define MBUS_DBOX_B2B_TRANSACTIONS_MAX(x)	REG_FIELD_PREP(MBUS_DBOX_B2B_TRANSACTIONS_MAX_MASK, x)
> +#define MBUS_DBOX_B2B_TRANSACTIONS_DELAY_MASK	REG_GENMASK(19, 17)
> +#define MBUS_DBOX_B2B_TRANSACTIONS_DELAY(x)	REG_FIELD_PREP(MBUS_DBOX_B2B_TRANSACTIONS_DELAY_MASK, x)
> +#define MBUS_DBOX_B2B_TRANSACTIONS_DELAY_MASK	REG_GENMASK(19, 17)

Second MBUS_DBOX_B2B_TRANSACTIONS_DELAY_MASK define.

with that removed:
Reviewed-by: Ville Syrjälä <ville.syrjala@linux.intel.com>

> +#define MBUS_DBOX_REGULATE_B2B_TRANSACTIONS_EN	REG_BIT(16)
> +#define MBUS_DBOX_BW_CREDIT_MASK		REG_GENMASK(15, 14)
> +#define MBUS_DBOX_BW_CREDIT(x)			REG_FIELD_PREP(MBUS_DBOX_BW_CREDIT_MASK, x)
> +#define MBUS_DBOX_B_CREDIT_MASK			REG_GENMASK(12, 8)
> +#define MBUS_DBOX_B_CREDIT(x)			REG_FIELD_PREP(MBUS_DBOX_B_CREDIT_MASK, x)
> +#define MBUS_DBOX_A_CREDIT_MASK			REG_GENMASK(3, 0)
> +#define MBUS_DBOX_A_CREDIT(x)			REG_FIELD_PREP(MBUS_DBOX_A_CREDIT_MASK, x)
>  
>  #define MBUS_UBOX_CTL			_MMIO(0x4503C)
>  #define MBUS_BBOX_CTL_S1		_MMIO(0x45040)
> -- 
> 2.35.1

-- 
Ville Syrjälä
Intel
