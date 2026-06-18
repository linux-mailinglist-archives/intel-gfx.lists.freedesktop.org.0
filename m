Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id FXJcH+I7NGqJSQYAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Thu, 18 Jun 2026 20:41:38 +0200
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 262866A2315
	for <lists+intel-gfx@lfdr.de>; Thu, 18 Jun 2026 20:41:38 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=ursulin.net header.s=google header.b=nJvCA8Lw;
	spf=pass (mail.lfdr.de: domain of intel-gfx-bounces@lists.freedesktop.org designates 131.252.210.177 as permitted sender) smtp.mailfrom=intel-gfx-bounces@lists.freedesktop.org;
	dmarc=none
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id BB23F10F3C1;
	Thu, 18 Jun 2026 18:41:33 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-wm1-f51.google.com (mail-wm1-f51.google.com
 [209.85.128.51])
 by gabe.freedesktop.org (Postfix) with ESMTPS id F017C10F3C1
 for <intel-gfx@lists.freedesktop.org>; Thu, 18 Jun 2026 18:41:31 +0000 (UTC)
Received: by mail-wm1-f51.google.com with SMTP id
 5b1f17b1804b1-490ac357c55so11901975e9.1
 for <intel-gfx@lists.freedesktop.org>; Thu, 18 Jun 2026 11:41:31 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=ursulin.net; s=google; t=1781808090; x=1782412890; darn=lists.freedesktop.org;
 h=content-transfer-encoding:in-reply-to:from:content-language
 :references:cc:to:subject:user-agent:mime-version:date:message-id
 :from:to:cc:subject:date:message-id:reply-to;
 bh=hFv3GlUYs5wNN+O537Q1dHtRqP7co1Grb9v+N2l5i1U=;
 b=nJvCA8LwULnFCPIMSmfuQ/dcmVk60Lq4tp1Z4O1Wkd57p76BCEb+SJbeoyfTjY3zwF
 a3YKs2IYjSqdp69f72pbnpJRpnea6LrQbuiwnxifPNu5BT9o72FuuRZUCaahkfDdojr4
 I6bY0UDiMDs0rZtwBq49Z9KfGzbG3PvEO/sQgDrOkVVMwPMrnBCjNuH7H1gUl1lASWOz
 OD3M5UizDBtspnlNI/3zhuewXmRa6riJiAuPq3EWS3FaJsGlVr0gqjchsKg748vMi6z4
 c5tOiiYKPFgkCuv1UDi8ZlGA3zJ4lECfHcjETiww6Q8O9Lt/A+LETA6aEi+w3ihC28On
 tTDw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20251104; t=1781808090; x=1782412890;
 h=content-transfer-encoding:in-reply-to:from:content-language
 :references:cc:to:subject:user-agent:mime-version:date:message-id
 :x-gm-gg:x-gm-message-state:from:to:cc:subject:date:message-id
 :reply-to;
 bh=hFv3GlUYs5wNN+O537Q1dHtRqP7co1Grb9v+N2l5i1U=;
 b=LPX4DBDOlZo2kH0DVPdvKn/Pgy1PL8aCPdNoHmkS4ygY/06IdbzQ0l6aqsqOhzHsvo
 AjMyBVvFK040kLalzLR5eRDAqfKqsQKy9hr3gOiKZT2Nmp23RjL0X+8d5zEMfhngaXys
 m19tKpcKYkdApq1vyOoRGNmtkOUEn+dcuL3iQ2euN+AlIYkYw7WGCAzgOlws95keJOCg
 9d3YhPBMdXEKy+if2NG2b2RpZlUo0jkYD7mDhQ0d0opcILwrpMsnHeYHLAEgNazESNWt
 szJIaSH/h8qzi7bAeBdBGyFPJUbACgeGmicdFvOU6oXg4KY1p7mjolQGnofJ/uO2GHu+
 w13A==
X-Forwarded-Encrypted: i=1;
 AFNElJ9z3m8M4QAYsrmVupWXhS+EfgnUWSn5t7tU1QS+W8ijklkkkH3kWX39YuGhho4+6+D0udwxmxbz9+8=@lists.freedesktop.org
X-Gm-Message-State: AOJu0YxANKyphBBbF2LreUrJPZ0enhD15cBgnvA7GjFPw74tO8+pz2LZ
 OeNI/EMvdcatGSXtlE0bFG5BO8mh6DGq7sYycUW7kkm/xVKXYby4VmGXcw2CW6xsasA=
