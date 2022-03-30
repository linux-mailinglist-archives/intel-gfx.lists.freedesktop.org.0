Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 761854EBE7B
	for <lists+intel-gfx@lfdr.de>; Wed, 30 Mar 2022 12:16:36 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 053BE10E1D1;
	Wed, 30 Mar 2022 10:16:34 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga07.intel.com (mga07.intel.com [134.134.136.100])
 by gabe.freedesktop.org (Postfix) with ESMTPS id D806610E1D1
 for <intel-gfx@lists.freedesktop.org>; Wed, 30 Mar 2022 10:16:32 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1648635392; x=1680171392;
 h=from:to:cc:subject:in-reply-to:references:date:
 message-id:mime-version;
 bh=uyBsgBiC33eYi37iVVS2dW5CzLfR9drPB0Bsko0zVIo=;
 b=JeqCzsHAP/Ylvbuw0vL3Wjf+IrG8EyOacH4PUcnX9x/n4C7sfaiR5FGt
 Ahq+4c3STtAdT82ru4Ct1zqps0AoTQqDjL6xbqOtsu2cUHTNPgiyvsDun
 9bZkekcntyMqmvts989MoDHFnebcys8HypfCsK5E0xeB+0bKLFuYY2XIt
 iypwTa7Qdkxz0EvrnsooWp9zY0ZEBCAShTxg4AD8f5EJNWFGYmgmO/mKl
 oFSUasD78lkA2sLdORcf0SUYe5DhFzdLokZtFO4Telu99LxxPRqmdJ3y5
 cPltHRSEs9ZFqtseRl8qPBSeea3LMSutrAMFiGaFhx4wnhiZCAn5RMHiF Q==;
X-IronPort-AV: E=McAfee;i="6200,9189,10301"; a="322687518"
X-IronPort-AV: E=Sophos;i="5.90,222,1643702400"; d="scan'208";a="322687518"
Received: from orsmga008.jf.intel.com ([10.7.209.65])
 by orsmga105.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 30 Mar 2022 03:16:32 -0700
X-IronPort-AV: E=Sophos;i="5.90,222,1643702400"; d="scan'208";a="565476883"
Received: from nhanus-mobl.ger.corp.intel.com (HELO localhost)
 ([10.252.62.116])
 by orsmga008-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 30 Mar 2022 03:16:29 -0700
From: Jani Nikula <jani.nikula@linux.intel.com>
To: Casey Bowman <casey.g.bowman@intel.com>, intel-gfx@lists.freedesktop.org
In-Reply-To: <20220329235830.1025100-2-casey.g.bowman@intel.com>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
References: <20220329235830.1025100-1-casey.g.bowman@intel.com>
 <20220329235830.1025100-2-casey.g.bowman@intel.com>
Date: Wed, 30 Mar 2022 13:16:26 +0300
Message-ID: <874k3fd9tx.fsf@intel.com>
MIME-Version: 1.0
Content-Type: text/plain
Subject: Re: [Intel-gfx] [PATCH v3 1/2] drm/i915/gt: Split intel-gtt
 functions by arch
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
Cc: thomas.hellstrom@linux.intel.com, lucas.demarchi@intel.com,
 chris@chris-wilson.co.uk
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Tue, 29 Mar 2022, Casey Bowman <casey.g.bowman@intel.com> wrote:
> +/* Stubs for non-x86 platforms */
> +#else
> +static inline void intel_gt_gmch_gen5_chipset_flush(struct intel_gt *gt)
> +{
> +}
> +static inline int intel_gt_gmch_gen5_probe(struct i915_ggtt *ggtt)
> +{
> +	/* No HW should be probed for this case yet, return fail */
> +	return -1;
> +}
> +static inline int intel_gt_gmch_gen6_probe(struct i915_ggtt *ggtt)
> +{
> +	/* No HW should be probed for this case yet, return fail */
> +	return -1;
> +}
> +static inline int intel_gt_gmch_gen8_probe(struct i915_ggtt *ggtt)
> +{
> +	/* No HW should be probed for this case yet, return fail */
> +	return -1;
> +}
> +static inline int intel_gt_gmch_gen5_enable_hw(struct drm_i915_private *i915)
> +{
> +	/* No HW should be enabled for this case yet, return fail */
> +	return -1;
> +}
> +#endif

Never use magic -1 for negative errno returns. That's -EPERM and not
what you mean. -ENODEV or -EINVAL are better here.

(As an exception, returning -1 is *maybe* fine for functions that return
an index or something, and have zero chance of propagating to somewhere
that actually interprets the number as a negative errno.)

BR,
Jani.

-- 
Jani Nikula, Intel Open Source Graphics Center
