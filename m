Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id BEEF412F719
	for <lists+intel-gfx@lfdr.de>; Fri,  3 Jan 2020 12:22:43 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id E94996E1D6;
	Fri,  3 Jan 2020 11:22:39 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga12.intel.com (mga12.intel.com [192.55.52.136])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 462C86E1D6
 for <intel-gfx@lists.freedesktop.org>; Fri,  3 Jan 2020 11:22:39 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
 by fmsmga106.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 03 Jan 2020 03:22:38 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.69,390,1571727600"; d="scan'208";a="224938437"
Received: from gaia.fi.intel.com ([10.237.72.192])
 by fmsmga001.fm.intel.com with ESMTP; 03 Jan 2020 03:22:37 -0800
Received: by gaia.fi.intel.com (Postfix, from userid 1000)
 id D29145C1DFE; Fri,  3 Jan 2020 13:22:11 +0200 (EET)
From: Mika Kuoppala <mika.kuoppala@linux.intel.com>
To: Chris Wilson <chris@chris-wilson.co.uk>, intel-gfx@lists.freedesktop.org
In-Reply-To: <20200102131707.1463945-1-chris@chris-wilson.co.uk>
References: <20200102131707.1463945-1-chris@chris-wilson.co.uk>
Date: Fri, 03 Jan 2020 13:22:11 +0200
Message-ID: <871rsg6azg.fsf@gaia.fi.intel.com>
MIME-Version: 1.0
Subject: Re: [Intel-gfx] [PATCH 1/5] drm/i915/gt: Include a bunch more rcs
 image state
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

Chris Wilson <chris@chris-wilson.co.uk> writes:

> Empirically the minimal context image we use for rcs is insufficient to
> state the engine. This is demonstrated if we poison the context image
> such that any uninitialised state is invalid, and so if the engine
> samples beyond our defined region, will fail to start.
>
> Signed-off-by: Chris Wilson <chris@chris-wilson.co.uk>

Reviewed-by: Mika Kuoppala <mika.kuoppala@linux.intel.com>

> ---
>  drivers/gpu/drm/i915/gt/intel_lrc.c    | 88 +++++++++++++++++++++++++-
>  drivers/gpu/drm/i915/gt/selftest_lrc.c |  7 ++
>  2 files changed, 94 insertions(+), 1 deletion(-)
>
> diff --git a/drivers/gpu/drm/i915/gt/intel_lrc.c b/drivers/gpu/drm/i915/gt/intel_lrc.c
> index 00895f83f61e..029496d2dfb5 100644
> --- a/drivers/gpu/drm/i915/gt/intel_lrc.c
> +++ b/drivers/gpu/drm/i915/gt/intel_lrc.c
> @@ -492,7 +492,7 @@ static u32 *set_offsets(u32 *regs,
>  			const u8 *data,
>  			const struct intel_engine_cs *engine)
>  #define NOP(x) (BIT(7) | (x))
> -#define LRI(count, flags) ((flags) << 6 | (count))
> +#define LRI(count, flags) ((flags) << 6 | (count) | BUILD_BUG_ON_ZERO(count >= BIT(6)))
>  #define POSTED BIT(0)
>  #define REG(x) (((x) >> 2) | BUILD_BUG_ON_ZERO(x >= 0x200))
>  #define REG16(x) \
> @@ -728,6 +728,90 @@ static const u8 gen8_rcs_offsets[] = {
>  	END(),
>  };
>  
> +static const u8 gen9_rcs_offsets[] = {
> +	NOP(1),
> +	LRI(14, POSTED),
> +	REG16(0x244),
> +	REG(0x34),
> +	REG(0x30),
> +	REG(0x38),
> +	REG(0x3c),
> +	REG(0x168),
> +	REG(0x140),
> +	REG(0x110),
> +	REG(0x11c),
> +	REG(0x114),
> +	REG(0x118),
> +	REG(0x1c0),
> +	REG(0x1c4),
> +	REG(0x1c8),
> +
> +	NOP(3),
> +	LRI(9, POSTED),
> +	REG16(0x3a8),
> +	REG16(0x28c),
> +	REG16(0x288),
> +	REG16(0x284),
> +	REG16(0x280),
> +	REG16(0x27c),
> +	REG16(0x278),
> +	REG16(0x274),
> +	REG16(0x270),
> +
> +	NOP(13),
> +	LRI(1, 0),
> +	REG(0xc8),
> +
> +	NOP(13),
> +	LRI(44, POSTED),
> +	REG(0x28),
> +	REG(0x9c),
> +	REG(0xc0),
> +	REG(0x178),
> +	REG(0x17c),
> +	REG16(0x358),
> +	REG(0x170),
> +	REG(0x150),
> +	REG(0x154),
> +	REG(0x158),
> +	REG16(0x41c),
> +	REG16(0x600),
> +	REG16(0x604),
> +	REG16(0x608),
> +	REG16(0x60c),
> +	REG16(0x610),
> +	REG16(0x614),
> +	REG16(0x618),
> +	REG16(0x61c),
> +	REG16(0x620),
> +	REG16(0x624),
> +	REG16(0x628),
> +	REG16(0x62c),
> +	REG16(0x630),
> +	REG16(0x634),
> +	REG16(0x638),
> +	REG16(0x63c),
> +	REG16(0x640),
> +	REG16(0x644),
> +	REG16(0x648),
> +	REG16(0x64c),
> +	REG16(0x650),
> +	REG16(0x654),
> +	REG16(0x658),
> +	REG16(0x65c),
> +	REG16(0x660),
> +	REG16(0x664),
> +	REG16(0x668),
> +	REG16(0x66c),
> +	REG16(0x670),
> +	REG16(0x674),
> +	REG16(0x678),
> +	REG16(0x67c),
> +	REG(0x68),
> +
> +	END()
> +};
> +
>  static const u8 gen11_rcs_offsets[] = {
>  	NOP(1),
>  	LRI(15, POSTED),
> @@ -832,6 +916,8 @@ static const u8 *reg_offsets(const struct intel_engine_cs *engine)
>  			return gen12_rcs_offsets;
>  		else if (INTEL_GEN(engine->i915) >= 11)
>  			return gen11_rcs_offsets;
> +		else if (INTEL_GEN(engine->i915) >= 9)
> +			return gen9_rcs_offsets;
>  		else
>  			return gen8_rcs_offsets;
>  	} else {
> diff --git a/drivers/gpu/drm/i915/gt/selftest_lrc.c b/drivers/gpu/drm/i915/gt/selftest_lrc.c
> index 9ec9833c9c7b..943b623f00e9 100644
> --- a/drivers/gpu/drm/i915/gt/selftest_lrc.c
> +++ b/drivers/gpu/drm/i915/gt/selftest_lrc.c
> @@ -3406,6 +3406,13 @@ static int live_lrc_layout(void *arg)
>  				continue;
>  			}
>  
> +			if (lrc[dw] == 0) {
> +				pr_debug("%s: skipped instruction %x at dword %d\n",
> +					 engine->name, lri, dw);
> +				dw++;
> +				continue;
> +			}
> +
>  			if ((lri & GENMASK(31, 23)) != MI_INSTR(0x22, 0)) {
>  				pr_err("%s: Expected LRI command at dword %d, found %08x\n",
>  				       engine->name, dw, lri);
> -- 
> 2.25.0.rc0
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
