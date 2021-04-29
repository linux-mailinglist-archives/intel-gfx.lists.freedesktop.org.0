Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id DA45336ECDC
	for <lists+intel-gfx@lfdr.de>; Thu, 29 Apr 2021 16:58:41 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 1C8106EEBD;
	Thu, 29 Apr 2021 14:58:40 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 1DB936EEBD
 for <intel-gfx@lists.freedesktop.org>; Thu, 29 Apr 2021 14:58:38 +0000 (UTC)
IronPort-SDR: c4Zyzfy6mYG+KiISnUSHhn10szPsHHc9A5s426Cef92/l5hGAOAzCy0AjwaLV2RdDWGOW2KksX
 40RM36dyXfgA==
X-IronPort-AV: E=McAfee;i="6200,9189,9969"; a="197121523"
X-IronPort-AV: E=Sophos;i="5.82,259,1613462400"; d="scan'208";a="197121523"
Received: from orsmga001.jf.intel.com ([10.7.209.18])
 by orsmga102.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 29 Apr 2021 07:58:37 -0700
IronPort-SDR: zlrP0S8wZOA3HAYgoe8VTwCBvhbjKVB32pMqt4d+FIryf0KViUEpoTzIiMLx2djCqPdIoNvP3s
 +vVWrwnw+nhw==
X-IronPort-AV: E=Sophos;i="5.82,259,1613462400"; d="scan'208";a="466377029"
Received: from baumgarp-mobl.ger.corp.intel.com (HELO [10.252.52.18])
 ([10.252.52.18])
 by orsmga001-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 29 Apr 2021 07:58:36 -0700
To: Matthew Auld <matthew.william.auld@gmail.com>
References: <20210429101036.1086461-1-maarten.lankhorst@linux.intel.com>
 <20210429101036.1086461-4-maarten.lankhorst@linux.intel.com>
 <CAM0jSHOkzkt68w60x8WyqHTyU+456eSt=R=6jnM8gDHUk0=MRg@mail.gmail.com>
From: Maarten Lankhorst <maarten.lankhorst@linux.intel.com>
Message-ID: <254ce000-719f-9e9a-0e4d-dc04db268ff3@linux.intel.com>
Date: Thu, 29 Apr 2021 16:58:34 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
 Thunderbird/78.9.0
MIME-Version: 1.0
In-Reply-To: <CAM0jSHOkzkt68w60x8WyqHTyU+456eSt=R=6jnM8gDHUk0=MRg@mail.gmail.com>
Content-Language: en-US
Subject: Re: [Intel-gfx] [PATCH 3/4] drm/i915: Pass ww ctx to pin_map, v2.
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
Cc: Intel Graphics Development <intel-gfx@lists.freedesktop.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

Op 29-04-2021 om 16:55 schreef Matthew Auld:
> On Thu, 29 Apr 2021 at 11:10, Maarten Lankhorst
> <maarten.lankhorst@linux.intel.com> wrote:
>> This will allow us to explicitly pass the ww to pin_pages,
>> when it starts taking it.
>>
>> This allows us to finally kill off the explicit passing of ww
>> by retrieving it from the obj.
>>
>> Changes since v1:
>> - Rename 'ret' to ptr, fix error handling of return ptr.
>>
>> Signed-off-by: Maarten Lankhorst <maarten.lankhorst@linux.intel.com>
> <snip>
>
>> --- a/drivers/gpu/drm/i915/gt/intel_gtt.c
>> +++ b/drivers/gpu/drm/i915/gt/intel_gtt.c
>> @@ -65,7 +65,7 @@ int map_pt_dma_locked(struct i915_address_space *vm, struct drm_i915_gem_object
>>         void *vaddr;
>>
>>         type = i915_coherent_map_type(vm->i915, obj, true);
>> -       vaddr = i915_gem_object_pin_map(obj, type);
>> +       vaddr = i915_gem_object_pin_map(obj, NULL, type);
> Don't we need to pass the ww here? For all our page-tables this is
> both our allocate and map for the backing page(lmem or smem), so at
> least for the locked variant here would it not make sense to pass the
> ww from the vma_pin() etc, in case we need to evict stuff?


Actually yeah, seems to be called from i915_vma_pin_ww, so should pass ww along for sure.. I'll respin.

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
