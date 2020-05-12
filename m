Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 7B8BB1D030D
	for <lists+intel-gfx@lfdr.de>; Wed, 13 May 2020 01:28:50 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id F156B6EB8C;
	Tue, 12 May 2020 23:28:46 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga14.intel.com (mga14.intel.com [192.55.52.115])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 0FC666EB8D
 for <intel-gfx@lists.freedesktop.org>; Tue, 12 May 2020 23:28:46 +0000 (UTC)
IronPort-SDR: GUmHf/qPRlthbyizVmd2KS56R+y8fY2EaKqhaFEt2+36a+kaRTWaae7tp0mEn+Nzy05Tuy7xwn
 0w4/23irxhEw==
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga006.fm.intel.com ([10.253.24.20])
 by fmsmga103.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 12 May 2020 16:28:45 -0700
IronPort-SDR: iUCHtNGv1nCNQZ7zpDkkz+wA3O6GyV9P+gxtbGYmyc5oLzTYvtKVWTB7WDtQ5PLWugTmrojCcP
 fU/PQEZn7kMg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.73,385,1583222400"; d="scan'208";a="463930718"
Received: from mdroper-desk1.fm.intel.com (HELO
 mdroper-desk1.amr.corp.intel.com) ([10.1.27.64])
 by fmsmga006.fm.intel.com with SMTP; 12 May 2020 16:28:45 -0700
Date: Tue, 12 May 2020 16:28:45 -0700
From: Matt Roper <matthew.d.roper@intel.com>
To: Daniele Ceraolo Spurio <daniele.ceraolospurio@intel.com>
Message-ID: <20200512232845.GB1287268@mdroper-desk1.amr.corp.intel.com>
References: <20200502045744.407060-1-matthew.d.roper@intel.com>
 <20200502045744.407060-3-matthew.d.roper@intel.com>
 <738e66e3-fd24-11dc-3373-5bce3acf5fc5@intel.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <738e66e3-fd24-11dc-3373-5bce3acf5fc5@intel.com>
Subject: Re: [Intel-gfx] [PATCH v2 2/3] drm/i915: Setup MCR steering for RCS
 engine workarounds
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
Cc: intel-gfx@lists.freedesktop.org, chris@chris-wilson.co.uk
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Tue, May 12, 2020 at 10:30:31AM -0700, Daniele Ceraolo Spurio wrote:
> 
> 
> On 5/1/20 9:57 PM, Matt Roper wrote:
> > Reads of multicast registers give the value associated with
> > slice/subslice 0 by default unless we manually steer the reads to a
> > different slice/subslice.  If slice/subslice 0 are fused off in hardware,
> > performing unsteered reads of multicast registers will return a value of
> > 0 rather than the value we wrote into the multicast register.
> > 
> > To ensure we can properly readback and verify workarounds that touch
> > registers in a multicast range, we currently setup MCR steering to a
> > known-valid slice/subslice as the very first item in the GT workaround
> > list for gen10+.  That steering will then be in place as we verify the
> > rest of the registers that show up in the GT workaround list, and at
> > initialization the steering will also still be in effect when we move on
> > to applying and verifying the workarounds in the RCS engine's workaround
> > list (which is where most of the multicast registers actually show up).
> > 
> > However we seem run into problems during resets where RCS engine
> > workarounds are applied without being preceded by application of the GT
> > workaround list and the steering isn't in place.  Let's add the same MCR
> > steering to the beginning of the RCS engine's workaround list to ensure
> > that it's always in place and we don't get erroneous messages about RCS
> > engine workarounds failing to apply.
> > 
> 
> Did you check with the HW team about this behavior? AFAIU from reading the
> specs, the 0xfdc register should be nowhere close the render domain and
> therefore it should not be impacted by RCS reset. If it really is impacted,
> it might indicate that something funny is happening on the HW and there
> might be other register in the area that are also incorrectly losing their
> value, so IMO worth investigating.

The theory is that it might not be the RCS reset itself that causes us
to lose 0xFDC but rather something else that happened between the last
time we applied the steering (e.g., at init) and when we do the reset.

We've asked the hardware guys about this register not sticking, but
really the only thing we've heard back so far is "try checking the
steering."  Presumably steering is good at startup since the workaround
sticks at that point, but then gets changed or cleared later by the time
we do the reset.  Unfortunately none of our pre-merge CI machines or
local machines exhibit this problem, only the CI "re-run" machine, so we
don't have a good way to investigate this in a more direct manner.

Would re-applying the steering in the engine workaround list cause any
problems?  It seems like in the worst case it would do nothing at all
and the problem would persist, but at least it would protect us in case
some other unknown event causes 0xfdc to be reset, and the eventual
results we get from CI re-runs would let us know if we're on the right
track or not.


Matt

> 
> Daniele
> 
> > References: https://gitlab.freedesktop.org/drm/intel/issues/1222
> > Cc: Tvrtko Ursulin <tvrtko.ursulin@linux.intel.com>
> > Cc: chris@chris-wilson.co.uk
> > Signed-off-by: Matt Roper <matthew.d.roper@intel.com>
> > ---
> >   drivers/gpu/drm/i915/gt/intel_workarounds.c | 3 +++
> >   1 file changed, 3 insertions(+)
> > 
> > diff --git a/drivers/gpu/drm/i915/gt/intel_workarounds.c b/drivers/gpu/drm/i915/gt/intel_workarounds.c
> > index 4a255de13394..b11b83546696 100644
> > --- a/drivers/gpu/drm/i915/gt/intel_workarounds.c
> > +++ b/drivers/gpu/drm/i915/gt/intel_workarounds.c
> > @@ -1345,6 +1345,9 @@ rcs_engine_wa_init(struct intel_engine_cs *engine, struct i915_wa_list *wal)
> >   {
> >   	struct drm_i915_private *i915 = engine->i915;
> > +	if (INTEL_GEN(i915) >= 10)
> > +		wa_init_mcr(i915, wal);
> > +
> >   	if (IS_TGL_REVID(i915, TGL_REVID_A0, TGL_REVID_A0)) {
> >   		/*
> >   		 * Wa_1607138336:tgl
> > 

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
