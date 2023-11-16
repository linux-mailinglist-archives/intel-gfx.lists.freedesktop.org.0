Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id BC28B7EE00F
	for <lists+intel-gfx@lfdr.de>; Thu, 16 Nov 2023 12:44:40 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 60A7110E5CC;
	Thu, 16 Nov 2023 11:44:38 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.10])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 6E7C810E5D5
 for <intel-gfx@lists.freedesktop.org>; Thu, 16 Nov 2023 11:44:37 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1700135077; x=1731671077;
 h=date:from:to:cc:subject:message-id:references:
 mime-version:in-reply-to;
 bh=9YgmoAVUetn0gEC93Qyt/smKGoVaUR0sRJ5TKnCeuTE=;
 b=VdOyr4tc0SzomAt/jTQWhpYUapLDF9R5t/ViGaulYFtnkqQ5lQ2tr+l6
 zTMOiU+rs8oVzORwEA6eefbnq4an9bnWsOJKoE5/KP+rmEH7L6DuSN336
 1t9To+TXJKAvAe2Sougrg2dcJWS72vr5v9xWEiE97IZWl+SAT2u/CEYTH
 IRmY4CdnhC/At0Wxf6pPMZzcNooa/Zr6iq4W59tGqnXxtVG1LH71LU1Ay
 MEupsuJBsvacIEULGLkUDd935Po4qkkLIuf166lnS+GOry46bsoqrX0KI
 fvvEKvRZDjbEzQtQmcg81fPe/4JRpWyLsqp1uoJ2oWAqy3hWTmhJa0SYH w==;
X-IronPort-AV: E=McAfee;i="6600,9927,10895"; a="4199992"
X-IronPort-AV: E=Sophos;i="6.04,308,1695711600"; 
   d="scan'208";a="4199992"
Received: from orsmga004.jf.intel.com ([10.7.209.38])
 by orvoesa102.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 16 Nov 2023 03:44:37 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10895"; a="888886351"
X-IronPort-AV: E=Sophos;i="6.04,308,1695711600"; d="scan'208";a="888886351"
Received: from tcujba-mobl.ger.corp.intel.com (HELO intel.com)
 ([10.251.219.83])
 by orsmga004-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 16 Nov 2023 03:44:33 -0800
Date: Thu, 16 Nov 2023 12:44:30 +0100
From: Andi Shyti <andi.shyti@linux.intel.com>
To: Andrzej Hajda <andrzej.hajda@intel.com>
Message-ID: <ZVYAnhUoL-C0zdBK@ashyti-mobl2.lan>
References: <20231115-dont_clean_gt_on_error_path-v2-1-54250125470a@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20231115-dont_clean_gt_on_error_path-v2-1-54250125470a@intel.com>
Subject: Re: [Intel-gfx] [PATCH v2] drm/i915: do not clean GT table on error
 path
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
Cc: Tvrtko Ursulin <tvrtko.ursulin@intel.com>, intel-gfx@lists.freedesktop.org,
 Matthew Auld <matthew.auld@intel.com>
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

Hi Andrzej,

On Wed, Nov 15, 2023 at 11:54:03AM +0100, Andrzej Hajda wrote:
> The only task of intel_gt_release_all is to zero gt table. Calling
> it on error path prevents intel_gt_driver_late_release_all (called from
> i915_driver_late_release) to cleanup GTs, causing leakage.
> After i915_driver_late_release GT array is not used anymore so
> it does not need cleaning at all.
> 
> Sample leak report:
> 
> BUG i915_request (...): Objects remaining in i915_request on __kmem_cache_shutdown()
> ...
> Object 0xffff888113420040 @offset=64
> Allocated in __i915_request_create+0x75/0x610 [i915] age=18339 cpu=1 pid=1454
>  kmem_cache_alloc+0x25b/0x270
>  __i915_request_create+0x75/0x610 [i915]
>  i915_request_create+0x109/0x290 [i915]
>  __engines_record_defaults+0xca/0x440 [i915]
>  intel_gt_init+0x275/0x430 [i915]
>  i915_gem_init+0x135/0x2c0 [i915]
>  i915_driver_probe+0x8d1/0xdc0 [i915]
> 
> v2: removed whole intel_gt_release_all
> 
> Closes: https://gitlab.freedesktop.org/drm/intel/-/issues/8489
> Fixes: bec68cc9ea42d8 ("drm/i915: Prepare for multiple GTs")
> Signed-off-by: Andrzej Hajda <andrzej.hajda@intel.com>

Reviewed-by: Andi Shyti <andi.shyti@linux.intel.com>

Andi
