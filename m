Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id D9644497F27
	for <lists+intel-gfx@lfdr.de>; Mon, 24 Jan 2022 13:19:34 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 0529910E70E;
	Mon, 24 Jan 2022 12:19:32 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga17.intel.com (mga17.intel.com [192.55.52.151])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 9D7B610E7BB
 for <intel-gfx@lists.freedesktop.org>; Mon, 24 Jan 2022 12:19:30 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1643026770; x=1674562770;
 h=message-id:date:mime-version:subject:to:references:from:
 in-reply-to:content-transfer-encoding;
 bh=8SnZN42xN68Hz3/Mn1eC9lqAUo/WZg8gw+XdEC7Mio0=;
 b=XY9apzgunrLPLVeFuTJQCaYaqEKxc82NzqhtBhk4oLZ/yD2VX/dkIVtk
 QQ9MPclkOl8DMIUwJW3RpeyFZk88QzSlKyKpNzviJojhpWhGFmZbbMz9m
 IJnYE1io367CGNcGdhC0Ny32RP4/9nQ5/lNUilZefsH0yrcYMpnPCasCc
 kCn7kKLJIvAgrsAmqJ483w9TFlubI8+G2fGZCFGUt9e0PvRWyljpgaA05
 oeyMG51I//lBApXe93/n/B7fQXwYEC7zu+XkYb/6UhFoHTL0BT1N+eh8g
 lZE3VgfA1SHxqzSLCQoKQlLrS3XMdXeX3NrGEdH2PRHHLbVQ50hmhoryv Q==;
X-IronPort-AV: E=McAfee;i="6200,9189,10236"; a="226703475"
X-IronPort-AV: E=Sophos;i="5.88,311,1635231600"; d="scan'208";a="226703475"
Received: from orsmga005.jf.intel.com ([10.7.209.41])
 by fmsmga107.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 24 Jan 2022 04:19:30 -0800
X-IronPort-AV: E=Sophos;i="5.88,311,1635231600"; d="scan'208";a="695403662"
Received: from rvanakke-mobl.ger.corp.intel.com (HELO [10.252.53.157])
 ([10.252.53.157])
 by orsmga005-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 24 Jan 2022 04:19:29 -0800
Message-ID: <8328facd-f10d-01e6-12e8-67179fbf324e@linux.intel.com>
Date: Mon, 24 Jan 2022 13:19:27 +0100
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Firefox/91.0 Thunderbird/91.5.0
Content-Language: en-US
To: Jani Nikula <jani.nikula@intel.com>, intel-gfx@lists.freedesktop.org
References: <cover.1641977368.git.jani.nikula@intel.com>
 <7c018d4a741ecb98dc1a19a7fdb6b35943790ff9.1641977369.git.jani.nikula@intel.com>
From: Maarten Lankhorst <maarten.lankhorst@linux.intel.com>
In-Reply-To: <7c018d4a741ecb98dc1a19a7fdb6b35943790ff9.1641977369.git.jani.nikula@intel.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
Subject: Re: [Intel-gfx] [PATCH 5/5] drm/i915: split out
 gem/i915_gem_domain.h from i915_drv.h
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
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

