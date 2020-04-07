Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id C9A151A124F
	for <lists+intel-gfx@lfdr.de>; Tue,  7 Apr 2020 18:58:52 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 0047D6E8B1;
	Tue,  7 Apr 2020 16:58:48 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-qv1-xf43.google.com (mail-qv1-xf43.google.com
 [IPv6:2607:f8b0:4864:20::f43])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 3F3846E125
 for <intel-gfx@lists.freedesktop.org>; Tue,  7 Apr 2020 16:56:47 +0000 (UTC)
Received: by mail-qv1-xf43.google.com with SMTP id c28so2151224qvb.10
 for <intel-gfx@lists.freedesktop.org>; Tue, 07 Apr 2020 09:56:47 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:date:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to;
 bh=ttVTDWvDUE2qStBRzIO3f1EibC3mcgA/+aBRHYOyWyg=;
 b=VCu0XFbiL/ioeMWf3d0DmcyjXbKFEcqt0Iq5E56vhpaYXy6fo6NMYPCPzMp2I6xrhl
 2DIvqTU7gFEOe6ilXw8bv49bzJ/itrR1WKkqCk9fjCP0KfnI7UxpzhU8aL4/zBJdOpYN
 P0AURKKI5B9rHGvyX6hznYepctg1aBomsUEdlSyxCrDsaLaxWL/pUrDQckExK+33T4IF
 7BpNIKiSGQkUWamxRg3ViYS7JJWTpb49X5iGq+2uy2U8iKKqOKu6ElsMIdOALDBA8RTL
 +mPSaKaOJdcL+HrFioKHVEekBaUVxondXzLLDn1TVCumBNfsHdbnvLba9W04zuRE6psP
 qNIg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:date:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to;
 bh=ttVTDWvDUE2qStBRzIO3f1EibC3mcgA/+aBRHYOyWyg=;
 b=UhgI+I2BU9kq4BQQA9LYa12Kls80tdeeBPJi2vw0146lAIek4jGN94WDIBMzA4QACl
 XLEx7bxBRvDovhflSqqMQJu/BUgZ/K3nOTxrhzRpnxQCSaA+QFYkWp9MycJOdQtfAbHd
 PUS/1nfV1aAuctTyJyZKRcbSsoHU1jGWNnzK/Sce4O5GSn518gBz5rkuQnfOw3EpIhg6
 yr0usy1nPuLb54dEmDOVkZzbJ4Je4YughdPb0hyCP489xoemD6NBph1QnsJC6oaLTBol
 Pgz0ZBAKCtEj5R9qPrLcVcO8Kue4boPzv2DxjtCA329h5hroIc5FUbuw25Cx+dnblMGH
 TBaA==
X-Gm-Message-State: AGi0PuZ2oFWldwR9v2hFnDO95ej5u4XuSfYtq1ee4Ne6k7sFgBqVYm+i
 JCvip7NKDKji04CpZOmpU38=
X-Google-Smtp-Source: APiQypIxOjrb0yQEzFMKAO6PcPMee5NNKWkp6L2koFL+gMEYejH9Za4s5KUD8s4DZ9GnxlZFuacI4w==
X-Received: by 2002:a0c:a899:: with SMTP id x25mr3292954qva.232.1586278606135; 
 Tue, 07 Apr 2020 09:56:46 -0700 (PDT)
Received: from quaco.ghostprotocols.net ([179.97.37.151])
 by smtp.gmail.com with ESMTPSA id u26sm2981184qku.54.2020.04.07.09.56.45
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Tue, 07 Apr 2020 09:56:45 -0700 (PDT)
From: Arnaldo Carvalho de Melo <arnaldo.melo@gmail.com>
X-Google-Original-From: Arnaldo Carvalho de Melo <acme@kernel.org>
Received: by quaco.ghostprotocols.net (Postfix, from userid 1000)
 id 61B98409A3; Tue,  7 Apr 2020 13:56:43 -0300 (-03)
