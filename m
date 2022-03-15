Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 331E84D9A01
	for <lists+intel-gfx@lfdr.de>; Tue, 15 Mar 2022 12:09:01 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 4691310E38B;
	Tue, 15 Mar 2022 11:08:58 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
 by gabe.freedesktop.org (Postfix) with ESMTPS id BE81C10E38B;
 Tue, 15 Mar 2022 11:08:57 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1647342537; x=1678878537;
 h=message-id:date:mime-version:subject:to:cc:references:
 from:in-reply-to;
 bh=YDKntoKDtJsPvUhWRVQc77Q2Fz4Q4Hp38TkXHid8174=;
 b=MsfkB8bEmVRKNmkCD//iaRRk5dqREq9bhPnsaLZad6MCW9cAYj9g7+Zw
 NMnewfxfOBtqtJJRsQmZ+fdJBU/mD4u/ZfOdcIgRPJ55OwZwOVAs3MMM2
 27gvrgPektPP673ACSLKotJvrEmMUyUiVZj5MZWiLc2jDm03CO+4BynMs
 2ofOMoSb6tZMdImdTzSJ0FaIamtZejsDw66Np5QUljG/HnilC8QTdByRd
 xDQeQ8OEYreVCeZS8jIRxh/Eh2+COBkHboI7RjjtjCHVxDbq7frS/qOlB
 8cBUU1sKiFI3OtfmTLukuQVKaeccJpjgIMC5UsVVngzk7VT0BAKEeJa9K A==;
X-IronPort-AV: E=McAfee;i="6200,9189,10286"; a="243723355"
X-IronPort-AV: E=Sophos;i="5.90,183,1643702400"; 
 d="scan'208,217";a="243723355"
Received: from orsmga008.jf.intel.com ([10.7.209.65])
 by orsmga101.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 15 Mar 2022 04:08:56 -0700
X-IronPort-AV: E=Sophos;i="5.90,183,1643702400"; 
 d="scan'208,217";a="556876250"
Received: from nirmoyda-mobl.ger.corp.intel.com (HELO [10.252.35.121])
 ([10.252.35.121])
 by orsmga008-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 15 Mar 2022 04:08:55 -0700
Content-Type: multipart/alternative;
 boundary="------------zTVpaDF8espvwk7rIYNBt26B"
Message-ID: <99160b7b-130b-efe7-e9d5-1decc36017b8@linux.intel.com>
Date: Tue, 15 Mar 2022 12:08:53 +0100
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:91.0) Gecko/20100101
 Thunderbird/91.7.0
Content-Language: en-US
To: Matthew Auld <matthew.auld@intel.com>, intel-gfx@lists.freedesktop.org
References: <20220314112837.352931-1-matthew.auld@intel.com>
 <20220314112837.352931-8-matthew.auld@intel.com>
From: "Das, Nirmoy" <nirmoy.das@linux.intel.com>
In-Reply-To: <20220314112837.352931-8-matthew.auld@intel.com>
Subject: Re: [Intel-gfx] [PATCH v3 7/7] drm/i915: fixup the initial fb base
 on DGFX
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
Cc: =?UTF-8?Q?Thomas_Hellstr=c3=b6m?= <thomas.hellstrom@linux.intel.com>,
 dri-devel@lists.freedesktop.org
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

This is a multi-part message in MIME format.
--------------zTVpaDF8espvwk7rIYNBt26B
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 8bit

|This seems more natural to me than the previous version. Acked-by: 
Nirmoy Das <nirmoy.das@linux.intel.com> |

Nirmoy

