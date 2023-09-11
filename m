Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 723C679A7BB
	for <lists+intel-gfx@lfdr.de>; Mon, 11 Sep 2023 13:58:15 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 4654210E135;
	Mon, 11 Sep 2023 11:58:13 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.55.52.43])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 99AB810E135;
 Mon, 11 Sep 2023 11:58:10 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1694433490; x=1725969490;
 h=date:from:to:cc:subject:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=y1eenHJPMMjkZBCCRJKGFQkqzPbiTgak2E9HolAUCmE=;
 b=NcwPvLSa9CruYT92lmKL0vG7nylgoodzk+Xff3PVmcoEqpu47xbDYrRO
 snnQdkdF8x7Ub3BVb5ga1ZoCN7czLHJBxqGiBpDSTt3MRxFG+dohtHcR9
 PAahriBhZLLHm5tH01jYK5Xi43g3IjaGMxDq1wws2kzeLC8r2zhIU35J3
 KWw5sLz8+uhKmlgsdVbi6RT8UwsKiOS0tMtiONmjJD6qFod6NM5eXuaa3
 FytPDuyg5/umR3xhB2Uar7FFFGWs4qY+B4s/lDHEdRHRcG2M0rU048bJ8
 hEp/Shx+vARm1Y/NwlOC8Ogae9NQEwOyVAExdN3d6rKJydONxRJA1h1nK g==;
X-IronPort-AV: E=McAfee;i="6600,9927,10829"; a="464435133"
X-IronPort-AV: E=Sophos;i="6.02,244,1688454000"; d="scan'208";a="464435133"
Received: from orsmga001.jf.intel.com ([10.7.209.18])
 by fmsmga105.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 11 Sep 2023 04:57:47 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10830"; a="778367123"
X-IronPort-AV: E=Sophos;i="6.02,244,1688454000"; d="scan'208";a="778367123"
Received: from linux.intel.com ([10.54.29.200])
 by orsmga001.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 11 Sep 2023 04:57:33 -0700
Received: from maurocar-mobl2 (maurocar-mobl2.ger.corp.intel.com
 [10.252.24.18])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by linux.intel.com (Postfix) with ESMTPS id A11E0580960;
 Mon, 11 Sep 2023 04:57:31 -0700 (PDT)
Date: Mon, 11 Sep 2023 13:57:29 +0200
From: Mauro Carvalho Chehab <mauro.chehab@linux.intel.com>
To: Janusz Krzysztofik <janusz.krzysztofik@linux.intel.com>
Message-ID: <20230911135729.24056014@maurocar-mobl2>
In-Reply-To: <2157156.irdbgypaU6@jkrzyszt-mobl2.ger.corp.intel.com>
References: <20230908123233.137134-19-janusz.krzysztofik@linux.intel.com>
 <20230908123233.137134-24-janusz.krzysztofik@linux.intel.com>
 <20230911105251.220d90ed@maurocar-mobl2>
 <2157156.irdbgypaU6@jkrzyszt-mobl2.ger.corp.intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=US-ASCII
Content-Transfer-Encoding: 7bit
Subject: Re: [Intel-gfx] [PATCH i-g-t v2 05/17] lib/kunit: Fix illegal
 igt_fail() calls inside subtest body
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
 Mauro Carvalho Chehab <mchehab@kernel.org>,
 Isabella Basso <isabbasso@riseup.net>,
 Dominik Karol =?UTF-8?B?UGnEhXRrb3dza2k=?=
 <dominik.karol.piatkowski@intel.com>
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Mon, 11 Sep 2023 11:28:32 +0200
Janusz Krzysztofik <janusz.krzysztofik@linux.intel.com> wrote:

