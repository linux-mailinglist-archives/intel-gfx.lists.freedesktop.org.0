Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 2CEDE5429CE
	for <lists+intel-gfx@lfdr.de>; Wed,  8 Jun 2022 10:47:28 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 8F46810E9E1;
	Wed,  8 Jun 2022 08:47:26 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga11.intel.com (mga11.intel.com [192.55.52.93])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 0CAC110E9E1
 for <intel-gfx@lists.freedesktop.org>; Wed,  8 Jun 2022 08:47:26 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1654678046; x=1686214046;
 h=from:to:subject:in-reply-to:references:date:message-id:
 mime-version; bh=T43dlwiyjN420SHreJR82ARUXKr+XK+I0lyuNQ+m2JM=;
 b=lEABwjJMv6ZOS78PXJukP+GTZY57hTzTBnaQ7gBtXORPdQHgQPMzJYqu
 MI0aIK2jfXljI6Ya8Yqu4VU1GartVQZa8TSJiN/oCjUij37gC/D/IHuH7
 SOC/dPHmnNMMNxF4pGUlsd1WrWV/xgQuQcy+mgnCzkm50B84A3/isRzEg
 2AFDWjLCIPw1TuzLHL968RFCsm76NFwzRWIDWVn1YkD7lhvGsTeVPgwre
 9qo2psAxfkS1yn/q4I8SmHaUsiSrvgeeg22Q1BtRM/tHBJSdtIeaiebt4
 Ne8J0+y4XiERIouz7g9ZfqAzjvbHd/7qe3/ks/jPyw/GHFoeCDxMg4QJl A==;
X-IronPort-AV: E=McAfee;i="6400,9594,10371"; a="274346557"
X-IronPort-AV: E=Sophos;i="5.91,285,1647327600"; d="scan'208";a="274346557"
Received: from fmsmga008.fm.intel.com ([10.253.24.58])
 by fmsmga102.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 08 Jun 2022 01:47:19 -0700
X-IronPort-AV: E=Sophos;i="5.91,285,1647327600"; d="scan'208";a="636685354"
Received: from jkosticx-mobl.amr.corp.intel.com (HELO localhost)
 ([10.252.58.130])
 by fmsmga008-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 08 Jun 2022 01:47:18 -0700
From: Jani Nikula <jani.nikula@intel.com>
To: Tvrtko Ursulin <tvrtko.ursulin@linux.intel.com>,
 intel-gfx@lists.freedesktop.org
In-Reply-To: <d2ae121b-e50e-6665-1500-2ef870ea98ac@linux.intel.com>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
References: <20220516081015.1058987-1-jani.nikula@intel.com>
 <d2ae121b-e50e-6665-1500-2ef870ea98ac@linux.intel.com>
Date: Wed, 08 Jun 2022 11:47:15 +0300
Message-ID: <87tu8vo830.fsf@intel.com>
MIME-Version: 1.0
Content-Type: text/plain
Subject: Re: [Intel-gfx] [PATCH] drm/i915/overlay: remove redundant
 GEM_BUG_ON()
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

On Wed, 08 Jun 2022, Tvrtko Ursulin <tvrtko.ursulin@linux.intel.com> wrote:
> On 16/05/2022 09:10, Jani Nikula wrote:
>> There's an early return for !engine->kernel_context.
>> 
>> Signed-off-by: Jani Nikula <jani.nikula@intel.com>
>> ---
>>   drivers/gpu/drm/i915/display/intel_overlay.c | 2 --
>>   1 file changed, 2 deletions(-)
>> 
>> diff --git a/drivers/gpu/drm/i915/display/intel_overlay.c b/drivers/gpu/drm/i915/display/intel_overlay.c
>> index ee46561b5ae8..79ed8bd04a07 100644
>> --- a/drivers/gpu/drm/i915/display/intel_overlay.c
>> +++ b/drivers/gpu/drm/i915/display/intel_overlay.c
>> @@ -1399,8 +1399,6 @@ void intel_overlay_setup(struct drm_i915_private *dev_priv)
>>   
>>   	overlay->i915 = dev_priv;
>>   	overlay->context = engine->kernel_context;
>> -	GEM_BUG_ON(!overlay->context);
>> -
>>   	overlay->color_key = 0x0101fe;
>>   	overlay->color_key_enabled = true;
>>   	overlay->brightness = -19;
>
> Reviewed-by: Tvrtko Ursulin <tvrtko.ursulin@intel.com>

Thanks, pushed to din.

BR,
Jani.

>
> Regards,
>
> Tvrtko

-- 
Jani Nikula, Intel Open Source Graphics Center
