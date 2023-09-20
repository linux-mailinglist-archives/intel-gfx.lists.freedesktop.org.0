Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id BE3707A8DC9
	for <lists+intel-gfx@lfdr.de>; Wed, 20 Sep 2023 22:29:52 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 54F6C10E085;
	Wed, 20 Sep 2023 20:29:50 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.55.52.151])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 504BB10E556
 for <intel-gfx@lists.freedesktop.org>; Wed, 20 Sep 2023 20:29:47 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1695241787; x=1726777787;
 h=date:from:to:cc:subject:message-id:references:
 mime-version:content-transfer-encoding:in-reply-to;
 bh=nDJf9HzDx2nMK8lgYAZPGgf39Yf3Fy1ubIBm2sv/2Nk=;
 b=L0DujqcePgsVzcLsYisypv0MUW7LJlnRWFv8aFOlTCbZyAZAWVCXGma1
 Xe6r/vNL4zQN/GZwOIey/p7BR+YadieQB0GNJ5EBhCk2+dz9o2DSatA0l
 fFmojl2EzlFYfjwlT43rrIpAGCR98bpXwvXH3KBXazdpxPBuXdn1abq7E
 gLRYTonyTGapli2E1/TsaEBqnvqQHevAs5uAIL1rRAox6c6f+o6ZQVXLZ
 oxZP8JQr+FbFwKGgPzIc/cZLyimnTe94dd4tUBoV03Yp4Sc7pbmMS5ALt
 0bMtfUgBpyowVCelOijOcoaDCH3N62yzS9UNOPnhEmssdke5TNsOQGA51 Q==;
X-IronPort-AV: E=McAfee;i="6600,9927,10839"; a="360583774"
X-IronPort-AV: E=Sophos;i="6.03,162,1694761200"; d="scan'208";a="360583774"
Received: from orsmga004.jf.intel.com ([10.7.209.38])
 by fmsmga107.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 20 Sep 2023 13:29:46 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10839"; a="870515072"
X-IronPort-AV: E=Sophos;i="6.03,162,1694761200"; d="scan'208";a="870515072"
Received: from stinkpipe.fi.intel.com (HELO stinkbox) ([10.237.72.153])
 by orsmga004.jf.intel.com with SMTP; 20 Sep 2023 13:29:43 -0700
Received: by stinkbox (sSMTP sendmail emulation);
 Wed, 20 Sep 2023 23:29:42 +0300
Date: Wed, 20 Sep 2023 23:29:42 +0300
From: Ville =?iso-8859-1?Q?Syrj=E4l=E4?= <ville.syrjala@linux.intel.com>
To: Gustavo Sousa <gustavo.sousa@intel.com>
Message-ID: <ZQtWNlJimAS8V57w@intel.com>
References: <20230920195351.59421-2-gustavo.sousa@intel.com>
 <ZQtPR3XtOl3WWW9Q@intel.com>
 <169524081664.7665.4045864066370477019@gjsousa-mobl2>
MIME-Version: 1.0
Content-Type: text/plain; charset=iso-8859-1
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <169524081664.7665.4045864066370477019@gjsousa-mobl2>
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

On Wed, Sep 20, 2023 at 05:13:36PM -0300, Gustavo Sousa wrote:
> Quoting Ville Syrjälä (2023-09-20 17:00:07-03:00)
> >On Wed, Sep 20, 2023 at 04:53:52PM -0300, Gustavo Sousa wrote:
> >> Starting with Xe_LP+, GFX_MSTR_IRQ contains status bits that have W1C
> >> behavior. If we do not properly reset them, we would miss delivery of
> >> interrupts if a pending bit is set when enabling IRQs.
> >> 
> >> As an example, the display part of our probe routine contains paths
> >> where we wait for vblank interrupts. If a display interrupt was already
> >> pending when enabling IRQs, we would time out waiting for the vblank.
> >> 
> >> Avoid the potential issue by clearing GFX_MSTR_IRQ as part of the IRQ
> >> reset.
> >> 
> >> v2:
> >>   - Move logic from gen11_gt_irq_reset() to dg1_irq_reset(). (Matt)
> >> 
> >> BSpec: 50875, 54028
> >> Cc: Matt Roper <matthew.d.roper@intel.com>
> >> Signed-off-by: Gustavo Sousa <gustavo.sousa@intel.com>
> >> ---
> >>  drivers/gpu/drm/i915/i915_irq.c | 2 ++
> >>  1 file changed, 2 insertions(+)
> >> 
> >> diff --git a/drivers/gpu/drm/i915/i915_irq.c b/drivers/gpu/drm/i915/i915_irq.c
> >> index 1bfcfbe6e30b..8130f043693b 100644
> >> --- a/drivers/gpu/drm/i915/i915_irq.c
> >> +++ b/drivers/gpu/drm/i915/i915_irq.c
> >> @@ -751,6 +751,8 @@ static void dg1_irq_reset(struct drm_i915_private *dev_priv)
> >>  
> >>          GEN3_IRQ_RESET(uncore, GEN11_GU_MISC_);
> >>          GEN3_IRQ_RESET(uncore, GEN8_PCU_);
> >> +
> >> +        intel_uncore_write(uncore, GEN11_GFX_MSTR_IRQ, ~0);
> >
> >Did you confirm that it's not double buffered?
> 
> Ah, sorry... I forgot to mention on the original thread where you asked:
> 
>   - BSpec 50875 and 66434 (for Xe2) does not say that GFX_MSTR_IRQ is
>     double buffered. In fact they mention the fact that display IIR
>     registers are double buffered and require multiple writes to fully
>     clear, but does not say the same about GFX_MSTR_IRQ.
> 
>   - Also, BSpec 54028 does not mention that the register is double
>     buffered.
> 
> Based on the above, I'm assuming it is not double buffered.
> 
> Should I check other sources? Is there some sort of runtime check that
> can be done?

I'd probably just poke at it with intel_reg. Eg:
1. boot w/o driver
2. unmask+enable eg. pipe vblank interrupt in GEN8_DE_PIPE_IMR/IER
3. make sure GEN11_DISPLAY_INT_CTL sees it
4. enable GEN11_DISPLAY_IRQ_ENABLE
5. make sure GEN11_GFX_MSTR_IRQ see it
6. toggle GEN11_DISPLAY_IRQ_ENABLE a few more times to generate extra edges
7. try to clear the bit in GEN11_GFX_MSTR_IRQ
8. did the bit clear?
   yes -> single buffered
   no -> goto 7 and check again to make sure it clears on the second time around -> double buffered

> 
> --
> Gustavo Sousa
> 
> >
> >>  }
> >>  
> >>  static void cherryview_irq_reset(struct drm_i915_private *dev_priv)
> >> -- 
> >> 2.42.0
> >
> >-- 
> >Ville Syrjälä
> >Intel

-- 
Ville Syrjälä
Intel
