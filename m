Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id BD8A44F8582
	for <lists+intel-gfx@lfdr.de>; Thu,  7 Apr 2022 19:06:31 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id BCF4E10EBB7;
	Thu,  7 Apr 2022 17:06:29 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga05.intel.com (mga05.intel.com [192.55.52.43])
 by gabe.freedesktop.org (Postfix) with ESMTPS id EC84410EBB7;
 Thu,  7 Apr 2022 17:06:28 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1649351188; x=1680887188;
 h=message-id:date:mime-version:subject:to:cc:references:
 from:in-reply-to;
 bh=QC/PsDNvpmZx8XlUZ+4mTM4TpiXQcFarI5jExrSUEaw=;
 b=Pygf+v3vl+AxKpTgUJKDCg9Q8HvY2BKNIrk//78OxbMo7+iL3IixHPXP
 c3ThTFgYr7UqA3OtRCwYGNPE78lw780C+ygGQWZZUQn/RJe38exKzNx7p
 BoobMuvaiOMA7NxgfPKIgussuWOaSqkRnQ+2V6GiU/YC/FqfDcpzs+9Fh
 szDbi2lFedswHZPjRYdRU/Up5M1fAsYZRRtzilG7bHU6AVx6B68UWZVYr
 YupqDTJF/sXI+bmpEoN0/Fa2AjbwljXh9DTQKGQESnrBGc+ie0UuVnfps
 W64IWgDs9ugquqYwpbjhLa2J4hHUqAIItdrgLXeNe4TZe5hz/oF4B9Zvh A==;
X-IronPort-AV: E=McAfee;i="6400,9594,10310"; a="347825477"
X-IronPort-AV: E=Sophos;i="5.90,242,1643702400"; 
 d="scan'208,217";a="347825477"
Received: from orsmga007.jf.intel.com ([10.7.209.58])
 by fmsmga105.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 07 Apr 2022 10:06:28 -0700
X-IronPort-AV: E=Sophos;i="5.90,242,1643702400"; 
 d="scan'208,217";a="550150306"
Received: from nirmoyda-mobl.ger.corp.intel.com (HELO [10.252.51.6])
 ([10.252.51.6])
 by orsmga007-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 07 Apr 2022 10:06:26 -0700
Content-Type: multipart/alternative;
 boundary="------------0L0CgOOiuFLZ0uRNefopYQ8x"
Message-ID: <2a1deba4-28cd-f0f8-01c5-906f44142c03@linux.intel.com>
Date: Thu, 7 Apr 2022 19:06:25 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:91.0) Gecko/20100101
 Thunderbird/91.7.0
Content-Language: en-US
To: Matthew Auld <matthew.auld@intel.com>, intel-gfx@lists.freedesktop.org
References: <20220407110608.1184820-1-matthew.auld@intel.com>
 <20220407110608.1184820-2-matthew.auld@intel.com>
From: "Das, Nirmoy" <nirmoy.das@linux.intel.com>
In-Reply-To: <20220407110608.1184820-2-matthew.auld@intel.com>
Subject: Re: [Intel-gfx] [PATCH 2/2] drm/i915/buddy: sanity check the size
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
--------------0L0CgOOiuFLZ0uRNefopYQ8x
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 8bit

|Reviewed-by: Nirmoy Das <nirmoy.das@intel.com>|

