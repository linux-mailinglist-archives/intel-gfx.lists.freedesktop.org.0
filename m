Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id D22BC1A1250
	for <lists+intel-gfx@lfdr.de>; Tue,  7 Apr 2020 18:58:53 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 4E2546E8B2;
	Tue,  7 Apr 2020 16:58:49 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-qt1-x843.google.com (mail-qt1-x843.google.com
 [IPv6:2607:f8b0:4864:20::843])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 7B57B6E0DC
 for <intel-gfx@lists.freedesktop.org>; Tue,  7 Apr 2020 14:30:18 +0000 (UTC)
Received: by mail-qt1-x843.google.com with SMTP id s30so2798954qth.2
 for <intel-gfx@lists.freedesktop.org>; Tue, 07 Apr 2020 07:30:18 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:date:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to;
 bh=wAYrV6F6G+t5gtx1fZuHs6BGJWDWpkiLa+6bzhMBPMw=;
 b=lditmRVv/LcoROMCq/bKinCSCXK7kSIPrd2WRkQgfMAG5iVrBZ7uZka/PsnKohQP4j
 5Ig6xbokfQxWbvrqqOP7Fe0/tljFqjZ80Gbua+AN6PMXq9s4R68pYsgeD7r1Fqj3pNs/
 IsJOdPJ5t4WGOqRjC0s5L83yp/k8PHgJatpA0ED1TX7i2eDBvs0ELJvtm9oE+S+iWZcJ
 bcp4PUVjR/UGlyu0CDmP1DmVV6MGtCGjLpoDfAMr7gwkoH0eoRQKU/i8LwAwcoASeSjp
 Ylh8TlsWTOmutTIIZ3KXodzQRUC7kb6ikoJSb/vTaeiBtaot8jodWWYa5xiD4kkggAO8
 O9Hg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:date:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to;
 bh=wAYrV6F6G+t5gtx1fZuHs6BGJWDWpkiLa+6bzhMBPMw=;
 b=t7LkbGMGMXA0/i1FTQ/+gh/nO81eu9xyQXTQiITZdEkAydIbGgcD6s0eDM2c1fcYE8
 zLPQcgq43QJHeK10FAHDCMXe4Sul6vBJnqchp+VW6i2rAdGuN2fs4fLGfb76AuVKMc5s
 N2oA/dLhA5ZpIUbxzQPy/fkUL48Qd0DLUe1dAvBolLMiP7UtKlOPz1rLl+GGdTN0481v
 NsGc8O46AR+KIvxtI3TVO3UHgD6qEjDAJhJBgQUQSKsVyNrhncdOffIgWg5Au3/OINM7
 sQklADhegX9GpWyOtUn/T1kJCdXd/y98y7LXfdDKH+daWPGz3sFShwqPcqjcFFlVHRIQ
 Cwvw==
X-Gm-Message-State: AGi0Pubv6EZiodIjvL6LhyXg5nVE2IXC7OKz5ORJLgzQjgwOCn5cyWeg
 Qi57mEcMsKb6kbiDMzI7yb0=
X-Google-Smtp-Source: APiQypIGrLW0bPlJckdtYiMlXs17H02JiQkfUDEoX+VYMNZN6nQVg3T1qcLOBfWIiE8HKabTPloJSQ==
X-Received: by 2002:aed:29e1:: with SMTP id o88mr2530139qtd.251.1586269817494; 
 Tue, 07 Apr 2020 07:30:17 -0700 (PDT)
Received: from quaco.ghostprotocols.net ([179.97.37.151])
 by smtp.gmail.com with ESMTPSA id w30sm17976587qtw.21.2020.04.07.07.30.16
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Tue, 07 Apr 2020 07:30:16 -0700 (PDT)
From: Arnaldo Carvalho de Melo <arnaldo.melo@gmail.com>
X-Google-Original-From: Arnaldo Carvalho de Melo <acme@kernel.org>
Received: by quaco.ghostprotocols.net (Postfix, from userid 1000)
 id 67DAA409A3; Tue,  7 Apr 2020 11:30:14 -0300 (-03)
