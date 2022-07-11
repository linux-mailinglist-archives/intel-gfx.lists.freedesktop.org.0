Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 7E57A56D4BF
	for <lists+intel-gfx@lfdr.de>; Mon, 11 Jul 2022 08:31:30 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 631302BB90;
	Mon, 11 Jul 2022 06:31:28 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga17.intel.com (mga17.intel.com [192.55.52.151])
 by gabe.freedesktop.org (Postfix) with ESMTPS id DBD9E2BB90
 for <intel-gfx@lists.freedesktop.org>; Mon, 11 Jul 2022 06:31:26 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1657521086; x=1689057086;
 h=date:from:to:cc:subject:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=mh9o1y0i+tVlDtorfTSdsx8wPqmueDVcDYwtw67uIJM=;
 b=fNCBnTHbPGiDMiqaGYWTJdvHiZsL2P+THJhXUPfxePeJGyW/s5KuoOt6
 RvntgFoHG6afoJ2zQZfTMT3C9GfzkmyjuO6V03aalpmHzU09lLgPm8nZF
 SGLjhOuexewAQgsfqiMbLFpB7o7V2btljpSjgavBfrJ0vtmf/pl/tMZmV
 5SnALzA0atg/jRzFLSTyjfl1cQeVm9TlFHhOzVOEgOM5eV6VF/R/bQElK
 LJCdMR5JVpAF2tfqmTKJzJZ6Tu1mlbL8CoVVtigZedjLGrVyTnF97FfEI
 HBdpMY7rB2pR8n4/Ijhxjdie4yIFOgT5AuwlOtF48ohFrmatPjS3SNyeY w==;
X-IronPort-AV: E=McAfee;i="6400,9594,10404"; a="264996822"
X-IronPort-AV: E=Sophos;i="5.92,262,1650956400"; d="scan'208";a="264996822"
Received: from fmsmga008.fm.intel.com ([10.253.24.58])
 by fmsmga107.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 10 Jul 2022 23:31:26 -0700
X-IronPort-AV: E=Sophos;i="5.92,262,1650956400"; d="scan'208";a="652330768"
Received: from danm1-mobl.ger.corp.intel.com (HELO maurocar-mobl2)
 ([10.252.36.51])
 by fmsmga008-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 10 Jul 2022 23:31:24 -0700
Date: Mon, 11 Jul 2022 08:31:22 +0200
From: Mauro Carvalho Chehab <mauro.chehab@linux.intel.com>
To: Rodrigo Vivi <rodrigo.vivi@intel.com>
Message-ID: <20220711083122.0eb3026b@maurocar-mobl2>
In-Reply-To: <Ysg/wBwE5+TdaDFc@intel.com>
References: <cover.1656921701.git.mchehab@kernel.org>
 <165726005236.4505.1074473864709326363@emeril.freedesktop.org>
 <Ysg/wBwE5+TdaDFc@intel.com>
X-Mailer: Claws Mail 4.1.0 (GTK 3.24.34; x86_64-redhat-linux-gnu)
MIME-Version: 1.0
Content-Type: text/plain; charset=US-ASCII
Content-Transfer-Encoding: 7bit
Subject: Re: [Intel-gfx] 
 =?utf-8?b?4pyXIEZpLkNJLklHVDogZmFpbHVyZSBmb3IgRml4?=
 =?utf-8?q?_TLB_invalidate_issues_with_Broadwell_=28rev4=29?=
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
Cc: intel-gfx@lists.freedesktop.org, Mauro Carvalho Chehab <mchehab@kernel.org>
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Fri, 8 Jul 2022 10:31:28 -0400
Rodrigo Vivi <rodrigo.vivi@intel.com> wrote:

> On Fri, Jul 08, 2022 at 06:00:52AM -0000, Patchwork wrote:
> >    Patch Details
> > 
> >    Series:  Fix TLB invalidate issues with Broadwell (rev4)
> >    URL:     [1]https://patchwork.freedesktop.org/series/105167/
> >    State:   failure
> >    Details:
> >    [2]https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105167v4/index.ht
> >    ml
> > 
> >      CI Bug Log - changes from CI_DRM_11857_full -> Patchwork_105167v4_full
> > 
> > Summary
> > 
> >    FAILURE
> > 
> >    Serious unknown changes coming with Patchwork_105167v4_full absolutely
> >    need to be
> >    verified manually.
> > 
> >    If you think the reported changes have nothing to do with the changes
> >    introduced in Patchwork_105167v4_full, please notify your bug team to
> >    allow them
> >    to document this new failure mode, which will reduce false positives in
> >    CI.
> > 
> > Participating hosts (13 -> 13)
> > 
> >    No changes in participating hosts
> > 
> > Possible new issues
> > 
> >    Here are the unknown changes that may have been introduced in
> >    Patchwork_105167v4_full:
> > 
> >   IGT changes
> > 
> >     Possible regressions
> > 
> >      * igt@i915_selftest@live@perf:
> >           + shard-skl: [3]PASS -> [4]INCOMPLETE  
> 
> probably yet another false positive failure, but since the authorship-vs-sign-off
> needs to be fixed and resent we will end up testing it again.
> Sorry for not noticing yesterday before I had triggered the retest.
	
Yeah, that sounds to be a false-positive:

	Starting dynamic subtest: perf
	Starting dynamic subtest: perf
	Dmesg	
	<6> [1163.312914] [IGT] i915_selftest: starting dynamic subtest perf
	<5> [1164.217938] Setting dangerous option enable_psr - tainting kernel
	<5> [1164.217989] Setting dangerous option live_selftests - tainting kernel

Which didn't occur on the first run of the bot:

	Date: Thu, 07 Jul 2022 15:06:47 -0000
	From: Patchwork <patchwork@emeril.freedesktop.org>
	To: "Mauro Carvalho Chehab" <mchehab@kernel.org>
	Cc: intel-gfx@lists.freedesktop.org
	Subject: [Intel-gfx] ? Fi.CI.BAT: success for Fix TLB invalidate
		issues with Broadwell (rev4)

I'll re-send the series with the SOB/Author fix, collecting the A-B
and R-B received during review of rev4.

Thanks!
Mauro
