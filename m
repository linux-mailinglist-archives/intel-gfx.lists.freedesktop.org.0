Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id A27B9620CE5
	for <lists+intel-gfx@lfdr.de>; Tue,  8 Nov 2022 11:09:58 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id E5C0D10E0D3;
	Tue,  8 Nov 2022 10:09:56 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga18.intel.com (mga18.intel.com [134.134.136.126])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 662BB10E0D3
 for <intel-gfx@lists.freedesktop.org>; Tue,  8 Nov 2022 10:09:55 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1667902195; x=1699438195;
 h=from:to:cc:subject:in-reply-to:references:date:
 message-id:mime-version;
 bh=oroIwl1xCpj7Yoi+mfk1wNIoY/lqTxuR1/gyMTUzkLA=;
 b=XrR6F8NEks/4bTFXs1cBMCAc+EbIKgf/XMEtjKG6okSOwlO38nXq2WrV
 vZH+4j82s8bTGrmbOpcsovn2Ij5JLfgAFC6YoB8WZsa/Z7k2652hRs6lg
 lYQFsKf5lijtzGwAryveySzih5D63N8f0yC1AOQ//szYZTQmKPptMt4nP
 +cRjfdawsAIEY4RQ1wOlz9exFjLua7dKig7Q0HumxUGp3ASVIeT9YjY0a
 6FxImqc/WsRaERYatoniWpryCGtKKAwZBAB4amdtXeuPvz3xaUKJCoCC7
 MzkkGTChiMfEmOa9Xe2yIJwmXVNDhRGGmxsYJbjCTJyM+qAgWL+tzNJmE Q==;
X-IronPort-AV: E=McAfee;i="6500,9779,10524"; a="294028364"
X-IronPort-AV: E=Sophos;i="5.96,147,1665471600"; d="scan'208";a="294028364"
Received: from fmsmga007.fm.intel.com ([10.253.24.52])
 by orsmga106.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 08 Nov 2022 02:09:54 -0800
X-IronPort-AV: E=McAfee;i="6500,9779,10524"; a="638738290"
X-IronPort-AV: E=Sophos;i="5.96,147,1665471600"; d="scan'208";a="638738290"
Received: from smoriord-mobl.ger.corp.intel.com (HELO localhost)
 ([10.252.16.110])
 by fmsmga007-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 08 Nov 2022 02:09:52 -0800
From: Jani Nikula <jani.nikula@intel.com>
To: "Ceraolo Spurio, Daniele" <daniele.ceraolospurio@intel.com>,
 intel-gfx@lists.freedesktop.org
In-Reply-To: <25f12419-bec3-d8af-c784-fe1582436c66@intel.com>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
References: <20221107140454.2680954-1-jani.nikula@intel.com>
 <25f12419-bec3-d8af-c784-fe1582436c66@intel.com>
Date: Tue, 08 Nov 2022 12:09:50 +0200
Message-ID: <87edudahap.fsf@intel.com>
MIME-Version: 1.0
Content-Type: text/plain
Subject: Re: [Intel-gfx] [PATCH] drm/i915/pxp: use <> instead of "" for
 headers in include/
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
Cc: Tomas Winkler <tomas.winkler@intel.com>,
 Vitaly Lubart <vitaly.lubart@intel.com>,
 Alan Previn <alan.previn.teres.alexis@intel.com>
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Mon, 07 Nov 2022, "Ceraolo Spurio, Daniele" <daniele.ceraolospurio@intel.com> wrote:
> On 11/7/2022 6:04 AM, Jani Nikula wrote:
>> Headers in include/ should be included using the system header #include
>> syntax.
>>
>> Fixes: 887a193b4fb1 ("drm/i915/pxp: add huc authentication and loading command")
>> Cc: Tomas Winkler <tomas.winkler@intel.com>
>> Cc: Vitaly Lubart <vitaly.lubart@intel.com>
>> Cc: Daniele Ceraolo Spurio <daniele.ceraolospurio@intel.com>
>> Cc: Alan Previn <alan.previn.teres.alexis@intel.com>
>> Signed-off-by: Jani Nikula <jani.nikula@intel.com>
>
> Reviewed-by: Daniele Ceraolo Spurio <daniele.ceraolospurio@intel.com>

Thanks, pushed to dign.

BR,
Jani.

>
> Daniele
>
>> ---
>>   drivers/gpu/drm/i915/pxp/intel_pxp_huc.c | 3 ++-
>>   1 file changed, 2 insertions(+), 1 deletion(-)
>>
>> diff --git a/drivers/gpu/drm/i915/pxp/intel_pxp_huc.c b/drivers/gpu/drm/i915/pxp/intel_pxp_huc.c
>> index 7ec36d94e758..f6a3f53a1d22 100644
>> --- a/drivers/gpu/drm/i915/pxp/intel_pxp_huc.c
>> +++ b/drivers/gpu/drm/i915/pxp/intel_pxp_huc.c
>> @@ -3,7 +3,8 @@
>>    * Copyright(c) 2021-2022, Intel Corporation. All rights reserved.
>>    */
>>   
>> -#include "drm/i915_drm.h"
>> +#include <drm/i915_drm.h>
>> +
>>   #include "i915_drv.h"
>>   
>>   #include "gem/i915_gem_region.h"
>

-- 
Jani Nikula, Intel Open Source Graphics Center
