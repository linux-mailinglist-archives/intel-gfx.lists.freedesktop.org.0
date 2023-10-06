Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 40DA67BB3CC
	for <lists+intel-gfx@lfdr.de>; Fri,  6 Oct 2023 11:06:01 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 206A510E4D6;
	Fri,  6 Oct 2023 09:05:54 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [134.134.136.126])
 by gabe.freedesktop.org (Postfix) with ESMTPS id A97DF10E030;
 Fri,  6 Oct 2023 09:05:48 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1696583150; x=1728119150;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=67nAfCexjRqqhr/lRrhTCsTeNPrHupQ1haVFB6DQ378=;
 b=ijjVYTCZXkwEhStlmL/0hLR2DQNDkEjVW5eklX67X1D/FQ5BTkL9oCg9
 p5P8/fXHwpePe+EBMLalcBnWkB/ImjyFh8+FrNS0E/yROG3twtkaONwwe
 vzVxWojpQEHBDpkm45UURn/Eb8b/rFujrGxdeucR5VBLY79YvLfjprg/G
 2t20g17SNxN/cKU6xqtqG3x8n9lS0S0B7ciLfnCgJM+eDQL3jNFCdmajD
 +40/WIMoCeMCHUCBA2tVKfuR4h74YYVWXO1dlraHRACBchUAxTtCJjDWl
 ETutX294+c9V4OT6/1M7YcAqu42lnwN6U6ozl6WVm/rsyM1BNeWwZu6Nk w==;
X-IronPort-AV: E=McAfee;i="6600,9927,10854"; a="368790286"
X-IronPort-AV: E=Sophos;i="6.03,203,1694761200"; d="scan'208";a="368790286"
Received: from fmsmga008.fm.intel.com ([10.253.24.58])
 by orsmga106.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 06 Oct 2023 02:05:47 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10854"; a="817944708"
X-IronPort-AV: E=Sophos;i="6.03,203,1694761200"; d="scan'208";a="817944708"
Received: from jkrzyszt-mobl2.ger.corp.intel.com ([10.213.16.22])
 by fmsmga008-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 06 Oct 2023 02:05:45 -0700
From: Janusz Krzysztofik <janusz.krzysztofik@linux.intel.com>
To: Kamil Konieczny <kamil.konieczny@linux.intel.com>
Date: Fri, 06 Oct 2023 11:05:43 +0200
Message-ID: <2903555.e9J7NaK4W3@jkrzyszt-mobl2.ger.corp.intel.com>
Organization: Intel Technology Poland sp. z o.o. - ul. Slowackiego 173,
 80-298 Gdansk - KRS 101882 - NIP 957-07-52-316
In-Reply-To: <20231005212844.weokomm5mn4mutux@kamilkon-desk.igk.intel.com>
References: <20231003091044.407965-11-janusz.krzysztofik@linux.intel.com>
 <20231003091044.407965-19-janusz.krzysztofik@linux.intel.com>
 <20231005212844.weokomm5mn4mutux@kamilkon-desk.igk.intel.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 7Bit
Content-Type: text/plain; charset="us-ascii"
Subject: Re: [Intel-gfx] [PATCH i-g-t 8/9] lib/kunit: Fetch a list of test
 cases in advance
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
 Mauro Carvalho Chehab <mchehab@kernel.org>, intel-xe@lists.freedesktop.org
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

Hi Kamil,

Thanks for review.

