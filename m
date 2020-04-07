Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id DAD331A17C7
	for <lists+intel-gfx@lfdr.de>; Wed,  8 Apr 2020 00:09:00 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id F1D3D6E91C;
	Tue,  7 Apr 2020 22:08:58 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-qk1-x735.google.com (mail-qk1-x735.google.com
 [IPv6:2607:f8b0:4864:20::735])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 462456E8B5
 for <intel-gfx@lists.freedesktop.org>; Tue,  7 Apr 2020 17:23:44 +0000 (UTC)
Received: by mail-qk1-x735.google.com with SMTP id m67so122840qke.12
 for <intel-gfx@lists.freedesktop.org>; Tue, 07 Apr 2020 10:23:44 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:date:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to;
 bh=K+MMhgwbQedUfosyD2Cw+pAjWD5r/4ySukc35JXfHtQ=;
 b=AISqMdEd8PmC6p044QKzmqRvTEknmQL37J3YiXyuydqqLA9II7+ikNL1/d1tev4diw
 4quCsK0SbFHe16ewvETijwjSegnewllWpsYE9/RmuzbJzWeof90cD8xTKghvASkb5YCH
 dRKhp4Rea3pGc0yerTbItjCt5X7Q8nHrSdPObogOtuRJj1IWe5klvpHR/WnB/7mbgXra
 voptzu1KNaqfjBPeOBjpm5QxutfUDr8T9uglWizgQ6zcyAGPT2NqX77iU7bjsLV8ATIV
 g/ERhpCiQDGEaTqr22AW+xneH6DFGgLRiqvNdYmUHEv4QCOZCr7VYviX87oE7r/2kDCY
 WuDA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:date:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to;
 bh=K+MMhgwbQedUfosyD2Cw+pAjWD5r/4ySukc35JXfHtQ=;
 b=JcPKTKO1mDMI1gUTN/vwPTVT7W8XCWdjhLo32JWAYM+vMxCRxqX4xA5EeqPkyDnqRd
 xulTGRy+jgMaJYJY9v96VZxReixrHcvTy7LLkr8nlGZ37MW5T2MTmWfd8bx3gQdxu0bi
 DDZF1J4WkW6PbBB9rkXhhcgUabfrEAdI3gXKh4ukqsY5mD7zuHeq5u039RsHcFXhNKLs
 R729XgbpmsqQSQA+iHT2A/HupIpUhY0ITDXsbZdk48XpnpDlazj6tftu6jZNVTkW8pbg
 T/Gxo3VxcVwrwvznGQy9i/AW0UM/XnryAjlOJdg4tJpLazNs9leiEUK7VnKsuUd014PF
 eSbQ==
X-Gm-Message-State: AGi0PuZb43rqJt42DiEE1aM74jUNyEXANDb7RDWkBHZj9e1i+wTDccNu
 LHXVQTN/p/qihcJaUYeRiDA=
X-Google-Smtp-Source: APiQypKsro8wjK4xTL2iHaRs1nV2makOkwiSA9zQ+y+DTWaEm6VBA1HeGxqxnp89G+j6RhEQBYILJg==
X-Received: by 2002:a37:6213:: with SMTP id w19mr3134388qkb.447.1586280222882; 
 Tue, 07 Apr 2020 10:23:42 -0700 (PDT)
Received: from quaco.ghostprotocols.net ([179.97.37.151])
 by smtp.gmail.com with ESMTPSA id l7sm16781124qkb.47.2020.04.07.10.23.41
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Tue, 07 Apr 2020 10:23:42 -0700 (PDT)
From: Arnaldo Carvalho de Melo <arnaldo.melo@gmail.com>
X-Google-Original-From: Arnaldo Carvalho de Melo <acme@kernel.org>
Received: by quaco.ghostprotocols.net (Postfix, from userid 1000)
 id 1678C409A3; Tue,  7 Apr 2020 14:23:40 -0300 (-03)
Date: Tue, 7 Apr 2020 14:23:40 -0300
To: Arnaldo Carvalho de Melo <arnaldo.melo@gmail.com>
Message-ID: <20200407172340.GF12003@kernel.org>
References: <f96f8f8a-e65c-3f36-dc85-fc3f5191e8c5@linux.intel.com>
 <20200407143014.GD11186@kernel.org>
 <20200407143551.GF11186@kernel.org>
 <10cc74ee-8587-8cdb-f85f-5724b370a2ce@linux.intel.com>
 <20200407163654.GB12003@kernel.org>
 <20200407165643.GD12003@kernel.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200407165643.GD12003@kernel.org>
X-Url: http://acmel.wordpress.com
X-Mailman-Approved-At: Tue, 07 Apr 2020 22:08:57 +0000
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

Em Tue, Apr 07, 2020 at 01:56:43PM -0300, Arnaldo Carvalho de Melo escreveu:
> 
> But then, even with that attr.exclude_kernel set to 1 we _still_ get
> kernel samples, which looks like another bug, now trying with strace,
> which leads us to another rabbit hole:
> 
> [perf@five ~]$ strace -e perf_event_open -o /tmp/out.put perf top --stdio
> Error:
> You may not have permission to collect system-wide stats.
> 
> Consider tweaking /proc/sys/kernel/perf_event_paranoid,
> which controls use of the performance events system by
> unprivileged users (without CAP_PERFMON or CAP_SYS_ADMIN).
> 
> The current value is 2:
> 
>   -1: Allow use of (almost) all events by all users
>       Ignore mlock limit after perf_event_mlock_kb without CAP_IPC_LOCK
> >= 0: Disallow ftrace function tracepoint by users without CAP_PERFMON or CAP_SYS_ADMIN
>       Disallow raw tracepoint access by users without CAP_SYS_PERFMON or CAP_SYS_ADMIN
> >= 1: Disallow CPU event access by users without CAP_PERFMON or CAP_SYS_ADMIN
> >= 2: Disallow kernel profiling by users without CAP_PERFMON or CAP_SYS_ADMIN
> 
> To make this setting permanent, edit /etc/sysctl.conf too, e.g.:
> 
> 	kernel.perf_event_paranoid = -1
> 
> [perf@five ~]$
> 
> If I remove that strace -e ... from the front, 'perf top' is back
> working as a non-cap_sys_admin user, just with cap_perfmon.
> 

So I couldn't figure it out so far why is that exclude_kernel is being
set to 1, as perf-top when no event is passed defaults to this to find
out what to use as a default event:

  perf_evlist__add_default(top.evlist)
     perf_evsel__new_cycles(true);
	struct perf_event_attr attr = {
                .type   = PERF_TYPE_HARDWARE,
                .config = PERF_COUNT_HW_CPU_CYCLES,
                .exclude_kernel = !perf_event_can_profile_kernel(),
        };

			perf_event_paranoid_check(1);
			        return perf_cap__capable(CAP_SYS_ADMIN) ||
				       perf_cap__capable(CAP_PERFMON) ||
				       perf_event_paranoid() <= max_level;


And then that second condition should hold true, it returns true, and
then .exclude_kernel should be set to !true -> zero.o

Now the wallclock says I need to stop being a programmer and turn into a
daycare provider for Pedro, cya!

- Arnaldo
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
