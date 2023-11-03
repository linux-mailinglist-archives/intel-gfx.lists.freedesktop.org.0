Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 67AF17E0887
	for <lists+intel-gfx@lfdr.de>; Fri,  3 Nov 2023 19:54:30 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id A8F4710E196;
	Fri,  3 Nov 2023 18:54:28 +0000 (UTC)
X-Original-To: Intel-gfx@lists.freedesktop.org
Delivered-To: Intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [134.134.136.31])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 97BE010E195;
 Fri,  3 Nov 2023 18:54:26 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1699037666; x=1730573666;
 h=date:from:to:cc:subject:message-id:references:
 mime-version:in-reply-to;
 bh=8RO7Z4VUToZ/GZnKHaLbg1HibmI8PDnjldI2hIXL9Bg=;
 b=Gp//V2ih3vSfoJbQVRJYd4I+KCyb5uyPWbNOP3xQyLBgZDrYCCQwAx3E
 TRmTrA5JgS0OHm8NcYATDrOoymxwKapEKqUp6xwKMivyl6HDTVa/LRmlE
 LMGiY/v6PHMkMTNRgIMxfHhBAKBPjYj4I5NkUtOKcM4lq99iLQdB2FXVJ
 0qtVARZYGF4ZOf/cf8A/7e0DQzdgnC2h7+JgwYLSiEAMsMRkvQYVdVsmY
 ZNgBz713Fg8OURoZLfgRhf5AhjGl7Z3B8JSu5pZ7zxVa3I9BbdsDG1abA
 S4pTmHjEbyVWz/Ei04xKcTLE9LD3HXOnHuzDx/i40nwww8g+E/mPFZMmo Q==;
X-IronPort-AV: E=McAfee;i="6600,9927,10883"; a="453299247"
X-IronPort-AV: E=Sophos;i="6.03,275,1694761200"; d="scan'208";a="453299247"
Received: from fmsmga003.fm.intel.com ([10.253.24.29])
 by orsmga104.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 03 Nov 2023 11:54:25 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10883"; a="852347419"
X-IronPort-AV: E=Sophos;i="6.03,275,1694761200"; d="scan'208";a="852347419"
Received: from kamilkon-desk.igk.intel.com (HELO localhost) ([10.102.138.187])
 by fmsmga003-auth.fm.intel.com with
 ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 03 Nov 2023 11:54:24 -0700
Date: Fri, 3 Nov 2023 19:54:21 +0100
From: Kamil Konieczny <kamil.konieczny@linux.intel.com>
To: igt-dev@lists.freedesktop.org
Message-ID: <20231103185421.wnya45pgov4pi6g4@kamilkon-desk.igk.intel.com>
Mail-Followup-To: Kamil Konieczny <kamil.konieczny@linux.intel.com>,
 igt-dev@lists.freedesktop.org,
 Tvrtko Ursulin <tvrtko.ursulin@linux.intel.com>,
 Intel-gfx@lists.freedesktop.org,
 Tvrtko Ursulin <tvrtko.ursulin@intel.com>
References: <20231012081547.852052-1-tvrtko.ursulin@linux.intel.com>
 <20231012081547.852052-6-tvrtko.ursulin@linux.intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
In-Reply-To: <20231012081547.852052-6-tvrtko.ursulin@linux.intel.com>
Subject: Re: [Intel-gfx] [PATCH i-g-t 5/9] lib/igt_drm_clients: Fix client
 id type confusion
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
On 2023-10-12 at 09:15:43 +0100, Tvrtko Ursulin wrote:
> From: Tvrtko Ursulin <tvrtko.ursulin@intel.com>
> 
> Igt_drm_fdinfo defines it as an unsigned long so it is best that it
> matches here as well.
> 
> Signed-off-by: Tvrtko Ursulin <tvrtko.ursulin@intel.com>

Reviewed-by: Kamil Konieczny <kamil.konieczny@linux.intel.com>

> ---
>  lib/igt_drm_clients.c | 2 +-
>  lib/igt_drm_clients.h | 2 +-
>  tools/intel_gpu_top.c | 2 +-
>  3 files changed, 3 insertions(+), 3 deletions(-)
> 
> diff --git a/lib/igt_drm_clients.c b/lib/igt_drm_clients.c
> index 47ad137d5f1f..da51d7335b2b 100644
> --- a/lib/igt_drm_clients.c
> +++ b/lib/igt_drm_clients.c
> @@ -49,7 +49,7 @@ struct igt_drm_clients *igt_drm_clients_init(void *private_data)
>  static struct igt_drm_client *
>  igt_drm_clients_find(struct igt_drm_clients *clients,
>  		     enum igt_drm_client_status status,
> -		     unsigned int drm_minor, unsigned int id)
> +		     unsigned int drm_minor, unsigned long id)
>  {
>  	unsigned int start, num;
>  	struct igt_drm_client *c;
> diff --git a/lib/igt_drm_clients.h b/lib/igt_drm_clients.h
> index 07bd236d43bf..cd37f8508b20 100644
> --- a/lib/igt_drm_clients.h
> +++ b/lib/igt_drm_clients.h
> @@ -56,7 +56,7 @@ struct igt_drm_client {
>  	enum igt_drm_client_status status;
>  	struct igt_drm_client_regions *regions; /* Memory regions present in this client, to map with memory usage. */
>  	struct igt_drm_client_engines *engines; /* Engines used by this client, to map with busynees data. */
> -	unsigned int id; /* DRM client id from fdinfo. */
> +	unsigned long id; /* DRM client id from fdinfo. */
>  	unsigned int drm_minor; /* DRM minor of this client. */
>  	unsigned int pid; /* PID which has this DRM fd open. */
>  	char pid_str[10]; /* Cached PID representation. */
> diff --git a/tools/intel_gpu_top.c b/tools/intel_gpu_top.c
> index 00506c63db4e..34fa99235e11 100644
> --- a/tools/intel_gpu_top.c
> +++ b/tools/intel_gpu_top.c
> @@ -2106,7 +2106,7 @@ print_client(struct igt_drm_client *c, struct engines *engines, double t, int li
>  	} else if (output_mode == JSON) {
>  		char buf[64];
>  
> -		snprintf(buf, sizeof(buf), "%u", c->id);
> +		snprintf(buf, sizeof(buf), "%lu", c->id);
>  		pops->open_struct(buf);
>  
>  		__json_add_member("name", c->print_name);
> -- 
> 2.39.2
> 
