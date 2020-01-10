Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 7ADDC13753F
	for <lists+intel-gfx@lfdr.de>; Fri, 10 Jan 2020 18:51:51 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 551056EA73;
	Fri, 10 Jan 2020 17:51:49 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-qt1-x842.google.com (mail-qt1-x842.google.com
 [IPv6:2607:f8b0:4864:20::842])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 39C516EA5F
 for <intel-gfx@lists.freedesktop.org>; Fri, 10 Jan 2020 16:45:35 +0000 (UTC)
Received: by mail-qt1-x842.google.com with SMTP id n15so2443695qtp.5
 for <intel-gfx@lists.freedesktop.org>; Fri, 10 Jan 2020 08:45:35 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:date:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to;
 bh=s80UcNQvKwGgKWzgf5mb0xu3daHQpbt1S8dMQfZFc54=;
 b=Ok+PdgOkxWfVNZDBHC7AxcoITL4nnSC4kT9KjSqRuC1eTjfmC3LmiPvnvS171U4tna
 EP8iijKW402NqG5BQx0coWKMEOVLMeGKc7ap98b6Rxbh9hPjWfSYFuB8E80W7o5tEa0O
 ek9FW+VSI8iQh6VP6skYcf093r9SVtaSVemJCMeYaE/PnLp/tTkEDChLmjDKQF0AdxlE
 fPjw+quRMzhLGO443NvQb4dIgcflvLFBLkxMtRcloEjnxDpZATC4idego7WSfiaP3Jw3
 BAz+Hsmc+r9gtv6eKgFDuF1OwZhT+5WqFpA+9hhpFHz1e0iBUICVW9826sBvrRCXXr80
 32OQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:date:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to;
 bh=s80UcNQvKwGgKWzgf5mb0xu3daHQpbt1S8dMQfZFc54=;
 b=C7F+GuqRnn5Kq/9MshKC4z/G2N/7NdQNqOZfNuFDwNVVB9soyUlqFRrCclFCdEpubS
 Qar46SOCVruW/s8JAJnLdykDrWz9P8H2NMBDqUnprLTL54mRt7WIKSFSgIfsWgLvrzJq
 TZHywLl5YcUumNVbSxVYVKJnC2/aSWfQ8QeM2XFfOFQ+21249PKbV9BaIZ+zaPkMH8Wl
 /6rtwVXRhQOy6alb7VCSRI7ni9QOnEvzKPX7H0FC6qZIqfzLIJ/tfSW02ZXk/KuJmePH
 Yms8+yV5KvVRPb9L357ZBdhFn8Jf1AT4QYHpEIHQBr9n3mi3rW3BP3EdpGI/JDXX5FoX
 iv2w==
X-Gm-Message-State: APjAAAX0y1GbwvnuThMjxpw5cdpyGW3svg/EIhsiXjIrUEl1iQ+4jTN4
 qaSK5mYNjhOSubD7xszEFBY=
X-Google-Smtp-Source: APXvYqynM7DSjiVb/K1cuj10GL5Qx3F6jhpXa1DeMyONRynlWzC2QHu0QHM7eFjM/sX/8EKaoo1NZQ==
X-Received: by 2002:ac8:163c:: with SMTP id p57mr3289416qtj.106.1578674734400; 
 Fri, 10 Jan 2020 08:45:34 -0800 (PST)
Received: from quaco.ghostprotocols.net ([179.97.37.151])
 by smtp.gmail.com with ESMTPSA id g81sm1091649qkb.70.2020.01.10.08.45.33
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Fri, 10 Jan 2020 08:45:33 -0800 (PST)
From: Arnaldo Carvalho de Melo <arnaldo.melo@gmail.com>
X-Google-Original-From: Arnaldo Carvalho de Melo <acme@kernel.org>
Received: by quaco.ghostprotocols.net (Postfix, from userid 1000)
 id BCA6F40DFD; Fri, 10 Jan 2020 13:45:31 -0300 (-03)
