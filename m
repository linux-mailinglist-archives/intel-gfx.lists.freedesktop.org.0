Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 815C91FED1A
	for <lists+intel-gfx@lfdr.de>; Thu, 18 Jun 2020 10:01:16 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id C9C8B6EAD3;
	Thu, 18 Jun 2020 08:01:14 +0000 (UTC)
X-Original-To: Intel-gfx@lists.freedesktop.org
Delivered-To: Intel-gfx@lists.freedesktop.org
Received: from mga17.intel.com (mga17.intel.com [192.55.52.151])
 by gabe.freedesktop.org (Postfix) with ESMTPS id EA4186EAD3
 for <Intel-gfx@lists.freedesktop.org>; Thu, 18 Jun 2020 08:01:13 +0000 (UTC)
IronPort-SDR: aefadp4lfNSKndkV7OXpSMhlgfxHgBsrQUnRoEbsXv3qUIz/jlrFKI8cZpUvF76AVuQpgWjQi3
 nZeEzJM86DkQ==
X-IronPort-AV: E=McAfee;i="6000,8403,9655"; a="122703695"
X-IronPort-AV: E=Sophos;i="5.73,525,1583222400"; d="scan'208";a="122703695"
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga005.jf.intel.com ([10.7.209.41])
 by fmsmga107.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 18 Jun 2020 01:01:13 -0700
IronPort-SDR: +V/1Farlb8ySkJJ/692KSyBfHN+KSVl/0e6PH4u/J2P4wGfruIRoQtzQeQJi9gHLWfSPZRHB7I
 p/y0Qhebf1KQ==
X-IronPort-AV: E=Sophos;i="5.73,525,1583222400"; d="scan'208";a="450554469"
Received: from ttulbure-mobl.ger.corp.intel.com (HELO [10.252.33.49])
 ([10.252.33.49])
 by orsmga005-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 18 Jun 2020 01:01:12 -0700
To: Chris Wilson <chris@chris-wilson.co.uk>, Intel-gfx@lists.freedesktop.org
References: <20200617160120.16555-1-tvrtko.ursulin@linux.intel.com>
 <20200617160120.16555-7-tvrtko.ursulin@linux.intel.com>
 <159241093617.19488.6127572319183957508@build.alporthouse.com>
From: Tvrtko Ursulin <tvrtko.ursulin@linux.intel.com>
Organization: Intel Corporation UK Plc
Message-ID: <ea8887b4-e5d7-2940-3c78-18785ee815ea@linux.intel.com>
Date: Thu, 18 Jun 2020 09:01:10 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.8.0
MIME-Version: 1.0
In-Reply-To: <159241093617.19488.6127572319183957508@build.alporthouse.com>
Content-Language: en-US
Subject: Re: [Intel-gfx] [PATCH i-g-t 06/10] gem_wsim: Support scaling
 workload batch durations
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


On 17/06/2020 17:22, Chris Wilson wrote:
> Quoting Tvrtko Ursulin (2020-06-17 17:01:16)
>> From: Tvrtko Ursulin <tvrtko.ursulin@intel.com>
>>
>> -f <float> on the command line can be used to scale batch buffer durations
>> in all parsed workloads.
> 
> But not the period?

I had it scale both at some point but then it ended up more useful to 
only do batches. So I could stuff more clients in before saturation. I 
suppose that's an argument to have both independently controlled.

Regards,

Tvrtko
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
