Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id C3C755EE31D
	for <lists+intel-gfx@lfdr.de>; Wed, 28 Sep 2022 19:28:29 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 88F7910E521;
	Wed, 28 Sep 2022 17:28:27 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga12.intel.com (mga12.intel.com [192.55.52.136])
 by gabe.freedesktop.org (Postfix) with ESMTPS id B2FC810E500;
 Wed, 28 Sep 2022 17:28:23 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1664386103; x=1695922103;
 h=message-id:date:mime-version:subject:to:cc:references:
 from:in-reply-to:content-transfer-encoding;
 bh=8eVw9C5sPYEUOLA7l5QFddja9Pb2L/c4WImdAJ/ZVPk=;
 b=g6KYeMVh7GCRxcy5ymxEOzVzLs1jtKu4tyluBR6Fn+6VFa9HcU6VUY3o
 9Jbs8H7wlZ+QBJ540T/FDPDY42Jo2gA5ELupSRKvC+L3nz3EztOc0qSjb
 EpS+/P4vJ2u721FfAvlRUmxQNV4bha5j1j4oQcX653eQdgS8kNoFum+em
 5FH7Z3P9TRp1lD2uyYKL7uh/Rm8j4Xi3HzzpRbq3ci9gpxU4h9PeyWim8
 AwX30aIET3z6aqyKWexKOclDphv6d9b+xj9I4z9w8KGPl+nipfx9Czjp2
 R+oRbosrXq2dAipn1z/BuwMQuEq5Q9wsZHooWKhScjJ9BpYf83ibdM/S9 g==;
X-IronPort-AV: E=McAfee;i="6500,9779,10484"; a="281382339"
X-IronPort-AV: E=Sophos;i="5.93,352,1654585200"; d="scan'208";a="281382339"
Received: from orsmga007.jf.intel.com ([10.7.209.58])
 by fmsmga106.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 28 Sep 2022 10:28:22 -0700
X-IronPort-AV: E=McAfee;i="6500,9779,10484"; a="617290467"
X-IronPort-AV: E=Sophos;i="5.93,352,1654585200"; d="scan'208";a="617290467"
Received: from ekarpovi-mobl1.ger.corp.intel.com (HELO [10.252.6.131])
 ([10.252.6.131])
 by orsmga007-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 28 Sep 2022 10:28:18 -0700
Message-ID: <917ff992-5f6c-c9de-2d3a-d0bde2e49516@intel.com>
Date: Wed, 28 Sep 2022 18:28:15 +0100
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Firefox/102.0 Thunderbird/102.3.0
Content-Language: en-GB
To: Niranjana Vishwanathapura <niranjana.vishwanathapura@intel.com>,
 intel-gfx@lists.freedesktop.org, dri-devel@lists.freedesktop.org
References: <20220928061918.6340-1-niranjana.vishwanathapura@intel.com>
 <20220928061918.6340-2-niranjana.vishwanathapura@intel.com>
From: Matthew Auld <matthew.auld@intel.com>
In-Reply-To: <20220928061918.6340-2-niranjana.vishwanathapura@intel.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit
Subject: Re: [Intel-gfx] [PATCH 01/16] drm/i915/vm_bind: Expose vm lookup
 function
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
Cc: paulo.r.zanoni@intel.com, jani.nikula@intel.com, thomas.hellstrom@intel.com,
 daniel.vetter@intel.com, christian.koenig@amd.com
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On 28/09/2022 07:19, Niranjana Vishwanathapura wrote:
> Make i915_gem_vm_lookup() function non-static as it will be
> used by the vm_bind feature.
> 
> Signed-off-by: Niranjana Vishwanathapura <niranjana.vishwanathapura@intel.com>
> Signed-off-by: Andi Shyti <andi.shyti@linux.intel.com>

Acked-by: Matthew Auld <matthew.auld@intel.com>

> ---
>   drivers/gpu/drm/i915/gem/i915_gem_context.c | 11 ++++++++++-
>   drivers/gpu/drm/i915/gem/i915_gem_context.h |  3 +++
>   2 files changed, 13 insertions(+), 1 deletion(-)
> 
> diff --git a/drivers/gpu/drm/i915/gem/i915_gem_context.c b/drivers/gpu/drm/i915/gem/i915_gem_context.c
> index 0bcde53c50c6..f4e648ec01ed 100644
> --- a/drivers/gpu/drm/i915/gem/i915_gem_context.c
> +++ b/drivers/gpu/drm/i915/gem/i915_gem_context.c
> @@ -346,7 +346,16 @@ static int proto_context_register(struct drm_i915_file_private *fpriv,
>   	return ret;
>   }
>   
> -static struct i915_address_space *
> +/**
> + * i915_gem_vm_lookup() - looks up for the VM reference given the vm id
> + * @file_priv: the private data associated with the user's file
> + * @id: the VM id
> + *
> + * Finds the VM reference associated to a specific id.
> + *
> + * Returns the VM pointer on success, NULL in case of failure.
> + */
> +struct i915_address_space *
>   i915_gem_vm_lookup(struct drm_i915_file_private *file_priv, u32 id)
>   {
>   	struct i915_address_space *vm;
> diff --git a/drivers/gpu/drm/i915/gem/i915_gem_context.h b/drivers/gpu/drm/i915/gem/i915_gem_context.h
> index e5b0f66ea1fe..899fa8f1e0fe 100644
> --- a/drivers/gpu/drm/i915/gem/i915_gem_context.h
> +++ b/drivers/gpu/drm/i915/gem/i915_gem_context.h
> @@ -139,6 +139,9 @@ int i915_gem_context_setparam_ioctl(struct drm_device *dev, void *data,
>   int i915_gem_context_reset_stats_ioctl(struct drm_device *dev, void *data,
>   				       struct drm_file *file);
>   
> +struct i915_address_space *
> +i915_gem_vm_lookup(struct drm_i915_file_private *file_priv, u32 id);
> +
>   struct i915_gem_context *
>   i915_gem_context_lookup(struct drm_i915_file_private *file_priv, u32 id);
>   
