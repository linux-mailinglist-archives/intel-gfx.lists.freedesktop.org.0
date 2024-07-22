Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 068C4938B76
	for <lists+intel-gfx@lfdr.de>; Mon, 22 Jul 2024 10:44:47 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 9E36810E44D;
	Mon, 22 Jul 2024 08:44:45 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="GRwu80Fi";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.12])
 by gabe.freedesktop.org (Postfix) with ESMTPS id C1CBE10E448;
 Mon, 22 Jul 2024 08:44:41 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1721637882; x=1753173882;
 h=date:from:to:cc:subject:message-id:references:
 mime-version:content-transfer-encoding:in-reply-to;
 bh=VNQzkTpINT52FikMT/5ITCnYWcVcNbXqiYJe1zxTMwg=;
 b=GRwu80FiahPxlKa4tAKAWHirtMm+m1llUp7kLd1UikhgUIAqhEXAWFuh
 BwUtwDr0jRceVdKEVUCYrDMki1W9sTUNaDdWoM+dIKft2YqIEfv8vfu+G
 hptjZWO6MCMbqUEn+TJJSgpZw63z2cMvb6XZIMDI3s6uULFjS8JW2TDUT
 gj4nsbhh95RCJHJXuBbbxjtsV19jywOdK4IceaHDCXmLUQBJlikAv6n82
 oZRE5niA8NIqafWkQ1LUfuw3Z/mADoAFndwlg0pH/YplFCeexR1cqPBrf
 RvZ5HiD7G05BlmpiKRWZ4cJF6WPae2j7mh0sPkmvJ4hI2F6bHTofRt4vn g==;
X-CSE-ConnectionGUID: QVThrW2oTVWfE16R8VIopg==
X-CSE-MsgGUID: bTsFIFNzS1SkDT+LMnxaQg==
X-IronPort-AV: E=McAfee;i="6700,10204,11140"; a="23057401"
X-IronPort-AV: E=Sophos;i="6.09,227,1716274800"; d="scan'208";a="23057401"
Received: from orviesa010.jf.intel.com ([10.64.159.150])
 by fmvoesa106.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 22 Jul 2024 01:44:41 -0700
X-CSE-ConnectionGUID: ywzsG4VOTR+Eo7aodb8C/A==
X-CSE-MsgGUID: WZBRL4J+T/Wbu3/NB+JFTA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.09,227,1716274800"; d="scan'208";a="51703296"
Received: from cpetruta-mobl1.ger.corp.intel.com (HELO localhost)
 ([10.245.246.211])
 by orviesa010-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 22 Jul 2024 01:44:40 -0700
Date: Mon, 22 Jul 2024 10:44:36 +0200
From: Zbigniew =?utf-8?Q?Kempczy=C5=84ski?= <zbigniew.kempczynski@intel.com>
To: Janusz Krzysztofik <janusz.krzysztofik@linux.intel.com>
Cc: igt-dev@lists.freedesktop.org, intel-gfx@lists.freedesktop.org,
 intel-xe@lists.freedesktop.org,
 Kamil Konieczny <kamil.konieczny@linux.intel.com>
Subject: Re: [PATCH i-g-t 1/3] lib/kunit: Fix selective execution of test cases
Message-ID: <20240722084436.6l67rhjodql5znvk@zkempczy-mobl2>
References: <20240722080913.74333-5-janusz.krzysztofik@linux.intel.com>
 <20240722080913.74333-6-janusz.krzysztofik@linux.intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <20240722080913.74333-6-janusz.krzysztofik@linux.intel.com>
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
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Mon, Jul 22, 2024 at 10:01:02AM +0200, Janusz Krzysztofik wrote:
> An issue has been discovered when running an IGT kunit test with a dynamic
> sub-subtest specified: only the first kunit test case of a test suite can
> be actually executed.  Selecting a test case other than the first one
> results in "Unloading test module failed, not executing more selftests."
> message being displayed and no single test case (dynamic sub-subtest)
> executed.
> 
> To avoid the failure from a consecutive module unload attempt after it has
> been already unloaded, unload the test module neither after geting a list
> of test cases, nor after each leaving of igt_dynamic() section, only as a
> first step of each dynamic sub-subtest body.
> 
> Reported-by: Zbigniew Kempczyński <zbigniew.kempczynski@intel.com>
> Signed-off-by: Janusz Krzysztofik <janusz.krzysztofik@linux.intel.com>

Works perfect now, thanks for the fix.

Reviewed-by: Zbigniew Kempczyński <zbigniew.kempczynski@intel.com>

--
Zbigniew

> ---
>  lib/igt_kmod.c | 10 ++--------
>  1 file changed, 2 insertions(+), 8 deletions(-)
> 
> diff --git a/lib/igt_kmod.c b/lib/igt_kmod.c
> index 33f059199f..5864be29d2 100644
> --- a/lib/igt_kmod.c
> +++ b/lib/igt_kmod.c
> @@ -1328,8 +1328,6 @@ static bool kunit_get_tests(struct igt_list_head *tests,
>  		igt_require_f(r->code == IGT_EXIT_SKIP,
>  			      "Unexpected non-SKIP result while listing test cases\n");
>  
> -	igt_skip_on(kmod_module_remove_module(tst->kmod, 0));
> -
>  	return true;
>  }
>  
> @@ -1356,6 +1354,8 @@ static void __igt_kunit(struct igt_ktest *tst,
>  			char glob[1024];
>  			int i;
>  
> +			igt_skip_on(kmod_module_remove_module(tst->kmod,
> +							      KMOD_REMOVE_FORCE));
>  			igt_skip_on(igt_kernel_tainted(&taints));
>  
>  			igt_assert_lt(snprintf(glob, sizeof(glob), "%s.%s",
> @@ -1412,12 +1412,6 @@ static void __igt_kunit(struct igt_ktest *tst,
>  			igt_info("Kernel tainted, not executing more selftests.\n");
>  			break;
>  		}
> -
> -		if (igt_debug_on(kmod_module_remove_module(tst->kmod,
> -							   KMOD_REMOVE_FORCE))) {
> -			igt_info("Unloading test module failed, not executing more selftests.\n");
> -			break;
> -		}
>  	}
>  }
>  
> -- 
> 2.45.2
> 
