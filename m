Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 7992B1E77FD
	for <lists+intel-gfx@lfdr.de>; Fri, 29 May 2020 10:14:54 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id DA8956E89A;
	Fri, 29 May 2020 08:14:52 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-pf1-x441.google.com (mail-pf1-x441.google.com
 [IPv6:2607:f8b0:4864:20::441])
 by gabe.freedesktop.org (Postfix) with ESMTPS id A785D6E89B
 for <intel-gfx@lists.freedesktop.org>; Fri, 29 May 2020 08:14:52 +0000 (UTC)
Received: by mail-pf1-x441.google.com with SMTP id d66so935445pfd.6
 for <intel-gfx@lists.freedesktop.org>; Fri, 29 May 2020 01:14:52 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=chromium.org; s=google;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to;
 bh=SKFY0Nk0lzZnsZYwS+0R6Jqxi22p/kGuawoexff+HFM=;
 b=GEzFK/LKfNFU6UJpyxaByBf5ZKjfm5yaMIo+HTxEbbGqjeJ2NKC1wQHBTEziYuM2/c
 zdLFnp7ddR2lTanx16yKCGNuhGrn+P++lavG8tEoUTeqsy/vItUpiclup3Hw3sRiYEui
 6wOwumpgIOr98WMOxg6/ewEsbQVEUFI/4pWuI=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to;
 bh=SKFY0Nk0lzZnsZYwS+0R6Jqxi22p/kGuawoexff+HFM=;
 b=bY74q81+MrWJnQmf7zR5HWp5Vva2byN3a09zqYzRjULtjklbRUQoVJ38Tfef1yiqyS
 VYczq38ZRWCgrmeNlisDPyucKd3m/4X+RB/8aQNeOYvZzg9btSwXoQn4xByS7AwrDaS3
 xLizmbikr3RfzYzTfS/T/GOdRmNbGBwDwtFeDqkesEMDtP8OSegYeVlVlx/HJcBYR83H
 tvytxL6x0SVR1nO+hQurxZXG6zS3m6Rx4ei0f0Dv9GdJtYO8sh6qYJgRibxnGmnFHD9M
 1Yx4bXytkZOX1gKViBoAFkbEU2tABnoDkFBDNbT2gVjZKLDUyuMK4poG3Y0kHetEXK7h
 UtiA==
X-Gm-Message-State: AOAM530pkYTt5OKq8Nazuvut4kOzx1UFDS8JjuVP7t1ODcPvlk3b836m
 VrZ9PJaqdcXJfKeG/HX4dyCV1g==
X-Google-Smtp-Source: ABdhPJyK2FUwFmtdobHKhZ8I1QHoKW4hEbYErArP63rQknnJfHipw8t38GV0zrMxKfzrK+yxeI5VDw==
X-Received: by 2002:a62:8703:: with SMTP id i3mr7543110pfe.212.1590740092307; 
 Fri, 29 May 2020 01:14:52 -0700 (PDT)
Received: from www.outflux.net (smtp.outflux.net. [198.145.64.163])
 by smtp.gmail.com with ESMTPSA id b140sm6448091pfb.119.2020.05.29.01.14.51
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Fri, 29 May 2020 01:14:51 -0700 (PDT)
Date: Fri, 29 May 2020 01:14:50 -0700
From: Kees Cook <keescook@chromium.org>
To: Luis Chamberlain <mcgrof@kernel.org>
Message-ID: <202005290113.53AEED2176@keescook>
References: <20200529074108.16928-1-mcgrof@kernel.org>
 <20200529074108.16928-14-mcgrof@kernel.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200529074108.16928-14-mcgrof@kernel.org>
Subject: Re: [Intel-gfx] [PATCH 13/13] fs: move binfmt_misc sysctl to its
 own file
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
Cc: jack@suse.cz, rafael@kernel.org, airlied@linux.ie, benh@kernel.crashing.org,
 amir73il@gmail.com, clemens@ladisch.de, dri-devel@lists.freedesktop.org,
 joseph.qi@linux.alibaba.com, sfr@canb.auug.org.au, mark@fasheh.com,
 rdna@fb.com, yzaikin@google.com, arnd@arndb.de,
 intel-gfx@lists.freedesktop.org, julia.lawall@lip6.fr, jlbec@evilplan.org,
 nixiaoming@huawei.com, vbabka@suse.cz, axboe@kernel.dk, tytso@mit.edu,
 gregkh@linuxfoundation.org, linux-kernel@vger.kernel.org,
 ebiederm@xmission.com, akpm@linux-foundation.org,
 linuxppc-dev@lists.ozlabs.org, ocfs2-devel@oss.oracle.com,
 viro@zeniv.linux.org.uk
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Fri, May 29, 2020 at 07:41:08AM +0000, Luis Chamberlain wrote:
> This moves the binfmt_misc sysctl to its own file to help remove
> clutter from kernel/sysctl.c.
> 
> Signed-off-by: Luis Chamberlain <mcgrof@kernel.org>
> ---
>  fs/binfmt_misc.c | 1 +
>  kernel/sysctl.c  | 7 -------
>  2 files changed, 1 insertion(+), 7 deletions(-)
> 
> diff --git a/fs/binfmt_misc.c b/fs/binfmt_misc.c
> index f69a043f562b..656b3f5f3bbf 100644
> --- a/fs/binfmt_misc.c
> +++ b/fs/binfmt_misc.c
> @@ -821,6 +821,7 @@ static int __init init_misc_binfmt(void)
>  	int err = register_filesystem(&bm_fs_type);
>  	if (!err)
>  		insert_binfmt(&misc_format);
> +	register_sysctl_empty_subdir("fs", "binfmt_misc");
>  	return err;

Nit: let's make the dir before registering the filesystem. I can't
imagine a realistic situation where userspace is reacting so fast it
would actually fail to mount the fs on /proc/sys/fs/binfmt_misc, but why
risk it?

-Kees

>  }
>  
> diff --git a/kernel/sysctl.c b/kernel/sysctl.c
> index 460532cd5ac8..7714e7b476c2 100644
> --- a/kernel/sysctl.c
> +++ b/kernel/sysctl.c
> @@ -3042,13 +3042,6 @@ static struct ctl_table fs_table[] = {
>  		.extra1		= SYSCTL_ZERO,
>  		.extra2		= SYSCTL_TWO,
>  	},
> -#if defined(CONFIG_BINFMT_MISC) || defined(CONFIG_BINFMT_MISC_MODULE)
> -	{
> -		.procname	= "binfmt_misc",
> -		.mode		= 0555,
> -		.child		= sysctl_mount_point,
> -	},
> -#endif
>  	{
>  		.procname	= "pipe-max-size",
>  		.data		= &pipe_max_size,
> -- 
> 2.26.2
> 

-- 
Kees Cook
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
