Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 9D9257C5431
	for <lists+intel-gfx@lfdr.de>; Wed, 11 Oct 2023 14:41:33 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 9E19810E7A6;
	Wed, 11 Oct 2023 12:41:30 +0000 (UTC)
X-Original-To: Intel-gfx@lists.freedesktop.org
Delivered-To: Intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.55.52.88])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 9711C10E7A6;
 Wed, 11 Oct 2023 12:41:29 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1697028089; x=1728564089;
 h=date:from:to:cc:subject:message-id:references:
 mime-version:content-transfer-encoding:in-reply-to;
 bh=TuH2vG8+KtzPgqbkb5tYh33n+fvY0XX3+6WMbnIM8L4=;
 b=NQXu4uOizuCkRkIwfK5mp6qmZFz3UjGZ0srOcVRzLZyzCM0ytXck76tO
 tb/YCTpT+PWgU+Yb8SRIRFLrGF060eLNr3KO4MM5lqGKSeAFJVjYbtCmT
 MRABReToAUANOD2BvfIuPfbPvrqe+qzMGsbzrUyzIuqFTXYQLpOpUmi2h
 QZwc9niXB06tDs31HRHPx5dMmOE3Qy9rx13DQoN5T1cRVXVby8aDjiz5X
 yIafVsyvdqTd+c/r/Yqb4o7mWrotXOLeRY516+VeC6HkuXAHWTWqYrtob
 0uPiP/SqdqGac4gkBBEPubJBOKZpVzjfq6U5ymvMz/+6iU+1dtDoRyD/0 g==;
X-IronPort-AV: E=McAfee;i="6600,9927,10860"; a="415697976"
X-IronPort-AV: E=Sophos;i="6.03,216,1694761200"; d="scan'208";a="415697976"
Received: from fmsmga003.fm.intel.com ([10.253.24.29])
 by fmsmga101.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 11 Oct 2023 05:41:19 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10860"; a="844548901"
X-IronPort-AV: E=Sophos;i="6.03,216,1694761200"; d="scan'208";a="844548901"
Received: from kamilkon-desk.igk.intel.com (HELO localhost) ([10.102.138.187])
 by fmsmga003-auth.fm.intel.com with
 ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 11 Oct 2023 05:41:18 -0700
Date: Wed, 11 Oct 2023 14:40:56 +0200
From: Kamil Konieczny <kamil.konieczny@linux.intel.com>
To: Tvrtko Ursulin <tvrtko.ursulin@linux.intel.com>
Message-ID: <20231011124056.c3e3nnihpa2pahzn@kamilkon-desk.igk.intel.com>
Mail-Followup-To: Kamil Konieczny <kamil.konieczny@linux.intel.com>,
 Tvrtko Ursulin <tvrtko.ursulin@linux.intel.com>,
 igt-dev@lists.freedesktop.org, Intel-gfx@lists.freedesktop.org,
 Tvrtko Ursulin <tvrtko.ursulin@intel.com>
References: <20231011083845.798413-1-tvrtko.ursulin@linux.intel.com>
 <20231011083845.798413-3-tvrtko.ursulin@linux.intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <20231011083845.798413-3-tvrtko.ursulin@linux.intel.com>
Subject: Re: [Intel-gfx] [PATCH i-g-t 3/4] tools/intel_gpu_top: Optimise
 interactive display a bit
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
Cc: igt-dev@lists.freedesktop.org, Intel-gfx@lists.freedesktop.org,
 Tvrtko Ursulin <tvrtko.ursulin@intel.com>
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

Hi Tvrtko,
On 2023-10-11 at 09:38:44 +0100, Tvrtko Ursulin wrote:
> From: Tvrtko Ursulin <tvrtko.ursulin@intel.com>
> 
> Padding the percentage bars and table columns with spaces happens quite a
> lot so lets do better than putchar at a time. Have a table of visually
> empty strings and build the required length out of those chunks.
> 
> While at it, also move the percentage bar table into its function scope.
> 
> v2:
>  * Fix checkpatch and use ARRAY_SIZE. (Kamil)
> 
> Signed-off-by: Tvrtko Ursulin <tvrtko.ursulin@intel.com>
> Cc: Kamil Konieczny <kamil.konieczny@linux.intel.com>

Reviewed-by: Kamil Konieczny <kamil.konieczny@linux.intel.com>

> ---
>  tools/intel_gpu_top.c | 38 +++++++++++++++++++++++++++++++++-----
>  1 file changed, 33 insertions(+), 5 deletions(-)
> 
> diff --git a/tools/intel_gpu_top.c b/tools/intel_gpu_top.c
> index b6d1014f00b8..006879c4ae67 100644
> --- a/tools/intel_gpu_top.c
> +++ b/tools/intel_gpu_top.c
> @@ -926,14 +926,39 @@ static void free_display_clients(struct igt_drm_clients *clients)
>  	free(clients);
>  }
>  
> -static const char *bars[] = { " ", "▏", "▎", "▍", "▌", "▋", "▊", "▉", "█" };
> -
>  static int n_spaces(const int n)
>  {
> -	int i;
> +	static const char *spaces[] = {
> +		" ",
> +		"  ",
> +		"   ",
> +		"    ",
> +		"     ",
> +		"      ",
> +		"       ",
> +		"        ",
> +		"         ",
> +		"          ",
> +		"           ",
> +		"            ",
> +		"             ",
> +		"              ",
> +		"               ",
> +		"                ",
> +		"                 ",
> +		"                  ",
> +		"                   ",
> +	};
> +	int i, r = n;
>  
> -	for (i = 0; i < n; i++)
> -		putchar(' ');
> +	while (r) {
> +		if (r > ARRAY_SIZE(spaces))
> +			i = ARRAY_SIZE(spaces) - 1;
> +		else
> +			i = r - 1;
> +		fputs(spaces[i], stdout);
> +		r -= i + 1;
> +	}
>  
>  	return n;
>  }
> @@ -941,6 +966,9 @@ static int n_spaces(const int n)
>  static void
>  print_percentage_bar(double percent, double max, int max_len, bool numeric)
>  {
> +	static const char *bars[] = {
> +		" ", "▏", "▎", "▍", "▌", "▋", "▊", "▉", "█"
> +	};
>  	int bar_len, i, len = max_len - 2;
>  	const int w = 8;
>  
> -- 
> 2.39.2
> 
