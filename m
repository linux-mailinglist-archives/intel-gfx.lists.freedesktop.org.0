Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id C44364DBDF8
	for <lists+intel-gfx@lfdr.de>; Thu, 17 Mar 2022 06:06:58 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 08E6110EC30;
	Thu, 17 Mar 2022 05:06:56 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga04.intel.com (mga04.intel.com [192.55.52.120])
 by gabe.freedesktop.org (Postfix) with ESMTPS id A862E10EC30
 for <intel-gfx@lists.freedesktop.org>; Thu, 17 Mar 2022 05:06:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1647493614; x=1679029614;
 h=date:from:to:cc:subject:message-id:references:
 mime-version:content-transfer-encoding:in-reply-to;
 bh=tqERPqo0Vc+EGNlXGhZSghnR21REV3bETCBrzPMQWXU=;
 b=K3hdn+jdEncqhAOd35z8JCqq8V5p8fPdWiJskSzmBGbV4AfJrUfp95LP
 kXXgUbe/a4Bqy/7WJkCLba3DYDtJIcZl+EncS2St4NyKvCa+D5jyCd/cT
 /cE21S4KDNA1B5VrFTLKygvY5qJfnfZ5xAsxnP7gD+GvVDVy3zQiLQweZ
 zS0vB4uDO/hxUeya/Ha2SAwQxH+X8o6/jMF2weniEbwgYSyXYLhbLLGZL
 b/l9nwyJPZNsdKMuQoNlPg6VgpzG+ZMUX95YN4jHQTjNx+PZudIOXRpqI
 ZD0M1QN+Vk4V7yNAmM72jUONl8cKD2nqc5IIc+2DXGqL3hQ3Ca0ORzHOS Q==;
X-IronPort-AV: E=McAfee;i="6200,9189,10288"; a="255613701"
X-IronPort-AV: E=Sophos;i="5.90,188,1643702400"; d="scan'208";a="255613701"
Received: from orsmga001.jf.intel.com ([10.7.209.18])
 by fmsmga104.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 16 Mar 2022 22:06:41 -0700
X-IronPort-AV: E=Sophos;i="5.90,188,1643702400"; d="scan'208";a="581173806"
Received: from rgreenle-mobl.amr.corp.intel.com (HELO ldmartin-desk2)
 ([10.255.231.170])
 by orsmga001-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 16 Mar 2022 22:06:40 -0700
