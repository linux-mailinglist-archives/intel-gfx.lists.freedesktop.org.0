Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id A12287A8D6D
	for <lists+intel-gfx@lfdr.de>; Wed, 20 Sep 2023 22:00:18 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id B451610E545;
	Wed, 20 Sep 2023 20:00:14 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [134.134.136.65])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 573FF10E545
 for <intel-gfx@lists.freedesktop.org>; Wed, 20 Sep 2023 20:00:12 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1695240012; x=1726776012;
 h=date:from:to:cc:subject:message-id:references:
 mime-version:content-transfer-encoding:in-reply-to;
 bh=ONV1QJD9kTR6O1/YD1I5DvFJBcs9CERmETVEO1P0d3Q=;
 b=MLaR/jR72aV+7AW0RlQIwhr/FuvmmyG2lqt2ecvMIx84arqctBWL+821
 9P8i3oK2jPF07sZYrLXihnc2vlqhzr1qu26K4Af1eQtrdN0euyWcf0wJj
 FFyT39uudeSS9joNHEO1onRp4KpJJAl0wJ1aacurjyMUQ/X215Ndog8Jg
 9Jyv5Fl/37SW+dzSlde6aj8l6S1W0zMY26x0m3ZCcVa0R8qgDadfho/PE
 AP0bPEMG9TEnzrPOza56prPfpBRdPObp4ixD4mIDtA7EWZC4Ke50qacfY
 5GlK+vd1HWGHFxeTr5krOpGA2o4AvbKSjW5/f7yEnRGWWh2mfysR+Z0gS w==;
X-IronPort-AV: E=McAfee;i="6600,9927,10839"; a="384161677"
X-IronPort-AV: E=Sophos;i="6.03,162,1694761200"; d="scan'208";a="384161677"
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
 by orsmga103.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 20 Sep 2023 13:00:11 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10839"; a="862132856"
X-IronPort-AV: E=Sophos;i="6.03,162,1694761200"; d="scan'208";a="862132856"
Received: from stinkpipe.fi.intel.com (HELO stinkbox) ([10.237.72.153])
 by fmsmga002.fm.intel.com with SMTP; 20 Sep 2023 13:00:08 -0700
Received: by stinkbox (sSMTP sendmail emulation);
 Wed, 20 Sep 2023 23:00:07 +0300
Date: Wed, 20 Sep 2023 23:00:07 +0300
From: Ville =?iso-8859-1?Q?Syrj=E4l=E4?= <ville.syrjala@linux.intel.com>
To: Gustavo Sousa <gustavo.sousa@intel.com>
Message-ID: <ZQtPR3XtOl3WWW9Q@intel.com>
References: <20230920195351.59421-2-gustavo.sousa@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=iso-8859-1
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <20230920195351.59421-2-gustavo.sousa@intel.com>
X-Patchwork-Hint: comment
Subject: Re: [Intel-gfx] [PATCH v2] drm/i915/irq: Clear GFX_MSTR_IRQ as part
 of IRQ reset
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
Cc: intel-gfx@lists.freedesktop.org, Matt Roper <matthew.d.roper@intel.com>
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Wed, Sep 20, 2023 at 04:53:52PM -0300, Gustavo Sousa wrote:
> Starting with Xe_LP+, GFX_MSTR_IRQ contains status bits that have W1C
> behavior. If we do not properly reset them, we would miss delivery of
> interrupts if a pending bit is set when enabling IRQs.
> 
> As an example, the display part of our probe routine contains paths
> where we wait for vblank interrupts. If a display interrupt was already
> pending when enabling IRQs, we would time out waiting for the vblank.
> 
> Avoid the potential issue by clearing GFX_MSTR_IRQ as part of the IRQ
> reset.
> 
> v2:
>   - Move logic from gen11_gt_irq_reset() to dg1_irq_reset(). (Matt)
> 
> BSpec: 50875, 54028
> Cc: Matt Roper <matthew.d.roper@intel.com>
> Signed-off-by: Gustavo Sousa <gustavo.sousa@intel.com>
> ---
>  drivers/gpu/drm/i915/i915_irq.c | 2 ++
>  1 file changed, 2 insertions(+)
> 
> diff --git a/drivers/gpu/drm/i915/i915_irq.c b/drivers/gpu/drm/i915/i915_irq.c
> index 1bfcfbe6e30b..8130f043693b 100644
> --- a/drivers/gpu/drm/i915/i915_irq.c
> +++ b/drivers/gpu/drm/i915/i915_irq.c
> @@ -751,6 +751,8 @@ static void dg1_irq_reset(struct drm_i915_private *dev_priv)
>  
>  	GEN3_IRQ_RESET(uncore, GEN11_GU_MISC_);
>  	GEN3_IRQ_RESET(uncore, GEN8_PCU_);
> +
> +	intel_uncore_write(uncore, GEN11_GFX_MSTR_IRQ, ~0);

Did you confirm that it's not double buffered?

>  }
>  
>  static void cherryview_irq_reset(struct drm_i915_private *dev_priv)
> -- 
> 2.42.0

-- 
Ville Syrjälä
Intel