Date: Fri, 10 Jan 2020 13:45:31 -0300
To: Masami Hiramatsu <mhiramat@kernel.org>
Message-ID: <20200110164531.GA2598@kernel.org>
References: <c0460c78-b1a6-b5f7-7119-d97e5998f308@linux.intel.com>
 <c93309dc-b920-f5fa-f997-e8b2faf47b88@linux.intel.com>
 <20200108160713.GI2844@hirez.programming.kicks-ass.net>
 <cc239899-5c52-2fd0-286d-4bff18877937@linux.intel.com>
 <20200110140234.GO2844@hirez.programming.kicks-ass.net>
 <20200111005213.6dfd98fb36ace098004bde0e@kernel.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200111005213.6dfd98fb36ace098004bde0e@kernel.org>
X-Url: http://acmel.wordpress.com
X-Mailman-Approved-At: Fri, 10 Jan 2020 17:51:44 +0000
Subject: Re: [Intel-gfx] [PATCH v4 2/9] perf/core: open access for
 CAP_SYS_PERFMON privileged process
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
Cc: Mark Rutland <mark.rutland@arm.com>, Song Liu <songliubraving@fb.com>,
 Peter Zijlstra <peterz@infradead.org>,
 Benjamin Herrenschmidt <benh@kernel.crashing.org>,
 Will Deacon <will.deacon@arm.com>, Alexei Starovoitov <ast@kernel.org>,
 Stephane Eranian <eranian@google.com>,
 "james.bottomley@hansenpartnership.com"
 <james.bottomley@hansenpartnership.com>, Paul Mackerras <paulus@samba.org>,
 Jiri Olsa <jolsa@redhat.com>, Andi Kleen <ak@linux.intel.com>,
 Michael Ellerman <mpe@ellerman.id.au>, Igor Lubashev <ilubashe@akamai.com>,
 James Morris <jmorris@namei.org>,
 Alexander Shishkin <alexander.shishkin@linux.intel.com>,
 Ingo Molnar <mingo@redhat.com>, oprofile-list@lists.sf.net,
 Serge Hallyn <serge@hallyn.com>, Robert Richter <rric@kernel.org>,
 Kees Cook <keescook@chromium.org>, Jann Horn <jannh@google.com>,
 "selinux@vger.kernel.org" <selinux@vger.kernel.org>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>,
 Namhyung Kim <namhyung@kernel.org>, Thomas Gleixner <tglx@linutronix.de>,
 linux-arm-kernel@lists.infradead.org,
 "linux-parisc@vger.kernel.org" <linux-parisc@vger.kernel.org>,
 linux-kernel <linux-kernel@vger.kernel.org>,
 "linux-perf-users@vger.kernel.org" <linux-perf-users@vger.kernel.org>,
 "linux-security-module@vger.kernel.org"
 <linux-security-module@vger.kernel.org>,
 Casey Schaufler <casey@schaufler-ca.com>,
 "bpf@vger.kernel.org" <bpf@vger.kernel.org>,
 "linuxppc-dev@lists.ozlabs.org" <linuxppc-dev@lists.ozlabs.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

Em Sat, Jan 11, 2020 at 12:52:13AM +0900, Masami Hiramatsu escreveu:
> On Fri, 10 Jan 2020 15:02:34 +0100 Peter Zijlstra <peterz@infradead.org> wrote:
> > Again, this only allows attaching to previously created kprobes, it does
> > not allow creating kprobes, right?

> > That is; I don't think CAP_SYS_PERFMON should be allowed to create
> > kprobes.

> > As might be clear; I don't actually know what the user-ABI is for
> > creating kprobes.

> There are 2 ABIs nowadays, ftrace and ebpf. perf-probe uses ftrace interface to
> define new kprobe events, and those events are treated as completely same as
> tracepoint events. On the other hand, ebpf tries to define new probe event
> via perf_event interface. Above one is that interface. IOW, it creates new kprobe.

Masami, any plans to make 'perf probe' use the perf_event_open()
interface for creating kprobes/uprobes?

- Arnaldo
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
