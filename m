Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 762AB79A6BA
	for <lists+intel-gfx@lfdr.de>; Mon, 11 Sep 2023 11:29:00 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id BFB4C10E1D5;
	Mon, 11 Sep 2023 09:28:58 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [134.134.136.65])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 0A1B110E1D5;
 Mon, 11 Sep 2023 09:28:55 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1694424535; x=1725960535;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=IRoPr/+h3dwaPjh4wbaOwY122ykYLw7nL1yWiUxxHr0=;
 b=dNu8MsLjWbt2T6qPci42ZuvNUa9CfvU31LVytBk7BVPGumxMBFaovjQm
 YcvUPK9dovN3DeazoFBdVuYOeECc2yk5Olyz4I4+bawDvWrNo2qOACeoJ
 YSBLEaGaZhcyOvRT+u1SlVJJ3Qm10H+IXt0CRSxgr13KMPdZj5OO+G4sX
 UkULOFiozY+D5eo12yJ6ZwWvvTTWDZ2xtXOjA9YAPdfcuqheRQclogBwJ
 CFZdqH8Miy1keFSeJSe+XXNBC+ZEcgJfaMbOMyNdXXDyd7pl9kEZdK1Fs
 4Nzt9fJ4grgaF4U5jrN7Q3thjL97LnV2UWdUUBXQQQoin8vJOyPk7WSBW Q==;
X-IronPort-AV: E=McAfee;i="6600,9927,10829"; a="381838166"
X-IronPort-AV: E=Sophos;i="6.02,243,1688454000"; d="scan'208";a="381838166"
Received: from orsmga005.jf.intel.com ([10.7.209.41])
 by orsmga103.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 11 Sep 2023 02:28:36 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10829"; a="916958727"
X-IronPort-AV: E=Sophos;i="6.02,243,1688454000"; d="scan'208";a="916958727"
Received: from jkrzyszt-mobl2.ger.corp.intel.com ([10.213.4.102])
 by orsmga005-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 11 Sep 2023 02:28:34 -0700
From: Janusz Krzysztofik <janusz.krzysztofik@linux.intel.com>
To: Mauro Carvalho Chehab <mauro.chehab@linux.intel.com>
Date: Mon, 11 Sep 2023 11:28:32 +0200
Message-ID: <2157156.irdbgypaU6@jkrzyszt-mobl2.ger.corp.intel.com>
Organization: Intel Technology Poland sp. z o.o. - ul. Slowackiego 173,
 80-298 Gdansk - KRS 101882 - NIP 957-07-52-316
In-Reply-To: <20230911105251.220d90ed@maurocar-mobl2>
References: <20230908123233.137134-19-janusz.krzysztofik@linux.intel.com>
 <20230908123233.137134-24-janusz.krzysztofik@linux.intel.com>
 <20230911105251.220d90ed@maurocar-mobl2>
MIME-Version: 1.0
Content-Transfer-Encoding: 7Bit
Content-Type: text/plain; charset="us-ascii"
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
Cc: intel-gfx@lists.freedesktop.org, Dominik Karol =?utf-8?B?UGnEhXRrb3dza2k=?=
 <dominik.karol.piatkowski@intel.com>, igt-dev@lists.freedesktop.org,
 Isabella Basso <isabbasso@riseup.net>,
 Mauro Carvalho Chehab <mchehab@kernel.org>
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

Hi Mauro,

Thanks for review.

On Monday, 11 September 2023 10:52:51 CEST Mauro Carvalho Chehab wrote:
> On Fri,  8 Sep 2023 14:32:39 +0200
> Janusz Krzysztofik <janusz.krzysztofik@linux.intel.com> wrote:
> 
> > In a body of a subtest with dynamic sub-subtests, it is illegal to call
> > igt_fail() and its variants from outside of a dynamic sub-subtest body.
> > On the other hand, it is perfectly legal to call either igt_skip() and
> > friends or __igt_abort() or its variant from there.
> > 
> > In the current implementation of igt_kunit(), there are several places
> > where igt_fail() is called despite being illegal.  Moreover, it is called
> > with IGT_EXIT_ABORT as an argument with no good reason for using such
> > aggressive method that forces CI to trigger system reboot (in most cases
> > igt_runner can decide if abort is required).
> > 
> > Follow igt_kselftests() pattern more closely, where similar setup and
> > cleanup operations are performed but their potential errors are processed
> > in a more friendly way.  Move common cleanup and their corresponding setup
> > steps out of the subtest body.  Place the latter as requirements in a
> > preceding igt_fixture section.  Replace remaining illegal igt_fail() calls
> > with more friendly skips.  Let igt_runner decide if abort is needed.
> > 
> > Signed-off-by: Janusz Krzysztofik <janusz.krzysztofik@linux.intel.com>
> > ---
> >  lib/igt_kmod.c | 75 +++++++++++++++-----------------------------------
> >  1 file changed, 22 insertions(+), 53 deletions(-)
> > 
> > diff --git a/lib/igt_kmod.c b/lib/igt_kmod.c
> > index 1d1cd51170..78b8eb8f53 100644
> > --- a/lib/igt_kmod.c
> > +++ b/lib/igt_kmod.c
...
> > @@ -825,24 +793,21 @@ static void __igt_kunit(const char *module_name, const char *opts)
> >  		}
> >  	}
> >  
> > -unload:
> > -	igt_ktest_end(&tst);
> > -
> > -	igt_ktest_fini(&tst);
> > -
> > -	igt_skip_on_f(skip, "Skipping test, as probing KUnit module failed\n");
> > -
> > -	if (fail)
> > -		igt_fail(IGT_EXIT_ABORT);
> > -
> >  	ret = ktap_parser_stop();
> >  
> > -	if (ret != 0)
> > -		igt_fail(IGT_EXIT_ABORT);
> > +	igt_skip_on_f(ret, "KTAP parser failed\n");
> >  }
> >  
> >  void igt_kunit(const char *module_name, const char *name, const char *opts)
> >  {
> > +	struct igt_ktest tst;
> > +
> > +	if (igt_ktest_init(&tst, module_name) != 0)
> > +		return;
> 
> Shouldn't it be calling igt_skip() here too?

Maybe yes.  I've chosen to follow the algorithm used in igt_kselftest.  There 
was an igt_skip() variant there initially but in 2017 that was converted to 
the current return only by Peter with IGT commit 9f92893b11e8 ("lib/igt_kmod: 
Don't call igt_assert or igt_require without a fixture").  However, 
justification for dropping igt_require() instead of calling it from an 
igt_fixture section may not apply to kunit modules:

"If kmod_module_new_from_name fails, ... return normally from igt_kselftest, 
matching behaviour when the module loading is successful but it doesn't 
contain selftests."

While i915 could be built with no selftests included, a kunit module without 
any tests doesn't make sense, then silent return may be not what we need.

Thanks,
Janusz

> 
> > +
> > +	igt_fixture
> > +		igt_require(igt_ktest_begin(&tst) == 0);
> > +
> >  	/*
> >  	 * We need to use igt_subtest here, as otherwise it may crash with:
> >  	 *  skipping is allowed only in fixtures, subtests or igt_simple_main
> > @@ -854,7 +819,11 @@ void igt_kunit(const char *module_name, const char *name, const char *opts)
> >  		name = module_name;
> >  
> >  	igt_subtest_with_dynamic(name)
> > -		__igt_kunit(module_name, opts);
> > +		__igt_kunit(&tst, opts);
> > +
> > +	igt_ktest_end(&tst);
> > +
> > +	igt_ktest_fini(&tst);
> >  }
> >  
> >  static int open_parameters(const char *module_name)
> 




