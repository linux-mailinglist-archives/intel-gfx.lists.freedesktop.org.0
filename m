Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 2049358DB62
	for <lists+intel-gfx@lfdr.de>; Tue,  9 Aug 2022 17:52:46 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 899D094FF5;
	Tue,  9 Aug 2022 15:51:56 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from madras.collabora.co.uk (madras.collabora.co.uk
 [IPv6:2a00:1098:0:82:1000:25:2eeb:e5ab])
 by gabe.freedesktop.org (Postfix) with ESMTPS id B810C8A1F4
 for <intel-gfx@lists.freedesktop.org>; Tue,  9 Aug 2022 15:50:31 +0000 (UTC)
Received: from localhost (unknown [IPv6:2a02:8010:65b5:0:bbb0:f8ec:7bc9:dbe4])
 (using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
 key-exchange ECDHE (P-256) server-signature RSA-PSS (4096 bits) server-digest
 SHA256) (No client certificate requested)
 (Authenticated sender: alarumbe)
 by madras.collabora.co.uk (Postfix) with ESMTPSA id A3EC86601C58;
 Tue,  9 Aug 2022 16:50:29 +0100 (BST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=collabora.com;
 s=mail; t=1660060229;
 bh=2DWUr+hIiAyOVCA1/BA7+Vpu0nV3CAKze0aRtxAabLk=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=SijZG5iR9ssfHG0eJ6PpXKWi1e2anwmGxP0bNJZ7QDdAGHr0hRlcJl+iq4EQJjPiW
 bW//R3swjxWDd6TdjcLMnE0y3wFDOdsjpFDDJjhMJdYAwtj+0kd2giUlxVwQrFeGYE
 D286idT9VTIZEQzFSWWGfQ2WQR7lAH72PFhPbSmL5s7F7cd4ODBmIrHPLENsc+CfbM
 ruwgb9Fp7UE8HwjDT1CynFXwEGIovxEDmD3gs4bDqtchIU2meN/leQ16U+sLNRyv5G
 YoJ4IWsi6soSa86UZRaiEtrQrVVyTtGbfAz/JM8MdiGUz9vYXazFAgCe6X1Fj1Ypse
 wNHoR7F/QRSdA==
Date: Tue, 9 Aug 2022 16:50:27 +0100
From: Adrian Larumbe <adrian.larumbe@collabora.com>
To: Jani Nikula <jani.nikula@linux.intel.com>
Message-ID: <20220809155027.zywgux2cc77ilggc@sobremesa>
References: <20220802165155.165576-1-adrian.larumbe@collabora.com>
 <20220802165155.165576-7-adrian.larumbe@collabora.com>
 <87wnbppft3.fsf@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
In-Reply-To: <87wnbppft3.fsf@intel.com>
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

On 03.08.2022 17:22, Jani Nikula wrote:
>On Tue, 02 Aug 2022, Adrian Larumbe <adrian.larumbe@collabora.com> wrote:
>> Introduces a new module parameter, 'use_pool_alloc', which defaults to
>> 'false'. Its goal is to make the driver fall back on TTM for setting up
>> the system memory region, so that object allocation will be done through
>> the TTM subsystem rather than shmem objects.
>>
>> This commit only brings in the new kernel module param, which will be
>> used by successive commits.
>>
>> Signed-off-by: Adrian Larumbe <adrian.larumbe@collabora.com>
>> ---
>>  drivers/gpu/drm/i915/i915_params.c | 6 ++++++
>>  drivers/gpu/drm/i915/i915_params.h | 3 ++-
>>  2 files changed, 8 insertions(+), 1 deletion(-)
>>
>> diff --git a/drivers/gpu/drm/i915/i915_params.c b/drivers/gpu/drm/i915/i915_params.c
>> index 6fc475a5db61..1af11f030ab1 100644
>> --- a/drivers/gpu/drm/i915/i915_params.c
>> +++ b/drivers/gpu/drm/i915/i915_params.c
>> @@ -207,6 +207,12 @@ i915_param_named_unsafe(lmem_size, uint, 0400,
>>  i915_param_named_unsafe(lmem_bar_size, uint, 0400,
>>  			"Set the lmem bar size(in MiB).");
>>  
>> +i915_param_named_unsafe(use_pool_alloc, bool, 0600,
>
>Do you expect to be able to change this runtime? Or the device specific
>debugfs parameter knob?

No, it's a driver load-time setting and doesn't change unless you unload the
driver module and load it back without setting the parameter.

Does that mean I would have to use a different param declaration macro?

>> +	"Force the driver to use TTM's pool allocator API for smem objects. "
>> +	"This will cause TTM to take over BO allocation even in integrated platforms. "
>> +	"(default: false)");
>> +
>> +
>
>Superfluous newline.
>
>>  static __always_inline void _print_param(struct drm_printer *p,
>>  					 const char *name,
>>  					 const char *type,
>> diff --git a/drivers/gpu/drm/i915/i915_params.h b/drivers/gpu/drm/i915/i915_params.h
>> index 2733cb6cfe09..992ee2a4947d 100644
>> --- a/drivers/gpu/drm/i915/i915_params.h
>> +++ b/drivers/gpu/drm/i915/i915_params.h
>> @@ -84,7 +84,8 @@ struct drm_printer;
>>  	param(bool, verbose_state_checks, true, 0) \
>>  	param(bool, nuclear_pageflip, false, 0400) \
>>  	param(bool, enable_dp_mst, true, 0600) \
>> -	param(bool, enable_gvt, false, IS_ENABLED(CONFIG_DRM_I915_GVT) ? 0400 : 0)
>> +	param(bool, enable_gvt, false, IS_ENABLED(CONFIG_DRM_I915_GVT) ? 0400 : 0) \
>> +	param(bool, use_pool_alloc, false, 0600)
>>  
>>  #define MEMBER(T, member, ...) T member;
>>  struct i915_params {
>
>-- 
>Jani Nikula, Intel Open Source Graphics Center

Adrian Larumbe
