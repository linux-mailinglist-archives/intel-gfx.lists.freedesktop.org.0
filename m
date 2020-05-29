Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id A38E51E782E
	for <lists+intel-gfx@lfdr.de>; Fri, 29 May 2020 10:23:24 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 04B7A6E8A1;
	Fri, 29 May 2020 08:23:23 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-pl1-x641.google.com (mail-pl1-x641.google.com
 [IPv6:2607:f8b0:4864:20::641])
 by gabe.freedesktop.org (Postfix) with ESMTPS id DF5166E8A4
 for <intel-gfx@lists.freedesktop.org>; Fri, 29 May 2020 08:23:21 +0000 (UTC)
Received: by mail-pl1-x641.google.com with SMTP id q16so837714plr.2
 for <intel-gfx@lists.freedesktop.org>; Fri, 29 May 2020 01:23:21 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=chromium.org; s=google;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to;
 bh=AIdQINovPOSOTJO7LcbhlxJUhgtHjantuh4CQ+iWOIk=;
 b=V5cw7BLL23TyvF7XSXItctQqYMbZHnd3YzoANtt528V7qq7xu1e8i/d5BPhYuuzcJA
 S4SZfsMhz56qz6LHdqb9P3YxO98X4/nyW5suGrtljbQRKiFaxDCQddMjE6qySAsDecYm
 59mGjrKtcG0wLlb2EG+x0AmjGyZj6GcSpchSs=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to;
 bh=AIdQINovPOSOTJO7LcbhlxJUhgtHjantuh4CQ+iWOIk=;
 b=rinkSg0D++YSR+sen5jnLqhZZaLLPaZWhNSBHkI94uR0M/Wluq80SW84da81XutLy0
 UbSdWg+nK3IRJj08T4dYziIOoG0zdd17qPIzjBdHizx3AujPiyeEC0owKijoj21doPIv
 y0ZfpcjV0pJnWmcOjTpBd6Pl0EWKD+M2GX0ZeSd485dAModpntYCpsi6O3FJr2ihDJ0P
 EdfeyrSmxBJBfes14DQWCjBmyJi4mqcC4aUQ/PypX/d3gcq5BnYDAusgu/KsvnHqHFlM
 iw2InwB3uB0Xvcvg/NtKQlzzOxEbIysrBybdBzBCOnacXL9g3JJw6qrGWMhVsIDy9dFs
 32rA==
X-Gm-Message-State: AOAM533UMjmUYGminAa5h8UCeT6U8TKnK4Gokz8maI9aHq15+b4RRxGn
 xA2UsHtEEBIjMR/t+Ky5Io2h8w==
X-Google-Smtp-Source: ABdhPJxhe+HLIcubMtL5eQGoTBqj0FU4LjvgWIjKqizFmhGngk4G6mh/yk/MZlVlYeZObWjd5EoKaQ==
X-Received: by 2002:a17:90a:2e8a:: with SMTP id
 r10mr8137536pjd.33.1590740601487; 
 Fri, 29 May 2020 01:23:21 -0700 (PDT)
Received: from www.outflux.net (smtp.outflux.net. [198.145.64.163])
 by smtp.gmail.com with ESMTPSA id gd1sm7532180pjb.14.2020.05.29.01.23.20
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Fri, 29 May 2020 01:23:20 -0700 (PDT)
Date: Fri, 29 May 2020 01:23:19 -0700
From: Kees Cook <keescook@chromium.org>
To: Luis Chamberlain <mcgrof@kernel.org>
Message-ID: <202005290121.C78B4AC@keescook>
References: <20200529074108.16928-1-mcgrof@kernel.org>
 <20200529074108.16928-7-mcgrof@kernel.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200529074108.16928-7-mcgrof@kernel.org>
Subject: Re: [Intel-gfx] [PATCH 06/13] ocfs2: use new sysctl subdir helper
 register_sysctl_subdir()
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

On Fri, May 29, 2020 at 07:41:01AM +0000, Luis Chamberlain wrote:
> This simplifies the code considerably. The following coccinelle
> SmPL grammar rule was used to transform this code.
> 
> // pycocci sysctl-subdir.cocci fs/ocfs2/stackglue.c
> 
> @c1@
> expression E1;
> identifier subdir, sysctls;
> @@
> 
> static struct ctl_table subdir[] = {
> 	{
> 		.procname = E1,
> 		.maxlen = 0,
> 		.mode = 0555,
> 		.child = sysctls,
> 	},
> 	{ }
> };
> 
> @c2@
> identifier c1.subdir;
> 
> expression E2;
> identifier base;
> @@
> 
> static struct ctl_table base[] = {
> 	{
> 		.procname = E2,
> 		.maxlen = 0,
> 		.mode = 0555,
> 		.child = subdir,
> 	},
> 	{ }
> };
> 
> @c3@
> identifier c2.base;
> identifier header;
> @@
> 
> header = register_sysctl_table(base);
> 
> @r1 depends on c1 && c2 && c3@
> expression c1.E1;
> identifier c1.subdir, c1.sysctls;
> @@
> 
> -static struct ctl_table subdir[] = {
> -	{
> -		.procname = E1,
> -		.maxlen = 0,
> -		.mode = 0555,
> -		.child = sysctls,
> -	},
> -	{ }
> -};
> 
> @r2 depends on c1 && c2 && c3@
> identifier c1.subdir;
> 
> expression c2.E2;
> identifier c2.base;
> @@
> -static struct ctl_table base[] = {
> -	{
> -		.procname = E2,
> -		.maxlen = 0,
> -		.mode = 0555,
> -		.child = subdir,
> -	},
> -	{ }
> -};
> 
> @r3 depends on c1 && c2 && c3@
> expression c1.E1;
> identifier c1.sysctls;
> expression c2.E2;
> identifier c2.base;
> identifier c3.header;
> @@
> 
> header =
> -register_sysctl_table(base);
> +register_sysctl_subdir(E2, E1, sysctls);
> 
> Generated-by: Coccinelle SmPL
> 
> Signed-off-by: Luis Chamberlain <mcgrof@kernel.org>
> ---
>  fs/ocfs2/stackglue.c | 27 ++++-----------------------
>  1 file changed, 4 insertions(+), 23 deletions(-)
> 
> diff --git a/fs/ocfs2/stackglue.c b/fs/ocfs2/stackglue.c
> index a191094694c6..addafced7f59 100644
> --- a/fs/ocfs2/stackglue.c
> +++ b/fs/ocfs2/stackglue.c
> @@ -677,28 +677,8 @@ static struct ctl_table ocfs2_mod_table[] = {
>  	},
>  	{ }
>  };
> -
> -static struct ctl_table ocfs2_kern_table[] = {
> -	{
> -		.procname	= "ocfs2",
> -		.data		= NULL,
> -		.maxlen		= 0,
> -		.mode		= 0555,
> -		.child		= ocfs2_mod_table
> -	},
> -	{ }
> -};
> -
> -static struct ctl_table ocfs2_root_table[] = {
> -	{
> -		.procname	= "fs",
> -		.data		= NULL,
> -		.maxlen		= 0,
> -		.mode		= 0555,
> -		.child		= ocfs2_kern_table
> -	},
> -	{ }
> -};
> +	.data		= NULL,
> +	.data		= NULL,

The conversion script doesn't like the .data field assignments. ;)

Was this series built with allmodconfig? I would have expected this to
blow up very badly. :)

-- 
Kees Cook
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
