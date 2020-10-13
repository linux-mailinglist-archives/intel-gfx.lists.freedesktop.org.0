Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id D2BD228CBC6
	for <lists+intel-gfx@lfdr.de>; Tue, 13 Oct 2020 12:34:19 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 338DF6E8B8;
	Tue, 13 Oct 2020 10:34:18 +0000 (UTC)
X-Original-To: Intel-gfx@lists.freedesktop.org
Delivered-To: Intel-gfx@lists.freedesktop.org
Received: from mga06.intel.com (mga06.intel.com [134.134.136.31])
 by gabe.freedesktop.org (Postfix) with ESMTPS id B8F676E41A;
 Tue, 13 Oct 2020 10:34:16 +0000 (UTC)
IronPort-SDR: qQ+4OcPjcASvyPMa6AwpVAgD1pT5OG1NsejEou4ZKvkVvvIWpFWLhfr+IXQftpzrtwzMqGpuPu
 34VCqBQaP4KA==
X-IronPort-AV: E=McAfee;i="6000,8403,9772"; a="227526200"
X-IronPort-AV: E=Sophos;i="5.77,370,1596524400"; d="scan'208";a="227526200"
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga005.jf.intel.com ([10.7.209.41])
 by orsmga104.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 13 Oct 2020 03:34:15 -0700
IronPort-SDR: PIAAF9YhmFwyvDEuio+1cLaIFGEzunZ0z2ArmAgrGNS2k/SwS2BTk7U3n5Zd2piNlY4f0XNeeR
 luI4vc5VTHgQ==
X-IronPort-AV: E=Sophos;i="5.77,370,1596524400"; d="scan'208";a="530342031"
Received: from leanneam-mobl.ger.corp.intel.com (HELO [10.249.36.69])
 ([10.249.36.69])
 by orsmga005-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 13 Oct 2020 03:34:14 -0700
To: Chris Wilson <chris@chris-wilson.co.uk>, igt-dev@lists.freedesktop.org
References: <20201013094612.83843-1-tvrtko.ursulin@linux.intel.com>
 <160258345334.2946.10818279953482792145@build.alporthouse.com>
From: Tvrtko Ursulin <tvrtko.ursulin@linux.intel.com>
Organization: Intel Corporation UK Plc
Message-ID: <209839f0-10d9-75a0-abba-2c64e57407c0@linux.intel.com>
Date: Tue, 13 Oct 2020 11:34:11 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.10.0
MIME-Version: 1.0
In-Reply-To: <160258345334.2946.10818279953482792145@build.alporthouse.com>
Content-Language: en-US
Subject: Re: [Intel-gfx] [igt-dev] [PATCH i-g-t] i915/perf_pmu: Fix perf fd
 leak
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
Cc: Intel-gfx@lists.freedesktop.org
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>


On 13/10/2020 11:04, Chris Wilson wrote:
> Quoting Tvrtko Ursulin (2020-10-13 10:46:12)
>> From: Tvrtko Ursulin <tvrtko.ursulin@intel.com>
>>
>> As it turns out opening the perf fd in group mode still produces separate
>> file descriptors for all members of the group, which in turn need to be
>> closed manually to avoid leaking them.
> 
> Hmm. That caught me by surprise, but yes while close(group) does call
> free_event() on all its children [aiui], it will not remove the fd and
> each event does receive its own fd. And since close(child) will call
> into perf_event_release, we do have to keep the fd alive until the end.
>   
>> Signed-off-by: Tvrtko Ursulin <tvrtko.ursulin@intel.com>
>> ---
>>   tests/i915/perf_pmu.c | 130 +++++++++++++++++++++++++-----------------
>>   1 file changed, 78 insertions(+), 52 deletions(-)
>>
>> diff --git a/tests/i915/perf_pmu.c b/tests/i915/perf_pmu.c
>> index 873b275dca6b..6f8bec28d274 100644
>> --- a/tests/i915/perf_pmu.c
>> +++ b/tests/i915/perf_pmu.c
>> @@ -475,7 +475,8 @@ busy_check_all(int gem_fd, const struct intel_execution_engine2 *e,
>>   
>>          end_spin(gem_fd, spin, FLAG_SYNC);
>>          igt_spin_free(gem_fd, spin);
>> -       close(fd[0]);
>> +       for (i = 0; i < num_engines; i++)
>> +               close(fd[i]);
> 
> close_group(fd, num_engines) ?

I am not too keen on that since there is local open_group which does not 
operate on the fd array. Making open_group manage the array and count 
crossed my mind but it felt a bit too much.

Regards,

Tvrtko


_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
