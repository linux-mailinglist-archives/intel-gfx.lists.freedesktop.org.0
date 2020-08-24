Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id E02D824F89E
	for <lists+intel-gfx@lfdr.de>; Mon, 24 Aug 2020 11:35:42 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 0DD856E1C0;
	Mon, 24 Aug 2020 09:35:40 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga17.intel.com (mga17.intel.com [192.55.52.151])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 050A16E171;
 Mon, 24 Aug 2020 09:35:37 +0000 (UTC)
IronPort-SDR: Wa80u1+uxVDmhKBJ+GiPH0sI/N8qYJ2mEFy22XlmT+k6dUbQLafPPJsi+V6au9aCQjtT/yR+xx
 U4YFfARIsrfQ==
X-IronPort-AV: E=McAfee;i="6000,8403,9722"; a="135933116"
X-IronPort-AV: E=Sophos;i="5.76,348,1592895600"; d="scan'208";a="135933116"
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga008.jf.intel.com ([10.7.209.65])
 by fmsmga107.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 24 Aug 2020 02:35:37 -0700
IronPort-SDR: 7Q79Nd5jIpZUbgUjLLRDU/mFppuS7QERsQb5hTlxd+BQJo6bduIA1lwF0F3lGnzjltL1XMs1ps
 IcNwFgVFHppg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.76,348,1592895600"; d="scan'208";a="328429796"
Received: from thrakatuluk.fi.intel.com (HELO thrakatuluk) ([10.237.68.154])
 by orsmga008.jf.intel.com with ESMTP; 24 Aug 2020 02:35:35 -0700
Received: from platvala by thrakatuluk with local (Exim 4.92)
 (envelope-from <petri.latvala@intel.com>)
 id 1kA8kc-00075n-NE; Mon, 24 Aug 2020 12:26:50 +0300
Date: Mon, 24 Aug 2020 12:26:50 +0300
From: Petri Latvala <petri.latvala@intel.com>
To: Janusz Krzysztofik <janusz.krzysztofik@linux.intel.com>
Message-ID: <20200824092650.GG7444@platvala-desk.ger.corp.intel.com>
References: <20200821153807.18613-1-janusz.krzysztofik@linux.intel.com>
 <159803163552.16198.17489156056346233245@emeril.freedesktop.org>
 <3a286dc2f27ed0961b0e0246f8102f21a93b42c6.camel@linux.intel.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <3a286dc2f27ed0961b0e0246f8102f21a93b42c6.camel@linux.intel.com>
X-Patchwork-Hint: comment
User-Agent: Mutt/1.10.1 (2018-07-13)
Subject: Re: [Intel-gfx] 
 =?utf-8?b?4pyXIEZpLkNJLklHVDogZmFpbHVyZSBmb3IgdGVz?=
 =?utf-8?q?ts/core=5Fhotunplug=3A_Fixes_and_enhancements_=28rev4=29?=
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
Cc: igt-dev@lists.freedesktop.org, intel-gfx@lists.freedesktop.org,
 =?utf-8?Q?Micha=C5=82?= Winiarski <michal.winiarski@intel.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Mon, Aug 24, 2020 at 10:42:10AM +0200, Janusz Krzysztofik wrote:
> On Fri, 2020-08-21 at 17:40 +0000, Patchwork wrote:
> > Patch Details
> > Series:	tests/core_hotunplug: Fixes and enhancements (rev4)
> > URL:	https://patchwork.freedesktop.org/series/79671/
> > State:	failure
> > Details:	https://intel-gfx-ci.01.org/tree/drm-tip/IGTPW_4901/index.html
> > CI Bug Log - changes from CI_DRM_8913_full -> IGTPW_4901_full
> > Summary
> > FAILURE
> > 
> > Serious unknown changes coming with IGTPW_4901_full absolutely need to be
> > verified manually.
> > 
> > If you think the reported changes have nothing to do with the changes
> > introduced in IGTPW_4901_full, please notify your bug team to allow them
> > to document this new failure mode, which will reduce false positives in CI.
> > 
> > External URL: https://intel-gfx-ci.01.org/tree/drm-tip/IGTPW_4901/index.html
> > 
> > Possible new issues
> > Here are the unknown changes that may have been introduced in IGTPW_4901_full:
> > 
> > IGT changes
> > Possible regressions
> > {igt@core_hotunplug@hotrebind-lateclose} (NEW):
> > 
> > shard-snb: NOTRUN -> FAIL
> > 
> > shard-glk: NOTRUN -> FAIL
> > 
> > shard-kbl: NOTRUN -> FAIL
> 
> This is an existing but formerly not reported GPU hang driver issue
> exhibited by the test, not a regression.  The issue needs to be fixed
> in the driver for the test to succeed.  As one can see from CI reports,
> the test succesfuly recovers from that condition and subsequent tests
> are not affected.
>   
> > 
> > {igt@core_hotunplug@hotunbind-lateclose} (NEW):
> > 
> > shard-hsw: NOTRUN -> INCOMPLETE +3 similar issues
> 
> This is a known driver issue, already reported by igt@device
> _reset@unbind-reset-rebind.  This test shows clearly that the issue has
> nothing to do with device reset, only with driver unbind-rebind cycle. 
> The driver needs to be fixed for the kernel warning not be triggered
> and the tests succeed.

Is there an ETA for the driver fix?

> 
> I think the *bind* subtests in their current shape are perfectly ready
> for inclusion in CI runs.

Agreed otherwise, except for the known incomplete. Introducing new
incompletes without a fix in sight is real bad.


-- 
Petri Latvala
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
