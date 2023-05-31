Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id B893C718D78
	for <lists+intel-gfx@lfdr.de>; Wed, 31 May 2023 23:48:44 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id C3D8510E0B7;
	Wed, 31 May 2023 21:48:40 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga17.intel.com (mga17.intel.com [192.55.52.151])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 9FD6B10E0B7
 for <intel-gfx@lists.freedesktop.org>; Wed, 31 May 2023 21:48:38 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1685569718; x=1717105718;
 h=date:from:to:cc:subject:message-id:references:
 mime-version:in-reply-to;
 bh=+xjNDVOgVba+v+OUukZ/rRmTpQSWoSBoevghcsRwAl8=;
 b=PgLv3vpa8izv+iCkCmLX1kiKEYokNzaDOizS7ovF6LWTbBv+LqM1dpvT
 bLK7LxgMICrFKPEcLy6EYoK3FFLRyBc1ScQTX6satLVL6PBTWTXt3NCQ+
 2VvIAnCfVz6JH8yEdHFWduA5+o/Ul36Wqw/6ax8UdVXnjlxjSv28//b/U
 Ijz9De/+MJBz1fFCG9db9XTJ04zJuTbvDbEqXipFSYOhmYbIPhKnYAFWC
 MF4uRBeNQ0MUmhNNq01TWeccipW55UbuWrJGUO6SIm0kjnVd5RDtfENH7
 dwOMjj3+p+ALZfXZ5e3SNLp6asTUP4ZxbyE9n2QawwpRVVgYVlrmwEG7N w==;
X-IronPort-AV: E=McAfee;i="6600,9927,10727"; a="335724041"
X-IronPort-AV: E=Sophos;i="6.00,207,1681196400"; d="scan'208";a="335724041"
Received: from orsmga004.jf.intel.com ([10.7.209.38])
 by fmsmga107.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 31 May 2023 14:48:37 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10727"; a="831348799"
X-IronPort-AV: E=Sophos;i="6.00,207,1681196400"; d="scan'208";a="831348799"
Received: from itaraban-mobl.ger.corp.intel.com (HELO intel.com)
 ([10.252.47.19])
 by orsmga004-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 31 May 2023 14:48:36 -0700
Date: Wed, 31 May 2023 23:48:33 +0200
From: Andi Shyti <andi.shyti@linux.intel.com>
To: Matt Atwood <matthew.s.atwood@intel.com>
Message-ID: <ZHfAsU7tQ+qD5sBk@ashyti-mobl2.lan>
References: <20230531213547.1525692-1-matthew.s.atwood@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20230531213547.1525692-1-matthew.s.atwood@intel.com>
Subject: Re: [Intel-gfx] [PATCH] drm/i915: sync I915_PMU_MAX_GTS to
 I915_MAX_GT
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
Cc: intel-gfx@lists.freedesktop.org
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

Hi Matt,

On Wed, May 31, 2023 at 02:35:47PM -0700, Matt Atwood wrote:
> Set I915_PMU_MAX_GTS to value in I915_MAX_GT, theres no reason for these
> values to be different.
> 
> Cc: Tvrtko Ursulin <tvrtko.ursulin@intel.com>
> Cc: Umesh Nerlige Ramappa <umesh.nerlige.ramappa@intel.com>
> Cc: Ashutosh Dixit <ashutosh.dixit@intel.com>
> Signed-off-by: Matt Atwood <matthew.s.atwood@intel.com>
> ---
>  drivers/gpu/drm/i915/i915_pmu.h | 2 +-
>  1 file changed, 1 insertion(+), 1 deletion(-)
> 
> diff --git a/drivers/gpu/drm/i915/i915_pmu.h b/drivers/gpu/drm/i915/i915_pmu.h
> index 33d80fbaab8b..aa929d8c224a 100644
> --- a/drivers/gpu/drm/i915/i915_pmu.h
> +++ b/drivers/gpu/drm/i915/i915_pmu.h
> @@ -38,7 +38,7 @@ enum {
>  	__I915_NUM_PMU_SAMPLERS
>  };
>  
> -#define I915_PMU_MAX_GTS 2
> +#define I915_PMU_MAX_GTS 4

right! Why not having

	#define I915_PMU_MAX_GTS	I915_MAX_GT

or... why having I915_PMU_MAX_GTS at all?

Andi

>  /*
>   * How many different events we track in the global PMU mask.
> -- 
> 2.40.0
