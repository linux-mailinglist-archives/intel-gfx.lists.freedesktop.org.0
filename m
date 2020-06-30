Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 837B820EDA0
	for <lists+intel-gfx@lfdr.de>; Tue, 30 Jun 2020 07:39:41 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 8B42F899DC;
	Tue, 30 Jun 2020 05:39:39 +0000 (UTC)
X-Original-To: intel-gfx@freedesktop.org
Delivered-To: intel-gfx@freedesktop.org
Received: from mail-pj1-x1042.google.com (mail-pj1-x1042.google.com
 [IPv6:2607:f8b0:4864:20::1042])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 77F8F899DC
 for <intel-gfx@freedesktop.org>; Tue, 30 Jun 2020 05:39:38 +0000 (UTC)
Received: by mail-pj1-x1042.google.com with SMTP id d6so9001197pjs.3
 for <intel-gfx@freedesktop.org>; Mon, 29 Jun 2020 22:39:38 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=sender:date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to:user-agent;
 bh=S/9KeYx29o5G6U3kMXdr3xphg74Nl35zaACjNpBee24=;
 b=FxMox9aalz09zBE/iul+9YOYgIpdfveTsrJyn902DnUM+JWlDMuJaase9e8b8/e4As
 NXaXkmnPeHL9EN+IBtQ22sy+KkhKAGIe0n0pNKfb8t2j3S3kxflGTtnKtFw+i7cg3ppH
 5N/YZRf3TQd1cTVqIPTMZuUia/Bo4SVOK+WjVw8p5TL6N849F9fDBE7OtH7TnWXJqQe/
 UUEmMggk0JawmVaYPLdxFCm+IrcptO0g3+X2y6/S9GtPJIYb4kJwKuiMefC5ioDSY+MU
 xrB1d9xkRJiI2Vc6eUD0Hh9C7ZB51su+WAYOveorPBlvUEMvy7NRwp3PukaGmA/zeSVC
 FMOw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:sender:date:from:to:cc:subject:message-id
 :references:mime-version:content-disposition:in-reply-to:user-agent;
 bh=S/9KeYx29o5G6U3kMXdr3xphg74Nl35zaACjNpBee24=;
 b=IKRNcG1G5BaalRZ+IGNYqbcGPWC5PUvvq1GkWIICiCfATcO5Ur5GCCTLuIp54ZR5Ci
 sjvv6HQuC81DLISvNUL1DX6mo9+EFnHpu0MD/uUHTAfZnOK/0uX7xZ5pJ/4EJCAdhvnO
 JxUP5jnivmVwUA3n7xOk5lYCZuc4bt/LB9k6ArDLA7gyNkFsDVSyILP28eFqwiZh+Zd8
 lcSqqmSBKMxO/RgrLf2yHbMTzXR7ZmG0UAZlHDQKvYeDhJAOl3sxaF5VI1Y0tSMMjS9D
 4P+u/9iqsw1DzG/fdNBrG3SYcKHRQ/FCLkbyMM1qPonEsHADd6dkP0kqMW/K74eYAE0r
 31uw==
X-Gm-Message-State: AOAM5334QQh5+Y3JtEX9fTPufEleQwOYgDmjb38NUa6/J7YaoQGW23fA
 ihYUrrB/lYQ+d/LlILk635g=
X-Google-Smtp-Source: ABdhPJw+Y8WTdh1Q4ZIFkWzHy0PtosSgyTqsEFQud4EaIDC/LwA5Hoy2pCP9uuWwr/ZkwONzq/Zg/g==
X-Received: by 2002:a17:90a:f198:: with SMTP id
 bv24mr21170711pjb.206.1593495577960; 
 Mon, 29 Jun 2020 22:39:37 -0700 (PDT)
Received: from localhost ([2600:1700:e321:62f0:329c:23ff:fee3:9d7c])
 by smtp.gmail.com with ESMTPSA id x23sm1252967pfn.4.2020.06.29.22.39.36
 (version=TLS1_2 cipher=ECDHE-ECDSA-CHACHA20-POLY1305 bits=256/256);
 Mon, 29 Jun 2020 22:39:37 -0700 (PDT)
