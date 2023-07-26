Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 3DD5F763D1B
	for <lists+intel-gfx@lfdr.de>; Wed, 26 Jul 2023 19:00:57 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 4B6D610E4A1;
	Wed, 26 Jul 2023 17:00:54 +0000 (UTC)
X-Original-To: Intel-gfx@lists.freedesktop.org
Delivered-To: Intel-gfx@lists.freedesktop.org
Received: from mga05.intel.com (mga05.intel.com [192.55.52.43])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 906E710E4A0;
 Wed, 26 Jul 2023 17:00:51 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1690390851; x=1721926851;
 h=date:from:to:cc:subject:message-id:references:
 mime-version:content-transfer-encoding:in-reply-to;
 bh=Q4Rmff0IYzrKUt4DgCN+CXM9RW9TalTiTBbDoJjzUfU=;
 b=Zj7meNdx1zdYkxzH0w+zRmWqxOcgzT0ypJdldofjcGuT3OI7Rn6df3fp
 /o/vaqCq3VE1E/cKJCZDmReSEr6298qfXpLJKkkLFttsLwqNpXqKP2eYz
 7BDiD52IjhFSgdb74Ykd1BC61Zk0nB5r34cxfwL9xo59LfV7v9/dDf/xY
 VSz/V1AJJWNhtBHKYXTdA0Wmy+uvGI6XKxMHb5S4at7q5ww6C4UYQaYD/
 DacZMKbTNHgu7bWrzYgzqZUHWbjwd274GotBI1VeIALxAP+a/fXD/tbxb
 4JZWeKtmuHAXacnYEkBGu/tuErREhQCY5BRx+7MU9hprZmG1ly1RUldZr g==;
X-IronPort-AV: E=McAfee;i="6600,9927,10783"; a="454447200"
X-IronPort-AV: E=Sophos;i="6.01,232,1684825200"; d="scan'208";a="454447200"
Received: from orsmga001.jf.intel.com ([10.7.209.18])
 by fmsmga105.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 26 Jul 2023 10:00:40 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10783"; a="761740575"
X-IronPort-AV: E=Sophos;i="6.01,232,1684825200"; d="scan'208";a="761740575"
Received: from amuszyns-mobl1.ger.corp.intel.com (HELO localhost)
 ([10.213.13.179])
 by orsmga001-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 26 Jul 2023 10:00:39 -0700
Date: Wed, 26 Jul 2023 19:00:37 +0200
From: Kamil Konieczny <kamil.konieczny@linux.intel.com>
To: igt-dev@lists.freedesktop.org
Message-ID: <20230726170037.a5sghtawzm6mv2zc@kamilkon-desk1>
Mail-Followup-To: Kamil Konieczny <kamil.konieczny@linux.intel.com>,
 igt-dev@lists.freedesktop.org,
 Tvrtko Ursulin <tvrtko.ursulin@linux.intel.com>,
 Intel-gfx@lists.freedesktop.org, Rob Clark <robdclark@chromium.org>
References: <20230705163105.3804677-1-tvrtko.ursulin@linux.intel.com>
 <20230705163105.3804677-3-tvrtko.ursulin@linux.intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <20230705163105.3804677-3-tvrtko.ursulin@linux.intel.com>
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
Cc: Rob Clark <robdclark@chromium.org>, Intel-gfx@lists.freedesktop.org
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

Hi Tvrtko,

On 2023-07-05 at 17:31:04 +0100, Tvrtko Ursulin wrote:
> From: Tvrtko Ursulin <tvrtko.ursulin@intel.com>
> 
> Define the storage structure and copy over memory data as parsed by the
> fdinfo helpers.
> 
> Signed-off-by: Tvrtko Ursulin <tvrtko.ursulin@intel.com>
> Cc: Rob Clark <robdclark@chromium.org>
> ---
>  lib/igt_drm_clients.c | 31 +++++++++++++++++++++++++++++++
>  lib/igt_drm_clients.h | 11 +++++++++++
>  2 files changed, 42 insertions(+)
> 
> diff --git a/lib/igt_drm_clients.c b/lib/igt_drm_clients.c
> index fdea42752a81..0db5b64effea 100644
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
> @@ -178,6 +189,26 @@ igt_drm_client_add(struct igt_drm_clients *clients,
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
> +		if (!info->region_names[i])

This do not compile:
../lib/igt_drm_clients.c:201:21: error: the comparison will always evaluate as ‘true’ for the address of ‘region_names’ will never be NULL [-Werror=address]
  201 |                 if (!info->region_names[i])
      |                     ^
In file included from ../lib/igt_drm_clients.h:11,
                 from ../lib/igt_drm_clients.c:20:
../lib/igt_drm_fdinfo.h:57:14: note: ‘region_names’ declared here
   57 |         char region_names[DRM_CLIENT_FDINFO_MAX_REGIONS][256];
      |              ^~~~~~~~~~~~

did you mean:

		if (!info->region_names[i][0])

Regards,
Kamil

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
