Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id C9351401A87
	for <lists+intel-gfx@lfdr.de>; Mon,  6 Sep 2021 13:22:42 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 70C4289911;
	Mon,  6 Sep 2021 11:22:40 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga11.intel.com (mga11.intel.com [192.55.52.93])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 913F889911
 for <intel-gfx@lists.freedesktop.org>; Mon,  6 Sep 2021 11:22:39 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6200,9189,10098"; a="216790981"
X-IronPort-AV: E=Sophos;i="5.85,272,1624345200"; d="scan'208";a="216790981"
Received: from fmsmga004.fm.intel.com ([10.253.24.48])
 by fmsmga102.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 06 Sep 2021 04:22:38 -0700
X-IronPort-AV: E=Sophos;i="5.85,272,1624345200"; d="scan'208";a="523122724"
Received: from thrakatuluk.fi.intel.com (HELO thrakatuluk) ([10.237.68.154])
 by fmsmga004-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 06 Sep 2021 04:22:37 -0700
Received: from platvala by thrakatuluk with local (Exim 4.94)
 (envelope-from <petri.latvala@intel.com>)
 id 1mNCkx-0002tZ-1O; Mon, 06 Sep 2021 14:25:43 +0300
Date: Mon, 6 Sep 2021 14:25:43 +0300
From: Petri Latvala <petri.latvala@intel.com>
To: Tvrtko Ursulin <tvrtko.ursulin@linux.intel.com>
Cc: jim.cromie@gmail.com,
 Intel Graphics Development <intel-gfx@lists.freedesktop.org>,
 Jigar Bhatt <jigar.bhatt@intel.com>,
 Anshuman Gupta <anshuman.gupta@intel.com>
Message-ID: <YTX6t3PtgFxD7Ers@platvala-desk.ger.corp.intel.com>
References: <20210831202133.2165222-1-jim.cromie@gmail.com>
 <163045309469.10657.6449873390681387525@emeril.freedesktop.org>
 <CAJfuBxyNmoFJJ5Auh4DW0cQy13o17i8c=uDYcmfJYF+jVsrhqA@mail.gmail.com>
 <1f670a6b-af77-0e07-880e-57b1e28bfc7b@linux.intel.com>
 <YTIcl3pp+ut4z6Ct@platvala-desk.ger.corp.intel.com>
 <a9388b74-ca2e-19d1-123e-f4892750529c@linux.intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=iso-8859-1
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <a9388b74-ca2e-19d1-123e-f4892750529c@linux.intel.com>
X-Patchwork-Hint: comment
Subject: Re: [Intel-gfx] 
 =?utf-8?b?4pyXIEZpLkNJLklHVDogZmFpbHVyZSBmb3IgdXNl?=
 =?utf-8?q?_DYNAMIC=5FDEBUG_to_implement_DRM=2Edebug_=28rev2=29?=
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

