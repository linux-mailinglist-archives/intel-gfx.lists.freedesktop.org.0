Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 33B833142A2
	for <lists+intel-gfx@lfdr.de>; Mon,  8 Feb 2021 23:12:10 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 163356EA09;
	Mon,  8 Feb 2021 22:12:04 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-pj1-x1034.google.com (mail-pj1-x1034.google.com
 [IPv6:2607:f8b0:4864:20::1034])
 by gabe.freedesktop.org (Postfix) with ESMTPS id E4BB86E57E
 for <intel-gfx@lists.freedesktop.org>; Mon,  8 Feb 2021 22:12:02 +0000 (UTC)
Received: by mail-pj1-x1034.google.com with SMTP id l18so415991pji.3
 for <intel-gfx@lists.freedesktop.org>; Mon, 08 Feb 2021 14:12:02 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=chromium.org; s=google;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to;
 bh=22MMalabtZ2RQbKXO0pIa+HsXMknjHt8lQOcrFaJITI=;
 b=BUPGvhj29ArCVqpTBBGTpjgjXRBPU4yITXWWaQ/rnmH7B15mgCUwXcg0YSXvF+Mdlq
 QbcA4xJcxwLVZb5j6sb/JgpqMTSmVFGWeF5rPv1+SIgr8Q7vXvw/EqGevklMk6dMV0l+
 LL3ZUZlKf/5KflbQYMcuu02koP9awXcAG5sJg=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to;
 bh=22MMalabtZ2RQbKXO0pIa+HsXMknjHt8lQOcrFaJITI=;
 b=gR/BE7oc47BnX23jrsRoY0fyYaHl0TUWBpxJEq2x9JLt/k3ja3VvZBiU1ZquxtE39I
 8FZ4TXl80qlUUkXzcAniXRerh/bLUht8w9uQ15YtReaxm8lv9vGNaVXvYQvpqkAWcaYG
 pncBRsljf/rXFLv+3y39+RwrCtQJWi+FJ1IuCL69uq4BJWQa1/o7jvcmJ9iuZeqKuItU
 yW1t0auI67In+5Dwc2Dw/QLTNj3EKCLCXk3Rd0WDA3WRhZ406xWj9qqWkUvzqtGCdrkU
 X7Fn1A98WogOeBmmS2rwFa/4/t1gU8Ujorwu1fjCOpmwKkUc7LMlwLd08nYbASRuk8p9
 CYkw==
X-Gm-Message-State: AOAM531saaxKP8logGS86g31s1zzcnVgCqIZvv74EDLNS//ihXhIcg7S
 oclZtqEvPFM8hQLD+fE+Z5Fyew==
X-Google-Smtp-Source: ABdhPJwtaPVt/FqaLjFA4nw63Drtkit86I5h199UsYenko/Etc1SLxtreZ9TZGJBuA6rBs4JlCAyCw==
X-Received: by 2002:a17:903:3109:b029:e2:86d3:bec with SMTP id
 w9-20020a1709033109b02900e286d30becmr18493164plc.49.1612822322542; 
 Mon, 08 Feb 2021 14:12:02 -0800 (PST)
Received: from www.outflux.net (smtp.outflux.net. [198.145.64.163])
 by smtp.gmail.com with ESMTPSA id lr7sm247827pjb.56.2021.02.08.14.12.01
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Mon, 08 Feb 2021 14:12:01 -0800 (PST)
Date: Mon, 8 Feb 2021 14:12:00 -0800
From: Kees Cook <keescook@chromium.org>
To: Chris Wilson <chris@chris-wilson.co.uk>
Message-ID: <202102081411.73A442F17@keescook>
References: <20210205163752.11932-1-chris@chris-wilson.co.uk>
 <20210205220012.1983-1-chris@chris-wilson.co.uk>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20210205220012.1983-1-chris@chris-wilson.co.uk>
