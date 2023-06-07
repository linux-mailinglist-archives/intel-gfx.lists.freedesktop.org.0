Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 9F3D9726749
	for <lists+intel-gfx@lfdr.de>; Wed,  7 Jun 2023 19:29:24 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id F138110E528;
	Wed,  7 Jun 2023 17:29:22 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
 by gabe.freedesktop.org (Postfix) with ESMTPS id C032610E528;
 Wed,  7 Jun 2023 17:29:20 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1686158960; x=1717694960;
 h=date:from:to:cc:subject:message-id:references:
 mime-version:in-reply-to;
 bh=u4x4E9OC72A98bn1c0zkHJ3cb82ZL3hj5kMl8BLIXvs=;
 b=YwmiV/QLtNvVmpraJoDedy9xQv+ACdkWgbhKXLysNgvVdQws9bLmKwE+
 5M4gynt3SCLqzHzQPVjy3+LHogBIIyWq1OKn9K+n2hMhO3rLMoP72XhaY
 KF98iz/yeYXhWig8I3gQgCMFp/rTTRUh291KoiiLfGkyeU0xjWwYH8YQX
 OK0K96bjyfZjKhoeUo1cDSwch2oXuK/ykeP+EBKJbFdI3Kna8HK0RQXqg
 RjwMFDExIjbFR8kmdeZ2q4VT2er2o9+Doo+SewypWdgU24NxeBr68rEKm
 RR3a5Emdngl7i0FnfaylO54ZlRyT7yWMrxyITe+NiIRmYEMggcCUZ3X8Y Q==;
X-IronPort-AV: E=McAfee;i="6600,9927,10734"; a="359525612"
X-IronPort-AV: E=Sophos;i="6.00,224,1681196400"; d="scan'208";a="359525612"
Received: from fmsmga006.fm.intel.com ([10.253.24.20])
 by orsmga102.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 07 Jun 2023 10:29:19 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10734"; a="956380181"
X-IronPort-AV: E=Sophos;i="6.00,224,1681196400"; d="scan'208";a="956380181"
Received: from blturkot-mobl1.ger.corp.intel.com (HELO localhost)
 ([10.213.10.50])
 by fmsmga006-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 07 Jun 2023 10:29:18 -0700
Date: Wed, 7 Jun 2023 19:29:16 +0200
From: Kamil Konieczny <kamil.konieczny@linux.intel.com>
To: igt-dev@lists.freedesktop.org
Message-ID: <20230607172916.b5e6l2a3pndcnxxm@kamilkon-desk1>
Mail-Followup-To: Kamil Konieczny <kamil.konieczny@linux.intel.com>,
 igt-dev@lists.freedesktop.org,
 Vinay Belgaumkar <vinay.belgaumkar@intel.com>,
 intel-gfx@lists.freedesktop.org,
 Andrzej Hajda <andrzej.hajda@intel.com>
References: <20230606221418.296888-1-vinay.belgaumkar@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
In-Reply-To: <20230606221418.296888-1-vinay.belgaumkar@intel.com>
Subject: Re: [Intel-gfx] [PATCH i-g-t] tests/gem_ctx_persistence: Skip hang
 subtest with GuC
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
Cc: intel-gfx@lists.freedesktop.org, Andrzej Hajda <andrzej.hajda@intel.com>
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

Hi Vinay,

On 2023-06-06 at 15:14:18 -0700, Vinay Belgaumkar wrote:
> Hang subtest is not supported with GuC submission enabled.

This is Guc which do not support some operations, so please
improve description, maybe use Andrzej suggestions ?

Regards,
Kamil

> 
> Cc: Kamil Konieczny <kamil.konieczny@linux.intel.com>
> Signed-off-by: Vinay Belgaumkar <vinay.belgaumkar@intel.com>
> ---
>  tests/i915/gem_ctx_persistence.c | 2 ++
>  1 file changed, 2 insertions(+)
> 
> diff --git a/tests/i915/gem_ctx_persistence.c b/tests/i915/gem_ctx_persistence.c
> index df9b1c491..d2558354e 100644
> --- a/tests/i915/gem_ctx_persistence.c
> +++ b/tests/i915/gem_ctx_persistence.c
> @@ -577,6 +577,8 @@ static void test_nohangcheck_hang(int i915, const intel_ctx_cfg_t *cfg)
>  	int testable_engines = 0;
>  	int dir;
>  
> +	igt_require(!gem_using_guc_submission(i915));
> +
>  	cleanup(i915);
>  
>  	/*
> -- 
> 2.38.1
> 
