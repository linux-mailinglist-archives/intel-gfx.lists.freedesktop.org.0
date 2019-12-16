Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id EE7701206A2
	for <lists+intel-gfx@lfdr.de>; Mon, 16 Dec 2019 14:09:11 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 8A9F26E51B;
	Mon, 16 Dec 2019 13:09:09 +0000 (UTC)
X-Original-To: Intel-gfx@lists.freedesktop.org
Delivered-To: Intel-gfx@lists.freedesktop.org
Received: from mga05.intel.com (mga05.intel.com [192.55.52.43])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 02F796E519
 for <Intel-gfx@lists.freedesktop.org>; Mon, 16 Dec 2019 13:09:07 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga008.jf.intel.com ([10.7.209.65])
 by fmsmga105.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 16 Dec 2019 05:09:07 -0800
X-IronPort-AV: E=Sophos;i="5.69,321,1571727600"; d="scan'208";a="209296590"
Received: from dtriolet-mobl1.ger.corp.intel.com (HELO [10.251.84.191])
 ([10.251.84.191])
 by orsmga008-auth.jf.intel.com with ESMTP/TLS/AES256-SHA;
 16 Dec 2019 05:09:06 -0800
To: Chris Wilson <chris@chris-wilson.co.uk>, Intel-gfx@lists.freedesktop.org
References: <20191216120704.958-1-tvrtko.ursulin@linux.intel.com>
 <20191216120704.958-2-tvrtko.ursulin@linux.intel.com>
 <157650003726.2428.7411733849297083759@skylake-alporthouse-com>
From: Tvrtko Ursulin <tvrtko.ursulin@linux.intel.com>
Organization: Intel Corporation UK Plc
Message-ID: <f48c66db-d224-e213-e8ac-7d4ceefe9652@linux.intel.com>
Date: Mon, 16 Dec 2019 13:09:04 +0000
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.9.0
MIME-Version: 1.0
In-Reply-To: <157650003726.2428.7411733849297083759@skylake-alporthouse-com>
Content-Language: en-US
Subject: Re: [Intel-gfx] [PATCH 1/5] drm/i915: Track per-context engine
 busyness
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


On 16/12/2019 12:40, Chris Wilson wrote:
> Quoting Tvrtko Ursulin (2019-12-16 12:07:00)
>> @@ -1389,6 +1415,9 @@ static void execlists_submit_ports(struct intel_engine_cs *engine)
>>                  write_desc(execlists,
>>                             rq ? execlists_update_context(rq) : 0,
>>                             n);
>> +
>> +               if (n == 0)
>> +                       intel_context_stats_start(&rq->hw_context->stats);
> 
> Too early? (Think preemption requests that may not begin for a few
> hundred ms.) Mark it as started on promotion instead (should be within a
> few microseconds, if not ideally a few 10 ns)? Then you will also have
> better symmetry in process_csb, suggesting that we can have a routine
> that takes the current *execlists->active with fewer code changes.

Good point, I was disliking the csb latencies and completely missed the 
preemption side of things. Symmetry will be much better in more than one 
aspect.

Regards,

Tvrtko

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
