Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id B15391A124D
	for <lists+intel-gfx@lfdr.de>; Tue,  7 Apr 2020 18:58:49 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id C32746E8AD;
	Tue,  7 Apr 2020 16:58:44 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-qt1-x843.google.com (mail-qt1-x843.google.com
 [IPv6:2607:f8b0:4864:20::843])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 7A29C6E113
 for <intel-gfx@lists.freedesktop.org>; Tue,  7 Apr 2020 16:36:58 +0000 (UTC)
Received: by mail-qt1-x843.google.com with SMTP id b10so3155582qtt.9
 for <intel-gfx@lists.freedesktop.org>; Tue, 07 Apr 2020 09:36:58 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:date:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to;
 bh=JAlgjR4rDmY/2vZYzgj0uwk64bvcEfxMeQnJObS4WN0=;
 b=mzeYb/v07tBo5YAQ3Db2aIxdf3vGL2Lw5AQH2f7iRrn4Kf5IwN57ZEaRMgeTWEh+Z2
 2iFPRPjt0rybDizXAmRuJpVvYtH+3caw2QLaJcDh8KF6ofgagJCDYs6CRjXVDHFAXOfq
 WMKEBcrAyoeJUYmBod0rh7OM3zj+GREA13Qek+8274GcBUQZEc28YaRb+/Ta/gEv0tZl
 wJiX1sAo+ptRBloacUGgzhJteIUsPqM8s8XXsWIz+ORtYGKeIiFc1ucVfE+UMgp+9Ho8
 D97AcxxI76U2Fo2P4ZWpBzvTjKOzjAr/MP2ZDy7+tcJ4vcaN0AMVpMRDXXR0pm9ZlVW3
 FElA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:date:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to;
 bh=JAlgjR4rDmY/2vZYzgj0uwk64bvcEfxMeQnJObS4WN0=;
 b=hRlQzLvf1CGCa06e1NIBH8dMi4K5aehXe1suGEOep+YEB/omD332TZfUM9lCaHDZ2V
 aqLvuuBpLeNu/+qENqlmegvkDIhnvsqhO2hCNadIykMJ+TsskqSQpYQUstH14XP+0AHb
 7eaXF/Jeook+GNuE9QyPlrzvajAOfFsmr8XBJ4YPuahP7XpgZ5Z3D1BQIKysQgrxsLh8
 ih0UGxDNNH546tTjrMovhgxfvtgesQ0Jjebto1/XeKL7Revfv+gQtI/yjJuNVyYR07Mn
 ysWmuIL+YVRyu41AIYU71fGILGZWkkE5MblFwyIiAqrVhD3Ofb5qxMWPxLsd0YJs8NVH
 zyxg==
X-Gm-Message-State: AGi0PuYynsAlhlM1Fo22tXjDHX0sghJ2HA3AkaRWjsnELqgigCwYIj1b
 nEc/tySNhEHoPJFuDNeT8R5Om+WIkeD9hw==
X-Google-Smtp-Source: APiQypKskm/KL4CEIzIr5e5ePLM9bvbiEDFPYwKjt0cS+7S9OTINxM/HUxsHfDP21fQgJRCfKCqopw==
X-Received: by 2002:aed:2e24:: with SMTP id j33mr1770721qtd.117.1586277417593; 
 Tue, 07 Apr 2020 09:36:57 -0700 (PDT)
Received: from quaco.ghostprotocols.net ([179.97.37.151])
 by smtp.gmail.com with ESMTPSA id 10sm16858487qtt.54.2020.04.07.09.36.56
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Tue, 07 Apr 2020 09:36:56 -0700 (PDT)
From: Arnaldo Carvalho de Melo <arnaldo.melo@gmail.com>
X-Google-Original-From: Arnaldo Carvalho de Melo <acme@kernel.org>
Received: by quaco.ghostprotocols.net (Postfix, from userid 1000)
 id 4E253409A3; Tue,  7 Apr 2020 13:36:54 -0300 (-03)
Date: Tue, 7 Apr 2020 13:36:54 -0300
To: Alexey Budankov <alexey.budankov@linux.intel.com>
Message-ID: <20200407163654.GB12003@kernel.org>
References: <f96f8f8a-e65c-3f36-dc85-fc3f5191e8c5@linux.intel.com>
 <20200407143014.GD11186@kernel.org>
 <20200407143551.GF11186@kernel.org>
 <10cc74ee-8587-8cdb-f85f-5724b370a2ce@linux.intel.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <10cc74ee-8587-8cdb-f85f-5724b370a2ce@linux.intel.com>
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

