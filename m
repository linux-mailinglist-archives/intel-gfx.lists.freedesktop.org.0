Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 2F40D7B2F11
	for <lists+intel-gfx@lfdr.de>; Fri, 29 Sep 2023 11:20:16 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 682B310E0F4;
	Fri, 29 Sep 2023 09:20:12 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.55.52.93])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 69D9610E0F4
 for <intel-gfx@lists.freedesktop.org>; Fri, 29 Sep 2023 09:20:10 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1695979210; x=1727515210;
 h=from:to:cc:subject:in-reply-to:references:date:
 message-id:mime-version:content-transfer-encoding;
 bh=7MnNfgUUnJL+kG0zbXS+qO1gXE68Vuc4RyRaz1bX+yQ=;
 b=QNR3Z1N/M/SvqyQXW0z2m2OHpgCx/bbB19LKfHBhxScQoGmcXMQmwruo
 //477NJzcw4TtQy8dYwAgCxS2hxY9UTj3u0q926CCDRXJrvvsUN7qrItY
 oc2jYVLPsN4M8opZphS4OpNizpuhFZw14qgcWW/6+pwbEB6Cv9DEXLRjg
 gppwMFjOfojwTd/hkMoQbZ9hlv3DzVvnQ2arqRboZpCrjN8e/XrSQe106
 0JEleFIDJMRIWO5QjAHPv0rti8qj+zpkCUYRJXGyuSZVYxKY3z6Ib/c9s
 ZH06fgL2n1o68JbR1X0UiF4ntyq53nmhRiYF5WGiR1NqNSDoNTsOpelZR A==;
X-IronPort-AV: E=McAfee;i="6600,9927,10847"; a="379535227"
X-IronPort-AV: E=Sophos;i="6.03,186,1694761200"; d="scan'208";a="379535227"
Received: from orsmga006.jf.intel.com ([10.7.209.51])
 by fmsmga102.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 29 Sep 2023 02:19:57 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10847"; a="726542118"
X-IronPort-AV: E=Sophos;i="6.03,186,1694761200"; d="scan'208";a="726542118"
Received: from osalyk-mobl1.ger.corp.intel.com (HELO localhost)
 ([10.252.53.237])
 by orsmga006-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 29 Sep 2023 02:19:55 -0700
From: Jani Nikula <jani.nikula@linux.intel.com>
To: Ville =?utf-8?B?U3lyasOkbMOk?= <ville.syrjala@linux.intel.com>, Gustavo
 Sousa <gustavo.sousa@intel.com>
In-Reply-To: <ZQxd5wLhPELN5hfu@intel.com>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
References: <20230920195351.59421-2-gustavo.sousa@intel.com>
 <ZQtPR3XtOl3WWW9Q@intel.com>
 <169524081664.7665.4045864066370477019@gjsousa-mobl2>
 <ZQtWNlJimAS8V57w@intel.com>
 <169530722255.1903.12270984235287148195@gjsousa-mobl2>
 <ZQxd5wLhPELN5hfu@intel.com>
Date: Fri, 29 Sep 2023 12:19:53 +0300
Message-ID: <87ttrdibeu.fsf@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: quoted-printable
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

On Thu, 21 Sep 2023, Ville Syrj=C3=A4l=C3=A4 <ville.syrjala@linux.intel.com=
> wrote:
> On Thu, Sep 21, 2023 at 11:40:22AM -0300, Gustavo Sousa wrote:
>> Quoting Ville Syrj=C3=A4l=C3=A4 (2023-09-20 17:29:42-03:00)
>> >On Wed, Sep 20, 2023 at 05:13:36PM -0300, Gustavo Sousa wrote:
>> >> Quoting Ville Syrj=C3=A4l=C3=A4 (2023-09-20 17:00:07-03:00)
>> >> >On Wed, Sep 20, 2023 at 04:53:52PM -0300, Gustavo Sousa wrote:
>> >> >> Starting with Xe_LP+, GFX_MSTR_IRQ contains status bits that have =
W1C
>> >> >> behavior. If we do not properly reset them, we would miss delivery=
 of
