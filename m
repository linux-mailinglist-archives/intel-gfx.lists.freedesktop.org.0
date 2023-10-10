Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 0645D7C01E6
	for <lists+intel-gfx@lfdr.de>; Tue, 10 Oct 2023 18:45:27 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 49C0710E3AC;
	Tue, 10 Oct 2023 16:45:25 +0000 (UTC)
X-Original-To: Intel-gfx@lists.freedesktop.org
Delivered-To: Intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.55.52.120])
 by gabe.freedesktop.org (Postfix) with ESMTPS id E154210E3B0;
 Tue, 10 Oct 2023 16:45:23 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1696956323; x=1728492323;
 h=date:from:to:cc:subject:message-id:references:
 mime-version:in-reply-to;
 bh=SKEkbRD9n7OmSjNLe5p/QE07D9HRB8bg7FKcJuo1MT8=;
 b=ENfRyOogjrAsZ7KE8NJUVcUyysGeXgmWzcSjdKyRfTResDMlVLZRQarZ
 07ckinX1URhSbETR3d/QHSXAEfAEqn2iZXhnhSYlcSH8RyYkZkktTcOml
 u6/OEE03XV/g9cs7qO/adp1BnUIqynC4Uhk3eljCKnsYLOGrSpkJmCq5/
 Vnfusg3FLyYNlfAyOGaQo4DwyZZV6/vMmrt8Q0P+/LlBbtqXM8SIlF+OU
 q4eVMMtpu3OCPTI5OAjqbbLi0CpsGfUAY8j+7zlcXJQsEgBZjIW4+4jsQ
 XUCN5gaS+VbJq3/Lpzq0lb1Tgu3zJfVMwRvi8BT02DUd9ZArVBcz2sg0N w==;
X-IronPort-AV: E=McAfee;i="6600,9927,10859"; a="383320827"
X-IronPort-AV: E=Sophos;i="6.03,213,1694761200"; d="scan'208";a="383320827"
Received: from orsmga004.jf.intel.com ([10.7.209.38])
 by fmsmga104.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 10 Oct 2023 09:44:02 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10859"; a="877289931"
X-IronPort-AV: E=Sophos;i="6.03,213,1694761200"; d="scan'208";a="877289931"
Received: from kamilkon-desk.igk.intel.com (HELO localhost) ([10.102.138.187])
 by orsmga004-auth.jf.intel.com with
 ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 10 Oct 2023 09:44:00 -0700
Date: Tue, 10 Oct 2023 18:43:36 +0200
From: Kamil Konieczny <kamil.konieczny@linux.intel.com>
To: igt-dev@lists.freedesktop.org
Message-ID: <20231010164336.dikudseydggrrux7@kamilkon-desk.igk.intel.com>
Mail-Followup-To: Kamil Konieczny <kamil.konieczny@linux.intel.com>,
 igt-dev@lists.freedesktop.org,
 Tvrtko Ursulin <tvrtko.ursulin@linux.intel.com>,
 Intel-gfx@lists.freedesktop.org,
 Tvrtko Ursulin <tvrtko.ursulin@intel.com>
References: <20231010110714.749239-1-tvrtko.ursulin@linux.intel.com>
 <20231010110714.749239-5-tvrtko.ursulin@linux.intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
In-Reply-To: <20231010110714.749239-5-tvrtko.ursulin@linux.intel.com>
Subject: Re: [Intel-gfx] [PATCH i-g-t 4/4] tools/intel_gpu_top: Handle
 narrow terminals more gracefully
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
On 2023-10-10 at 12:07:14 +0100, Tvrtko Ursulin wrote:
> From: Tvrtko Ursulin <tvrtko.ursulin@intel.com>
> 
> Instead of asserting just skip trying to print columns when terminal is
> too narrow.
> 
> At the same time fix some type confusion to fix calculations going huge.
> 
> Signed-off-by: Tvrtko Ursulin <tvrtko.ursulin@intel.com>
> Closes: https://gitlab.freedesktop.org/drm/igt-gpu-tools/-/issues/143

Did you tested this in screensaver? I mean running intel_gpu_top
in terminal windows under X (Gnome or other) and leaving desktop
unattanded, entering screen saver mode (possible with screen
turned off) and then re-enabling screen?

> ---
>  tools/intel_gpu_top.c | 12 +++++++-----
>  1 file changed, 7 insertions(+), 5 deletions(-)
> 
> diff --git a/tools/intel_gpu_top.c b/tools/intel_gpu_top.c
> index 472ce3f13ba9..6d1397cb8214 100644
> --- a/tools/intel_gpu_top.c
> +++ b/tools/intel_gpu_top.c
> @@ -926,7 +926,7 @@ static void free_display_clients(struct igt_drm_clients *clients)
>  	free(clients);
>  }
>  
> -static unsigned int n_spaces(const unsigned int n)
> +static int n_spaces(const int n)
--------- ^^^
Could you make it int at your first patch touching this function?

With or without this suggestion,
Reviewed-by: Kamil Konieczny <kamil.konieczny@linux.intel.com>

Regards,
Kamil

>  {
>  	static const char *spaces[] = {
>  		" ",
> @@ -950,7 +950,7 @@ static unsigned int n_spaces(const unsigned int n)
>  		"                   ",
>  #define MAX_SPACES 19
>  	};
> -	unsigned int i, r = n;
> +	int i, r = n;
>  
>  	while (r) {
>  		if (r > MAX_SPACES)
> @@ -972,7 +972,8 @@ print_percentage_bar(double percent, double max, int max_len, bool numeric)
>  	int bar_len, i, len = max_len - 2;
>  	const int w = 8;
>  
> -	assert(max_len > 0);
> +	if (len < 2) /* For edge lines '|' */
> +		return;
>  
>  	bar_len = ceil(w * percent * len / max);
>  	if (bar_len > w * len)
> @@ -986,6 +987,8 @@ print_percentage_bar(double percent, double max, int max_len, bool numeric)
>  		printf("%s", bars[i]);
>  
>  	len -= (bar_len + (w - 1)) / w;
> +	if (len < 1)
> +		return;
>  	n_spaces(len);
>  
>  	putchar('|');
> @@ -2001,8 +2004,7 @@ print_clients_header(struct igt_drm_clients *clients, int lines,
>  				 4 : clients->max_name_len; /* At least "NAME" */
>  
>  	if (output_mode == INTERACTIVE) {
> -		unsigned int num_active = 0;
> -		int len;
> +		int len, num_active = 0;
>  
>  		if (lines++ >= con_h)
>  			return lines;
> -- 
> 2.39.2
> 
