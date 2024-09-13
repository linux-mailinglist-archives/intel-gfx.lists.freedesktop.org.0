Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 050D097880E
	for <lists+intel-gfx@lfdr.de>; Fri, 13 Sep 2024 20:43:59 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id B57E910ED6F;
	Fri, 13 Sep 2024 18:43:57 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="M0HmyQiN";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.21])
 by gabe.freedesktop.org (Postfix) with ESMTPS id ACC2C10ED75;
 Fri, 13 Sep 2024 18:43:56 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1726253037; x=1757789037;
 h=message-id:date:mime-version:subject:to:cc:references:
 from:in-reply-to:content-transfer-encoding;
 bh=6aY6Y5Lw+g00/+wdUciKaN5K8FrRHnLN7FCWwccNJss=;
 b=M0HmyQiNf/7zYo7kXbm8mTbdXTdENpWA/7J8M3klfZA77snuSHSUE4Fu
 j3UX1lIm02AzE8ktaPYmOxsA1neO1svgDf7SBMy0mHLdn3FOUShS5+oQp
 u4LUS1Z0NsHkqBjdUKiNh+yljZ/pp9aOyCNFJlb5g3xwzpdvExBN++qdb
 vCTdgm6rNmx+FE7ASq74nponsDJ+AlL5I8MDdMCzgYDBvA7Nuu2PMchiJ
 LYeSnCYXykYJu7JXyexTKEJS/EH72QbRWWVWRm0CJoN8H6qS9m7AyBR4a
 n+aTTVGuCeL7QmY0ELcniCHmwjB1uFyN+EOM3vBau02oQEITTsifWtgE3 Q==;
X-CSE-ConnectionGUID: eZ8xHIY6QdOaI0oBY+qtsQ==
X-CSE-MsgGUID: gTLYxyweSAmxCXLbekXd1w==
X-IronPort-AV: E=McAfee;i="6700,10204,11194"; a="25101898"
X-IronPort-AV: E=Sophos;i="6.10,226,1719903600"; d="scan'208";a="25101898"
Received: from orviesa008.jf.intel.com ([10.64.159.148])
 by orvoesa113.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 13 Sep 2024 11:43:56 -0700
X-CSE-ConnectionGUID: UIfzSvizSaOB7rS5xJyTcw==
X-CSE-MsgGUID: CRmxfzHpSx+CftlA0AviKw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.10,226,1719903600"; d="scan'208";a="68931103"
Received: from johunt-mobl9.ger.corp.intel.com (HELO [10.245.245.187])
 ([10.245.245.187])
 by orviesa008-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 13 Sep 2024 11:43:55 -0700
Message-ID: <57f44ae3-9cd9-4bd9-ba5d-67e8ae0d7f09@linux.intel.com>
Date: Fri, 13 Sep 2024 20:44:01 +0200
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH 1/2] drm/xe: Fix DSB buffer coherency
To: =?UTF-8?B?VmlsbGUgU3lyasOkbMOk?= <ville.syrjala@linux.intel.com>
Cc: intel-xe@lists.freedesktop.org, intel-gfx@lists.freedesktop.org
References: <20240913114754.7956-1-maarten.lankhorst@linux.intel.com>
 <20240913114754.7956-2-maarten.lankhorst@linux.intel.com>
 <ZuRykc_etbea6063@intel.com>
Content-Language: en-US
From: Maarten Lankhorst <maarten.lankhorst@linux.intel.com>
In-Reply-To: <ZuRykc_etbea6063@intel.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
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



Den 2024-09-13 kl. 19:12, skrev Ville Syrjälä:
> On Fri, Sep 13, 2024 at 01:47:53PM +0200, Maarten Lankhorst wrote:
>> Add the scanout flag to force WC caching, and add the memory barrier
>> where needed.
>>
>> Signed-off-by: Maarten Lankhorst <maarten.lankhorst@linux.intel.com>
>> ---
>>  drivers/gpu/drm/xe/display/xe_dsb_buffer.c | 5 +++--
>>  1 file changed, 3 insertions(+), 2 deletions(-)
>>
>> diff --git a/drivers/gpu/drm/xe/display/xe_dsb_buffer.c b/drivers/gpu/drm/xe/display/xe_dsb_buffer.c
>> index f99d901a3214f..f7949bf5426af 100644
>> --- a/drivers/gpu/drm/xe/display/xe_dsb_buffer.c
>> +++ b/drivers/gpu/drm/xe/display/xe_dsb_buffer.c
>> @@ -48,11 +48,12 @@ bool intel_dsb_buffer_create(struct intel_crtc *crtc, struct intel_dsb_buffer *d
>>  	if (!vma)
>>  		return false;
>>  
>> +	/* Set scanout flag for WC mapping */
>>  	obj = xe_bo_create_pin_map(xe, xe_device_get_root_tile(xe),
>>  				   NULL, PAGE_ALIGN(size),
>>  				   ttm_bo_type_kernel,
>>  				   XE_BO_FLAG_VRAM_IF_DGFX(xe_device_get_root_tile(xe)) |
>> -				   XE_BO_FLAG_GGTT);
>> +				   XE_BO_FLAG_SCANOUT | XE_BO_FLAG_GGTT);
>>  	if (IS_ERR(obj)) {
>>  		kfree(vma);
>>  		return false;
>> @@ -73,5 +74,5 @@ void intel_dsb_buffer_cleanup(struct intel_dsb_buffer *dsb_buf)
>>  
>>  void intel_dsb_buffer_flush_map(struct intel_dsb_buffer *dsb_buf)
>>  {
>> -	/* TODO: add xe specific flush_map() for dsb buffer object. */
>> +	xe_device_wmb(dsb_buf->vma->bo->tile->xe);
> 
> MMIO itself should be sufficient to flush the WC buffer.
> But I guess no real harm in hammering it a bit harder.

You would say that, I still saw a spurious DSB timeout without the flush. :)

"Memory mapped I/O usually takes place through memory locations that are part of
a window in the CPU's memory space that has different properties assigned than
the usual RAM directed window.

Amongst these properties is usually the fact that such accesses bypass the
caching entirely and go directly to the device buses.  This means MMIO accesses
may, in effect, overtake accesses to cached memory that were emitted earlier."

Since the memory is write combined, the memory barrier itself is sufficient
and no further invalidation is required.

Just the workaround should be fine. The l2 flush should be moved after the mb as well.
I'll do that in a followup patch.

>>  }
>> -- 
>> 2.45.2
> 

