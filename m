Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 0C60E1475BB
	for <lists+intel-gfx@lfdr.de>; Fri, 24 Jan 2020 01:51:21 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 606EE6E191;
	Fri, 24 Jan 2020 00:51:19 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga17.intel.com (mga17.intel.com [192.55.52.151])
 by gabe.freedesktop.org (Postfix) with ESMTPS id DBB6D6E191
 for <intel-gfx@lists.freedesktop.org>; Fri, 24 Jan 2020 00:51:17 +0000 (UTC)
X-Amp-Result: UNSCANNABLE
X-Amp-File-Uploaded: False
Received: from fmsmga003.fm.intel.com ([10.253.24.29])
 by fmsmga107.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 23 Jan 2020 16:51:17 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.70,355,1574150400"; d="scan'208";a="276198819"
Received: from mdroper-desk1.fm.intel.com (HELO
 mdroper-desk1.amr.corp.intel.com) ([10.1.27.64])
 by FMSMGA003.fm.intel.com with ESMTP; 23 Jan 2020 16:51:17 -0800
Date: Thu, 23 Jan 2020 16:51:17 -0800
From: Matt Roper <matthew.d.roper@intel.com>
To: Mika Kuoppala <mika.kuoppala@linux.intel.com>
Message-ID: <20200124005117.GE459881@mdroper-desk1.amr.corp.intel.com>
References: <20200102131707.1463945-1-chris@chris-wilson.co.uk>
 <871rsg6azg.fsf@gaia.fi.intel.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <871rsg6azg.fsf@gaia.fi.intel.com>
User-Agent: Mutt/1.12.1 (2019-06-15)
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
Cc: intel-gfx@lists.freedesktop.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Fri, Jan 03, 2020 at 01:22:11PM +0200, Mika Kuoppala wrote:
> Chris Wilson <chris@chris-wilson.co.uk> writes:
> 
> > Empirically the minimal context image we use for rcs is insufficient to
> > state the engine. This is demonstrated if we poison the context image
> > such that any uninitialised state is invalid, and so if the engine
> > samples beyond our defined region, will fail to start.

Just out of curiosity, is this something we only need to worry about on
gen9 and not on gen11/gen12?

I'm not terribly familiar with the context management code, so I was
just curious how we know which parts of the context image are actually
important to define in the *cs_offsets[] arrays and which we can safely
leave uninitialized.

Thanks.


Matt

