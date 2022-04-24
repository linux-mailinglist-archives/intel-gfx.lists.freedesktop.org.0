Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id E338950D43A
	for <lists+intel-gfx@lfdr.de>; Sun, 24 Apr 2022 20:43:26 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 869C010E731;
	Sun, 24 Apr 2022 18:43:24 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 8025E112184
 for <intel-gfx@lists.freedesktop.org>; Sun, 24 Apr 2022 18:43:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1650825802; x=1682361802;
 h=date:from:to:cc:subject:message-id:references:
 mime-version:in-reply-to;
 bh=mRci5v3OHtWEe9mKn9zwtGgh6gVDb5GTtrKi2yQUgDo=;
 b=dvzH2UWldITaZdCMCaVOpG+Owx5a2JNJKsKPICSpXA92fO7OHbaWRLgN
 x//WpdS169HRpB0/P8kXK0MVuHZvLzXr1M2qbq7QvWBXVE7vODzg/59Rb
 0JcwR3txRM1MQVBaJiGoz48N9GeXPSOYxGQKg0rKcYJKKUw6vv7I850fm
 1V6JpTbkj4pw2+0C6A+WV5l2TCG8CYxQrvndCnncg21qr+EWCSyInaAHV
 6E0ax3NDHFYErvAbbO8toq4zOKnFyRbuYYf+6Gk9yKfkKpFUIeujj1Qpn
 JnTHuhYO1UTTR/SpimqG6W8hr7DUwGnD78Notl2kBQofgoaZ/lE6qr85x Q==;
X-IronPort-AV: E=McAfee;i="6400,9594,10327"; a="264583545"
X-IronPort-AV: E=Sophos;i="5.90,287,1643702400"; d="scan'208";a="264583545"
Received: from orsmga008.jf.intel.com ([10.7.209.65])
 by orsmga102.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 24 Apr 2022 11:43:21 -0700
X-IronPort-AV: E=Sophos;i="5.90,287,1643702400"; d="scan'208";a="578891335"
Received: from fmihut-mobl1.ger.corp.intel.com (HELO intel.com)
 ([10.252.47.38])
 by orsmga008-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 24 Apr 2022 11:43:20 -0700
Date: Sun, 24 Apr 2022 20:43:18 +0200
From: Andi Shyti <andi.shyti@linux.intel.com>
To: Ashutosh Dixit <ashutosh.dixit@intel.com>
Message-ID: <YmWaRo/dqmQ7oGIr@intel.intel>
References: <cover.1650435571.git.ashutosh.dixit@intel.com>
 <e17dd7ffecafe0f597d24bb53d3170ad9284dba9.1650435571.git.ashutosh.dixit@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <e17dd7ffecafe0f597d24bb53d3170ad9284dba9.1650435571.git.ashutosh.dixit@intel.com>
Subject: Re: [Intel-gfx] [PATCH 2/9] drm/i915/gt: Add media freq factor to
 per-gt sysfs
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

Hi Ashutosh,

[...]

>  static int intel_sysfs_rps_init(struct intel_gt *gt, struct kobject *kobj,
>  				const struct attribute * const *attrs)
>  {
> @@ -598,4 +720,12 @@ void intel_gt_sysfs_pm_init(struct intel_gt *gt, struct kobject *kobj)
>  		drm_warn(&gt->i915->drm,
>  			 "failed to create gt%u throttle sysfs files (%pe)",
>  			 gt->info.id, ERR_PTR(ret));
> +
> +	if (HAS_MEDIA_RATIO_MODE(gt->i915) && intel_uc_uses_guc_slpc(&gt->uc)) {

you could use in this case the ".is_visible()" function as you are
not inheriting it from the upper drm class.

Anyway,

Reviewed-by: Andi Shyti <andi.shyti@linux.intel.com>

Thanks,
Andi
