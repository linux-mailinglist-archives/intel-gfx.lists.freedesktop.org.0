Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 8813A19F8D5
	for <lists+intel-gfx@lfdr.de>; Mon,  6 Apr 2020 17:29:24 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id C11646E420;
	Mon,  6 Apr 2020 15:29:15 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-qv1-xf42.google.com (mail-qv1-xf42.google.com
 [IPv6:2607:f8b0:4864:20::f42])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 6E76E89D83
 for <intel-gfx@lists.freedesktop.org>; Sun,  5 Apr 2020 15:06:01 +0000 (UTC)
Received: by mail-qv1-xf42.google.com with SMTP id p60so6190945qva.5
 for <intel-gfx@lists.freedesktop.org>; Sun, 05 Apr 2020 08:06:01 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:date:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to;
 bh=9N0f+yc5GoSCYnU9CVx853Ppx5E/zoOAAJ8nxJTEFpA=;
 b=Y7HC76M5hVnZTH8jN1WbAtr84f16u+KO/0nyPseW+pLLAipoydW7pYF+tiVNoF9ltF
 nbON5GLMf6QRr52JUdP83hAVn+jLhQvGMFWskD4I9BQ4/odgzvrDIxLY1xI9g+yVb4C/
 s2cXWLpGSGzf4q/LWNJcl8OkpS52o0e6zCslyw2/Qq1avqM+IwMRvbjeSG8ehkjV1pyP
 jk0xK8gMfmYrXak7p4ZBSW4h4CSVZrnstU6bREaND652xm4ip4yb8awoWHKWAlDfQN7H
 2JukMwQacbyr6AGkGf4X1IAviX6LZpurPEzVRr6WO9rx86RHbTcv8uI2206+v2FhdU+k
 1Law==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:date:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to;
 bh=9N0f+yc5GoSCYnU9CVx853Ppx5E/zoOAAJ8nxJTEFpA=;
 b=PHSIijS3lS+38roVwdQhbpzgt3eJY5j45tcqCwu5WPUuCHZv3T5eeL1VQ8VMQRIVUv
 XOA2m2yXb1OipbdC6GOl9zqLRazXX0DfggbmQMz1LEhVep0NOEpYdmvhz72KBn3HTT9y
 Bo/zEb9Nfpu/dOLBvNz+mD+FIa04strJ+AVdZVuE5dFdKrtaZO+j+pCBxXGVwoI6M2H9
 WsrHies0CO36i1k1CRDh/yfcvdYUmAiguNJaSqoM5qu4P3ErRuQN9fsds10uFzz369P2
 UR9DD9aMzuFvj0sQ46UzjFSM0r0imm9EArxaLBBt6sarLcVrEWAvyixFQpXGpTY3fTlM
 BPqg==
X-Gm-Message-State: AGi0Pua2UHCCN2qWFUqoCc2EdLh+/BcuwlTgV2lDMlLdW9byShq2wmAH
 U2SeisGmCqJJ8QdlpQz951M=
X-Google-Smtp-Source: APiQypLiZ3GOPWLtLhl8U0huwRiWUGwCKoPM/+nsqylQydejMUMQHHoJEpvfE25ROQ27KYKdEh9uaQ==
X-Received: by 2002:a0c:db86:: with SMTP id m6mr16240577qvk.116.1586099160280; 
 Sun, 05 Apr 2020 08:06:00 -0700 (PDT)
Received: from quaco.ghostprotocols.net ([179.97.37.151])
 by smtp.gmail.com with ESMTPSA id m10sm12655562qte.71.2020.04.05.08.05.59
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Sun, 05 Apr 2020 08:05:59 -0700 (PDT)
From: Arnaldo Carvalho de Melo <arnaldo.melo@gmail.com>
X-Google-Original-From: Arnaldo Carvalho de Melo <acme@kernel.org>
Received: by quaco.ghostprotocols.net (Postfix, from userid 1000)
 id 535B0409A3; Sun,  5 Apr 2020 12:05:57 -0300 (-03)
Date: Sun, 5 Apr 2020 12:05:57 -0300
To: Alexey Budankov <alexey.budankov@linux.intel.com>
Message-ID: <20200405150557.GP9917@kernel.org>
References: <f96f8f8a-e65c-3f36-dc85-fc3f5191e8c5@linux.intel.com>
 <84c32383-14a2-fa35-16b6-f9e59bd37240@linux.intel.com>
 <20200405141029.GA16896@kernel.org>
 <eb7fd0bd-4043-b51c-9b19-ee0a1d1849e9@linux.intel.com>
 <966244a1-2a2d-8e47-b805-2effa46fe8cd@linux.intel.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <966244a1-2a2d-8e47-b805-2effa46fe8cd@linux.intel.com>
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
 Andi Kleen <ak@linux.intel.com>, Alexei Starovoitov <ast@kernel.org>,
 "linux-doc@vger.kernel.org" <linux-doc@vger.kernel.org>,
 Peter Zijlstra <peterz@infradead.org>,
 linux-kernel <linux-kernel@vger.kernel.org>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>,
 Igor Lubashev <ilubashe@akamai.com>, James Morris <jmorris@namei.org>,
 Stephane Eranian <eranian@google.com>,
 Arnaldo Carvalho de Melo <arnaldo.melo@gmail.com>,
 "selinux@vger.kernel.org" <selinux@vger.kernel.org>,
 "linux-security-module@vger.kernel.org"
 <linux-security-module@vger.kernel.org>, Ingo Molnar <mingo@redhat.com>,
 Namhyung Kim <namhyung@kernel.org>, Thomas Gleixner <tglx@linutronix.de>,
 Jiri Olsa <jolsa@redhat.com>, Serge Hallyn <serge@hallyn.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

