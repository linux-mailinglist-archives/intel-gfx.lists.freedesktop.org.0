Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id D1F1C4E7587
	for <lists+intel-gfx@lfdr.de>; Fri, 25 Mar 2022 15:58:17 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 3041310E2AD;
	Fri, 25 Mar 2022 14:58:16 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga05.intel.com (mga05.intel.com [192.55.52.43])
 by gabe.freedesktop.org (Postfix) with ESMTPS id DB35510E2AD
 for <intel-gfx@lists.freedesktop.org>; Fri, 25 Mar 2022 14:58:14 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1648220294; x=1679756294;
 h=message-id:date:mime-version:subject:to:references:from:
 in-reply-to:content-transfer-encoding;
 bh=ufsrB6JQWy2YfzYSHmwTMsaxVwAiWXIHWkUK5qpJD1s=;
 b=jP+38HfM6tHX+iJlRBiRvEASXOLEIkQcTM0bUaBKYSgVxw2OmkUXzWXf
 IXWS5TAJwDb9zFAnN6WP6Ezt6CflIEV2+FTIICRrMlrlLcJXwQIKV+OXw
 pvc4jyAKtyd87myPPZDykfrVGz1Y5tFg2OAl8OVrDeWTBMotE+kznoQTN
 PrmxMR4CbjEejQdCx6sObP2pZcl2CBUBMU01LVepxMWGvp/5NYv5J8lQX
 XcqSqRMF8dos7fprfREcPU8bKxbYk+pmDNbrVmWogUVt/loUmk1m4MfvE
 In+Qq9OTqs8+L4v5YMJ0s2kEClJifFsEmjmxLBcPGnhG4kyFPjT5cuyul w==;
X-IronPort-AV: E=McAfee;i="6200,9189,10296"; a="345085123"
X-IronPort-AV: E=Sophos;i="5.90,209,1643702400"; d="scan'208";a="345085123"
Received: from orsmga008.jf.intel.com ([10.7.209.65])
 by fmsmga105.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 25 Mar 2022 07:58:14 -0700
X-IronPort-AV: E=Sophos;i="5.90,209,1643702400"; d="scan'208";a="561861148"
Received: from nirmoyda-mobl.ger.corp.intel.com (HELO [10.252.61.27])
 ([10.252.61.27])
 by orsmga008-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 25 Mar 2022 07:58:13 -0700
Message-ID: <8afb4cd2-72a8-0251-7b4f-f209d1ad552d@linux.intel.com>
Date: Fri, 25 Mar 2022 15:58:11 +0100
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:91.0) Gecko/20100101
 Thunderbird/91.7.0
Content-Language: en-US
To: Animesh Manna <animesh.manna@intel.com>, intel-gfx@lists.freedesktop.org
References: <20220325142842.6411-1-animesh.manna@intel.com>
From: "Das, Nirmoy" <nirmoy.das@linux.intel.com>
In-Reply-To: <20220325142842.6411-1-animesh.manna@intel.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit
Subject: Re: [Intel-gfx] [PATCH] drm/i915/dsb: modified to drm_info in
 dsb_prepare()
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


On 3/25/2022 3:28 PM, Animesh Manna wrote:
> The request to aqquire gem resources is failing for DSB in rare
> scenario where it is busy and the register programming will be done
> through mmio fallback path.
>
> DSB has extra advantage of faster register programming which may
> go away through mmio path. Adding wait for gem resource also may
> not be right as anyways losing time.
>
> To make the CI execution happy replaced drm_err() to drm_info()
> for printing debug info during dsb buffer preparation.
>
> v1: Initial version.
> v2: Added print for mmio fallback at out label. [Nirmoy]
>
> Cc: Nirmoy Das <nirmoy.das@linux.intel.com>
> Signed-off-by: Animesh Manna <animesh.manna@intel.com>
> ---
>   drivers/gpu/drm/i915/display/intel_dsb.c | 6 +++---
>   1 file changed, 3 insertions(+), 3 deletions(-)
>
> diff --git a/drivers/gpu/drm/i915/display/intel_dsb.c b/drivers/gpu/drm/i915/display/intel_dsb.c
> index b34a67309976..86c0cf5a03b5 100644
> --- a/drivers/gpu/drm/i915/display/intel_dsb.c
> +++ b/drivers/gpu/drm/i915/display/intel_dsb.c
> @@ -283,14 +283,12 @@ void intel_dsb_prepare(struct intel_crtc_state *crtc_state)
>   
>   	obj = i915_gem_object_create_internal(i915, DSB_BUF_SIZE);
>   	if (IS_ERR(obj)) {
> -		drm_err(&i915->drm, "Gem object creation failed\n");
>   		kfree(dsb);
>   		goto out;
>   	}
>   
>   	vma = i915_gem_object_ggtt_pin(obj, NULL, 0, 0, 0);
>   	if (IS_ERR(vma)) {
> -		drm_err(&i915->drm, "Vma creation failed\n");
>   		i915_gem_object_put(obj);
>   		kfree(dsb);
>   		goto out;
> @@ -298,7 +296,6 @@ void intel_dsb_prepare(struct intel_crtc_state *crtc_state)
>   
>   	buf = i915_gem_object_pin_map_unlocked(vma->obj, I915_MAP_WC);
>   	if (IS_ERR(buf)) {
> -		drm_err(&i915->drm, "Command buffer creation failed\n");
>   		i915_vma_unpin_and_release(&vma, I915_VMA_RELEASE_MAP);
>   		kfree(dsb);
>   		goto out;
> @@ -311,6 +308,9 @@ void intel_dsb_prepare(struct intel_crtc_state *crtc_state)
>   	dsb->ins_start_offset = 0;
>   	crtc_state->dsb = dsb;
>   out:
> +	if (!crtc_state->dsb)
> +		drm_info(&i915->drm, "Fallback to mmio for register programming\n");

 From the info message, it is hard to know what happened: Something like:

"DSB queue setup failed, will fallback to MMIO for display HW 
programming" should be more understandable.


With such change, this is: Reviewed-by: Nirmoy Das <nirmoy.das@intel.com>


Nirmoy


> +
>   	intel_runtime_pm_put(&i915->runtime_pm, wakeref);
>   }
>   