Subject: Re: [Intel-gfx] [PATCH v3] kcmp: Support selection of SYS_kcmp
 without CHECKPOINT_RESTORE
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
Cc: Will Drewry <wad@chromium.org>, Daniel Vetter <daniel.vetter@ffwll.ch>,
 intel-gfx@lists.freedesktop.org, Rasmus Villemoes <linux@rasmusvillemoes.dk>,
 linux-kernel@vger.kernel.org, dri-devel@lists.freedesktop.org,
 Andy Lutomirski <luto@amacapital.net>, Cyrill Gorcunov <gorcunov@gmail.com>,
 stable@vger.kernel.org, Andrew Morton <akpm@linux-foundation.org>,
 Lucas Stach <l.stach@pengutronix.de>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Fri, Feb 05, 2021 at 10:00:12PM +0000, Chris Wilson wrote:
> Userspace has discovered the functionality offered by SYS_kcmp and has
> started to depend upon it. In particular, Mesa uses SYS_kcmp for
> os_same_file_description() in order to identify when two fd (e.g. device
> or dmabuf) point to the same struct file. Since they depend on it for
> core functionality, lift SYS_kcmp out of the non-default
> CONFIG_CHECKPOINT_RESTORE into the selectable syscall category.
> 
> Rasmus Villemoes also pointed out that systemd uses SYS_kcmp to
> deduplicate the per-service file descriptor store.
> 
> Note that some distributions such as Ubuntu are already enabling
> CHECKPOINT_RESTORE in their configs and so, by extension, SYS_kcmp.
> 
> References: https://gitlab.freedesktop.org/drm/intel/-/issues/3046
> Signed-off-by: Chris Wilson <chris@chris-wilson.co.uk>

Thanks!

Reviewed-by: Kees Cook <keescook@chromium.org>

-Kees