On 14/03/2022 12:28, Matthew Auld wrote:
> On integrated it looks like the GGTT base should always 1:1 maps to
> somewhere within DSM. On discrete the base seems to be pre-programmed with
> a normal lmem address, and is not 1:1 mapped with the base address. On
> such devices probe the lmem address directly from the PTE.
>
> v2(Ville):
>    - The base is actually the pre-programmed GGTT address, which is then
>      meant to 1:1 map to somewhere inside dsm. In the case of dgpu the
>      base looks to just be some offset within lmem, but this also happens
>      to be the exact dsm start, on dg1. Therefore we should only need to
>      fudge the physical address, before allocating from stolen.
>    - Bail if it's not located in dsm.
> v3:
>    - Scratch that. There doesn't seem to be any relationship with the
>      base and PTE address, on at least DG1. Let's instead just grab the
>      lmem address from the PTE itself.
>
> Signed-off-by: Matthew Auld<matthew.auld@intel.com>
> Cc: Thomas Hellström<thomas.hellstrom@linux.intel.com>
> Cc: Ville Syrjälä<ville.syrjala@linux.intel.com>
> Cc: Nirmoy Das<nirmoy.das@linux.intel.com>
> ---
>   .../drm/i915/display/intel_plane_initial.c    | 50 ++++++++++++++++---
>   1 file changed, 44 insertions(+), 6 deletions(-)
>
> diff --git a/drivers/gpu/drm/i915/display/intel_plane_initial.c b/drivers/gpu/drm/i915/display/intel_plane_initial.c
> index f797fcef18fc..7979929bb632 100644
> --- a/drivers/gpu/drm/i915/display/intel_plane_initial.c
> +++ b/drivers/gpu/drm/i915/display/intel_plane_initial.c
> @@ -47,17 +47,55 @@ static struct i915_vma *
>   initial_plane_vma(struct drm_i915_private *i915,
>   		  struct intel_initial_plane_config *plane_config)
>   {
> -	struct intel_memory_region *mem = i915->mm.stolen_region;
> +	struct intel_memory_region *mem;
>   	struct drm_i915_gem_object *obj;
>   	struct i915_vma *vma;
> +	resource_size_t phys_base;
>   	u32 base, size;
>   	u64 pinctl;
>   
> -	if (!mem || plane_config->size == 0)
> +	if (plane_config->size == 0)
> +		return NULL;
> +
> +	base = round_down(plane_config->base, I915_GTT_MIN_ALIGNMENT);
> +	if (IS_DGFX(i915)) {
> +		gen8_pte_t __iomem *gte = to_gt(i915)->ggtt->gsm;
> +		gen8_pte_t pte;
> +
> +		gte += base / I915_GTT_PAGE_SIZE;
> +
> +		pte = ioread64(gte);
> +		if (!(pte & GEN12_GGTT_PTE_LM)) {
> +			drm_err(&i915->drm,
> +				"Initial plane programming missing PTE_LM bit\n");
> +			return NULL;
> +		}
> +
> +		phys_base = pte & I915_GTT_PAGE_MASK;
> +		mem = i915->mm.regions[INTEL_REGION_LMEM];
> +
> +		/*
> +		 * We don't currently expect this to ever be placed in the
> +		 * stolen portion.
> +		 */
> +		if (phys_base >= resource_size(&mem->region)) {
> +			drm_err(&i915->drm,
> +				"Initial plane programming using invalid range, phys_base=%pa\n",
> +				&phys_base);
> +			return NULL;
> +		}
> +
> +		drm_dbg(&i915->drm,
> +			"Using phys_base=%pa, based on initial plane programming\n",
> +			&phys_base);
> +	} else {
> +		phys_base = base;
> +		mem = i915->mm.stolen_region;
> +	}
> +
> +	if (!mem)
>   		return NULL;
>   
> -	base = round_down(plane_config->base,
> -			  I915_GTT_MIN_ALIGNMENT);
>   	size = round_up(plane_config->base + plane_config->size,
>   			mem->min_page_size);
>   	size -= base;
> @@ -68,11 +106,11 @@ initial_plane_vma(struct drm_i915_private *i915,
>   	 * features.
>   	 */
>   	if (IS_ENABLED(CONFIG_FRAMEBUFFER_CONSOLE) &&
> +	    mem == i915->mm.stolen_region &&
>   	    size * 2 > i915->stolen_usable_size)
>   		return NULL;
>   
> -	obj = i915_gem_object_create_region_at(i915->mm.stolen_region,
> -					       base, size, 0);
> +	obj = i915_gem_object_create_region_at(mem, phys_base, size, 0);
>   	if (IS_ERR(obj))
>   		return NULL;
>   
--------------zTVpaDF8espvwk7rIYNBt26B
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: 8bit

<html>
  <head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
  </head>
  <body>
    <pre class="moz-quote-pre" wrap=""><code style="padding: 0px; tab-size: 8;" class="hljs diff language-diff">This seems more natural to me than the previous version.

Acked-by: Nirmoy Das <a class="moz-txt-link-rfc2396E" href="mailto:nirmoy.das@linux.intel.com">&lt;nirmoy.das@linux.intel.com&gt;</a>

</code></pre>
    <p>Nirmoy<br>
    </p>
    <div class="moz-cite-prefix">On 14/03/2022 12:28, Matthew Auld
      wrote:<br>
    </div>
    <blockquote type="cite"
      cite="mid:20220314112837.352931-8-matthew.auld@intel.com">
      <pre class="moz-quote-pre" wrap="">On integrated it looks like the GGTT base should always 1:1 maps to
somewhere within DSM. On discrete the base seems to be pre-programmed with
a normal lmem address, and is not 1:1 mapped with the base address. On
such devices probe the lmem address directly from the PTE.

v2(Ville):
  - The base is actually the pre-programmed GGTT address, which is then
    meant to 1:1 map to somewhere inside dsm. In the case of dgpu the
    base looks to just be some offset within lmem, but this also happens
    to be the exact dsm start, on dg1. Therefore we should only need to
    fudge the physical address, before allocating from stolen.
  - Bail if it's not located in dsm.
v3:
  - Scratch that. There doesn't seem to be any relationship with the
    base and PTE address, on at least DG1. Let's instead just grab the
    lmem address from the PTE itself.

Signed-off-by: Matthew Auld <a class="moz-txt-link-rfc2396E" href="mailto:matthew.auld@intel.com">&lt;matthew.auld@intel.com&gt;</a>
Cc: Thomas Hellström <a class="moz-txt-link-rfc2396E" href="mailto:thomas.hellstrom@linux.intel.com">&lt;thomas.hellstrom@linux.intel.com&gt;</a>
Cc: Ville Syrjälä <a class="moz-txt-link-rfc2396E" href="mailto:ville.syrjala@linux.intel.com">&lt;ville.syrjala@linux.intel.com&gt;</a>
Cc: Nirmoy Das <a class="moz-txt-link-rfc2396E" href="mailto:nirmoy.das@linux.intel.com">&lt;nirmoy.das@linux.intel.com&gt;</a>
---
 .../drm/i915/display/intel_plane_initial.c    | 50 ++++++++++++++++---
 1 file changed, 44 insertions(+), 6 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_plane_initial.c b/drivers/gpu/drm/i915/display/intel_plane_initial.c
index f797fcef18fc..7979929bb632 100644
--- a/drivers/gpu/drm/i915/display/intel_plane_initial.c
+++ b/drivers/gpu/drm/i915/display/intel_plane_initial.c
@@ -47,17 +47,55 @@ static struct i915_vma *
 initial_plane_vma(struct drm_i915_private *i915,
 		  struct intel_initial_plane_config *plane_config)
 {
-	struct intel_memory_region *mem = i915-&gt;mm.stolen_region;
+	struct intel_memory_region *mem;
 	struct drm_i915_gem_object *obj;
 	struct i915_vma *vma;
+	resource_size_t phys_base;
 	u32 base, size;
 	u64 pinctl;
 
-	if (!mem || plane_config-&gt;size == 0)
+	if (plane_config-&gt;size == 0)
+		return NULL;
+
+	base = round_down(plane_config-&gt;base, I915_GTT_MIN_ALIGNMENT);
+	if (IS_DGFX(i915)) {
+		gen8_pte_t __iomem *gte = to_gt(i915)-&gt;ggtt-&gt;gsm;
+		gen8_pte_t pte;
+
+		gte += base / I915_GTT_PAGE_SIZE;
+
+		pte = ioread64(gte);
+		if (!(pte &amp; GEN12_GGTT_PTE_LM)) {
+			drm_err(&amp;i915-&gt;drm,
+				"Initial plane programming missing PTE_LM bit\n");
+			return NULL;
+		}
+
+		phys_base = pte &amp; I915_GTT_PAGE_MASK;
+		mem = i915-&gt;mm.regions[INTEL_REGION_LMEM];
+
+		/*
+		 * We don't currently expect this to ever be placed in the
+		 * stolen portion.
+		 */
+		if (phys_base &gt;= resource_size(&amp;mem-&gt;region)) {
+			drm_err(&amp;i915-&gt;drm,
+				"Initial plane programming using invalid range, phys_base=%pa\n",
+				&amp;phys_base);
+			return NULL;
+		}
+
+		drm_dbg(&amp;i915-&gt;drm,
+			"Using phys_base=%pa, based on initial plane programming\n",
+			&amp;phys_base);
+	} else {
+		phys_base = base;
+		mem = i915-&gt;mm.stolen_region;
+	}
+
+	if (!mem)
 		return NULL;
 
-	base = round_down(plane_config-&gt;base,
-			  I915_GTT_MIN_ALIGNMENT);
 	size = round_up(plane_config-&gt;base + plane_config-&gt;size,
 			mem-&gt;min_page_size);
 	size -= base;
@@ -68,11 +106,11 @@ initial_plane_vma(struct drm_i915_private *i915,
 	 * features.
 	 */
 	if (IS_ENABLED(CONFIG_FRAMEBUFFER_CONSOLE) &amp;&amp;
+	    mem == i915-&gt;mm.stolen_region &amp;&amp;
 	    size * 2 &gt; i915-&gt;stolen_usable_size)
 		return NULL;
 
-	obj = i915_gem_object_create_region_at(i915-&gt;mm.stolen_region,
-					       base, size, 0);
+	obj = i915_gem_object_create_region_at(mem, phys_base, size, 0);
 	if (IS_ERR(obj))
 		return NULL;
 
</pre>
    </blockquote>
  </body>
</html>

--------------zTVpaDF8espvwk7rIYNBt26B--