> >
> > Signed-off-by: Chris Wilson <chris@chris-wilson.co.uk>
> 
> Reviewed-by: Mika Kuoppala <mika.kuoppala@linux.intel.com>
> 
> > ---
> >  drivers/gpu/drm/i915/gt/intel_lrc.c    | 88 +++++++++++++++++++++++++-
> >  drivers/gpu/drm/i915/gt/selftest_lrc.c |  7 ++
> >  2 files changed, 94 insertions(+), 1 deletion(-)
> >
> > diff --git a/drivers/gpu/drm/i915/gt/intel_lrc.c b/drivers/gpu/drm/i915/gt/intel_lrc.c
> > index 00895f83f61e..029496d2dfb5 100644
> > --- a/drivers/gpu/drm/i915/gt/intel_lrc.c
> > +++ b/drivers/gpu/drm/i915/gt/intel_lrc.c
> > @@ -492,7 +492,7 @@ static u32 *set_offsets(u32 *regs,
> >  			const u8 *data,
> >  			const struct intel_engine_cs *engine)
> >  #define NOP(x) (BIT(7) | (x))
> > -#define LRI(count, flags) ((flags) << 6 | (count))
> > +#define LRI(count, flags) ((flags) << 6 | (count) | BUILD_BUG_ON_ZERO(count >= BIT(6)))
> >  #define POSTED BIT(0)
> >  #define REG(x) (((x) >> 2) | BUILD_BUG_ON_ZERO(x >= 0x200))
> >  #define REG16(x) \
> > @@ -728,6 +728,90 @@ static const u8 gen8_rcs_offsets[] = {
> >  	END(),
> >  };
> >  
> > +static const u8 gen9_rcs_offsets[] = {
> > +	NOP(1),
> > +	LRI(14, POSTED),
> > +	REG16(0x244),
> > +	REG(0x34),
> > +	REG(0x30),
> > +	REG(0x38),
> > +	REG(0x3c),
> > +	REG(0x168),
> > +	REG(0x140),
> > +	REG(0x110),
> > +	REG(0x11c),
> > +	REG(0x114),
> > +	REG(0x118),
> > +	REG(0x1c0),
> > +	REG(0x1c4),
> > +	REG(0x1c8),
> > +
> > +	NOP(3),
> > +	LRI(9, POSTED),
> > +	REG16(0x3a8),
> > +	REG16(0x28c),
> > +	REG16(0x288),
> > +	REG16(0x284),
> > +	REG16(0x280),
> > +	REG16(0x27c),
> > +	REG16(0x278),
> > +	REG16(0x274),
> > +	REG16(0x270),
> > +
> > +	NOP(13),
> > +	LRI(1, 0),
> > +	REG(0xc8),
> > +
> > +	NOP(13),
> > +	LRI(44, POSTED),
> > +	REG(0x28),
> > +	REG(0x9c),
> > +	REG(0xc0),
> > +	REG(0x178),
> > +	REG(0x17c),
> > +	REG16(0x358),
> > +	REG(0x170),
> > +	REG(0x150),
> > +	REG(0x154),
> > +	REG(0x158),
> > +	REG16(0x41c),
> > +	REG16(0x600),
> > +	REG16(0x604),
> > +	REG16(0x608),
> > +	REG16(0x60c),
> > +	REG16(0x610),
> > +	REG16(0x614),
> > +	REG16(0x618),
> > +	REG16(0x61c),
> > +	REG16(0x620),
> > +	REG16(0x624),
> > +	REG16(0x628),
> > +	REG16(0x62c),
> > +	REG16(0x630),
> > +	REG16(0x634),
> > +	REG16(0x638),
> > +	REG16(0x63c),
> > +	REG16(0x640),
> > +	REG16(0x644),
> > +	REG16(0x648),
> > +	REG16(0x64c),
> > +	REG16(0x650),
> > +	REG16(0x654),
> > +	REG16(0x658),
> > +	REG16(0x65c),
> > +	REG16(0x660),
> > +	REG16(0x664),
> > +	REG16(0x668),
> > +	REG16(0x66c),
> > +	REG16(0x670),
> > +	REG16(0x674),
> > +	REG16(0x678),
> > +	REG16(0x67c),
> > +	REG(0x68),
> > +
> > +	END()
> > +};
> > +
> >  static const u8 gen11_rcs_offsets[] = {
> >  	NOP(1),
> >  	LRI(15, POSTED),
> > @@ -832,6 +916,8 @@ static const u8 *reg_offsets(const struct intel_engine_cs *engine)
> >  			return gen12_rcs_offsets;
> >  		else if (INTEL_GEN(engine->i915) >= 11)
> >  			return gen11_rcs_offsets;
> > +		else if (INTEL_GEN(engine->i915) >= 9)
> > +			return gen9_rcs_offsets;
> >  		else
> >  			return gen8_rcs_offsets;
> >  	} else {
> > diff --git a/drivers/gpu/drm/i915/gt/selftest_lrc.c b/drivers/gpu/drm/i915/gt/selftest_lrc.c
> > index 9ec9833c9c7b..943b623f00e9 100644
> > --- a/drivers/gpu/drm/i915/gt/selftest_lrc.c
> > +++ b/drivers/gpu/drm/i915/gt/selftest_lrc.c
> > @@ -3406,6 +3406,13 @@ static int live_lrc_layout(void *arg)
> >  				continue;
> >  			}
> >  
> > +			if (lrc[dw] == 0) {
> > +				pr_debug("%s: skipped instruction %x at dword %d\n",
> > +					 engine->name, lri, dw);
> > +				dw++;
> > +				continue;
> > +			}
> > +
> >  			if ((lri & GENMASK(31, 23)) != MI_INSTR(0x22, 0)) {
> >  				pr_err("%s: Expected LRI command at dword %d, found %08x\n",
> >  				       engine->name, dw, lri);
> > -- 
> > 2.25.0.rc0
> _______________________________________________
> Intel-gfx mailing list
> Intel-gfx@lists.freedesktop.org
> https://lists.freedesktop.org/mailman/listinfo/intel-gfx

-- 
Matt Roper
Graphics Software Engineer
VTT-OSGC Platform Enablement
Intel Corporation
(916) 356-2795
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