Date: Tue, 7 Apr 2020 11:30:14 -0300
To: Alexey Budankov <alexey.budankov@linux.intel.com>
Message-ID: <20200407143014.GD11186@kernel.org>
References: <f96f8f8a-e65c-3f36-dc85-fc3f5191e8c5@linux.intel.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <f96f8f8a-e65c-3f36-dc85-fc3f5191e8c5@linux.intel.com>
X-Url: http://acmel.wordpress.com
X-Mailman-Approved-At: Tue, 07 Apr 2020 16:58:43 +0000
Subject: Re: [Intel-gfx] [PATCH v8 00/12] Introduce CAP_PERFMON to secure
 system performance monitoring and observability
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

Em Thu, Apr 02, 2020 at 11:42:05AM +0300, Alexey Budankov escreveu:
> This patch set introduces CAP_PERFMON capability designed to secure
> system performance monitoring and observability operations so that
> CAP_PERFMON would assist CAP_SYS_ADMIN capability in its governing role
> for performance monitoring and observability subsystems of the kernel.

So, what am I doing wrong?

[perf@five ~]$ type perf
perf is hashed (/home/perf/bin/perf)
[perf@five ~]$
[perf@five ~]$ ls -lahF /home/perf/bin/perf
-rwxr-x---. 1 root perf_users 24M Apr  7 10:34 /home/perf/bin/perf*
[perf@five ~]$
[perf@five ~]$ getcap /home/perf/bin/perf
[perf@five ~]$ perf top --stdio
Error:
You may not have permission to collect system-wide stats.

Consider tweaking /proc/sys/kernel/perf_event_paranoid,
which controls use of the performance events system by
unprivileged users (without CAP_PERFMON or CAP_SYS_ADMIN).

The current value is 2:

  -1: Allow use of (almost) all events by all users
      Ignore mlock limit after perf_event_mlock_kb without CAP_IPC_LOCK
>= 0: Disallow ftrace function tracepoint by users without CAP_PERFMON or CAP_SYS_ADMIN
      Disallow raw tracepoint access by users without CAP_SYS_PERFMON or CAP_SYS_ADMIN
>= 1: Disallow CPU event access by users without CAP_PERFMON or CAP_SYS_ADMIN
>= 2: Disallow kernel profiling by users without CAP_PERFMON or CAP_SYS_ADMIN

To make this setting permanent, edit /etc/sysctl.conf too, e.g.:

	kernel.perf_event_paranoid = -1

[perf@five ~]$

Ok, the message says I  need to have CAP_PERFMON, lets do it, using an
unpatched libcap that doesn't know about it but we can use 38,
CAP_PERFMON value instead, and I tested this with a patched libcap as
well, same results:

As root:

[root@five bin]# setcap "38,cap_sys_ptrace,cap_syslog=ep" perf
[root@five bin]#

Back to the 'perf' user in the 'perf_users' group, ok, so now 'perf
record -a' works for system wide sampling of cycles:u, i.e. only
userspace samples, but 'perf top' is failing:

[perf@five ~]$ type perf
perf is hashed (/home/perf/bin/perf)
[perf@five ~]$ getcap /home/perf/bin/perf
/home/perf/bin/perf = cap_sys_ptrace,cap_syslog,38+ep
[perf@five ~]$ groups
perf perf_users
[perf@five ~]$ id
uid=1002(perf) gid=1002(perf) groups=1002(perf),1003(perf_users) context=unconfined_u:unconfined_r:unconfined_t:s0-s0:c0.c1023
[perf@five ~]$ perf top --stdio
Error:
Failed to mmap with 1 (Operation not permitted)
[perf@five ~]$ perf record -a
^C[ perf record: Woken up 1 times to write data ]
[ perf record: Captured and wrote 1.177 MB perf.data (1552 samples) ]

[perf@five ~]$ perf evlist
cycles:u
[perf@five ~]$

- Arnaldo
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
