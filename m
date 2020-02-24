Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 266EF16B348
	for <lists+intel-gfx@lfdr.de>; Mon, 24 Feb 2020 22:54:24 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 173CD6E878;
	Mon, 24 Feb 2020 21:54:22 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga03.intel.com (mga03.intel.com [134.134.136.65])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 59DB46E878
 for <intel-gfx@lists.freedesktop.org>; Mon, 24 Feb 2020 21:54:20 +0000 (UTC)
X-Amp-Result: UNKNOWN
X-Amp-Original-Verdict: FILE UNKNOWN
X-Amp-File-Uploaded: False
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
 by orsmga103.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 24 Feb 2020 13:54:19 -0800
X-IronPort-AV: E=Sophos;i="5.70,481,1574150400"; d="scan'208";a="271055358"
Received: from ldmartin-desk1.jf.intel.com (HELO ldmartin-desk1)
 ([134.134.244.163])
 by fmsmga002-auth.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 24 Feb 2020 13:54:19 -0800
Date: Mon, 24 Feb 2020 13:54:12 -0800
From: Lucas De Marchi <lucas.demarchi@intel.com>
To: Chris Wilson <chris@chris-wilson.co.uk>
Message-ID: <20200224215412.ema43ia2ejz7mkoh@ldmartin-desk1>
X-Patchwork-Hint: ignore
References: <20200222002824.17103-1-lucas.demarchi@intel.com>
 <4a1fc6a341c803943cd79c9a1961bd37ec5e5cb8.camel@intel.com>
 <158257863477.26598.16478479176829373309@skylake-alporthouse-com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <158257863477.26598.16478479176829373309@skylake-alporthouse-com>
Subject: Re: [Intel-gfx] [PATCH] drm/i915/tgl: Add Wa_1608008084
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
Cc: "michel.thierry@intel.com" <michel.thierry@intel.com>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>,
 "ramlingam.c@intel.com" <ramlingam.c@intel.com>
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Mon, Feb 24, 2020 at 09:10:34PM +0000, Chris Wilson wrote:
>Quoting Souza, Jose (2020-02-22 00:36:53)
>> + CCing people involved in the patch fixed.
>>
>> On Fri, 2020-02-21 at 16:28 -0800, Lucas De Marchi wrote:
>> > Wa_1608008084 is an additional WA that applies to writes on FF_MODE2
>> > register. We can't read it back either from CPU or GPU. Since the
>> > other
>> > bits should be 0, recommendation to handle Wa_1604555607 is to
>> > actually
>> > just write the timer value.
>> >
>> > Do a write only and don't try to read it, neither before or after
>> > the WA is applied.
>> >
>> > Fixes: ff690b2111ba ("drm/i915/tgl: Implement Wa_1604555607")
>> > Signed-off-by: Lucas De Marchi <lucas.demarchi@intel.com>
>> > ---
>> >  drivers/gpu/drm/i915/gt/intel_workarounds.c | 22 ++++++++++---------
>> > --
>> >  1 file changed, 10 insertions(+), 12 deletions(-)
>> >
>> > diff --git a/drivers/gpu/drm/i915/gt/intel_workarounds.c
>> > b/drivers/gpu/drm/i915/gt/intel_workarounds.c
>> > index 887e0dc701f7..0d76e1d6ec87 100644
>> > --- a/drivers/gpu/drm/i915/gt/intel_workarounds.c
>> > +++ b/drivers/gpu/drm/i915/gt/intel_workarounds.c
>> > @@ -580,24 +580,22 @@ static void icl_ctx_workarounds_init(struct
>> > intel_engine_cs *engine,
>> >  static void tgl_ctx_workarounds_init(struct intel_engine_cs *engine,
>> >                                    struct i915_wa_list *wal)
>> >  {
>> > -     u32 val;
>> > -
>> >       /* Wa_1409142259:tgl */
>> >       WA_SET_BIT_MASKED(GEN11_COMMON_SLICE_CHICKEN3,
>> >                         GEN12_DISABLE_CPS_AWARE_COLOR_PIPE);
>> >
>> > -     /* Wa_1604555607:tgl */
>> > -     val = intel_uncore_read(engine->uncore, FF_MODE2);
>> > -     val &= ~FF_MODE2_TDS_TIMER_MASK;
>> > -     val |= FF_MODE2_TDS_TIMER_128;
>> >       /*
>> > -      * FIXME: FF_MODE2 register is not readable till TGL B0. We can
>> > -      * enable verification of WA from the later steppings, which
>> > enables
>> > -      * the read of FF_MODE2.
>> > +      * Wa_1604555607:gen12
>> > +      * FF_MODE2 register is not readable till TGL B0, either by CPU
>> > or GPU.
>>
>> The line above could be removed as the comments above explain it
>> better, also BSpec don't say that it will be fixed in B0.
>
>The HW guys on discovering the bug promised it would be fixed for B0.
>-Chris

So... we have 2 different things here:  setting the timer in FF_MODE2
is the Wa_1604555607. According to the comments on the spec it could
even be treated as a general "gen12 programming mode" rather that a WA.

The fact that we can't read the register since it's tied to another
clock is the Wa_1608008084. I don't see it documented anywhere that it is
fixed in B0. Not even as a comment to the issue. And it's in fact even
marked as permanent.

Lucas De Marchi
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
