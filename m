Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id CFEBB14659F
	for <lists+intel-gfx@lfdr.de>; Thu, 23 Jan 2020 11:23:27 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 5E3246FBBD;
	Thu, 23 Jan 2020 10:23:21 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-lj1-x242.google.com (mail-lj1-x242.google.com
 [IPv6:2a00:1450:4864:20::242])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 6DA5B6E231
 for <intel-gfx@lists.freedesktop.org>; Tue, 21 Jan 2020 17:56:07 +0000 (UTC)
Received: by mail-lj1-x242.google.com with SMTP id u1so3757851ljk.7
 for <intel-gfx@lists.freedesktop.org>; Tue, 21 Jan 2020 09:56:07 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=98bZxOBbCQ3VnMNuVxei8T8EkXL1AFFFNz8Ptr5Fwf4=;
 b=f0UMJKfmKZdH5ae7CC35Bo8JfJuzIWwRMR2d3DvgxxocOt4ZxltoLSDNLwnzFZ8sCh
 mHQ747HPLwIz8jiYkjw/ZBy7Z+2kGJIfn0vBm2e30i+bbMJpifVwiABEulHvlUjKF3e+
 zmkyIyJf834Xz+CPHcMmtF5hwd//KEWq0xygi0vqFBd3IcGN7Ao8G+F+LXLzP7r3FTHU
 oWLSaaKu9S1cZeQ2mmM7DUSMHSd9Ajyf0ADQRJWavAuhTtXQndb3srd5FE+ES5vHQ81S
 2hSAKezaBjD/oILoUk/qKVeqjfM7viogSA5lWNPJ1ygAzh6EIYbDvnDKr6JiQhFI5jr2
 EyIQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=98bZxOBbCQ3VnMNuVxei8T8EkXL1AFFFNz8Ptr5Fwf4=;
 b=I4LsqYuYZ/0KhPwM+ITDIOM8Mwmud7y7fL5fFNvrsvzdLATQp/DXcXzR6JZ2Wjd1/p
 PDK4VQJjkk8IWHJdHJZwYxlVDHCqQvoO39MAOmeBXaBJQNMgBC5/FKwYo+yCHaghDBE1
 uYlHSi9BvCuULoXTWWFfHaSaP9yncTYx9foVS5IyDPxYQeBuiuAv1NGwRNR0FNgdriKk
 yKST+/wyyRwa1PYTDmr2j8/VLVMWFQ3rKbCBdA8PCUAfZg+SOxGReq0255ICfNlrtjeW
 ug9DMNlP6ivPy1iBSfCmThSCaCvXkI8kHljrQoZnayyJ/rXtWTTVn6KIs8Vrx8t55dPc
 l6PA==
X-Gm-Message-State: APjAAAWGEbaOUzK9FtRKgbjabMe4ONQXYpfnh8e5FMJC+3VUpiSizwWm
 czHsXV3zKHIkEutO7QdFjiKdzTMLPRoAwNGiuAo=
X-Google-Smtp-Source: APXvYqzSduuvbYALVkj//Xrt9JfaU9cf6Qr6bCvfXcM6mqwY1KvupDpCfJTjcSWmOKPsyFlFi8k1zTlkXGNFH8MYpJ4=
X-Received: by 2002:a05:651c:8f:: with SMTP id
 15mr17366951ljq.109.1579629365512; 
 Tue, 21 Jan 2020 09:56:05 -0800 (PST)
MIME-Version: 1.0
References: <0548c832-7f4b-dc4c-8883-3f2b6d351a08@linux.intel.com>
 <9b77124b-675d-5ac7-3741-edec575bd425@linux.intel.com>
 <64cab472-806e-38c4-fb26-0ffbee485367@tycho.nsa.gov>
 <05297eff-8e14-ccdf-55a4-870c64516de8@linux.intel.com>
In-Reply-To: <05297eff-8e14-ccdf-55a4-870c64516de8@linux.intel.com>
From: Alexei Starovoitov <alexei.starovoitov@gmail.com>
Date: Tue, 21 Jan 2020 09:55:53 -0800
Message-ID: <CAADnVQK-JzK-GUk4KOozn4c1xr=7TiCpB9Fi0QDC9nE6iVn8iQ@mail.gmail.com>
To: Alexey Budankov <alexey.budankov@linux.intel.com>
X-Mailman-Approved-At: Thu, 23 Jan 2020 10:23:15 +0000
Subject: Re: [Intel-gfx] [PATCH v5 01/10] capabilities: introduce
 CAP_PERFMON to kernel and user space
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
 "benh@kernel.crashing.org" <benh@kernel.crashing.org>,
 Will Deacon <will.deacon@arm.com>, Alexei Starovoitov <ast@kernel.org>,
 Stephane Eranian <eranian@google.com>,
 "james.bottomley@hansenpartnership.com"
 <james.bottomley@hansenpartnership.com>, Paul Mackerras <paulus@samba.org>,
 Jiri Olsa <jolsa@redhat.com>, Andi Kleen <ak@linux.intel.com>,
 Michael Ellerman <mpe@ellerman.id.au>, Igor Lubashev <ilubashe@akamai.com>,
 James Morris <jmorris@namei.org>,
 Alexander Shishkin <alexander.shishkin@linux.intel.com>,
 Ingo Molnar <mingo@redhat.com>, oprofile-list@lists.sf.net,
 Stephen Smalley <sds@tycho.nsa.gov>, Serge Hallyn <serge@hallyn.com>,
 Robert Richter <rric@kernel.org>,
 "selinux@vger.kernel.org" <selinux@vger.kernel.org>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>,
 Arnaldo Carvalho de Melo <acme@kernel.org>, Namhyung Kim <namhyung@kernel.org>,
 Thomas Gleixner <tglx@linutronix.de>,
 linux-arm-kernel <linux-arm-kernel@lists.infradead.org>,
 "linux-parisc@vger.kernel.org" <linux-parisc@vger.kernel.org>,
 linux-kernel <linux-kernel@vger.kernel.org>,
 Andy Lutomirski <luto@amacapital.net>,
 "linux-perf-users@vger.kernel.org" <linux-perf-users@vger.kernel.org>,
 "linux-security-module@vger.kernel.org"
 <linux-security-module@vger.kernel.org>,
 "linuxppc-dev@lists.ozlabs.org" <linuxppc-dev@lists.ozlabs.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Tue, Jan 21, 2020 at 9:31 AM Alexey Budankov
