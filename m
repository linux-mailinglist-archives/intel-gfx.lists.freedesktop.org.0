Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 02929978753
	for <lists+intel-gfx@lfdr.de>; Fri, 13 Sep 2024 19:58:14 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 74BA910ED63;
	Fri, 13 Sep 2024 17:58:11 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="U+zhdEIl";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.20])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 8D83A10E096;
 Fri, 13 Sep 2024 17:58:09 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1726250290; x=1757786290;
 h=message-id:date:mime-version:subject:to:cc:references:
 from:in-reply-to:content-transfer-encoding;
 bh=H7Yz3dfytNZ1zvBYOm2N1qFKjIgWDm5DFgICqnKD8M4=;
 b=U+zhdEIldYLjVi8wghapJYqQWo8zoRdG/ZKJIvIeMNqor9ggQgMehcte
 4JUFR2wMBIxbdhRkODkeiaLISMz9f8vFw+ONTIGaxoun/PC7aNSmbvpCB
 dJGRshaT980M9qUiqnSLscLZ1fhEhz5Fe+S0Kb1j3zZbalCCNfGISnqEM
 bQU2bpXEcesW14TqJXaRtYwIbkTDXQayx/8LdJCHjfOWBh/neiGnahtr4
 /TSpVaYT+eRwwJbkCGNL3JhSjM4Dfe8Tq9jw8sr49TkJ9jImqVVWJSbAm
 POZAMO4k4+tocJOEgNN6lftkrMeOhixXcWtUHVGBGaBkFmkhrdUVvLi1P A==;
X-CSE-ConnectionGUID: UIuK1v0zQjSxqXG15XJ4Zg==
X-CSE-MsgGUID: acmObzNuTDOiP7E5VlewQg==
X-IronPort-AV: E=McAfee;i="6700,10204,11194"; a="24985848"
X-IronPort-AV: E=Sophos;i="6.10,226,1719903600"; d="scan'208";a="24985848"
Received: from fmviesa004.fm.intel.com ([10.60.135.144])
 by orvoesa112.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 13 Sep 2024 10:58:09 -0700
X-CSE-ConnectionGUID: HBwUtqwOTcuGi17ivmaSmA==
X-CSE-MsgGUID: 9nzbUaPVT3OCR/UhKEjroA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.10,226,1719903600"; d="scan'208";a="72735314"
Received: from johunt-mobl9.ger.corp.intel.com (HELO [10.245.245.187])
 ([10.245.245.187])
 by fmviesa004-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 13 Sep 2024 10:58:07 -0700
Message-ID: <aab1a4a6-0222-47ad-9249-02ab9db2d213@linux.intel.com>
Date: Fri, 13 Sep 2024 19:58:12 +0200
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH 1/2] drm/xe: Fix DSB buffer coherency
To: Matthew Auld <matthew.auld@intel.com>, intel-xe@lists.freedesktop.org
Cc: intel-gfx@lists.freedesktop.org
References: <20240913114754.7956-1-maarten.lankhorst@linux.intel.com>
 <20240913114754.7956-2-maarten.lankhorst@linux.intel.com>
 <41a9a2c5-91c6-4079-b73d-087ebc8d68c5@intel.com>
Content-Language: en-US
From: Maarten Lankhorst <maarten.lankhorst@linux.intel.com>
In-Reply-To: <41a9a2c5-91c6-4079-b73d-087ebc8d68c5@intel.com>
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



Den 2024-09-13 kl. 14:04, skrev Matthew Auld:
> On 13/09/2024 12:47, Maarten Lankhorst wrote:
>> Add the scanout flag to force WC caching, and add the memory barrier
>> where needed.
>>
>> Signed-off-by: Maarten Lankhorst <maarten.lankhorst@linux.intel.com>
>> ---
>>   drivers/gpu/drm/xe/display/xe_dsb_buffer.c | 5 +++--
>>   1 file changed, 3 insertions(+), 2 deletions(-)
>>
>> diff --git a/drivers/gpu/drm/xe/display/xe_dsb_buffer.c b/drivers/gpu/drm/xe/display/xe_dsb_buffer.c
>> index f99d901a3214f..f7949bf5426af 100644
>> --- a/drivers/gpu/drm/xe/display/xe_dsb_buffer.c
>> +++ b/drivers/gpu/drm/xe/display/xe_dsb_buffer.c
>> @@ -48,11 +48,12 @@ bool intel_dsb_buffer_create(struct intel_crtc *crtc, struct intel_dsb_buffer *d
>>       if (!vma)
>>           return false;
>>   +    /* Set scanout flag for WC mapping */
>>       obj = xe_bo_create_pin_map(xe, xe_device_get_root_tile(xe),
>>                      NULL, PAGE_ALIGN(size),
>>                      ttm_bo_type_kernel,
>>                      XE_BO_FLAG_VRAM_IF_DGFX(xe_device_get_root_tile(xe)) |
>> -                   XE_BO_FLAG_GGTT);
>> +                   XE_BO_FLAG_SCANOUT | XE_BO_FLAG_GGTT);
>>       if (IS_ERR(obj)) {
>>           kfree(vma);
>>           return false;
>> @@ -73,5 +74,5 @@ void intel_dsb_buffer_cleanup(struct intel_dsb_buffer *dsb_buf)
>>     void intel_dsb_buffer_flush_map(struct intel_dsb_buffer *dsb_buf)
>>   {
>> -    /* TODO: add xe specific flush_map() for dsb buffer object. */
>> +    xe_device_wmb(dsb_buf->vma->bo->tile->xe);
> 
> Kind of orthogonal, but we could maybe also move the l2 flush here? I assume it's better to flush once at the end.
Eww, I didn't see that one. I totally would have if I saw it, the amount of calls for a single 4 byte write would remove any point of using DSB on BMG otherwise.

I'll send a followup patch. :)
> Reviewed-by: Matthew Auld <matthew.auld@intel.com>
> 
>>   }

