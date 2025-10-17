Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 52174BE8FA6
	for <lists+intel-gfx@lfdr.de>; Fri, 17 Oct 2025 15:45:04 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 7F3AC10EC30;
	Fri, 17 Oct 2025 13:45:01 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=fail reason="signature verification failed" (2048-bit key; unprotected) header.d=igalia.com header.i=@igalia.com header.b="CivVvQuM";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from fanzine2.igalia.com (fanzine2.igalia.com [213.97.179.56])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 6A7F210EC30;
 Fri, 17 Oct 2025 13:45:00 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=igalia.com; 
 s=20170329;
 h=Content-Transfer-Encoding:Content-Type:In-Reply-To:From:
 References:Cc:To:Subject:MIME-Version:Date:Message-ID:Sender:Reply-To:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=lcjd8+No4rveh6Q9al6ByXu6XrQxSlVQ3KtON1G7nWA=; b=CivVvQuM7mdRsKwXBRy3fbQbJD
 a9PIkChHG6yyI5PYNPZOXKRjX3kvKWk/1aoSdm4SnZMAPUdwDO6yskWNeiDXBUbTvKyWbCISGt12A
 pOSi53ZurZckI6tEbiW0V0EB6x/Sf2IkouX2x1s/SNaNBMWNowcjgXO3pxgfyYii1RcMB5YdSgLmq
 mxo/5EQJ5YWUxEzyELbHoNbbsR3VmANUtvR60erBef/mq7/FFDTNqY4N4e3kWfXI29FzRjsEwVruc
 3XOjahqi829gNF5/nmKU3DE8NTy5CASPRYsUBVOD8lQv6qcSc6TLq/OvHZor5RWK0US/V9vU8rvHs
 z6/haBVw==;
Received: from [90.242.12.242] (helo=[192.168.0.101])
 by fanzine2.igalia.com with esmtpsa 
 (Cipher TLS1.3:ECDHE_X25519__RSA_PSS_RSAE_SHA256__AES_128_GCM:128) (Exim)
 id 1v9klO-00B4Ds-Gn; Fri, 17 Oct 2025 15:44:58 +0200
Message-ID: <bb5ec076-5399-442b-a905-f908ae401404@igalia.com>
Date: Fri, 17 Oct 2025 14:44:57 +0100
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH i-g-t v2] lib/igt_fb/intel: Use correct MOCS for
 displayable surfaces
To: =?UTF-8?B?VmlsbGUgU3lyasOkbMOk?= <ville.syrjala@linux.intel.com>
Cc: intel-xe@lists.freedesktop.org, intel-gfx@lists.freedesktop.org,
 igt-dev@lists.freedesktop.org
References: <20251003130517.40414-1-tvrtko.ursulin@igalia.com>
 <aPIooUoKzt6ilFsW@intel.com>
Content-Language: en-GB
From: Tvrtko Ursulin <tvrtko.ursulin@igalia.com>
In-Reply-To: <aPIooUoKzt6ilFsW@intel.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
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


On 17/10/2025 12:29, Ville Syrjälä wrote:
> On Fri, Oct 03, 2025 at 02:05:17PM +0100, Tvrtko Ursulin wrote:
>> Using the uncached MOCS for displayable surfaces is not always correct,
>> especially when CCS compression is used with which some platforms require
>> a special uncached entry, otherwise writes get unexpectedly cached.
>>
>> Lets copy the knowledge of what is the correct MOCS for displayable
>> surfaces from Mesa and add some new helpers to get it.
>>
>> Signed-off-by: Tvrtko Ursulin <tvrtko.ursulin@igalia.com>
>> Suggested-by: Ville Syrjälä <ville.syrjala@linux.intel.com>
> 
> The numbers looked all right to me.
> 
> Reviewed-by: Ville Syrjälä <ville.syrjala@linux.intel.com>

Thanks! I've pushed it and will keep an eye on the results.
> There's a bunch of other MOCS stuff under tests/ and I'm not sure
> the chosen numbers there make complete sense. Someone might want
> to have a good look at those at some point. A few examples:
> 
> - kms_ccs uses UC MOCS for some flat CCS stuff even though it
>    needs to deal with display coherency, but I'm not sure if there's
>    any significant difference between the UC vs. displayable MOCS
>    entry on flat CCS platforms
> 
> - gem_ccs uses UC even though the data is only accessed by the CPU,
>    but then again I'm not sure what the deal is these days with the
>    whole LLC/L4 vs. L3 vs. snooping stuff on new platforms

I'll have a brief look in case I spot something obvious. But as flat ccs 
is something I haven't worked with so far, likewise the new platforms, 
it may not be a very effective look.

Regards,

