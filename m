Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id BAEE970015F
	for <lists+intel-gfx@lfdr.de>; Fri, 12 May 2023 09:23:43 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 6AA5110E0E3;
	Fri, 12 May 2023 07:23:40 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga04.intel.com (mga04.intel.com [192.55.52.120])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 4791810E0E3
 for <intel-gfx@lists.freedesktop.org>; Fri, 12 May 2023 07:23:38 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1683876218; x=1715412218;
 h=from:to:cc:subject:in-reply-to:references:date:
 message-id:mime-version;
 bh=V3irw2QeYmsng8MQdoHSOW0FrQCmSiZgI5BTtVEYN8M=;
 b=Xs4GSK8AY5DvruB/HjfuJLcdqk/+yr7gbImAdMqOp0Lw6DIicD8CdOjW
 7BFBOXoOeE5fWfQ+znaa6fkKtOviAxI1XLcSyivUm3+0nV1quyvBBjawG
 nd56ediLFwdm/HeVDHsJ+gBtUCTacoaT/LJ1jJ/VbmZY1E62SKzBPScaa
 Gqi0wN+Zp44VvW4BYuICRWKiUD9q44qFajSBSHgQCxsyr+peRyMoVLCma
 SWFnLhUmDDtANozErNw8upjl7m2PXPhCB/AOdpj/d98s5zLfX2AaIC+37
 8Usj5Qnc0IEdtTDLh9FbkL0LbWlvzhTQkbRvtZVqZg7hk7jYFNwxtUwdr A==;
X-IronPort-AV: E=McAfee;i="6600,9927,10707"; a="349566851"
X-IronPort-AV: E=Sophos;i="5.99,269,1677571200"; d="scan'208";a="349566851"
Received: from fmsmga006.fm.intel.com ([10.253.24.20])
 by fmsmga104.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 12 May 2023 00:23:37 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10707"; a="946513999"
X-IronPort-AV: E=Sophos;i="5.99,269,1677571200"; d="scan'208";a="946513999"
Received: from skwasnia-mobl.ger.corp.intel.com (HELO localhost)
 ([10.252.39.231])
 by fmsmga006-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 12 May 2023 00:23:35 -0700
From: Jani Nikula <jani.nikula@intel.com>
To: "Das, Nirmoy" <nirmoy.das@linux.intel.com>, intel-gfx@lists.freedesktop.org
In-Reply-To: <97b8773e-f584-8d0f-b6dd-77e6194f5846@linux.intel.com>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
References: <20230504092320.1787627-1-jani.nikula@intel.com>
 <97b8773e-f584-8d0f-b6dd-77e6194f5846@linux.intel.com>
Date: Fri, 12 May 2023 10:23:32 +0300
Message-ID: <87y1luj9mz.fsf@intel.com>
MIME-Version: 1.0
Content-Type: text/plain
Subject: Re: [Intel-gfx] [PATCH v2] drm/i915/ttm: fix i915_ttm_to_gem()
 kernel-doc
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
Cc: rodrigo.vivi@intel.com
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Thu, 04 May 2023, "Das, Nirmoy" <nirmoy.das@linux.intel.com> wrote:
> On 5/4/2023 11:23 AM, Jani Nikula wrote:
>> drivers/gpu/drm/i915/gem/i915_gem_ttm.h:50: warning: Function parameter or member 'bo' not described in 'i915_ttm_to_gem'
>>
>> v2: Fix return value documentation while at it (Rodrigo)
>>
>> Signed-off-by: Jani Nikula <jani.nikula@intel.com>
>
>
> Reviewed-by: Nirmoy Das <nirmoy.das@intel.com>

Thanks, pushed a while back already.

>
>> ---
>>   drivers/gpu/drm/i915/gem/i915_gem_ttm.h | 3 ++-
>>   1 file changed, 2 insertions(+), 1 deletion(-)
>>
>> diff --git a/drivers/gpu/drm/i915/gem/i915_gem_ttm.h b/drivers/gpu/drm/i915/gem/i915_gem_ttm.h
>> index f8f6bed1b297..67347e62e29b 100644
>> --- a/drivers/gpu/drm/i915/gem/i915_gem_ttm.h
>> +++ b/drivers/gpu/drm/i915/gem/i915_gem_ttm.h
>> @@ -42,8 +42,9 @@ static inline bool i915_ttm_is_ghost_object(struct ttm_buffer_object *bo)
>>   /**
>>    * i915_ttm_to_gem - Convert a struct ttm_buffer_object to an embedding
>>    * struct drm_i915_gem_object.
>> + * @bo: Pointer to the ttm buffer object
>>    *
>> - * Return: Pointer to the embedding struct ttm_buffer_object.
>> + * Return: Pointer to the embedding struct drm_i915_gem_object.
>>    */
>>   static inline struct drm_i915_gem_object *
>>   i915_ttm_to_gem(struct ttm_buffer_object *bo)

-- 
Jani Nikula, Intel Open Source Graphics Center
