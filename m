Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 40224617B60
	for <lists+intel-gfx@lfdr.de>; Thu,  3 Nov 2022 12:10:25 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 6616910E5D5;
	Thu,  3 Nov 2022 11:10:21 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 4969A10E27B;
 Thu,  3 Nov 2022 11:10:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1667473816; x=1699009816;
 h=message-id:date:mime-version:subject:to:cc:references:
 from:in-reply-to:content-transfer-encoding;
 bh=Yv4LiiihQ7pIqmGp8CNqByzc0ZKbZc6mLhmgvBakka8=;
 b=iIHBIEWkQ1PyyBwvbXjRWmq8wa/qy4ggZ5jIO3D98+qxqawgmC6wbwS8
 jpedFMs6TNP1gpMFSZX99GE3ebhSty6hKPnKXDCNYkx6GDAPjyCtB9XSy
 hBAb0rVjQLeBM/204zbMNfKz5p2wnDiXaq82qLPFlaL0qmam0iIPafjIX
 kF0bUyWVgjv6gyzXzq3a3MtjXhy/+PIrPlD+G4EkMF0zQlgySDsSOMd7x
 fjFTj0ga8+l/aPmm/Ubzyw/YEV36AzLBaOzj2OfyF3UTwbVEE1koQ1Pjl
 8K7lMgJeQ2qgR8t8N+rSWXshWTCJPpalZAGcsukkgnCTluSKKx3vXUDT4 A==;
X-IronPort-AV: E=McAfee;i="6500,9779,10519"; a="336345004"
X-IronPort-AV: E=Sophos;i="5.95,235,1661842800"; d="scan'208";a="336345004"
Received: from orsmga001.jf.intel.com ([10.7.209.18])
 by fmsmga101.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 03 Nov 2022 04:10:15 -0700
X-IronPort-AV: E=McAfee;i="6500,9779,10519"; a="667930363"
X-IronPort-AV: E=Sophos;i="5.95,235,1661842800"; d="scan'208";a="667930363"
Received: from nirmoyda-mobl.ger.corp.intel.com (HELO [10.249.42.177])
 ([10.249.42.177])
 by orsmga001-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 03 Nov 2022 04:10:14 -0700
Message-ID: <41f5ad21-9667-e678-f6a6-3b924e398152@linux.intel.com>
Date: Thu, 3 Nov 2022 12:10:12 +0100
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:102.0) Gecko/20100101
 Thunderbird/102.4.1
Content-Language: en-US
To: Matthew Auld <matthew.auld@intel.com>, igt-dev@lists.freedesktop.org
References: <20221102150500.227161-1-matthew.auld@intel.com>
From: "Das, Nirmoy" <nirmoy.das@linux.intel.com>
In-Reply-To: <20221102150500.227161-1-matthew.auld@intel.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit
Subject: Re: [Intel-gfx] [igt-dev] [PATCH i-g-t] tests/i915/module_load:
 restore gem_sanitycheck for discrete
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
Cc: intel-gfx@lists.freedesktop.org,
 Janga Rahul Kumar <janga.rahul.kumar@intel.com>
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

Reviewed-by: Nirmoy.das@intel.com

On 11/2/2022 4:05 PM, Matthew Auld wrote:
> This looks to be recently broken in: 5389b3f3
> ("tests/i915/i915_module_load: Use GEM_BUSY instead of SET_CACHE for
> sanity check").
>
> Which fails on discrete platforms, since we switched over to the
> gem_busy ioctl, from the set_caching ioctl, which no longer gives
> -ENODEV as the expected error.
>
> Signed-off-by: Matthew Auld <matthew.auld@intel.com>
> Cc: Janga Rahul Kumar <janga.rahul.kumar@intel.com>
> Cc: Priyanka Dandamudi <priyanka.dandamudi@intel.com>
> ---
>   tests/i915/i915_module_load.c | 2 +-
>   1 file changed, 1 insertion(+), 1 deletion(-)
>
> diff --git a/tests/i915/i915_module_load.c b/tests/i915/i915_module_load.c
> index eebb3167..d3a86b11 100644
> --- a/tests/i915/i915_module_load.c
> +++ b/tests/i915/i915_module_load.c
> @@ -228,7 +228,7 @@ static void gem_sanitycheck(void)
>   {
>   	struct drm_i915_gem_busy args = {};
>   	int i915 = __drm_open_driver(DRIVER_INTEL);
> -	int expected = gem_has_lmem(i915) ? -ENODEV : -ENOENT;
> +	int expected = -ENOENT;
>   	int err;
>   
>   	err = 0;
