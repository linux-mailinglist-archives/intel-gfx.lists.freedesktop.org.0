Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id DDEA58FFCE6
	for <lists+intel-gfx@lfdr.de>; Fri,  7 Jun 2024 09:19:18 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 4863D10E2B4;
	Fri,  7 Jun 2024 07:19:17 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="GcIN8Xol";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.16])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 2547110E2B4
 for <intel-gfx@lists.freedesktop.org>; Fri,  7 Jun 2024 07:19:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1717744756; x=1749280756;
 h=from:to:cc:subject:in-reply-to:references:date:
 message-id:mime-version;
 bh=9CJpIBBckIlTeDkgeJ8Y/8gbytPfHLKMmrevrH3P+mM=;
 b=GcIN8XolcTNjORsGRdUHu96tmLte2KD1zsCR4QhshDpJOS2w/CdtmtaI
 zZucsh8QNMrfR7EwHqcZk8V7nHtc4aOy8LlhdpRG5qV2Skl1KZZH0D1FC
 77TEK0EB4+JHYzIdcc6LwTq/yKja0hoO6kFwFcPCneLhOUDYeElJyosDM
 nKJbhZ2BMInwonuBg6XXEwKX7MKPOAhdpmYKHlUzjE8DfSVe9QFcH7eVS
 1Yt6WHim3e6HVI1SSzCuWS5l3aE0LcUwEz1WIatk4LjhIDM10y8hCrjoH
 p2oftvLwLVCkM/jyGS3U7dTTiHQMyVJGUEiKxxuAAzEmcZlFoIjtMk2N9 g==;
X-CSE-ConnectionGUID: MSBzKbZmRkaP4A0TX37NBw==
X-CSE-MsgGUID: hDNsbYGpS3WpbycJAoDh2g==
X-IronPort-AV: E=McAfee;i="6600,9927,11095"; a="14585622"
X-IronPort-AV: E=Sophos;i="6.08,220,1712646000"; d="scan'208";a="14585622"
Received: from orviesa004.jf.intel.com ([10.64.159.144])
 by orvoesa108.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 07 Jun 2024 00:19:15 -0700
X-CSE-ConnectionGUID: b0klMyR9RFiSQNr8hDDfew==
X-CSE-MsgGUID: CICTSBxOTzKViHeyZJyKbg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.08,220,1712646000"; d="scan'208";a="43349663"
Received: from cpetruta-mobl1.ger.corp.intel.com (HELO localhost)
 ([10.245.246.72])
 by orviesa004-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 07 Jun 2024 00:19:14 -0700
From: Jani Nikula <jani.nikula@intel.com>
To: Rodrigo Vivi <rodrigo.vivi@intel.com>
Cc: intel-gfx@lists.freedesktop.org
Subject: Re: [PATCH 2/2] drm/i915/overlay: convert
 intel_overlay_print_error_state() to drm_printer
In-Reply-To: <ZmHHXdQsNN32VWwb@intel.com>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
References: <20240606140705.3072987-1-jani.nikula@intel.com>
 <20240606140705.3072987-2-jani.nikula@intel.com>
 <ZmHHXdQsNN32VWwb@intel.com>
Date: Fri, 07 Jun 2024 10:19:10 +0300
Message-ID: <878qzhmd8x.fsf@intel.com>
MIME-Version: 1.0
Content-Type: text/plain
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

