Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 20008289B24
	for <lists+intel-gfx@lfdr.de>; Fri,  9 Oct 2020 23:43:57 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 9ABC26EE21;
	Fri,  9 Oct 2020 21:43:54 +0000 (UTC)
X-Original-To: Intel-GFX@lists.freedesktop.org
Delivered-To: Intel-GFX@lists.freedesktop.org
Received: from mga18.intel.com (mga18.intel.com [134.134.136.126])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 633736EE21
 for <Intel-GFX@lists.freedesktop.org>; Fri,  9 Oct 2020 21:43:53 +0000 (UTC)
IronPort-SDR: 23zMHdP6Ooy7DsnNZilpbjq3rcZVSwT5FHzheLjsrjTw8NCPlfEtPdhyeiHSKgjmwuyL2oL/yo
 If14MWcjyOTQ==
X-IronPort-AV: E=McAfee;i="6000,8403,9769"; a="153373221"
X-IronPort-AV: E=Sophos;i="5.77,356,1596524400"; d="scan'208";a="153373221"
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga005.jf.intel.com ([10.7.209.41])
 by orsmga106.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 09 Oct 2020 14:43:52 -0700
IronPort-SDR: 4NYKH3sIKtwnk45naPf9azjznBg0JYnljP0bWObVaN7xlnCbHMCYMTsIKy/2MIIoCkMiOW3RKJ
 P34yB2ms234g==
X-IronPort-AV: E=Sophos;i="5.77,356,1596524400"; d="scan'208";a="529084262"
Received: from dceraolo-mobl.amr.corp.intel.com (HELO [10.212.197.87])
 ([10.212.197.87])
 by orsmga005-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 09 Oct 2020 14:43:51 -0700
To: John.C.Harrison@Intel.com, Intel-GFX@Lists.FreeDesktop.Org
References: <20200925232637.1968039-1-John.C.Harrison@Intel.com>
 <20200925232637.1968039-4-John.C.Harrison@Intel.com>
From: Daniele Ceraolo Spurio <daniele.ceraolospurio@intel.com>
Message-ID: <c5477b1a-2827-2499-ac54-b3f0b57314fa@intel.com>
Date: Fri, 9 Oct 2020 14:43:42 -0700
User-Agent: Mozilla/5.0 (Windows NT 10.0; WOW64; rv:68.0) Gecko/20100101
 Thunderbird/68.12.1
MIME-Version: 1.0
In-Reply-To: <20200925232637.1968039-4-John.C.Harrison@Intel.com>
Content-Language: en-US
Subject: Re: [Intel-gfx] [PATCH 3/4] drm/i915/guc: Clear pointers on free
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
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>



On 9/25/2020 4:26 PM, John.C.Harrison@Intel.com wrote:
> From: John Harrison <John.C.Harrison@Intel.com>
>
> Was hitting null pointers and similar issues when running various
> module load/unload and inject failure type tests. So clear those
> pointers down when the objects have been de-allocated.

Had a quick chat with John about the incorrect pointer access, since the 
cleanup wouldn't fix the fact we're accessing a pointer after the 
relevant object was deallocated. None of the errors he hit are actually 
in the tree at the moment, the cleanup is just to make the errors 
slightly clearer in case we accidentally introduce new ones.
With a reworded commit message to better explain the above:

Reviewed-by: Daniele Ceraolo Spurio <daniele.ceraolospurio@intel.com>

Daniele

> Signed-off-by: John Harrison <John.C.Harrison@Intel.com>
> ---
>   drivers/gpu/drm/i915/gt/uc/intel_guc_ads.c | 1 +
>   drivers/gpu/drm/i915/gt/uc/intel_guc_ct.c  | 1 +
>   2 files changed, 2 insertions(+)
>
> diff --git a/drivers/gpu/drm/i915/gt/uc/intel_guc_ads.c b/drivers/gpu/drm/i915/gt/uc/intel_guc_ads.c
> index 7950d28beb8c..5212ff844292 100644
> --- a/drivers/gpu/drm/i915/gt/uc/intel_guc_ads.c
> +++ b/drivers/gpu/drm/i915/gt/uc/intel_guc_ads.c
> @@ -220,6 +220,7 @@ int intel_guc_ads_create(struct intel_guc *guc)
>   void intel_guc_ads_destroy(struct intel_guc *guc)
>   {
>   	i915_vma_unpin_and_release(&guc->ads_vma, I915_VMA_RELEASE_MAP);
> +	guc->ads_blob = NULL;
>   }
>   
>   static void guc_ads_private_data_reset(struct intel_guc *guc)
> diff --git a/drivers/gpu/drm/i915/gt/uc/intel_guc_ct.c b/drivers/gpu/drm/i915/gt/uc/intel_guc_ct.c
> index 11742fca0e9e..fa9e048cc65f 100644
> --- a/drivers/gpu/drm/i915/gt/uc/intel_guc_ct.c
> +++ b/drivers/gpu/drm/i915/gt/uc/intel_guc_ct.c
> @@ -210,6 +210,7 @@ void intel_guc_ct_fini(struct intel_guc_ct *ct)
>   	GEM_BUG_ON(ct->enabled);
>   
>   	i915_vma_unpin_and_release(&ct->vma, I915_VMA_RELEASE_MAP);
> +	memset(ct, 0, sizeof(*ct));
>   }
>   
>   /**

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
