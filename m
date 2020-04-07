Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id C02521A0FAD
	for <lists+intel-gfx@lfdr.de>; Tue,  7 Apr 2020 16:54:38 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 34CD089C19;
	Tue,  7 Apr 2020 14:54:36 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga18.intel.com (mga18.intel.com [134.134.136.126])
 by gabe.freedesktop.org (Postfix) with ESMTPS id E375789C19
 for <intel-gfx@lists.freedesktop.org>; Tue,  7 Apr 2020 14:54:34 +0000 (UTC)
IronPort-SDR: FthB3ZszLrrYd5OQvDWQjWvo/IleZt13zlnHmY7GjK6tbQMAl4vpnz0tXLASLTQgDsK94ZcwZs
 KcSD+Z3DFAgw==
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga006.jf.intel.com ([10.7.209.51])
 by orsmga106.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 07 Apr 2020 07:54:34 -0700
IronPort-SDR: cOZmMIE0ak5uQfYildm7qw134FQCkEL1T7TEy6C+ICKnfA8A0r6yAgOesc5pOEYZpwGdg1fk17
 thIr/oSRo8dA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.72,354,1580803200"; d="scan'208";a="254480922"
Received: from linux.intel.com ([10.54.29.200])
 by orsmga006.jf.intel.com with ESMTP; 07 Apr 2020 07:54:34 -0700
Received: from [10.249.224.62] (abudanko-mobl.ccr.corp.intel.com
 [10.249.224.62])
 by linux.intel.com (Postfix) with ESMTP id D324C5802BC;
 Tue,  7 Apr 2020 07:54:28 -0700 (PDT)
To: Arnaldo Carvalho de Melo <arnaldo.melo@gmail.com>
References: <f96f8f8a-e65c-3f36-dc85-fc3f5191e8c5@linux.intel.com>
 <20200407143014.GD11186@kernel.org> <20200407143551.GF11186@kernel.org>
From: Alexey Budankov <alexey.budankov@linux.intel.com>
Organization: Intel Corp.
Message-ID: <10cc74ee-8587-8cdb-f85f-5724b370a2ce@linux.intel.com>
Date: Tue, 7 Apr 2020 17:54:27 +0300
User-Agent: Mozilla/5.0 (Windows NT 10.0; WOW64; rv:68.0) Gecko/20100101
 Thunderbird/68.6.0
MIME-Version: 1.0
In-Reply-To: <20200407143551.GF11186@kernel.org>
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

On 07.04.2020 17:35, Arnaldo Carvalho de Melo wrote:
> Em Tue, Apr 07, 2020 at 11:30:14AM -0300, Arnaldo Carvalho de Melo escreveu:
>> [perf@five ~]$ type perf
>> perf is hashed (/home/perf/bin/perf)
>> [perf@five ~]$ getcap /home/perf/bin/perf
>> /home/perf/bin/perf = cap_sys_ptrace,cap_syslog,38+ep
>> [perf@five ~]$ groups
>> perf perf_users
>> [perf@five ~]$ id
>> uid=1002(perf) gid=1002(perf) groups=1002(perf),1003(perf_users) context=unconfined_u:unconfined_r:unconfined_t:s0-s0:c0.c1023
>> [perf@five ~]$ perf top --stdio
>> Error:
>> Failed to mmap with 1 (Operation not permitted)
>> [perf@five ~]$ perf record -a
>> ^C[ perf record: Woken up 1 times to write data ]
>> [ perf record: Captured and wrote 1.177 MB perf.data (1552 samples) ]
>>
>> [perf@five ~]$ perf evlist
>> cycles:u
>> [perf@five ~]$
> 
> Humm, perf record falls back to cycles:u after initially trying cycles
> (i.e. kernel and userspace), lemme see trying 'perf top -e cycles:u',
> lemme test, humm not really:
> 
> [perf@five ~]$ perf top --stdio -e cycles:u
> Error:
> Failed to mmap with 1 (Operation not permitted)
> [perf@five ~]$ perf record -e cycles:u -a sleep 1
> [ perf record: Woken up 1 times to write data ]
> [ perf record: Captured and wrote 1.123 MB perf.data (132 samples) ]
> [perf@five ~]$
> 
> Back to debugging this.

Could makes sense adding cap_ipc_lock to the binary to isolate from this:

kernel/events/core.c: 6101
	if ((locked > lock_limit) && perf_is_paranoid() &&
		!capable(CAP_IPC_LOCK)) {
		ret = -EPERM;
		goto unlock;
	}

~Alexey
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
