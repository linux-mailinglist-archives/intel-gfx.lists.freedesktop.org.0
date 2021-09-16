Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 4885140D81E
	for <lists+intel-gfx@lfdr.de>; Thu, 16 Sep 2021 13:07:25 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 24F306EB68;
	Thu, 16 Sep 2021 11:07:23 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga14.intel.com (mga14.intel.com [192.55.52.115])
 by gabe.freedesktop.org (Postfix) with ESMTPS id C47C96EB68;
 Thu, 16 Sep 2021 11:07:21 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6200,9189,10108"; a="222195440"
X-IronPort-AV: E=Sophos;i="5.85,298,1624345200"; d="scan'208";a="222195440"
Received: from fmsmga003.fm.intel.com ([10.253.24.29])
 by fmsmga103.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 16 Sep 2021 04:07:02 -0700
X-IronPort-AV: E=Sophos;i="5.85,298,1624345200"; d="scan'208";a="545530152"
Received: from djustese-mobl.ger.corp.intel.com (HELO localhost)
 ([10.249.34.120])
 by fmsmga003-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 16 Sep 2021 04:06:59 -0700
From: Jani Nikula <jani.nikula@linux.intel.com>
To: Rodrigo Vivi <rodrigo.vivi@intel.com>
Cc: Daniele Ceraolo Spurio <daniele.ceraolospurio@intel.com>,
 intel-gfx@lists.freedesktop.org, dri-devel@lists.freedesktop.org,
 Chris Wilson <chris@chris-wilson.co.uk>,
 Daniel Vetter <daniel.vetter@ffwll.ch>, Dave Airlie <airlied@redhat.com>
In-Reply-To: <YUJe4Az/in46lPkg@intel.com>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
References: <20210910153627.1060858-1-daniele.ceraolospurio@intel.com>
 <20210910153627.1060858-5-daniele.ceraolospurio@intel.com>
 <874kamx7vk.fsf@intel.com> <YUJe4Az/in46lPkg@intel.com>
Date: Thu, 16 Sep 2021 14:06:56 +0300
Message-ID: <87bl4swzhr.fsf@intel.com>
MIME-Version: 1.0
Content-Type: text/plain
Subject: Re: [Intel-gfx] [PATCH v9 04/17] drm/i915/pxp: allocate a vcs
 context for pxp usage
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
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Wed, 15 Sep 2021, Rodrigo Vivi <rodrigo.vivi@intel.com> wrote:
> On Wed, Sep 15, 2021 at 04:53:35PM +0300, Jani Nikula wrote:
>> On Fri, 10 Sep 2021, Daniele Ceraolo Spurio <daniele.ceraolospurio@intel.com> wrote:
>> > diff --git a/drivers/gpu/drm/i915/pxp/intel_pxp.h b/drivers/gpu/drm/i915/pxp/intel_pxp.h
>> > new file mode 100644
>> > index 000000000000..e87550fb9821
>> > --- /dev/null
>> > +++ b/drivers/gpu/drm/i915/pxp/intel_pxp.h
>> > @@ -0,0 +1,35 @@
>> > +/* SPDX-License-Identifier: MIT */
>> > +/*
>> > + * Copyright(c) 2020, Intel Corporation. All rights reserved.
>> > + */
>> > +
>> > +#ifndef __INTEL_PXP_H__
>> > +#define __INTEL_PXP_H__
>> > +
>> > +#include "gt/intel_gt_types.h"
>> 
>> I've been trying to promote the idea that we don't include headers from
>> headers, unless really necessary. It helps with build times by reducing
>> rebuilds due to changes, but more importantly, it helps with coming up
>> with abstractions that don't need to look at the guts of other
>> components.
>> 
>> The above include line pulls in 67 other includes. And it has to look at
>> the same files a *lot* more times to know not to include them again.
>> 
>> Maybe we need to start being more aggressive about hiding the
>> abstractions behind the interfaces and headers. Static inlines are
>> nothing but micro-optimizations that leak abstractions. Do we need
>> these?
>
> Yeap, we have a few cases where this is already happening...
>
> Should we start using the container_of more directly and avoid the a_to_b()
> helpers?
>
> Should we create the a_to_b() helpers only inside .c files like we have
> in a few other cases?
>
> In this pxp case here it looks like using the container of directly is
> everywhere is better... is this your recommendation?

Either that, or make it a non-inline function that's actually
abstracted. Yes, it leads to a function call, but I'm really starting to
wonder about the costs of a function call vs. maintainability across the
board.

Static inlines considered harmful.


BR,
Jani.


>
>> 
>> > +#include "intel_pxp_types.h"
>> > +
>> > +static inline struct intel_gt *pxp_to_gt(const struct intel_pxp *pxp)
>> > +{
>> > +	return container_of(pxp, struct intel_gt, pxp);
>> > +}
>> 
>> I think it's questionable to claim the parameter is const, when you can
>> do:
>> 
>> 	const struct intel_pxp *const_pxp = something;
>> 	struct intel_pxp *pxp = &pxp_to_gt(const_pxp)->pxp;
>> 
>> BR,
>> Jani.
>> 
>> > +
>> > +static inline bool intel_pxp_is_enabled(const struct intel_pxp *pxp)
>> > +{
>> > +	return pxp->ce;
>> > +}
>> > +
>> > +#ifdef CONFIG_DRM_I915_PXP
>> > +void intel_pxp_init(struct intel_pxp *pxp);
>> > +void intel_pxp_fini(struct intel_pxp *pxp);
>> > +#else
>> > +static inline void intel_pxp_init(struct intel_pxp *pxp)
>> > +{
>> > +}
>> > +
>> > +static inline void intel_pxp_fini(struct intel_pxp *pxp)
>> > +{
>> > +}
>> > +#endif
>> > +
>> > +#endif /* __INTEL_PXP_H__ */
>> > diff --git a/drivers/gpu/drm/i915/pxp/intel_pxp_types.h b/drivers/gpu/drm/i915/pxp/intel_pxp_types.h
>> > new file mode 100644
>> > index 000000000000..bd12c520e60a
>> > --- /dev/null
>> > +++ b/drivers/gpu/drm/i915/pxp/intel_pxp_types.h
>> > @@ -0,0 +1,15 @@
>> > +/* SPDX-License-Identifier: MIT */
>> > +/*
>> > + * Copyright(c) 2020, Intel Corporation. All rights reserved.
>> > + */
>> > +
>> > +#ifndef __INTEL_PXP_TYPES_H__
>> > +#define __INTEL_PXP_TYPES_H__
>> > +
>> > +struct intel_context;
>> > +
>> > +struct intel_pxp {
>> > +	struct intel_context *ce;
>> > +};
>> > +
>> > +#endif /* __INTEL_PXP_TYPES_H__ */
>> 
>> -- 
>> Jani Nikula, Intel Open Source Graphics Center

-- 
Jani Nikula, Intel Open Source Graphics Center