<alexey.budankov@linux.intel.com> wrote:
>
>
> On 21.01.2020 17:43, Stephen Smalley wrote:
> > On 1/20/20 6:23 AM, Alexey Budankov wrote:
> >>
> >> Introduce CAP_PERFMON capability designed to secure system performance
> >> monitoring and observability operations so that CAP_PERFMON would assist
> >> CAP_SYS_ADMIN capability in its governing role for perf_events, i915_perf
> >> and other performance monitoring and observability subsystems.
> >>
> >> CAP_PERFMON intends to harden system security and integrity during system
> >> performance monitoring and observability operations by decreasing attack
> >> surface that is available to a CAP_SYS_ADMIN privileged process [1].
> >> Providing access to system performance monitoring and observability
> >> operations under CAP_PERFMON capability singly, without the rest of
> >> CAP_SYS_ADMIN credentials, excludes chances to misuse the credentials and
> >> makes operation more secure.
> >>
> >> CAP_PERFMON intends to take over CAP_SYS_ADMIN credentials related to
> >> system performance monitoring and observability operations and balance
> >> amount of CAP_SYS_ADMIN credentials following the recommendations in the
> >> capabilities man page [1] for CAP_SYS_ADMIN: "Note: this capability is
> >> overloaded; see Notes to kernel developers, below."
> >>
> >> Although the software running under CAP_PERFMON can not ensure avoidance
> >> of related hardware issues, the software can still mitigate these issues
> >> following the official embargoed hardware issues mitigation procedure [2].
> >> The bugs in the software itself could be fixed following the standard
> >> kernel development process [3] to maintain and harden security of system
> >> performance monitoring and observability operations.
> >>
> >> [1] http://man7.org/linux/man-pages/man7/capabilities.7.html
> >> [2] https://www.kernel.org/doc/html/latest/process/embargoed-hardware-issues.html
> >> [3] https://www.kernel.org/doc/html/latest/admin-guide/security-bugs.html
> >>
> >> Signed-off-by: Alexey Budankov <alexey.budankov@linux.intel.com>
> >> ---
> >>   include/linux/capability.h          | 12 ++++++++++++
> >>   include/uapi/linux/capability.h     |  8 +++++++-
> >>   security/selinux/include/classmap.h |  4 ++--
> >>   3 files changed, 21 insertions(+), 3 deletions(-)
> >>
> >> diff --git a/include/linux/capability.h b/include/linux/capability.h
> >> index ecce0f43c73a..8784969d91e1 100644
> >> --- a/include/linux/capability.h
> >> +++ b/include/linux/capability.h
> >> @@ -251,6 +251,18 @@ extern bool privileged_wrt_inode_uidgid(struct user_namespace *ns, const struct
> >>   extern bool capable_wrt_inode_uidgid(const struct inode *inode, int cap);
> >>   extern bool file_ns_capable(const struct file *file, struct user_namespace *ns, int cap);
> >>   extern bool ptracer_capable(struct task_struct *tsk, struct user_namespace *ns);
> >> +static inline bool perfmon_capable(void)
> >> +{
> >> +    struct user_namespace *ns = &init_user_ns;
> >> +
> >> +    if (ns_capable_noaudit(ns, CAP_PERFMON))
> >> +        return ns_capable(ns, CAP_PERFMON);
> >> +
> >> +    if (ns_capable_noaudit(ns, CAP_SYS_ADMIN))
> >> +        return ns_capable(ns, CAP_SYS_ADMIN);
> >> +
> >> +    return false;
> >> +}
> >
> > Why _noaudit()?  Normally only used when a permission failure is non-fatal to the operation.  Otherwise, we want the audit message.
>
> Some of ideas from v4 review.

well, in the requested changes form v4 I wrote:
return capable(CAP_PERFMON);
instead of
return false;

That's what Andy suggested earlier for CAP_BPF.
I think that should resolve Stephen's concern.
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
