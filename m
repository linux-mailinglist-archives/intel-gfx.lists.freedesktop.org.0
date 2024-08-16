Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 14AC69543F1
	for <lists+intel-gfx@lfdr.de>; Fri, 16 Aug 2024 10:22:26 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 1E91210E17F;
	Fri, 16 Aug 2024 08:22:24 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="EWxb3F/4";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.19])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 98F6710E5D9;
 Fri, 16 Aug 2024 08:22:20 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1723796540; x=1755332540;
 h=from:to:cc:subject:in-reply-to:references:date:
 message-id:mime-version;
 bh=R1uJ1q78HyphB7ZmhfBsU+ZXh5bxb4k6WdRnCE49L54=;
 b=EWxb3F/4PUi6onM5x31Za9ee0x0/q/e1V1oWGFQTiysWaOI6Ddnpmu2X
 Ig6hLyqeXoCVRDA79JpM+ed3wscF0h3EM3x+kSPT2LSjLIX/Q4+Tal6UV
 KdiS/9jBmQXK/IuvkQ6bZhhs49tRNvC6zjL4aY80zmZ8kwErr/ejaOUE4
 EslLt/m3+nH9g4iJqTDXeLyNg8jROuaMRRY3f7sYDQw6uKbIbBtLFlPqT
 GVUa/RtZsbTGN9yEJU5J3ICl1N0CYqKJenWsQeziCf1P0EZ2UkQuZnJBm
 SZHOaBGYys/4xXjXbU8EYv2OY1TG03eDTi2KKXVRxelYqBvHIMVebWlJH w==;
X-CSE-ConnectionGUID: lTO9Z0SfRLuiDGb91EaT6Q==
X-CSE-MsgGUID: 7C3GIfq7SOaz/JJpGI6tDw==
X-IronPort-AV: E=McAfee;i="6700,10204,11165"; a="21722062"
X-IronPort-AV: E=Sophos;i="6.10,151,1719903600"; d="scan'208";a="21722062"
Received: from fmviesa001.fm.intel.com ([10.60.135.141])
 by fmvoesa113.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 16 Aug 2024 01:22:20 -0700
X-CSE-ConnectionGUID: p4Fr2dTFRISHthXdEkVJNA==
X-CSE-MsgGUID: Y5vIsA8aQKSMDkC7klnf/A==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.10,151,1719903600"; d="scan'208";a="90379234"
Received: from cpetruta-mobl1.ger.corp.intel.com (HELO localhost)
 ([10.245.246.214])
 by smtpauth.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 16 Aug 2024 01:22:19 -0700
From: Jani Nikula <jani.nikula@intel.com>
To: Rodrigo Vivi <rodrigo.vivi@intel.com>
Cc: intel-gfx@lists.freedesktop.org, intel-xe@lists.freedesktop.org
Subject: Re: [PATCH 1/7] drm/i915/display: support struct intel_atomic_state
 in to_intel_display()
In-Reply-To: <Zr5Q_jEQbpwUwGSk@intel.com>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
References: <20240813164123.2674462-1-jani.nikula@intel.com>
 <Zr5Q_jEQbpwUwGSk@intel.com>
Date: Fri, 16 Aug 2024 11:22:13 +0300
Message-ID: <87r0ao7u8a.fsf@intel.com>
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

On Thu, 15 Aug 2024, Rodrigo Vivi <rodrigo.vivi@intel.com> wrote:
> On Tue, Aug 13, 2024 at 07:41:17PM +0300, Jani Nikula wrote:
>> Add support for converting struct intel_atomic_state pointers to struct
>> intel_display pointers.
>> 
>> Signed-off-by: Jani Nikula <jani.nikula@intel.com>
>
> Reviewed-by: Rodrigo Vivi <rodrigo.vivi@intel.com>

Thanks for the reviews, pushed to din.

BR,
Jani.

>
>> ---
>>  drivers/gpu/drm/i915/display/intel_display_types.h | 3 +++
>>  1 file changed, 3 insertions(+)
>> 
>> diff --git a/drivers/gpu/drm/i915/display/intel_display_types.h b/drivers/gpu/drm/i915/display/intel_display_types.h
>> index ea6548ceab2f..bd290536a1b7 100644
>> --- a/drivers/gpu/drm/i915/display/intel_display_types.h
>> +++ b/drivers/gpu/drm/i915/display/intel_display_types.h
>> @@ -2206,6 +2206,8 @@ to_intel_frontbuffer(struct drm_framebuffer *fb)
>>   */
>>  #define __drm_device_to_intel_display(p) \
>>  	(&to_i915(p)->display)
>> +#define __intel_atomic_state_to_intel_display(p)	\
>> +	__drm_device_to_intel_display((p)->base.dev)
>>  #define __intel_connector_to_intel_display(p)		\
>>  	__drm_device_to_intel_display((p)->base.dev)
>>  #define __intel_crtc_to_intel_display(p)		\
>> @@ -2229,6 +2231,7 @@ to_intel_frontbuffer(struct drm_framebuffer *fb)
>>  #define to_intel_display(p)				\
>>  	_Generic(*p,					\
>>  		 __assoc(drm_device, p),		\
>> +		 __assoc(intel_atomic_state, p),	\
>>  		 __assoc(intel_connector, p),		\
>>  		 __assoc(intel_crtc, p),		\
>>  		 __assoc(intel_crtc_state, p),		\
>> -- 
>> 2.39.2
>> 

-- 
Jani Nikula, Intel