Date: Mon, 29 Jun 2020 22:39:36 -0700
From: Guenter Roeck <linux@roeck-us.net>
To: Chris Wilson <chris@chris-wilson.co.uk>
Message-ID: <20200630053936.GA168021@roeck-us.net>
References: <20190903062133.27360-1-chris@chris-wilson.co.uk>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190903062133.27360-1-chris@chris-wilson.co.uk>
User-Agent: Mutt/1.9.4 (2018-02-28)
Subject: Re: [Intel-gfx] [PATCH] drm/i915: Protect debugfs per_file_stats
 with RCU lock
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
Cc: intel-gfx@freedesktop.org, bgeffon@google.com, levinale@google.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Tue, Sep 03, 2019 at 07:21:33AM +0100, Chris Wilson wrote:
> If we make sure we grab a strong reference to each object as we dump it,
> we can reduce the locks outside of our iterators to an rcu_read_lock.
> 
> This should prevent errors like:
> [ 2138.371911] BUG: KASAN: use-after-free in per_file_stats+0x43/0x380 [i915]
> [ 2138.371924] Read of size 8 at addr ffff888223651000 by task cat/8293
> 
> [ 2138.371947] CPU: 0 PID: 8293 Comm: cat Not tainted 5.3.0-rc6-CI-Custom_4352+ #1
> [ 2138.371953] Hardware name: To Be Filled By O.E.M. To Be Filled By O.E.M./J4205-ITX, BIOS P1.40 07/14/2017
> [ 2138.371959] Call Trace:
> [ 2138.371974]  dump_stack+0x7c/0xbb
> [ 2138.372099]  ? per_file_stats+0x43/0x380 [i915]
> [ 2138.372108]  print_address_description+0x73/0x3a0
> [ 2138.372231]  ? per_file_stats+0x43/0x380 [i915]
> [ 2138.372352]  ? per_file_stats+0x43/0x380 [i915]
> [ 2138.372362]  __kasan_report+0x14e/0x192
> [ 2138.372489]  ? per_file_stats+0x43/0x380 [i915]
> [ 2138.372502]  kasan_report+0xe/0x20
> [ 2138.372625]  per_file_stats+0x43/0x380 [i915]
> [ 2138.372751]  ? i915_panel_show+0x110/0x110 [i915]
> [ 2138.372761]  idr_for_each+0xa7/0x160
> [ 2138.372773]  ? idr_get_next_ul+0x110/0x110
> [ 2138.372782]  ? do_raw_spin_lock+0x10a/0x1d0
> [ 2138.372923]  print_context_stats+0x264/0x510 [i915]
> 
> Signed-off-by: Chris Wilson <chris@chris-wilson.co.uk>
> Tested-by: David Weinehall <david.weinehall@linux.intel.com>
> Reviewed-by: Mika Kuoppala <mika.kuoppala@linux.intel.com>
> ---
>  drivers/gpu/drm/i915/i915_debugfs.c | 10 ++++++++--
>  1 file changed, 8 insertions(+), 2 deletions(-)
> 
> diff --git a/drivers/gpu/drm/i915/i915_debugfs.c b/drivers/gpu/drm/i915/i915_debugfs.c
> index 9798f27a697a..708855e051b5 100644
[ ... ]
>  		}
> @@ -328,9 +334,9 @@ static void print_context_stats(struct seq_file *m,
>  			struct task_struct *task;
>  			char name[80];
>  
> -			spin_lock(&file->table_lock);
> +			rcu_read_lock();
>  			idr_for_each(&file->object_idr, per_file_stats, &stats);
> -			spin_unlock(&file->table_lock);
> +			rcu_read_unlock();
>  
For my education - is it indeed possible and valid to replace spin_lock()
with rcu_read_lock() to prevent list manipulation for a list used by
idr_for_each(), even if that list is otherwise manipulated under the
spinlock ?

Background: we are seeing a crash with the following call trace.

[ 1016.651593] BUG: kernel NULL pointer dereference, address: 0000000000000000
...
[ 1016.651693] Call Trace:
[ 1016.651703]  idr_for_each+0x8a/0xe8
[ 1016.651711]  i915_gem_object_info+0x2a3/0x3eb
[ 1016.651720]  seq_read+0x162/0x3ca
[ 1016.651727]  full_proxy_read+0x5b/0x8d
[ 1016.651733]  __vfs_read+0x45/0x1bb
[ 1016.651741]  vfs_read+0xc9/0x15e
[ 1016.651746]  ksys_read+0x7e/0xde
[ 1016.651752]  do_syscall_64+0x54/0x68
[ 1016.651758]  entry_SYSCALL_64_after_hwframe+0x44/0xa9

I have not tried to track down what exactly is NULL in this case.
Before spending more time on it, I'd like to understand the above
change a little better.

Thanks,
Guenter
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
