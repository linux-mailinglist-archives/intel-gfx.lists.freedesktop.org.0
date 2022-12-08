Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 089FE646FD7
	for <lists+intel-gfx@lfdr.de>; Thu,  8 Dec 2022 13:37:30 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 9FBCB10E21D;
	Thu,  8 Dec 2022 12:37:26 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga18.intel.com (mga18.intel.com [134.134.136.126])
 by gabe.freedesktop.org (Postfix) with ESMTPS id DB7CA10E21D
 for <intel-gfx@lists.freedesktop.org>; Thu,  8 Dec 2022 12:37:21 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1670503041; x=1702039041;
 h=from:to:cc:subject:in-reply-to:references:date:
 message-id:mime-version;
 bh=8EJdmX3Hyv8PMHDwRRG2W4ckgXjk9FruN7TQWNnGmuc=;
 b=ZydDqMQZN7Yl0ORO/MEDWwN4TRXJVgdgr/O5dge3+BVw79zIkKk46jZe
 MrObVOZBYUf91ErNJcMfPvptg7abgZ6V/K4nZS2QpPcfstfoXzYp5iEnN
 tN8ZewLnp9WMD3ky1UpXd/SJ8wGZ4cc+zbhIOPbaU3l9w5hDWDeMe7cV0
 W6/2AXPLtSDkSyHhsSyz/Qdv7O76hUENR0ezPFEfH4ByFvaQ2UNqvdx3C
 /lF25XRDR1ruY7UHFKFiowqn85wgpB3JPH6mXfhn3iel1bcwNLTH4gpEo
 slb46yN1/xSgL4fkJ2YiJve1TCMrugKFahhU9Z3hLZCD+MZA7PvwPfgp+ g==;
X-IronPort-AV: E=McAfee;i="6500,9779,10554"; a="300572199"
X-IronPort-AV: E=Sophos;i="5.96,227,1665471600"; d="scan'208";a="300572199"
Received: from fmsmga008.fm.intel.com ([10.253.24.58])
 by orsmga106.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 08 Dec 2022 04:37:21 -0800
X-IronPort-AV: E=McAfee;i="6500,9779,10554"; a="710448822"
X-IronPort-AV: E=Sophos;i="5.96,227,1665471600"; d="scan'208";a="710448822"
Received: from danyang-mobl.ccr.corp.intel.com (HELO localhost)
 ([10.252.18.245])
 by fmsmga008-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 08 Dec 2022 04:37:18 -0800
From: Jani Nikula <jani.nikula@linux.intel.com>
To: Andrzej Hajda <andrzej.hajda@intel.com>, intel-gfx@lists.freedesktop.org
In-Reply-To: <877cz213fa.fsf@intel.com>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
References: <20221208111217.3734461-1-andrzej.hajda@intel.com>
 <877cz213fa.fsf@intel.com>
Date: Thu, 08 Dec 2022 14:37:16 +0200
Message-ID: <874ju6137n.fsf@intel.com>
MIME-Version: 1.0
Content-Type: text/plain
Subject: Re: [Intel-gfx] [PATCH 1/2] drm/i915/display: use fetch_and_zero if
 applicable
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
Cc: Andrzej Hajda <andrzej.hajda@intel.com>,
 Rodrigo Vivi <rodrigo.vivi@intel.com>
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Thu, 08 Dec 2022, Jani Nikula <jani.nikula@linux.intel.com> wrote:
> On Thu, 08 Dec 2022, Andrzej Hajda <andrzej.hajda@intel.com> wrote:
>> Simplify the code.
>
> Personally, I absolutely hate fetch_and_zero().
>
> I understand the point, but there are two main traps:
>
> First, the name implies atomicity, which there is none at all.
>
> Second, the name implies it's part of a kernel core header, which it
> isn't, and this just amplifies the first point.
>
> It's surprising and misleading, and those are not things I like about
> interfaces in the kernel.
>
> I would not like to see this proliferate. If fetch_and_zero() was atomic
> *and* part of a core kernel header, it would be a different matter. But
> I don't think that's going to happen, exactly because it won't be atomic
> and the name implies it is.

PS. The origin is commit 78ef2d9abad6 ("drm/i915: Add fetch_and_zero()
macro") which presents the idea of making it a pattern that can be
extended for atomic use, but six years and counting, that never
happened.


>
>
> BR,
> Jani.
>
>
>>
>> Signed-off-by: Andrzej Hajda <andrzej.hajda@intel.com>
>> ---
>>  drivers/gpu/drm/i915/display/intel_hotplug.c | 12 ++++--------
>>  1 file changed, 4 insertions(+), 8 deletions(-)
>>
>> diff --git a/drivers/gpu/drm/i915/display/intel_hotplug.c b/drivers/gpu/drm/i915/display/intel_hotplug.c
>> index 907ab7526cb478..2972d7533da44e 100644
>> --- a/drivers/gpu/drm/i915/display/intel_hotplug.c
>> +++ b/drivers/gpu/drm/i915/display/intel_hotplug.c
>> @@ -304,10 +304,8 @@ static void i915_digport_work_func(struct work_struct *work)
>>  	u32 old_bits = 0;
>>  
>>  	spin_lock_irq(&dev_priv->irq_lock);
>> -	long_port_mask = dev_priv->display.hotplug.long_port_mask;
>> -	dev_priv->display.hotplug.long_port_mask = 0;
>> -	short_port_mask = dev_priv->display.hotplug.short_port_mask;
>> -	dev_priv->display.hotplug.short_port_mask = 0;
>> +	long_port_mask = fetch_and_zero(&dev_priv->display.hotplug.long_port_mask);
>> +	short_port_mask = fetch_and_zero(&dev_priv->display.hotplug.short_port_mask);
>>  	spin_unlock_irq(&dev_priv->irq_lock);
>>  
>>  	for_each_intel_encoder(&dev_priv->drm, encoder) {
>> @@ -379,10 +377,8 @@ static void i915_hotplug_work_func(struct work_struct *work)
>>  
>>  	spin_lock_irq(&dev_priv->irq_lock);
>>  
>> -	hpd_event_bits = dev_priv->display.hotplug.event_bits;
>> -	dev_priv->display.hotplug.event_bits = 0;
>> -	hpd_retry_bits = dev_priv->display.hotplug.retry_bits;
>> -	dev_priv->display.hotplug.retry_bits = 0;
>> +	hpd_event_bits = fetch_and_zero(&dev_priv->display.hotplug.event_bits);
>> +	hpd_retry_bits = fetch_and_zero(&dev_priv->display.hotplug.retry_bits);
>>  
>>  	/* Enable polling for connectors which had HPD IRQ storms */
>>  	intel_hpd_irq_storm_switch_to_polling(dev_priv);

-- 
Jani Nikula, Intel Open Source Graphics Center
