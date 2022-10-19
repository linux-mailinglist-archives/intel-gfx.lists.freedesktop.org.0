Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 5ACE1603E4B
	for <lists+intel-gfx@lfdr.de>; Wed, 19 Oct 2022 11:12:38 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id C7D1C10EAB9;
	Wed, 19 Oct 2022 09:12:35 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga14.intel.com (mga14.intel.com [192.55.52.115])
 by gabe.freedesktop.org (Postfix) with ESMTPS id DEA8210EAB9
 for <intel-gfx@lists.freedesktop.org>; Wed, 19 Oct 2022 09:12:29 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1666170749; x=1697706749;
 h=message-id:date:mime-version:subject:to:cc:references:
 from:in-reply-to:content-transfer-encoding;
 bh=VlLopy7rfKPaT9hlDPQOTLNMeYrvQP6CwXUl6voN61c=;
 b=ZKi7AuxhbjR4EJT1hTT/LdXUX803iVnA4JIyKhQ5BubBU2WJgg86UmCj
 e9ZTqDEc2utJZce/gGxheQh3/1Ihgm/hvLLX5lnn5FLKoOGIrYyzcvRll
 Zs3mv6K4UjoamMOAIovLwYvkS6wDvqLbrnA7/DnfGWAWOM5yzXJWyqFGd
 zOMFgCM+4tZL0PJZECIcPi3dEZC7PX8QFYOzgTp574FAsTUDxGrWnUGTI
 GeWOGZw2gdWZFHmsjYw9+E6rKeqAU/NW0fipPJTN87Qe9kKIswvkgh+78
 z16ydfldjTG5ZNejqxZvia9eZr6r3t6sNIfyCh/25KAeNAG2MdqCb4HCP A==;
X-IronPort-AV: E=McAfee;i="6500,9779,10504"; a="306344171"
X-IronPort-AV: E=Sophos;i="5.95,195,1661842800"; d="scan'208";a="306344171"
Received: from orsmga001.jf.intel.com ([10.7.209.18])
 by fmsmga103.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 19 Oct 2022 02:12:29 -0700
X-IronPort-AV: E=McAfee;i="6500,9779,10504"; a="662363628"
X-IronPort-AV: E=Sophos;i="5.95,195,1661842800"; d="scan'208";a="662363628"
Received: from abyrne1-mobl1.ger.corp.intel.com (HELO [10.252.27.172])
 ([10.252.27.172])
 by orsmga001-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 19 Oct 2022 02:12:26 -0700
Message-ID: <7c31859f-5afc-fc24-98c9-8a14bacd66cd@intel.com>
Date: Wed, 19 Oct 2022 10:12:24 +0100
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Firefox/102.0 Thunderbird/102.3.1
Content-Language: en-GB
To: Andrzej Hajda <andrzej.hajda@intel.com>, intel-gfx@lists.freedesktop.org
References: <20221019071252.180682-1-andrzej.hajda@intel.com>
From: Matthew Auld <matthew.auld@intel.com>
In-Reply-To: <20221019071252.180682-1-andrzej.hajda@intel.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit
Subject: Re: [Intel-gfx] [PATCH] drm/i915/selftests: add prefetch padding to
 store_dw batchbuffer
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
Cc: Lucas De Marchi <lucas.demarchi@intel.com>,
 Rodrigo Vivi <rodrigo.vivi@intel.com>
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On 19/10/2022 08:12, Andrzej Hajda wrote:
> Instruction prefetch mechanism requires that 512 bytes after the last
> command should be readable by EU. Otherwise DMAR errors and engine
> hangs can happen.
> 
> Closes: https://gitlab.freedesktop.org/drm/intel/-/issues/5278
> Signed-off-by: Andrzej Hajda <andrzej.hajda@intel.com>

Is there a Bspec ref for this? I would have assumed that EU was more 
about kernels/shaders, than simple MI commands? Also should we be 
hitting dmar errors for ppGTT if this were some kind of overfetch? 
AFAICT we always point entries back to scratch, unlike with say the GGTT 
where we might have stale entries, and unbinding should flush the tlb?

> ---
>   drivers/gpu/drm/i915/gem/selftests/igt_gem_utils.c | 2 +-
>   1 file changed, 1 insertion(+), 1 deletion(-)
> 
> diff --git a/drivers/gpu/drm/i915/gem/selftests/igt_gem_utils.c b/drivers/gpu/drm/i915/gem/selftests/igt_gem_utils.c
> index 3c55e77b0f1b00..fe999a02f8e10a 100644
> --- a/drivers/gpu/drm/i915/gem/selftests/igt_gem_utils.c
> +++ b/drivers/gpu/drm/i915/gem/selftests/igt_gem_utils.c
> @@ -50,7 +50,7 @@ igt_emit_store_dw(struct i915_vma *vma,
>   	u32 *cmd;
>   	int err;
>   
> -	size = (4 * count + 1) * sizeof(u32);
> +	size = (4 * count + 1) * sizeof(u32) + 512;
>   	size = round_up(size, PAGE_SIZE);
>   	obj = i915_gem_object_create_internal(vma->vm->i915, size);
>   	if (IS_ERR(obj))
