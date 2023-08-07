Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id ADFD977280B
	for <lists+intel-gfx@lfdr.de>; Mon,  7 Aug 2023 16:41:10 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 86FE010E29D;
	Mon,  7 Aug 2023 14:41:07 +0000 (UTC)
X-Original-To: Intel-gfx@lists.freedesktop.org
Delivered-To: Intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [134.134.136.65])
 by gabe.freedesktop.org (Postfix) with ESMTPS id E1F9F10E298;
 Mon,  7 Aug 2023 14:40:52 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1691419258; x=1722955258;
 h=date:from:to:cc:subject:message-id:references:
 mime-version:in-reply-to;
 bh=ZqlM15dzfwLwUC/NyLLgVtik2UF/IM9Hr3j9d14hZSA=;
 b=Xmik9bQ8p4/YkVqn/IFFV0bkvy0mjYQu5kRqcojwJjtvJxB+zgRsY9Tf
 MLMENW6P2oSlxHFHEiUe6PDTMdJAhsuZVT+XWzQv4cnSgeOZhoZlbU6Q2
 /L+J4TdEo4vhWTd3b3Fd3Wv7yFxJpN0BE9hRV7fru7y+CByPjiHeJaCJh
 YS2LVDjuCb8WXH9VMBVeaaQaI+djwPlDGepSZJ8Zw7pOCQUu9+UHxapJ8
 x83ErVOCbb832Dj7/5q7O2Bh237wzRU20uqapnyC0ngAJshrj0yIg9VHH
 uAvv0RzuyM7kqxK+y4hxe2B20b/ZylcFw31LVSXzVpeXlqAwD+8KSoXpV A==;
X-IronPort-AV: E=McAfee;i="6600,9927,10795"; a="374235076"
X-IronPort-AV: E=Sophos;i="6.01,262,1684825200"; d="scan'208";a="374235076"
Received: from orsmga004.jf.intel.com ([10.7.209.38])
 by orsmga103.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 07 Aug 2023 07:40:52 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10795"; a="854680115"
X-IronPort-AV: E=Sophos;i="6.01,262,1684825200"; d="scan'208";a="854680115"
Received: from jkrol-mobl2.ger.corp.intel.com (HELO localhost)
 ([10.213.29.203])
 by orsmga004-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 07 Aug 2023 07:40:50 -0700
Date: Mon, 7 Aug 2023 16:40:48 +0200
From: Kamil Konieczny <kamil.konieczny@linux.intel.com>
To: igt-dev@lists.freedesktop.org
Message-ID: <20230807144048.5lek6zmhhp74z42u@kamilkon-desk1>
Mail-Followup-To: Kamil Konieczny <kamil.konieczny@linux.intel.com>,
 igt-dev@lists.freedesktop.org,
 Tvrtko Ursulin <tvrtko.ursulin@linux.intel.com>,
 Intel-gfx@lists.freedesktop.org,
 Tvrtko Ursulin <tvrtko.ursulin@intel.com>,
 Rob Clark <robdclark@chromium.org>, Chris Healy <cphealy@gmail.com>
References: <20230727092025.1895728-1-tvrtko.ursulin@linux.intel.com>
 <20230727092025.1895728-3-tvrtko.ursulin@linux.intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
In-Reply-To: <20230727092025.1895728-3-tvrtko.ursulin@linux.intel.com>
Subject: Re: [Intel-gfx] [PATCH i-g-t 2/3] lib/igt_drm_clients: Store memory
 info in the client
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
Cc: Rob Clark <robdclark@chromium.org>, Intel-gfx@lists.freedesktop.org,
 Chris Healy <cphealy@gmail.com>
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

Hi Tvrtko,

On 2023-07-27 at 10:20:24 +0100, Tvrtko Ursulin wrote:
> From: Tvrtko Ursulin <tvrtko.ursulin@intel.com>
> 
> Define the storage structure and copy over memory data as parsed by the
> fdinfo helpers.
> 
> v2:
>  * Fix empty region map entry skip condition. (Kamil, Chris)
> 
> Signed-off-by: Tvrtko Ursulin <tvrtko.ursulin@intel.com>
> Cc: Rob Clark <robdclark@chromium.org>
> Cc: Chris Healy <cphealy@gmail.com>
> Cc: Kamil Konieczny <kamil.konieczny@linux.intel.com>

Thx for v2 with fix and reply, LGTM,

Reviewed-by: Kamil Konieczny <kamil.konieczny@linux.intel.com>

