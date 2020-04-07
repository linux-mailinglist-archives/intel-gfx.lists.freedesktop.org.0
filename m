Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 4799A1A12ED
	for <lists+intel-gfx@lfdr.de>; Tue,  7 Apr 2020 19:47:35 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 9C7C26E8BC;
	Tue,  7 Apr 2020 17:47:33 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga18.intel.com (mga18.intel.com [134.134.136.126])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 636AC6E8BC
 for <intel-gfx@lists.freedesktop.org>; Tue,  7 Apr 2020 17:47:32 +0000 (UTC)
IronPort-SDR: GUHNRewblSAxPgAkhGJu5gIaZT9Kbgi5oixmTj9yIdvwb7wTDRpEfrxqZE/aTdyaoz4bJP4pz2
 9wNrNXOrATKg==
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga008.jf.intel.com ([10.7.209.65])
 by orsmga106.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 07 Apr 2020 10:32:06 -0700
IronPort-SDR: 0dN2uk5PE2UgARM11tbMKg7mcMpR7+n/WA5Rh9SUwkMp2YjAgenijHApg1r0OQUVlhgA3i7Uf+
 CL6T7AxCQMpw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.72,356,1580803200"; d="scan'208";a="250310948"
Received: from linux.intel.com ([10.54.29.200])
 by orsmga008.jf.intel.com with ESMTP; 07 Apr 2020 10:32:06 -0700
Received: from [10.249.224.62] (abudanko-mobl.ccr.corp.intel.com
 [10.249.224.62])
 by linux.intel.com (Postfix) with ESMTP id AED7858048A;
 Tue,  7 Apr 2020 10:32:01 -0700 (PDT)
To: Arnaldo Carvalho de Melo <arnaldo.melo@gmail.com>
References: <f96f8f8a-e65c-3f36-dc85-fc3f5191e8c5@linux.intel.com>
 <20200407143014.GD11186@kernel.org> <20200407143551.GF11186@kernel.org>
 <10cc74ee-8587-8cdb-f85f-5724b370a2ce@linux.intel.com>
 <20200407163654.GB12003@kernel.org>
 <85da1e42-2cf2-98ca-1e0c-2cf3469b7d30@linux.intel.com>
 <20200407170251.GE12003@kernel.org>
From: Alexey Budankov <alexey.budankov@linux.intel.com>
Organization: Intel Corp.
Message-ID: <369aaea6-3532-859e-7f1a-4df7806351c5@linux.intel.com>
Date: Tue, 7 Apr 2020 20:32:00 +0300
User-Agent: Mozilla/5.0 (Windows NT 10.0; WOW64; rv:68.0) Gecko/20100101
 Thunderbird/68.6.0
MIME-Version: 1.0
In-Reply-To: <20200407170251.GE12003@kernel.org>
Content-Language: en-US
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


On 07.04.2020 20:02, Arnaldo Carvalho de Melo wrote:
> Em Tue, Apr 07, 2020 at 07:52:56PM +0300, Alexey Budankov escreveu:
>>
>> On 07.04.2020 19:36, Arnaldo Carvalho de Melo wrote:
>>> Em Tue, Apr 07, 2020 at 05:54:27PM +0300, Alexey Budankov escreveu:
>>>> Could makes sense adding cap_ipc_lock to the binary to isolate from this:
> 
>>>> kernel/events/core.c: 6101
>>>> 	if ((locked > lock_limit) && perf_is_paranoid() &&
>>>> 		!capable(CAP_IPC_LOCK)) {
>>>> 		ret = -EPERM;
>>>> 		goto unlock;
>>>> 	}
> 
>>> That did the trick, I'll update the documentation and include in my
>>> "Committer testing" section:
>  
>> Looks like top mode somehow reaches perf mmap limit described here [1].
>> Using -m option solves the issue avoiding cap_ipc_lock on my 8 cores machine:
>> perf top -e cycles -m 1
> 
> So this would read better?
> 
> diff --git a/Documentation/admin-guide/perf-security.rst b/Documentation/admin-guide/perf-security.rst
> index ed33682e26b0..d44dd24b0244 100644
> --- a/Documentation/admin-guide/perf-security.rst
> +++ b/Documentation/admin-guide/perf-security.rst
> @@ -127,8 +127,8 @@ taken to create such groups of privileged Perf users.
>  
>  ::
>  
> -   # setcap "cap_perfmon,cap_ipc_lock,cap_sys_ptrace,cap_syslog=ep" perf
> -   # setcap -v "cap_perfmon,cap_ipc_lock,cap_sys_ptrace,cap_syslog=ep" perf
> +   # setcap "cap_perfmon,cap_sys_ptrace,cap_syslog=ep" perf
> +   # setcap -v "cap_perfmon,cap_sys_ptrace,cap_syslog=ep" perf
>     perf: OK
>     # getcap perf
>     perf = cap_sys_ptrace,cap_syslog,cap_perfmon+ep
> @@ -140,6 +140,10 @@ i.e.:
>  
>     # setcap "38,cap_ipc_lock,cap_sys_ptrace,cap_syslog=ep" perf
>  
> +Note that you may need to have 'cap_ipc_lock' in the mix for tools such as
> +'perf top', alternatively use 'perf top -m N', to reduce the memory that
> +it uses for the perf ring buffer, see the memory allocation section below.
> +

Let's stay with the first variant of you addition to this patch and also 
extend the paragraph below as suggested in other mail in the thread.

>  As a result, members of perf_users group are capable of conducting
>  performance monitoring and observability by using functionality of the
>  configured Perf tool executable that, when executes, passes perf_events
> 

Thanks,
Alexey

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