Em Sun, Apr 05, 2020 at 05:54:37PM +0300, Alexey Budankov escreveu:
> 
> On 05.04.2020 17:41, Alexey Budankov wrote:
> > 
> > On 05.04.2020 17:10, Arnaldo Carvalho de Melo wrote:
> >> Em Thu, Apr 02, 2020 at 11:54:39AM +0300, Alexey Budankov escreveu:
> >>>
> >>> Update kernel.rst documentation file with the information
> >>> related to usage of CAP_PERFMON capability to secure performance
> >>> monitoring and observability operations in system.
> >>
> >> This one is failing in my perf/core branch, please take a look. I'm
> 
> Please try applying this:

Thanks, applied with the original commit log message,

- Arnaldo
 
> ---
>  Documentation/admin-guide/sysctl/kernel.rst | 16 +++++++++++-----
>  1 file changed, 11 insertions(+), 5 deletions(-)
> 
> diff --git a/Documentation/admin-guide/sysctl/kernel.rst b/Documentation/admin-guide/sysctl/kernel.rst
> index 335696d3360d..aaa5bbcd1e33 100644
> --- a/Documentation/admin-guide/sysctl/kernel.rst
> +++ b/Documentation/admin-guide/sysctl/kernel.rst
> @@ -709,7 +709,13 @@ perf_event_paranoid
>  ===================
>  
>  Controls use of the performance events system by unprivileged
> -users (without CAP_SYS_ADMIN).  The default value is 2.
> +users (without CAP_PERFMON).  The default value is 2.
> +
> +For backward compatibility reasons access to system performance
> +monitoring and observability remains open for CAP_SYS_ADMIN
> +privileged processes but CAP_SYS_ADMIN usage for secure system
> +performance monitoring and observability operations is discouraged
> +with respect to CAP_PERFMON use cases.
>  
>  ===  ==================================================================
>   -1  Allow use of (almost) all events by all users.
> @@ -718,13 +724,13 @@ users (without CAP_SYS_ADMIN).  The default value is 2.
>       ``CAP_IPC_LOCK``.
>  
>  >=0  Disallow ftrace function tracepoint by users without
> -     ``CAP_SYS_ADMIN``.
> +     ``CAP_PERFMON``.
>  
> -     Disallow raw tracepoint access by users without ``CAP_SYS_ADMIN``.
> +     Disallow raw tracepoint access by users without ``CAP_PERFMON``.
>  
> ->=1  Disallow CPU event access by users without ``CAP_SYS_ADMIN``.
> +>=1  Disallow CPU event access by users without ``CAP_PERFMON``.
>  
> ->=2  Disallow kernel profiling by users without ``CAP_SYS_ADMIN``.
> +>=2  Disallow kernel profiling by users without ``CAP_PERFMON``.
>  ===  ==================================================================
>  
> ---
> 
> Thanks,
> Alexey
> 
> > 
> > Trying to reproduce right now. What kind of failure do you see?
> > Please share some specifics so I could follow up properly.
> > 
> > Thanks,
> > Alexey
> > 
> >> pushing my perf/core branch with this series applied, please check that
> >> everything is ok, I'll do some testing now, but it all seems ok.
> >>
> >> Thanks,
> >>
> >> - Arnaldo
> >>  
> >>> Signed-off-by: Alexey Budankov <alexey.budankov@linux.intel.com>
> >>> ---
> >>>  Documentation/admin-guide/sysctl/kernel.rst | 16 +++++++++++-----
> >>>  1 file changed, 11 insertions(+), 5 deletions(-)
> >>>
> >>> diff --git a/Documentation/admin-guide/sysctl/kernel.rst b/Documentation/admin-guide/sysctl/kernel.rst
> >>> index def074807cee..b06ae9389809 100644
> >>> --- a/Documentation/admin-guide/sysctl/kernel.rst
> >>> +++ b/Documentation/admin-guide/sysctl/kernel.rst
> >>> @@ -720,20 +720,26 @@ perf_event_paranoid:
> >>>  ====================
> >>>  
> >>>  Controls use of the performance events system by unprivileged
> >>> -users (without CAP_SYS_ADMIN).  The default value is 2.
> >>> +users (without CAP_PERFMON). The default value is 2.
> >>> +
> >>> +For backward compatibility reasons access to system performance
> >>> +monitoring and observability remains open for CAP_SYS_ADMIN
> >>> +privileged processes but CAP_SYS_ADMIN usage for secure system
> >>> +performance monitoring and observability operations is discouraged
> >>> +with respect to CAP_PERFMON use cases.
> >>>  
> >>>  ===  ==================================================================
> >>>   -1  Allow use of (almost) all events by all users
> >>>  
> >>>       Ignore mlock limit after perf_event_mlock_kb without CAP_IPC_LOCK
> >>>  
> >>> ->=0  Disallow ftrace function tracepoint by users without CAP_SYS_ADMIN
> >>> +>=0  Disallow ftrace function tracepoint by users without CAP_PERFMON
> >>>  
> >>> -     Disallow raw tracepoint access by users without CAP_SYS_ADMIN
> >>> +     Disallow raw tracepoint access by users without CAP_PERFMON
> >>>  
> >>> ->=1  Disallow CPU event access by users without CAP_SYS_ADMIN
> >>> +>=1  Disallow CPU event access by users without CAP_PERFMON
> >>>  
> >>> ->=2  Disallow kernel profiling by users without CAP_SYS_ADMIN
> >>> +>=2  Disallow kernel profiling by users without CAP_PERFMON
> >>>  ===  ==================================================================
> >>>  
> >>>  
> >>> -- 
> >>> 2.24.1
> >>>
> >>

-- 

- Arnaldo
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
