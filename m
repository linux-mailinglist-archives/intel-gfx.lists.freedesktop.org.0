Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id DAE555429DD
	for <lists+intel-gfx@lfdr.de>; Wed,  8 Jun 2022 10:52:29 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 517FC10E047;
	Wed,  8 Jun 2022 08:52:28 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga12.intel.com (mga12.intel.com [192.55.52.136])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 2597610E047
 for <intel-gfx@lists.freedesktop.org>; Wed,  8 Jun 2022 08:52:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1654678347; x=1686214347;
 h=from:to:cc:subject:in-reply-to:references:date:
 message-id:mime-version;
 bh=cP+VjZ8ljsVANafSrjhtwaP6SMDC6QQE9FQUk+OMKt0=;
 b=TpVPrGRPcXdARcEo55ZK2vNn8VstS5t3had4Hby/IEcKYJTYBpjj6Tob
 CXzFm0kv6ZmS6MPEGE2yD5NPYiikUhWBiIFumTphUKsBsj4rGP11ej3Lt
 qE22ImV8NfKw9yGXyoZwB/ddmgCb+DdKtRe0uhYmVAf5ofAkn63BskCtR
 ywkPQzZl0W+MhUyEd1lAaj0+Je9n20Bj+DgcAH99cEU9iXbSd3uymtjxg
 OeoTJm6pwHlcVvo2dlOIVyxGiUr7uDnHoMIZX4mYGd0Vs5nTkBcSeAw3V
 jEkwiNAm4goZ5+gGa8M53kHLYi5klebupl98vLjdVk+ovgG+NCWcUYqkm g==;
X-IronPort-AV: E=McAfee;i="6400,9594,10371"; a="256646541"
X-IronPort-AV: E=Sophos;i="5.91,285,1647327600"; d="scan'208";a="256646541"
Received: from fmsmga007.fm.intel.com ([10.253.24.52])
 by fmsmga106.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 08 Jun 2022 01:52:26 -0700
X-IronPort-AV: E=Sophos;i="5.91,285,1647327600"; d="scan'208";a="584751451"
Received: from jkosticx-mobl.amr.corp.intel.com (HELO localhost)
 ([10.252.58.130])
 by fmsmga007-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 08 Jun 2022 01:52:24 -0700
From: Jani Nikula <jani.nikula@intel.com>
To: Tvrtko Ursulin <tvrtko.ursulin@linux.intel.com>,
 intel-gfx@lists.freedesktop.org
In-Reply-To: <2cdd3327-be28-0923-6372-4e046403e3c1@linux.intel.com>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
References: <20220511094619.27889-1-jani.nikula@intel.com>
 <2cdd3327-be28-0923-6372-4e046403e3c1@linux.intel.com>
Date: Wed, 08 Jun 2022 11:52:22 +0300
Message-ID: <87r13zo7uh.fsf@intel.com>
MIME-Version: 1.0
Content-Type: text/plain
Subject: Re: [Intel-gfx] [PATCH] drm/i915/uc: remove accidental static from
 a local variable
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
Cc: Lucas De Marchi <lucas.demarchi@intel.com>
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Wed, 08 Jun 2022, Tvrtko Ursulin <tvrtko.ursulin@linux.intel.com> wrote:
> On 11/05/2022 10:46, Jani Nikula wrote:
>> The arrays are static const, but the pointer shouldn't be static.
>> 
>> Fixes: 3d832f370d16 ("drm/i915/uc: Allow platforms to have GuC but not HuC")
>> Cc: John Harrison <John.C.Harrison@Intel.com>
>> Cc: Lucas De Marchi <lucas.demarchi@intel.com>
>> Cc: Daniele Ceraolo Spurio <daniele.ceraolospurio@intel.com>
>> Signed-off-by: Jani Nikula <jani.nikula@intel.com>
>> ---
>>   drivers/gpu/drm/i915/gt/uc/intel_uc_fw.c | 2 +-
>>   1 file changed, 1 insertion(+), 1 deletion(-)
>> 
>> diff --git a/drivers/gpu/drm/i915/gt/uc/intel_uc_fw.c b/drivers/gpu/drm/i915/gt/uc/intel_uc_fw.c
>> index 9361532726d6..d2c5c9367cc4 100644
>> --- a/drivers/gpu/drm/i915/gt/uc/intel_uc_fw.c
>> +++ b/drivers/gpu/drm/i915/gt/uc/intel_uc_fw.c
>> @@ -156,7 +156,7 @@ __uc_fw_auto_select(struct drm_i915_private *i915, struct intel_uc_fw *uc_fw)
>>   		[INTEL_UC_FW_TYPE_GUC] = { blobs_guc, ARRAY_SIZE(blobs_guc) },
>>   		[INTEL_UC_FW_TYPE_HUC] = { blobs_huc, ARRAY_SIZE(blobs_huc) },
>>   	};
>> -	static const struct uc_fw_platform_requirement *fw_blobs;
>> +	const struct uc_fw_platform_requirement *fw_blobs;
>>   	enum intel_platform p = INTEL_INFO(i915)->platform;
>>   	u32 fw_count;
>>   	u8 rev = INTEL_REVID(i915);
>
> Reviewed-by: Tvrtko Ursulin <tvrtko.ursulin@intel.com>

Thanks, pushed to drm-intel-gt-next.

BR,
Jani.


>
> Domain owners were copied in this case (mailman just dropped it from the 
> mailing list copy?) on this one, but maybe needed extra prodding.
>
> Regards,
>
> Tvrtko

-- 
Jani Nikula, Intel Open Source Graphics Center