On Thu, 06 Jun 2024, Rodrigo Vivi <rodrigo.vivi@intel.com> wrote:
> On Thu, Jun 06, 2024 at 05:07:05PM +0300, Jani Nikula wrote:
>> Use the regular drm printer, so we can drop the i915_error_printf()
>> usage.
>> 
>> Signed-off-by: Jani Nikula <jani.nikula@intel.com>
>> ---
>>  drivers/gpu/drm/i915/display/intel_overlay.c | 11 +++++------
>>  drivers/gpu/drm/i915/display/intel_overlay.h |  6 +++---
>>  drivers/gpu/drm/i915/i915_gpu_error.c        |  2 +-
>>  3 files changed, 9 insertions(+), 10 deletions(-)
>> 
>> diff --git a/drivers/gpu/drm/i915/display/intel_overlay.c b/drivers/gpu/drm/i915/display/intel_overlay.c
>> index 1c2099ed5514..b97087f8e311 100644
>> --- a/drivers/gpu/drm/i915/display/intel_overlay.c
>> +++ b/drivers/gpu/drm/i915/display/intel_overlay.c
>> @@ -1485,15 +1485,14 @@ intel_overlay_capture_error_state(struct drm_i915_private *dev_priv)
>>  }
>>  
>>  void
>> -intel_overlay_print_error_state(struct drm_i915_error_state_buf *m,
>> +intel_overlay_print_error_state(struct drm_printer *p,
>>  				struct intel_overlay_error_state *error)
>>  {
>> -	i915_error_printf(m, "Overlay, status: 0x%08x, interrupt: 0x%08x\n",
>> -			  error->dovsta, error->isr);
>> -	i915_error_printf(m, "  Register file at 0x%08lx:\n",
>> -			  error->base);
>> +	drm_printf(p, "Overlay, status: 0x%08x, interrupt: 0x%08x\n",
>> +		   error->dovsta, error->isr);
>> +	drm_printf(p, "  Register file at 0x%08lx:\n", error->base);
>>  
>> -#define P(x) i915_error_printf(m, "    " #x ":	0x%08x\n", error->regs.x)
>> +#define P(x) drm_printf(p, "    " #x ": 0x%08x\n", error->regs.x)
>>  	P(OBUF_0Y);
>>  	P(OBUF_1Y);
>>  	P(OBUF_0U);
>
> I always prefer the direct code, then macros like this, but orthogonal to
> this patch:

Can't fix the world in one patch! ;)

> Reviewed-by: Rodrigo Vivi <rodrigo.vivi@intel.com>

Thanks, both pushed to din.

BR,
Jani.


>
>> diff --git a/drivers/gpu/drm/i915/display/intel_overlay.h b/drivers/gpu/drm/i915/display/intel_overlay.h
>> index c3f68fce6f08..f28a09c062d0 100644
>> --- a/drivers/gpu/drm/i915/display/intel_overlay.h
>> +++ b/drivers/gpu/drm/i915/display/intel_overlay.h
>> @@ -8,8 +8,8 @@
>>  
>>  struct drm_device;
>>  struct drm_file;
>> -struct drm_i915_error_state_buf;
>>  struct drm_i915_private;
>> +struct drm_printer;
>>  struct intel_overlay;
>>  struct intel_overlay_error_state;
>>  
>> @@ -24,7 +24,7 @@ int intel_overlay_attrs_ioctl(struct drm_device *dev, void *data,
>>  void intel_overlay_reset(struct drm_i915_private *dev_priv);
>>  struct intel_overlay_error_state *
>>  intel_overlay_capture_error_state(struct drm_i915_private *dev_priv);
>> -void intel_overlay_print_error_state(struct drm_i915_error_state_buf *e,
>> +void intel_overlay_print_error_state(struct drm_printer *p,
>>  				     struct intel_overlay_error_state *error);
>>  #else
>>  static inline void intel_overlay_setup(struct drm_i915_private *dev_priv)
>> @@ -55,7 +55,7 @@ intel_overlay_capture_error_state(struct drm_i915_private *dev_priv)
>>  {
>>  	return NULL;
>>  }
>> -static inline void intel_overlay_print_error_state(struct drm_i915_error_state_buf *e,
>> +static inline void intel_overlay_print_error_state(struct drm_printer *p,
>>  						   struct intel_overlay_error_state *error)
>>  {
>>  }
>> diff --git a/drivers/gpu/drm/i915/i915_gpu_error.c b/drivers/gpu/drm/i915/i915_gpu_error.c
>> index 3fee7ad0ec51..96c6cafd5b9e 100644
>> --- a/drivers/gpu/drm/i915/i915_gpu_error.c
>> +++ b/drivers/gpu/drm/i915/i915_gpu_error.c
>> @@ -905,7 +905,7 @@ static void __err_print_to_sgl(struct drm_i915_error_state_buf *m,
>>  	}
>>  
>>  	if (error->overlay)
>> -		intel_overlay_print_error_state(m, error->overlay);
>> +		intel_overlay_print_error_state(&p, error->overlay);
>>  
>>  	err_print_capabilities(m, error);
>>  	err_print_params(m, &error->params);
>> -- 
>> 2.39.2
>> 

-- 
Jani Nikula, Intel
