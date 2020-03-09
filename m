Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id B28E617ECAA
	for <lists+intel-gfx@lfdr.de>; Tue, 10 Mar 2020 00:30:15 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id B25036E5A4;
	Mon,  9 Mar 2020 23:30:12 +0000 (UTC)
X-Original-To: Intel-gfx@lists.freedesktop.org
Delivered-To: Intel-gfx@lists.freedesktop.org
Received: from mga07.intel.com (mga07.intel.com [134.134.136.100])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 267676E5A4
 for <Intel-gfx@lists.freedesktop.org>; Mon,  9 Mar 2020 23:30:12 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga007.jf.intel.com ([10.7.209.58])
 by orsmga105.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 09 Mar 2020 16:30:11 -0700
X-IronPort-AV: E=Sophos;i="5.70,535,1574150400"; d="scan'208";a="231107352"
Received: from pkosiack-mobl2.ger.corp.intel.com (HELO [10.252.21.27])
 ([10.252.21.27])
 by orsmga007-auth.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-SHA;
 09 Mar 2020 16:30:10 -0700
To: Chris Wilson <chris@chris-wilson.co.uk>, Intel-gfx@lists.freedesktop.org
References: <20200309183129.2296-1-tvrtko.ursulin@linux.intel.com>
 <158379132236.16414.17733635371922307359@build.alporthouse.com>
From: Tvrtko Ursulin <tvrtko.ursulin@linux.intel.com>
Organization: Intel Corporation UK Plc
Message-ID: <a942ec1f-599e-be01-de24-44f5350f63d0@linux.intel.com>
Date: Mon, 9 Mar 2020 23:30:08 +0000
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.4.1
MIME-Version: 1.0
In-Reply-To: <158379132236.16414.17733635371922307359@build.alporthouse.com>
Content-Language: en-US
Subject: Re: [Intel-gfx] [RFC 00/12] Per client engine busyness
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
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>


On 09/03/2020 22:02, Chris Wilson wrote:
> Quoting Tvrtko Ursulin (2020-03-09 18:31:17)
>> From: Tvrtko Ursulin <tvrtko.ursulin@intel.com>
>>
>> Another re-spin of the per-client engine busyness series. Highlights from this
>> version:
>>
>>   * Different way of tracking runtime of exited/unreachable context. This time
>>     round I accumulate those per context/client and engine class, but active
>>     contexts are kept in a list and tallied on sysfs reads.
>>   * I had to do a small tweak in the engine release code since I needed the
>>     GEM context for a bit longer. (So I can accumulate the intel_context runtime
>>     into it as it is getting freed, because context complete can be late.)
>>   * PPHWSP method is back and even comes first in the series this time. It still
>>     can't show the currently running workloads but the software tracking method
>>     suffers from the CSB processing delay with high frequency and very short
>>     batches.
> 
> I bet it's ksoftirqd, but this could be quite problematic for us.
> gem_exec_nop/foo? I wonder if this also ties into how much harder it is
> to saturate the GPU with nops from userspace than it is from the kernel.

At least disappointing, or even problematic yes. I had a cunning plan 
though, to report back max(sw_runtimetime, pphwsp_runtime). Apart from 
it not being that cunning when things start to systematically drift. 
Then it effectively becomes pphwsp runtime. Oh well, don't know at the 
moment, might have to live with pphwsp only.

Regards,

Tvrtko
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
