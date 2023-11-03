Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 8648C7E0019
	for <lists+intel-gfx@lfdr.de>; Fri,  3 Nov 2023 10:47:31 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id AE68810E547;
	Fri,  3 Nov 2023 09:47:27 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [134.134.136.31])
 by gabe.freedesktop.org (Postfix) with ESMTPS id A5C0B10E547;
 Fri,  3 Nov 2023 09:47:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1699004845; x=1730540845;
 h=message-id:date:mime-version:subject:to:cc:references:
 from:in-reply-to:content-transfer-encoding;
 bh=hIYIDlRLh2rua5Y1aa8xeeKiJqg/d/WmpOOuaIOnV5Q=;
 b=MgrXPLRWS6Rme0eeWjexl7m/9h1/mcl+84hJxJbszNHK5Pq4WvTCi0n/
 mIQ4eGwd7oSq+HQd/M/8x/MAnw7cO8Em/yzZO8foVWBM1qVutHYMnS1WY
 ODM3QW7Xc9NvfppowpVOpc4nSMXc57JUJCAkfgbYE1yoebCNFQSWT6cBd
 R1F9IXHjOuSsKdaMHv9hji7F3AZpfkAM7TRB9isM1/i/OqUuvg3fDYzqU
 ixHfuu+a5IWoV8ubcZ8K2zsHNJabqwmjwg9krkWl9SVuKy2jrpJWXqZAj
 dwAswKXlUXltPgMLa/NdQLzsonJ7QVzBelg2yoybcCwrr0JNTBj3Coc3I g==;
X-IronPort-AV: E=McAfee;i="6600,9927,10882"; a="453212689"
X-IronPort-AV: E=Sophos;i="6.03,273,1694761200"; d="scan'208";a="453212689"
Received: from orsmga006.jf.intel.com ([10.7.209.51])
 by orsmga104.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 03 Nov 2023 02:47:24 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10882"; a="738033621"
X-IronPort-AV: E=Sophos;i="6.03,273,1694761200"; d="scan'208";a="738033621"
Received: from sdobbela-mobl.ger.corp.intel.com (HELO [10.213.223.51])
 ([10.213.223.51])
 by orsmga006-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 03 Nov 2023 02:47:22 -0700
Message-ID: <1b16d7ff-f61e-475f-bed4-2f287ecb32da@linux.intel.com>
Date: Fri, 3 Nov 2023 09:47:20 +0000
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Content-Language: en-US
To: "Coelho, Luciano" <luciano.coelho@intel.com>,
 "Vivi, Rodrigo" <rodrigo.vivi@intel.com>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>
References: <20231023103328.1495942-1-luciano.coelho@intel.com>
 <cf874768-7951-4dcc-90b1-7f3457c4923e@linux.intel.com>
 <463b540d-fd0d-4988-9ad1-63447a5d6948@linux.intel.com>
 <86c395f6b2e529943007aca94dd0862c1bb0004d.camel@intel.com>
 <1dedcd11-ac0c-465e-bbe4-079767f5813e@linux.intel.com>
 <d31820ec905a17c38e513653024368d702e8ccbf.camel@intel.com>
 <a227240f5e9ccff944cf6bf1a920c034d0b7b099.camel@intel.com>
From: Tvrtko Ursulin <tvrtko.ursulin@linux.intel.com>
Organization: Intel Corporation UK Plc
In-Reply-To: <a227240f5e9ccff944cf6bf1a920c034d0b7b099.camel@intel.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit
Subject: Re: [Intel-gfx] [PATCH v3] drm/i915: handle uncore spinlock when
 not available
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
Cc: "intel-xe@lists.freedesktop.org" <intel-xe@lists.freedesktop.org>
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>


On 03/11/2023 08:58, Coelho, Luciano wrote:
> On Fri, 2023-11-03 at 03:31 +0000, Vivi, Rodrigo wrote:
>>>>
>>>> Any other suggestions?
>>>
>>> I think it will boil down to the reason uncore lock is held over
>>> the
>>> respective sections ie. the comment in i915_get_crtc_scanoutpos.
>>>
>>> If it is timing sensitive to the extent irq off was needed it may
>>> apply
>>> to Xe as well. Likewise the need to use mmio helpers which rely on
>>> the
>>> uncore lock already held. Question of whether there is conceptual
>>> commonality, will probably drive the best name, or the best
>>> approach
>>> in
>>> general.
>>
>> yeap, this is how I'm seeing this. If i915-display needs this global
>> lock around mmio operations, then we wound need to add it to the
>> xe_mmio as well and then solve the name, etc.
>>
>> However, I don't believe that other users of the mmio would need
>> this lock. So I believe the right thing to do is to create a i915-
>> display only spin_lock, around the intel_de_mmio calls and here.
>>
>> With this we entirely kill the dependency on someone-else's lock
>> and have something that is entirely inside display code so it
>> doesn't need to be ported to one or another driver core components.
> 
> Right, I agree too.
> 
> My patch was just trying to address the quick hack made for Xe, not the
> actual implementation in Xe's side.  But it makes sense to implement
> this new lock internally in the display so there are no dependencies or
> wrappers needed.
> 
> I'll respin.

You could also make sure it needs to be a lock and not just say a 
preempt off or irq section?

Regards,

Tvrtko
