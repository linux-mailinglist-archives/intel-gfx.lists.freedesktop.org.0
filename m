Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 888717655E9
	for <lists+intel-gfx@lfdr.de>; Thu, 27 Jul 2023 16:27:25 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id C8F4710E58F;
	Thu, 27 Jul 2023 14:27:23 +0000 (UTC)
X-Original-To: Intel-gfx@lists.freedesktop.org
Delivered-To: Intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (unknown [134.134.136.24])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 444D210E58D;
 Thu, 27 Jul 2023 14:27:21 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1690468041; x=1722004041;
 h=date:from:to:cc:subject:message-id:references:
 mime-version:in-reply-to;
 bh=6bIK8x3bYTDdylGNyoI3uR739k438C1BiAnOXEWCftk=;
 b=SgHQ9AqUxdV6xPzzBIgkcyxna69YEWojj03FbaLDzfI5Yy5G9rR+/5d7
 mho0OsUVrD1wuRq6FVwwcYpGQKW03P6Gn8F8Sa7eKhhNP/LLMRfIXoNHy
 fmW0/0/usMgMCG4MVA65QJLDIiLWkb4xMZleDGpR1ggnQUk1lYn7tIe8V
 C5BrY/FWkDxgBIXqrx8Oq8N2JwQmdFGLabMWYE9WTAzvfPWUcIg6ktTuM
 JuPHQYYNDLmpK27OuVFGWumEXTE7xWFKDFSQzQcUTFWJBKP14DlfswInu
 rEp8HAv//9TCNPH1MCtZJcjITT+v7IhB99On1e7FB8UA/2NOSGR8gfQCL A==;
X-IronPort-AV: E=McAfee;i="6600,9927,10784"; a="371020099"
X-IronPort-AV: E=Sophos;i="6.01,235,1684825200"; d="scan'208";a="371020099"
Received: from fmsmga006.fm.intel.com ([10.253.24.20])
 by orsmga102.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 27 Jul 2023 07:11:04 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10784"; a="973581337"
X-IronPort-AV: E=Sophos;i="6.01,235,1684825200"; d="scan'208";a="973581337"
Received: from mmach-mobl.ger.corp.intel.com (HELO localhost) ([10.213.0.94])
 by fmsmga006-auth.fm.intel.com with
 ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 27 Jul 2023 07:11:02 -0700
Date: Thu, 27 Jul 2023 16:10:59 +0200
From: Kamil Konieczny <kamil.konieczny@linux.intel.com>
To: igt-dev@lists.freedesktop.org
Message-ID: <20230727141059.lu76jilirgvcjb5f@kamilkon-desk1>
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
--------------------------------- ^
Should this be c->regions->num_regions?

Regards,
Kamil

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
