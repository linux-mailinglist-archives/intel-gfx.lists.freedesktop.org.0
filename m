Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 15C5A4503DC
	for <lists+intel-gfx@lfdr.de>; Mon, 15 Nov 2021 12:55:40 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id A24ED6E8CA;
	Mon, 15 Nov 2021 11:55:37 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 563336E123;
 Mon, 15 Nov 2021 11:55:36 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6200,9189,10168"; a="220635789"
X-IronPort-AV: E=Sophos;i="5.87,236,1631602800"; d="scan'208";a="220635789"
Received: from orsmga008.jf.intel.com ([10.7.209.65])
 by orsmga101.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 15 Nov 2021 03:55:35 -0800
X-IronPort-AV: E=Sophos;i="5.87,236,1631602800"; d="scan'208";a="505891946"
Received: from csrini4x-mobl1.ger.corp.intel.com (HELO localhost)
 ([10.251.218.37])
 by orsmga008-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 15 Nov 2021 03:55:34 -0800
From: Jani Nikula <jani.nikula@intel.com>
To: intel-gfx@lists.freedesktop.org
In-Reply-To: <cover.1636977089.git.jani.nikula@intel.com>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
References: <cover.1636977089.git.jani.nikula@intel.com>
Date: Mon, 15 Nov 2021 13:55:32 +0200
Message-ID: <87y25p1vm3.fsf@intel.com>
MIME-Version: 1.0
Content-Type: text/plain
Subject: Re: [Intel-gfx] [PATCH 0/3] drm/i915,
 agp/intel-ggt: clean up includes
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
Cc: Andy Shevchenko <andriy.shevchenko@linux.intel.com>,
 dri-devel@lists.freedesktop.org
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Mon, 15 Nov 2021, Jani Nikula <jani.nikula@intel.com> wrote:
> Took Andy's patch [1] and expanded on it a bit.
>
> BR,
> Jani.
>
>
> [1] https://patchwork.freedesktop.org/patch/msgid/20211110102857.59604-1-andriy.shevchenko@linux.intel.com
>
> Cc: Andy Shevchenko <andriy.shevchenko@linux.intel.com>
>
> Andy Shevchenko (1):
>   agp/intel-gtt: Replace kernel.h with the necessary inclusions

Forgot to mention, I replaced the drm/i915 prefix with agp/intel-gtt
here, no other changes to Andy's patch.

>
> Jani Nikula (2):
>   drm/i915: include intel-gtt.h only where needed
>   agp/intel-gtt: reduce intel-gtt dependencies more
>
>  drivers/char/agp/intel-gtt.c         | 1 +
>  drivers/gpu/drm/i915/gt/intel_ggtt.c | 2 ++
>  drivers/gpu/drm/i915/gt/intel_gt.c   | 2 ++
>  drivers/gpu/drm/i915/i915_drv.h      | 1 -
>  include/drm/intel-gtt.h              | 8 +++++---
>  5 files changed, 10 insertions(+), 4 deletions(-)

-- 
Jani Nikula, Intel Open Source Graphics Center
