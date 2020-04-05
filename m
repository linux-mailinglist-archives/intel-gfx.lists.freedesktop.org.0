Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id E9F4519F8D8
	for <lists+intel-gfx@lfdr.de>; Mon,  6 Apr 2020 17:29:27 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id EE1706E2DE;
	Mon,  6 Apr 2020 15:29:15 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-qt1-x844.google.com (mail-qt1-x844.google.com
 [IPv6:2607:f8b0:4864:20::844])
 by gabe.freedesktop.org (Postfix) with ESMTPS id DE04C6E249
 for <intel-gfx@lists.freedesktop.org>; Sun,  5 Apr 2020 14:10:34 +0000 (UTC)
Received: by mail-qt1-x844.google.com with SMTP id b10so4973373qtt.9
 for <intel-gfx@lists.freedesktop.org>; Sun, 05 Apr 2020 07:10:34 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:date:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to;
 bh=Fj5IkYeTwvEQJU3mrvn13eBZKNJ+9tUvL96085xGJxE=;
 b=PUXZHGoaZxdIN6d3dLITTVmOMYMyzD1WzUovhblIhnH0+gX1MNWpAzLXCQgk2kjb4r
 MlJo8+N8G03Sa1hMX0SzavAQvly8jLAQ+hbQperFpamXKFXDtOKZO1KBx7z3QF7jU4DN
 v2O2rih9I491tXxgjaiA8y75O5NeuTOBTrBD5lyOIL+4LBqVTqjlPgB8IOP+vdkio7Ne
 OF0/t3wAwc/c/4fhcxK0mgit6koSfOKh3e8xFvAUuaInvIs+DvGpC7Qx4f3FaJ6/exvW
 RQ5WEGhuuoq8VdPrvO9ejeK2M4qtHC7mPdoXm5yO6XzAi2YIMIwcRWsAHg60RLTYDgVS
 MEwQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:date:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to;
 bh=Fj5IkYeTwvEQJU3mrvn13eBZKNJ+9tUvL96085xGJxE=;
 b=Djlj4Rm4jtAogOnyHgw9zHPBvYC88ZmcKoBVRzfYpto2ay9QtWWInB3ewcBnsQiuYG
 ZxaSC9VtbRczUvEIgG3D+kgw9YMxDYpOJ4uQsJzyvncaxPsivM092WsgKJhIYmTLBk0r
 UUVvkg6tfW2D2mJ+J3lUAiESjRj87wfXtRkopp+vhykv00B8gMihdLry4GN5tNiE+Ajb
 bh/ZiZXtfjYEOAE8I/OEd7Ky01g7zuZOsvErbtuczNAlZ1/lsA2DE1vIgif3aw4/9hZV
 Oy8j7H3Ag6uFDPYPDfd/06BFJIjI55lT/YSSIvzE+i52/4+cZPI8PgzQ9+BGh4J4JzLE
 3P1w==
X-Gm-Message-State: AGi0PubediZawhvg5iUDG6v4psG6DJ0QMu4Tz0xrpjSiVH1wFpBULLzO
 /PujS+90Y56a/fzimaoRf5M=
X-Google-Smtp-Source: APiQypJu0uvODNR9YrN0sb4Kh6DQPLH6AalqUaYQK8KEpypo5wVQtssYkV/vcueHnh7R58TbWcdGhg==
X-Received: by 2002:aed:2435:: with SMTP id r50mr16393370qtc.314.1586095833851; 
 Sun, 05 Apr 2020 07:10:33 -0700 (PDT)
Received: from quaco.ghostprotocols.net ([179.97.37.151])
 by smtp.gmail.com with ESMTPSA id 6sm9452806qkr.25.2020.04.05.07.10.32
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Sun, 05 Apr 2020 07:10:32 -0700 (PDT)
From: Arnaldo Carvalho de Melo <arnaldo.melo@gmail.com>
X-Google-Original-From: Arnaldo Carvalho de Melo <acme@kernel.org>
Received: by quaco.ghostprotocols.net (Postfix, from userid 1000)
 id AE02E409A3; Sun,  5 Apr 2020 11:10:29 -0300 (-03)
