Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 9A60F934D07
	for <lists+intel-gfx@lfdr.de>; Thu, 18 Jul 2024 14:14:58 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 5E0BA10E7DD;
	Thu, 18 Jul 2024 12:14:56 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="OQre6vua";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.11])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 14EBA10E7DA;
 Thu, 18 Jul 2024 12:14:55 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1721304895; x=1752840895;
 h=date:from:to:cc:subject:message-id:references:
 mime-version:in-reply-to;
 bh=YFUz6M+1olUkfzV6mIgORKXcmY0LX0jhALLbdHq7/zw=;
 b=OQre6vuaV4D1BpBBFDrDVGMPt6SQ4t3QR6D73NajuNzsKkUsJQ2mMknh
 N5I8lEkCC9YY9Wik1o/yxlJDyPdPN3XI1rblFYxPAsZ28qrYBOnGC7BYE
 Xt1axzCLu+4ou+guSAgCT2ugrdG1zRyeAZQ9sxk8WDA07Zu/tM4MLlt8D
 +17WOMs5z4sahZQ1Nrngp/+HOScagEgTVsLLhoo5/gibaSeu4bQMtOHDR
 j96L8YmXZ9/RCchC0fWBrZ/9wqg1JInN8wGz8u4T1gRSxm2xBrFjwGSGA
 5SzKss0/20/aojeQ1+x095+Oj8H7Oj29rmm4MAvYfMsLMuaZc4p9c39Y6 g==;
X-CSE-ConnectionGUID: IlMAkYOCTi2IPB5ifr6fZw==
X-CSE-MsgGUID: 7tUvTXa7SR+5f3eZ6Q4PZg==
X-IronPort-AV: E=McAfee;i="6700,10204,11136"; a="29442897"
X-IronPort-AV: E=Sophos;i="6.09,217,1716274800"; d="scan'208";a="29442897"
Received: from fmviesa007.fm.intel.com ([10.60.135.147])
 by orvoesa103.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 18 Jul 2024 05:14:55 -0700
X-CSE-ConnectionGUID: vmidygAXSluU27HF8m5fpg==
X-CSE-MsgGUID: QgrNfKd5T86vS00Y8uabhw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.09,217,1716274800"; d="scan'208";a="50499962"
Received: from kamilkon-desk.igk.intel.com (HELO localhost) ([10.102.138.187])
 by fmviesa007-auth.fm.intel.com with
 ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 18 Jul 2024 05:14:52 -0700
Date: Thu, 18 Jul 2024 14:14:50 +0200
From: Kamil Konieczny <kamil.konieczny@linux.intel.com>
To: igt-dev@lists.freedesktop.org
Cc: Janusz Krzysztofik <janusz.krzysztofik@linux.intel.com>,
 intel-gfx@lists.freedesktop.org, intel-xe@lists.freedesktop.org,
 Chris Wilson <chris.p.wilson@linux.intel.com>
Subject: Re: [PATCH i-g-t v4 4/5] lib/gem_engine_topology: Simplify the
 method of opening a primary
Message-ID: <20240718121450.ov4mkd623nomyep7@kamilkon-DESK.igk.intel.com>
Mail-Followup-To: Kamil Konieczny <kamil.konieczny@linux.intel.com>,
 igt-dev@lists.freedesktop.org,
 Janusz Krzysztofik <janusz.krzysztofik@linux.intel.com>,
 intel-gfx@lists.freedesktop.org, intel-xe@lists.freedesktop.org,
 Chris Wilson <chris.p.wilson@linux.intel.com>
References: <20240718085912.15434-7-janusz.krzysztofik@linux.intel.com>
 <20240718085912.15434-11-janusz.krzysztofik@linux.intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
In-Reply-To: <20240718085912.15434-11-janusz.krzysztofik@linux.intel.com>
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
On 2024-07-18 at 10:55:15 +0200, Janusz Krzysztofik wrote:
> When opening a potential primary counterpart of a render device, we first
> open a parent directory of the render node and pass it to openat() that
> can open a path relative to that directory.  But on the other hand, we
> build and pass to that function a path of that primary that is absolute,
> not relative.  While that construct gives the expected result anyway, it
> makes the picture unclear.
> 
> Use open() and drop unused code.
> 
> Signed-off-by: Janusz Krzysztofik <janusz.krzysztofik@linux.intel.com>

Reviewed-by: Kamil Konieczny <kamil.konieczny@linux.intel.com>


> ---
>  lib/i915/gem_engine_topology.c | 7 +------
>  1 file changed, 1 insertion(+), 6 deletions(-)
> 
> diff --git a/lib/i915/gem_engine_topology.c b/lib/i915/gem_engine_topology.c
> index 8589af5c1a..c8c1079223 100644
> --- a/lib/i915/gem_engine_topology.c
> +++ b/lib/i915/gem_engine_topology.c
> @@ -470,14 +470,10 @@ static int __open_primary(int dir)
>  	if (igt_debug_on(readlinkat(dir, "device", target, sizeof(target)) < 0))
>  		return dir;
>  
> -	fd = openat(dir, "..", O_RDONLY);
> -	if (fd < 0)
> -		return dir;
> -
>  	close(dir);
>  	for (minor = 0; minor < 64; minor++) {
>  		sprintf(buf, "/sys/dev/char/%d:%d", major, minor);
> -		dir = openat(fd, buf, O_RDONLY);
> +		dir = open(buf, O_RDONLY);
>  		if (dir < 0)
>  			continue;
>  
> @@ -488,7 +484,6 @@ static int __open_primary(int dir)
>  		close(dir);
>  		dir = -1;
>  	}
> -	close(fd);
>  
>  	return dir;
>  }
> -- 
> 2.45.2
> 