>> >> >> interrupts if a pending bit is set when enabling IRQs.
>> >> >>=20
>> >> >> As an example, the display part of our probe routine contains paths
>> >> >> where we wait for vblank interrupts. If a display interrupt was al=
ready
>> >> >> pending when enabling IRQs, we would time out waiting for the vbla=
nk.
>> >> >>=20
>> >> >> Avoid the potential issue by clearing GFX_MSTR_IRQ as part of the =
IRQ
>> >> >> reset.
>> >> >>=20
>> >> >> v2:
>> >> >>   - Move logic from gen11_gt_irq_reset() to dg1_irq_reset(). (Matt)
>> >> >>=20
>> >> >> BSpec: 50875, 54028
>> >> >> Cc: Matt Roper <matthew.d.roper@intel.com>
>> >> >> Signed-off-by: Gustavo Sousa <gustavo.sousa@intel.com>
>> >> >> ---
>> >> >>  drivers/gpu/drm/i915/i915_irq.c | 2 ++
>> >> >>  1 file changed, 2 insertions(+)
>> >> >>=20
>> >> >> diff --git a/drivers/gpu/drm/i915/i915_irq.c b/drivers/gpu/drm/i91=
5/i915_irq.c
>> >> >> index 1bfcfbe6e30b..8130f043693b 100644
>> >> >> --- a/drivers/gpu/drm/i915/i915_irq.c
>> >> >> +++ b/drivers/gpu/drm/i915/i915_irq.c
>> >> >> @@ -751,6 +751,8 @@ static void dg1_irq_reset(struct drm_i915_priv=
ate *dev_priv)
>> >> >>=20=20
>> >> >>          GEN3_IRQ_RESET(uncore, GEN11_GU_MISC_);
>> >> >>          GEN3_IRQ_RESET(uncore, GEN8_PCU_);
>> >> >> +
>> >> >> +        intel_uncore_write(uncore, GEN11_GFX_MSTR_IRQ, ~0);
>> >> >
>> >> >Did you confirm that it's not double buffered?
>> >>=20
>> >> Ah, sorry... I forgot to mention on the original thread where you ask=
ed:
>> >>=20
>> >>   - BSpec 50875 and 66434 (for Xe2) does not say that GFX_MSTR_IRQ is
>> >>     double buffered. In fact they mention the fact that display IIR
>> >>     registers are double buffered and require multiple writes to fully
>> >>     clear, but does not say the same about GFX_MSTR_IRQ.
>> >>=20
>> >>   - Also, BSpec 54028 does not mention that the register is double
>> >>     buffered.
>> >>=20
>> >> Based on the above, I'm assuming it is not double buffered.
>> >>=20
>> >> Should I check other sources? Is there some sort of runtime check that
>> >> can be done?
>> >
>> >I'd probably just poke at it with intel_reg. Eg:
>> >1. boot w/o driver
>> >2. unmask+enable eg. pipe vblank interrupt in GEN8_DE_PIPE_IMR/IER
>> >3. make sure GEN11_DISPLAY_INT_CTL sees it
>> >4. enable GEN11_DISPLAY_IRQ_ENABLE
>> >5. make sure GEN11_GFX_MSTR_IRQ see it
>> >6. toggle GEN11_DISPLAY_IRQ_ENABLE a few more times to generate extra e=
dges
>> >7. try to clear the bit in GEN11_GFX_MSTR_IRQ
>> >8. did the bit clear?
>> >   yes -> single buffered
>> >   no -> goto 7 and check again to make sure it clears on the second ti=
me around -> double buffered
>>=20
>> Thanks for the detailed sequence above.
>>=20
>> I wrote a small bash script based on the above and ran it on a Lunar
>> Lake machine. The output is presented below.
>>=20
>> I belive the output is self explanatory, but just to be sure: "write
>> <REG_NAME> <VAL>" tells that we are writing <VAL> to <REG_NAME>; and
>> "read <REG_NAME> <VAL>" tells that we got <VAL> after reading
>> <REG_NAME>.
>>=20
>>     $ sudo ./confirm-gfx-mstr-irq-is-single-buffered.sh
>>     Reset stuff
>>       write GEN8_DE_PIPE_IMR__PIPE_A        0xffffffff
>>       write GEN8_DE_PIPE_IER__PIPE_A        0x00000000
>>       write GEN8_DE_PIPE_IIR__PIPE_A        0xffffffff
>>       write GEN8_DE_PIPE_IIR__PIPE_A        0xffffffff
>>       write GEN11_DISPLAY_INT_CTL   0x00000000
>>       write GEN11_GFX_MSTR_IRQ      0xffffffff
>>       write GEN11_GFX_MSTR_IRQ      0xffffffff
>>       read  GEN8_DE_PIPE_IIR__PIPE_A        0x00000000
>>       read  GEN11_DISPLAY_INT_CTL   0x00000000
>>       read  GEN11_GFX_MSTR_IRQ      0x00000000
>>=20
>>     Enable vblank on PIPE A
>>       write GEN8_DE_PIPE_IMR__PIPE_A        0xfffffffe
>>       write GEN8_DE_PIPE_IER__PIPE_A        0x00000001
>>=20
>>     Check that display interrupt was generated
>>       read  GEN11_DISPLAY_INT_CTL   0x00010000
>>=20
>>     Enable display interrupt
>>       write GEN11_DISPLAY_INT_CTL   0x80000000
>>=20
>>     Check that display bit in GFX_MSTR_IRQ was set
>>       read  GEN11_GFX_MSTR_IRQ      0x00010000
>>=20
>>     Toggle the enable bit to generate edges
>>       write GEN11_DISPLAY_INT_CTL   0x00000000
>>       write GEN11_DISPLAY_INT_CTL   0x80000000
>>       write GEN11_DISPLAY_INT_CTL   0x00000000
>>       write GEN11_DISPLAY_INT_CTL   0x80000000
>>=20
>>     Clear and read GFX_MSTR_IRQ again
>>       write GEN11_GFX_MSTR_IRQ      0xffffffff
>>       read  GEN11_GFX_MSTR_IRQ      0x00000000
>>=20
>> By the output above, I belive we can conclude that GFX_MSTR_IRQ is
>> single buffered, right?
>
> Aye. Looks conclusive.
>
> Reviewed-by: Ville Syrj=C3=A4l=C3=A4 <ville.syrjala@linux.intel.com>

Should this have been Cc: stable?

BR,
Jani.


--=20
Jani Nikula, Intel
