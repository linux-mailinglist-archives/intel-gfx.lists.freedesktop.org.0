Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 455E75B9647
	for <lists+intel-gfx@lfdr.de>; Thu, 15 Sep 2022 10:24:12 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 6207910E162;
	Thu, 15 Sep 2022 08:24:08 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga04.intel.com (mga04.intel.com [192.55.52.120])
 by gabe.freedesktop.org (Postfix) with ESMTPS id A1F2310E162
 for <intel-gfx@lists.freedesktop.org>; Thu, 15 Sep 2022 08:24:02 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1663230242; x=1694766242;
 h=message-id:date:mime-version:subject:to:cc:references:
 from:in-reply-to:content-transfer-encoding;
 bh=BL9mxxmEcb6Oq4OxMx4VOnJy0Yvh7//NvPZZY3SWaVQ=;
 b=VrrxsgPx1qeWpIqYHmrd+FPiF85YuCSyLzHKP1rIlU8xEt6wGoCkJIaU
 GqhWGarA2+YT+edtQtm7jHNYnXhdUQLHk1mbe7SfwZl/vb7oHvFlexcFR
 Hi1NuqKuB2JLsLFOfTZYz17EwB3AnczKgGU4uw9JRkrOn982K+KYqiBTd
 5w5M14BZCk7KnZCZ6VR0Zi478xdu4NwulGcQC0i5g3QOUR5hIjJExDrya
 5+d6FBVeg2MwZeNOdBpWyYLgZLITNs56IimOE4VFeNBGKaXaJea1K7e73
 NHU2BUaKzuLxDwAwYv4/8Af8p38Uh9n1TWMUWO19EB9zpF39xVDTQ+piC Q==;
X-IronPort-AV: E=McAfee;i="6500,9779,10470"; a="297378669"
X-IronPort-AV: E=Sophos;i="5.93,317,1654585200"; d="scan'208";a="297378669"
Received: from orsmga007.jf.intel.com ([10.7.209.58])
 by fmsmga104.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 15 Sep 2022 01:23:55 -0700
X-IronPort-AV: E=Sophos;i="5.93,317,1654585200"; d="scan'208";a="612802768"
Received: from alishana-mobl1.ger.corp.intel.com (HELO [10.213.218.26])
 ([10.213.218.26])
 by orsmga007-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 15 Sep 2022 01:23:54 -0700
Message-ID: <071854a4-8797-4d12-12c2-dda304ebc8ec@linux.intel.com>
Date: Thu, 15 Sep 2022 09:23:52 +0100
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.13.0
Content-Language: en-US
To: Lucas De Marchi <lucas.demarchi@intel.com>
References: <20220914203545.4057637-1-lucas.demarchi@intel.com>
 <500be188-d8e0-2bc6-4f54-13a8784c0321@linux.intel.com>
 <20220915080946.fipzdukq4ib2efdk@ldmartin-desk2.lan>
From: Tvrtko Ursulin <tvrtko.ursulin@linux.intel.com>
Organization: Intel Corporation UK Plc
In-Reply-To: <20220915080946.fipzdukq4ib2efdk@ldmartin-desk2.lan>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 8bit
Subject: Re: [Intel-gfx] [PATCH] Revert "HAX iommu/intel: Ignore igfx_off"
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
Cc: intel-gfx@lists.freedesktop.org, Rodrigo Vivi <rodrigo.vivi@intel.com>
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>


On 15/09/2022 09:09, Lucas De Marchi wrote:
> On Thu, Sep 15, 2022 at 08:53:16AM +0100, Tvrtko Ursulin wrote:
>>
>> On 14/09/2022 21:35, Lucas De Marchi wrote:
>>> This reverts commit 58f44e349cfc10a4f2208fd806829c8fd046480b.
>>>
>>> To be removed from the topic/core-for-CI branch. If CI's config is
>>> setting that, it just shouldn't do it. Looking at a random current CI
>>> execution, the command line is:
>>>
>>> Command line: BOOT_IMAGE=/boot/drm_intel root=/dev/nvme0n1p2 \
>>>     rootwait fsck.repair=yes nmi_watchdog=panic,auto panic=5 \
>>>     softdog.soft_panic=5 drm.debug=0xe log_buf_len=1M 
>>> trace_clock=global 3 \
>>>     modprobe.blacklist=i915,snd_hda_intel ro
>>>
>>> So it should be safe to remove this commit.
>>
>> It's a patch which can silently bite so no complaints from me to 
>> remove it - just please upgrade the check from a "random current CI 
>> execution" to something stronger. Ack from CI folks would do.
> 
> Well in the commit message I mentioned "To be removed from the
> topic/core-for-CI branch". This is how the topic/core-for-CI branch is 
> handled
> until now. We simply remove the commit and force push.  So there won't 
> be any
> trace of commit messages for me to write anything stronger.
> 
> To be at least registered in the mailing list what I used (no it was not 
> this,
> but linking to the execution for this specific patch serves the purpose):
> 
> https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_108575v1/bat-dg2-8/boot0.txt 
> 
> 
> <5>[    0.000000] Linux version 
> 6.0.0-rc5-Patchwork_108575v1-g37b0cd34584f+ 
> (kbuild@ci-worker1.fi.intel.com) (gcc (Ubuntu 8.4.0-1ubuntu1~18.04) 
> 8.4.0, GNU ld (GNU Binutils for Ubuntu) 2.30) #1 SMP PREEMPT_DYNAMIC Wed 
> Sep 14 23:50:09 EEST 2022
> <6>[    0.000000] Command line: BOOT_IMAGE=/boot/drm_intel 
> root=/dev/nvme0n1p2 rootwait fsck.repair=yes nmi_watchdog=panic,auto 
> panic=5 softdog.soft_panic=5 drm.debug=0xe log_buf_len=1M 
> trace_clock=global 3 modprobe.blacklist=i915,snd_hda_intel ro
> 
> 
> Petri already acked this from the CI side via IRC today.

That's all I suggested. :)

Regards,

Tvrtko
