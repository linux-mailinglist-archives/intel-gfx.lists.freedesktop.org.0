Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 8C9147A9576
	for <lists+intel-gfx@lfdr.de>; Thu, 21 Sep 2023 17:16:10 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id C141B10E12A;
	Thu, 21 Sep 2023 15:16:08 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.55.52.93])
 by gabe.freedesktop.org (Postfix) with ESMTPS id C55F510E12A
 for <intel-gfx@lists.freedesktop.org>; Thu, 21 Sep 2023 15:16:07 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1695309367; x=1726845367;
 h=date:from:to:cc:subject:message-id:references:
 mime-version:content-transfer-encoding:in-reply-to;
 bh=R6davHs+/m93Jyzdpk8faH5r6FbqlgPsDVFMd0g6wjU=;
 b=jSeBEXMUi2oylzCEW666ITZgtVfpkMI0n1yHgtV4t0SJn1wGsLw5I4FT
 I41bfnkcUz7Iw9m+KLv/aw0touV2a67ukuWerAC75OzMAXGN5sPJs8Btv
 hW8Tg66fM0sFg1QmwjosxHFlOPqceOKonwUQ+cbfiqd5kkw5kH8Jz9S8J
 dR6gUH4G0UeGmH4Z8EItWn4R5J62Cya1Hcw6v9ftLrYpxu9WHKa9DJFX/
 5FuBglAZLDWihNpTZTduDd3P1KFXXt7H6eyIcfay47r9RqJoXD4PwICcG
 Y6KdX0L4n8ZhrOIkseErnHDbnYZ4c8vRxpB9kjme42jdNuLYsO3fdNUTC Q==;
X-IronPort-AV: E=McAfee;i="6600,9927,10840"; a="377842692"
X-IronPort-AV: E=Sophos;i="6.03,165,1694761200"; d="scan'208";a="377842692"
Received: from orsmga008.jf.intel.com ([10.7.209.65])
 by fmsmga102.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 21 Sep 2023 08:14:50 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10840"; a="776474141"
X-IronPort-AV: E=Sophos;i="6.03,165,1694761200"; d="scan'208";a="776474141"
Received: from stinkpipe.fi.intel.com (HELO stinkbox) ([10.237.72.153])
 by orsmga008.jf.intel.com with SMTP; 21 Sep 2023 08:14:48 -0700
Received: by stinkbox (sSMTP sendmail emulation);
 Thu, 21 Sep 2023 18:14:47 +0300
Date: Thu, 21 Sep 2023 18:14:47 +0300
From: Ville =?iso-8859-1?Q?Syrj=E4l=E4?= <ville.syrjala@linux.intel.com>
To: Gustavo Sousa <gustavo.sousa@intel.com>
Message-ID: <ZQxd5wLhPELN5hfu@intel.com>
References: <20230920195351.59421-2-gustavo.sousa@intel.com>
 <ZQtPR3XtOl3WWW9Q@intel.com>
 <169524081664.7665.4045864066370477019@gjsousa-mobl2>
 <ZQtWNlJimAS8V57w@intel.com>
 <169530722255.1903.12270984235287148195@gjsousa-mobl2>
MIME-Version: 1.0
Content-Type: text/plain; charset=iso-8859-1
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <169530722255.1903.12270984235287148195@gjsousa-mobl2>
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

