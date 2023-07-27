Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id D978A764EAB
	for <lists+intel-gfx@lfdr.de>; Thu, 27 Jul 2023 11:09:08 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 3815910E54D;
	Thu, 27 Jul 2023 09:09:06 +0000 (UTC)
X-Original-To: Intel-gfx@lists.freedesktop.org
Delivered-To: Intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (unknown [134.134.136.100])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 7E8D510E54C;
 Thu, 27 Jul 2023 09:09:03 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1690448943; x=1721984943;
 h=message-id:date:mime-version:subject:to:references:from:
 in-reply-to:content-transfer-encoding;
 bh=Dc11y/TpV9hhMcpBZG4tL0FWKzDYMAHUNkQYbRq9kko=;
 b=XFFCTRTmXg0hMxVeH5UVhrZZZoZQ9pjzCCKOO+zewz046EZm/N6TrBon
 JWqhZWOC+mx/qe8HAMTvcU/H/tvUiyWkjXgsNZK/hKmXFEiuni8rjVw88
 xgKWxMFVNUqbEsbli9IcpSE9KRzAF9RICvFMzsN5kg5G4jsdB2y/Bv+z4
 an+SVAJOlgfmYvJ6p25Ju7s6yQnto7zhVYLhijOAWiHJZefQcf6QK+dEf
 R0cO93BnXHbvwWqrUfq46Fa67U80idufq7gm0nAH2Xj/sesOQTUOoaJ4b
 5Y23LUyfkzXeCi6oW+Rc2QgAf8uz/d78CvjbaQp/TcZZyWIZiuFfC/X4F g==;
X-IronPort-AV: E=McAfee;i="6600,9927,10783"; a="434532836"
X-IronPort-AV: E=Sophos;i="6.01,234,1684825200"; d="scan'208";a="434532836"
Received: from orsmga001.jf.intel.com ([10.7.209.18])
 by orsmga105.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 27 Jul 2023 02:09:01 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10783"; a="762101207"
X-IronPort-AV: E=Sophos;i="6.01,234,1684825200"; d="scan'208";a="762101207"
Received: from jlenehan-mobl1.ger.corp.intel.com (HELO [10.213.228.208])
 ([10.213.228.208])
 by orsmga001-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 27 Jul 2023 02:09:00 -0700
Message-ID: <5221790e-d3f7-3677-ddc6-55b0c6e138e3@linux.intel.com>
Date: Thu, 27 Jul 2023 10:08:58 +0100
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.11.0
Content-Language: en-US
To: Kamil Konieczny <kamil.konieczny@linux.intel.com>,
 igt-dev@lists.freedesktop.org, Intel-gfx@lists.freedesktop.org,
 Rob Clark <robdclark@chromium.org>
References: <20230705163105.3804677-1-tvrtko.ursulin@linux.intel.com>
 <20230705163105.3804677-3-tvrtko.ursulin@linux.intel.com>
 <20230726170037.a5sghtawzm6mv2zc@kamilkon-desk1>
From: Tvrtko Ursulin <tvrtko.ursulin@linux.intel.com>
Organization: Intel Corporation UK Plc
In-Reply-To: <20230726170037.a5sghtawzm6mv2zc@kamilkon-desk1>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 8bit
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
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>