> Cc: Kees Cook <keescook@chromium.org>
> Cc: Andy Lutomirski <luto@amacapital.net>
> Cc: Will Drewry <wad@chromium.org>
> Cc: Andrew Morton <akpm@linux-foundation.org>
> Cc: Dave Airlie <airlied@gmail.com>
> Cc: Daniel Vetter <daniel@ffwll.ch>
> Cc: Lucas Stach <l.stach@pengutronix.de>
> Cc: Rasmus Villemoes <linux@rasmusvillemoes.dk>
> Cc: Cyrill Gorcunov <gorcunov@gmail.com>
> Cc: stable@vger.kernel.org
> Acked-by: Daniel Vetter <daniel.vetter@ffwll.ch> # DRM depends on kcmp
> Acked-by: Rasmus Villemoes <linux@rasmusvillemoes.dk> # systemd uses kcmp
> 
> ---
> v2:
>   - Default n.
>   - Borrrow help message from man kcmp.
>   - Export get_epoll_tfile_raw_ptr() for CONFIG_KCMP
> v3:
>   - Select KCMP for CONFIG_DRM
> ---
>  drivers/gpu/drm/Kconfig                       |  3 +++
>  fs/eventpoll.c                                |  4 ++--
>  include/linux/eventpoll.h                     |  2 +-
>  init/Kconfig                                  | 11 +++++++++++
>  kernel/Makefile                               |  2 +-
>  tools/testing/selftests/seccomp/seccomp_bpf.c |  2 +-
>  6 files changed, 19 insertions(+), 5 deletions(-)
> 
> diff --git a/drivers/gpu/drm/Kconfig b/drivers/gpu/drm/Kconfig
> index 0973f408d75f..af6c6d214d91 100644
> --- a/drivers/gpu/drm/Kconfig
> +++ b/drivers/gpu/drm/Kconfig
> @@ -15,6 +15,9 @@ menuconfig DRM
>  	select I2C_ALGOBIT
>  	select DMA_SHARED_BUFFER
>  	select SYNC_FILE
> +# gallium uses SYS_kcmp for os_same_file_description() to de-duplicate
> +# device and dmabuf fd. Let's make sure that is available for our userspace.
> +	select KCMP
>  	help
>  	  Kernel-level support for the Direct Rendering Infrastructure (DRI)
>  	  introduced in XFree86 4.0. If you say Y here, you need to select
> diff --git a/fs/eventpoll.c b/fs/eventpoll.c
> index a829af074eb5..3196474cbe24 100644
> --- a/fs/eventpoll.c
> +++ b/fs/eventpoll.c
> @@ -979,7 +979,7 @@ static struct epitem *ep_find(struct eventpoll *ep, struct file *file, int fd)
>  	return epir;
>  }
>  
> -#ifdef CONFIG_CHECKPOINT_RESTORE
> +#ifdef CONFIG_KCMP
>  static struct epitem *ep_find_tfd(struct eventpoll *ep, int tfd, unsigned long toff)
>  {
>  	struct rb_node *rbp;
> @@ -1021,7 +1021,7 @@ struct file *get_epoll_tfile_raw_ptr(struct file *file, int tfd,
>  
>  	return file_raw;
>  }
> -#endif /* CONFIG_CHECKPOINT_RESTORE */
> +#endif /* CONFIG_KCMP */
>  
>  /**
>   * Adds a new entry to the tail of the list in a lockless way, i.e.
> diff --git a/include/linux/eventpoll.h b/include/linux/eventpoll.h
> index 0350393465d4..593322c946e6 100644
> --- a/include/linux/eventpoll.h
> +++ b/include/linux/eventpoll.h
> @@ -18,7 +18,7 @@ struct file;
>  
>  #ifdef CONFIG_EPOLL
>  
> -#ifdef CONFIG_CHECKPOINT_RESTORE
> +#ifdef CONFIG_KCMP
>  struct file *get_epoll_tfile_raw_ptr(struct file *file, int tfd, unsigned long toff);
>  #endif
>  
> diff --git a/init/Kconfig b/init/Kconfig
> index b77c60f8b963..9cc7436b2f73 100644
> --- a/init/Kconfig
> +++ b/init/Kconfig
> @@ -1194,6 +1194,7 @@ endif # NAMESPACES
>  config CHECKPOINT_RESTORE
>  	bool "Checkpoint/restore support"
>  	select PROC_CHILDREN
> +	select KCMP
>  	default n
>  	help
>  	  Enables additional kernel features in a sake of checkpoint/restore.
> @@ -1737,6 +1738,16 @@ config ARCH_HAS_MEMBARRIER_CALLBACKS
>  config ARCH_HAS_MEMBARRIER_SYNC_CORE
>  	bool
>  
> +config KCMP
> +	bool "Enable kcmp() system call" if EXPERT
> +	help
> +	  Enable the kernel resource comparison system call. It provides
> +	  user-space with the ability to compare two processes to see if they
> +	  share a common resource, such as a file descriptor or even virtual
> +	  memory space.
> +
> +	  If unsure, say N.
> +
>  config RSEQ
>  	bool "Enable rseq() system call" if EXPERT
>  	default y
> diff --git a/kernel/Makefile b/kernel/Makefile
> index aa7368c7eabf..320f1f3941b7 100644
> --- a/kernel/Makefile
> +++ b/kernel/Makefile
> @@ -51,7 +51,7 @@ obj-y += livepatch/
>  obj-y += dma/
>  obj-y += entry/
>  
> -obj-$(CONFIG_CHECKPOINT_RESTORE) += kcmp.o
> +obj-$(CONFIG_KCMP) += kcmp.o
>  obj-$(CONFIG_FREEZER) += freezer.o
>  obj-$(CONFIG_PROFILING) += profile.o
>  obj-$(CONFIG_STACKTRACE) += stacktrace.o
> diff --git a/tools/testing/selftests/seccomp/seccomp_bpf.c b/tools/testing/selftests/seccomp/seccomp_bpf.c
> index 26c72f2b61b1..1b6c7d33c4ff 100644
> --- a/tools/testing/selftests/seccomp/seccomp_bpf.c
> +++ b/tools/testing/selftests/seccomp/seccomp_bpf.c
> @@ -315,7 +315,7 @@ TEST(kcmp)
>  	ret = __filecmp(getpid(), getpid(), 1, 1);
>  	EXPECT_EQ(ret, 0);
>  	if (ret != 0 && errno == ENOSYS)
> -		SKIP(return, "Kernel does not support kcmp() (missing CONFIG_CHECKPOINT_RESTORE?)");
> +		SKIP(return, "Kernel does not support kcmp() (missing CONFIG_KCMP?)");
>  }
>  
>  TEST(mode_strict_support)
> -- 
> 2.20.1
> 

-- 
Kees Cook
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
