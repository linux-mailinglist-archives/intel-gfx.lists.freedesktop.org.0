Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 13897683463
	for <lists+intel-gfx@lfdr.de>; Tue, 31 Jan 2023 18:56:50 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id DB22B10E2CC;
	Tue, 31 Jan 2023 17:56:46 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga18.intel.com (mga18.intel.com [134.134.136.126])
 by gabe.freedesktop.org (Postfix) with ESMTPS id C920810E071;
 Tue, 31 Jan 2023 17:56:43 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1675187803; x=1706723803;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=YDvbjVtdJtH9T8RdPxGdErHEnV8bMHW8mupgQm14368=;
 b=gtRLCAbBaVotAoibjpPSYsMTuBiXXJfEJsYLMX8aiNkmR3VYOL7Lwbru
 ymTbOHE2/uvOUtkl/fojtBJCEtLyyG70FwEsBOfTPzcg/K4tglbBlCDe5
 HegUfaskVONh8g4kOUcTh3yVCeuqsPIaojdQQFySb/Ue4j7a95r7BTbsg
 0lErW3uv4ulwuwt7UQoCrehDY//h5ZCfyyK+S+3fLorCe/MPXkZefuurm
 JbWv9PUjuPtnG9jJUwkS9qjBqjDEydlFXtCt2+Nots9z13UOVqj5EdrtY
 ddvY4e7ad+wITBw49RWzdCyLV0ZyZtkj5Cf+bHZPhQeeQHYYLnuU42BfS g==;
X-IronPort-AV: E=McAfee;i="6500,9779,10607"; a="311529272"
X-IronPort-AV: E=Sophos;i="5.97,261,1669104000"; d="scan'208";a="311529272"
Received: from orsmga005.jf.intel.com ([10.7.209.41])
 by orsmga106.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 31 Jan 2023 09:56:41 -0800
X-IronPort-AV: E=McAfee;i="6500,9779,10607"; a="838462428"
X-IronPort-AV: E=Sophos;i="5.97,261,1669104000"; d="scan'208";a="838462428"
Received: from jkrzyszt-mobl1.ger.corp.intel.com ([10.213.18.238])
 by orsmga005-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 31 Jan 2023 09:56:37 -0800
From: Janusz Krzysztofik <janusz.krzysztofik@linux.intel.com>
To: "Dixit, Ashutosh" <ashutosh.dixit@intel.com>
Date: Tue, 31 Jan 2023 18:56:34 +0100
Message-ID: <45287761.fMDQidcC6G@jkrzyszt-mobl1.ger.corp.intel.com>
Organization: Intel Technology Poland sp. z o.o. - ul. Slowackiego 173,
 80-298 Gdansk - KRS 101882 - NIP 957-07-52-316
In-Reply-To: <87a61y1w4l.wl-ashutosh.dixit@intel.com>
References: <20230131091731.5892-1-janusz.krzysztofik@linux.intel.com>
 <87a61yvfq3.wl-ashutosh.dixit@intel.com>
 <87a61y1w4l.wl-ashutosh.dixit@intel.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 7Bit
Content-Type: text/plain; charset="us-ascii"
Subject: Re: [Intel-gfx] [igt-dev] [PATCH i-g-t 0/2] tests/i915/perf: Add
 stress / race exercises
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
Cc: igt-dev@lists.freedesktop.org, Arkadiusz Hiler <arek@hiler.eu>,
 intel-gfx@lists.freedesktop.org, Petri Latvala <adrinael@adrinael.net>,
 Chris Wilson <chris.p.wilson@linux.intel.com>
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Tuesday, 31 January 2023 17:55:54 CET Dixit, Ashutosh wrote:
> On Tue, 31 Jan 2023 08:19:48 -0800, Dixit, Ashutosh wrote:
> >
> > On Tue, 31 Jan 2023 01:17:29 -0800, Janusz Krzysztofik wrote:
> > >
> >
> > Hi Janusz,
> >
> > > Users reported oopses on list corruptions when using i915 perf with a
> > > number of concurrently running graphics applications.  That indicates we
> > > are currently missing some important tests for such scenarios.  Cover
> > > that gap.
> >
> > Do these oops etc. have anything to do with perf itself or rather with
> > persistence or non-persistence not properly supported with GuC? We should
> > have seen such failures with persistence tests (with GuC) itself so I am
> > wondering if there's any point of dragging perf into these already muddy
> > waters? Such failures should be isolated first with other tests without
> > mixing perf into this IMO.
> 
> Basically failures in these tests indicate defects in which subsystem? If
> the failures do not indicate defects in perf then these tests should not be
> added as perf tests. E.g. if failures indicate defects in GuC subsystem
> then they should be added as GuC tests.

But how can a tests know in advance what bugs, in which particular subsystems, 
it is ever going to hit?  If it could, we wouldn't need any root cause 
analysis, only tests telling us which bug from a predicted set was hit.
For me your vision seems to assume an environment without cross-subsystem 
dependencies, where a test is only capable of triggering bugs in a particular 
subsystem and never in others.  That's not possible in reality, I believe, we 
need root cause analysis to tell.

> 
> Otherwise it gets hard to dispostion bugs which are filed due to these
> failures. The bugs come to the wrong team and then have to be sent to the
> correct team etc.

In my opinion, all parties, whether validation, or bug filling, or 
development, must do their job with care.  Assigning bugs to teams by test 
name, not by a signature of the issue found in test output or system logs, 
doesn't seem to be the best practice to me.

Thanks,
Janusz

> 
> Thanks.
> --
> Ashutosh
> 