X-Gm-Gg: AfdE7cmqFAk/qbEBvitrQ8GvkA7e/IWz3/CeweoTYIXNimKs26k1+4cwEz7ADhpczEc
 orVs7Y8TTR4/tEF0aLegrFUVJQczbyO8mwkEQFBLyDu5EkUyzQgaGPjkeEHcvmABwd9OUKHLrwL
 RV09xc2011W/SxdDMOd6HACmwprW//hfzts+tVIFzIl/rihLZXwwTyr3vJJN0Q+U4Aq+7wGXPEU
 +soI4RePq4He5cXufPG3n8mMsf1kP17BDw/xZ1uOHFJrjFkmbHTzH/CnNpJOuf9Lz9Giu4w3KNs
 wcBCfials7KoyikbxsE5S5By7hgT/kDjc9u225SauRkMPC0iCgX6rzf9ICfdiiKpwbnNwxacKcQ
 zeAILN6aA6EVGco16g7w2okJ9E2wfElae6HJJ4/LYh76Z44b+V5W2ZN8IJ6T+pUsjh2wE20sgQA
 MAHgifdfxO1K5iJ16HzeB6NSqynV8Aawy+fg==
X-Received: by 2002:a05:600c:1c1c:b0:492:1e36:552b with SMTP id
 5b1f17b1804b1-49240e7f307mr1905325e9.36.1781808089941; 
 Thu, 18 Jun 2026 11:41:29 -0700 (PDT)
Received: from [172.16.30.123] ([37.209.163.134])
 by smtp.gmail.com with ESMTPSA id
 ffacd0b85a97d-4650b76e7c9sm865703f8f.21.2026.06.18.11.41.28
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Thu, 18 Jun 2026 11:41:29 -0700 (PDT)
Message-ID: <1544040a-578f-41b0-9660-5a6f470f031f@ursulin.net>
Date: Thu, 18 Jun 2026 20:41:28 +0200
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH] drm/ttm: rename ttm_place::fpfn/lpfn to param1/param2
To: Arunpravin Paneer Selvam <Arunpravin.PaneerSelvam@amd.com>,
 christian.koenig@amd.com, dri-devel@lists.freedesktop.org,
 intel-gfx@lists.freedesktop.org, intel-xe@lists.freedesktop.org,
 amd-gfx@lists.freedesktop.org, nouveau@lists.freedesktop.org,
 linux-kernel@vger.kernel.org
Cc: alexander.deucher@amd.com,
 =?UTF-8?Q?Thomas_Hellstr=C3=B6m?= <thomas.hellstrom@linux.intel.com>,
 Matthew Auld <matthew.auld@intel.com>,
 Matthew Brost <matthew.brost@intel.com>
