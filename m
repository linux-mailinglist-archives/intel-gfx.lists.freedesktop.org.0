Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 521EC19EC70
	for <lists+intel-gfx@lfdr.de>; Sun,  5 Apr 2020 17:51:38 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id E1F8489FD9;
	Sun,  5 Apr 2020 15:51:35 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga11.intel.com (mga11.intel.com [192.55.52.93])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 77A0189FD9
 for <intel-gfx@lists.freedesktop.org>; Sun,  5 Apr 2020 15:51:35 +0000 (UTC)
IronPort-SDR: 9Ud5xE7b6sbsy2rt0ODq5kNCt8DuW5PIjkqniEpzRjinjRb+VSNSF1OLwkqNjXkeLzLrDs5++k
 KLfdD9kaEF8w==
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga003.fm.intel.com ([10.253.24.29])
 by fmsmga102.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 05 Apr 2020 08:51:35 -0700
IronPort-SDR: 9H+VnNHNmgemh7OdAcgvyRmttnueGqPJX5owQ9JxCcyH7agdmWjuOTmGrPJaB/mjN5Azw8eXx/
 eZb8TElDz0eQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.72,348,1580803200"; d="scan'208";a="296445177"
Received: from linux.intel.com ([10.54.29.200])
 by FMSMGA003.fm.intel.com with ESMTP; 05 Apr 2020 08:51:34 -0700
Received: from [10.249.231.111] (abudanko-mobl.ccr.corp.intel.com
 [10.249.231.111])
 by linux.intel.com (Postfix) with ESMTP id 4251358033E;
 Sun,  5 Apr 2020 08:51:30 -0700 (PDT)
To: Arnaldo Carvalho de Melo <arnaldo.melo@gmail.com>
References: <f96f8f8a-e65c-3f36-dc85-fc3f5191e8c5@linux.intel.com>
 <84c32383-14a2-fa35-16b6-f9e59bd37240@linux.intel.com>
 <20200405141029.GA16896@kernel.org>
 <eb7fd0bd-4043-b51c-9b19-ee0a1d1849e9@linux.intel.com>
 <966244a1-2a2d-8e47-b805-2effa46fe8cd@linux.intel.com>
 <20200405150557.GP9917@kernel.org>
From: Alexey Budankov <alexey.budankov@linux.intel.com>
Organization: Intel Corp.
Message-ID: <50b54ca3-2edb-d2be-e42e-57e0de12a052@linux.intel.com>
Date: Sun, 5 Apr 2020 18:51:29 +0300
User-Agent: Mozilla/5.0 (Windows NT 10.0; WOW64; rv:68.0) Gecko/20100101
 Thunderbird/68.6.0
MIME-Version: 1.0
In-Reply-To: <20200405150557.GP9917@kernel.org>
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


On 05.04.2020 18:05, Arnaldo Carvalho de Melo wrote:
> Em Sun, Apr 05, 2020 at 05:54:37PM +0300, Alexey Budankov escreveu:
>>
>> On 05.04.2020 17:41, Alexey Budankov wrote:
>>>
>>> On 05.04.2020 17:10, Arnaldo Carvalho de Melo wrote:
>>>> Em Thu, Apr 02, 2020 at 11:54:39AM +0300, Alexey Budankov escreveu:
>>>>>
>>>>> Update kernel.rst documentation file with the information
>>>>> related to usage of CAP_PERFMON capability to secure performance
>>>>> monitoring and observability operations in system.
>>>>
>>>> This one is failing in my perf/core branch, please take a look. I'm
>>
>> Please try applying this:
> 
> Thanks, applied with the original commit log message,

Thanks,
Alexey
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