> Hi Mauro,
> 
> Thanks for review.
> 
> On Monday, 11 September 2023 10:52:51 CEST Mauro Carvalho Chehab wrote:
> > On Fri,  8 Sep 2023 14:32:39 +0200
> > Janusz Krzysztofik <janusz.krzysztofik@linux.intel.com> wrote:
> >   
> > > In a body of a subtest with dynamic sub-subtests, it is illegal to call
> > > igt_fail() and its variants from outside of a dynamic sub-subtest body.
> > > On the other hand, it is perfectly legal to call either igt_skip() and
> > > friends or __igt_abort() or its variant from there.
> > > 
> > > In the current implementation of igt_kunit(), there are several places
> > > where igt_fail() is called despite being illegal.  Moreover, it is called
> > > with IGT_EXIT_ABORT as an argument with no good reason for using such
> > > aggressive method that forces CI to trigger system reboot (in most cases
> > > igt_runner can decide if abort is required).
> > > 
> > > Follow igt_kselftests() pattern more closely, where similar setup and
> > > cleanup operations are performed but their potential errors are processed
> > > in a more friendly way.  Move common cleanup and their corresponding setup
> > > steps out of the subtest body.  Place the latter as requirements in a
> > > preceding igt_fixture section.  Replace remaining illegal igt_fail() calls
> > > with more friendly skips.  Let igt_runner decide if abort is needed.
> > > 
> > > Signed-off-by: Janusz Krzysztofik <janusz.krzysztofik@linux.intel.com>
> > > ---
> > >  lib/igt_kmod.c | 75 +++++++++++++++-----------------------------------
> > >  1 file changed, 22 insertions(+), 53 deletions(-)
> > > 
> > > diff --git a/lib/igt_kmod.c b/lib/igt_kmod.c
> > > index 1d1cd51170..78b8eb8f53 100644
> > > --- a/lib/igt_kmod.c
> > > +++ b/lib/igt_kmod.c  
> ...
> > > @@ -825,24 +793,21 @@ static void __igt_kunit(const char *module_name, const char *opts)
> > >  		}
> > >  	}
> > >  
> > > -unload:
> > > -	igt_ktest_end(&tst);
> > > -
> > > -	igt_ktest_fini(&tst);
> > > -
> > > -	igt_skip_on_f(skip, "Skipping test, as probing KUnit module failed\n");
> > > -
> > > -	if (fail)
> > > -		igt_fail(IGT_EXIT_ABORT);
> > > -
> > >  	ret = ktap_parser_stop();
> > >  
> > > -	if (ret != 0)
> > > -		igt_fail(IGT_EXIT_ABORT);
> > > +	igt_skip_on_f(ret, "KTAP parser failed\n");
> > >  }
> > >  
> > >  void igt_kunit(const char *module_name, const char *name, const char *opts)
> > >  {
> > > +	struct igt_ktest tst;
> > > +
> > > +	if (igt_ktest_init(&tst, module_name) != 0)
> > > +		return;  
> > 
> > Shouldn't it be calling igt_skip() here too?  
> 
> Maybe yes.  I've chosen to follow the algorithm used in igt_kselftest.  There 
> was an igt_skip() variant there initially but in 2017 that was converted to 
> the current return only by Peter with IGT commit 9f92893b11e8 ("lib/igt_kmod: 
> Don't call igt_assert or igt_require without a fixture").  However, 
> justification for dropping igt_require() instead of calling it from an 
> igt_fixture section may not apply to kunit modules:
> 
> "If kmod_module_new_from_name fails, ... return normally from igt_kselftest, 
> matching behaviour when the module loading is successful but it doesn't 
> contain selftests."
> 
> While i915 could be built with no selftests included, a kunit module without 
> any tests doesn't make sense, then silent return may be not what we need.

Yeah, selftests are handled on a different way with regards to module
probe, so I guess we need the igt_skip there if modprobe fails.

Well, you can probably simulate it by renaming a Kunit module
and see how IGT will handle that with the current code and with
igt_skip().

(Btw, I intend to review the other patches on this series, but need
some time to do tests, as some changes here are not trivial)

Regards,
Mauro
