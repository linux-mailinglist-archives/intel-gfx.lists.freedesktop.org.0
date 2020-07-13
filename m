Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 45AE321D659
	for <lists+intel-gfx@lfdr.de>; Mon, 13 Jul 2020 14:53:59 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id DD6E86E4CF;
	Mon, 13 Jul 2020 12:53:52 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
 by gabe.freedesktop.org (Postfix) with ESMTPS id D4BDF6E202
 for <intel-gfx@lists.freedesktop.org>; Mon, 13 Jul 2020 12:17:49 +0000 (UTC)
Received: from quaco.ghostprotocols.net (unknown [177.158.141.203])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 5CCDB206F0;
 Mon, 13 Jul 2020 12:17:49 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1594642669;
 bh=wc2dhxkIG9GjfHmWSmkltugECChmqIjO4+eGKEz9U8U=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=NU7xlNRIpfzoyfaed7t2MB9wYUrmC/Wy9Zlmr0S7A2G8ByKqE2GKBqMXDhAYt24gG
 bdyovVnMvdmfyTmoH1pgspO72I5SfzqbEO+2pPZSiZR+npt9idpq9b8Nf+K4jH7Avf
 KtG4JjEQf3O/2GuwLHU1ceEofeuxDiN5LocZDN5k=
Received: by quaco.ghostprotocols.net (Postfix, from userid 1000)
 id 125C7405FF; Mon, 13 Jul 2020 09:17:46 -0300 (-03)
Date: Mon, 13 Jul 2020 09:17:46 -0300
From: Arnaldo Carvalho de Melo <acme@kernel.org>
To: Alexey Budankov <alexey.budankov@linux.intel.com>,
 Peter Zijlstra <peterz@infradead.org>
Message-ID: <20200713121746.GA7029@kernel.org>
References: <f96f8f8a-e65c-3f36-dc85-fc3f5191e8c5@linux.intel.com>
 <76718dc6-5483-5e2e-85b8-64e70306ee1f@linux.ibm.com>
 <7776fa40-6c65-2aa6-1322-eb3a01201000@linux.intel.com>
 <20200710170911.GD7487@kernel.org>
 <0d2e2306-22b2-a730-dc3f-edb3538b6561@linux.intel.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <0d2e2306-22b2-a730-dc3f-edb3538b6561@linux.intel.com>
X-Url: http://acmel.wordpress.com
X-Mailman-Approved-At: Mon, 13 Jul 2020 12:53:51 +0000
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
 "selinux@vger.kernel.org" <selinux@vger.kernel.org>,
 linux-kernel <linux-kernel@vger.kernel.org>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>,
 Igor Lubashev <ilubashe@akamai.com>, Alexei Starovoitov <ast@kernel.org>,
 Stephane Eranian <eranian@google.com>, James Morris <jmorris@namei.org>,
 "linux-security-module@vger.kernel.org"
 <linux-security-module@vger.kernel.org>, Ingo Molnar <mingo@redhat.com>,
 Namhyung Kim <namhyung@kernel.org>, Thomas Gleixner <tglx@linutronix.de>,
 Jiri Olsa <jolsa@redhat.com>, Serge Hallyn <serge@hallyn.com>
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

Em Mon, Jul 13, 2020 at 12:48:25PM +0300, Alexey Budankov escreveu:
> =

> On 10.07.2020 20:09, Arnaldo Carvalho de Melo wrote:
> > Em Fri, Jul 10, 2020 at 05:30:50PM +0300, Alexey Budankov escreveu:
> >> On 10.07.2020 16:31, Ravi Bangoria wrote:
> >>>> Currently access to perf_events, i915_perf and other performance
> >>>> monitoring and observability subsystems of the kernel is open only f=
or
> >>>> a privileged process [1] with CAP_SYS_ADMIN capability enabled in the
> >>>> process effective set [2].

