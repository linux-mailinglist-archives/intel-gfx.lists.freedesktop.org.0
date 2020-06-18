Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id D93E61FECA6
	for <lists+intel-gfx@lfdr.de>; Thu, 18 Jun 2020 09:40:33 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 578F96EADD;
	Thu, 18 Jun 2020 07:40:31 +0000 (UTC)
X-Original-To: Intel-gfx@lists.freedesktop.org
Delivered-To: Intel-gfx@lists.freedesktop.org
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 2E9466E237
 for <Intel-gfx@lists.freedesktop.org>; Thu, 18 Jun 2020 07:40:29 +0000 (UTC)
IronPort-SDR: McWDwy1GMpFUU6RJuMwnoel3tRD4PFCSKTw6mTTkOo8aZdfHOA5JNtbjzKrklkantE9g54A6jx
 +1Pgu9OmV3BQ==
X-IronPort-AV: E=McAfee;i="6000,8403,9655"; a="130891536"
X-IronPort-AV: E=Sophos;i="5.73,525,1583222400"; d="scan'208";a="130891536"
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga005.jf.intel.com ([10.7.209.41])
 by orsmga101.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 18 Jun 2020 00:40:28 -0700
IronPort-SDR: p0TloFv56gZ69pSyDLZdj9HPCCyzGVGbSmwGVfuEmLU9bCZuw9wZDViA00+tb3IsqLAP2rkM1s
 B24XhnBhWaJw==
X-IronPort-AV: E=Sophos;i="5.73,525,1583222400"; d="scan'208";a="450548762"
Received: from ttulbure-mobl.ger.corp.intel.com (HELO [10.252.33.49])
 ([10.252.33.49])
 by orsmga005-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 18 Jun 2020 00:40:27 -0700
To: Chris Wilson <chris@chris-wilson.co.uk>, Intel-gfx@lists.freedesktop.org
References: <20200617160120.16555-1-tvrtko.ursulin@linux.intel.com>
 <20200617160120.16555-2-tvrtko.ursulin@linux.intel.com>
 <159246447431.2739.9873271400703393063@build.alporthouse.com>
From: Tvrtko Ursulin <tvrtko.ursulin@linux.intel.com>
Organization: Intel Corporation UK Plc
Message-ID: <09894f81-19b3-4dde-0764-ec042a5c61e8@linux.intel.com>
Date: Thu, 18 Jun 2020 08:40:25 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.8.0
MIME-Version: 1.0
In-Reply-To: <159246447431.2739.9873271400703393063@build.alporthouse.com>
Content-Language: en-US
Subject: Re: [Intel-gfx] [PATCH i-g-t 01/10] gem_wsim: Rip out userspace
 balancing
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


On 18/06/2020 08:14, Chris Wilson wrote:
> Quoting Tvrtko Ursulin (2020-06-17 17:01:11)
>> From: Tvrtko Ursulin <tvrtko.ursulin@intel.com>
>>
>> Evaluation of userspace load balancing options was how this tool started
>> but since we have settled on doing it in the kernel.
>>
>> Tomorrow we will want to update the tool for new engine interfaces and all
>> this legacy code will just be a distraction.
>>
>> Rip out everything not related to explicit load balancing implemented via
>> context engine maps and adjust the workloads to use it.
> 
> Hmm, if this is on the table, should we also then restrict
> load-balancing wsim to gen11+ so that we can use the timed loops rather
> nop batches? That would be a huge selling point, and I'll just keep an
> old checkout around for nop load balancing with all the trimmings.

That was my plan for the next step yes. Just taking your patch without 
further changes would already make it work I think. But also at some 
point I want to convert the engine selection (and engine naming in 
descriptors) to class:instance.

Why do you need the nop/old balancing stuff? I would hope going forward 
we only need to compare current balancing against any changes. So I'd 
really like to remoev the userspace balancing stuff.

Regards,

Tvrtko
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
