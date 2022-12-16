Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 75D1564EE0F
	for <lists+intel-gfx@lfdr.de>; Fri, 16 Dec 2022 16:44:44 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 930B810E5DD;
	Fri, 16 Dec 2022 15:44:05 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga04.intel.com (mga04.intel.com [192.55.52.120])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 028228922E
 for <intel-gfx@lists.freedesktop.org>; Fri, 16 Dec 2022 15:44:00 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1671205441; x=1702741441;
 h=message-id:date:mime-version:subject:to:cc:references:
 from:in-reply-to:content-transfer-encoding;
 bh=pv85BKf3cc0svsPfDVO6rEwsIcfOH7kR6Kv+orPdkt4=;
 b=d1CCTaUophyeWMbb/KlELb1IALfNuZmeYCstKwQ8orz/3Kw9p0GYFlah
 pU03lTZBhywzIRqfEjrFhsBfric6RJMrakE/DJWSimAXk9f7dscvTRB0i
 xce8KXWkekitp64p63hep3/ltGavlj9haoF/xpGLRMKKNZ7c19hl2o4EZ
 O9WLj+Ac5tXBi+QmROg8Y+EB3WJF/GHMdv9hIzNubvrPcgY6cwSJ26fLm
 /an/FX21+1WTgaoTwpP+ggFO9o8S6wNNWw9f3BJp7AArfIQ1WazL+mU24
 wF5OfJ5yqqq88cEz7jeRQPF8WKyq5hiZRPSC2NNZSSLYXxELtOtTH3PU9 g==;
X-IronPort-AV: E=McAfee;i="6500,9779,10563"; a="317687613"
X-IronPort-AV: E=Sophos;i="5.96,249,1665471600"; d="scan'208";a="317687613"
Received: from orsmga002.jf.intel.com ([10.7.209.21])
 by fmsmga104.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 16 Dec 2022 07:44:00 -0800
X-IronPort-AV: E=McAfee;i="6500,9779,10563"; a="649859434"
X-IronPort-AV: E=Sophos;i="5.96,249,1665471600"; d="scan'208";a="649859434"
Received: from psobol-mobl1.ger.corp.intel.com (HELO [10.252.6.76])
 ([10.252.6.76])
 by orsmga002-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 16 Dec 2022 07:43:58 -0800
Message-ID: <9e24bdca-c4e0-dfa7-cd90-d6dcc29f912e@intel.com>
Date: Fri, 16 Dec 2022 15:43:56 +0000
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Firefox/102.0 Thunderbird/102.5.1
Content-Language: en-GB
To: Nirmoy Das <nirmoy.das@intel.com>, intel-gfx@lists.freedesktop.org
References: <20221216152744.18658-1-nirmoy.das@intel.com>
From: Matthew Auld <matthew.auld@intel.com>
In-Reply-To: <20221216152744.18658-1-nirmoy.das@intel.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit
Subject: Re: [Intel-gfx] [PATCH] drm/i915: Use helper func to find out map
 type
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
Cc: andrzej.hajda@intel.com
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On 16/12/2022 15:27, Nirmoy Das wrote:
> Use i915_coherent_map_type() function to find out
> map_type of the shmem obj.
> 
> Signed-off-by: Nirmoy Das <nirmoy.das@intel.com>
> ---
>   drivers/gpu/drm/i915/gt/shmem_utils.c | 7 +++++--
>   1 file changed, 5 insertions(+), 2 deletions(-)
> 
> diff --git a/drivers/gpu/drm/i915/gt/shmem_utils.c b/drivers/gpu/drm/i915/gt/shmem_utils.c
> index 402f085f3a02..e1a69803624f 100644
> --- a/drivers/gpu/drm/i915/gt/shmem_utils.c
> +++ b/drivers/gpu/drm/i915/gt/shmem_utils.c
> @@ -8,6 +8,7 @@
>   #include <linux/pagemap.h>
>   #include <linux/shmem_fs.h>
>   
> +#include "i915_drv.h"
>   #include "gem/i915_gem_object.h"
>   #include "gem/i915_gem_lmem.h"
>   #include "shmem_utils.h"
> @@ -32,6 +33,8 @@ struct file *shmem_create_from_data(const char *name, void *data, size_t len)
>   
>   struct file *shmem_create_from_object(struct drm_i915_gem_object *obj)
>   {
> +	struct drm_i915_private *i915 = to_i915(obj->base.dev);
> +	enum i915_map_type map_type;
>   	struct file *file;
>   	void *ptr;
>   
> @@ -41,8 +44,8 @@ struct file *shmem_create_from_object(struct drm_i915_gem_object *obj)
>   		return file;
>   	}
>   
> -	ptr = i915_gem_object_pin_map_unlocked(obj, i915_gem_object_is_lmem(obj) ?
> -						I915_MAP_WC : I915_MAP_WB);
> +	map_type = i915_coherent_map_type(i915, obj, false);

This will now use wc on non-llc.

> +	ptr = i915_gem_object_pin_map_unlocked(obj, map_type);
>   	if (IS_ERR(ptr))
>   		return ERR_CAST(ptr);
>   
