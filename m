Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 9073958DC7C
	for <lists+intel-gfx@lfdr.de>; Tue,  9 Aug 2022 18:52:43 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 707F18D8B5;
	Tue,  9 Aug 2022 16:52:03 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga03.intel.com (mga03.intel.com [134.134.136.65])
 by gabe.freedesktop.org (Postfix) with ESMTPS id A81488F47A
 for <intel-gfx@lists.freedesktop.org>; Tue,  9 Aug 2022 16:51:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1660063866; x=1691599866;
 h=from:to:cc:subject:in-reply-to:references:date:
 message-id:mime-version;
 bh=e7Q5uLO3ao1UeDUNDAfrz6epSd+JItN6LcqS8Tpit8k=;
 b=QErpOv/ocnwK3cXIh61zVX7S/4wuCihaxVCKZrKkJQOw6oGJ56OOPVa3
 UwEDG0Dc7dgXWXD+OQPbWfsyqC8jbeJQsd0BthHygUp06CRCB5FwlBhW0
 dNrGdBlirmr84HbOSdr8kpv3/FwR8K6VXBPY7WRpAeKoSUEtuuCyw0UXS
 XC1pWllBiUYARsQuRac4S6QuvVDgPatWX1X+6WuI49dyrHwy8wtUTeGfo
 PvE0LF/0YdePKOaQxnmrf51x00mCHyogAZGrtYNrV5d6xC20yz6if3N6n
 A+iCix0q3It7HMJh3cUXhifrXmbmvAF095dliRLnNFRrH9kLpa2JLkmQg w==;
X-IronPort-AV: E=McAfee;i="6400,9594,10434"; a="292129236"
X-IronPort-AV: E=Sophos;i="5.93,225,1654585200"; d="scan'208";a="292129236"
Received: from fmsmga008.fm.intel.com ([10.253.24.58])
 by orsmga103.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 09 Aug 2022 09:51:03 -0700
X-IronPort-AV: E=Sophos;i="5.93,225,1654585200"; d="scan'208";a="664510169"
Received: from kerva-mobl2.ger.corp.intel.com (HELO localhost)
 ([10.252.63.110])
 by fmsmga008-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 09 Aug 2022 09:51:00 -0700
From: Jani Nikula <jani.nikula@linux.intel.com>
To: Adrian Larumbe <adrian.larumbe@collabora.com>
In-Reply-To: <20220809155027.zywgux2cc77ilggc@sobremesa>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
References: <20220802165155.165576-1-adrian.larumbe@collabora.com>
 <20220802165155.165576-7-adrian.larumbe@collabora.com>
 <87wnbppft3.fsf@intel.com> <20220809155027.zywgux2cc77ilggc@sobremesa>
Date: Tue, 09 Aug 2022 19:50:57 +0300
Message-ID: <87bkstnyxa.fsf@intel.com>
MIME-Version: 1.0
Content-Type: text/plain
Subject: Re: [Intel-gfx] [PATCH 6/7] drm/i915: Add module param for enabling
 TTM in sysmem region
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
Cc: thomas.hellstrom@linux.intel.com, intel-gfx@lists.freedesktop.org,
 daniel@ffwll.ch
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Tue, 09 Aug 2022, Adrian Larumbe <adrian.larumbe@collabora.com> wrote:
> On 03.08.2022 17:22, Jani Nikula wrote:
>>On Tue, 02 Aug 2022, Adrian Larumbe <adrian.larumbe@collabora.com> wrote:
>>> Introduces a new module parameter, 'use_pool_alloc', which defaults to
>>> 'false'. Its goal is to make the driver fall back on TTM for setting up
>>> the system memory region, so that object allocation will be done through
>>> the TTM subsystem rather than shmem objects.
>>>
>>> This commit only brings in the new kernel module param, which will be
>>> used by successive commits.
>>>
>>> Signed-off-by: Adrian Larumbe <adrian.larumbe@collabora.com>
>>> ---
>>>  drivers/gpu/drm/i915/i915_params.c | 6 ++++++
>>>  drivers/gpu/drm/i915/i915_params.h | 3 ++-
>>>  2 files changed, 8 insertions(+), 1 deletion(-)
>>>
>>> diff --git a/drivers/gpu/drm/i915/i915_params.c b/drivers/gpu/drm/i915/i915_params.c
>>> index 6fc475a5db61..1af11f030ab1 100644
>>> --- a/drivers/gpu/drm/i915/i915_params.c
>>> +++ b/drivers/gpu/drm/i915/i915_params.c
>>> @@ -207,6 +207,12 @@ i915_param_named_unsafe(lmem_size, uint, 0400,
>>>  i915_param_named_unsafe(lmem_bar_size, uint, 0400,
>>>  			"Set the lmem bar size(in MiB).");
>>>  
>>> +i915_param_named_unsafe(use_pool_alloc, bool, 0600,
>>
>>Do you expect to be able to change this runtime? Or the device specific
>>debugfs parameter knob?
>
> No, it's a driver load-time setting and doesn't change unless you unload the
> driver module and load it back without setting the parameter.
>
> Does that mean I would have to use a different param declaration macro?

No, just different mode, 0400 instead of 0600.

>
>>> +	"Force the driver to use TTM's pool allocator API for smem objects. "
>>> +	"This will cause TTM to take over BO allocation even in integrated platforms. "
>>> +	"(default: false)");
>>> +
>>> +
>>
>>Superfluous newline.
>>
>>>  static __always_inline void _print_param(struct drm_printer *p,
>>>  					 const char *name,
>>>  					 const char *type,
>>> diff --git a/drivers/gpu/drm/i915/i915_params.h b/drivers/gpu/drm/i915/i915_params.h
>>> index 2733cb6cfe09..992ee2a4947d 100644
>>> --- a/drivers/gpu/drm/i915/i915_params.h
>>> +++ b/drivers/gpu/drm/i915/i915_params.h
>>> @@ -84,7 +84,8 @@ struct drm_printer;
>>>  	param(bool, verbose_state_checks, true, 0) \
>>>  	param(bool, nuclear_pageflip, false, 0400) \
>>>  	param(bool, enable_dp_mst, true, 0600) \
>>> -	param(bool, enable_gvt, false, IS_ENABLED(CONFIG_DRM_I915_GVT) ? 0400 : 0)
>>> +	param(bool, enable_gvt, false, IS_ENABLED(CONFIG_DRM_I915_GVT) ? 0400 : 0) \
>>> +	param(bool, use_pool_alloc, false, 0600)
>>>  
>>>  #define MEMBER(T, member, ...) T member;
>>>  struct i915_params {
>>
>>-- 
>>Jani Nikula, Intel Open Source Graphics Center
>
> Adrian Larumbe

-- 
Jani Nikula, Intel Open Source Graphics Center
