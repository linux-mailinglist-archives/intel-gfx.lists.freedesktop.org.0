Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 4501D938B94
	for <lists+intel-gfx@lfdr.de>; Mon, 22 Jul 2024 10:56:14 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id C240310E0C4;
	Mon, 22 Jul 2024 08:56:12 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="Ri8+KBKw";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.9])
 by gabe.freedesktop.org (Postfix) with ESMTPS id B981B10E0C4;
 Mon, 22 Jul 2024 08:56:10 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1721638572; x=1753174572;
 h=date:from:to:cc:subject:message-id:references:
 mime-version:content-transfer-encoding:in-reply-to;
 bh=nY3K6IAMpZGO6kiRR0pErfXKs+YEbEuv4wGZgcGIhv4=;
 b=Ri8+KBKwQNGE1pPRvkyQzsUk+qJyl1IYzKdu0oGcsnoFp8mRg6dncDs5
 qHs2Xh8hWGy7QQu9wkvQCjhU5RJOmHDaP6BiPg55Pd1PDjueD0eLl8ayz
 maWayWZPUsmhGgRsrymhDQuqw9eYV+tf0JGrMewRBtiHrRhSUVEQ+0/PG
 YBCbF5CnSyZHJwucC8PzwJwZSlPxv7fku+VI4aVaQ1kaawXUFhP3iB3Pe
 +XTsBzmmVuLvNgru2Wz6EA4neyPLNKb57O9rOd3vL3rBXdyTdjNfbyem5
 E7uemQHt/0lSWjmZ5LVWdpwbylalcK/E49ghYVm6qHjPW4MEIuuZ2NYG6 w==;
X-CSE-ConnectionGUID: CfvzPr2UTBGcUr1jCafbeA==
X-CSE-MsgGUID: 1mChEKReTLWYB1t2URvvGA==
X-IronPort-AV: E=McAfee;i="6700,10204,11140"; a="41722590"
X-IronPort-AV: E=Sophos;i="6.09,227,1716274800"; d="scan'208";a="41722590"
Received: from fmviesa004.fm.intel.com ([10.60.135.144])
 by orvoesa101.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 22 Jul 2024 01:56:10 -0700
X-CSE-ConnectionGUID: 2LjLzC2CSO+GtPPOKpXaOQ==
X-CSE-MsgGUID: taxXVMLxTHKAOuPvjYwwhg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.09,227,1716274800"; d="scan'208";a="56378018"
Received: from cpetruta-mobl1.ger.corp.intel.com (HELO localhost)
 ([10.245.246.211])
 by fmviesa004-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 22 Jul 2024 01:56:03 -0700
Date: Mon, 22 Jul 2024 10:55:53 +0200
From: Zbigniew =?utf-8?Q?Kempczy=C5=84ski?= <zbigniew.kempczynski@intel.com>
To: Janusz Krzysztofik <janusz.krzysztofik@linux.intel.com>
Cc: igt-dev@lists.freedesktop.org, intel-gfx@lists.freedesktop.org,
 intel-xe@lists.freedesktop.org,
 Kamil Konieczny <kamil.konieczny@linux.intel.com>
Subject: Re: [PATCH i-g-t 3/3] lib/kunit: Improve a comment on action=list
 parameter
Message-ID: <20240722085553.kgrcurlyskgvbwhi@zkempczy-mobl2>
References: <20240722080913.74333-5-janusz.krzysztofik@linux.intel.com>
 <20240722080913.74333-8-janusz.krzysztofik@linux.intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <20240722080913.74333-8-janusz.krzysztofik@linux.intel.com>
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

On Mon, Jul 22, 2024 at 10:01:04AM +0200, Janusz Krzysztofik wrote:
> Emphasize the fact that test case list of unknown length we want to avoid
> parsing of is an unstructured free text list.
> 
> Signed-off-by: Janusz Krzysztofik <janusz.krzysztofik@linux.intel.com>
> ---
>  lib/igt_kmod.c | 8 ++++----
>  1 file changed, 4 insertions(+), 4 deletions(-)
> 
> diff --git a/lib/igt_kmod.c b/lib/igt_kmod.c
> index a13c6fe063..464c0dcf48 100644
> --- a/lib/igt_kmod.c
> +++ b/lib/igt_kmod.c
> @@ -1284,10 +1284,10 @@ static bool kunit_get_tests(struct igt_list_head *tests,
>  	/*
>  	 * To get a list of test cases provided by a kunit test module, ask the
>  	 * generic kunit module to respond with SKIP result for each test found.
> -	 * We could also use action=list kunit parameter to get the listing,
> -	 * however, parsing a KTAP report -- something that we already can do
> -	 * perfectly -- seems to be more safe than extracting a test case list
> -	 * of unknown length from /dev/kmsg.
> +	 * We could also try to use action=list kunit parameter to get the
> +	 * listing, however, parsing a structured KTAP report -- something that
> +	 * we already can do perfectly -- seems to be more safe than extracting
> +	 * a free text list of unknown length from /dev/kmsg.
>  	 */
>  	if (igt_debug_on(!kunit_set_filtering(suite, "module=none", "skip")))
>  		return false;
> -- 
> 2.45.2
> 

Reviewed-by: Zbigniew Kempczyński <zbigniew.kempczynski@intel.com>

--
Zbigniew

