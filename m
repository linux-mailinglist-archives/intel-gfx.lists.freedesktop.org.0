Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 3B562886A7F
	for <lists+intel-gfx@lfdr.de>; Fri, 22 Mar 2024 11:38:38 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 6680110ECA7;
	Fri, 22 Mar 2024 10:38:36 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="nJFAd7SU";
	dkim-atps=neutral
X-Original-To: Intel-gfx@lists.freedesktop.org
Delivered-To: Intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.14])
 by gabe.freedesktop.org (Postfix) with ESMTPS id B273310ECA7;
 Fri, 22 Mar 2024 10:38:34 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1711103915; x=1742639915;
 h=date:from:to:cc:subject:message-id:references:
 mime-version:in-reply-to;
 bh=95YigKOEo4eWAUMfrybZRAr4waGbJ09LjeLqbqrouJ4=;
 b=nJFAd7SUChF8Y5Cvrf8KVHIjZI5TuaDIbh+PRiCshMrjmvahS5Qz2S88
 UokU3QZ8eBgcWfjJZVDQpU+CJkg+w1mEqgcbWrndj3YKFoH6subOGQaXZ
 kCjITRxcDqkLSgi1+qfzLmNegtSpEzBt0YWvYip6t7H7kKg9+LX53/UpG
 VbfOzuE8nZKBoSjZ1/eZ47xfA3Ze1yBRas/tld7UZG4TdxprjhS9Y8e+L
 CGPHnWMEp/0Wkf/PiwUSWOEJpwM1lXUTKxTgUvXUpPJQrc+3frvJSYTYF
 rk3XBovtSHV/rzJ8n+ahkTPhYcOqZxBcZVcpyXICQI67fd05X+zNiVN2t w==;
X-IronPort-AV: E=McAfee;i="6600,9927,11020"; a="9949090"
X-IronPort-AV: E=Sophos;i="6.07,145,1708416000"; 
   d="scan'208";a="9949090"
Received: from fmviesa007.fm.intel.com ([10.60.135.147])
 by orvoesa106.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 22 Mar 2024 03:38:33 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.07,145,1708416000"; d="scan'208";a="14831458"
Received: from kamilkon-desk.igk.intel.com (HELO localhost) ([10.102.138.187])
 by fmviesa007-auth.fm.intel.com with
 ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 22 Mar 2024 03:38:31 -0700
Date: Fri, 22 Mar 2024 11:38:11 +0100
From: Kamil Konieczny <kamil.konieczny@linux.intel.com>
To: igt-dev@lists.freedesktop.org
Cc: Tvrtko Ursulin <tvrtko.ursulin@linux.intel.com>,
 Intel-gfx@lists.freedesktop.org, Tvrtko Ursulin <tvrtko.ursulin@intel.com>
Subject: Re: [PATCH i-g-t] tools/intel_gpu_top: Fix near full percentage bar
 formatting
Message-ID: <20240322103811.yqnznxqwl62xdtzq@kamilkon-desk.igk.intel.com>
Mail-Followup-To: Kamil Konieczny <kamil.konieczny@linux.intel.com>,
 igt-dev@lists.freedesktop.org,
 Tvrtko Ursulin <tvrtko.ursulin@linux.intel.com>,
 Intel-gfx@lists.freedesktop.org,
 Tvrtko Ursulin <tvrtko.ursulin@intel.com>
References: <20240118084838.734165-1-tvrtko.ursulin@linux.intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
In-Reply-To: <20240118084838.734165-1-tvrtko.ursulin@linux.intel.com>
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

Hi Tvrtko,
On 2024-01-18 at 08:48:38 +0000, Tvrtko Ursulin wrote:
> From: Tvrtko Ursulin <tvrtko.ursulin@intel.com>
> 
> Fix a bug where 1) the end vertical separator element would not be printed
> if the progress bar portion was all filled by the progress bar characters
> (no trailing spaces), and 2) the numerical overlay would be skipped to.
> 
> The bug would also shift the layout of following UI elements since the
> progress bar would not be consuming all the allocated horizontal space.
> 
> Signed-off-by: Tvrtko Ursulin <tvrtko.ursulin@intel.com>
> Reported-by: anonymoustranquillity@proton.me

Reviewed-by: Kamil Konieczny <kamil.konieczny@linux.intel.com>

> ---
>  tools/intel_gpu_top.c | 5 ++---
>  1 file changed, 2 insertions(+), 3 deletions(-)
> 
> diff --git a/tools/intel_gpu_top.c b/tools/intel_gpu_top.c
> index 046ead15a122..5b4f94d7de7a 100644
> --- a/tools/intel_gpu_top.c
> +++ b/tools/intel_gpu_top.c
> @@ -1015,9 +1015,8 @@ print_percentage_bar(double percent, double max, int max_len, bool numeric)
>  		printf("%s", bars[i]);
>  
>  	len -= (bar_len + (w - 1)) / w;
> -	if (len < 1)
> -		return;
> -	n_spaces(len);
> +	if (len >= 1)
> +		n_spaces(len);
>  
>  	putchar('|');
>  
> -- 
> 2.40.1
> 
