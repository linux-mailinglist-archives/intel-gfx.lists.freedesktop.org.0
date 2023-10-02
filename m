Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 615537B4CE7
	for <lists+intel-gfx@lfdr.de>; Mon,  2 Oct 2023 09:55:59 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 211A010E1CD;
	Mon,  2 Oct 2023 07:55:56 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [134.134.136.100])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 6E4D610E21F
 for <intel-gfx@lists.freedesktop.org>; Mon,  2 Oct 2023 07:55:52 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1696233352; x=1727769352;
 h=from:to:cc:subject:in-reply-to:references:date:
 message-id:mime-version;
 bh=p/qpMvr8MjA0oqyyNclURvE6X1u7SfJfWpVUOSj+vpg=;
 b=lcH2XcK3Khf4+p7ZsHX1gooT2HL5/lLnEsH89ml55TimLPCsEB2Mm/5/
 +q9aCi3XGse1p7I7r+eVK0aQauEdhwYamy6hfzA4OzmUx5qTj13dEafsh
 B3R7efOYZT28WmW9te0KWfELYQcHubxYv5fkd6iHmzS73HfN0zjjp1MUd
 k92smz29oFLOcwOR4+HTBTMxWU6Ee0oxZz+8E34LEpbqjeLhYpaT4YUZz
 XdeRqQ4bo9cVaS7u0Nbp1GFNc2DvD8GM5gYTsDBUlOXuIxBMxYCbYMo7c
 ArudTIsQ6TVLTotyVBLJmVw95pmoeU/ZzLaK7gW/wXHpTqNIfntPRfqZ0 g==;
X-IronPort-AV: E=McAfee;i="6600,9927,10850"; a="449088115"
X-IronPort-AV: E=Sophos;i="6.03,193,1694761200"; d="scan'208";a="449088115"
Received: from fmsmga004.fm.intel.com ([10.253.24.48])
 by orsmga105.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 02 Oct 2023 00:55:51 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10850"; a="820817605"
X-IronPort-AV: E=Sophos;i="6.03,193,1694761200"; d="scan'208";a="820817605"
Received: from svandens-mobl.ger.corp.intel.com (HELO localhost)
 ([10.252.55.151])
 by fmsmga004-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 02 Oct 2023 00:55:47 -0700
From: Jani Nikula <jani.nikula@linux.intel.com>
To: Jonathan Cavitt <jonathan.cavitt@intel.com>,
 intel-gfx@lists.freedesktop.org
In-Reply-To: <20230929201837.849299-3-jonathan.cavitt@intel.com>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
References: <20230929201837.849299-1-jonathan.cavitt@intel.com>
 <20230929201837.849299-3-jonathan.cavitt@intel.com>
Date: Mon, 02 Oct 2023 10:55:40 +0300
Message-ID: <87ttr9h30j.fsf@intel.com>
MIME-Version: 1.0
Content-Type: text/plain
Subject: Re: [Intel-gfx] [PATCH v2 3/4] drm/i915: add one header file for GT
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
Cc: janusz.krzysztofik@intel.com, andi.shyti@intel.com,
 chris.p.wilson@linux.intel.com, jonathan.cavitt@intel.com,
 umesh.nirlige.ramappa@intel.com, matthew.d.roper@intel.com,
 nirmoy.das@intel.com
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Fri, 29 Sep 2023, Jonathan Cavitt <jonathan.cavitt@intel.com> wrote:
> From: Fei Yang <fei.yang@intel.com>
>
> Add a new header file for GT related Macros.
> Move I915_MAX_GT to this new header file because it doesn't
> belong to the i915 level.
>
> Suggested-by: Andi Shyti <andi.shyti@linux.intel.com>
> Signed-off-by: Fei Yang <fei.yang@intel.com>
> Signed-off-by: Jonathan Cavitt <jonathan.cavitt@intel.com>
> CC: Andi Shyti <andi.shyti@linux.intel.com>
> ---
>  drivers/gpu/drm/i915/gt/intel_gt_types.h | 1 +
>  1 file changed, 1 insertion(+)
>
> diff --git a/drivers/gpu/drm/i915/gt/intel_gt_types.h b/drivers/gpu/drm/i915/gt/intel_gt_types.h
> index def7dd0eb6f19..d697fcd7bad77 100644
> --- a/drivers/gpu/drm/i915/gt/intel_gt_types.h
> +++ b/drivers/gpu/drm/i915/gt/intel_gt_types.h
> @@ -23,6 +23,7 @@
>  #include "i915_perf_types.h"
>  #include "intel_engine_types.h"
>  #include "intel_gt_buffer_pool_types.h"
> +#include "intel_gt_defines.h"

Absolutely not.

Include it where needed.

We don't want catch-all headers.

BR,
Jani.

>  #include "intel_hwconfig.h"
>  #include "intel_llc_types.h"
>  #include "intel_reset_types.h"

-- 
Jani Nikula, Intel
