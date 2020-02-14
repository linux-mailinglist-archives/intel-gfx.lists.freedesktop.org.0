Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id EAF2C15D65B
	for <lists+intel-gfx@lfdr.de>; Fri, 14 Feb 2020 12:12:54 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 3739A6F8F1;
	Fri, 14 Feb 2020 11:12:53 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 7CEDB6E5A5;
 Fri, 14 Feb 2020 11:12:51 +0000 (UTC)
X-Amp-Result: UNKNOWN
X-Amp-Original-Verdict: FILE UNKNOWN
X-Amp-File-Uploaded: False
Received: from orsmga003.jf.intel.com ([10.7.209.27])
 by orsmga101.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 14 Feb 2020 03:12:50 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.70,440,1574150400"; d="scan'208";a="234428274"
Received: from thrakatuluk.fi.intel.com (HELO thrakatuluk) ([10.237.68.154])
 by orsmga003.jf.intel.com with ESMTP; 14 Feb 2020 03:12:49 -0800
Received: from platvala by thrakatuluk with local (Exim 4.92)
 (envelope-from <petri.latvala@intel.com>)
 id 1j2Yts-0007w6-On; Fri, 14 Feb 2020 13:12:48 +0200
Date: Fri, 14 Feb 2020 13:12:48 +0200
From: Petri Latvala <petri.latvala@intel.com>
To: Dale B Stimson <dale.b.stimson@intel.com>
Message-ID: <20200214111248.GV25209@platvala-desk.ger.corp.intel.com>
References: <20200213012840.31472-1-dale.b.stimson@intel.com>
 <20200213012840.31472-6-dale.b.stimson@intel.com>
 <20200213082955.GT25209@platvala-desk.ger.corp.intel.com>
 <20200213192947.GA9346@dbstims-dev.fm.intel.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200213192947.GA9346@dbstims-dev.fm.intel.com>
X-Patchwork-Hint: comment
User-Agent: Mutt/1.10.1 (2018-07-13)
Subject: Re: [Intel-gfx] [igt-dev] [PATCH i-g-t v2 5/5]
 i915/gem_ctx_isolation.c - If initialization fails, exit
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
Cc: igt-dev@lists.freedesktop.org, intel-gfx@lists.freedesktop.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Thu, Feb 13, 2020 at 11:29:48AM -0800, Dale B Stimson wrote:
> On 2020-02-13 10:29:55, Petri Latvala wrote:
> > On Wed, Feb 12, 2020 at 05:28:40PM -0800, Dale B Stimson wrote:
> > > At the start of igt_main, failure of the initial tests for successful
> > > initialization transfer control to the end of an igt_fixture block.
> > > From there, execution of the main per-engine loop is attempted.
> > > Instead, the test should be caused to exit.
> > > 
> > > If initialization fails, exit.
> > > 
> > > Signed-off-by: Dale B Stimson <dale.b.stimson@intel.com>
> > > ---
> > >  tests/i915/gem_ctx_isolation.c | 15 +++++++++++++++
> > >  1 file changed, 15 insertions(+)
> > > 
> > > diff --git a/tests/i915/gem_ctx_isolation.c b/tests/i915/gem_ctx_isolation.c
> > > index 07ffbb84a..b11158dab 100644
> > > --- a/tests/i915/gem_ctx_isolation.c
> > > +++ b/tests/i915/gem_ctx_isolation.c
> > > @@ -898,10 +898,13 @@ igt_main
> > >  	int fd = -1;
> > >  	struct eng_mmio_base_table_s *mbp = NULL;
> > >  	uint32_t mmio_base = 0;
> > > +	/* igt_fixture block is skipped if --list-subtests, so start with true. */
> > > +	bool init_successful = true;
> > >  
> > >  	igt_fixture {
> > >  		int gen;
> > >  
> > > +		init_successful = false;
> > >  		fd = drm_open_driver(DRIVER_INTEL);
> > >  		igt_require_gem(fd);
> > >  		igt_require(gem_has_contexts(fd));
> > > @@ -916,8 +919,20 @@ igt_main
> > >  		igt_skip_on(gen > LAST_KNOWN_GEN);
> > >  
> > >  		mbp = gem_engine_mmio_base_info_get(fd);
> > > +		init_successful = true;
> > >  	}
> > >  
> > > +	if (!init_successful) {
> > > +		igt_exit_early();
> > > +	}
> > > +
> > 
> > NAK. All this dancing around the infrastructure just makes changing
> > the infrastructure later be awkward and produce weird errors.
> > 
> > If something in the fixture failed, with this code you never enter the
> > subtest, making the test result 'notrun' instead of the correct 'skip'
> > or 'fail'.
> > 
> > What is the problem this is trying to solve? Incorrect engine list
> > used? If you have a subtest per static engine, all CI does is execute
> > per static engine. Converting this test to use dynamic subtests for
> > engines is the way forward.
> > 
> > 
> > -- 
> > Petri Latvala
> 
> NAK understood and accepted.
> 
> I will address this in a different way, targeting the underlying issues
> instead of the symptom.  Please see my patch (just sent to ML):
>   lib/i915/gem_engine_topology.c - intel_get_current_engine invalid result
> 
> To answer to your question about what this was trying to solve:
> 
> Briefly, and specifically addressing gem_ctx_isolation:
> 
> As-is observed behavior when open (or debugfs open) fails: per-engine loop
> executes forever:
>     Subtest vecs0-nonpriv: FAIL
>     Subtest vecs0-nonpriv-switch: FAIL
>     Subtest vecs0-clean: FAIL
>     Subtest vecs0-dirty-create: FAIL
>     Subtest vecs0-dirty-switch: FAIL
>     Subtest vecs0-none: FAIL
>     Subtest vecs0-S3: FAIL
>     Subtest vecs0-S4: FAIL
>     Subtest vecs0-reset: FAIL
>     And repeat, ad infinitum for vecs0
> 

Ah, the good old non-progressing engine loop. We already have fixes
for two of the occurrences, you have found a third one. =(


-- 
Petri Latvala
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
