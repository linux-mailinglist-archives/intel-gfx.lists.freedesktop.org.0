Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 1C22370E407
	for <lists+intel-gfx@lfdr.de>; Tue, 23 May 2023 19:49:27 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 99B2F10E103;
	Tue, 23 May 2023 17:49:24 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga05.intel.com (mga05.intel.com [192.55.52.43])
 by gabe.freedesktop.org (Postfix) with ESMTPS id B0AA910E103
 for <intel-gfx@lists.freedesktop.org>; Tue, 23 May 2023 17:49:23 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1684864163; x=1716400163;
 h=message-id:date:mime-version:subject:to:cc:references:
 from:in-reply-to:content-transfer-encoding;
 bh=agBSIw6sl53/KopG4RA8w75Paob7kArjZrv25ITJ8yk=;
 b=C+2IWa0orqSH/1qsxUvoPZpWp7RIiGDJUFUI32NbexCO5DxdMKGWID1B
 T8GyKDktyez5eFcupH6D+S6pmc3HlV/b19xLtVFHfZ8FFziTbjfip8iao
 FmJmirkUQztHKGX7OIJbyTLKoYy9dB7wIUq4TLRTPCAcai6uxrGBX/ObN
 zWWYw7Nhqe+1cYXhZqEqVrOEU2G82FJshret398mPqiOxJDGYApB7OztP
 7soI/4NlRZhht6mSTEGr4SddNVOeHFQqo9cdC5+j25sFKAOPiTQmT39D3
 COOkTWyVnurYWPb3NIZueN1C5jkvt1EFCZ8Nk0c4GJoyXDro53/IAvMJN Q==;
X-IronPort-AV: E=McAfee;i="6600,9927,10719"; a="439664428"
X-IronPort-AV: E=Sophos;i="6.00,187,1681196400"; d="scan'208";a="439664428"
Received: from orsmga004.jf.intel.com ([10.7.209.38])
 by fmsmga105.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 23 May 2023 10:49:22 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10719"; a="828213082"
X-IronPort-AV: E=Sophos;i="6.00,187,1681196400"; d="scan'208";a="828213082"
Received: from nirmoyda-mobl.ger.corp.intel.com (HELO [10.249.39.2])
 ([10.249.39.2])
 by orsmga004-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 23 May 2023 10:49:19 -0700
Message-ID: <3d9dad39-1185-b334-ce1d-021f773e6821@linux.intel.com>
Date: Tue, 23 May 2023 19:49:18 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:102.0) Gecko/20100101
 Thunderbird/102.10.1
Content-Language: en-US
To: Nirmoy Das <nirmoy.das@intel.com>, intel-gfx@lists.freedesktop.org
References: <20230522124205.368-1-nirmoy.das@intel.com>
From: "Das, Nirmoy" <nirmoy.das@linux.intel.com>
In-Reply-To: <20230522124205.368-1-nirmoy.das@intel.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit
Subject: Re: [Intel-gfx] [PATCH] drm/i915: Wait for active retire before
 i915_active_fini()
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
Cc: chris.p.wilson@linux.intel.com, andi.shyti@intel.com,
 andrzej.hajda@intel.com, Rodrigo Vivi <rodrigo.vivi@intel.com>
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

pushed to drm-intel-next with a minor fix (s/References:/Closes:)

On 5/22/2023 2:42 PM, Nirmoy Das wrote:
> i915_active_fini() finalizes the debug object, which can occur before
> the active retires and deactivates the debug object. Wait for one
> final time before calling i915_active_fini();
>
> References: https://gitlab.freedesktop.org/drm/intel/-/issues/8311
> Signed-off-by: Nirmoy Das <nirmoy.das@intel.com>
> ---
>   drivers/gpu/drm/i915/i915_vma.c | 2 ++
>   1 file changed, 2 insertions(+)
>
> diff --git a/drivers/gpu/drm/i915/i915_vma.c b/drivers/gpu/drm/i915/i915_vma.c
> index 20a44788999e..bad698bece27 100644
> --- a/drivers/gpu/drm/i915/i915_vma.c
> +++ b/drivers/gpu/drm/i915/i915_vma.c
> @@ -1710,6 +1710,8 @@ static void release_references(struct i915_vma *vma, struct intel_gt *gt,
>   	if (vm_ddestroy)
>   		i915_vm_resv_put(vma->vm);
>   
> +	/* Wait for async active retire */
> +	i915_active_wait(&vma->active);
>   	i915_active_fini(&vma->active);
>   	GEM_WARN_ON(vma->resource);
>   	i915_vma_free(vma);