> >>>> This patch set introduces CAP_PERFMON capability designed to secure
> >>>> system performance monitoring and observability operations so that
> >>>> CAP_PERFMON would assist CAP_SYS_ADMIN capability in its governing r=
ole
> >>>> for performance monitoring and observability subsystems of the kerne=
l.

> >>> I'm seeing an issue with CAP_PERFMON when I try to record data for a
> >>> specific target. I don't know whether this is sort of a regression or
> >>> an expected behavior.

> >> Thanks for reporting and root causing this case. The behavior looks li=
ke
> >> kind of expected since currently CAP_PERFMON takes over the related pa=
rt
> >> of CAP_SYS_ADMIN credentials only. Actually Perf security docs [1] say
> >> that access control is also subject to CAP_SYS_PTRACE credentials.

> > I think that stating that in the error message would be helpful, after
> > all, who reads docs? 8-)

> At least those who write it :D ...

Everybody should read it, sure :-)
 =

> > I.e., this:
> > =

> > $ ./perf stat ls
> > =A0 Error:
> > =A0 Access to performance monitoring and observability operations is li=
mited.
> > $
> > =

> > Could become:
> > =

> > $ ./perf stat ls
> > =A0 Error:
> > =A0 Access to performance monitoring and observability operations is li=
mited.
> >   Right now only CAP_PERFMON is granted, you may need CAP_SYS_PTRACE.
> > $
> =

> It would better provide reference to perf security docs in the tool outpu=
t.

So add a 3rd line:

$ ./perf stat ls
=A0 Error:
=A0 Access to performance monitoring and observability operations is limite=
d.
  Right now only CAP_PERFMON is granted, you may need CAP_SYS_PTRACE.
  Please read the 'Perf events and tool security' document:
  https://www.kernel.org/doc/html/latest/admin-guide/perf-security.html

> Looks like extending ptrace_may_access() check for perf_events with CAP_P=
ERFMON

You mean the following?

diff --git a/kernel/events/core.c b/kernel/events/core.c
index 856d98c36f56..a2397f724c10 100644
--- a/kernel/events/core.c
+++ b/kernel/events/core.c
@@ -11595,7 +11595,7 @@ SYSCALL_DEFINE5(perf_event_open,
 		 * perf_event_exit_task() that could imply).
 		 */
 		err =3D -EACCES;
-		if (!ptrace_may_access(task, PTRACE_MODE_READ_REALCREDS))
+		if (!perfmon_capable() && !ptrace_may_access(task, PTRACE_MODE_READ_REAL=
CREDS))
 			goto err_cred;
 	}

> makes monitoring simpler and even more secure to use since Perf tool need
> not to start/stop/single-step and read/write registers and memory and so =
on
> like a debugger or strace-like tool. What do you think?

I tend to agree, Peter?
 =

> Alexei
> =

> > =

> > - Arnaldo
> >  =