On 4/7/2022 1:06 PM, Matthew Auld wrote:
> Ensure we check that the size is compatible with the requested
> page_size. For tiny objects that are automatically annotated with
> TTM_PL_FLAG_CONTIGUOUS(since they fit within a single page), we
> currently end up silently overriding the min_page_size, which ends up
> hiding bugs elsewhere.
>
> Signed-off-by: Matthew Auld<matthew.auld@intel.com>
> Cc: Thomas Hellström<thomas.hellstrom@linux.intel.com>
> Cc: Nirmoy Das<nirmoy.das@linux.intel.com>
> ---
>   drivers/gpu/drm/i915/i915_ttm_buddy_manager.c | 1 +
>   1 file changed, 1 insertion(+)
>
> diff --git a/drivers/gpu/drm/i915/i915_ttm_buddy_manager.c b/drivers/gpu/drm/i915/i915_ttm_buddy_manager.c
> index 8e4e3f72c1ef..a5109548abc0 100644
> --- a/drivers/gpu/drm/i915/i915_ttm_buddy_manager.c
> +++ b/drivers/gpu/drm/i915/i915_ttm_buddy_manager.c
> @@ -70,6 +70,7 @@ static int i915_ttm_buddy_man_alloc(struct ttm_resource_manager *man,
>   		min_page_size = bo->page_alignment << PAGE_SHIFT;
>   
>   	GEM_BUG_ON(min_page_size < mm->chunk_size);
> +	GEM_BUG_ON(!IS_ALIGNED(size, min_page_size));
>   
>   	if (place->fpfn + bman_res->base.num_pages != place->lpfn &&
>   	    place->flags & TTM_PL_FLAG_CONTIGUOUS) {
--------------0L0CgOOiuFLZ0uRNefopYQ8x
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: 8bit

<html>
  <head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
  </head>
  <body>
    <pre class="moz-quote-pre" wrap=""><code style="padding: 0px; tab-size: 8;" class="hljs diff language-diff">Reviewed-by: Nirmoy Das <a class="moz-txt-link-rfc2396E" href="mailto:nirmoy.das@intel.com">&lt;nirmoy.das@intel.com&gt;</a></code></pre>
    <div class="moz-cite-prefix">On 4/7/2022 1:06 PM, Matthew Auld
      wrote:<br>
    </div>
    <blockquote type="cite"
      cite="mid:20220407110608.1184820-2-matthew.auld@intel.com">
      <pre class="moz-quote-pre" wrap="">Ensure we check that the size is compatible with the requested
page_size. For tiny objects that are automatically annotated with
TTM_PL_FLAG_CONTIGUOUS(since they fit within a single page), we
currently end up silently overriding the min_page_size, which ends up
hiding bugs elsewhere.

Signed-off-by: Matthew Auld <a class="moz-txt-link-rfc2396E" href="mailto:matthew.auld@intel.com">&lt;matthew.auld@intel.com&gt;</a>
Cc: Thomas Hellström <a class="moz-txt-link-rfc2396E" href="mailto:thomas.hellstrom@linux.intel.com">&lt;thomas.hellstrom@linux.intel.com&gt;</a>
Cc: Nirmoy Das <a class="moz-txt-link-rfc2396E" href="mailto:nirmoy.das@linux.intel.com">&lt;nirmoy.das@linux.intel.com&gt;</a>
---
 drivers/gpu/drm/i915/i915_ttm_buddy_manager.c | 1 +
 1 file changed, 1 insertion(+)

diff --git a/drivers/gpu/drm/i915/i915_ttm_buddy_manager.c b/drivers/gpu/drm/i915/i915_ttm_buddy_manager.c
index 8e4e3f72c1ef..a5109548abc0 100644
--- a/drivers/gpu/drm/i915/i915_ttm_buddy_manager.c
+++ b/drivers/gpu/drm/i915/i915_ttm_buddy_manager.c
@@ -70,6 +70,7 @@ static int i915_ttm_buddy_man_alloc(struct ttm_resource_manager *man,
 		min_page_size = bo-&gt;page_alignment &lt;&lt; PAGE_SHIFT;
 
 	GEM_BUG_ON(min_page_size &lt; mm-&gt;chunk_size);
+	GEM_BUG_ON(!IS_ALIGNED(size, min_page_size));
 
 	if (place-&gt;fpfn + bman_res-&gt;base.num_pages != place-&gt;lpfn &amp;&amp;
 	    place-&gt;flags &amp; TTM_PL_FLAG_CONTIGUOUS) {
</pre>
    </blockquote>
  </body>
</html>

--------------0L0CgOOiuFLZ0uRNefopYQ8x--
