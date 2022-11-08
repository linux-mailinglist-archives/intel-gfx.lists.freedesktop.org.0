Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 47633620A4D
	for <lists+intel-gfx@lfdr.de>; Tue,  8 Nov 2022 08:37:06 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 1403C10E22F;
	Tue,  8 Nov 2022 07:37:02 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga17.intel.com (mga17.intel.com [192.55.52.151])
 by gabe.freedesktop.org (Postfix) with ESMTPS id E341E10E22F
 for <intel-gfx@lists.freedesktop.org>; Tue,  8 Nov 2022 07:36:57 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1667893017; x=1699429017;
 h=message-id:date:mime-version:subject:to:cc:references:
 from:in-reply-to:content-transfer-encoding;
 bh=9I6gNtNNs3sMx261J1whghCce5OrKpt64mMBlBn06xg=;
 b=ZjwYpE8iQcHjTUiCBIiCKNn11mVNC7RirX0cLXWqfy9t3CNUkBuuvBRd
 ner3nRUq938m/LyJoncHUNee4B0pE193aDO9QU2p2Pn8jy8buXo0icM4k
 8Uz9dK+t9SEkx5YHuggYKRYDn7jUy+XWHYEPjgtcHAfrPVt/ac46wrxlr
 j959eC8Olk3nvRpT3LH7qW5FMg27t3xfHZnALLtkq3lfceAWAC3eHLIAU
 0vNI392mIciiBgo7K7m4kBJmRJB4XVXZ0PL6gWJFSGWJpSUTP7+FYsJHc
 lUNkAvmVu9X3katWjhJkwq1/dGn+hCuYeyjW2mYgphD2H1iz4LOwmLZGS g==;
X-IronPort-AV: E=McAfee;i="6500,9779,10524"; a="291016932"
X-IronPort-AV: E=Sophos;i="5.96,147,1665471600"; d="scan'208";a="291016932"
Received: from orsmga002.jf.intel.com ([10.7.209.21])
 by fmsmga107.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 07 Nov 2022 23:36:57 -0800
X-IronPort-AV: E=McAfee;i="6500,9779,10524"; a="636238548"
X-IronPort-AV: E=Sophos;i="5.96,147,1665471600"; d="scan'208";a="636238548"
Received: from ahajda-mobl.ger.corp.intel.com (HELO [10.213.7.26])
 ([10.213.7.26])
 by orsmga002-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 07 Nov 2022 23:36:55 -0800
Message-ID: <5932beda-6f64-2164-acd6-8f1333279432@intel.com>
Date: Tue, 8 Nov 2022 08:36:52 +0100
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:102.0) Gecko/20100101
 Firefox/102.0 Thunderbird/102.4.2
Content-Language: en-US
To: Matthew Auld <matthew.auld@intel.com>, intel-gfx@lists.freedesktop.org
References: <20221107165414.56970-1-matthew.auld@intel.com>
 <20221107165414.56970-2-matthew.auld@intel.com>
From: Andrzej Hajda <andrzej.hajda@intel.com>
Organization: Intel Technology Poland sp. z o.o. - ul. Slowackiego 173, 80-298
 Gdansk - KRS 101882 - NIP 957-07-52-316
In-Reply-To: <20221107165414.56970-2-matthew.auld@intel.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit
Subject: Re: [Intel-gfx] [PATCH 2/2] drm/i915/ttm: add some sanity checks
 for lmem_userfault_list
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
Cc: Nirmoy Das <nirmoy.das@intel.com>, Rodrigo Vivi <rodrigo.vivi@intel.com>
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>



On 07.11.2022 17:54, Matthew Auld wrote:
> Rather than getting some hard to debug uaf, add some warns to hopefully
> catch issues with userfault_count being non-zero when destroying the
> object. Also if we somehow add an object to lmem_userfault_list that
> somehow doesn't map lmem.
>
> References: https://gitlab.freedesktop.org/drm/intel/-/issues/7469
> Signed-off-by: Matthew Auld <matthew.auld@intel.com>
> Cc: Anshuman Gupta <anshuman.gupta@intel.com>
> Cc: Rodrigo Vivi <rodrigo.vivi@intel.com>
> Cc: Andrzej Hajda <andrzej.hajda@intel.com>
> Cc: Nirmoy Das <nirmoy.das@intel.com>

Reviewed-by: Andrzej Hajda <andrzej.hajda@intel.com>

Regards
Andrzej
> ---
>   drivers/gpu/drm/i915/gem/i915_gem_ttm.c | 4 ++++
>   1 file changed, 4 insertions(+)
>
> diff --git a/drivers/gpu/drm/i915/gem/i915_gem_ttm.c b/drivers/gpu/drm/i915/gem/i915_gem_ttm.c
> index 9421dc4dc98f..2c8b2d5ae903 100644
> --- a/drivers/gpu/drm/i915/gem/i915_gem_ttm.c
> +++ b/drivers/gpu/drm/i915/gem/i915_gem_ttm.c
> @@ -1098,6 +1098,8 @@ static vm_fault_t vm_fault_ttm(struct vm_fault *vmf)
>   		spin_lock(&to_i915(obj->base.dev)->runtime_pm.lmem_userfault_lock);
>   		list_add(&obj->userfault_link, &to_i915(obj->base.dev)->runtime_pm.lmem_userfault_list);
>   		spin_unlock(&to_i915(obj->base.dev)->runtime_pm.lmem_userfault_lock);
> +
> +		GEM_WARN_ON(!i915_ttm_cpu_maps_iomem(bo->resource));
>   	}
>   
>   	if (wakeref & CONFIG_DRM_I915_USERFAULT_AUTOSUSPEND)
> @@ -1180,6 +1182,8 @@ static void i915_ttm_unmap_virtual(struct drm_i915_gem_object *obj)
>   		}
>   	}
>   
> +	GEM_WARN_ON(obj->userfault_count);
> +
>   	ttm_bo_unmap_virtual(i915_gem_to_ttm(obj));
>   
>   	if (wakeref)

