Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 969C846D0A6
	for <lists+intel-gfx@lfdr.de>; Wed,  8 Dec 2021 11:10:58 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id C1A516F3E2;
	Wed,  8 Dec 2021 10:10:56 +0000 (UTC)
X-Original-To: Intel-GFX@Lists.FreeDesktop.Org
Delivered-To: Intel-GFX@Lists.FreeDesktop.Org
Received: from ste-pvt-msa2.bahnhof.se (ste-pvt-msa2.bahnhof.se
 [213.80.101.71])
 by gabe.freedesktop.org (Postfix) with ESMTPS id EA8646F3E2
 for <Intel-GFX@Lists.FreeDesktop.Org>; Wed,  8 Dec 2021 10:10:54 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by ste-pvt-msa2.bahnhof.se (Postfix) with ESMTP id 85A833F3E7;
 Wed,  8 Dec 2021 11:10:52 +0100 (CET)
X-Virus-Scanned: Debian amavisd-new at bahnhof.se
X-Spam-Flag: NO
X-Spam-Score: -3.464
X-Spam-Level: 
X-Spam-Status: No, score=-3.464 tagged_above=-999 required=6.31
 tests=[BAYES_00=-1.9, DKIM_SIGNED=0.1, DKIM_VALID=-0.1,
 DKIM_VALID_AU=-0.1, DKIM_VALID_EF=-0.1, NICE_REPLY_A=-1.365,
 URIBL_BLOCKED=0.001] autolearn=ham autolearn_force=no
Authentication-Results: ste-ftg-msa2.bahnhof.se (amavisd-new);
 dkim=pass (1024-bit key) header.d=shipmail.org
Received: from ste-pvt-msa2.bahnhof.se ([127.0.0.1])
 by localhost (ste-ftg-msa2.bahnhof.se [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id KdNPl-s2TEkL; Wed,  8 Dec 2021 11:10:51 +0100 (CET)
Received: by ste-pvt-msa2.bahnhof.se (Postfix) with ESMTPA id 12F5E3F2B8;
 Wed,  8 Dec 2021 11:10:49 +0100 (CET)
Authentication-Results: ste-pvt-msa2.bahnhof.se; dkim=pass (1024-bit key;
 unprotected) header.d=shipmail.org header.i=@shipmail.org header.b="FgI9i0dD";
 dkim-atps=neutral
Received: from [192.168.0.209] (h-155-4-205-35.A357.priv.bahnhof.se
 [155.4.205.35])
 by mail1.shipmail.org (Postfix) with ESMTPSA id 98E24362AD5;
 Wed,  8 Dec 2021 11:10:49 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple; d=shipmail.org; s=mail;
 t=1638958249; bh=2RMj4ud1p6jnTdcIku6e8yTz08+EGCy0pFfSP6VcVcI=;
 h=Date:Subject:To:Cc:References:From:In-Reply-To:From;
 b=FgI9i0dD5sMxGkFUyGfrHPskzFefCuXoDnNp4lTQD1istl/2ySUhn/vqEH1+0pDO9
 MQ6HI+KpkJaWWZRpdu+thTGZA7dqXZC6+j74zbEl/ZWtTFMIUZoWxQkuGkn4zoU/jh
 zuhav11SyrRAStlVS6Vw6PIkxf9CGJkac2QKH0F4=
Message-ID: <8486ebdc-05b4-858e-7e00-0d9de1dccdd0@shipmail.org>
Date: Wed, 8 Dec 2021 11:10:49 +0100
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.3.0
Content-Language: en-US
To: Jasmine Newsome <jasmine.newsome@intel.com>,
 Intel-GFX@Lists.FreeDesktop.Org
References: <20211203214931.1635863-1-jasmine.newsome@intel.com>
From: =?UTF-8?Q?Thomas_Hellstr=c3=b6m_=28Intel=29?= <thomas_os@shipmail.org>
In-Reply-To: <20211203214931.1635863-1-jasmine.newsome@intel.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit
Subject: Re: [Intel-gfx] [PATCH] drm/i915/gem: Use local pointer ttm for
 __i915_ttm_move
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
Cc: thomas.hellstrom@intel.com
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

Hi, Jasmine,

On 12/3/21 22:49, Jasmine Newsome wrote:
> To avoid confusion with deferencing possible null pointer bo->ttm,
> replace pointer bo->ttm with local pointer ttm in i915_ttm_move
> as ttm has checks for null before getting passed to __i915_ttm_move

It's OK to use the local variable ttm here because it has previously 
been assigned from bo->ttm.

However, if a static analyzer gets confused by that and the fact that a 
NULL pointer might be passed to __i915_ttm_move, (which will not 
dereference it), then that's a static analyzer false positive.

So the commit message needs to be rewritten saying something like the 
code is getting a bit more readable if the local variable is used since 
it was previously assigned from bo->ttm, that's ok.

Also please add your Signed-off-by: To the patch.

Thanks,

Thomas




> ---
>   drivers/gpu/drm/i915/gem/i915_gem_ttm_move.c | 2 +-
>   1 file changed, 1 insertion(+), 1 deletion(-)
>
> diff --git a/drivers/gpu/drm/i915/gem/i915_gem_ttm_move.c b/drivers/gpu/drm/i915/gem/i915_gem_ttm_move.c
> index 80df9f592407..56b6573b5c93 100644
> --- a/drivers/gpu/drm/i915/gem/i915_gem_ttm_move.c
> +++ b/drivers/gpu/drm/i915/gem/i915_gem_ttm_move.c
> @@ -763,7 +763,7 @@ int i915_ttm_move(struct ttm_buffer_object *bo, bool evict,
>   			return PTR_ERR(dep);
>   		}
>   
> -		migration_fence = __i915_ttm_move(bo, clear, dst_mem, bo->ttm,
> +		migration_fence = __i915_ttm_move(bo, clear, dst_mem, ttm,
>   						  dst_rsgt, true, dep);
>   		dma_fence_put(dep);
>   	}
