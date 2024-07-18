Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id D263D934D0E
	for <lists+intel-gfx@lfdr.de>; Thu, 18 Jul 2024 14:17:17 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 750BA10E7E4;
	Thu, 18 Jul 2024 12:17:16 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="D7JYhIk+";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.10])
 by gabe.freedesktop.org (Postfix) with ESMTPS id E6EEB10E7E1;
 Thu, 18 Jul 2024 12:17:13 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1721305034; x=1752841034;
 h=date:from:to:cc:subject:message-id:references:
 mime-version:in-reply-to;
 bh=1Zm5eDtB9mb9Obb3VZ71iik1joguefFSlnO3k+pRpnY=;
 b=D7JYhIk+JCzknGaS4yco9s0nQc88TD05CXQpZkOj3NQts8JH9GfFsiii
 lzF4kNMnOhEjnFwt30LeiZJ1m+6i2cr6irLkr6lTali9lqF+gZejBP7lq
 bTOMVVeyiXL6HCiYc+0aJzXqaThGTyG0ZTNygRflqyKlRZ7h3vox+4eKU
 FR9z1oL0+uLrmvseYcvidIaBTUqoSyVWEMZda37huX9UJyUuBy04hXV3s
 /ojvcX8gmEi542Ajqc8HXi+8giR1HbLDJj0Hz78x0mRU0FHKhlDvdExos
 vby+gQAW+pCFQYR2v4VPOD1pSKVLVAKu5pZBOY177ic7H4v16ynPaNive g==;
X-CSE-ConnectionGUID: UNiyXiptQ7qWqjG5c/zvfg==
X-CSE-MsgGUID: Hr5eEtb9Rouk8h1a2Zdyvg==
X-IronPort-AV: E=McAfee;i="6700,10204,11136"; a="30277593"
X-IronPort-AV: E=Sophos;i="6.09,217,1716274800"; d="scan'208";a="30277593"
Received: from fmviesa008.fm.intel.com ([10.60.135.148])
 by fmvoesa104.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 18 Jul 2024 05:17:07 -0700
X-CSE-ConnectionGUID: tZq5Ke1CRdyue0AdZ8mXFQ==
X-CSE-MsgGUID: 3NbRVJjrQf6S1uIlnX0LpQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.09,217,1716274800"; d="scan'208";a="50606411"
Received: from kamilkon-desk.igk.intel.com (HELO localhost) ([10.102.138.187])
 by fmviesa008-auth.fm.intel.com with
 ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 18 Jul 2024 05:17:05 -0700
Date: Thu, 18 Jul 2024 14:17:02 +0200
From: Kamil Konieczny <kamil.konieczny@linux.intel.com>
To: igt-dev@lists.freedesktop.org
Cc: Janusz Krzysztofik <janusz.krzysztofik@linux.intel.com>,
 intel-gfx@lists.freedesktop.org, intel-xe@lists.freedesktop.org,
 Chris Wilson <chris.p.wilson@linux.intel.com>
Subject: Re: [PATCH i-g-t v4 5/5] lib/gem_engine_topology: Fix broken compare
 of device links
Message-ID: <20240718121702.uvqeww4s5yul2r3l@kamilkon-DESK.igk.intel.com>
Mail-Followup-To: Kamil Konieczny <kamil.konieczny@linux.intel.com>,
 igt-dev@lists.freedesktop.org,
 Janusz Krzysztofik <janusz.krzysztofik@linux.intel.com>,
 intel-gfx@lists.freedesktop.org, intel-xe@lists.freedesktop.org,
 Chris Wilson <chris.p.wilson@linux.intel.com>
References: <20240718085912.15434-7-janusz.krzysztofik@linux.intel.com>
 <20240718085912.15434-12-janusz.krzysztofik@linux.intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
In-Reply-To: <20240718085912.15434-12-janusz.krzysztofik@linux.intel.com>
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
On 2024-07-18 at 10:55:16 +0200, Janusz Krzysztofik wrote:
> When looking for a primary counterpart of a render device, we compare
> "device" links of both nodes.  If those links point to the same device
> then we know we've found the correct primary node.
> 
> However, readlinkat() function we use doesn't explicitly terminate read in
> strings with null characters, and then the comparison occasionally fails.
> 
> Process the second (potential primary counterpart) node only if its
> "device" link is of the same length as that of the render node, and limit
> the number of compared characters to that length.
> 
> Closes: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/6268
> Signed-off-by: Janusz Krzysztofik <janusz.krzysztofik@linux.intel.com>

Reviewed-by: Kamil Konieczny <kamil.konieczny@linux.intel.com>

> ---
>  lib/i915/gem_engine_topology.c | 7 ++++---
>  1 file changed, 4 insertions(+), 3 deletions(-)
> 
> diff --git a/lib/i915/gem_engine_topology.c b/lib/i915/gem_engine_topology.c
> index c8c1079223..c251060341 100644
> --- a/lib/i915/gem_engine_topology.c
> +++ b/lib/i915/gem_engine_topology.c
> @@ -467,7 +467,8 @@ static int __open_primary(int dir)
>  	if (minor < 64)
>  		return dir;
>  
> -	if (igt_debug_on(readlinkat(dir, "device", target, sizeof(target)) < 0))
> +	len = readlinkat(dir, "device", target, sizeof(target));
> +	if (igt_debug_on(len <= 0))
>  		return dir;
>  
>  	close(dir);
> @@ -477,8 +478,8 @@ static int __open_primary(int dir)
>  		if (dir < 0)
>  			continue;
>  
> -		if (readlinkat(dir, "device", device, sizeof(device)) > 0 &&
> -		    !strcmp(device, target))
> +		if (readlinkat(dir, "device", device, sizeof(device)) == len &&
> +		    !strncmp(device, target, len))
>  			break;
>  
>  		close(dir);
> -- 
> 2.45.2
> 
