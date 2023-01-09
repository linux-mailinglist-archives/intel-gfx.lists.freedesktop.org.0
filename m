Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id E985F6627CB
	for <lists+intel-gfx@lfdr.de>; Mon,  9 Jan 2023 14:56:04 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id B9C7B10E1C9;
	Mon,  9 Jan 2023 13:56:02 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga18.intel.com (mga18.intel.com [134.134.136.126])
 by gabe.freedesktop.org (Postfix) with ESMTPS id B727310E1C8
 for <intel-gfx@lists.freedesktop.org>; Mon,  9 Jan 2023 13:56:01 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1673272561; x=1704808561;
 h=date:from:to:cc:subject:message-id:references:
 mime-version:in-reply-to;
 bh=utKM0+aAIT9QwvtzhRyofblP03y2YaSAMFZs+9lIvI4=;
 b=MOd7cv4kzPIS0dyzNEgf/FY/Of73K1abnjbYyzqBtCvB5/k4tcYhNBlN
 MqPJ3lRMgpPKaGoQv+00qSF7PvQQWW4KxLqUqgaWYLbNEbDKX6bx4ObSF
 no6rG/g7GO2iVsC4MxgxAtntyTgjHwbnKUSFB+qNOaPNpkqrSOo175LO1
 3zpAdyRgsuzPrs2BK/LAKyIKpWH+tRFXkiGSjaeM5ehDHImrutct/hiot
 xThOnJvv8KjUtGyCmrDD9n0Y5pJyygXjC5zZmejV6U1cbubCocsB/2wcI
 FJvri30wmwk9glF69n9eeqQRFIUbGl19kuyq8YRQ08TGQMI/+XxxZEv81 w==;
X-IronPort-AV: E=McAfee;i="6500,9779,10585"; a="306393683"
X-IronPort-AV: E=Sophos;i="5.96,311,1665471600"; d="scan'208";a="306393683"
Received: from fmsmga005.fm.intel.com ([10.253.24.32])
 by orsmga106.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 09 Jan 2023 05:56:01 -0800
X-IronPort-AV: E=McAfee;i="6500,9779,10585"; a="985402715"
X-IronPort-AV: E=Sophos;i="5.96,311,1665471600"; d="scan'208";a="985402715"
Received: from nsedoc-mobl.ger.corp.intel.com (HELO intel.com)
 ([10.251.221.78])
 by fmsmga005-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 09 Jan 2023 05:55:57 -0800
Date: Mon, 9 Jan 2023 14:55:54 +0100
From: Andi Shyti <andi.shyti@linux.intel.com>
To: Andrzej Hajda <andrzej.hajda@intel.com>
Message-ID: <Y7wc6mbXAFWqEoe1@ashyti-mobl2.lan>
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

both patches pushed in drm-intel-gt-next.

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