Em Tue, Apr 07, 2020 at 05:54:27PM +0300, Alexey Budankov escreveu:
> On 07.04.2020 17:35, Arnaldo Carvalho de Melo wrote:
> > Em Tue, Apr 07, 2020 at 11:30:14AM -0300, Arnaldo Carvalho de Melo escreveu:
> >> [perf@five ~]$ type perf
> >> perf is hashed (/home/perf/bin/perf)
> >> [perf@five ~]$ getcap /home/perf/bin/perf
> >> /home/perf/bin/perf = cap_sys_ptrace,cap_syslog,38+ep
> >> [perf@five ~]$ groups
> >> perf perf_users
> >> [perf@five ~]$ id
> >> uid=1002(perf) gid=1002(perf) groups=1002(perf),1003(perf_users) context=unconfined_u:unconfined_r:unconfined_t:s0-s0:c0.c1023
> >> [perf@five ~]$ perf top --stdio
> >> Error:
> >> Failed to mmap with 1 (Operation not permitted)
> >> [perf@five ~]$ perf record -a
> >> ^C[ perf record: Woken up 1 times to write data ]
> >> [ perf record: Captured and wrote 1.177 MB perf.data (1552 samples) ]
> >>
> >> [perf@five ~]$ perf evlist
> >> cycles:u
> >> [perf@five ~]$
> > 
> > Humm, perf record falls back to cycles:u after initially trying cycles
> > (i.e. kernel and userspace), lemme see trying 'perf top -e cycles:u',
> > lemme test, humm not really:
> > 
> > [perf@five ~]$ perf top --stdio -e cycles:u
> > Error:
> > Failed to mmap with 1 (Operation not permitted)
> > [perf@five ~]$ perf record -e cycles:u -a sleep 1
> > [ perf record: Woken up 1 times to write data ]
> > [ perf record: Captured and wrote 1.123 MB perf.data (132 samples) ]
> > [perf@five ~]$
> > 
> > Back to debugging this.
> 
> Could makes sense adding cap_ipc_lock to the binary to isolate from this:
> 
> kernel/events/core.c: 6101
> 	if ((locked > lock_limit) && perf_is_paranoid() &&
> 		!capable(CAP_IPC_LOCK)) {
> 		ret = -EPERM;
> 		goto unlock;
> 	}


That did the trick, I'll update the documentation and include in my
"Committer testing" section:

[perf@five ~]$ groups
perf perf_users
[perf@five ~]$ ls -lahF bin/perf
-rwxr-x---. 1 root perf_users 24M Apr  7 10:34 bin/perf*
[perf@five ~]$ getcap bin/perf
bin/perf = cap_ipc_lock,cap_sys_ptrace,cap_syslog,38+ep
[perf@five ~]$
[perf@five ~]$ perf top --stdio


   PerfTop:     652 irqs/sec  kernel:73.8%  exact: 99.7% lost: 0/0 drop: 0/0 [4000Hz cycles:u],  (all, 12 CPUs)
---------------------------------------------------------------------------------------------------------------

    13.03%  [kernel]               [k] module_get_kallsym
     5.25%  [kernel]               [k] kallsyms_expand_symbol.constprop.0
     5.00%  libc-2.30.so           [.] __GI_____strtoull_l_internal
     4.41%  [kernel]               [k] memcpy
     3.42%  [kernel]               [k] vsnprintf
     2.98%  perf                   [.] map__process_kallsym_symbol
     2.86%  [kernel]               [k] format_decode
     2.73%  [kernel]               [k] number
     2.70%  perf                   [.] rb_next
     2.59%  perf                   [.] maps__split_kallsyms
     2.54%  [kernel]               [k] string_nocheck
     1.90%  libc-2.30.so           [.] _IO_getdelim
     1.86%  [kernel]               [k] __x86_indirect_thunk_rax
     1.53%  libc-2.30.so           [.] _int_malloc
     1.48%  libc-2.30.so           [.] __memmove_avx_unaligned_erms
     1.40%  [kernel]               [k] clear_page_rep
     1.07%  perf                   [.] rb_insert_color
     1.01%  libc-2.30.so           [.] _IO_feof
     0.99%  perf                   [.] __dso__load_kallsyms
     0.98%  [kernel]               [k] s_next
     0.96%  perf                   [.] __rblist__findnew
     0.95%  [kernel]               [k] strlen
     0.95%  perf                   [.] arch__symbols__fixup_end
     0.94%  libpixman-1.so.0.38.4  [.] 0x000000000006f4af
     0.94%  perf                   [.] symbol__new
     0.89%  libpixman-1.so.0.38.4  [.] 0x000000000006f4a0
     0.86%  [kernel]               [k] seq_read
     0.81%  libpixman-1.so.0.38.4  [.] 0x000000000006f4ab
     0.80%  perf                   [.] __symbols__insert
     0.73%  libpixman-1.so.0.38.4  [.] 0x000000000006f4a7
     0.67%  [kernel]               [k] s_show
     0.66%  libc-2.30.so           [.] __libc_calloc
     0.61%  libpixman-1.so.0.38.4  [.] 0x000000000006f4bb
     0.59%  [kernel]               [k] get_page_from_freelist
     0.59%  perf                   [.] memcpy@plt
     0.58%  perf                   [.] eprintf
exiting.
[perf@five ~]$

There is still something strange in here, the event is cycles:u (see at
the PerfTop line, but it is getting kernel samples :-\

- Arnaldo
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
