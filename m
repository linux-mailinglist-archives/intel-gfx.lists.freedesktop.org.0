Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 28DC65089FD
	for <lists+intel-gfx@lfdr.de>; Wed, 20 Apr 2022 16:03:39 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 1EFB789C88;
	Wed, 20 Apr 2022 14:03:37 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga07.intel.com (mga07.intel.com [134.134.136.100])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 7824889C88
 for <intel-gfx@lists.freedesktop.org>; Wed, 20 Apr 2022 14:03:36 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1650463416; x=1681999416;
 h=date:from:to:cc:subject:message-id:references:
 mime-version:content-transfer-encoding:in-reply-to;
 bh=/cgUjxkfatSifLF4gj9AKi9abua7VuJNOO0XANc5S4g=;
 b=Lt+UcWYnzkFZx/4uqqlcmccsw+PpQFaAS71o+H6Z7GMsd0anTn04N280
 K9X9xgm3LXJycZx+RJ0r5naqevdpeHBH4pK0/MPfCT2cm5LOwXy7Tjd2K
 oidqW0OL6X0H6PfKrDDNgMtFrxUaVnwQVv+OvsEixBZy9gnFw82BC1SZ4
 AQvzZOIa7/5OLXVO2sVhDm9XY+zn7s2ATDKyDrk3wZEKQdIRQFQ4gTCGj
 sNCkts13DCil2HT1yzIIBiEKMze2l48YqnbcWmSWRdsJlXw0eQUWzdulv
 NPQwhjArDOcDYRpUbR2/ZUky49EGyDYHvByJxYQzlBVCI4qYkyxfDe+v9 w==;
X-IronPort-AV: E=McAfee;i="6400,9594,10322"; a="326929770"
X-IronPort-AV: E=Sophos;i="5.90,275,1643702400"; d="scan'208";a="326929770"
Received: from fmsmga003.fm.intel.com ([10.253.24.29])
 by orsmga105.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 20 Apr 2022 07:03:13 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.90,275,1643702400"; d="scan'208";a="647672845"
Received: from stinkpipe.fi.intel.com (HELO stinkbox) ([10.237.72.51])
 by FMSMGA003.fm.intel.com with SMTP; 20 Apr 2022 07:03:10 -0700
Received: by stinkbox (sSMTP sendmail emulation);
 Wed, 20 Apr 2022 17:03:10 +0300
Date: Wed, 20 Apr 2022 17:03:10 +0300
From: Ville =?iso-8859-1?Q?Syrj=E4l=E4?= <ville.syrjala@linux.intel.com>
To: Hans de Goede <hdegoede@redhat.com>
Message-ID: <YmASniwe39jj1miR@intel.com>
References: <20220418150936.5499-1-hdegoede@redhat.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=iso-8859-1
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <20220418150936.5499-1-hdegoede@redhat.com>
X-Patchwork-Hint: comment
Subject: Re: [Intel-gfx] [PATCH] drm/i915: Fix DISP_POS_Y and DISP_HEIGHT
 defines
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
Cc: intel-gfx <intel-gfx@lists.freedesktop.org>,
 Rodrigo Vivi <rodrigo.vivi@intel.com>
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Mon, Apr 18, 2022 at 05:09:36PM +0200, Hans de Goede wrote:
> Commit 428cb15d5b00 ("drm/i915: Clean up pre-skl primary plane registers")
> introduced DISP_POS_Y and DISP_HEIGHT defines but accidentally set these
> their masks to REG_GENMASK(31, 0) instead of REG_GENMASK(31, 16).
> 
> This breaks the primary display pane on at least pineview machines, fix
> the mask to fix the primary display pane only showing black.
> 
> Tested on an Acer One AO532h with an Intel N450 SoC.
> 
> Fixes: 428cb15d5b00 ("drm/i915: Clean up pre-skl primary plane registers")
> Cc: José Roberto de Souza <jose.souza@intel.com>
> Cc: Ville Syrjälä <ville.syrjala@linux.intel.com>
> Signed-off-by: Hans de Goede <hdegoede@redhat.com>
> ---
> Note this fixes a regression in 5.18-rc# and I'm not entirely sure what
> the procedure is here. Once I get a Reviewed-by or Acked-by and I push
> this to drm-intel-next (where it also is necessary), should I then also
> push it to drm-intel-fixes or will the current drm-intel-fixes
> maintainer pick it up?
> ---
>  drivers/gpu/drm/i915/i915_reg.h | 4 ++--
>  1 file changed, 2 insertions(+), 2 deletions(-)
> 
> diff --git a/drivers/gpu/drm/i915/i915_reg.h b/drivers/gpu/drm/i915/i915_reg.h
> index 51f46fe45c72..5f1f38684d65 100644
> --- a/drivers/gpu/drm/i915/i915_reg.h
> +++ b/drivers/gpu/drm/i915/i915_reg.h
> @@ -4352,12 +4352,12 @@
>  #define _DSPAADDR				0x70184
>  #define _DSPASTRIDE				0x70188
>  #define _DSPAPOS				0x7018C /* reserved */
> -#define   DISP_POS_Y_MASK		REG_GENMASK(31, 0)
> +#define   DISP_POS_Y_MASK		REG_GENMASK(31, 16)

Doh. I guess I only tested it on plane A where the plane gets its size
from PIPESRC instead. And looks like the failure mode is such that
the likes of kms_plane/pixel-formats still gets consistent looking CRCs
even with the misconfigured plane size :/

Thanks for the fix. Pushed to drm-intel-next.

>  #define   DISP_POS_Y(y)			REG_FIELD_PREP(DISP_POS_Y_MASK, (y))
>  #define   DISP_POS_X_MASK		REG_GENMASK(15, 0)
>  #define   DISP_POS_X(x)			REG_FIELD_PREP(DISP_POS_X_MASK, (x))
>  #define _DSPASIZE				0x70190
> -#define   DISP_HEIGHT_MASK		REG_GENMASK(31, 0)
> +#define   DISP_HEIGHT_MASK		REG_GENMASK(31, 16)
>  #define   DISP_HEIGHT(h)		REG_FIELD_PREP(DISP_HEIGHT_MASK, (h))
>  #define   DISP_WIDTH_MASK		REG_GENMASK(15, 0)
>  #define   DISP_WIDTH(w)			REG_FIELD_PREP(DISP_WIDTH_MASK, (w))
> -- 
> 2.35.1

-- 
Ville Syrjälä
Intel
