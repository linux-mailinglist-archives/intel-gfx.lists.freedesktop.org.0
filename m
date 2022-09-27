Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 389375ECC12
	for <lists+intel-gfx@lfdr.de>; Tue, 27 Sep 2022 20:20:45 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id BCBF210E0AD;
	Tue, 27 Sep 2022 18:20:42 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
 by gabe.freedesktop.org (Postfix) with ESMTPS id A767710E0C1
 for <intel-gfx@lists.freedesktop.org>; Tue, 27 Sep 2022 18:20:38 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1664302838; x=1695838838;
 h=date:from:to:cc:subject:message-id:references:
 mime-version:in-reply-to;
 bh=ggzj/++4vdCjN/drvNA3nLbDQGNaFtNyoWdHVK09Gsg=;
 b=lzLvQkhw5T1Nvi4hS8JIQCJP2+zcxKHGuf6VgDwq9ZRUU6DH9qb5vzB/
 8MLQtg0igAlIP1hQa+2M8CYYsLI8G7Z2p3eJKhJsxwzEjDb2/HzQopMAa
 6uQSdYYyVKSpPpblrZmfhv7/nelzIT/24FVGXcWhvEJVFWt1PgPOj8iYo
 x4J8Lj1Lt4vbGK/Xxlj0G0JxTvjSBVDY7slxKR11NhQiItH2PymqmCgAG
 VbRCP+PAg5IrwhXdEQS+sNANKgh2UNf6dN35CO133IfQPNHTzjKYBxNZE
 DaeF+m+cVJVGQzSSgLmXh86e6+7O6gtUzqR/bjL5mT83pX11+LnS4nhYE A==;
X-IronPort-AV: E=McAfee;i="6500,9779,10483"; a="288546873"
X-IronPort-AV: E=Sophos;i="5.93,350,1654585200"; d="scan'208";a="288546873"
Received: from fmsmga004.fm.intel.com ([10.253.24.48])
 by orsmga101.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 27 Sep 2022 11:20:35 -0700
X-IronPort-AV: E=McAfee;i="6500,9779,10483"; a="690091661"
X-IronPort-AV: E=Sophos;i="5.93,350,1654585200"; d="scan'208";a="690091661"
Received: from nvishwa1-desk.sc.intel.com (HELO nvishwa1-DESK) ([172.25.29.76])
 by fmsmga004-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 27 Sep 2022 11:20:35 -0700
Date: Tue, 27 Sep 2022 11:20:13 -0700
From: Niranjana Vishwanathapura <niranjana.vishwanathapura@intel.com>
To: Jani Nikula <jani.nikula@linux.intel.com>
Message-ID: <20220927182013.GD16345@nvishwa1-DESK>
References: <20220927054016.21474-1-niranjana.vishwanathapura@intel.com>
 <87sfkd1f7l.fsf@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii; format=flowed
Content-Disposition: inline
In-Reply-To: <87sfkd1f7l.fsf@intel.com>
User-Agent: Mutt/1.5.24 (2015-08-30)
Subject: Re: [Intel-gfx] [PATCH] drm/i915: Remove unwanted pointer unpacking
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
Cc: intel-gfx@lists.freedesktop.org, chris@chris-wilson.co.uk
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Tue, Sep 27, 2022 at 09:52:46AM +0300, Jani Nikula wrote:
>On Mon, 26 Sep 2022, Niranjana Vishwanathapura <niranjana.vishwanathapura@intel.com> wrote:
>> In await_fence_array(), unpacking syncobj pointer is not needed.
>> Remove it.
>
>Where are we with the goal of getting rid of all of ptr_pack_bits(),
>ptr_unpack_bits(), ptr_mask_bits() and ptr_unmask_bits()?
>

I am not sure, I just noticed this unwanted code while working on
VM_BIND patch series.

Regards,
Niranjana

>BR,
>Jani.
>
>
>>
>> Signed-off-by: Niranjana Vishwanathapura <niranjana.vishwanathapura@intel.com>
>> ---
>>  drivers/gpu/drm/i915/gem/i915_gem_execbuffer.c | 5 -----
>>  1 file changed, 5 deletions(-)
>>
>> diff --git a/drivers/gpu/drm/i915/gem/i915_gem_execbuffer.c b/drivers/gpu/drm/i915/gem/i915_gem_execbuffer.c
>> index cd75b0ca2555..8f5796cf9c9c 100644
>> --- a/drivers/gpu/drm/i915/gem/i915_gem_execbuffer.c
>> +++ b/drivers/gpu/drm/i915/gem/i915_gem_execbuffer.c
>> @@ -2954,11 +2954,6 @@ await_fence_array(struct i915_execbuffer *eb,
>>  	int err;
>>
>>  	for (n = 0; n < eb->num_fences; n++) {
>> -		struct drm_syncobj *syncobj;
>> -		unsigned int flags;
>> -
>> -		syncobj = ptr_unpack_bits(eb->fences[n].syncobj, &flags, 2);
>> -
>>  		if (!eb->fences[n].dma_fence)
>>  			continue;
>
>-- 
>Jani Nikula, Intel Open Source Graphics Center
