Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 55BA04DDAEF
	for <lists+intel-gfx@lfdr.de>; Fri, 18 Mar 2022 14:51:39 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 3545D10E146;
	Fri, 18 Mar 2022 13:51:37 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga04.intel.com (mga04.intel.com [192.55.52.120])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 7705D10E146
 for <intel-gfx@lists.freedesktop.org>; Fri, 18 Mar 2022 13:51:36 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1647611496; x=1679147496;
 h=message-id:date:mime-version:subject:to:cc:references:
 from:in-reply-to:content-transfer-encoding;
 bh=vN9V+7g6GstGaDxqG/I4YNN7eTzSupelUFJa8RCnQ2c=;
 b=YCoGw+MEMyn2DZeqq/5sYgnrkUrG8AvCZBzF3GjTazz1eIHOtMfT7mid
 aXts/Hk3yzSraxbO3PjyyCs84co4IoSyP6b8H5fePp37Mn92r4T/64UpT
 hgZwmhyh4Zk8qZXVwmphE6NmwnzlsNqBIwfQivT4ezEknspj1o1DMLi32
 kNBPAoniF1g1DCyLx+mKQCLNHg3lNCX1+D2mIMlAKgEaLqPH4i/XtQ8ta
 We2YT6CRPQ/s3vRiEcmT+uBHLmuLgPXO9r0oiWFzOpbcbC3Ui8yyoBxWc
 rSEcDp53Sxl8d6Wwn8Sc/03W4Yi02n2gig/2ksFPe/T3T07tYcGko6hzk g==;
X-IronPort-AV: E=McAfee;i="6200,9189,10289"; a="255964953"
X-IronPort-AV: E=Sophos;i="5.90,192,1643702400"; d="scan'208";a="255964953"
Received: from orsmga008.jf.intel.com ([10.7.209.65])
 by fmsmga104.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 18 Mar 2022 06:51:35 -0700
X-IronPort-AV: E=Sophos;i="5.90,192,1643702400"; d="scan'208";a="558447505"
Received: from aatouani-mobl.ger.corp.intel.com (HELO [10.213.202.184])
 ([10.213.202.184])
 by orsmga008-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 18 Mar 2022 06:51:34 -0700
Message-ID: <30e2f6e4-197c-bc7a-bde2-8fe9c95d0511@linux.intel.com>
Date: Fri, 18 Mar 2022 13:51:30 +0000
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.5.0
Content-Language: en-US
To: Matthew Auld <matthew.william.auld@gmail.com>,
 Andi Shyti <andi.shyti@linux.intel.com>
References: <20220318021046.40348-1-andi.shyti@linux.intel.com>
 <164758234860.31587.1988393489717053112@emeril.freedesktop.org>
 <YjRANNv09keROx9t@intel.intel>
 <CAM0jSHOkszx0n9HecVCZKTRj9whjAk4ozTK3B6JwdkVc=f0vFg@mail.gmail.com>
From: Tvrtko Ursulin <tvrtko.ursulin@linux.intel.com>
Organization: Intel Corporation UK Plc
In-Reply-To: <CAM0jSHOkszx0n9HecVCZKTRj9whjAk4ozTK3B6JwdkVc=f0vFg@mail.gmail.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 8bit
Subject: Re: [Intel-gfx] 
 =?utf-8?b?4pyXIEZpLkNJLklHVDogZmFpbHVyZSBmb3IgSW50?=
 =?utf-8?q?roduce_multitile_support?=
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
Cc: Intel Graphics Development <intel-gfx@lists.freedesktop.org>
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>


On 18/03/2022 13:25, Matthew Auld wrote:
> On Fri, 18 Mar 2022 at 08:18, Andi Shyti <andi.shyti@linux.intel.com> wrote:
>>
>>>    • igt@i915_selftest@mock@requests:
>>>
>>>        □ shard-kbl: PASS -> DMESG-FAIL
>>>
>>>        □ shard-tglb: PASS -> DMESG-FAIL
>>>
>>>        □ shard-apl: PASS -> DMESG-FAIL
>>>
>>>        □ shard-glk: PASS -> DMESG-FAIL
>>>
>>>        □ shard-skl: PASS -> DMESG-FAIL
>>>
>>>        □ shard-snb: PASS -> DMESG-FAIL
>>>
>>>        □ shard-iclb: PASS -> DMESG-FAIL
>>
>> I don't see how these failures can be related to the series I
>> sent.
>>
>> Maybe a false positive?
> 
> AFAICT these look new. Did we forget to do something for the
> mock_device? Maybe something in patch 3? Nothing is jumping out at
> me...

Yeah to "sus" :)

[I like so don't recognise much of that patch I am supposed to be author of... I think it moved on a lot since my version. Anyway.. onto the bug.]

Module init (executed in order):

	{ .init = i915_mock_selftests }, -> this is the part which runs mock selftests
...
	{ .init = i915_pci_register_driver, -> this is the part which sets up i915->gt[0]

It happens via i915_pci_register_driver -> i915_pci_probe -> i915_driver_probe -> intel_gt_probe_all.

Mock cleanup does:

mock_device_release

+	intel_gt_driver_late_release(i915);

  ->

+	for_each_gt(gt, i915, id) {
+		intel_uc_driver_late_release(&gt->uc);
+		intel_gt_fini_requests(gt);
+		intel_gt_fini_reset(gt);
+		intel_gt_fini_timelines(gt);
+		intel_engines_free(gt);
+	}

Hence I think for_each_gt does not see i915->gt[0] being set ergo does nothing.

I also don't like the signature changes like:

-void intel_gt_driver_late_release(struct intel_gt *gt)
+void intel_gt_driver_late_release(struct drm_i915_private *i915)

If it has to live in intel_gt.c, maybe at least use the "_all" suffix more consistently?

Regards,

Tvrtko
