Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id A35A39F8E44
	for <lists+intel-gfx@lfdr.de>; Fri, 20 Dec 2024 09:52:08 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 3E9A510EF21;
	Fri, 20 Dec 2024 08:52:07 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="NInP0rX4";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.7])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 6FDF610EF21;
 Fri, 20 Dec 2024 08:52:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1734684725; x=1766220725;
 h=from:to:cc:subject:in-reply-to:references:date:
 message-id:mime-version;
 bh=ZzW3rBdAK+99wcnwmd939d3S2a2bW88p1aiaT0ZqSoY=;
 b=NInP0rX4xDLZZ8/XGgbbtM+3ermaZtwi+TXl+5Q60tEfryZj8sIZ6wfr
 Tj62RdU0kLk10o3iJRMpspq3SokdaKw+e/QC7a5ips+n1dDGhI1KGeWxz
 QIfbT1KL+74I1caYz/L7QZKjSfdtZMX6xkuCQBcpKy1JRkg5VR8t1uVLG
 SeOa1YL56JPypNdfkxX1ft8bluE+ukA+8B0vyWeT2VTo6uGpcjbrob3lT
 2Pc9OK3r5evG5YxLVWCtHk+hu+cYjbUHHgrYxsONntWUaAvhqLZeOnmRK
 sPwtDoC30UEHuaydBmYDGZMvU4RwL2wOdmgHKU5jWu3zNkaShmXMBOclO w==;
X-CSE-ConnectionGUID: E3jm+RF8SBKwKfxcokyckQ==
X-CSE-MsgGUID: rFdyNeeMToy+tEMcUGVX5w==
X-IronPort-AV: E=McAfee;i="6700,10204,11291"; a="60610302"
X-IronPort-AV: E=Sophos;i="6.12,250,1728975600"; d="scan'208";a="60610302"
Received: from orviesa010.jf.intel.com ([10.64.159.150])
 by fmvoesa101.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 20 Dec 2024 00:51:58 -0800
X-CSE-ConnectionGUID: zlZcg0PfTVeicQXJw5jmBw==
X-CSE-MsgGUID: XQaF/a6QRZeJlGe95A57/w==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.12,224,1728975600"; d="scan'208";a="98283774"
Received: from mwiniars-desk2.ger.corp.intel.com (HELO localhost)
 ([10.245.246.210])
 by orviesa010-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 20 Dec 2024 00:51:57 -0800
From: Jani Nikula <jani.nikula@intel.com>
To: Gustavo Sousa <gustavo.sousa@intel.com>,
 intel-gfx@lists.freedesktop.org, intel-xe@lists.freedesktop.org
Cc: Ville =?utf-8?B?U3lyasOkbMOk?= <ville.syrjala@linux.intel.com>
Subject: Re: [PATCH 2/3] drm/i915/display: Add infra to reduce global state
 funcs boilerplate
In-Reply-To: <20241219214909.104869-3-gustavo.sousa@intel.com>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
References: <20241219214909.104869-1-gustavo.sousa@intel.com>
 <20241219214909.104869-3-gustavo.sousa@intel.com>
Date: Fri, 20 Dec 2024 10:51:51 +0200
Message-ID: <87ldwapwig.fsf@intel.com>
MIME-Version: 1.0
Content-Type: text/plain
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

On Thu, 19 Dec 2024, Gustavo Sousa <gustavo.sousa@intel.com> wrote:
> diff --git a/drivers/gpu/drm/i915/display/intel_global_state.h b/drivers/gpu/drm/i915/display/intel_global_state.h
> index 6506a8e32972..e47e007225cc 100644
> --- a/drivers/gpu/drm/i915/display/intel_global_state.h
> +++ b/drivers/gpu/drm/i915/display/intel_global_state.h
> @@ -8,6 +8,8 @@
>  
>  #include <linux/kref.h>
>  #include <linux/list.h>
> +#include <linux/stddef.h>

What do you need this for?

> +#include <linux/types.h>
>  
>  struct drm_i915_private;
>  struct intel_atomic_state;
> @@ -15,6 +17,10 @@ struct intel_global_obj;
>  struct intel_global_state;
>  
>  struct intel_global_state_funcs {
> +	/* state_size and base_offset are initialized by INTEL_GLOBAL_STATE_DEFAULTS() */
> +	size_t state_size;
> +	size_t base_offset;
> +
>  	struct intel_global_state *(*atomic_duplicate_state)(struct intel_global_obj *obj);
>  	void (*atomic_destroy_state)(struct intel_global_obj *obj,
>  				     struct intel_global_state *state);
> @@ -26,6 +32,10 @@ struct intel_global_obj {
>  	const struct intel_global_state_funcs *funcs;
>  };
>  
> +#define INTEL_GLOBAL_STATE_DEFAULTS(type, base_member) \
> +	.state_size = sizeof(type), \
> +	.base_offset = offsetof(type, base_member)
> +
>  #define intel_for_each_global_obj(obj, dev_priv) \
>  	list_for_each_entry(obj, &(dev_priv)->display.global.obj_list, head)
>  
> @@ -96,4 +106,9 @@ int intel_atomic_global_state_wait_for_dependencies(struct intel_atomic_state *s
>  
>  bool intel_atomic_global_state_is_serialized(struct intel_atomic_state *state);
>  
> +struct intel_global_state *
> +intel_atomic_global_duplicate_state_common(struct intel_global_obj *obj);
> +void intel_atomic_global_destroy_state_common(struct intel_global_obj *obj,
> +					      struct intel_global_state *state);
> +
>  #endif

-- 
Jani Nikula, Intel
