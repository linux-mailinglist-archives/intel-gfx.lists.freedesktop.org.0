Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 048FCBC0DC2
	for <lists+intel-gfx@lfdr.de>; Tue, 07 Oct 2025 11:31:39 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 63D8B10E176;
	Tue,  7 Oct 2025 09:31:36 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="ZBVasb6M";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.20])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 0A2AC10E176;
 Tue,  7 Oct 2025 09:31:35 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1759829496; x=1791365496;
 h=date:from:to:cc:subject:message-id:references:
 mime-version:in-reply-to;
 bh=TIBirp04rUf/fe7FE8WAlYlXkMScrHzj7hisDEBdLLI=;
 b=ZBVasb6Mn6ZPbx25vElIuR5jqlgkxlxNjbldYAE1qbEi2MmBUNzn/H/F
 TjqnE8P3w6wOKJXOKuVCE18mdJDiIwMl5uYf47/sUQcymCVNz8kQZ5fpJ
 Xcjln/ske5KmTrE2F0zR9nhximtdrfy1g7BSGwDQbO/fd047cOwPQWqDh
 p7/3jeKZ5jREG1IHfPpuJmz383olRh+qP7uf7CZr3qhLtqusSWtrNCxHd
 MMrT0kY3KznM5yFz0xJU8b1bmRSs4nTSMgSm0jXPvcGkaYxrNLuSc92jx
 /mEAROu16l1My/fs8MPgyTvMoBlSDNtHCLkGVmfkrFGvPEX3v5iv31gPU g==;
X-CSE-ConnectionGUID: osp+r/j3Si6S0RCJIvRV8w==
X-CSE-MsgGUID: IHEMXr/aTX+2MiwjGWuWIQ==
X-IronPort-AV: E=McAfee;i="6800,10657,11574"; a="61716183"
X-IronPort-AV: E=Sophos;i="6.18,321,1751266800"; d="scan'208";a="61716183"
Received: from fmviesa008.fm.intel.com ([10.60.135.148])
 by orvoesa112.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 07 Oct 2025 02:31:35 -0700
X-CSE-ConnectionGUID: 8xcUxAchTUuB5MJ2M/LxEQ==
X-CSE-MsgGUID: op84YNjRTBSgFqey/5HF2A==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.18,321,1751266800"; d="scan'208";a="180517953"
Received: from kamilkon-desk.igk.intel.com (HELO localhost) ([10.211.136.201])
 by fmviesa008-auth.fm.intel.com with
 ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 07 Oct 2025 02:31:33 -0700
Date: Tue, 7 Oct 2025 11:31:30 +0200
From: Kamil Konieczny <kamil.konieczny@linux.intel.com>
To: Janusz Krzysztofik <janusz.krzysztofik@linux.intel.com>
Cc: igt-dev@lists.freedesktop.org, intel-gfx@lists.freedesktop.org,
 Chris Wilson <chris.p.wilson@linux.intel.com>,
 Tvrtko Ursulin <tursulin@ursulin.net>
Subject: Re: [PATCH i-g-t 3/3] tests/gem_eio: Iterate over physical rings in
 stress subtests
Message-ID: <20251007093130.ulr3ok2jxzqzc5c5@kamilkon-DESK.igk.intel.com>
Mail-Followup-To: Kamil Konieczny <kamil.konieczny@linux.intel.com>,
 Janusz Krzysztofik <janusz.krzysztofik@linux.intel.com>,
 igt-dev@lists.freedesktop.org, intel-gfx@lists.freedesktop.org,
 Chris Wilson <chris.p.wilson@linux.intel.com>,
 Tvrtko Ursulin <tursulin@ursulin.net>
References: <20250930125430.2323555-5-janusz.krzysztofik@linux.intel.com>
 <20250930125430.2323555-8-janusz.krzysztofik@linux.intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
In-Reply-To: <20250930125430.2323555-8-janusz.krzysztofik@linux.intel.com>
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

Hi Janusz,
On 2025-09-30 at 14:49:03 +0200, Janusz Krzysztofik wrote:
> To avoid igt_runner timing out stress subtests, limit the number of
> exercised rings by iterating over physical rings and skipping other.
> 
> Signed-off-by: Janusz Krzysztofik <janusz.krzysztofik@linux.intel.com>
> ---
>  tests/intel/gem_eio.c | 2 +-
>  1 file changed, 1 insertion(+), 1 deletion(-)
> 
> diff --git a/tests/intel/gem_eio.c b/tests/intel/gem_eio.c
> index 5b0925a8c6..cbfed99b61 100644
> --- a/tests/intel/gem_eio.c
> +++ b/tests/intel/gem_eio.c
> @@ -997,7 +997,7 @@ static void test_reset_stress(int fd, unsigned int flags)
>  	const intel_ctx_t *ctx0 = context_create_safe(fd);
>  	uint64_t ahnd = get_reloc_ahnd(fd, ctx0->id);
>  
> -	for_each_ring(e, fd) {
> +	for_each_physical_ring(e, fd) {

Could you send it as separate change with r-b from Krzysztof?
imho it could be merged first.

Regards,
Kamil

>  		struct intel_execution_engine2 engine;
>  
>  		engine = gem_eb_flags_to_engine(eb_ring(e));
> -- 
> 2.51.0
> 