On Thu, Sep 21, 2023 at 11:40:22AM -0300, Gustavo Sousa wrote:
> Quoting Ville Syrjälä (2023-09-20 17:29:42-03:00)
> >On Wed, Sep 20, 2023 at 05:13:36PM -0300, Gustavo Sousa wrote:
> >> Quoting Ville Syrjälä (2023-09-20 17:00:07-03:00)
> >> >On Wed, Sep 20, 2023 at 04:53:52PM -0300, Gustavo Sousa wrote:
> >> >> Starting with Xe_LP+, GFX_MSTR_IRQ contains status bits that have W1C
> >> >> behavior. If we do not properly reset them, we would miss delivery of
> >> >> interrupts if a pending bit is set when enabling IRQs.
> >> >> 
> >> >> As an example, the display part of our probe routine contains paths
> >> >> where we wait for vblank interrupts. If a display interrupt was already
> >> >> pending when enabling IRQs, we would time out waiting for the vblank.
> >> >> 
> >> >> Avoid the potential issue by clearing GFX_MSTR_IRQ as part of the IRQ
> >> >> reset.
> >> >> 
> >> >> v2:
> >> >>   - Move logic from gen11_gt_irq_reset() to dg1_irq_reset(). (Matt)
> >> >> 
> >> >> BSpec: 50875, 54028
> >> >> Cc: Matt Roper <matthew.d.roper@intel.com>
> >> >> Signed-off-by: Gustavo Sousa <gustavo.sousa@intel.com>
> >> >> ---
> >> >>  drivers/gpu/drm/i915/i915_irq.c | 2 ++
> >> >>  1 file changed, 2 insertions(+)
> >> >> 
> >> >> diff --git a/drivers/gpu/drm/i915/i915_irq.c b/drivers/gpu/drm/i915/i915_irq.c
> >> >> index 1bfcfbe6e30b..8130f043693b 100644
> >> >> --- a/drivers/gpu/drm/i915/i915_irq.c
> >> >> +++ b/drivers/gpu/drm/i915/i915_irq.c
> >> >> @@ -751,6 +751,8 @@ static void dg1_irq_reset(struct drm_i915_private *dev_priv)
> >> >>  
> >> >>          GEN3_IRQ_RESET(uncore, GEN11_GU_MISC_);
> >> >>          GEN3_IRQ_RESET(uncore, GEN8_PCU_);
> >> >> +
> >> >> +        intel_uncore_write(uncore, GEN11_GFX_MSTR_IRQ, ~0);
> >> >
> >> >Did you confirm that it's not double buffered?
> >> 
> >> Ah, sorry... I forgot to mention on the original thread where you asked:
> >> 
> >>   - BSpec 50875 and 66434 (for Xe2) does not say that GFX_MSTR_IRQ is
> >>     double buffered. In fact they mention the fact that display IIR
> >>     registers are double buffered and require multiple writes to fully
> >>     clear, but does not say the same about GFX_MSTR_IRQ.
> >> 
> >>   - Also, BSpec 54028 does not mention that the register is double
> >>     buffered.
> >> 
> >> Based on the above, I'm assuming it is not double buffered.
> >> 
> >> Should I check other sources? Is there some sort of runtime check that
> >> can be done?
> >
> >I'd probably just poke at it with intel_reg. Eg:
> >1. boot w/o driver
> >2. unmask+enable eg. pipe vblank interrupt in GEN8_DE_PIPE_IMR/IER
> >3. make sure GEN11_DISPLAY_INT_CTL sees it
> >4. enable GEN11_DISPLAY_IRQ_ENABLE
> >5. make sure GEN11_GFX_MSTR_IRQ see it
> >6. toggle GEN11_DISPLAY_IRQ_ENABLE a few more times to generate extra edges
> >7. try to clear the bit in GEN11_GFX_MSTR_IRQ
> >8. did the bit clear?
> >   yes -> single buffered
> >   no -> goto 7 and check again to make sure it clears on the second time around -> double buffered
> 
> Thanks for the detailed sequence above.
> 
> I wrote a small bash script based on the above and ran it on a Lunar
> Lake machine. The output is presented below.
> 
> I belive the output is self explanatory, but just to be sure: "write
> <REG_NAME> <VAL>" tells that we are writing <VAL> to <REG_NAME>; and
> "read <REG_NAME> <VAL>" tells that we got <VAL> after reading
> <REG_NAME>.
> 
>     $ sudo ./confirm-gfx-mstr-irq-is-single-buffered.sh
>     Reset stuff
>       write GEN8_DE_PIPE_IMR__PIPE_A        0xffffffff
>       write GEN8_DE_PIPE_IER__PIPE_A        0x00000000
>       write GEN8_DE_PIPE_IIR__PIPE_A        0xffffffff
>       write GEN8_DE_PIPE_IIR__PIPE_A        0xffffffff
>       write GEN11_DISPLAY_INT_CTL   0x00000000
>       write GEN11_GFX_MSTR_IRQ      0xffffffff
>       write GEN11_GFX_MSTR_IRQ      0xffffffff
>       read  GEN8_DE_PIPE_IIR__PIPE_A        0x00000000
>       read  GEN11_DISPLAY_INT_CTL   0x00000000
>       read  GEN11_GFX_MSTR_IRQ      0x00000000
> 
>     Enable vblank on PIPE A
>       write GEN8_DE_PIPE_IMR__PIPE_A        0xfffffffe
>       write GEN8_DE_PIPE_IER__PIPE_A        0x00000001
> 
>     Check that display interrupt was generated
>       read  GEN11_DISPLAY_INT_CTL   0x00010000
> 
>     Enable display interrupt
>       write GEN11_DISPLAY_INT_CTL   0x80000000
> 
>     Check that display bit in GFX_MSTR_IRQ was set
>       read  GEN11_GFX_MSTR_IRQ      0x00010000
> 
>     Toggle the enable bit to generate edges
>       write GEN11_DISPLAY_INT_CTL   0x00000000
>       write GEN11_DISPLAY_INT_CTL   0x80000000
>       write GEN11_DISPLAY_INT_CTL   0x00000000
>       write GEN11_DISPLAY_INT_CTL   0x80000000
> 
>     Clear and read GFX_MSTR_IRQ again
>       write GEN11_GFX_MSTR_IRQ      0xffffffff
>       read  GEN11_GFX_MSTR_IRQ      0x00000000
> 
> By the output above, I belive we can conclude that GFX_MSTR_IRQ is
> single buffered, right?

Aye. Looks conclusive.

Reviewed-by: Ville Syrjälä <ville.syrjala@linux.intel.com>

-- 
Ville Syrjälä
Intel
