Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 894431CD4EC
	for <lists+intel-gfx@lfdr.de>; Mon, 11 May 2020 11:31:55 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id DB55F892CD;
	Mon, 11 May 2020 09:31:53 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga04.intel.com (mga04.intel.com [192.55.52.120])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 0CF6C892CD;
 Mon, 11 May 2020 09:31:52 +0000 (UTC)
IronPort-SDR: AqKIehv4AEPhAaAP6brHrPwngzi0nUmZNglNrkrmcRGi3vO147LUFuE8pkShK1aOJBHCWY2ye0
 Mber0A8mvihA==
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga004.fm.intel.com ([10.253.24.48])
 by fmsmga104.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 11 May 2020 02:31:51 -0700
IronPort-SDR: PXJrKqxf2sx/F4YTB/YScPu0aCNmTREF6DttTBncBdkcro28lnmHhTmyH0NA3wMzC1DCOH7aNM
 cPh/Oif1cpvg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.73,379,1583222400"; d="scan'208";a="286213910"
Received: from thrakatuluk.fi.intel.com (HELO thrakatuluk) ([10.237.68.154])
 by fmsmga004.fm.intel.com with ESMTP; 11 May 2020 02:31:51 -0700
Received: from platvala by thrakatuluk with local (Exim 4.92)
 (envelope-from <petri.latvala@intel.com>)
 id 1jY4mr-0001Sm-JX; Mon, 11 May 2020 12:31:49 +0300
Date: Mon, 11 May 2020 12:31:49 +0300
From: Petri Latvala <petri.latvala@intel.com>
To: Chris Wilson <chris@chris-wilson.co.uk>
Message-ID: <20200511093149.GD9497@platvala-desk.ger.corp.intel.com>
References: <20200511082141.65494-1-chris@chris-wilson.co.uk>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200511082141.65494-1-chris@chris-wilson.co.uk>
X-Patchwork-Hint: comment
User-Agent: Mutt/1.10.1 (2018-07-13)
Subject: Re: [Intel-gfx] [igt-dev] [PATCH i-g-t] i915/gem_ringfill: Do a
 basic pass over all engines simultaneously
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

On Mon, May 11, 2020 at 09:21:41AM +0100, Chris Wilson wrote:
> Change the basic pre-mergetest to do a single pass over all engines
> simultaneously. This should take no longer than checking a single
> engine, while providing just the right amount of stress regardless of
> machine size.
> 
> Signed-off-by: Chris Wilson <chris@chris-wilson.co.uk>
> ---
>  tests/i915/gem_ringfill.c             | 10 ++++++++++
>  tests/intel-ci/fast-feedback.testlist |  2 +-
>  2 files changed, 11 insertions(+), 1 deletion(-)
> 
> diff --git a/tests/i915/gem_ringfill.c b/tests/i915/gem_ringfill.c
> index a2157bd6f..a90758e08 100644
> --- a/tests/i915/gem_ringfill.c
> +++ b/tests/i915/gem_ringfill.c
> @@ -292,6 +292,16 @@ igt_main
>  		}
>  	}
>  
> +	igt_subtest("basic-all") {
> +		const struct intel_execution_engine2 *e;
> +
> +		__for_each_physical_engine(fd, e)
> +			igt_fork(child, 1)
> +				run_test(fd, e->flags, 0, 1);

Will it happen simultaneously though without synchronization?

(Obvious quip about executing too fast)

run_test() calls igt_require in a few places, and skips in child
processes are problematic.


-- 
Petri Latvala


> +
> +		igt_waitchildren();
> +	}
> +
>  	igt_fixture
>  		close(fd);
>  }
> diff --git a/tests/intel-ci/fast-feedback.testlist b/tests/intel-ci/fast-feedback.testlist
> index 2ccad4386..e2ed0a1d6 100644
> --- a/tests/intel-ci/fast-feedback.testlist
> +++ b/tests/intel-ci/fast-feedback.testlist
> @@ -35,7 +35,7 @@ igt@gem_mmap@basic
>  igt@gem_mmap_gtt@basic
>  igt@gem_render_linear_blits@basic
>  igt@gem_render_tiled_blits@basic
> -igt@gem_ringfill@basic-default-forked
> +igt@gem_ringfill@basic-all
>  igt@gem_sync@basic-all
>  igt@gem_sync@basic-each
>  igt@gem_tiled_blits@basic
> -- 
> 2.26.2
> 
> _______________________________________________
> igt-dev mailing list
> igt-dev@lists.freedesktop.org
> https://lists.freedesktop.org/mailman/listinfo/igt-dev
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