Tvrtko
>> ---
>> v2:
>>   * Renamed external_index to displayable_index. (Ville)
>> ---
>>   lib/igt_fb.c       |  2 +-
>>   lib/intel_bufops.c |  2 ++
>>   lib/intel_mocs.c   | 21 +++++++++++++++++++--
>>   lib/intel_mocs.h   |  2 ++
>>   4 files changed, 24 insertions(+), 3 deletions(-)
>>
>> diff --git a/lib/igt_fb.c b/lib/igt_fb.c
>> index 03ede3a6fa20..b5a16f9cbe90 100644
>> --- a/lib/igt_fb.c
>> +++ b/lib/igt_fb.c
>> @@ -2712,7 +2712,7 @@ igt_fb_create_intel_buf(int fd, struct buf_ops *bops,
>>   				    fb->strides[0],
>>   				    region,
>>   				    intel_get_pat_idx_uc(fd),
>> -				    DEFAULT_MOCS_INDEX);
>> +				    DISPLAYABLE_MOCS_INDEX);
>>   	intel_buf_set_name(buf, name);
>>   
>>   	/* only really needed for proper CCS handling */
>> diff --git a/lib/intel_bufops.c b/lib/intel_bufops.c
>> index 475b0d1f7b10..1196069a500f 100644
>> --- a/lib/intel_bufops.c
>> +++ b/lib/intel_bufops.c
>> @@ -1008,6 +1008,8 @@ static void __intel_buf_init(struct buf_ops *bops,
>>   	buf->pat_index = pat_index;
>>   	if (mocs_index == DEFAULT_MOCS_INDEX)
>>   		mocs_index = intel_get_uc_mocs_index(bops->fd);
>> +	else if (mocs_index == DISPLAYABLE_MOCS_INDEX)
>> +		mocs_index = intel_get_displayable_mocs_index(bops->fd);
>>   	buf->mocs_index = mocs_index;
>>   	IGT_INIT_LIST_HEAD(&buf->link);
>>   
>> diff --git a/lib/intel_mocs.c b/lib/intel_mocs.c
>> index e0c33c31c088..9809e32113eb 100644
>> --- a/lib/intel_mocs.c
>> +++ b/lib/intel_mocs.c
>> @@ -9,12 +9,14 @@
>>   struct drm_intel_mocs_index {
>>   	uint8_t uc_index;
>>   	uint8_t wb_index;
>> +	uint8_t displayable_index;
>>   	uint8_t defer_to_pat_index;
>>   };
>>   
>>   static void get_mocs_index(int fd, struct drm_intel_mocs_index *mocs)
>>   {
>>   	uint16_t devid = intel_get_drm_devid(fd);
>> +	unsigned int ip_ver = intel_graphics_ver(devid);
>>   
>>   	/*
>>   	 * Gen >= 12 onwards don't have a setting for PTE,
>> @@ -23,25 +25,31 @@ static void get_mocs_index(int fd, struct drm_intel_mocs_index *mocs)
>>   	 * This helper function is providing current UC as well
>>   	 * as WB MOCS index based on platform.
>>   	 */
>> -	if (intel_graphics_ver(devid) >= IP_VER(20, 0)) {
>> +	if (ip_ver >= IP_VER(20, 0)) {
>>   		mocs->uc_index = 3;
>>   		mocs->wb_index = 4;
>> +		mocs->displayable_index = 1;
>>   		mocs->defer_to_pat_index = 0;
>>   	} else if (IS_METEORLAKE(devid)) {
>>   		mocs->uc_index = 5;
>>   		mocs->wb_index = 1;
>> +		mocs->displayable_index = 14;
>>   	} else if (IS_DG2(devid)) {
>>   		mocs->uc_index = 1;
>>   		mocs->wb_index = 3;
>> +		mocs->displayable_index = 3;
>>   	} else if (IS_DG1(devid)) {
>>   		mocs->uc_index = 1;
>>   		mocs->wb_index = 5;
>> -	} else if (IS_GEN12(devid)) {
>> +		mocs->displayable_index = 5;
>> +	} else if (ip_ver >= IP_VER(12, 0)) {
>>   		mocs->uc_index = 3;
>>   		mocs->wb_index = 2;
>> +		mocs->displayable_index = 61;
>>   	} else {
>>   		mocs->uc_index = I915_MOCS_PTE;
>>   		mocs->wb_index = I915_MOCS_CACHED;
>> +		mocs->displayable_index = I915_MOCS_PTE;
>>   	}
>>   }
>>   
>> @@ -63,6 +71,15 @@ uint8_t intel_get_uc_mocs_index(int fd)
>>   	return mocs.uc_index;
>>   }
>>   
>> +uint8_t intel_get_displayable_mocs_index(int fd)
>> +{
>> +	struct drm_intel_mocs_index mocs;
>> +
>> +	get_mocs_index(fd, &mocs);
>> +
>> +	return mocs.displayable_index;
>> +}
>> +
>>   uint8_t intel_get_defer_to_pat_mocs_index(int fd)
>>   {
>>   	struct drm_intel_mocs_index mocs;
>> diff --git a/lib/intel_mocs.h b/lib/intel_mocs.h
>> index 8597286d259d..394bb41be042 100644
>> --- a/lib/intel_mocs.h
>> +++ b/lib/intel_mocs.h
>> @@ -9,9 +9,11 @@
>>   #include <stdint.h>
>>   
>>   #define DEFAULT_MOCS_INDEX ((uint8_t)-1)
>> +#define DISPLAYABLE_MOCS_INDEX ((uint8_t)-2)
>>   
>>   uint8_t intel_get_wb_mocs_index(int fd);
>>   uint8_t intel_get_uc_mocs_index(int fd);
>> +uint8_t intel_get_displayable_mocs_index(int fd);
>>   uint8_t intel_get_defer_to_pat_mocs_index(int fd);
>>   
>>   #endif /* _INTEL_MOCS_H */
>> -- 
>> 2.48.0
> 

