Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id A338F7113AB
	for <lists+intel-gfx@lfdr.de>; Thu, 25 May 2023 20:28:33 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 6532310E735;
	Thu, 25 May 2023 18:28:30 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
 by gabe.freedesktop.org (Postfix) with ESMTPS id D5B4B10E08A;
 Thu, 25 May 2023 18:28:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1685039308; x=1716575308;
 h=date:from:to:cc:subject:message-id:references:
 mime-version:in-reply-to;
 bh=b4J2S5yLlmUyT6EAhrJldf8uHGbQneG/i+Ewd+dc7gY=;
 b=iiGHk/Gir5nHKx6TOoiFNBlLGhWm+3qbOMvpO5Yi2GipuSHtD2IMqCbu
 1+TkPu/b9RLXzz9bHVjLAeeQBk09BfM0WiOucsdo4Am2KC7vu3jMvbQxB
 hK2FKta9D7/JYc7wLYSlGypHe1y/PpjiGRIh4U4+QGxMvDO5zNgBtEoL9
 sxeFOqa5jLn5yRs6VFuI1wqJi8+RomwlZ1uMelv7rGiFG8SUujhnNuQHB
 UQtji7LPh8Myh4dK027dUPXDIRSw7ZYOI0q7PTCrFUwE6C/vrp+JlNSQW
 XayfSQpU02KrQrr8MOBKWh6z/ayaXIh09SJFaIa4wzMA6+N79j+k24eGa A==;
X-IronPort-AV: E=McAfee;i="6600,9927,10721"; a="343477519"
X-IronPort-AV: E=Sophos;i="6.00,191,1681196400"; d="scan'208";a="343477519"
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
 by orsmga101.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 25 May 2023 11:25:24 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10721"; a="817204769"
X-IronPort-AV: E=Sophos;i="6.00,191,1681196400"; d="scan'208";a="817204769"
Received: from nbaca1-mobl.ger.corp.intel.com (HELO localhost)
 ([10.213.17.116])
 by fmsmga002-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 25 May 2023 11:25:23 -0700
Date: Thu, 25 May 2023 20:25:21 +0200
From: Kamil Konieczny <kamil.konieczny@linux.intel.com>
To: igt-dev@lists.freedesktop.org
Message-ID: <20230525182521.pxep2ekegnp54x77@kamilkon-desk1>
Mail-Followup-To: Kamil Konieczny <kamil.konieczny@linux.intel.com>,
 igt-dev@lists.freedesktop.org,
 Vinay Belgaumkar <vinay.belgaumkar@intel.com>,
 intel-gfx@lists.freedesktop.org
References: <20230524191906.2160802-1-vinay.belgaumkar@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
In-Reply-To: <20230524191906.2160802-1-vinay.belgaumkar@intel.com>
Subject: Re: [Intel-gfx] [PATCH i-g-t] tests/i915/gem_ctx_persistence: Skip
 some subtests
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
Cc: intel-gfx@lists.freedesktop.org
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

Hi Vinay,

On 2023-05-24 at 12:19:06 -0700, Vinay Belgaumkar wrote:
> Hang and heartbeat subtests are not supported with GuC submission
> enabled.
> 
> Signed-off-by: Vinay Belgaumkar <vinay.belgaumkar@intel.com>
> ---
>  tests/i915/gem_ctx_persistence.c | 32 +++++++++++++++++++-------------
>  1 file changed, 19 insertions(+), 13 deletions(-)
> 
> diff --git a/tests/i915/gem_ctx_persistence.c b/tests/i915/gem_ctx_persistence.c
> index 42cf96329..1e122535e 100644
> --- a/tests/i915/gem_ctx_persistence.c
> +++ b/tests/i915/gem_ctx_persistence.c
> @@ -1366,19 +1366,25 @@ igt_main
>  
>  	igt_subtest("hostile")
>  		test_nohangcheck_hostile(i915, &empty_cfg);
> -	igt_subtest("hang")
> -		test_nohangcheck_hang(i915, &empty_cfg);
> -
> -	igt_subtest("heartbeat-stop")
> -		test_noheartbeat_many(i915, 1, 0);
> -	igt_subtest("heartbeat-hang")
> -		test_noheartbeat_many(i915, 1, IGT_SPIN_NO_PREEMPTION);
> -	igt_subtest("heartbeat-many")
> -		test_noheartbeat_many(i915, 16, 0);
> -	igt_subtest("heartbeat-close")
> -		test_noheartbeat_close(i915, 0);
> -	igt_subtest("heartbeat-hostile")
> -		test_noheartbeat_close(i915, IGT_SPIN_NO_PREEMPTION);
> +
> +	igt_subtest_group {
> +		igt_fixture
> +			igt_skip_on(gem_using_guc_submission(i915));
----------------------- ^^^^^^^^^^^
You cannot put this in fixture as there is no test defined in it.
Place skips at begin of test functions that need it.

Regards,
Kamil

> +
> +		igt_subtest("hang")
> +			test_nohangcheck_hang(i915, &empty_cfg);
> +
> +		igt_subtest("heartbeat-stop")
> +			test_noheartbeat_many(i915, 1, 0);
> +		igt_subtest("heartbeat-hang")
> +			test_noheartbeat_many(i915, 1, IGT_SPIN_NO_PREEMPTION);
> +		igt_subtest("heartbeat-many")
> +			test_noheartbeat_many(i915, 16, 0);
> +		igt_subtest("heartbeat-close")
> +			test_noheartbeat_close(i915, 0);
> +		igt_subtest("heartbeat-hostile")
> +			test_noheartbeat_close(i915, IGT_SPIN_NO_PREEMPTION);
> +	}
>  
>  	igt_subtest_group {
>  		igt_fixture
> -- 
> 2.38.1
> 
