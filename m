Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id F17B2121161
	for <lists+intel-gfx@lfdr.de>; Mon, 16 Dec 2019 18:12:16 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 5F3266E840;
	Mon, 16 Dec 2019 17:12:15 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
 by gabe.freedesktop.org (Postfix) with ESMTPS id DCDB96E83F
 for <intel-gfx@lists.freedesktop.org>; Mon, 16 Dec 2019 17:12:13 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga005.fm.intel.com ([10.253.24.32])
 by orsmga102.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 16 Dec 2019 09:12:13 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.69,322,1571727600"; d="scan'208";a="415144339"
Received: from linux.intel.com ([10.54.29.200])
 by fmsmga005.fm.intel.com with ESMTP; 16 Dec 2019 09:12:12 -0800
Received: from [10.251.95.214] (abudanko-mobl.ccr.corp.intel.com
 [10.251.95.214])
 by linux.intel.com (Postfix) with ESMTP id 30029580342;
 Mon, 16 Dec 2019 09:12:03 -0800 (PST)
To: "Lubashev, Igor" <ilubashe@akamai.com>,
 Peter Zijlstra <peterz@infradead.org>,
 Arnaldo Carvalho de Melo <acme@kernel.org>, Ingo Molnar <mingo@redhat.com>,
 "jani.nikula@linux.intel.com" <jani.nikula@linux.intel.com>,
 "joonas.lahtinen@linux.intel.com" <joonas.lahtinen@linux.intel.com>,
 "rodrigo.vivi@intel.com" <rodrigo.vivi@intel.com>,
 Alexei Starovoitov <ast@kernel.org>,
 "james.bottomley@hansenpartnership.com"
 <james.bottomley@hansenpartnership.com>,
 "benh@kernel.crashing.org" <benh@kernel.crashing.org>,
 Casey Schaufler <casey@schaufler-ca.com>, "serge@hallyn.com"
 <serge@hallyn.com>, James Morris <jmorris@namei.org>
References: <26101427-c0a3-db9f-39e9-9e5f4ddd009c@linux.intel.com>
 <fd6ffb43-ed43-14cd-b286-6ab4b199155b@linux.intel.com>
 <9316a1ab21f6441eb2b421acb818a2a1@ustx2ex-dag1mb6.msg.corp.akamai.com>
From: Alexey Budankov <alexey.budankov@linux.intel.com>
Organization: Intel Corp.
Message-ID: <c471a28b-6620-9b0a-4b6e-43f4956202cd@linux.intel.com>
Date: Mon, 16 Dec 2019 20:12:02 +0300
User-Agent: Mozilla/5.0 (Windows NT 10.0; WOW64; rv:60.0) Gecko/20100101
 Thunderbird/60.9.1
MIME-Version: 1.0
In-Reply-To: <9316a1ab21f6441eb2b421acb818a2a1@ustx2ex-dag1mb6.msg.corp.akamai.com>
Content-Language: en-US
Subject: Re: [Intel-gfx] [PATCH v2 2/7] perf/core: open access for
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
Cc: Song Liu <songliubraving@fb.com>, Andi Kleen <ak@linux.intel.com>,
 Kees Cook <keescook@chromium.org>,
 "linux-parisc@vger.kernel.org" <linux-parisc@vger.kernel.org>,
 Jann Horn <jannh@google.com>,
 Alexander Shishkin <alexander.shishkin@linux.intel.com>,
 "linuxppc-dev@lists.ozlabs.org" <linuxppc-dev@lists.ozlabs.org>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>,
 linux-kernel <linux-kernel@vger.kernel.org>,
 Stephane Eranian <eranian@google.com>,
 "linux-perf-users@vger.kernel.org" <linux-perf-users@vger.kernel.org>,
 "selinux@vger.kernel.org" <selinux@vger.kernel.org>,
 "linux-security-module@vger.kernel.org"
 <linux-security-module@vger.kernel.org>, Namhyung Kim <namhyung@kernel.org>,
 Thomas Gleixner <tglx@linutronix.de>,
 "bgregg@netflix.com" <bgregg@netflix.com>, Jiri Olsa <jolsa@redhat.com>,
 "bpf@vger.kernel.org" <bpf@vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>


On 16.12.2019 19:12, Lubashev, Igor wrote:
> On Mon, Dec 16, 2019 at 2:15 AM, Alexey Budankov <alexey.budankov@linux.intel.com> wrote:
>>
>> Open access to perf_events monitoring for CAP_SYS_PERFMON privileged
>> processes.
>> For backward compatibility reasons access to perf_events subsystem remains
>> open for CAP_SYS_ADMIN privileged processes but CAP_SYS_ADMIN usage
>> for secure perf_events monitoring is discouraged with respect to
>> CAP_SYS_PERFMON capability.
>>
>> Signed-off-by: Alexey Budankov <alexey.budankov@linux.intel.com>
>> ---
>>  include/linux/perf_event.h | 9 ++++++---
>>  1 file changed, 6 insertions(+), 3 deletions(-)
>>
>> diff --git a/include/linux/perf_event.h b/include/linux/perf_event.h index
>> 34c7c6910026..52313d2cc343 100644
>> --- a/include/linux/perf_event.h
>> +++ b/include/linux/perf_event.h
>> @@ -1285,7 +1285,8 @@ static inline int perf_is_paranoid(void)
>>
>>  static inline int perf_allow_kernel(struct perf_event_attr *attr)  {
>> -	if (sysctl_perf_event_paranoid > 1 && !capable(CAP_SYS_ADMIN))
>> +	if (sysctl_perf_event_paranoid > 1 &&
>> +	   !(capable(CAP_SYS_PERFMON) || capable(CAP_SYS_ADMIN)))
>>  		return -EACCES;
>>
>>  	return security_perf_event_open(attr, PERF_SECURITY_KERNEL); @@
>> -1293,7 +1294,8 @@ static inline int perf_allow_kernel(struct
>> perf_event_attr *attr)
>>
>>  static inline int perf_allow_cpu(struct perf_event_attr *attr)  {
>> -	if (sysctl_perf_event_paranoid > 0 && !capable(CAP_SYS_ADMIN))
>> +	if (sysctl_perf_event_paranoid > 0 &&
>> +	    !(capable(CAP_SYS_PERFMON) || capable(CAP_SYS_ADMIN)))
>>  		return -EACCES;
>>
>>  	return security_perf_event_open(attr, PERF_SECURITY_CPU); @@ -
>> 1301,7 +1303,8 @@ static inline int perf_allow_cpu(struct perf_event_attr
>> *attr)
>>
>>  static inline int perf_allow_tracepoint(struct perf_event_attr *attr)  {
>> -	if (sysctl_perf_event_paranoid > -1 && !capable(CAP_SYS_ADMIN))
>> +	if (sysctl_perf_event_paranoid > -1 &&
>> +	    !(capable(CAP_SYS_PERFMON) || capable(CAP_SYS_ADMIN)))
>>  		return -EPERM;
>>
>>  	return security_perf_event_open(attr, PERF_SECURITY_TRACEPOINT);
>> --
>> 2.20.1
> 
> Thanks.  I like the idea of CAP_SYS_PERFMON that does not require CAP_SYS_ADMIN.  It makes granting users ability to run perf a bit safer.
> 
> I see a lot of "(capable(CAP_SYS_PERFMON) || capable(CAP_SYS_ADMIN)" constructs now.  Maybe wrapping it in an " inline bool perfmon_capable()" defined somewhere (like in /include/linux/capability.h)?

Sounds reasonable, thanks!

~Alexey

> 
> - Igor
> 
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
