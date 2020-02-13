Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 6D8F315BACA
	for <lists+intel-gfx@lfdr.de>; Thu, 13 Feb 2020 09:30:01 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id EC3B56F568;
	Thu, 13 Feb 2020 08:29:58 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 27FA46F568;
 Thu, 13 Feb 2020 08:29:58 +0000 (UTC)
X-Amp-Result: UNKNOWN
X-Amp-Original-Verdict: FILE UNKNOWN
X-Amp-File-Uploaded: False
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
 by orsmga102.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 13 Feb 2020 00:29:57 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.70,436,1574150400"; d="scan'208";a="347685401"
Received: from thrakatuluk.fi.intel.com (HELO thrakatuluk) ([10.237.68.154])
 by fmsmga001.fm.intel.com with ESMTP; 13 Feb 2020 00:29:55 -0800
Received: from platvala by thrakatuluk with local (Exim 4.92)
 (envelope-from <petri.latvala@intel.com>)
 id 1j29sh-0007Au-3v; Thu, 13 Feb 2020 10:29:55 +0200
Date: Thu, 13 Feb 2020 10:29:55 +0200
From: Petri Latvala <petri.latvala@intel.com>
To: Dale B Stimson <dale.b.stimson@intel.com>
Message-ID: <20200213082955.GT25209@platvala-desk.ger.corp.intel.com>
References: <20200213012840.31472-1-dale.b.stimson@intel.com>
 <20200213012840.31472-6-dale.b.stimson@intel.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200213012840.31472-6-dale.b.stimson@intel.com>
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

On Wed, Feb 12, 2020 at 05:28:40PM -0800, Dale B Stimson wrote:
> At the start of igt_main, failure of the initial tests for successful
> initialization transfer control to the end of an igt_fixture block.
> From there, execution of the main per-engine loop is attempted.
> Instead, the test should be caused to exit.
> 
> If initialization fails, exit.
> 
> Signed-off-by: Dale B Stimson <dale.b.stimson@intel.com>
> ---
>  tests/i915/gem_ctx_isolation.c | 15 +++++++++++++++
>  1 file changed, 15 insertions(+)
> 
> diff --git a/tests/i915/gem_ctx_isolation.c b/tests/i915/gem_ctx_isolation.c
> index 07ffbb84a..b11158dab 100644
> --- a/tests/i915/gem_ctx_isolation.c
> +++ b/tests/i915/gem_ctx_isolation.c
> @@ -898,10 +898,13 @@ igt_main
>  	int fd = -1;
>  	struct eng_mmio_base_table_s *mbp = NULL;
>  	uint32_t mmio_base = 0;
> +	/* igt_fixture block is skipped if --list-subtests, so start with true. */
> +	bool init_successful = true;
>  
>  	igt_fixture {
>  		int gen;
>  
> +		init_successful = false;
>  		fd = drm_open_driver(DRIVER_INTEL);
>  		igt_require_gem(fd);
>  		igt_require(gem_has_contexts(fd));
> @@ -916,8 +919,20 @@ igt_main
>  		igt_skip_on(gen > LAST_KNOWN_GEN);
>  
>  		mbp = gem_engine_mmio_base_info_get(fd);
> +		init_successful = true;
>  	}
>  
> +	if (!init_successful) {
> +		igt_exit_early();
> +	}
> +

NAK. All this dancing around the infrastructure just makes changing
the infrastructure later be awkward and produce weird errors.

If something in the fixture failed, with this code you never enter the
subtest, making the test result 'notrun' instead of the correct 'skip'
or 'fail'.

What is the problem this is trying to solve? Incorrect engine list
used? If you have a subtest per static engine, all CI does is execute
per static engine. Converting this test to use dynamic subtests for
engines is the way forward.


-- 
Petri Latvala
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
