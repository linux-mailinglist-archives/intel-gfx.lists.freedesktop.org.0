Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id CFCE0A6C5D3
	for <lists+intel-gfx@lfdr.de>; Fri, 21 Mar 2025 23:19:41 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id D84F110E843;
	Fri, 21 Mar 2025 22:19:39 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="XKZZ4TCB";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.11])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 4402310E843
 for <intel-gfx@lists.freedesktop.org>; Fri, 21 Mar 2025 22:19:38 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1742595579; x=1774131579;
 h=date:from:to:cc:subject:message-id:references:
 mime-version:content-transfer-encoding:in-reply-to;
 bh=FtELtLdPcFy0WStsM+6tEbn3bKCIzkJuFUKgQ/gU4LI=;
 b=XKZZ4TCBDlSnTRh6SJAIpeUPVcVi0Togsz4Gr57yyTquXOfClj7LAWyv
 EHqUykKEtRMhb2qXMFqMIocHVVnKbKjAhMwoWvF3P7PqCEXMdgCdpLeRs
 unX0mu5yqfYvmtS1v0lyVKN3YDr4Zeza+mXrg3HiDFWlbmVFUCYX7tVQx
 B217UaTZXSEsrFfWDgbKCF4p1fL62vpEkBmYrRdXJxdxtb7IPxnhb4DhC
 FQpanpaBs/faPlQZfIJbrJYkCUMchE7D/PMq41gqeNQLp1baeOJKx9oav
 ibvg8e51u+i0tK37n0zzNs30KOHxRwtvMcps298abFB0WZEcjbQhLLv/O A==;
X-CSE-ConnectionGUID: cfbMACjkRXqJkXqcWrzJXw==
X-CSE-MsgGUID: X9ztB0vKQaeIDMx+rrGwWA==
X-IronPort-AV: E=McAfee;i="6700,10204,11380"; a="54089619"
X-IronPort-AV: E=Sophos;i="6.14,266,1736841600"; d="scan'208";a="54089619"
Received: from orviesa005.jf.intel.com ([10.64.159.145])
 by orvoesa103.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 21 Mar 2025 15:19:38 -0700
X-CSE-ConnectionGUID: 4374wmbITwCmrbjR5j8s+A==
X-CSE-MsgGUID: +Yg54EmjQOOtIvtg31rtAw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.14,266,1736841600"; d="scan'208";a="128741343"
Received: from stinkpipe.fi.intel.com (HELO stinkbox) ([10.237.72.74])
 by orviesa005.jf.intel.com with SMTP; 21 Mar 2025 15:19:36 -0700
Received: by stinkbox (sSMTP sendmail emulation);
 Sat, 22 Mar 2025 00:19:35 +0200
Date: Sat, 22 Mar 2025 00:19:35 +0200
From: Ville =?iso-8859-1?Q?Syrj=E4l=E4?= <ville.syrjala@linux.intel.com>
To: "Enrico Weigelt, metux IT consult" <info@metux.net>
Cc: intel-gfx@lists.freedesktop.org
Subject: Re: [PATCH 14/16] Define __container_of only if not defined yet.
Message-ID: <Z93l9whslKC-KeTR@intel.com>
References: <20250304155809.30399-1-info@metux.net>
 <20250304155809.30399-15-info@metux.net>
MIME-Version: 1.0
Content-Type: text/plain; charset=iso-8859-1
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <20250304155809.30399-15-info@metux.net>
X-Patchwork-Hint: comment
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

On Tue, Mar 04, 2025 at 04:58:07PM +0100, Enrico Weigelt, metux IT consult wrote:
> Silence warnings.
> 
> Signed-off-by: Enrico Weigelt, metux IT consult <info@metux.net>
> ---
>  benchmarks/dri3-swap.c | 2 ++
>  src/intel_list.h       | 3 +++
>  test/present-speed.c   | 2 ++

Looks like I never added the benchmarks and tests to the meson
build. So that could partially explain why I'm not seeing this.
But intel_list.h is used for real so I'm confused as to why
you are seeing some issues that I can't see.

Who is defining this in your case?

>  3 files changed, 7 insertions(+)
> 
> diff --git a/benchmarks/dri3-swap.c b/benchmarks/dri3-swap.c
> index 4dd423b3..fa8ec34e 100644
> --- a/benchmarks/dri3-swap.c
> +++ b/benchmarks/dri3-swap.c
> @@ -110,8 +110,10 @@ list_move(struct list *list, struct list *head)
>  	}
>  }
> 
> +#ifndef __container_of
>  #define __container_of(ptr, sample, member)				\
>      (void *)((char *)(ptr) - ((char *)&(sample)->member - (char *)(sample)))
> +#endif
> 
>  #define list_for_each_entry(pos, head, member)				\
>      for (pos = __container_of((head)->next, pos, member);		\
> diff --git a/src/intel_list.h b/src/intel_list.h
> index c8a3187a..f0fe7af9 100644
> --- a/src/intel_list.h
> +++ b/src/intel_list.h
> @@ -305,8 +305,11 @@ list_is_empty(const struct list *head)
>  #define list_last_entry(ptr, type, member) \
>      list_entry((ptr)->prev, type, member)
> 
> +#ifndef __container_of
>  #define __container_of(ptr, sample, member)				\
>      (void *)((char *)(ptr) - ((char *)&(sample)->member - (char *)(sample)))
> +#endif
> +
>  /**
>   * Loop through the list given by head and set pos to struct in the list.
>   *
> diff --git a/test/present-speed.c b/test/present-speed.c
> index eccde931..7765aa94 100644
> --- a/test/present-speed.c
> +++ b/test/present-speed.c
> @@ -108,8 +108,10 @@ list_move(struct list *list, struct list *head)
>  	}
>  }
> 
> +#ifndef __container_of
>  #define __container_of(ptr, sample, member)				\
>      (void *)((char *)(ptr) - ((char *)&(sample)->member - (char *)(sample)))
> +#endif
> 
>  #define list_for_each_entry(pos, head, member)				\
>      for (pos = __container_of((head)->next, pos, member);		\
> --
> 2.39.5

-- 
Ville Syrjälä
Intel
