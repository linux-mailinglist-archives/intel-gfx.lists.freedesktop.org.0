Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 677BE5F9AA6
	for <lists+intel-gfx@lfdr.de>; Mon, 10 Oct 2022 10:07:55 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 65BCE10E69A;
	Mon, 10 Oct 2022 08:07:52 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga14.intel.com (mga14.intel.com [192.55.52.115])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 28C5A10E45E;
 Mon, 10 Oct 2022 08:07:49 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1665389269; x=1696925269;
 h=message-id:date:mime-version:subject:to:cc:references:
 from:in-reply-to:content-transfer-encoding;
 bh=frgAyct9AHtbbmWOIu5eUWwwqKJA8S6suGXKhPXwyEE=;
 b=EUhtlla2oN8mTWKVSSj33v1IPqFnOTKoevbvg1xcKJ1+RlKBZCAztji8
 hOF9k/RWf1DIMP/J9H7dzpobCxN/fKG6+748cu/1+1sGiwa6910C09jY8
 VXg5ONU5eMhd6LVAxfjrDV6u33Xclp6JLRyCo+MqVWQQxkxNkKO3+Qh3w
 VowdIvgX9CW/r1RjcShfsGQDmucSrLKO4acB6Wa01hsBv/hhXGZTxmKv/
 5D2ls/9ebc7NOSTWPgaspvQqM/P38Cg3f+i+jwRLx5UciqkHhIk2PXE2a
 H9J6sW/dT/yskBF+lwl0NsV0Q4VdThbdvkmsQBZ28yp+YqAv65sDvuMZk g==;
X-IronPort-AV: E=McAfee;i="6500,9779,10495"; a="304156821"
X-IronPort-AV: E=Sophos;i="5.95,173,1661842800"; d="scan'208";a="304156821"
Received: from fmsmga006.fm.intel.com ([10.253.24.20])
 by fmsmga103.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 10 Oct 2022 01:07:48 -0700
X-IronPort-AV: E=McAfee;i="6500,9779,10495"; a="871019949"
X-IronPort-AV: E=Sophos;i="5.95,173,1661842800"; d="scan'208";a="871019949"
Received: from liammurp-mobl1.ger.corp.intel.com (HELO [10.213.197.233])
 ([10.213.197.233])
 by fmsmga006-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 10 Oct 2022 01:07:46 -0700
Message-ID: <732c7a7d-2851-4ac0-cd7a-6f9a2f3df50a@linux.intel.com>
Date: Mon, 10 Oct 2022 09:07:41 +0100
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.3.2
To: Colin Ian King <colin.i.king@gmail.com>,
 Jani Nikula <jani.nikula@linux.intel.com>,
 Joonas Lahtinen <joonas.lahtinen@linux.intel.com>,
 Rodrigo Vivi <rodrigo.vivi@intel.com>, David Airlie <airlied@gmail.com>,
 Daniel Vetter <daniel@ffwll.ch>, intel-gfx@lists.freedesktop.org,
 dri-devel@lists.freedesktop.org
References: <20221007194745.2749277-1-colin.i.king@gmail.com>
Content-Language: en-US
From: Tvrtko Ursulin <tvrtko.ursulin@linux.intel.com>
Organization: Intel Corporation UK Plc
In-Reply-To: <20221007194745.2749277-1-colin.i.king@gmail.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit
Subject: Re: [Intel-gfx] [PATCH] drm/i915/gem: remove redundant assignments
 to variable ret
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
Cc: kernel-janitors@vger.kernel.org, linux-kernel@vger.kernel.org
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>


On 07/10/2022 20:47, Colin Ian King wrote:
> The variable ret is being assigned with a value that is never read
> both before and after a while-loop. The variable is being re-assigned
> inside the while-loop and afterwards on the call to the function
> i915_gem_object_lock_interruptible. Remove the redundants assignments.
> 
> Cleans up clang scan-build warnings:
> 
> warning: Although the value stored to 'ret' is used in the
> enclosing expression, the value is never actually read
> from 'ret' [deadcode.DeadStores]
> 
> warning: Value stored to 'ret' is never read [deadcode.DeadStores]
> 
> Signed-off-by: Colin Ian King <colin.i.king@gmail.com>
> ---
>   drivers/gpu/drm/i915/gem/i915_gem_userptr.c | 3 +--
>   1 file changed, 1 insertion(+), 2 deletions(-)
> 
> diff --git a/drivers/gpu/drm/i915/gem/i915_gem_userptr.c b/drivers/gpu/drm/i915/gem/i915_gem_userptr.c
> index d4398948f016..b7e24476a0fd 100644
> --- a/drivers/gpu/drm/i915/gem/i915_gem_userptr.c
> +++ b/drivers/gpu/drm/i915/gem/i915_gem_userptr.c
> @@ -292,7 +292,7 @@ int i915_gem_object_userptr_submit_init(struct drm_i915_gem_object *obj)
>   	if (!i915_gem_object_is_readonly(obj))
>   		gup_flags |= FOLL_WRITE;
>   
> -	pinned = ret = 0;
> +	pinned = 0;
>   	while (pinned < num_pages) {
>   		ret = pin_user_pages_fast(obj->userptr.ptr + pinned * PAGE_SIZE,
>   					  num_pages - pinned, gup_flags,
> @@ -302,7 +302,6 @@ int i915_gem_object_userptr_submit_init(struct drm_i915_gem_object *obj)
>   
>   		pinned += ret;
>   	}
> -	ret = 0;
>   
>   	ret = i915_gem_object_lock_interruptible(obj, NULL);
>   	if (ret)

Reviewed-by: Tvrtko Ursulin <tvrtko.ursulin@intel.com>

Thanks for the cleanup, will merge.

Regards,

Tvrtko
