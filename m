Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 1FE6D5429CD
	for <lists+intel-gfx@lfdr.de>; Wed,  8 Jun 2022 10:46:57 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 7AD5E10E9DC;
	Wed,  8 Jun 2022 08:46:55 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga17.intel.com (mga17.intel.com [192.55.52.151])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 7FF6910E9DC
 for <intel-gfx@lists.freedesktop.org>; Wed,  8 Jun 2022 08:46:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1654678014; x=1686214014;
 h=from:to:subject:in-reply-to:references:date:message-id:
 mime-version; bh=YMDNjjCYzc7fgJooAdbK+dk7tkVs7OkCdbp6ZeUgMWI=;
 b=WvOteMZgIFiAKTAWYlPXkSdQamhDa/Kgb3SaZGC6Lw1xo5XKRSC1KjdF
 4Lr6HZ7fRKUHX5wfanzfbD8fdJIMQi79FHbc/IaDQ0oHISr385rbbkIGg
 yJB2nzfLLkTpDKoZl87tCyNvMlu2GmS307kDmXVKFJ7zcxxkdIMTHmLeQ
 COnA7kmzE1i+VfE/z8l507cgrKeEKIRYWZFgmWJoUcxMUCURpHC+aRW2z
 kv4wasySeguZlEa+QIqXk9DUXroXnC2Qo1CPHV979rFhH3F8BrHGwapzM
 Zu1YVPmgCJwzcpUDAsRw2qf/6DBuwdZPbyytebUJZPhpBBoyBoWg/bU63 w==;
X-IronPort-AV: E=McAfee;i="6400,9594,10371"; a="257252395"
X-IronPort-AV: E=Sophos;i="5.91,285,1647327600"; d="scan'208";a="257252395"
Received: from fmsmga008.fm.intel.com ([10.253.24.58])
 by fmsmga107.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 08 Jun 2022 01:46:54 -0700
X-IronPort-AV: E=Sophos;i="5.91,285,1647327600"; d="scan'208";a="636685085"
Received: from jkosticx-mobl.amr.corp.intel.com (HELO localhost)
 ([10.252.58.130])
 by fmsmga008-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 08 Jun 2022 01:46:53 -0700
From: Jani Nikula <jani.nikula@intel.com>
To: Tvrtko Ursulin <tvrtko.ursulin@linux.intel.com>,
 intel-gfx@lists.freedesktop.org
In-Reply-To: <7b62505a-95a0-25ab-9299-e349453e49f5@linux.intel.com>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
References: <20220506120405.2582372-1-jani.nikula@intel.com>
 <7b62505a-95a0-25ab-9299-e349453e49f5@linux.intel.com>
Date: Wed, 08 Jun 2022 11:46:50 +0300
Message-ID: <87wndro83p.fsf@intel.com>
MIME-Version: 1.0
Content-Type: text/plain
Subject: Re: [Intel-gfx] [PATCH] drm/i915/pxp: fix sparse warning for not
 declared symbol
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
> On 06/05/2022 13:04, Jani Nikula wrote:
>> Fix:
>> 
>> drivers/gpu/drm/i915/pxp/intel_pxp_debugfs.c:61:6: warning: symbol
>> 'intel_pxp_debugfs_register' was not declared. Should it be static?
>> 
>> Sort and remove the redundant pxp prefixes from the includes while at
>> it.
>> 
>> Signed-off-by: Jani Nikula <jani.nikula@intel.com>
>> ---
>>   drivers/gpu/drm/i915/pxp/intel_pxp_debugfs.c | 5 +++--
>>   1 file changed, 3 insertions(+), 2 deletions(-)
>> 
>> diff --git a/drivers/gpu/drm/i915/pxp/intel_pxp_debugfs.c b/drivers/gpu/drm/i915/pxp/intel_pxp_debugfs.c
>> index c9da1015eb42..e888b5124a07 100644
>> --- a/drivers/gpu/drm/i915/pxp/intel_pxp_debugfs.c
>> +++ b/drivers/gpu/drm/i915/pxp/intel_pxp_debugfs.c
>> @@ -9,9 +9,10 @@
>>   #include <drm/drm_print.h>
>>   
>>   #include "gt/intel_gt_debugfs.h"
>> -#include "pxp/intel_pxp.h"
>> -#include "pxp/intel_pxp_irq.h"
>>   #include "i915_drv.h"
>> +#include "intel_pxp.h"
>> +#include "intel_pxp_debugfs.h"
>> +#include "intel_pxp_irq.h"
>>   
>>   static int pxp_info_show(struct seq_file *m, void *data)
>>   {
>
> Reviewed-by: Tvrtko Ursulin <tvrtko.ursulin@intel.com>

Thanks, pushed to din.

BR,
Jani.

>
> Lets try to copy domain owners when doing cleanups to lessen the 
> maintainer load, since it appears people are not really scanning the 
> upstream mailing list these days. :(
>
> Regards,
>
> Tvrtko

-- 
Jani Nikula, Intel Open Source Graphics Center
