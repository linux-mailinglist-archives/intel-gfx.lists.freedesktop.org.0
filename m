Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 34B7D7E2214
	for <lists+intel-gfx@lfdr.de>; Mon,  6 Nov 2023 13:45:21 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 0B7D810E2F1;
	Mon,  6 Nov 2023 12:45:19 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.55.52.151])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 8674610E2F1
 for <intel-gfx@lists.freedesktop.org>; Mon,  6 Nov 2023 12:45:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1699274716; x=1730810716;
 h=from:to:cc:subject:in-reply-to:references:date:
 message-id:mime-version;
 bh=Qd9TgyWfF3orOTs+n99nqulXQRMVqKTpQeDGEu6AAqE=;
 b=ILSr0/Awq7+t4r1hQwD4/K4oLDkpn2F+fzGrfAucFk8XQvB4WryPrXr1
 el6AKY5rHYb9DxkK/YrYuKVABjuQVPH8xjfVY+G5qmKYvpC+k9w/anvN1
 hLeWV2jDzGYtUtnMs2vYZpr6D0kJs2isNW+1+wrk0ovwicBe4cU1spvzh
 ZghduoQ7GwYaPLGdsa0N68qbPzxGL6VoQ4vvrtWXSZ/rlJNxp925v1dlR
 vnpHwE0A4lb7zuywbGaRO8nRMe0nBidbTR1jaBoOxDj2ME64JIOJCDskB
 bpPoKqK/Pl+zMswnNGq6ju+AFUbyFH8/zHBfqqL2XScxiy2EsVWB0tDtj g==;
X-IronPort-AV: E=McAfee;i="6600,9927,10885"; a="369471871"
X-IronPort-AV: E=Sophos;i="6.03,281,1694761200"; d="scan'208";a="369471871"
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
 by fmsmga107.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 06 Nov 2023 04:45:16 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10885"; a="879433047"
X-IronPort-AV: E=Sophos;i="6.03,281,1694761200"; d="scan'208";a="879433047"
Received: from lpilolli-mobl.ger.corp.intel.com (HELO localhost)
 ([10.252.36.222])
 by fmsmga002-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 06 Nov 2023 04:45:13 -0800
From: Jani Nikula <jani.nikula@linux.intel.com>
To: Nirmoy Das <nirmoy.das@intel.com>, intel-gfx@lists.freedesktop.org
In-Reply-To: <20231025102826.16955-1-nirmoy.das@intel.com>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
References: <20231025102826.16955-1-nirmoy.das@intel.com>
Date: Mon, 06 Nov 2023 14:45:11 +0200
Message-ID: <87msvryrs8.fsf@intel.com>
MIME-Version: 1.0
Content-Type: text/plain
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
Cc: Andrzej Hajda <andrzej.hajda@intel.com>,
 Rodrigo Vivi <rodrigo.vivi@intel.com>, Nirmoy Das <nirmoy.das@intel.com>
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Wed, 25 Oct 2023, Nirmoy Das <nirmoy.das@intel.com> wrote:
> Handle platforms with multiple GTs by iterate over all GTs.
> Add a Fixes commit so this gets propagated for MTL support.
>
> Fixes: 213c43676beb ("drm/i915/mtl: Remove the 'force_probe' requirement for Meteor Lake")

This came up in another patch. I don't like abusing Fixes: like this. I
understand the motivation here, but this patch does not fix the
referenced commit.

BR,
Jani.

> Suggested-by: John Harrison <john.c.harrison@intel.com>
> Cc: Jani Nikula <jani.nikula@linux.intel.com>
> Cc: Rodrigo Vivi <rodrigo.vivi@intel.com>
> Cc: Tvrtko Ursulin <tvrtko.ursulin@linux.intel.com>
> Cc: Andi Shyti <andi.shyti@linux.intel.com>
> Cc: Andrzej Hajda <andrzej.hajda@intel.com>
> Signed-off-by: Nirmoy Das <nirmoy.das@intel.com>
> ---
>  drivers/gpu/drm/i915/i915_debugfs_params.c | 9 ++++++---
>  1 file changed, 6 insertions(+), 3 deletions(-)
>
> diff --git a/drivers/gpu/drm/i915/i915_debugfs_params.c b/drivers/gpu/drm/i915/i915_debugfs_params.c
> index 614bde321589..8bca02025e09 100644
> --- a/drivers/gpu/drm/i915/i915_debugfs_params.c
> +++ b/drivers/gpu/drm/i915/i915_debugfs_params.c
> @@ -38,10 +38,13 @@ static int i915_param_int_open(struct inode *inode, struct file *file)
>  
>  static int notify_guc(struct drm_i915_private *i915)
>  {
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
>  
>  	return ret;
>  }

-- 
Jani Nikula, Intel
