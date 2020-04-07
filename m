Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 2B88B1A1283
	for <lists+intel-gfx@lfdr.de>; Tue,  7 Apr 2020 19:17:24 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 724616E126;
	Tue,  7 Apr 2020 17:17:22 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga05.intel.com (mga05.intel.com [192.55.52.43])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 18FD36E126
 for <intel-gfx@lists.freedesktop.org>; Tue,  7 Apr 2020 17:17:21 +0000 (UTC)
IronPort-SDR: UJgqH/hKf/MrtoY2+ARKPA+n25pgUGEwyyBl+z/QR0GJ+Ct8gpKa8s2U9heO86AnkCRGIbiNix
 YPHsx2ri4txQ==
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
 by fmsmga105.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 07 Apr 2020 10:17:20 -0700
IronPort-SDR: f+e98gTz84KNvlgovAVPTfEQ+3pXzSPnYUp+lSC72IsBa7QeERvkKZhPGBNFVKUHaEv9jQD1dA
 7/YiU7dClaRQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.72,355,1580803200"; d="scan'208";a="286288039"
Received: from linux.intel.com ([10.54.29.200])
 by fmsmga002.fm.intel.com with ESMTP; 07 Apr 2020 10:17:20 -0700
Received: from [10.249.224.62] (abudanko-mobl.ccr.corp.intel.com
 [10.249.224.62])
 by linux.intel.com (Postfix) with ESMTP id D9F375802BC;
 Tue,  7 Apr 2020 10:17:15 -0700 (PDT)
To: Arnaldo Carvalho de Melo <arnaldo.melo@gmail.com>
References: <f96f8f8a-e65c-3f36-dc85-fc3f5191e8c5@linux.intel.com>
 <20200407143014.GD11186@kernel.org> <20200407143551.GF11186@kernel.org>
 <10cc74ee-8587-8cdb-f85f-5724b370a2ce@linux.intel.com>
 <20200407163654.GB12003@kernel.org> <20200407164050.GC12003@kernel.org>
From: Alexey Budankov <alexey.budankov@linux.intel.com>
Organization: Intel Corp.
Message-ID: <ca8dc2ac-5a1d-d1a6-ca04-a4b5d9e9cbef@linux.intel.com>
Date: Tue, 7 Apr 2020 20:17:14 +0300
User-Agent: Mozilla/5.0 (Windows NT 10.0; WOW64; rv:68.0) Gecko/20100101
 Thunderbird/68.6.0
MIME-Version: 1.0
In-Reply-To: <20200407164050.GC12003@kernel.org>
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


On 07.04.2020 19:40, Arnaldo Carvalho de Melo wrote:
> Em Tue, Apr 07, 2020 at 01:36:54PM -0300, Arnaldo Carvalho de Melo escreveu:
>> Em Tue, Apr 07, 2020 at 05:54:27PM +0300, Alexey Budankov escreveu:
>>> On 07.04.2020 17:35, Arnaldo Carvalho de Melo wrote:
>>>> Em Tue, Apr 07, 2020 at 11:30:14AM -0300, Arnaldo Carvalho de Melo escreveu:
>>>>> [perf@five ~]$ type perf
>>>>> perf is hashed (/home/perf/bin/perf)
>>>>> [perf@five ~]$ getcap /home/perf/bin/perf
>>>>> /home/perf/bin/perf = cap_sys_ptrace,cap_syslog,38+ep
>>>>> [perf@five ~]$ groups
>>>>> perf perf_users
>>>>> [perf@five ~]$ id
>>>>> uid=1002(perf) gid=1002(perf) groups=1002(perf),1003(perf_users) context=unconfined_u:unconfined_r:unconfined_t:s0-s0:c0.c1023
>>>>> [perf@five ~]$ perf top --stdio
>>>>> Error:
>>>>> Failed to mmap with 1 (Operation not permitted)
>>>>> [perf@five ~]$ perf record -a
>>>>> ^C[ perf record: Woken up 1 times to write data ]
>>>>> [ perf record: Captured and wrote 1.177 MB perf.data (1552 samples) ]
>>>>>
>>>>> [perf@five ~]$ perf evlist
>>>>> cycles:u
>>>>> [perf@five ~]$
>>>>
>>>> Humm, perf record falls back to cycles:u after initially trying cycles
>>>> (i.e. kernel and userspace), lemme see trying 'perf top -e cycles:u',
>>>> lemme test, humm not really:
>>>>
>>>> [perf@five ~]$ perf top --stdio -e cycles:u
>>>> Error:
>>>> Failed to mmap with 1 (Operation not permitted)
>>>> [perf@five ~]$ perf record -e cycles:u -a sleep 1
>>>> [ perf record: Woken up 1 times to write data ]
>>>> [ perf record: Captured and wrote 1.123 MB perf.data (132 samples) ]
>>>> [perf@five ~]$
>>>>
>>>> Back to debugging this.
>>>
>>> Could makes sense adding cap_ipc_lock to the binary to isolate from this:
>>>
>>> kernel/events/core.c: 6101
>>> 	if ((locked > lock_limit) && perf_is_paranoid() &&
>>> 		!capable(CAP_IPC_LOCK)) {
>>> 		ret = -EPERM;
>>> 		goto unlock;
>>> 	}
>>
>>
>> That did the trick, I'll update the documentation and include in my
>> "Committer testing" section:
> 
> I ammended this to that patch, please check the wording:
> 
> - Arnaldo
> 
> diff --git a/Documentation/admin-guide/perf-security.rst b/Documentation/admin-guide/perf-security.rst
> index c0ca0c1a6804..ed33682e26b0 100644
> --- a/Documentation/admin-guide/perf-security.rst
> +++ b/Documentation/admin-guide/perf-security.rst
> @@ -127,12 +127,19 @@ taken to create such groups of privileged Perf users.
>  
>  ::
>  
> -   # setcap "cap_perfmon,cap_sys_ptrace,cap_syslog=ep" perf
> -   # setcap -v "cap_perfmon,cap_sys_ptrace,cap_syslog=ep" perf
> +   # setcap "cap_perfmon,cap_ipc_lock,cap_sys_ptrace,cap_syslog=ep" perf
> +   # setcap -v "cap_perfmon,cap_ipc_lock,cap_sys_ptrace,cap_syslog=ep" perf
>     perf: OK
>     # getcap perf
>     perf = cap_sys_ptrace,cap_syslog,cap_perfmon+ep
>  
> +If the libcap installed doesn't yet support "cap_perfmon", use "38" instead,
> +i.e.:
> +
> +::
> +
> +   # setcap "38,cap_ipc_lock,cap_sys_ptrace,cap_syslog=ep" perf
> +
>  As a result, members of perf_users group are capable of conducting
>  performance monitoring and observability by using functionality of the
>  configured Perf tool executable that, when executes, passes perf_events
> 

Looks good to me. The paragraph just above should then also be extended to
mention that perf_events subsystem memory limit is ignored due to usage of
CAP_IPC_LOCK:

"As a result, members of perf_users group are capable of conducting
 performance monitoring and observability by using functionality of the
 configured Perf tool executable that, when executes, passes perf_events
 subsystem scope and perf_event_mlock_kb locking limit checks."

~Alexey
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