> >> CAP_PERFMON could be used to extend and substitute ptrace_may_access()
> >> check in perf_events subsystem to simplify user experience at least in
> >> this specific case.
> >>
> >> Alexei
> >>
> >> [1] https://www.kernel.org/doc/html/latest/admin-guide/perf-security.h=
tml
> >>
> >>>
> >>> Without setting CAP_PERFMON:
> >>>
> >>> =A0 $ getcap ./perf
> >>> =A0 $ ./perf stat -a ls
> >>> =A0=A0=A0 Error:
> >>> =A0=A0=A0 Access to performance monitoring and observability operatio=
ns is limited.
> >>> =A0 $ ./perf stat ls
> >>> =A0=A0=A0 Performance counter stats for 'ls':
> >>> =A0=A0 =A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0 2.06 msec tas=
k-clock:u=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0 #=A0=A0=A0 0.418 CPUs util=
ized
> >>> =A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0 0=A0=A0=A0=
=A0=A0 context-switches:u=A0=A0=A0=A0=A0=A0=A0 #=A0=A0=A0 0.000 K/sec
> >>> =A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0 0=A0=A0=A0=
=A0=A0 cpu-migrations:u=A0=A0=A0=A0=A0=A0=A0=A0=A0 #=A0=A0=A0 0.000 K/sec
> >>>
> >>> With CAP_PERFMON:
> >>>
> >>> =A0 $ getcap ./perf
> >>> =A0=A0=A0 ./perf =3D cap_perfmon+ep
> >>> =A0 $ ./perf stat -a ls
> >>> =A0=A0=A0 Performance counter stats for 'system wide':
> >>> =A0=A0 =A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0 142.42 msec cpu-clo=
ck=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0 #=A0=A0 25.062 CPUs util=
ized
> >>> =A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0 182=A0=A0=A0=A0=
=A0 context-switches=A0=A0=A0=A0=A0=A0=A0=A0=A0 #=A0=A0=A0 0.001 M/sec
> >>> =A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0 48=A0=A0=A0=A0=
=A0 cpu-migrations=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0 #=A0=A0=A0 0.337 K/sec
> >>> =A0 $ ./perf stat ls
> >>> =A0=A0=A0 Error:
> >>> =A0=A0=A0 Access to performance monitoring and observability operatio=
ns is limited.
> >>>
> >>> Am I missing something silly?
> >>>
> >>> Analysis:
> >>> ---------
> >>> A bit more analysis lead me to below kernel code fs/exec.c:
> >>>
> >>> =A0 begin_new_exec()
> >>> =A0 {
> >>> =A0=A0=A0=A0=A0=A0=A0 ...
> >>> =A0=A0=A0=A0=A0=A0=A0 if (bprm->interp_flags & BINPRM_FLAGS_ENFORCE_N=
ONDUMP ||
> >>> =A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0 !(uid_eq(current_euid(), current_ui=
d()) &&
> >>> =A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0 gid_eq(current_egid(), curren=
t_gid())))
> >>> =A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0 set_dumpable(current->m=
m, suid_dumpable);
> >>> =A0=A0=A0=A0=A0=A0=A0 else
> >>> =A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0 set_dumpable(current->m=
m, SUID_DUMP_USER);
> >>>
> >>> =A0=A0=A0=A0=A0=A0=A0 ...
> >>> =A0=A0=A0=A0=A0=A0=A0 commit_creds(bprm->cred);
> >>> =A0 }
> >>>
> >>> When I execute './perf stat ls', it's going into else condition and t=
hus sets
> >>> dumpable flag as SUID_DUMP_USER. Then in commit_creds():
> >>>
> >>> =A0 int commit_creds(struct cred *new)
> >>> =A0 {
> >>> =A0=A0=A0=A0=A0=A0=A0 ...
> >>> =A0=A0=A0=A0=A0=A0=A0 /* dumpability changes */
> >>> =A0=A0=A0=A0=A0=A0=A0 if (...
> >>> =A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0 !cred_cap_issubset(old, new)) {
> >>> =A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0 if (task->mm)
> >>> =A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=
 set_dumpable(task->mm, suid_dumpable);
> >>> =A0 }
> >>>
> >>> !cred_cap_issubset(old, new) fails for perf without any capability an=
d thus
> >>> it doesn't execute set_dumpable(). Whereas that condition passes for =
perf
> >>> with CAP_PERFMON and thus it overwrites old value (SUID_DUMP_USER) wi=
th
> >>> suid_dumpable in mm_flags. On an Ubuntu, suid_dumpable default value =
is
> >>> SUID_DUMP_ROOT. On Fedora, it's SUID_DUMP_DISABLE. (/proc/sys/fs/suid=
_dumpable).
> >>>
> >>> Now while opening an event:
> >>>
> >>> =A0 perf_event_open()
> >>> =A0=A0=A0 ptrace_may_access()
> >>> =A0=A0=A0=A0=A0 __ptrace_may_access() {
> >>> =A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0 ...
> >>> =A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0 if (mm &&
> >>> =A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0 ((get_dumpa=
ble(mm) !=3D SUID_DUMP_USER) &&
> >>> =A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0 !ptrace_=
has_cap(cred, mm->user_ns, mode)))
> >>> =A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0 return -EPE=
RM;
> >>> =A0=A0=A0=A0=A0 }
> >>>
> >>> This if condition passes for perf with CAP_PERFMON and thus it return=
s -EPERM.
> >>> But it fails for perf without CAP_PERFMON and thus it goes ahead and =
returns
> >>> success. So opening an event fails when perf has CAP_PREFMON and trie=
s to open
> >>> process specific event as normal user.
> >>>
> >>> Workarounds:
> >>> ------------
> >>> Based on above analysis, I found couple of workarounds (examples are =
on
> >>> Ubuntu 18.04.4 powerpc):
> >>>
> >>> Workaround1:
> >>> Setting SUID_DUMP_USER as default (in /proc/sys/fs/suid_dumpable) sol=
ves the
> >>> issue.
> >>>
> >>> =A0 # echo 1 > /proc/sys/fs/suid_dumpable
> >>> =A0 $ getcap ./perf
> >>> =A0=A0=A0 ./perf =3D cap_perfmon+ep
> >>> =A0 $ ./perf stat ls
> >>> =A0=A0=A0 Performance counter stats for 'ls':
> >>> =A0=A0 =A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0 1.47 msec tas=
k-clock=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0 #=A0=A0=A0 0.806 CPUs =
utilized
> >>> =A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0 0=A0=A0=A0=
=A0=A0 context-switches=A0=A0=A0=A0=A0=A0=A0=A0=A0 #=A0=A0=A0 0.000 K/sec
> >>> =A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0 0=A0=A0=A0=
=A0=A0 cpu-migrations=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0 #=A0=A0=A0 0.000 K/s=
ec
> >>>
> >>> Workaround2:
> >>> Using CAP_SYS_PTRACE along with CAP_PERFMON solves the issue.
> >>>
> >>> =A0 $ cat /proc/sys/fs/suid_dumpable
> >>> =A0=A0=A0 2
> >>> =A0 # setcap "cap_perfmon,cap_sys_ptrace=3Dep" ./perf
> >>> =A0 $ ./perf stat ls
> >>> =A0=A0=A0 Performance counter stats for 'ls':
> >>> =A0=A0 =A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0 1.41 msec tas=
k-clock=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0 #=A0=A0=A0 0.826 CPUs =
utilized
> >>> =A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0 0=A0=A0=A0=
=A0=A0 context-switches=A0=A0=A0=A0=A0=A0=A0=A0=A0 #=A0=A0=A0 0.000 K/sec
> >>> =A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0 0=A0=A0=A0=
=A0=A0 cpu-migrations=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0 #=A0=A0=A0 0.000 K/s=
ec
> >>>
> >>> Workaround3:
> >>> Adding CAP_PERFMON to parent of perf (/bin/bash) also solves the issu=
e.
> >>>
> >>> =A0 $ cat /proc/sys/fs/suid_dumpable
> >>> =A0=A0=A0 2
> >>> =A0 # setcap "cap_perfmon=3Dep" /bin/bash
> >>> =A0 # setcap "cap_perfmon=3Dep" ./perf
> >>> =A0 $ bash
> >>> =A0 $ ./perf stat ls
> >>> =A0=A0=A0 Performance counter stats for 'ls':
> >>> =A0=A0 =A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0 1.47 msec tas=
k-clock=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0 #=A0=A0=A0 0.806 CPUs =
utilized
> >>> =A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0 0=A0=A0=A0=
=A0=A0 context-switches=A0=A0=A0=A0=A0=A0=A0=A0=A0 #=A0=A0=A0 0.000 K/sec
> >>> =A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0 0=A0=A0=A0=
=A0=A0 cpu-migrations=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0 #=A0=A0=A0 0.000 K/s=
ec
> >>>
> >>> - Ravi
> > =


-- =


- Arnaldo
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