Op 12-01-2022 om 09:51 schreef Jani Nikula:
> We already have the gem/i915_gem_domain.c file.
>
> Signed-off-by: Jani Nikula <jani.nikula@intel.com>
> ---
>  drivers/gpu/drm/i915/display/intel_dpt.c    |  4 +++-
>  drivers/gpu/drm/i915/display/intel_fb_pin.c |  1 +
>  drivers/gpu/drm/i915/gem/i915_gem_domain.c  |  5 +++--
>  drivers/gpu/drm/i915/gem/i915_gem_domain.h  | 15 +++++++++++++++
>  drivers/gpu/drm/i915/i915_drv.h             |  3 ---
>  5 files changed, 22 insertions(+), 6 deletions(-)
>  create mode 100644 drivers/gpu/drm/i915/gem/i915_gem_domain.h
>
> diff --git a/drivers/gpu/drm/i915/display/intel_dpt.c b/drivers/gpu/drm/i915/display/intel_dpt.c
> index 63a83d5f85a1..16b273e19d17 100644
> --- a/drivers/gpu/drm/i915/display/intel_dpt.c
> +++ b/drivers/gpu/drm/i915/display/intel_dpt.c
> @@ -3,11 +3,13 @@
>   * Copyright © 2021 Intel Corporation
>   */
>  
> +#include "gem/i915_gem_domain.h"
> +#include "gt/gen8_ppgtt.h"
> +
>  #include "i915_drv.h"
>  #include "intel_display_types.h"
>  #include "intel_dpt.h"
>  #include "intel_fb.h"
> -#include "gt/gen8_ppgtt.h"
>  
>  struct i915_dpt {
>  	struct i915_address_space vm;
> diff --git a/drivers/gpu/drm/i915/display/intel_fb_pin.c b/drivers/gpu/drm/i915/display/intel_fb_pin.c
> index 31c15e5fca95..e60046d90124 100644
> --- a/drivers/gpu/drm/i915/display/intel_fb_pin.c
> +++ b/drivers/gpu/drm/i915/display/intel_fb_pin.c
> @@ -7,6 +7,7 @@
>   * DOC: display pinning helpers
>   */
>  
> +#include "gem/i915_gem_domain.h"
>  #include "gem/i915_gem_object.h"
>  
>  #include "i915_drv.h"
> diff --git a/drivers/gpu/drm/i915/gem/i915_gem_domain.c b/drivers/gpu/drm/i915/gem/i915_gem_domain.c
> index 26532c07d467..3e5d6057b3ef 100644
> --- a/drivers/gpu/drm/i915/gem/i915_gem_domain.c
> +++ b/drivers/gpu/drm/i915/gem/i915_gem_domain.c
> @@ -9,12 +9,13 @@
>  
>  #include "i915_drv.h"
>  #include "i915_gem_clflush.h"
> +#include "i915_gem_domain.h"
>  #include "i915_gem_gtt.h"
>  #include "i915_gem_ioctls.h"
> -#include "i915_gem_object.h"
> -#include "i915_vma.h"
>  #include "i915_gem_lmem.h"
>  #include "i915_gem_mman.h"
> +#include "i915_gem_object.h"
> +#include "i915_vma.h"
>  
>  static bool gpu_write_needs_clflush(struct drm_i915_gem_object *obj)
>  {
> diff --git a/drivers/gpu/drm/i915/gem/i915_gem_domain.h b/drivers/gpu/drm/i915/gem/i915_gem_domain.h
> new file mode 100644
> index 000000000000..9622df962bfc
> --- /dev/null
> +++ b/drivers/gpu/drm/i915/gem/i915_gem_domain.h
> @@ -0,0 +1,15 @@
> +/* SPDX-License-Identifier: MIT */
> +/*
> + * Copyright © 2022 Intel Corporation
> + */
> +
> +#ifndef __I915_GEM_DOMAIN_H__
> +#define __I915_GEM_DOMAIN_H__
> +
> +struct drm_i915_gem_object;
> +enum i915_cache_level;
> +
> +int i915_gem_object_set_cache_level(struct drm_i915_gem_object *obj,
> +				    enum i915_cache_level cache_level);
> +
> +#endif /* __I915_GEM_DOMAIN_H__ */
> diff --git a/drivers/gpu/drm/i915/i915_drv.h b/drivers/gpu/drm/i915/i915_drv.h
> index 95899661d567..32cd07e144dc 100644
> --- a/drivers/gpu/drm/i915/i915_drv.h
> +++ b/drivers/gpu/drm/i915/i915_drv.h
> @@ -1686,9 +1686,6 @@ void i915_gem_driver_release(struct drm_i915_private *dev_priv);
>  
>  int i915_gem_open(struct drm_i915_private *i915, struct drm_file *file);
>  
> -int i915_gem_object_set_cache_level(struct drm_i915_gem_object *obj,
> -				    enum i915_cache_level cache_level);
> -
>  static inline struct i915_address_space *
>  i915_gem_vm_lookup(struct drm_i915_file_private *file_priv, u32 id)
>  {

All looks sane.

Reviewed-by: Maarten Lankhorst <maarten.lankhorst@linux.intel.com>

