Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 689D35BF7FA
	for <lists+intel-gfx@lfdr.de>; Wed, 21 Sep 2022 09:43:36 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id F084010E31F;
	Wed, 21 Sep 2022 07:43:33 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga04.intel.com (mga04.intel.com [192.55.52.120])
 by gabe.freedesktop.org (Postfix) with ESMTPS id E6D0B10E31F
 for <intel-gfx@lists.freedesktop.org>; Wed, 21 Sep 2022 07:43:30 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1663746210; x=1695282210;
 h=message-id:date:mime-version:subject:to:cc:references:
 from:in-reply-to:content-transfer-encoding;
 bh=V+ySt9OqSbkCWlhu3IVh2aAVe7nzsdiigrVb7ptlyBE=;
 b=ARR3c8BrP3Q2n0YGzq/OAPwV9P4as+xsCprphyeaFQB3AEs9/ayDhBmI
 d6rC9jyRYsZFObLKkl0gOF9EsEriBP61G+isF/3Ipfq9ptTa3EJeW1Br7
 yM5TTWZ/ZKkZYxOdMXqILLbMQY6YG1PvUYHJUwnzzioKAJu+1qskCbKx/
 1p3iatpVcmMgDQUm8mbSjh8jsBv7oM41Xvc+Xc/oq5ACZ87swLFTW0LVa
 R8ViSrnc4fwbxvACCafrUZoVsIqCzhg0D2oCeXLG8j5s2QmVwNEu5cm1R
 YBHkQ/vf8LVpFXjfmfeBgF/QCn8DRGMedKWwVvMGiRmC0D8wrxEmfN8Y+ A==;
X-IronPort-AV: E=McAfee;i="6500,9779,10476"; a="298649019"
X-IronPort-AV: E=Sophos;i="5.93,332,1654585200"; d="scan'208";a="298649019"
Received: from fmsmga004.fm.intel.com ([10.253.24.48])
 by fmsmga104.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 21 Sep 2022 00:43:30 -0700
X-IronPort-AV: E=Sophos;i="5.93,332,1654585200"; d="scan'208";a="687764650"
Received: from jrcarrol-mobl.ger.corp.intel.com (HELO [10.213.205.22])
 ([10.213.205.22])
 by fmsmga004-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 21 Sep 2022 00:43:29 -0700
Message-ID: <9ec2aa09-5cc2-4bdf-e17e-7770721deb06@linux.intel.com>
Date: Wed, 21 Sep 2022 08:43:27 +0100
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.13.0
Content-Language: en-US
To: "Dixit, Ashutosh" <ashutosh.dixit@intel.com>
References: <20220825132118.784407-1-badal.nilawar@intel.com>
 <20220825132118.784407-5-badal.nilawar@intel.com>
 <ec4dd4de-5e3a-5c4b-e318-f5afc4644d0a@linux.intel.com>
 <87edw5d164.wl-ashutosh.dixit@intel.com>
From: Tvrtko Ursulin <tvrtko.ursulin@linux.intel.com>
Organization: Intel Corporation UK Plc
In-Reply-To: <87edw5d164.wl-ashutosh.dixit@intel.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit
Subject: Re: [Intel-gfx] [PATCH 4/7] drm/i915/hwmon: Show device level
 energy usage
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
Cc: linux-hwmon@vger.kernel.org, intel-gfx@lists.freedesktop.org
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>


On 21/09/2022 01:24, Dixit, Ashutosh wrote:
> On Tue, 13 Sep 2022 01:50:08 -0700, Tvrtko Ursulin wrote:
>>
> 
> Hi Tvrtko,
> 
>> On 25/08/2022 14:21, Badal Nilawar wrote:
>>> From: Dale B Stimson <dale.b.stimson@intel.com>
>>>
>>> diff --git a/Documentation/ABI/testing/sysfs-driver-intel-i915-hwmon b/Documentation/ABI/testing/sysfs-driver-intel-i915-hwmon
>>> index 9a2d10edfce8..03d71c6869d3 100644
>>> --- a/Documentation/ABI/testing/sysfs-driver-intel-i915-hwmon
>>> +++ b/Documentation/ABI/testing/sysfs-driver-intel-i915-hwmon
>>> @@ -25,3 +25,11 @@ Contact:	dri-devel@lists.freedesktop.org
>>>    Description:	RO. Card default power limit (default TDP setting).
>>> 			Only supported for particular Intel i915 graphics
>>> platforms.
>>> +
>>> +What:		/sys/devices/.../hwmon/hwmon<i>/energy1_input
>>> +Date:		June 2022
>>> +KernelVersion:	5.19
>>
>> Date and kernel version will need updating throughout I think.
>>
>> But why I am here actually is to ask if there are plans to make
>> intel_gpu_top support this? It would be nice to have since it reports power
>> for integrated.
> 
> There were no plans but now Riana has an IGT patch series which exposes a
> unified inteface for rapl/hwmon (igfx/dgfx):
> 
> https://patchwork.freedesktop.org/series/108185/
> 
> So perhaps we can either have intel_gpu_top use this IGT lib or if it
> doesn't, copy some functions to intel_gpu_top.

Looks promising and would be nice yeah.

On the practicalities, first thing which comes to mind that probably it 
would need to be a separate library like igt_perf and igt_device_scan, 
since so far we have avoided linking intel_gpu_top with the whole lib_igt.

Regards,

Tvrtko
