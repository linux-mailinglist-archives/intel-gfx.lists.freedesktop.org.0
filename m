Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 070F0609C15
	for <lists+intel-gfx@lfdr.de>; Mon, 24 Oct 2022 10:08:44 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id A980388FAE;
	Mon, 24 Oct 2022 08:08:39 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
 by gabe.freedesktop.org (Postfix) with ESMTPS id D30B988FAE
 for <intel-gfx@lists.freedesktop.org>; Mon, 24 Oct 2022 08:08:35 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1666598915; x=1698134915;
 h=message-id:date:mime-version:subject:to:cc:references:
 from:in-reply-to:content-transfer-encoding;
 bh=nzDC1KtEMolEuQkYXhds4ANdfgsYREGmUe4PywTPNNY=;
 b=MStlk9SnChLoTcEFfIqwR2HJ3ISJ9+jZFGTxl7SI1Lc5SQOSp0JM5AJ3
 yzJepVk7ZnCCazN/l0PK9RJBovq78rk/sto6uSCl3TeNEv3iZs6YUiDgz
 tnRDLbTKZ6YrO0OzHUfrGOOVoaX1Vtmy7iw9xeYOYhJGYMIwcuAqBEx3H
 ais8IO6WkmVr1N0AjIvt5ALiQMTdBuB2RSeOZYbOF6ijZ1Liy5NDbhKoD
 W5w1ZRfqqAACQZtHiwzzAONlm3NyGqKWe7tzOTrUnCZiYD0AZE4+RZzFz
 Z/C9GGTbQ9KEVa7ojc4A8EUG4wmXt5E3A3Svoldema91H9nhV9sivSDdX Q==;
X-IronPort-AV: E=McAfee;i="6500,9779,10509"; a="308457971"
X-IronPort-AV: E=Sophos;i="5.95,207,1661842800"; d="scan'208";a="308457971"
Received: from fmsmga003.fm.intel.com ([10.253.24.29])
 by orsmga102.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 24 Oct 2022 01:08:33 -0700
X-IronPort-AV: E=McAfee;i="6500,9779,10509"; a="720410981"
X-IronPort-AV: E=Sophos;i="5.95,207,1661842800"; d="scan'208";a="720410981"
Received: from nirmoyda-mobl.ger.corp.intel.com (HELO [10.251.214.122])
 ([10.251.214.122])
 by fmsmga003-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 24 Oct 2022 01:08:31 -0700
Message-ID: <e3930f78-5062-0e7c-9858-d54e7b661e25@linux.intel.com>
Date: Mon, 24 Oct 2022 10:08:29 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:102.0) Gecko/20100101
 Thunderbird/102.4.0
Content-Language: en-US
To: =?UTF-8?B?VmlsbGUgU3lyasOkbMOk?= <ville.syrjala@linux.intel.com>,
 Nirmoy Das <nirmoy.das@intel.com>
References: <20220923073515.23093-1-nirmoy.das@intel.com>
 <Y1LKLECGcZ38aF4O@intel.com>
From: "Das, Nirmoy" <nirmoy.das@linux.intel.com>
In-Reply-To: <Y1LKLECGcZ38aF4O@intel.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 8bit
Subject: Re: [Intel-gfx] [PATCH 1/2] drm/i915: Fix a potential UAF at device
 unload
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
Cc: intel-gfx@lists.freedesktop.org, matthew.auld@intel.com,
 chris.p.wilson@intel.com
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>


On 10/21/2022 6:34 PM, Ville Syrjälä wrote:
> On Fri, Sep 23, 2022 at 09:35:14AM +0200, Nirmoy Das wrote:
>> i915_gem_drain_freed_objects() might not be enough to
>> free all the objects and RCU delayed work might get
>> scheduled after the i915 device struct gets freed.
>>
>> Call i915_gem_drain_workqueue() to catch all RCU delayed work.
> shard-snb is stil hitting the mm.shrink_count WARNn reliably,
> and things go downhill after that.


Looks better now again. Going to look into that.


Thanks,

Nirmoy

>
>> Suggested-by: Chris Wilson <chris.p.wilson@intel.com>
>> Acked-by: Tvrtko Ursulin <tvrtko.ursulin@intel.com>
>> Signed-off-by: Nirmoy Das <nirmoy.das@intel.com>
>> ---
>>   drivers/gpu/drm/i915/i915_gem.c | 2 +-
>>   1 file changed, 1 insertion(+), 1 deletion(-)
>>
>> diff --git a/drivers/gpu/drm/i915/i915_gem.c b/drivers/gpu/drm/i915/i915_gem.c
>> index 88df9a35e0fe..7541028caebd 100644
>> --- a/drivers/gpu/drm/i915/i915_gem.c
>> +++ b/drivers/gpu/drm/i915/i915_gem.c
>> @@ -1278,7 +1278,7 @@ void i915_gem_init_early(struct drm_i915_private *dev_priv)
>>   
>>   void i915_gem_cleanup_early(struct drm_i915_private *dev_priv)
>>   {
>> -	i915_gem_drain_freed_objects(dev_priv);
>> +	i915_gem_drain_workqueue(dev_priv);
>>   	GEM_BUG_ON(!llist_empty(&dev_priv->mm.free_list));
>>   	GEM_BUG_ON(atomic_read(&dev_priv->mm.free_count));
>>   	drm_WARN_ON(&dev_priv->drm, dev_priv->mm.shrink_count);
>> -- 
>> 2.37.3
