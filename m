Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 7EA2C2157AC
	for <lists+intel-gfx@lfdr.de>; Mon,  6 Jul 2020 14:53:51 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id D9EF76E049;
	Mon,  6 Jul 2020 12:53:49 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 9F4C96E049
 for <intel-gfx@lists.freedesktop.org>; Mon,  6 Jul 2020 12:53:48 +0000 (UTC)
IronPort-SDR: JjlJpIiz2vsDZQ7oprGDGoHSGdLI/veUth+OKPWwcKxOiFDnBW5kzNJwhq1OrIxfBFcSj/VhjC
 m8YsUpW5lrPg==
X-IronPort-AV: E=McAfee;i="6000,8403,9673"; a="165470486"
X-IronPort-AV: E=Sophos;i="5.75,320,1589266800"; d="scan'208";a="165470486"
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga001.jf.intel.com ([10.7.209.18])
 by fmsmga101.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 06 Jul 2020 05:53:48 -0700
IronPort-SDR: 0nemsUeCBnyZvnV9E0K1AQzcmdkjIswYR3J8mDaFzKHOKVnFU8GLnDtKJ5L1cRIYNFIoEOAZuy
 DWjPMIz2QSkw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.75,320,1589266800"; d="scan'208";a="357439034"
Received: from mweingar-mobl.ger.corp.intel.com (HELO [10.249.46.232])
 ([10.249.46.232])
 by orsmga001.jf.intel.com with ESMTP; 06 Jul 2020 05:53:47 -0700
To: Tvrtko Ursulin <tvrtko.ursulin@linux.intel.com>,
 intel-gfx@lists.freedesktop.org
References: <20200703122221.591656-1-maarten.lankhorst@linux.intel.com>
 <20200703122221.591656-6-maarten.lankhorst@linux.intel.com>
 <9c5de4e1-56e7-d6ab-72de-a142256e08d1@linux.intel.com>
From: Maarten Lankhorst <maarten.lankhorst@linux.intel.com>
Message-ID: <0f66e6a0-6588-a315-7d50-bc0986f0b108@linux.intel.com>
Date: Mon, 6 Jul 2020 14:53:46 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.9.0
MIME-Version: 1.0
In-Reply-To: <9c5de4e1-56e7-d6ab-72de-a142256e08d1@linux.intel.com>
Content-Language: en-US
Subject: Re: [Intel-gfx] [PATCH 05/23] drm/i915: Remove locking from
 i915_gem_object_prepare_read/write
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

Op 03-07-2020 om 15:43 schreef Tvrtko Ursulin:
>
> On 03/07/2020 13:22, Maarten Lankhorst wrote:
>> Execbuffer submission will perform its own WW locking, and we
>> cannot rely on the implicit lock there.
>>
>> This also makes it clear that the GVT code will get a lockdep splat when
>> multiple batchbuffer shadows need to be performed in the same instance,
>> fix that up.
>>
>> Signed-off-by: Maarten Lankhorst <maarten.lankhorst@linux.intel.com>
>
> You have my r-b for this one from the previous round. 
Thank you, will add.
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
