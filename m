Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 7B19E1A124E
	for <lists+intel-gfx@lfdr.de>; Tue,  7 Apr 2020 18:58:51 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id EA67C6E8B0;
	Tue,  7 Apr 2020 16:58:48 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-qk1-x741.google.com (mail-qk1-x741.google.com
 [IPv6:2607:f8b0:4864:20::741])
 by gabe.freedesktop.org (Postfix) with ESMTPS id C94B16E113
 for <intel-gfx@lists.freedesktop.org>; Tue,  7 Apr 2020 16:40:53 +0000 (UTC)
Received: by mail-qk1-x741.google.com with SMTP id m67so1136294qke.12
 for <intel-gfx@lists.freedesktop.org>; Tue, 07 Apr 2020 09:40:53 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:date:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to;
 bh=NEBZoEbbGRpG5+efrS4YpEv5tZvQcL2k17oabanZi30=;
 b=m9E0bGcM1xVIO6HzwOiiw6azRMQ74K9HY/E+3Cq8ZYo+b2q/t/4DqwdDJysT1v2/jE
 /Fbw+z77aAyD2P+UZL/NhMvnvrX4mIAXXG4/6zyxXJSoSCTEF/6PwBr25bCL4Wdgl11G
 xE1YP75k2LXGGKeO0RfqexMQBXvkypqNCbnG8KDXj0GGIMsc/fxCnRSOpuQtldDxVBT5
 bKitoI/pXFqrGa6Tuno2w0+IeKCc15VeBK2o8DK2XbIfk3dLryz+nDLgDWir1FYORsOm
 YILS26DYbdWonLPnQAoI/lvv1QTpYxRO1rw/3K5Sqc9L7RWKCOLQMyA7GfTRGaA9C+HU
 msKw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:date:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to;
 bh=NEBZoEbbGRpG5+efrS4YpEv5tZvQcL2k17oabanZi30=;
 b=Qj0fCiZk44JVc+4fClddh2ZUVZlKTi+T3CtqnS1SeE9yD/SKLIdxtyUaKN35CgWAMJ
 00MX9cKhjr7aMxQ8CusQyU8R7yY3/UguOkwkxiSSdmCqyL5oxm6NX0t7mLMi9fQ1Wun1
 XNe7t5i8A9ggNHhiN+hPS6C1kBuElIw1TwW8vTE/hv0+ud926+BH/Z2btihOwOWL/rTg
 smHFvsdy1TXZHirtkNr0xTov/0FIu0KawYemY6a5K0qzeaue0gOeHTooDjYxLPyH8dOu
 RSzRCTKaJ/X6tSEqihbs3qiOesfNfoa5uW02um7fkYxnr1B+DBLQ6u3Mf69iX/xWeCWL
 Rx2A==
X-Gm-Message-State: AGi0PuZltrHoZBXOgoVRNP/AHo4YlUTcVynHC2zfleMxDNFY1VNa4tOu
 1YJ3V0DxqpiSaYPOp4W0Aps=
X-Google-Smtp-Source: APiQypLyjk8hC3wH5TspiRi3WgJRbW7/VmxEEgbMs9kvR9mUY96WFZvAa+DGSCDDJfubK+BP2ROymA==
X-Received: by 2002:ae9:c312:: with SMTP id n18mr3041970qkg.472.1586277652883; 
 Tue, 07 Apr 2020 09:40:52 -0700 (PDT)
Received: from quaco.ghostprotocols.net ([179.97.37.151])
 by smtp.gmail.com with ESMTPSA id t11sm3230053qto.75.2020.04.07.09.40.51
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Tue, 07 Apr 2020 09:40:52 -0700 (PDT)
From: Arnaldo Carvalho de Melo <arnaldo.melo@gmail.com>
X-Google-Original-From: Arnaldo Carvalho de Melo <acme@kernel.org>
Received: by quaco.ghostprotocols.net (Postfix, from userid 1000)
 id 4A371409A3; Tue,  7 Apr 2020 13:40:50 -0300 (-03)
Date: Tue, 7 Apr 2020 13:40:50 -0300
To: Arnaldo Carvalho de Melo <arnaldo.melo@gmail.com>
Message-ID: <20200407164050.GC12003@kernel.org>
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

I ammended this to that patch, please check the wording:

- Arnaldo

diff --git a/Documentation/admin-guide/perf-security.rst b/Documentation/admin-guide/perf-security.rst
index c0ca0c1a6804..ed33682e26b0 100644
--- a/Documentation/admin-guide/perf-security.rst
+++ b/Documentation/admin-guide/perf-security.rst
@@ -127,12 +127,19 @@ taken to create such groups of privileged Perf users.
 
 ::
 
-   # setcap "cap_perfmon,cap_sys_ptrace,cap_syslog=ep" perf
-   # setcap -v "cap_perfmon,cap_sys_ptrace,cap_syslog=ep" perf
+   # setcap "cap_perfmon,cap_ipc_lock,cap_sys_ptrace,cap_syslog=ep" perf
+   # setcap -v "cap_perfmon,cap_ipc_lock,cap_sys_ptrace,cap_syslog=ep" perf
    perf: OK
    # getcap perf
    perf = cap_sys_ptrace,cap_syslog,cap_perfmon+ep
 
+If the libcap installed doesn't yet support "cap_perfmon", use "38" instead,
+i.e.:
+
+::
+
+   # setcap "38,cap_ipc_lock,cap_sys_ptrace,cap_syslog=ep" perf
+
 As a result, members of perf_users group are capable of conducting
 performance monitoring and observability by using functionality of the
 configured Perf tool executable that, when executes, passes perf_events
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
