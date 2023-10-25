Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id BC6247D6CD1
	for <lists+intel-gfx@lfdr.de>; Wed, 25 Oct 2023 15:12:52 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 3EF6410E03F;
	Wed, 25 Oct 2023 13:12:51 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.55.52.88])
 by gabe.freedesktop.org (Postfix) with ESMTPS id A335E89048
 for <intel-gfx@lists.freedesktop.org>; Wed, 25 Oct 2023 13:12:49 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1698239568; x=1729775568;
 h=message-id:date:mime-version:subject:to:cc:references:
 from:in-reply-to:content-transfer-encoding;
 bh=1A/ztcLUn2Pu6MD5ZC8bJhc3UD3FOcjUvLoKTj7L3xY=;
 b=IytC7tdSSeR/I1usHIne9S0N0j2VnoITF43XlyCe3V4Ns09w5mnOmQDF
 k8N2BUJpG23HLnl3oQ5MjfCqfx2X28iAsorHrLH5sIz8yOR+yepEtbZEX
 2WQKkSspO1/maqudwdmZgQ7wfwz9hULCSswvJUnooeWo+zaCH31DlK9GY
 CDaDVVQ0rCNHHTEn77e3XwfN88bUGZ6OWDr8fTVp9saNayK4pV17f+7ed
 X6WBv71jUGm7KNgTapTqiQrRqRWaqUEfg7/xgJYKa/HmlQoux4cKScBxV
 ckma6zEbv2E7EaEOAANUW7zHd1qaEUuqK4nzEP2E8EOgRIOThQ8/d4xML g==;
X-IronPort-AV: E=McAfee;i="6600,9927,10873"; a="418426041"
X-IronPort-AV: E=Sophos;i="6.03,250,1694761200"; d="scan'208";a="418426041"
Received: from orsmga007.jf.intel.com ([10.7.209.58])
 by fmsmga101.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 25 Oct 2023 06:12:42 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10873"; a="752320284"
X-IronPort-AV: E=Sophos;i="6.03,250,1694761200"; d="scan'208";a="752320284"
Received: from ahajda-mobl.ger.corp.intel.com (HELO [10.213.18.52])
 ([10.213.18.52])
 by orsmga007-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 25 Oct 2023 06:12:40 -0700
Message-ID: <d18c18c2-bd0b-42b6-a7a8-034f1afc4a80@intel.com>
Date: Wed, 25 Oct 2023 15:12:37 +0200
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Content-Language: en-US
To: Nirmoy Das <nirmoy.das@intel.com>, intel-gfx@lists.freedesktop.org
References: <20231025102826.16955-1-nirmoy.das@intel.com>
From: Andrzej Hajda <andrzej.hajda@intel.com>
Organization: Intel Technology Poland sp. z o.o. - ul. Slowackiego 173, 80-298
 Gdansk - KRS 101882 - NIP 957-07-52-316
In-Reply-To: <20231025102826.16955-1-nirmoy.das@intel.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit
Subject: Re: [Intel-gfx] [PATCH] drm/i915/mtl: Apply notify_guc to all GTs
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
Cc: Rodrigo Vivi <rodrigo.vivi@intel.com>
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>



On 25.10.2023 12:28, Nirmoy Das wrote:
> Handle platforms with multiple GTs by iterate over all GTs.
> Add a Fixes commit so this gets propagated for MTL support.
>
> Fixes: 213c43676beb ("drm/i915/mtl: Remove the 'force_probe' requirement for Meteor Lake")
> Suggested-by: John Harrison <john.c.harrison@intel.com>
> Cc: Jani Nikula <jani.nikula@linux.intel.com>
> Cc: Rodrigo Vivi <rodrigo.vivi@intel.com>
> Cc: Tvrtko Ursulin <tvrtko.ursulin@linux.intel.com>
> Cc: Andi Shyti <andi.shyti@linux.intel.com>
> Cc: Andrzej Hajda <andrzej.hajda@intel.com>
> Signed-off-by: Nirmoy Das <nirmoy.das@intel.com>
> ---
>   drivers/gpu/drm/i915/i915_debugfs_params.c | 9 ++++++---
>   1 file changed, 6 insertions(+), 3 deletions(-)
>
> diff --git a/drivers/gpu/drm/i915/i915_debugfs_params.c b/drivers/gpu/drm/i915/i915_debugfs_params.c
> index 614bde321589..8bca02025e09 100644
> --- a/drivers/gpu/drm/i915/i915_debugfs_params.c
> +++ b/drivers/gpu/drm/i915/i915_debugfs_params.c
> @@ -38,10 +38,13 @@ static int i915_param_int_open(struct inode *inode, struct file *file)
>   
>   static int notify_guc(struct drm_i915_private *i915)
>   {
> -	int ret = 0;
> +	struct intel_gt *gt;
> +	int i, ret = 0;
>   
> -	if (intel_uc_uses_guc_submission(&to_gt(i915)->uc))
> -		ret = intel_guc_global_policies_update(&to_gt(i915)->uc.guc);
> +	for_each_gt(gt, i915, i) {
> +		if (intel_uc_uses_guc_submission(&gt->uc))
> +			ret = intel_guc_global_policies_update(&gt->uc.guc);
> +	}

Reviewed-by: Andrzej Hajda <andrzej.hajda@intel.com>

Regards
Andrzej

>   
>   	return ret;
>   }