Date: Tue, 7 Apr 2020 13:56:43 -0300
To: Arnaldo Carvalho de Melo <arnaldo.melo@gmail.com>
Message-ID: <20200407165643.GD12003@kernel.org>
References: <f96f8f8a-e65c-3f36-dc85-fc3f5191e8c5@linux.intel.com>
 <20200407143014.GD11186@kernel.org>
 <20200407143551.GF11186@kernel.org>
 <10cc74ee-8587-8cdb-f85f-5724b370a2ce@linux.intel.com>
 <20200407163654.GB12003@kernel.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200407163654.GB12003@kernel.org>
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
 Igor Lubashev <ilubashe@akamai.com>, Alexei Starovoitov <ast@kernel.org>,
 Stephane Eranian <eranian@google.com>, James Morris <jmorris@namei.org>,
 "selinux@vger.kernel.org" <selinux@vger.kernel.org>,
 "linux-security-module@vger.kernel.org"
 <linux-security-module@vger.kernel.org>, Ingo Molnar <mingo@redhat.com>,
 Namhyung Kim <namhyung@kernel.org>, Thomas Gleixner <tglx@linutronix.de>,
 Jiri Olsa <jolsa@redhat.com>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>,
 Serge Hallyn <serge@hallyn.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

Em Tue, Apr 07, 2020 at 01:36:54PM -0300, Arnaldo Carvalho de Melo escreveu:
> Em Tue, Apr 07, 2020 at 05:54:27PM +0300, Alexey Budankov escreveu:
> > On 07.04.2020 17:35, Arnaldo Carvalho de Melo wrote:
> > > Em Tue, Apr 07, 2020 at 11:30:14AM -0300, Arnaldo Carvalho de Melo escreveu:
> > >> [perf@five ~]$ type perf
> > >> perf is hashed (/home/perf/bin/perf)
> > >> [perf@five ~]$ getcap /home/perf/bin/perf
> > >> /home/perf/bin/perf = cap_sys_ptrace,cap_syslog,38+ep
> > >> [perf@five ~]$ groups
> > >> perf perf_users
> > >> [perf@five ~]$ id
> > >> uid=1002(perf) gid=1002(perf) groups=1002(perf),1003(perf_users) context=unconfined_u:unconfined_r:unconfined_t:s0-s0:c0.c1023
> > >> [perf@five ~]$ perf top --stdio
> > >> Error:
> > >> Failed to mmap with 1 (Operation not permitted)
> > >> [perf@five ~]$ perf record -a
> > >> ^C[ perf record: Woken up 1 times to write data ]
> > >> [ perf record: Captured and wrote 1.177 MB perf.data (1552 samples) ]
> > >>
> > >> [perf@five ~]$ perf evlist
> > >> cycles:u
> > >> [perf@five ~]$
> > > 
> > > Humm, perf record falls back to cycles:u after initially trying cycles
> > > (i.e. kernel and userspace), lemme see trying 'perf top -e cycles:u',
> > > lemme test, humm not really:
> > > 
> > > [perf@five ~]$ perf top --stdio -e cycles:u
> > > Error:
> > > Failed to mmap with 1 (Operation not permitted)
> > > [perf@five ~]$ perf record -e cycles:u -a sleep 1
> > > [ perf record: Woken up 1 times to write data ]
> > > [ perf record: Captured and wrote 1.123 MB perf.data (132 samples) ]
> > > [perf@five ~]$
> > > 
> > > Back to debugging this.
> > 
> > Could makes sense adding cap_ipc_lock to the binary to isolate from this:
> > 
> > kernel/events/core.c: 6101
> > 	if ((locked > lock_limit) && perf_is_paranoid() &&
> > 		!capable(CAP_IPC_LOCK)) {
> > 		ret = -EPERM;
> > 		goto unlock;
> > 	}
> 
> 
> That did the trick, I'll update the documentation and include in my
> "Committer testing" section:
> 
> [perf@five ~]$ groups
> perf perf_users
> [perf@five ~]$ ls -lahF bin/perf
> -rwxr-x---. 1 root perf_users 24M Apr  7 10:34 bin/perf*
> [perf@five ~]$ getcap bin/perf
> bin/perf = cap_ipc_lock,cap_sys_ptrace,cap_syslog,38+ep
> [perf@five ~]$
> [perf@five ~]$ perf top --stdio
> 
> 
>    PerfTop:     652 irqs/sec  kernel:73.8%  exact: 99.7% lost: 0/0 drop: 0/0 [4000Hz cycles:u],  (all, 12 CPUs)
> ---------------------------------------------------------------------------------------------------------------
> 
>     13.03%  [kernel]               [k] module_get_kallsym
>      5.25%  [kernel]               [k] kallsyms_expand_symbol.constprop.0
>      5.00%  libc-2.30.so           [.] __GI_____strtoull_l_internal
>      4.41%  [kernel]               [k] memcpy
>      3.42%  [kernel]               [k] vsnprintf
>      2.98%  perf                   [.] map__process_kallsym_symbol
>      2.86%  [kernel]               [k] format_decode
>      2.73%  [kernel]               [k] number
>      2.70%  perf                   [.] rb_next
>      2.59%  perf                   [.] maps__split_kallsyms
>      2.54%  [kernel]               [k] string_nocheck
>      1.90%  libc-2.30.so           [.] _IO_getdelim
>      1.86%  [kernel]               [k] __x86_indirect_thunk_rax
>      1.53%  libc-2.30.so           [.] _int_malloc
>      1.48%  libc-2.30.so           [.] __memmove_avx_unaligned_erms
>      1.40%  [kernel]               [k] clear_page_rep
>      1.07%  perf                   [.] rb_insert_color
>      1.01%  libc-2.30.so           [.] _IO_feof
>      0.99%  perf                   [.] __dso__load_kallsyms
>      0.98%  [kernel]               [k] s_next
>      0.96%  perf                   [.] __rblist__findnew
>      0.95%  [kernel]               [k] strlen
>      0.95%  perf                   [.] arch__symbols__fixup_end
>      0.94%  libpixman-1.so.0.38.4  [.] 0x000000000006f4af
>      0.94%  perf                   [.] symbol__new
>      0.89%  libpixman-1.so.0.38.4  [.] 0x000000000006f4a0
>      0.86%  [kernel]               [k] seq_read
>      0.81%  libpixman-1.so.0.38.4  [.] 0x000000000006f4ab
>      0.80%  perf                   [.] __symbols__insert
>      0.73%  libpixman-1.so.0.38.4  [.] 0x000000000006f4a7
>      0.67%  [kernel]               [k] s_show
>      0.66%  libc-2.30.so           [.] __libc_calloc
>      0.61%  libpixman-1.so.0.38.4  [.] 0x000000000006f4bb
>      0.59%  [kernel]               [k] get_page_from_freelist
>      0.59%  perf                   [.] memcpy@plt
>      0.58%  perf                   [.] eprintf
> exiting.
> [perf@five ~]$
> 
> There is still something strange in here, the event is cycles:u (see at
> the PerfTop line, but it is getting kernel samples :-\

So running with 'perf top --stdio -vv 2> /tmp/output' I see we try
create three events, the first is some capability querying, then we try
to determine the max precision level, but continue with
attr.exclude_kernel=1, which shouldn't be the case, perhaps we're seeing
that it is not the root in the tooling part, and end up setting that to
1 as, previously, we knew it would fail, so we should switch to checking
if we have cap_perfmon too, will check that:

------------------------------------------------------------
perf_event_attr:
  type                             1
  size                             120
  config                           0x9
  watermark                        1
  sample_id_all                    1
  bpf_event                        1
  { wakeup_events, wakeup_watermark } 1
------------------------------------------------------------
------------------------------------------------------------
perf_event_attr:
  size                             120
  { sample_period, sample_freq }   4000
  sample_type                      IP|TID|TIME|CPU|PERIOD
  read_format                      ID
  disabled                         1
  inherit                          1
  exclude_kernel                   1
  mmap                             1
  comm                             1
  freq                             1
  task                             1
  precise_ip                       3
  sample_id_all                    1
  exclude_guest                    1
  mmap2                            1
  comm_exec                        1
  ksymbol                          1
  bpf_event                        1
------------------------------------------------------------
------------------------------------------------------------
perf_event_attr:
  size                             120
  { sample_period, sample_freq }   4000
  sample_type                      IP|TID|TIME|CPU|PERIOD
  read_format                      ID
  disabled                         1
  inherit                          1
  exclude_kernel                   1
  mmap                             1
  comm                             1
  freq                             1
  task                             1
  precise_ip                       2
  sample_id_all                    1
  exclude_guest                    1
  mmap2                            1
  comm_exec                        1
  ksymbol                          1
  bpf_event                        1
------------------------------------------------------------

But then, even with that attr.exclude_kernel set to 1 we _still_ get
kernel samples, which looks like another bug, now trying with strace,
which leads us to another rabbit hole:

[perf@five ~]$ strace -e perf_event_open -o /tmp/out.put perf top --stdio
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

If I remove that strace -e ... from the front, 'perf top' is back
working as a non-cap_sys_admin user, just with cap_perfmon.

- Arnaldo
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
