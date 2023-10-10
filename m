Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 2BDBA7C01E3
	for <lists+intel-gfx@lfdr.de>; Tue, 10 Oct 2023 18:45:04 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id C49D210E3AE;
	Tue, 10 Oct 2023 16:45:00 +0000 (UTC)
X-Original-To: Intel-gfx@lists.freedesktop.org
Delivered-To: Intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [134.134.136.31])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 1C56C10E3AC;
 Tue, 10 Oct 2023 16:44:58 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1696956298; x=1728492298;
 h=date:from:to:cc:subject:message-id:references:
 mime-version:content-transfer-encoding:in-reply-to;
 bh=6qeoclL7vOBvx0HJGK4b88Or+VCV2bvs6+JG5AZ78W0=;
 b=NppkjRZKigwPoXcroHcAh69HFK44o2Bf00I8QD9YGUXpdGX12sGluVpO
 8xWm4utvw8eKb1dYCt3PRL+Em11cCI3iK3itlx6kja+VklwmN2cP3t1Yi
 vw3YkQq+bZkHDWNMgQ0pEVwZiXv1s2GAR3+N+cNtQ8PMI5jnlCogkcWOT
 L1UpGMn26CGo4aEQUnq1BIm2VjHpQ138DtwK42aO6tmGWfnlH7ZCZ9dek
 HSaRuRnp7CzJ9qlhfu06IoqzZDnlzo8eBx1udCuMPzBEpnu69/LeABuSV
 7byMFwataRCxxyS9Iacpbq4hfKWcYlZU28ZfhLsGh7CSnIv7sEZFsp8F4 w==;
X-IronPort-AV: E=McAfee;i="6600,9927,10859"; a="448643771"
X-IronPort-AV: E=Sophos;i="6.03,213,1694761200"; d="scan'208";a="448643771"
Received: from fmsmga005.fm.intel.com ([10.253.24.32])
 by orsmga104.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 10 Oct 2023 09:35:23 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10859"; a="1084863760"
X-IronPort-AV: E=Sophos;i="6.03,213,1694761200"; d="scan'208";a="1084863760"
Received: from kamilkon-desk.igk.intel.com (HELO localhost) ([10.102.138.187])
 by fmsmga005-auth.fm.intel.com with
 ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 10 Oct 2023 09:35:20 -0700
Date: Tue, 10 Oct 2023 18:35:18 +0200
From: Kamil Konieczny <kamil.konieczny@linux.intel.com>
To: igt-dev@lists.freedesktop.org
Message-ID: <20231010163518.hgcqkap3dx655hrk@kamilkon-desk.igk.intel.com>
Mail-Followup-To: Kamil Konieczny <kamil.konieczny@linux.intel.com>,
 igt-dev@lists.freedesktop.org,
 Tvrtko Ursulin <tvrtko.ursulin@linux.intel.com>,
 Intel-gfx@lists.freedesktop.org,
 Tvrtko Ursulin <tvrtko.ursulin@intel.com>
References: <20231010110714.749239-1-tvrtko.ursulin@linux.intel.com>
 <20231010110714.749239-4-tvrtko.ursulin@linux.intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <20231010110714.749239-4-tvrtko.ursulin@linux.intel.com>
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
Cc: Intel-gfx@lists.freedesktop.org, Tvrtko Ursulin <tvrtko.ursulin@intel.com>
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

Hi Tvrtko,
On 2023-10-10 at 12:07:13 +0100, Tvrtko Ursulin wrote:
> From: Tvrtko Ursulin <tvrtko.ursulin@intel.com>
> 
> Padding the percentage bars and table columns with spaces happens quite a
> lot so lets do better than putchar at a time. Have a table of visually
> empty strings and build the required length out of those chunks.
> 
> While at it, also move the percentage bar table into its function scope.
> 
> Signed-off-by: Tvrtko Ursulin <tvrtko.ursulin@intel.com>
> ---
>  tools/intel_gpu_top.c | 38 +++++++++++++++++++++++++++++++++-----
>  1 file changed, 33 insertions(+), 5 deletions(-)
> 
> diff --git a/tools/intel_gpu_top.c b/tools/intel_gpu_top.c
> index c5abd0c92155..472ce3f13ba9 100644
> --- a/tools/intel_gpu_top.c
> +++ b/tools/intel_gpu_top.c
> @@ -926,14 +926,40 @@ static void free_display_clients(struct igt_drm_clients *clients)
>  	free(clients);
>  }
>  
> -static const char *bars[] = { " ", "▏", "▎", "▍", "▌", "▋", "▊", "▉", "█" };
> -
>  static unsigned int n_spaces(const unsigned int n)
>  {
> -	unsigned int i;
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
> +#define MAX_SPACES 19
----^^^^^^^^^^^^^^^^^^^^
imho better sizeof(spaces)

> +	};
> +	unsigned int i, r = n;
>  
> -	for (i = 0; i < n; i++)
> -		putchar(' ');
> +	while (r) {
> +		if (r > MAX_SPACES)
> +			i = MAX_SPACES - 1;
> +		else
> +			i = r - 1;
> +		fputs(spaces[i], stdout);
> +		r -= i + 1;
> +	}
>  
>  	return n;
>  }
> @@ -941,6 +967,8 @@ static unsigned int n_spaces(const unsigned int n)
>  static void
>  print_percentage_bar(double percent, double max, int max_len, bool numeric)
>  {
> +	static const char *bars[] =
> +		{ " ", "▏", "▎", "▍", "▌", "▋", "▊", "▉", "█" };

Please write it in one line or start with '= {' as checkpatch.pl
is complaining here.

Regards,
Kamil

>  	int bar_len, i, len = max_len - 2;
>  	const int w = 8;
>  
> -- 
> 2.39.2
> 
