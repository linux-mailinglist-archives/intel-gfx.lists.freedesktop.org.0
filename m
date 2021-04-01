Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id CF6F63514B0
	for <lists+intel-gfx@lfdr.de>; Thu,  1 Apr 2021 14:03:05 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id B55536EC9C;
	Thu,  1 Apr 2021 12:03:02 +0000 (UTC)
X-Original-To: Intel-gfx@lists.freedesktop.org
Delivered-To: Intel-gfx@lists.freedesktop.org
Received: from mga05.intel.com (mga05.intel.com [192.55.52.43])
 by gabe.freedesktop.org (Postfix) with ESMTPS id CC3026EC9C;
 Thu,  1 Apr 2021 12:03:01 +0000 (UTC)
IronPort-SDR: JaKwRAl5bCx2FQ0vWmD7buxR9gyJ65d8UVHyBAFH6G0rPqLGsL1g9G3sJvPss+J4urWc0reTcf
 5pUNOmji2WrQ==
X-IronPort-AV: E=McAfee;i="6000,8403,9940"; a="277416393"
X-IronPort-AV: E=Sophos;i="5.81,296,1610438400"; d="scan'208";a="277416393"
Received: from orsmga008.jf.intel.com ([10.7.209.65])
 by fmsmga105.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 01 Apr 2021 05:03:00 -0700
IronPort-SDR: egU+PWkjWjxEnzZs4cMSeNlQxVfxhbfLz41wa79hIBR3NxfFrrpHl0MMSflQndqxompGbVHghg
 52YCXlC59dyQ==
X-IronPort-AV: E=Sophos;i="5.81,296,1610438400"; d="scan'208";a="419177700"
Received: from thrakatuluk.fi.intel.com (HELO thrakatuluk) ([10.237.68.154])
 by orsmga008-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 01 Apr 2021 05:02:59 -0700
Received: from platvala by thrakatuluk with local (Exim 4.94)
 (envelope-from <petri.latvala@intel.com>)
 id 1lRw3B-00027V-IV; Thu, 01 Apr 2021 15:03:49 +0300
Date: Thu, 1 Apr 2021 15:03:49 +0300
From: Petri Latvala <petri.latvala@intel.com>
To: Tvrtko Ursulin <tvrtko.ursulin@linux.intel.com>
Message-ID: <YGW2pTimwjHEDf3M@platvala-desk.ger.corp.intel.com>
References: <20210401114316.2597715-1-tvrtko.ursulin@linux.intel.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20210401114316.2597715-1-tvrtko.ursulin@linux.intel.com>
X-Patchwork-Hint: comment
Subject: Re: [Intel-gfx] [PATCH i-g-t] gem_watchdog: Fix autotools build
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
Cc: igt-dev@lists.freedesktop.org, Intel-gfx@lists.freedesktop.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Thu, Apr 01, 2021 at 12:43:16PM +0100, Tvrtko Ursulin wrote:
> From: Tvrtko Ursulin <tvrtko.ursulin@intel.com>
> 
> Correcting a brain malfunction while typing in Makefile.sources.
> 
> Signed-off-by: Tvrtko Ursulin <tvrtko.ursulin@intel.com>

Reviewed-by: Petri Latvala <petri.latvala@intel.com>


> ---
>  tests/Makefile.sources | 2 +-
>  1 file changed, 1 insertion(+), 1 deletion(-)
> 
> diff --git a/tests/Makefile.sources b/tests/Makefile.sources
> index e992285fedc5..194df8e27dd0 100644
> --- a/tests/Makefile.sources
> +++ b/tests/Makefile.sources
> @@ -464,7 +464,7 @@ TESTS_progs += gem_wait
>  gem_wait_SOURCES = i915/gem_wait.c
>  
>  TESTS_progs += gem_watchdog
> -gem_exec_watchdog_SOURCES = i915/gem_watchdog.c
> +gem_watchdog_SOURCES = i915/gem_watchdog.c
>  
>  TESTS_progs += gem_workarounds
>  gem_workarounds_SOURCES = i915/gem_workarounds.c
> -- 
> 2.27.0
> 
> _______________________________________________
> Intel-gfx mailing list
> Intel-gfx@lists.freedesktop.org
> https://lists.freedesktop.org/mailman/listinfo/intel-gfx
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
