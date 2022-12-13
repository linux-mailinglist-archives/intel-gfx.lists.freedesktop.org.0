Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id A980964B8A0
	for <lists+intel-gfx@lfdr.de>; Tue, 13 Dec 2022 16:38:01 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 941A810E335;
	Tue, 13 Dec 2022 15:37:59 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga17.intel.com (mga17.intel.com [192.55.52.151])
 by gabe.freedesktop.org (Postfix) with ESMTPS id AE10610E335
 for <intel-gfx@lists.freedesktop.org>; Tue, 13 Dec 2022 15:37:52 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1670945872; x=1702481872;
 h=date:from:to:cc:subject:message-id:references:
 mime-version:in-reply-to;
 bh=hUH/oJOtIifpqwpZh7+fSAGjgTQbaLv9RJeCLiZVC2U=;
 b=SnfNyJ4SVvGBXHoo33mm2oRNJFmBsBieiPGDLOdUOIPVgDzz7sTgCL8D
 yjAivzc0brw8IWhLE6OXzxR+qalwVz8Zn0FclDhosQIm0xyhwmE4p96qC
 hOkU0W9ZGtmw92gQE9oh7YrN7KoEZ8vxbQz8y38pweCiHMWIXiEwuTg4r
 RJLeg+DR2TQXA/TKRyC8AnrWPINJwIxhgpeckxE0ntO0lQa7D4KobVeQ8
 EYtf8BF1R47m/BAEMucmcE0l3GJMj69zhZwI4ZyfGAX6AYpNGzddV8g+I
 MQB8UbEmGegqOYaVWS0orTI4cnMFb1+qKIWimBj3cP0yT/cxOGU6ReoGy A==;
X-IronPort-AV: E=McAfee;i="6500,9779,10560"; a="298502347"
X-IronPort-AV: E=Sophos;i="5.96,241,1665471600"; d="scan'208";a="298502347"
Received: from orsmga001.jf.intel.com ([10.7.209.18])
 by fmsmga107.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 13 Dec 2022 07:37:52 -0800
X-IronPort-AV: E=McAfee;i="6500,9779,10560"; a="681153691"
X-IronPort-AV: E=Sophos;i="5.96,241,1665471600"; d="scan'208";a="681153691"
Received: from epetresx-mobl1.ger.corp.intel.com (HELO intel.com)
 ([10.251.216.82])
 by orsmga001-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 13 Dec 2022 07:37:49 -0800
Date: Tue, 13 Dec 2022 16:37:42 +0100
From: Andi Shyti <andi.shyti@linux.intel.com>
To: Andrzej Hajda <andrzej.hajda@intel.com>
Message-ID: <Y5icRkIE4VHjVJy4@ashyti-mobl2.lan>
References: <20221213121951.1515023-1-andrzej.hajda@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20221213121951.1515023-1-andrzej.hajda@intel.com>
Subject: Re: [Intel-gfx] [PATCH 1/2] drm/i915: use proper helper in
 igt_vma_move_to_active_unlocked
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
Cc: intel-gfx@lists.freedesktop.org, Rodrigo Vivi <rodrigo.vivi@intel.com>
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

Hi Andrzej,

On Tue, Dec 13, 2022 at 01:19:50PM +0100, Andrzej Hajda wrote:
> There is no need to use _i915_vma_move_to_active.
> No functional changes.
> 
> Signed-off-by: Andrzej Hajda <andrzej.hajda@intel.com>

Reviewed-by: Andi Shyti <andi.shyti@linux.intel.com>

Thanks,
Andi

> ---
>  drivers/gpu/drm/i915/gem/selftests/igt_gem_utils.h | 2 +-
>  1 file changed, 1 insertion(+), 1 deletion(-)
> 
> diff --git a/drivers/gpu/drm/i915/gem/selftests/igt_gem_utils.h b/drivers/gpu/drm/i915/gem/selftests/igt_gem_utils.h
> index 1379fbc1443126..71a3ca8a886506 100644
> --- a/drivers/gpu/drm/i915/gem/selftests/igt_gem_utils.h
> +++ b/drivers/gpu/drm/i915/gem/selftests/igt_gem_utils.h
> @@ -38,7 +38,7 @@ igt_vma_move_to_active_unlocked(struct i915_vma *vma, struct i915_request *rq,
>  	int err;
>  
>  	i915_vma_lock(vma);
> -	err = _i915_vma_move_to_active(vma, rq, &rq->fence, flags);
> +	err = i915_vma_move_to_active(vma, rq, flags);
>  	i915_vma_unlock(vma);
>  	return err;
>  }
> -- 
> 2.34.1
