Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 6445419EC12
	for <lists+intel-gfx@lfdr.de>; Sun,  5 Apr 2020 16:41:57 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id C18FC6E0EE;
	Sun,  5 Apr 2020 14:41:55 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga07.intel.com (mga07.intel.com [134.134.136.100])
 by gabe.freedesktop.org (Postfix) with ESMTPS id A80E96E0EE
 for <intel-gfx@lists.freedesktop.org>; Sun,  5 Apr 2020 14:41:54 +0000 (UTC)
IronPort-SDR: Qk/JhPaz2m2hoDU04vkxHjSPgCg+QwW0OlipPzsF9zs2mg8s+OB6uWJn2XD2+tctCZlNgBjATI
 EkUp/p1BIqqQ==
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga008.jf.intel.com ([10.7.209.65])
 by orsmga105.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 05 Apr 2020 07:41:53 -0700
IronPort-SDR: V9TTnqMqeP8/mt/DnG2oD1FLvKhWCmWRQBS8RDGukSKATPDRkrkgsVQd86I7vpAYDNMB3ztthq
 YPmkBeqaY/pQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.72,348,1580803200"; d="scan'208";a="243901790"
Received: from linux.intel.com ([10.54.29.200])
 by orsmga008.jf.intel.com with ESMTP; 05 Apr 2020 07:41:53 -0700
Received: from [10.249.231.111] (abudanko-mobl.ccr.corp.intel.com
 [10.249.231.111])
 by linux.intel.com (Postfix) with ESMTP id 653B058033E;
 Sun,  5 Apr 2020 07:41:49 -0700 (PDT)
To: Arnaldo Carvalho de Melo <arnaldo.melo@gmail.com>
References: <f96f8f8a-e65c-3f36-dc85-fc3f5191e8c5@linux.intel.com>
 <84c32383-14a2-fa35-16b6-f9e59bd37240@linux.intel.com>
 <20200405141029.GA16896@kernel.org>
From: Alexey Budankov <alexey.budankov@linux.intel.com>
Organization: Intel Corp.
Message-ID: <eb7fd0bd-4043-b51c-9b19-ee0a1d1849e9@linux.intel.com>
Date: Sun, 5 Apr 2020 17:41:48 +0300
User-Agent: Mozilla/5.0 (Windows NT 10.0; WOW64; rv:68.0) Gecko/20100101
 Thunderbird/68.6.0
MIME-Version: 1.0
In-Reply-To: <20200405141029.GA16896@kernel.org>
Content-Language: en-US
Subject: Re: [Intel-gfx] [PATCH v8 12/12] doc/admin-guide: update kernel.rst
 with CAP_PERFMON information
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


On 05.04.2020 17:10, Arnaldo Carvalho de Melo wrote:
> Em Thu, Apr 02, 2020 at 11:54:39AM +0300, Alexey Budankov escreveu:
>>
>> Update kernel.rst documentation file with the information
>> related to usage of CAP_PERFMON capability to secure performance
>> monitoring and observability operations in system.
> 
> This one is failing in my perf/core branch, please take a look. I'm

Trying to reproduce right now. What kind of failure do you see?
Please share some specifics so I could follow up properly.

Thanks,
Alexey

> pushing my perf/core branch with this series applied, please check that
> everything is ok, I'll do some testing now, but it all seems ok.
> 
> Thanks,
> 
> - Arnaldo
>  
>> Signed-off-by: Alexey Budankov <alexey.budankov@linux.intel.com>
>> ---
>>  Documentation/admin-guide/sysctl/kernel.rst | 16 +++++++++++-----
>>  1 file changed, 11 insertions(+), 5 deletions(-)
>>
>> diff --git a/Documentation/admin-guide/sysctl/kernel.rst b/Documentation/admin-guide/sysctl/kernel.rst
>> index def074807cee..b06ae9389809 100644
>> --- a/Documentation/admin-guide/sysctl/kernel.rst
>> +++ b/Documentation/admin-guide/sysctl/kernel.rst
>> @@ -720,20 +720,26 @@ perf_event_paranoid:
>>  ====================
>>  
>>  Controls use of the performance events system by unprivileged
>> -users (without CAP_SYS_ADMIN).  The default value is 2.
>> +users (without CAP_PERFMON). The default value is 2.
>> +
>> +For backward compatibility reasons access to system performance
>> +monitoring and observability remains open for CAP_SYS_ADMIN
>> +privileged processes but CAP_SYS_ADMIN usage for secure system
>> +performance monitoring and observability operations is discouraged
>> +with respect to CAP_PERFMON use cases.
>>  
>>  ===  ==================================================================
>>   -1  Allow use of (almost) all events by all users
>>  
>>       Ignore mlock limit after perf_event_mlock_kb without CAP_IPC_LOCK
>>  
>> ->=0  Disallow ftrace function tracepoint by users without CAP_SYS_ADMIN
>> +>=0  Disallow ftrace function tracepoint by users without CAP_PERFMON
>>  
>> -     Disallow raw tracepoint access by users without CAP_SYS_ADMIN
>> +     Disallow raw tracepoint access by users without CAP_PERFMON
>>  
>> ->=1  Disallow CPU event access by users without CAP_SYS_ADMIN
>> +>=1  Disallow CPU event access by users without CAP_PERFMON
>>  
>> ->=2  Disallow kernel profiling by users without CAP_SYS_ADMIN
>> +>=2  Disallow kernel profiling by users without CAP_PERFMON
>>  ===  ==================================================================
>>  
>>  
>> -- 
>> 2.24.1
>>
> 
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
