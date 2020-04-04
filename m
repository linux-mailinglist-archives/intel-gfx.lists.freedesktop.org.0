Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id B6DD819E36B
	for <lists+intel-gfx@lfdr.de>; Sat,  4 Apr 2020 10:18:15 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 8C44F6E061;
	Sat,  4 Apr 2020 08:18:13 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga18.intel.com (mga18.intel.com [134.134.136.126])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 756836E061
 for <intel-gfx@lists.freedesktop.org>; Sat,  4 Apr 2020 08:18:12 +0000 (UTC)
IronPort-SDR: 3ejwTDYl4I0NEVEQ02b0jwSL61XYcQ+7WcTv4dZTdkVfOE1NAZwE9gCeMYiMRo/9V2P0K1VVLD
 E6jAHnDn8OBQ==
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga006.fm.intel.com ([10.253.24.20])
 by orsmga106.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 04 Apr 2020 01:18:11 -0700
IronPort-SDR: oWNvoibv/NVKa6nUxJdw9GnxF7+JVv9j3/h3sDQzlGAbdflpMLM9iNTXJpIG5pdiQp8BytKN+t
 lB0vFI0Ft37w==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.72,343,1580803200"; d="scan'208";a="451544685"
Received: from linux.intel.com ([10.54.29.200])
 by fmsmga006.fm.intel.com with ESMTP; 04 Apr 2020 01:18:10 -0700
Received: from [10.249.93.66] (abudanko-mobl.ccr.corp.intel.com [10.249.93.66])
 by linux.intel.com (Postfix) with ESMTP id 764C65802C8;
 Sat,  4 Apr 2020 01:18:03 -0700 (PDT)
To: Namhyung Kim <namhyung@kernel.org>
References: <f96f8f8a-e65c-3f36-dc85-fc3f5191e8c5@linux.intel.com>
 <a66d5648-2b8e-577e-e1f2-1d56c017ab5e@linux.intel.com>
 <CAM9d7cgRczLcyUi1y96a=87Hh3BhFgRUS8Kw=DBg4C0hVYj2HQ@mail.gmail.com>
From: Alexey Budankov <alexey.budankov@linux.intel.com>
Organization: Intel Corp.
Message-ID: <ab15a8af-26a6-f8e7-cd7a-6b3fde99eaf9@linux.intel.com>
Date: Sat, 4 Apr 2020 11:18:01 +0300
User-Agent: Mozilla/5.0 (Windows NT 10.0; WOW64; rv:68.0) Gecko/20100101
 Thunderbird/68.6.0
MIME-Version: 1.0
In-Reply-To: <CAM9d7cgRczLcyUi1y96a=87Hh3BhFgRUS8Kw=DBg4C0hVYj2HQ@mail.gmail.com>
Content-Language: en-US
Subject: Re: [Intel-gfx] [PATCH v8 04/12] perf tool: extend Perf tool with
 CAP_PERFMON capability support
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
 Arnaldo Carvalho de Melo <acme@kernel.org>, James Morris <jmorris@namei.org>,
 "selinux@vger.kernel.org" <selinux@vger.kernel.org>,
 "linux-security-module@vger.kernel.org"
 <linux-security-module@vger.kernel.org>, Ingo Molnar <mingo@redhat.com>,
 Stephane Eranian <eranian@google.com>, Thomas Gleixner <tglx@linutronix.de>,
 Jiri Olsa <jolsa@redhat.com>, Serge Hallyn <serge@hallyn.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

Hi Namhyung,

On 04.04.2020 5:18, Namhyung Kim wrote:
> Hello,
> 
> On Thu, Apr 2, 2020 at 5:47 PM Alexey Budankov
> <alexey.budankov@linux.intel.com> wrote:
>>
>>
>> Extend error messages to mention CAP_PERFMON capability as an option
>> to substitute CAP_SYS_ADMIN capability for secure system performance
>> monitoring and observability operations. Make perf_event_paranoid_check()
>> and __cmd_ftrace() to be aware of CAP_PERFMON capability.
>>
>> CAP_PERFMON implements the principal of least privilege for performance
>> monitoring and observability operations (POSIX IEEE 1003.1e 2.2.2.39
>> principle of least privilege: A security design principle that states
>> that a process or program be granted only those privileges (e.g.,
>> capabilities) necessary to accomplish its legitimate function, and only
>> for the time that such privileges are actually required)
>>
>> For backward compatibility reasons access to perf_events subsystem remains
>> open for CAP_SYS_ADMIN privileged processes but CAP_SYS_ADMIN usage for
>> secure perf_events monitoring is discouraged with respect to CAP_PERFMON
>> capability.
>>
>> Signed-off-by: Alexey Budankov <alexey.budankov@linux.intel.com>
>> Reviewed-by: James Morris <jamorris@linux.microsoft.com>
> 
> Acked-by: Namhyung Kim <namhyung@kernel.org>

Thanks! I appreciate you involvement and effort.

~Alexey

> 
> Thanks
> Namhyung
> 
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
