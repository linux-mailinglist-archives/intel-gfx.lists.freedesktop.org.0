Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 11F9955F036
	for <lists+intel-gfx@lfdr.de>; Tue, 28 Jun 2022 23:11:31 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 70FEE112447;
	Tue, 28 Jun 2022 21:11:29 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from madras.collabora.co.uk (madras.collabora.co.uk
 [IPv6:2a00:1098:0:82:1000:25:2eeb:e5ab])
 by gabe.freedesktop.org (Postfix) with ESMTPS id BB514112472
 for <intel-gfx@lists.freedesktop.org>; Tue, 28 Jun 2022 21:11:27 +0000 (UTC)
Received: from [192.168.178.53] (82-71-8-225.dsl.in-addr.zen.co.uk
 [82.71.8.225])
 (using TLSv1.3 with cipher TLS_AES_128_GCM_SHA256 (128/128 bits)
 key-exchange X25519 server-signature RSA-PSS (4096 bits) server-digest SHA256)
 (No client certificate requested) (Authenticated sender: bbeckett)
 by madras.collabora.co.uk (Postfix) with ESMTPSA id 31555660186E;
 Tue, 28 Jun 2022 22:11:26 +0100 (BST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=collabora.com;
 s=mail; t=1656450686;
 bh=1z0SBA3Q7uBiveGddsHNSDFGrOjlY/ThfVhiNFMpD6E=;
 h=Date:Subject:To:Cc:References:From:In-Reply-To:From;
 b=FW/0EQgPsSGxXOiwFzW34as51HcM3WAL/NUsw4ZBN8MwOLPtbejNEbAM0JcEOCgO6
 ev3O6Cs6gejNzCYwYTS8qI3WMGfc7Bo0fcatkdKz9tGtpflqBrl+56mD4MM8EbUyig
 8qUJfE/IU8epif3icbSmMkxPt1S0WsY7a+X6CGsr2eiV/tKaA5i8hCdjb1UbM5sxUX
 tdMyLTisOD5zFaX1Tj2z3IlXhBlfdzhf1qusFA+7Q1D7GRgl4FCOmbFXVQfIKzxpV9
 AOl9UVvffURMHURGSIE5+cMa/0mcY4Zg91vFWsNrHuSMbezK0Wh89vR5ovxveyi8f+
 /EVB0C50rZwjQ==
Message-ID: <db968b93-6f9c-b3aa-02cd-81e99f64f013@collabora.com>
Date: Tue, 28 Jun 2022 22:11:23 +0100
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.9.1
Content-Language: en-US
To: Matthew Auld <matthew.william.auld@gmail.com>,
 Adrian Larumbe <adrian.larumbe@collabora.com>
References: <20220614011350.122168-1-adrian.larumbe@collabora.com>
 <20220614011350.122168-3-adrian.larumbe@collabora.com>
 <CAM0jSHNvCqeNLO_i0_uVUHGhw_-DQi5Mxtw5nOiogeGU2HSWkg@mail.gmail.com>
From: Robert Beckett <bob.beckett@collabora.com>
In-Reply-To: <CAM0jSHNvCqeNLO_i0_uVUHGhw_-DQi5Mxtw5nOiogeGU2HSWkg@mail.gmail.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit
Subject: Re: [Intel-gfx] [PATCH 2/3] drm/i915/ttm: don't overwrite
 cache_dirty after setting coherency
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
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>



On 14/06/2022 18:55, Matthew Auld wrote:
> On Tue, 14 Jun 2022 at 02:14, Adrian Larumbe
> <adrian.larumbe@collabora.com> wrote:
>>
>> When i915_gem_object_set_cache_level sets the GEM object's cache_dirty to
>> true, in the case of TTM that will sometimes be overwritten when getting
>> the object's pages, more specifically for shmem-placed objects for which
>> its ttm structure has just been populated.
>>
>> This wasn't an issue so far, even though intel_dpt_create was setting the
>> object's cache level to 'none', regardless of the platform and memory
>> placement of the framebuffer. However, commit 2f0ec95ed20c ("drm/i915/ttm:
>> dont trample cache_level overrides during ttm move") makes sure the cache
>> level set by older backends soon to be managed by TTM isn't altered after
>> their TTM bo ttm structure is populated.
>>
>> However this led to the 'obj->cache_dirty = true' set in
>> i915_gem_object_set_cache_level to stick around rather than being reset
>> inside i915_ttm_adjust_gem_after_move after calling ttm_tt_populate in
>> __i915_ttm_get_pages, which eventually led to a warning in DGFX platforms.
>>
>> There also seems to be no need for this statement to be kept in
>> i915_gem_object_set_cache_level, since i915_gem_object_set_cache_coherency
>> is already taking care of it, and also considering whether it's a discrete
>> platform.
>>
>> Remove statement altogether.
>>
>> Signed-off-by: Adrian Larumbe <adrian.larumbe@collabora.com>
>> ---
>>   drivers/gpu/drm/i915/gem/i915_gem_domain.c | 4 +---
>>   1 file changed, 1 insertion(+), 3 deletions(-)
>>
>> diff --git a/drivers/gpu/drm/i915/gem/i915_gem_domain.c b/drivers/gpu/drm/i915/gem/i915_gem_domain.c
>> index 3e5d6057b3ef..b2c9e16bfa55 100644
>> --- a/drivers/gpu/drm/i915/gem/i915_gem_domain.c
>> +++ b/drivers/gpu/drm/i915/gem/i915_gem_domain.c
>> @@ -273,10 +273,8 @@ int i915_gem_object_set_cache_level(struct drm_i915_gem_object *obj,
>>                  return ret;
>>
>>          /* Always invalidate stale cachelines */
>> -       if (obj->cache_level != cache_level) {
>> +       if (obj->cache_level != cache_level)
>>                  i915_gem_object_set_cache_coherency(obj, cache_level);
>> -               obj->cache_dirty = true;
> 
> Maybe ban calling this on dgpu or have it fail silently? At the ioctl
> level this should already be banned.
> 
> Ignoring dgpu, the cache_dirty handling is quite thorny on non-LLC
> platforms. I'm not sure if there are other historical reasons for
> having this here, but one big issue is that we are not allowed to
> freely set cache_dirty = false, unless we are certain that the pages
> underneath have been populated and the potential flush-on-acquire
> completed. See the kernel-doc for @cache_dirty for more details.

given the commit "068b1bd09253 drm/i915: stop setting cache_dirty on 
discrete"
with it's justification of cache_dirty should not be set on discreet as 
it is not needed, I think this patch should change to set

obj->cache_dirty = !IS_DGFX(to_i915(obj->base.dev));

along with the assignment in flush_write_domain()

and should be considered a fix for that patch.

It should keep the asignment for integrated as it's original purpose 
still holds there.



> 
>> -       }
>>
>>          /* The cache-level will be applied when each vma is rebound. */
>>          return i915_gem_object_unbind(obj,
>> --
>> 2.36.1
>>