On Thursday, 5 October 2023 23:28:44 CEST Kamil Konieczny wrote:
> Hi Janusz,
> 
> On 2023-10-03 at 11:10:53 +0200, Janusz Krzysztofik wrote:
> > Recent improvements to the kernel kunit framework allow us to obtain a
> > list of test cases provided by a kunit test module without actually
> > running them.  Use that feature to get a list of expected test cases
> > before we enter a loop around igt_dynamic().  Once done, enter the
> > igt_dynamic() section for each consecutive test case immediately, even
> > before first line of a related KTAP report appears, then look for a result
> > from that test case.  That should make our IGT results output still better
> > synchronized with related kernel messages.
> > 
> > The list of test cases provided by a kunit test module can be obtained by
> > loading the kunit base module with specific options, then loading the test
> > module.  For that to be possible, take care of unloading the kunit base
> > module before each kunit subtest (I was wrong when in one of my previous
> > commit messages I suggested that on final unload of a kunit test module
> > the kunit base module is unloaded automatically as its dependency,
> > however, that didn't matter before, then no separate fix was required).
> > Since that module can then be left loaded with non-default options if an
> > error occurs, unload it explicitly before returning from igt_kunit().
> > 
> > There are two possible ways of getting a list of test cases: by loading
> > the base kunit module with action=list module option, or by filtering
> > out all test cases from being executed while asking for SKIP results from
> > those filtered out.  Since the latter provides regular KTAP report that we
> > can alredy parse perfectly, use it instead of trying to identify an
> ----- ^^^^^^
> s/alredy/already/

Thanks.

> 
> > unstructured list of test cases of unknown length submitted by the former.
> > 
> > If an IGT test that calls igt_kunit() provides a subtest name then use
> > that name to filter out potential test cases that don't belong to the
> > named test suite from the list.
> > 
> > To avoid loading any modules if no subtest is going to be executed (e.g.,
> > if a nonexistent subtest has been requested), load the kunit modules in
> > list mode from inside the igt_subtest_with_dynamic() section.  In order to
> > be free to skip the whole subtest on unmet requirements that need to be
> > verified after that list has been already populated, clean it up from a
> > follow up igt_fixture section.
> > 
> > Since we start reading the list of test cases from /dev/kmsg only after
> > the kunit test module is loaded successfully in list only mode, don't
> > synchronize reads with potential modprobe breakage in that case, unlike we
> > still do later when parsing KTAP results in parallel to loading the test
> > module in normal (execute) mode.
> > 
> > Since we neither fetch KTAP results before entering igt_dynamic section
> > nor even return an error from KTAP result fetch attempts immediately on
> > modprobe error or kernel taint, break the loop of dynamic sub-subtests
> > explicitly as soon as one of those conditions is detected.
> 
> Could you split this patch into two, one with reading names and rest
> with modprobe error or kernel taint detection?

Yes, sounds like a good idea.

> 
> > Also, don't
> > force IGT SKIP result from the subtest if KTAP parsing hasn't completed.
> > That's perfectly legitimate since we no longer iterate over KTAP results,
> > only over a list of test cases obtained in advance, then we stop parsing
> > KTAP report as soon as we get a result from the last test case from the
> > list.
> > 
> > Signed-off-by: Janusz Krzysztofik <janusz.krzysztofik@linux.intel.com>
> > ---
> >  lib/igt_kmod.c | 217 +++++++++++++++++++++++++++++++++++--------------
> >  1 file changed, 157 insertions(+), 60 deletions(-)
> > 
> > diff --git a/lib/igt_kmod.c b/lib/igt_kmod.c
> > index 387efbb59f..4fba77ead4 100644
> > --- a/lib/igt_kmod.c
> > +++ b/lib/igt_kmod.c
...  
> > @@ -905,6 +905,63 @@ __igt_kunit(struct igt_ktest *tst, const char *name, const char *opts)
> >  
> >  	igt_skip_on(lseek(tst->kmsg, 0, SEEK_END) < 0);
> >  
> > +	/*
> > +	 * To get a list of test cases provided by a kunit test module, ask the
> > +	 * generic kunit module to respond with SKIP result for each test found.
> > +	 * We could also use action=list kunit parameter to get the listing,
> > +	 * however, parsing a KTAP report -- something that we alredy can do
> --------------------------------------------------------------^
> Same here.

One more thank you.
Janusz


