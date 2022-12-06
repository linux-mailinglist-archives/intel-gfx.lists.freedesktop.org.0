Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 1623D643EBE
	for <lists+intel-gfx@lfdr.de>; Tue,  6 Dec 2022 09:35:51 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 3BE3410E302;
	Tue,  6 Dec 2022 08:35:47 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga18.intel.com (mga18.intel.com [134.134.136.126])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 78B9810E302
 for <intel-gfx@lists.freedesktop.org>; Tue,  6 Dec 2022 08:35:43 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1670315743; x=1701851743;
 h=message-id:date:mime-version:subject:from:to:references:
 in-reply-to:content-transfer-encoding;
 bh=K0z9CNvGuPWNFvKj2RoaKEik71FItyIRoNeSnlMoUW0=;
 b=Dm4brwqZwFNlh+CXYgyPe9ibzu+hXVK0TL+xmY9CRr0U0lFJUvUVpT1h
 2K9K1plp/gDyGrYL/b1tYATCSLU031t5uuAj9B9cuBnNNiO2yslvjb839
 ny/UFGNS3lYhxzGS7KfwpzbAdLVwGrGa2hIWw0BZgFf4oCcQjDpTPQ9g2
 VLVXixl9++dVINnEowoTUvkPCLya9aZnXmRbikQ+goqb7IgMHzyAkiv12
 9qQAGyH20Lfu9lJ8gLzX99eRThLFYBfZi04knjd830NuhH9QCKZI3Rh0s
 gByMlyMDRkAt+t8Gu02JB/3f2TP3B6WeU+f+rygzvJNQqzD02Jis6kFON g==;
X-IronPort-AV: E=McAfee;i="6500,9779,10552"; a="299992494"
X-IronPort-AV: E=Sophos;i="5.96,220,1665471600"; d="scan'208";a="299992494"
Received: from fmsmga004.fm.intel.com ([10.253.24.48])
 by orsmga106.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 06 Dec 2022 00:35:42 -0800
X-IronPort-AV: E=McAfee;i="6500,9779,10552"; a="714720128"
X-IronPort-AV: E=Sophos;i="5.96,220,1665471600"; d="scan'208";a="714720128"
Received: from kflahert-mobl.ger.corp.intel.com (HELO [10.213.212.142])
 ([10.213.212.142])
 by fmsmga004-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 06 Dec 2022 00:35:38 -0800
Message-ID: <15e01c05-af96-09b1-ebcd-84c6808d5925@linux.intel.com>
Date: Tue, 6 Dec 2022 08:35:36 +0000
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.4.2
Content-Language: en-US
From: Tvrtko Ursulin <tvrtko.ursulin@linux.intel.com>
To: Alan Previn <alan.previn.teres.alexis@intel.com>,
 intel-gfx@lists.freedesktop.org
References: <20220509210151.1843173-1-alan.previn.teres.alexis@intel.com>
 <20220509210151.1843173-2-alan.previn.teres.alexis@intel.com>
 <a52b763f-179a-8f3f-dfd3-d7d9329d6481@linux.intel.com>
Organization: Intel Corporation UK Plc
In-Reply-To: <a52b763f-179a-8f3f-dfd3-d7d9329d6481@linux.intel.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 8bit
Subject: Re: [Intel-gfx] [Intel-gfx 1/6] drm/i915/guc: Fix GuC relay log
 debugfs failing open
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
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>


On 06/12/2022 08:32, Tvrtko Ursulin wrote:
> 
> On 09/05/2022 22:01, Alan Previn wrote:
>> When GuC-Error-Capture was introduced, we created
>> buf_in_use as a way to identify if relay logging
>> had started. It is meant to replace the previous
>> method where a mmap of the GuC log buffer was
>> the indicator but not since GuC Error Capture
>> shares that mapping throughout operation.
>>
>> However, that method of checking was not updated
>> when the debugfs guc_log_relay_ctl_open was called.
>> Fix that check.
>>
>> Fixes:
>>     drm/i915/guc: Add capture region into intel_guc_log
>>     (daff407a083d).
> 
> Wrong format of fixes tag - if you want this picked up by any of the 
> automated tooling, it won't be. (And you probably do given DG2 is out of 
> force probe.)

ENOCOFFEE - replying to re-surrected ancient thread so I guess this does 
not matter any more.

Regards,

Tvrtko
