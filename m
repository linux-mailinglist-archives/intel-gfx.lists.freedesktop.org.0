Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 146197C01AD
	for <lists+intel-gfx@lfdr.de>; Tue, 10 Oct 2023 18:32:08 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 4EEEC10E3A7;
	Tue, 10 Oct 2023 16:32:06 +0000 (UTC)
X-Original-To: Intel-gfx@lists.freedesktop.org
Delivered-To: Intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [134.134.136.100])
 by gabe.freedesktop.org (Postfix) with ESMTPS id B32B810E3A7;
 Tue, 10 Oct 2023 16:32:04 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1696955524; x=1728491524;
 h=date:from:to:cc:subject:message-id:references:
 mime-version:content-transfer-encoding:in-reply-to;
 bh=A23Tycp+Kby0GHHbGBG1zFX/+lOBgJGcPSc1LbYxWjY=;
 b=D7xP0bc/c4L4NhqbsSicyCx7YZbcQZMhkHwCRiMsKtnwf5HxEep9NPM/
 rmmu/ChVD9o3p21DPBrpS8TNcjTvS2Atu7FAJ7hXHFo1QuLlDylAy9190
 +heX+N7+bfa93T6BGt9vEEN2NnZX97Ev9+Fmn9JAsMhHQcg8NxlGEljJn
 x+XBBgP65lUsSYlMQKyeJ+kO1/cuKvk54A1Yd+PmBI+RAkvV9jjEEEq+M
 FiJeqTBSB8dduh1x1V/KiR/9WXTBAdnI6fVHISMZtSg90de/4XO44ahoe
 yVBItyPCknTnLZ/u/iUX4bPSoH62fzd0w5k0LzIijfE/pNNWUZQ8VAIwp w==;
X-IronPort-AV: E=McAfee;i="6600,9927,10859"; a="450942629"
X-IronPort-AV: E=Sophos;i="6.03,213,1694761200"; d="scan'208";a="450942629"
Received: from orsmga008.jf.intel.com ([10.7.209.65])
 by orsmga105.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 10 Oct 2023 09:32:04 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10859"; a="782940286"
X-IronPort-AV: E=Sophos;i="6.03,213,1694761200"; d="scan'208";a="782940286"
Received: from kamilkon-desk.igk.intel.com (HELO localhost) ([10.102.138.187])
 by orsmga008-auth.jf.intel.com with
 ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 10 Oct 2023 09:32:02 -0700
Date: Tue, 10 Oct 2023 18:31:59 +0200
From: Kamil Konieczny <kamil.konieczny@linux.intel.com>
To: igt-dev@lists.freedesktop.org
Message-ID: <20231010163159.g6v66hjw3jzaawsr@kamilkon-desk.igk.intel.com>
Mail-Followup-To: Kamil Konieczny <kamil.konieczny@linux.intel.com>,
 igt-dev@lists.freedesktop.org,
 Tvrtko Ursulin <tvrtko.ursulin@linux.intel.com>,
 Intel-gfx@lists.freedesktop.org,
 Tvrtko Ursulin <tvrtko.ursulin@intel.com>
References: <20231010110714.749239-1-tvrtko.ursulin@linux.intel.com>
 <20231010110714.749239-3-tvrtko.ursulin@linux.intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <20231010110714.749239-3-tvrtko.ursulin@linux.intel.com>
Subject: Re: [Intel-gfx] [igt-dev] [PATCH i-g-t 2/4] tools/intel_gpu_top:
 Fix client layout on first sample period
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
On 2023-10-10 at 12:07:12 +0100, Tvrtko Ursulin wrote:
> From: Tvrtko Ursulin <tvrtko.ursulin@intel.com>
> 
> When I moved the client name to be last, I did not account for the fact
> current code skips showing engine utilisation until at least two sampling
> periods have passed. Consequence of this is that client name gets printed
> as the second field and not under the "NAME" column header.
> 
> Fix it by emitting spaces instead of engine utilisation until two samples
> have been collected.
> 
> Signed-off-by: Tvrtko Ursulin <tvrtko.ursulin@intel.com>

Reviewed-by: Kamil Konieczny <kamil.konieczny@linux.intel.com>

> ---
>  tools/intel_gpu_top.c | 13 +++++++++----
>  1 file changed, 9 insertions(+), 4 deletions(-)
> 
> diff --git a/tools/intel_gpu_top.c b/tools/intel_gpu_top.c
> index 60fe06917531..c5abd0c92155 100644
> --- a/tools/intel_gpu_top.c
> +++ b/tools/intel_gpu_top.c
> @@ -928,12 +928,14 @@ static void free_display_clients(struct igt_drm_clients *clients)
>  
>  static const char *bars[] = { " ", "▏", "▎", "▍", "▌", "▋", "▊", "▉", "█" };
>  
> -static void n_spaces(const unsigned int n)
> +static unsigned int n_spaces(const unsigned int n)
>  {
>  	unsigned int i;
>  
>  	for (i = 0; i < n; i++)
>  		putchar(' ');
> +
> +	return n;
>  }
>  
>  static void
> @@ -2043,14 +2045,17 @@ print_client(struct igt_drm_client *c, struct engines *engines, double t, int li
>  
>  		len = printf("%*s ", clients->max_pid_len, c->pid_str);
>  
> -		for (i = 0;
> -		     c->samples > 1 && i <= iclients->classes.max_engine_id;
> -		     i++) {
> +		for (i = 0; i <= iclients->classes.max_engine_id; i++) {
>  			double pct, max;
>  
>  			if (!iclients->classes.capacity[i])
>  				continue;
>  
> +			if (c->samples < 2) {
> +				len += n_spaces(*class_w);
> +				continue;
> +			}
> +
>  			pct = (double)c->val[i] / period_us / 1e3 * 100;
>  
>  			/*
> -- 
> 2.39.2
> 
