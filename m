Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id B063B765240
	for <lists+intel-gfx@lfdr.de>; Thu, 27 Jul 2023 13:28:07 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 1F2B410E07E;
	Thu, 27 Jul 2023 11:28:04 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (unknown [134.134.136.65])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 748D710E07E
 for <intel-gfx@lists.freedesktop.org>; Thu, 27 Jul 2023 11:28:01 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1690457281; x=1721993281;
 h=message-id:date:mime-version:subject:to:cc:references:
 from:in-reply-to:content-transfer-encoding;
 bh=U/7Fv+vnyaJCckXe5tfrAwU7DIcYn5bzzrxE+Q/hJxA=;
 b=d0gTaItRXUafx9yz6oc6ESKQlAB8yflG+F7cYTXlPIea1vEIdjLElXGp
 uyccpvprVNiRaexjJg1WNZS23Xk5LIR8rq/KJXuqNkDOlSOj6YowcA3VI
 jPX5HA40HJQmEfYPXyOcJETqFGN+mZqnfZSZ5kMZ3UJAUMXFqAztjvMR4
 NbkmAGrWPaz8X0cbaaHBeOiT4vWVUYfGQdNPo6bMu3nphadS7vLIkfLZE
 Qr/jcUvGwlJ0DJScbdHiJAk6j5W6nuyYamYXt+WTMhJy+tqj1lg3QFpTk
 jutP8fBG88wtnHF4K48Qn2JedK+0AX9pQQawc+8t7Fx4p+v/z/jyRYQjj g==;
X-IronPort-AV: E=McAfee;i="6600,9927,10783"; a="371890997"
X-IronPort-AV: E=Sophos;i="6.01,234,1684825200"; d="scan'208";a="371890997"
Received: from fmsmga004.fm.intel.com ([10.253.24.48])
 by orsmga103.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 27 Jul 2023 04:28:00 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10783"; a="796933040"
X-IronPort-AV: E=Sophos;i="6.01,234,1684825200"; d="scan'208";a="796933040"
Received: from jlenehan-mobl1.ger.corp.intel.com (HELO [10.213.228.208])
 ([10.213.228.208])
 by fmsmga004-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 27 Jul 2023 04:27:58 -0700
Message-ID: <e613f226-a744-d476-1747-078ccb962515@linux.intel.com>
Date: Thu, 27 Jul 2023 12:27:56 +0100
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.11.0
Content-Language: en-US
To: Jonathan Cavitt <jonathan.cavitt@intel.com>,
 intel-gfx@lists.freedesktop.org
References: <20230726155356.1652979-1-jonathan.cavitt@intel.com>
From: Tvrtko Ursulin <tvrtko.ursulin@linux.intel.com>
Organization: Intel Corporation UK Plc
In-Reply-To: <20230726155356.1652979-1-jonathan.cavitt@intel.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit
Subject: Re: [Intel-gfx] [PATCH 1/3] drm/i915/gt: Simplify
 shmem_create_from_object map_type selection
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
Cc: matthew.d.roper@intel.com, chris.p.wilson@linux.intel.com,
 andi.shyti@intel.com, nirmoy.das@intel.com
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>


On 26/07/2023 16:53, Jonathan Cavitt wrote:
> The object pin created for shmem_create_from_object is just a
> single use mapping with the sole purpose of reading the contents
> of the whole object in bulk. And the whole source object is also
> even a throw-away.  Ergo, the additional logic required by
> i915_coherent_map_type can be safely dropped and simplified.
> 
> Signed-off-by: Jonathan Cavitt <jonathan.cavitt@intel.com>
> Suggested-by: Tvrtko Ursulin <tvrtko.ursulin@linux.intel.com>
> ---
>   drivers/gpu/drm/i915/gt/shmem_utils.c | 3 +--
>   1 file changed, 1 insertion(+), 2 deletions(-)
> 
> diff --git a/drivers/gpu/drm/i915/gt/shmem_utils.c b/drivers/gpu/drm/i915/gt/shmem_utils.c
> index 449c9ed44382..bccc3a1200bc 100644
> --- a/drivers/gpu/drm/i915/gt/shmem_utils.c
> +++ b/drivers/gpu/drm/i915/gt/shmem_utils.c
> @@ -33,7 +33,6 @@ struct file *shmem_create_from_data(const char *name, void *data, size_t len)
>   
>   struct file *shmem_create_from_object(struct drm_i915_gem_object *obj)
>   {
> -	struct drm_i915_private *i915 = to_i915(obj->base.dev);
>   	enum i915_map_type map_type;
>   	struct file *file;
>   	void *ptr;
> @@ -44,7 +43,7 @@ struct file *shmem_create_from_object(struct drm_i915_gem_object *obj)
>   		return file;
>   	}
>   
> -	map_type = i915_coherent_map_type(i915, obj, true);
> +	map_type = i915_gem_object_is_lmem(obj) ? I915_MAP_WC : I915_MAP_WB;
>   	ptr = i915_gem_object_pin_map_unlocked(obj, map_type);
>   	if (IS_ERR(ptr))
>   		return ERR_CAST(ptr);

Reviewed-by: Tvrtko Ursulin <tvrtko.ursulin@intel.com>

Regards,

Tvrtko