On 26/07/2023 18:00, Kamil Konieczny wrote:
> Hi Tvrtko,
> 
> On 2023-07-05 at 17:31:04 +0100, Tvrtko Ursulin wrote:
>> From: Tvrtko Ursulin <tvrtko.ursulin@intel.com>
>>
>> Define the storage structure and copy over memory data as parsed by the
>> fdinfo helpers.
>>
>> Signed-off-by: Tvrtko Ursulin <tvrtko.ursulin@intel.com>
>> Cc: Rob Clark <robdclark@chromium.org>
>> ---
>>   lib/igt_drm_clients.c | 31 +++++++++++++++++++++++++++++++
>>   lib/igt_drm_clients.h | 11 +++++++++++
>>   2 files changed, 42 insertions(+)
>>
>> diff --git a/lib/igt_drm_clients.c b/lib/igt_drm_clients.c
>> index fdea42752a81..0db5b64effea 100644
>> --- a/lib/igt_drm_clients.c
>> +++ b/lib/igt_drm_clients.c
>> @@ -103,6 +103,8 @@ igt_drm_client_update(struct igt_drm_client *c, unsigned int pid, char *name,
>>   			c->clients->max_name_len = len;
>>   	}
>>   
>> +	/* Engines */
>> +
>>   	c->last_runtime = 0;
>>   	c->total_runtime = 0;
>>   
>> @@ -118,6 +120,13 @@ igt_drm_client_update(struct igt_drm_client *c, unsigned int pid, char *name,
>>   		c->last[i] = info->busy[i];
>>   	}
>>   
>> +	/* Memory regions */
>> +	for (i = 0; i <= c->regions->max_region_id; i++) {
>> +		assert(i < ARRAY_SIZE(info->region_mem));
>> +
>> +		c->memory[i] = info->region_mem[i];
>> +	}
>> +
>>   	c->samples++;
>>   	c->status = IGT_DRM_CLIENT_ALIVE;
>>   }
>> @@ -154,6 +163,8 @@ igt_drm_client_add(struct igt_drm_clients *clients,
>>   	c->id = info->id;
>>   	c->drm_minor = drm_minor;
>>   	c->clients = clients;
>> +
>> +	/* Engines */
>>   	c->engines = malloc(sizeof(*c->engines));
>>   	assert(c->engines);
>>   	memset(c->engines, 0, sizeof(*c->engines));
>> @@ -178,6 +189,26 @@ igt_drm_client_add(struct igt_drm_clients *clients,
>>   	c->last = calloc(c->engines->max_engine_id + 1, sizeof(c->last));
>>   	assert(c->val && c->last);
>>   
>> +	/* Memory regions */
>> +	c->regions = malloc(sizeof(*c->regions));
>> +	assert(c->regions);
>> +	memset(c->regions, 0, sizeof(*c->regions));
>> +	c->regions->names = calloc(info->last_region_index + 1,
>> +				   sizeof(*c->regions->names));
>> +	assert(c->regions->names);
>> +
>> +	for (i = 0; i <= info->last_region_index; i++) {
>> +		if (!info->region_names[i])
> 
> This do not compile:
> ../lib/igt_drm_clients.c:201:21: error: the comparison will always evaluate as ‘true’ for the address of ‘region_names’ will never be NULL [-Werror=address]
>    201 |                 if (!info->region_names[i])
>        |                     ^
> In file included from ../lib/igt_drm_clients.h:11,
>                   from ../lib/igt_drm_clients.c:20:
> ../lib/igt_drm_fdinfo.h:57:14: note: ‘region_names’ declared here
>     57 |         char region_names[DRM_CLIENT_FDINFO_MAX_REGIONS][256];
>        |              ^~~~~~~~~~~~
> 
> did you mean:
> 
> 		if (!info->region_names[i][0])

Yes. But it's odd.. I can see the error today. But back then I built the 
thing, ran it, collected the screenshot for the cover letter. Oh well a 
mystery. Fixed now, thanks!

Regards,

Tvrtko

> 
> Regards,
> Kamil
> 
>> +			continue;
>> +
>> +		c->regions->names[i] = strdup(info->region_names[i]);
>> +		assert(c->regions->names[i]);
>> +		c->regions->num_regions++;
>> +		c->regions->max_region_id = i;
>> +	}
>> +	c->memory = calloc(c->regions->max_region_id + 1, sizeof(*c->memory));
>> +	assert(c->memory);
>> +
>>   	igt_drm_client_update(c, pid, name, info);
>>   }
>>   
>> diff --git a/lib/igt_drm_clients.h b/lib/igt_drm_clients.h
>> index ed795c193986..07bd236d43bf 100644
>> --- a/lib/igt_drm_clients.h
>> +++ b/lib/igt_drm_clients.h
>> @@ -8,6 +8,8 @@
>>   
>>   #include <stdint.h>
>>   
>> +#include "lib/igt_drm_fdinfo.h"
>> +
>>   /**
>>    * SECTION:igt_drm_clients
>>    * @short_description: Parsing driver exposed fdinfo to track DRM clients
>> @@ -39,12 +41,20 @@ struct igt_drm_client_engines {
>>   	char **names; /* Array of engine names, either auto-detected or from the passed in engine map. */
>>   };
>>   
>> +struct igt_drm_client_regions {
>> +	unsigned int num_regions; /* Number of discovered memory_regions. */
>> +	unsigned int max_region_id; /* Largest memory region index discovered.
>> +				       (Can differ from num_regions - 1 when using the region map facility.) */
>> +	char **names; /* Array of region names, either auto-detected or from the passed in region map. */
>> +};
>> +
>>   struct igt_drm_clients;
>>   
>>   struct igt_drm_client {
>>   	struct igt_drm_clients *clients; /* Owning list. */
>>   
>>   	enum igt_drm_client_status status;
>> +	struct igt_drm_client_regions *regions; /* Memory regions present in this client, to map with memory usage. */
>>   	struct igt_drm_client_engines *engines; /* Engines used by this client, to map with busynees data. */
>>   	unsigned int id; /* DRM client id from fdinfo. */
>>   	unsigned int drm_minor; /* DRM minor of this client. */
>> @@ -57,6 +67,7 @@ struct igt_drm_client {
>>   	unsigned long last_runtime; /* Aggregate busyness on all engines since previous scan. */
>>   	unsigned long *val; /* Array of engine busyness data, relative to previous scan. */
>>   	uint64_t *last; /* Array of engine busyness data as parsed from fdinfo. */
>> +	struct drm_client_meminfo *memory; /* Array of region memory utilisation as parsed from fdinfo. */
>>   };
>>   
>>   struct igt_drm_clients {
>> -- 
>> 2.39.2
>>