Date: Wed, 16 Mar 2022 22:06:38 -0700
From: Lucas De Marchi <lucas.demarchi@intel.com>
To: Siva Mullati <siva.mullati@intel.com>
Message-ID: <20220317050638.n4r6lpuamkm2an2k@ldmartin-desk2>
X-Patchwork-Hint: comment
References: <20220308093805.879262-1-siva.mullati@intel.com>
 <20220308093805.879262-3-siva.mullati@intel.com>
 <20220309013845.4jgwlbe524rgxsee@ldmartin-desk2>
 <d9dc96a6-ebf6-3988-7a40-229ff0169e1c@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=iso-8859-1; format=flowed
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <d9dc96a6-ebf6-3988-7a40-229ff0169e1c@intel.com>
Subject: Re: [Intel-gfx] [PATCH 2/2] drm/i915/guc: Convert ct buffer to
 iosys_map
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
Cc: intel-gfx@lists.freedesktop.org
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Mon, Mar 14, 2022 at 11:23:07AM +0530, Siva Mullati wrote:
>
>On 09/03/22 07:08, Lucas De Marchi wrote:
>> On Tue, Mar 08, 2022 at 03:08:05PM +0530, Mullati Siva wrote:
>>> From: Siva Mullati <siva.mullati@intel.com>
>>>
>>> Convert CT commands and descriptors to use iosys_map rather
>>> than plain pointer and save it in the intel_guc_ct_buffer struct.
>>> This will help with ct_write and ct_read for cmd send and receive
>>> after the initialization by abstracting the IO vs system memory.
>>>
>>> Signed-off-by: Siva Mullati <siva.mullati@intel.com>
>>> ---
>>> drivers/gpu/drm/i915/gt/uc/intel_guc_ct.c | 170 +++++++++++++---------
>>> drivers/gpu/drm/i915/gt/uc/intel_guc_ct.h |   9 +-
>>> 2 files changed, 110 insertions(+), 69 deletions(-)
>>>
>>> diff --git a/drivers/gpu/drm/i915/gt/uc/intel_guc_ct.c b/drivers/gpu/drm/i915/gt/uc/intel_guc_ct.c
>>> index f01325cd1b62..457deca1c25a 100644
>>> --- a/drivers/gpu/drm/i915/gt/uc/intel_guc_ct.c
>>> +++ b/drivers/gpu/drm/i915/gt/uc/intel_guc_ct.c
>>> @@ -44,6 +44,11 @@ static inline struct drm_device *ct_to_drm(struct intel_guc_ct *ct)
>>> #define CT_PROBE_ERROR(_ct, _fmt, ...) \
>>>     i915_probe_error(ct_to_i915(ct), "CT: " _fmt, ##__VA_ARGS__)
>>>
>>> +#define ct_desc_read(desc_map_, field_) \
>>> +    iosys_map_rd_field(desc_map_, 0, struct guc_ct_buffer_desc, field_)
>>
>> one thing I found useful in intel_guc_ads, was to use the first argument
>> as the struct type instead of map. That's because then I enforce the
>> right type to be passed rather than a random iosys_map. See :
>>
>>     #define ads_blob_read(guc_, field_)                                     \
>>         iosys_map_rd_field(&(guc_)->ads_map, 0, struct __guc_ads_blob, field_)
>>
>> First arg is expected to be `struct intel_guc *`. Yes, I didn't do this
>> for info_map_{read,write}, because there were situation in which I had
>> to pass a info from outside (forcefully from system memory). If you
>> don't have such case,  I think it would be better to pass the typed
>> pointer.
>>
>understood, will change it as a "typed pointer".
>>> +#define ct_desc_write(desc_map_, field_, val_) \
>>> +    iosys_map_wr_field(desc_map_, 0, struct guc_ct_buffer_desc, field_, val_)
>>> +
>>> /**
>>>  * DOC: CTB Blob
>>>  *
>>> @@ -113,9 +118,9 @@ void intel_guc_ct_init_early(struct intel_guc_ct *ct)
>>>     init_waitqueue_head(&ct->wq);
>>> }
>>>
>>> -static void guc_ct_buffer_desc_init(struct guc_ct_buffer_desc *desc)
>>> +static void guc_ct_buffer_desc_init(struct iosys_map *desc)
>>
>> if you can apply the comment above, then leave it as
>> struct intel_guc_ct_buffer.
>>
>yes
>>> {
>>> -    memset(desc, 0, sizeof(*desc));
>>> +    iosys_map_memset(desc, 0, 0, sizeof(struct guc_ct_buffer_desc));
>>> }
>>>
>>> static void guc_ct_buffer_reset(struct intel_guc_ct_buffer *ctb)
>>> @@ -128,17 +133,24 @@ static void guc_ct_buffer_reset(struct intel_guc_ct_buffer *ctb)
>>>     space = CIRC_SPACE(ctb->tail, ctb->head, ctb->size) - ctb->resv_space;
>>>     atomic_set(&ctb->space, space);
>>>
>>> -    guc_ct_buffer_desc_init(ctb->desc);
>>> +    guc_ct_buffer_desc_init(&ctb->desc_map);
>>> }
>>>
>>> static void guc_ct_buffer_init(struct intel_guc_ct_buffer *ctb,
>>> -                   struct guc_ct_buffer_desc *desc,
>>> -                   u32 *cmds, u32 size_in_bytes, u32 resv_space)
>>> +                   void *desc, void *cmds, u32 size_in_bytes,
>>> +                   u32 resv_space, bool lmem)
>>
>> bool arguments are really hard to read, because you always have to
>> lookup the function prototype to understand what that is about.
>>
>Tried to avoid bool but could not find a better alternative code path.
>Please suggest, if you have something.

humn... suggestion as as below:

>
>> Here we could turn struct guc_ct_buffer_desc *desc into the map, and let
>> the caller prepare it for iomem or system memory.

In other words, maybe instead of receiving guc_ct_buffer_desc as
parameter, receiving a struct iosys_map *desc_map. That map can be
created by the caller and then you do:

	ctb->desc_map = *desc_map;


Lucas De Marchi