> ---
>  lib/igt_drm_clients.c | 32 ++++++++++++++++++++++++++++++++
>  lib/igt_drm_clients.h | 11 +++++++++++
>  2 files changed, 43 insertions(+)
> 
> diff --git a/lib/igt_drm_clients.c b/lib/igt_drm_clients.c
> index fdea42752a81..47ad137d5f1f 100644
> --- a/lib/igt_drm_clients.c
> +++ b/lib/igt_drm_clients.c
> @@ -103,6 +103,8 @@ igt_drm_client_update(struct igt_drm_client *c, unsigned int pid, char *name,
>  			c->clients->max_name_len = len;
>  	}
>  
> +	/* Engines */
> +
>  	c->last_runtime = 0;
>  	c->total_runtime = 0;
>  
> @@ -118,6 +120,13 @@ igt_drm_client_update(struct igt_drm_client *c, unsigned int pid, char *name,
>  		c->last[i] = info->busy[i];
>  	}
>  
> +	/* Memory regions */
> +	for (i = 0; i <= c->regions->max_region_id; i++) {
> +		assert(i < ARRAY_SIZE(info->region_mem));
> +
> +		c->memory[i] = info->region_mem[i];
> +	}
> +
>  	c->samples++;
>  	c->status = IGT_DRM_CLIENT_ALIVE;
>  }
> @@ -154,6 +163,8 @@ igt_drm_client_add(struct igt_drm_clients *clients,
>  	c->id = info->id;
>  	c->drm_minor = drm_minor;
>  	c->clients = clients;
> +
> +	/* Engines */
>  	c->engines = malloc(sizeof(*c->engines));
>  	assert(c->engines);
>  	memset(c->engines, 0, sizeof(*c->engines));
> @@ -178,6 +189,27 @@ igt_drm_client_add(struct igt_drm_clients *clients,
>  	c->last = calloc(c->engines->max_engine_id + 1, sizeof(c->last));
>  	assert(c->val && c->last);
>  
> +	/* Memory regions */
> +	c->regions = malloc(sizeof(*c->regions));
> +	assert(c->regions);
> +	memset(c->regions, 0, sizeof(*c->regions));
> +	c->regions->names = calloc(info->last_region_index + 1,
> +				   sizeof(*c->regions->names));
> +	assert(c->regions->names);
> +
> +	for (i = 0; i <= info->last_region_index; i++) {
> +		/* Region map is allowed to be sparse. */
> +		if (!info->region_names[i][0])
> +			continue;
> +
> +		c->regions->names[i] = strdup(info->region_names[i]);
> +		assert(c->regions->names[i]);
> +		c->regions->num_regions++;
> +		c->regions->max_region_id = i;
> +	}
> +	c->memory = calloc(c->regions->max_region_id + 1, sizeof(*c->memory));
> +	assert(c->memory);
> +
>  	igt_drm_client_update(c, pid, name, info);
>  }
>  
> diff --git a/lib/igt_drm_clients.h b/lib/igt_drm_clients.h
> index ed795c193986..07bd236d43bf 100644
> --- a/lib/igt_drm_clients.h
> +++ b/lib/igt_drm_clients.h
> @@ -8,6 +8,8 @@
>  
>  #include <stdint.h>
>  
> +#include "lib/igt_drm_fdinfo.h"
> +
>  /**
>   * SECTION:igt_drm_clients
>   * @short_description: Parsing driver exposed fdinfo to track DRM clients
> @@ -39,12 +41,20 @@ struct igt_drm_client_engines {
>  	char **names; /* Array of engine names, either auto-detected or from the passed in engine map. */
>  };
>  
> +struct igt_drm_client_regions {
> +	unsigned int num_regions; /* Number of discovered memory_regions. */
> +	unsigned int max_region_id; /* Largest memory region index discovered.
> +				       (Can differ from num_regions - 1 when using the region map facility.) */
> +	char **names; /* Array of region names, either auto-detected or from the passed in region map. */
> +};
> +
>  struct igt_drm_clients;
>  
>  struct igt_drm_client {
>  	struct igt_drm_clients *clients; /* Owning list. */
>  
>  	enum igt_drm_client_status status;
> +	struct igt_drm_client_regions *regions; /* Memory regions present in this client, to map with memory usage. */
>  	struct igt_drm_client_engines *engines; /* Engines used by this client, to map with busynees data. */
>  	unsigned int id; /* DRM client id from fdinfo. */
>  	unsigned int drm_minor; /* DRM minor of this client. */
> @@ -57,6 +67,7 @@ struct igt_drm_client {
>  	unsigned long last_runtime; /* Aggregate busyness on all engines since previous scan. */
>  	unsigned long *val; /* Array of engine busyness data, relative to previous scan. */
>  	uint64_t *last; /* Array of engine busyness data as parsed from fdinfo. */
> +	struct drm_client_meminfo *memory; /* Array of region memory utilisation as parsed from fdinfo. */
>  };
>  
>  struct igt_drm_clients {
> -- 
> 2.39.2
> 
