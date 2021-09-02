Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 9F2943FF0BB
	for <lists+intel-gfx@lfdr.de>; Thu,  2 Sep 2021 18:07:34 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id EA3B66E5C5;
	Thu,  2 Sep 2021 16:07:32 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga05.intel.com (mga05.intel.com [192.55.52.43])
 by gabe.freedesktop.org (Postfix) with ESMTPS id BF0106E5C5
 for <intel-gfx@lists.freedesktop.org>; Thu,  2 Sep 2021 16:07:30 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6200,9189,10095"; a="304732581"
X-IronPort-AV: E=Sophos;i="5.85,262,1624345200"; d="scan'208";a="304732581"
Received: from fmsmga006.fm.intel.com ([10.253.24.20])
 by fmsmga105.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 02 Sep 2021 09:06:03 -0700
X-IronPort-AV: E=Sophos;i="5.85,262,1624345200"; d="scan'208";a="689186288"
Received: from mdroper-desk1.fm.intel.com (HELO
 mdroper-desk1.amr.corp.intel.com) ([10.1.27.134])
 by fmsmga006-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 02 Sep 2021 09:06:02 -0700
Date: Thu, 2 Sep 2021 09:06:01 -0700
From: Matt Roper <matthew.d.roper@intel.com>
To: "Siddiqui, Ayaz A" <ayaz.siddiqui@intel.com>
Cc: "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>,
 "S, Srinivasan" <srinivasan.s@intel.com>,
 "Wilson, Chris P" <chris.p.wilson@intel.com>
Message-ID: <20210902160601.GJ461228@mdroper-desk1.amr.corp.intel.com>
References: <20210830162240.3891502-1-ayaz.siddiqui@intel.com>
 <20210830162240.3891502-3-ayaz.siddiqui@intel.com>
 <20210901212432.GC461228@mdroper-desk1.amr.corp.intel.com>
 <BL3PR11MB5746236A4243D4B2CD2C9958FCCE9@BL3PR11MB5746.namprd11.prod.outlook.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <BL3PR11MB5746236A4243D4B2CD2C9958FCCE9@BL3PR11MB5746.namprd11.prod.outlook.com>
Subject: Re: [Intel-gfx] [PATCH V3 2/8] drm/i915/gt: Add support of mocs
 auxiliary registers programming
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
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Thu, Sep 02, 2021 at 04:56:18AM -0700, Siddiqui, Ayaz A wrote:
...
> > > +static int check_aux_regs(struct intel_engine_cs *engine,
> > > +                     const struct drm_i915_aux_table *r,
> > > +                     u32 **vaddr)
> >
> > One other concern (which is part of why I didn't really want to see this
> > framework handled separately from workarounds) is that the aux table
> > might tell us to program a register with a specific value, but we may also have
> > a hardware workaround for a platform/stepping that overrides that with an
> > alternate value.  Our workaround framework is smart enough to combine
> > multiple entries for the same register into a single operation (if the set of bits
> > being updated are different), or will warn if there's two conflicting sets of
> > programming requested for certain bits. Right now it's not clear who wins if
> > the aux table wants to program a register to value 'X' but the workaround
> > lists want to program the same register to value 'Y.'  In theory the
> > workaround should overrule the regular programming, but at the moment
> > these selftests aren't checking to see if that's the case.  We may not have any
> > such conflicts today (especially since we have so few registers that are going
> > to be on the aux table initially), but it may come up eventually.
> Yes its valid point, I did not thought about it. Do you think that moving to
> workaround will be better option here?

I think there's a short-term and a long-term aspect here.  My opinion is
that in the immediate short term we should add these two MOCS-related
registers (one of which is a context register, one of which is an engine
register) as additional fake workarounds.  Despite calling them
"workarounds" that part of the code is already more of a generic "GT
register override" framework, and we already have a number of things
programmed there that aren't actually workarounds.  Trying to spin up a
completely new framework ("aux table") for GT register overrides is
going to take a bit more time to get right, and I'm not sure we want to
hold up the proper MOCS programming while that happens (especially since
ADL is about to leave "force probe required" state and we really don't
want to miss the boat on getting MOCS programmed correctly before that
happens).

Longer term I do think we want to rework how we handle both formal
workarounds and non-workaround register overrides in the driver.  That's
been something I've been meaning to work on for quite a while now, but
it just keeps getting preempted by higher priority tasks that show up;
hopefully I can get back to it soon.  But such rework is going to take a
bit of time, both to get widespread agreement on the redesign, and to do
some extensive testing to make sure we don't mishandle any corner cases
around reset handling, execlist vs GuC, etc.  It will also probably
happen in multiple steps rather than jumping from our current design
straight to the final form; I don't think it makes sense to make the
MOCS programming dependent on completion of that long, multi-step
process.

I think one of Chris' concerns about re-using the workaround framework
for setting these two MOCS-related registers is that the programming
would wind up getting verified by the workarounds selftest rather than
the mocs selftest (and thus failures on these specific registers may not
get the attention they need).  That's true, but if the concern is great
enough, I think we could make the gt_mocs selftest:
 - scan the workaround lists and ensure that the two MOCS-related
   registers truly are present on the appropriate list (if not, error)
 - check that the register programming still matches the value defined
   in the workaround (if not, error); this would duplicate the check
   also done in the workaround selftest, but that's probably fine to
   have both tests fail if there's a programming problem
 - lookup the programmed MOCS values in the platform's MOCS table and
   make sure that they really have the expected characteristics (L3 on
   platforms going forward, UC on the older platforms that we can't
   change now for abi compat reasons)


Matt


> 
> -Ayaz
> 

-- 
Matt Roper
Graphics Software Engineer
VTT-OSGC Platform Enablement
Intel Corporation
(916) 356-2795
