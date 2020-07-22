Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 575CD22EC36
	for <lists+intel-gfx@lfdr.de>; Mon, 27 Jul 2020 14:31:47 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 48B7D89D83;
	Mon, 27 Jul 2020 12:31:40 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 3B4026E153
 for <intel-gfx@lists.freedesktop.org>; Wed, 22 Jul 2020 11:30:13 +0000 (UTC)
Received: from quaco.ghostprotocols.net (unknown [177.17.3.185])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id C477920771;
 Wed, 22 Jul 2020 11:30:12 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1595417413;
 bh=zDKW70gtRYBxNcRCZwDBVRBmBO9V/xhxwmi6E5qgeqE=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=htoisg+wZdskpQ/VrgTFuIOfe53U2SVfcUrgbJ0WUpoTdx7adkZV3fZuTgsIX6yNS
 XX+nyH+atCe+njcnvvGEHBzF+V5JRL740v6n6OR34r/Zqk23V2R5EolNHDFe4Ar8Zh
 uRfa4vGIjhKbvsTiW//KPMTRhzn2BI6+Hbt3ZhbI=
Received: by quaco.ghostprotocols.net (Postfix, from userid 1000)
 id 16F77404B1; Wed, 22 Jul 2020 08:30:08 -0300 (-03)
Date: Wed, 22 Jul 2020 08:30:07 -0300
From: Arnaldo Carvalho de Melo <acme@kernel.org>
To: Alexey Budankov <alexey.budankov@linux.intel.com>
Message-ID: <20200722113007.GI77866@kernel.org>
References: <f96f8f8a-e65c-3f36-dc85-fc3f5191e8c5@linux.intel.com>
 <76718dc6-5483-5e2e-85b8-64e70306ee1f@linux.ibm.com>
 <7776fa40-6c65-2aa6-1322-eb3a01201000@linux.intel.com>
 <20200710170911.GD7487@kernel.org>
 <0d2e2306-22b2-a730-dc3f-edb3538b6561@linux.intel.com>
 <20200713121746.GA7029@kernel.org>
 <0fadcf78-8b0e-ed03-a554-cc172b7d249c@linux.intel.com>
 <20200713185152.GA18094@kernel.org>
 <8d6030a4-ff2c-230c-c36e-d0a8c68832ac@linux.intel.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <8d6030a4-ff2c-230c-c36e-d0a8c68832ac@linux.intel.com>
X-Url: http://acmel.wordpress.com
X-Mailman-Approved-At: Mon, 27 Jul 2020 12:31:38 +0000
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
Cc: Ravi Bangoria <ravi.bangoria@linux.ibm.com>,
 Song Liu <songliubraving@fb.com>, Andi Kleen <ak@linux.intel.com>,
 linux-man@vger.kernel.org,
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

Em Tue, Jul 21, 2020 at 04:06:34PM +0300, Alexey Budankov escreveu:
> 
> On 13.07.2020 21:51, Arnaldo Carvalho de Melo wrote:
> > Em Mon, Jul 13, 2020 at 03:37:51PM +0300, Alexey Budankov escreveu:
> >>
> >> On 13.07.2020 15:17, Arnaldo Carvalho de Melo wrote:
> >>> Em Mon, Jul 13, 2020 at 12:48:25PM +0300, Alexey Budankov escreveu:
> >> If it had that patch below then message change would not be required.

> > Sure, but the tool should continue to work and provide useful messages
> > when running on kernels without that change. Pointing to the document is
> > valid and should be done, that is an agreed point. But the tool can do
> > some checks, narrow down the possible causes for the error message and
> > provide something that in most cases will make the user make progress.

> >> However this two sentences in the end of whole message would still add up:
> >> "Please read the 'Perf events and tool security' document:
> >>  https://www.kernel.org/doc/html/latest/admin-guide/perf-security.html"

> > We're in violent agreement here. :-)
 
> Here is the message draft mentioning a) CAP_SYS_PTRACE, for kernels prior
> v5.8, and b) Perf security document link. The plan is to send a patch extending
> perf_events with CAP_PERFMON check [1] for ptrace_may_access() and extending
> the tool with this message.
 
> "Access to performance monitoring and observability operations is limited.
>  Enforced MAC policy settings (SELinux) can limit access to performance
>  monitoring and observability operations. Inspect system audit records for
>  more perf_event access control information and adjusting the policy.
>  Consider adjusting /proc/sys/kernel/perf_event_paranoid setting to open
>  access to performance monitoring and observability operations for processes
>  without CAP_PERFMON, CAP_SYS_PTRACE or CAP_SYS_ADMIN Linux capability.
>  More information can be found at 'Perf events and tool security' document:
>  https://www.kernel.org/doc/html/latest/admin-guide/perf-security.html
>  perf_event_paranoid setting is -1:
>      -1: Allow use of (almost) all events by all users
>            Ignore mlock limit after perf_event_mlock_kb without CAP_IPC_LOCK
>  >= 0: Disallow raw and ftrace function tracepoint access
>  >= 1: Disallow CPU event access
>  >= 2: Disallow kernel profiling
>  To make the adjusted perf_event_paranoid setting permanent preserve it
>  in /etc/sysctl.conf (e.g. kernel.perf_event_paranoid = <setting>)"

Looks ok! Lots of knobs to control access as one needs.

- Arnaldo
 
> Alexei
> 
> [1] https://lore.kernel.org/lkml/20200713121746.GA7029@kernel.org/
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