Date: Sun, 5 Apr 2020 11:10:29 -0300
To: Alexey Budankov <alexey.budankov@linux.intel.com>
Message-ID: <20200405141029.GA16896@kernel.org>
References: <f96f8f8a-e65c-3f36-dc85-fc3f5191e8c5@linux.intel.com>
 <84c32383-14a2-fa35-16b6-f9e59bd37240@linux.intel.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <84c32383-14a2-fa35-16b6-f9e59bd37240@linux.intel.com>
X-Url: http://acmel.wordpress.com
X-Mailman-Approved-At: Mon, 06 Apr 2020 15:29:14 +0000
Subject: Re: [Intel-gfx] [PATCH v8 12/12] doc/admin-guide: update kernel.rst
 with CAP_PERFMON information
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
Cc: linux-man@vger.kernel.org, Song Liu <songliubraving@fb.com>,
 Andi Kleen <ak@linux.intel.com>,
 "linux-doc@vger.kernel.org" <linux-doc@vger.kernel.org>,
 Peter Zijlstra <peterz@infradead.org>,
 linux-kernel <linux-kernel@vger.kernel.org>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>,
 Igor Lubashev <ilubashe@akamai.com>, Alexei Starovoitov <ast@kernel.org>,
 Stephane Eranian <eranian@google.com>, James Morris <jmorris@namei.org>,
 "selinux@vger.kernel.org" <selinux@vger.kernel.org>,
 "linux-security-module@vger.kernel.org"
 <linux-security-module@vger.kernel.org>, Ingo Molnar <mingo@redhat.com>,
 Namhyung Kim <namhyung@kernel.org>, Thomas Gleixner <tglx@linutronix.de>,
 Jiri Olsa <jolsa@redhat.com>, Serge Hallyn <serge@hallyn.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

Em Thu, Apr 02, 2020 at 11:54:39AM +0300, Alexey Budankov escreveu:
> 
> Update kernel.rst documentation file with the information
> related to usage of CAP_PERFMON capability to secure performance
> monitoring and observability operations in system.

This one is failing in my perf/core branch, please take a look. I'm
pushing my perf/core branch with this series applied, please check that
everything is ok, I'll do some testing now, but it all seems ok.

Thanks,

- Arnaldo
 
> Signed-off-by: Alexey Budankov <alexey.budankov@linux.intel.com>
> ---
>  Documentation/admin-guide/sysctl/kernel.rst | 16 +++++++++++-----
>  1 file changed, 11 insertions(+), 5 deletions(-)
> 
> diff --git a/Documentation/admin-guide/sysctl/kernel.rst b/Documentation/admin-guide/sysctl/kernel.rst
> index def074807cee..b06ae9389809 100644
> --- a/Documentation/admin-guide/sysctl/kernel.rst
> +++ b/Documentation/admin-guide/sysctl/kernel.rst
> @@ -720,20 +720,26 @@ perf_event_paranoid:
>  ====================
>  
>  Controls use of the performance events system by unprivileged
> -users (without CAP_SYS_ADMIN).  The default value is 2.
> +users (without CAP_PERFMON). The default value is 2.
> +
> +For backward compatibility reasons access to system performance
> +monitoring and observability remains open for CAP_SYS_ADMIN
> +privileged processes but CAP_SYS_ADMIN usage for secure system
> +performance monitoring and observability operations is discouraged
> +with respect to CAP_PERFMON use cases.
>  
>  ===  ==================================================================
>   -1  Allow use of (almost) all events by all users
>  
>       Ignore mlock limit after perf_event_mlock_kb without CAP_IPC_LOCK
>  
> ->=0  Disallow ftrace function tracepoint by users without CAP_SYS_ADMIN
> +>=0  Disallow ftrace function tracepoint by users without CAP_PERFMON
>  
> -     Disallow raw tracepoint access by users without CAP_SYS_ADMIN
> +     Disallow raw tracepoint access by users without CAP_PERFMON
>  
> ->=1  Disallow CPU event access by users without CAP_SYS_ADMIN
> +>=1  Disallow CPU event access by users without CAP_PERFMON
>  
> ->=2  Disallow kernel profiling by users without CAP_SYS_ADMIN
> +>=2  Disallow kernel profiling by users without CAP_PERFMON
>  ===  ==================================================================
>  
>  
> -- 
> 2.24.1
> 

-- 

- Arnaldo
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
