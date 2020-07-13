Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 4E69321E140
	for <lists+intel-gfx@lfdr.de>; Mon, 13 Jul 2020 22:13:07 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 4806F6E7D1;
	Mon, 13 Jul 2020 20:13:04 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 3E7FB6E550
 for <intel-gfx@lists.freedesktop.org>; Mon, 13 Jul 2020 18:51:55 +0000 (UTC)
Received: from quaco.ghostprotocols.net (unknown [179.97.37.151])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id A52E62067D;
 Mon, 13 Jul 2020 18:51:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1594666315;
 bh=LJYNdMjGh9jhnhTSdjGmRfj4ZZPmYTCiDmXsEYK+rbA=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=xcUtfiYB9gVw0idtGZ0ckHJ2AwARiBsz3B5pO/4Xsnz0RRlywvnR9X3VFXsqG5tBe
 5BFF04XGFk0AfoP+GCDL7YcFUld9kJx5NTN7ySezxdO8tPJlxVaKmnlPfv01njAyWF
 f3dcdWXOvMV/lHwrEnxNT6iK1jKKpuEn4rBQVCxk=
Received: by quaco.ghostprotocols.net (Postfix, from userid 1000)
 id 1C9B440094; Mon, 13 Jul 2020 15:51:52 -0300 (-03)
Date: Mon, 13 Jul 2020 15:51:52 -0300
From: Arnaldo Carvalho de Melo <acme@kernel.org>
To: Alexey Budankov <alexey.budankov@linux.intel.com>
Message-ID: <20200713185152.GA18094@kernel.org>
References: <f96f8f8a-e65c-3f36-dc85-fc3f5191e8c5@linux.intel.com>
 <76718dc6-5483-5e2e-85b8-64e70306ee1f@linux.ibm.com>
 <7776fa40-6c65-2aa6-1322-eb3a01201000@linux.intel.com>
 <20200710170911.GD7487@kernel.org>
 <0d2e2306-22b2-a730-dc3f-edb3538b6561@linux.intel.com>
 <20200713121746.GA7029@kernel.org>
 <0fadcf78-8b0e-ed03-a554-cc172b7d249c@linux.intel.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <0fadcf78-8b0e-ed03-a554-cc172b7d249c@linux.intel.com>
X-Url: http://acmel.wordpress.com
X-Mailman-Approved-At: Mon, 13 Jul 2020 20:13:02 +0000
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
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

Em Mon, Jul 13, 2020 at 03:37:51PM +0300, Alexey Budankov escreveu:
> =

> On 13.07.2020 15:17, Arnaldo Carvalho de Melo wrote:
> > Em Mon, Jul 13, 2020 at 12:48:25PM +0300, Alexey Budankov escreveu:
> >>
> >> On 10.07.2020 20:09, Arnaldo Carvalho de Melo wrote:
> >>> Em Fri, Jul 10, 2020 at 05:30:50PM +0300, Alexey Budankov escreveu:
> >>>> On 10.07.2020 16:31, Ravi Bangoria wrote:
> >>>>>> Currently access to perf_events, i915_perf and other performance
> >>>>>> monitoring and observability subsystems of the kernel is open only=
 for
> >>>>>> a privileged process [1] with CAP_SYS_ADMIN capability enabled in =
the
> >>>>>> process effective set [2].
> > =

> >>>>>> This patch set introduces CAP_PERFMON capability designed to secure
> >>>>>> system performance monitoring and observability operations so that
> >>>>>> CAP_PERFMON would assist CAP_SYS_ADMIN capability in its governing=
 role
> >>>>>> for performance monitoring and observability subsystems of the ker=
nel.
> > =

> >>>>> I'm seeing an issue with CAP_PERFMON when I try to record data for a
> >>>>> specific target. I don't know whether this is sort of a regression =
or
> >>>>> an expected behavior.
> > =

> >>>> Thanks for reporting and root causing this case. The behavior looks =
like
> >>>> kind of expected since currently CAP_PERFMON takes over the related =
part
> >>>> of CAP_SYS_ADMIN credentials only. Actually Perf security docs [1] s=
ay
> >>>> that access control is also subject to CAP_SYS_PTRACE credentials.
> > =

> >>> I think that stating that in the error message would be helpful, after
> >>> all, who reads docs? 8-)
> > =

> >> At least those who write it :D ...
> > =

> > Everybody should read it, sure :-)
> >  =

> >>> I.e., this:
> >>>
> >>> $ ./perf stat ls
> >>> =A0 Error:
> >>> =A0 Access to performance monitoring and observability operations is =
limited.
> >>> $
> >>>
> >>> Could become:
> >>>
> >>> $ ./perf stat ls
> >>> =A0 Error:
> >>> =A0 Access to performance monitoring and observability operations is =
limited.
> >>>   Right now only CAP_PERFMON is granted, you may need CAP_SYS_PTRACE.
> >>> $
> >>
> >> It would better provide reference to perf security docs in the tool ou=
tput.
> > =

> > So add a 3rd line:
> > =

> > $ ./perf stat ls
> > =A0 Error:
> > =A0 Access to performance monitoring and observability operations is li=
mited.
> >   Right now only CAP_PERFMON is granted, you may need CAP_SYS_PTRACE.
> >   Please read the 'Perf events and tool security' document:
> >   https://www.kernel.org/doc/html/latest/admin-guide/perf-security.html

> If it had that patch below then message change would not be required.

Sure, but the tool should continue to work and provide useful messages
when running on kernels without that change. Pointing to the document is
valid and should be done, that is an agreed point. But the tool can do
some checks, narrow down the possible causes for the error message and
provide something that in most cases will make the user make progress.

> However this two sentences in the end of whole message would still add up:
> "Please read the 'Perf events and tool security' document:
>  https://www.kernel.org/doc/html/latest/admin-guide/perf-security.html"

We're in violent agreement here. :-)
 =

> > =

> >> Looks like extending ptrace_may_access() check for perf_events with CA=
P_PERFMON
> > =

> > You mean the following?
> =

> Exactly that.

Sure, lets then wait for others to chime in and then you can go ahead
and submit that patch.

Peter?

- Arnaldo
 =

> > =

> > diff --git a/kernel/events/core.c b/kernel/events/core.c
> > index 856d98c36f56..a2397f724c10 100644
> > --- a/kernel/events/core.c
> > +++ b/kernel/events/core.c
> > @@ -11595,7 +11595,7 @@ SYSCALL_DEFINE5(perf_event_open,
> >  		 * perf_event_exit_task() that could imply).
> >  		 */
> >  		err =3D -EACCES;
> > -		if (!ptrace_may_access(task, PTRACE_MODE_READ_REALCREDS))
> > +		if (!perfmon_capable() && !ptrace_may_access(task, PTRACE_MODE_READ_=
REALCREDS))
> >  			goto err_cred;
> >  	}
> > =

> >> makes monitoring simpler and even more secure to use since Perf tool n=
eed
> >> not to start/stop/single-step and read/write registers and memory and =
so on
> >> like a debugger or strace-like tool. What do you think?
> > =

> > I tend to agree, Peter?
> >  =

> >> Alexei
> >>
> >>>
> >>> - Arnaldo
> =

> Alexei

-- =


- Arnaldo
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