On Mon, Sep 06, 2021 at 11:04:13AM +0100, Tvrtko Ursulin wrote:
> 
> On 03/09/2021 14:01, Petri Latvala wrote:
> > On Fri, Sep 03, 2021 at 12:29:51PM +0100, Tvrtko Ursulin wrote:
> > > 
> > > On 03/09/2021 01:31, jim.cromie@gmail.com wrote:
> > > > 
> > > > 
> > > > On Tue, Aug 31, 2021 at 5:38 PM Patchwork
> > > > <patchwork@emeril.freedesktop.org
> > > > <mailto:patchwork@emeril.freedesktop.org>> wrote:
> > > > 
> > > >      __
> > > >      *Patch Details*
> > > >      *Series:*	use DYNAMIC_DEBUG to implement DRM.debug (rev2)
> > > >      *URL:*	https://patchwork.freedesktop.org/series/93914/
> > > >      <https://patchwork.freedesktop.org/series/93914/>
> > > >      *State:*	failure
> > > >      *Details:*
> > > >      https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20931/index.html
> > > >      <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20931/index.html>
> > > > 
> > > > 
> > > >        CI Bug Log - changes from CI_DRM_10541_full -> Patchwork_20931_full
> > > > 
> > > > 
> > > >          Summary
> > > > 
> > > >      *FAILURE*
> > > > 
> > > >      Serious unknown changes coming with Patchwork_20931_full absolutely
> > > >      need to be
> > > >      verified manually.
> > > > 
> > > >      If you think the reported changes have nothing to do with the changes
> > > >      introduced in Patchwork_20931_full, please notify your bug team to
> > > >      allow them
> > > >      to document this new failure mode, which will reduce false positives
> > > >      in CI.
> > > > 
> > > > 
> > > > hi Team !
> > > > 
> > > > I think I need a bit of orientation.
> > > > 
> > > > 
> > > >          Possible new issues
> > > > 
> > > >      Here are the unknown changes that may have been introduced in
> > > >      Patchwork_20931_full:
> > > > 
> > > > 
> > > >            IGT changes
> > > > 
> > > > 
> > > >              Possible regressions
> > > > 
> > > >        * igt@gem_exec_schedule@u-submit-golden-slice@vcs0:
> > > >            o shard-skl: NOTRUN -> INCOMPLETE
> > > >              <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20931/shard-skl10/igt@gem_exec_schedule@u-submit-golden-slice@vcs0.html>
> > > > 
> > > > 
> > > >              Warnings
> > > > 
> > > >        * igt@i915_pm_dc@dc9-dpms:
> > > >            o shard-skl: SKIP
> > > >              <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10541/shard-skl6/igt@i915_pm_dc@dc9-dpms.html>
> > > >              ([fdo#109271]) -> FAIL
> > > >              <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20931/shard-skl8/igt@i915_pm_dc@dc9-dpms.html>
> > > > 
> > > > 
> > > > 
> > > > Im assuming the FAIL is the sticking point,
> > > 
> > > Both INCOMPLETE and FAIL will cause a failure to be declared, but in this case it looks to me this series is not at fault.
> > > 
> > > 1)
> > > 
> > > The gem_exec_schedule failure looks like a test runner timeout issue (and apparently test does not handle well running the the fence timeout enabled).
> > > 
> > > @Petri - does the below look like IGT runner running our of time budget for the test run? Would it log
> > > 
> > > [1051.943629] [114/138] ( 11s left) gem_exec_schedule (u-submit-golden-slice)
> > > Starting subtest: u-submit-golden-slice
> > > Starting dynamic subtest: rcs0
> > > Dynamic subtest rcs0: SUCCESS (80.175s)
> > > Starting dynamic subtest: bcs0
> > > Dynamic subtest bcs0: SUCCESS (80.195s)
> > > Starting dynamic subtest: vcs0
> > > Dynamic subtest vcs0: SUCCESS (80.243s)
> > > Starting dynamic subtest: vecs0
> > > 
> > > Interesting part is that according to dmesg it never got to the vecs0 dynamic subtest - any idea what happened there?
> > 
> > Yep, we ran out of time. We still had 11 seconds left to execute
> > something but then that test took centuries.
> 
> Okay at least that's explained then.
> 
> Perhaps could make that act of termination logged in igt_runner log?

We do log everything we can, but unfortunately this was such an
extreme case that it hit the timeout that just cuts off AC power.

run.log has this act logged.

> 
> Also, any explanation on why dmesg and igt_runner log disagree on how far
> the test progressed (in terms of which subtest was active when things
> ended)?
>

Looks like a race condition with the above mentioned AC cutoff. The
test printed that vcs0 is finished and vecs0 starts, that info was
printed to igt_runner's stdout, but the write() to the test logs
didn't get called before cutoff.


-- 
Petri Latvala


> Regards,
> 
> Tvrtko
> 
> 
> > 
> > 
> > > 
> > > 2)
> > > 
> > > I915_pm_dc I'd say you just gotten unlucky that test went from always skipping on SKL to trying to run it and then it failed. But I don't know enough about the test to tell you why. Adding Jigar and Anshuman as test author and reviewer who might be able to shed some light here.
> > > 
> > > Regards,
> > > 
> > > Tvrtko
> > > 
> > > > I found code that seemed to be relevant
> > > > 
> > > > [jimc@frodo igt-ci-tags.git]$ git remote -v
> > > > origin https://gitlab.freedesktop.org/gfx-ci/igt-ci-tags.git
> > > > <https://gitlab.freedesktop.org/gfx-ci/igt-ci-tags.git> (fetch)
> > > > origin https://gitlab.freedesktop.org/gfx-ci/igt-ci-tags.git
> > > > <https://gitlab.freedesktop.org/gfx-ci/igt-ci-tags.git> (push)
> > > > 
> > > > I built it, got an error, threw that to google,
> > > > found a patch on i-g-t from
> > > > commit 1ff3e5ae99ceb66d2926d58635d0379ce971065a (HEAD -> master)
> > > > Author: Lyude Paul <lyude@redhat.com <mailto:lyude@redhat.com>>
> > > > Date:   Mon Apr 15 14:57:23 2019 -0400
> > > > 
> > > > and applied it
> > > > it fixed the one problem
> > > > 
> > > > then I looked at previous head
> > > > 
> > > > commit f052e49a43cc9704ea5f240df15dd9d3dfed68ab (origin/master, origin/HEAD)
> > > > Author: Simon Ser <simon.ser@intel.com <mailto:simon.ser@intel.com>>
> > > > Date:   Wed Apr 24 19:15:26 2019 +0300
> > > > 
> > > > It sure seems that tree is stale.
> > 
> > That tree's master ref does not get updated. It's only for storing tags.
> > 
> > That test result comparison was too long to fit into patchwork so the
> > build information at the bottom is missing, but the BAT results have
> > it:
> > 
> > IGT_6193: 080869f804cb86b25a38889e5ce9a870571cd8c4 @ https://gitlab.freedesktop.org/drm/igt-gpu-tools.git
> > 
> > 
> > 