References: <20260618133908.2761908-1-Arunpravin.PaneerSelvam@amd.com>
Content-Language: en-GB
From: Tvrtko Ursulin <tursulin@ursulin.net>
In-Reply-To: <20260618133908.2761908-1-Arunpravin.PaneerSelvam@amd.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 8bit
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
X-Rspamd-Action: no action
X-Spamd-Result: default: False [-0.81 / 15.00];
	MAILLIST(-0.20)[mailman];
	R_DKIM_ALLOW(-0.20)[ursulin.net:s=google];
	R_SPF_ALLOW(-0.20)[+ip4:131.252.210.177:c];
	MIME_GOOD(-0.10)[text/plain];
	RWL_MAILSPIKE_GOOD(-0.10)[131.252.210.177:from];
	HAS_LIST_UNSUB(-0.01)[];
	DMARC_NA(0.00)[ursulin.net];
	FORGED_RECIPIENTS(0.00)[m:Arunpravin.PaneerSelvam@amd.com,m:christian.koenig@amd.com,m:dri-devel@lists.freedesktop.org,m:intel-xe@lists.freedesktop.org,m:amd-gfx@lists.freedesktop.org,m:nouveau@lists.freedesktop.org,m:linux-kernel@vger.kernel.org,m:alexander.deucher@amd.com,m:thomas.hellstrom@linux.intel.com,m:matthew.auld@intel.com,m:matthew.brost@intel.com,s:lists@lfdr.de];
	RCVD_COUNT_THREE(0.00)[4];
	FORGED_SENDER_MAILLIST(0.00)[];
	FORGED_SENDER(0.00)[tursulin@ursulin.net,intel-gfx-bounces@lists.freedesktop.org];
	RCPT_COUNT_TWELVE(0.00)[12];
	RCVD_TLS_LAST(0.00)[];
	MIME_TRACE(0.00)[0:+];
	ARC_NA(0.00)[];
	FORWARDED(0.00)[intel-gfx@lists.freedesktop.org];
	DKIM_TRACE(0.00)[ursulin.net:+];
	ASN(0.00)[asn:6366, ipnet:131.252.0.0/16, country:US];
	TO_DN_SOME(0.00)[];
	FORGED_SENDER_FORWARDING(0.00)[];
	PREVIOUSLY_DELIVERED(0.00)[intel-gfx@lists.freedesktop.org];
	FROM_NEQ_ENVFROM(0.00)[tursulin@ursulin.net,intel-gfx-bounces@lists.freedesktop.org];
	FROM_HAS_DN(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	ALIAS_RESOLVED(0.00)[];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	MID_RHS_MATCH_FROM(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TAGGED_RCPT(0.00)[intel-gfx];
	DBL_BLOCKED_OPENRESOLVER(0.00)[ursulin.net:dkim,ursulin.net:mid,ursulin.net:from_mime,intel.com:email,gabe.freedesktop.org:rdns,gabe.freedesktop.org:helo,lists.freedesktop.org:from_smtp,amd.com:email]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: 262866A2315


On 18/06/2026 15:39, Arunpravin Paneer Selvam wrote:
> The fpfn/lpfn fields in struct ttm_place were named after page frame
> numbers, but they are really just placement parameters passed to the
> backend resource manager. Rename them to the generic param1/param2
> and document that their interpretation is backend-defined. The VRAM
> range manager continues to treat them as the first and last valid
> page frame number, so behaviour is unchanged.
>
> This decouples the API from PFN/range-specific semantics so that
> these fields can be used more flexibly in the future (e.g.,
> mask-based or segment-aware placement constraints). No functional
> change.
>
> Suggested-by: Christian König <christian.koenig@amd.com>
> Cc: Christian König <christian.koenig@amd.com>
> Cc: Thomas Hellström <thomas.hellstrom@linux.intel.com>
> Cc: Matthew Auld <matthew.auld@intel.com>
> Cc: Matthew Brost <matthew.brost@intel.com>
> Signed-off-by: Arunpravin Paneer Selvam <Arunpravin.PaneerSelvam@amd.com>
> ---
>   drivers/gpu/drm/amd/amdgpu/amdgpu_gmc.c       | 16 +++---
>   drivers/gpu/drm/amd/amdgpu/amdgpu_gmc.h       |  4 +-
>   drivers/gpu/drm/amd/amdgpu/amdgpu_gtt_mgr.c   |  8 +--
>   drivers/gpu/drm/amd/amdgpu/amdgpu_object.c    | 46 +++++++--------
>   drivers/gpu/drm/amd/amdgpu/amdgpu_ttm.c       | 24 ++++----
>   drivers/gpu/drm/amd/amdgpu/amdgpu_uvd.c       |  4 +-
>   drivers/gpu/drm/amd/amdgpu/amdgpu_vce.c       | 16 +++---
>   drivers/gpu/drm/amd/amdgpu/amdgpu_vm.c        |  6 +-
>   drivers/gpu/drm/amd/amdgpu/amdgpu_vram_mgr.c  | 32 +++++------
>   drivers/gpu/drm/amd/amdkfd/kfd_svm.c          |  2 +-
>   .../gpu/drm/amd/ras/ras_mgr/amdgpu_ras_cmd.c  |  2 +-
>   drivers/gpu/drm/drm_gem_vram_helper.c         |  4 +-
>   drivers/gpu/drm/i915/gem/i915_gem_ttm.c       | 18 +++---
>   drivers/gpu/drm/i915/i915_ttm_buddy_manager.c | 56 +++++++++----------
>   drivers/gpu/drm/i915/intel_region_ttm.c       | 14 ++---
>   drivers/gpu/drm/loongson/lsdc_ttm.c           |  4 +-
>   drivers/gpu/drm/nouveau/nouveau_bo.c          | 22 ++++----
>   drivers/gpu/drm/nouveau/nouveau_mem.c         |  8 +--
>   drivers/gpu/drm/qxl/qxl_object.c              |  4 +-
>   drivers/gpu/drm/qxl/qxl_ttm.c                 |  4 +-
>   drivers/gpu/drm/radeon/radeon_object.c        | 28 +++++-----
>   drivers/gpu/drm/radeon/radeon_ttm.c           | 18 +++---
>   drivers/gpu/drm/radeon/radeon_uvd.c           |  8 +--
>   drivers/gpu/drm/ttm/tests/ttm_kunit_helpers.c | 16 +++---
>   drivers/gpu/drm/ttm/tests/ttm_mock_manager.c  |  8 +--
>   drivers/gpu/drm/ttm/ttm_bo_util.c             |  4 +-
>   drivers/gpu/drm/ttm/ttm_range_manager.c       | 18 +++---
>   drivers/gpu/drm/vmwgfx/vmwgfx_bo.c            | 30 +++++-----
>   drivers/gpu/drm/vmwgfx/vmwgfx_ttm_buffer.c    |  8 +--
>   drivers/gpu/drm/xe/xe_bo.c                    | 24 ++++----
>   drivers/gpu/drm/xe/xe_ttm_vram_mgr.c          | 40 ++++++-------
>   include/drm/ttm/ttm_placement.h               | 15 +++--
>   32 files changed, 259 insertions(+), 252 deletions(-)

<snip>
>   	if (unlikely(ret)) {
> @@ -124,8 +124,8 @@ static bool ttm_range_man_intersects(struct ttm_resource_manager *man,
>   	u32 num_pages = PFN_UP(size);
>   
>   	/* Don't evict BOs outside of the requested placement range */
> -	if (place->fpfn >= (node->start + num_pages) ||
> -	    (place->lpfn && place->lpfn <= node->start))
> +	if (place->param1 >= (node->start + num_pages) ||
> +	    (place->param2 && place->param2 <= node->start))
>   		return false;
>   
>   	return true;
> @@ -139,8 +139,8 @@ static bool ttm_range_man_compatible(struct ttm_resource_manager *man,
>   	struct drm_mm_node *node = &to_ttm_range_mgr_node(res)->mm_nodes[0];
>   	u32 num_pages = PFN_UP(size);
>   
> -	if (node->start < place->fpfn ||
> -	    (place->lpfn && (node->start + num_pages) > place->lpfn))
> +	if (node->start < place->param1 ||
> +	    (place->param2 && (node->start + num_pages) > place->param2))
>   		return false;
>   

Not very readable ie. good for ease of maintenance - how about an union? 
Would also avoid having to touch all the drivers.

Something like:

union {
     struct {
         u64 fpfn;
         u64 lpfn;
     };
     u64 drvparam[2];
};

Regards,

Tvrtko
> diff --git a/include/drm/ttm/ttm_placement.h b/include/drm/ttm/ttm_placement.h
> index ab2639e42c54..2c38674be102 100644
> --- a/include/drm/ttm/ttm_placement.h
> +++ b/include/drm/ttm/ttm_placement.h
> @@ -73,16 +73,23 @@
>   /**
>    * struct ttm_place
>    *
> - * @fpfn:	first valid page frame number to put the object
> - * @lpfn:	last valid page frame number to put the object
> + * @param1:	generic placement parameter, interpretation depends on the
> + *		backend resource manager. For range-based managers (e.g. the
> + *		VRAM range manager, the buddy managers in amdgpu/i915/xe and
> + *		the TTM range manager) this is the start of the allowed range,
> + *		typically expressed as a page frame number.
> + * @param2:	generic placement parameter, interpretation depends on the
> + *		backend resource manager. For range-based managers this is the
> + *		exclusive end of the allowed range (a value of 0 means
> + *		"no upper bound").
>    * @mem_type:	One of TTM_PL_* where the resource should be allocated from.
>    * @flags:	memory domain and caching flags for the object
>    *
>    * Structure indicating a possible place to put an object.
>    */
>   struct ttm_place {
> -	uint64_t	fpfn;
> -	uint64_t	lpfn;
> +	uint64_t	param1;
> +	uint64_t	param2;
>   	uint32_t	mem_type;
>   	uint32_t	flags;
>   };
>
>
