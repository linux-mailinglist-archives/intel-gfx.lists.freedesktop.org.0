Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id D1540411E2F
	for <lists+intel-gfx@lfdr.de>; Mon, 20 Sep 2021 19:28:15 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 4975B6E5A9;
	Mon, 20 Sep 2021 17:28:13 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga04.intel.com (mga04.intel.com [192.55.52.120])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 8AC3D6E5A5
 for <intel-gfx@lists.freedesktop.org>; Mon, 20 Sep 2021 17:28:11 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6200,9189,10113"; a="221301812"
X-IronPort-AV: E=Sophos;i="5.85,308,1624345200"; d="scan'208";a="221301812"
Received: from fmsmga003.fm.intel.com ([10.253.24.29])
 by fmsmga104.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 20 Sep 2021 10:28:09 -0700
X-IronPort-AV: E=Sophos;i="5.85,308,1624345200"; d="scan'208";a="548879623"
Received: from vvtravki-mobl.amr.corp.intel.com (HELO intel.com)
 ([10.255.37.87])
 by fmsmga003-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 20 Sep 2021 10:28:08 -0700
Date: Mon, 20 Sep 2021 13:28:06 -0400
From: Rodrigo Vivi <rodrigo.vivi@intel.com>
To: "Teres Alexis, Alan Previn" <alan.previn.teres.alexis@intel.com>
Cc: "sean.z.huang@intel.com" <sean.z.huang@intel.com>,
 "Huang@freedesktop.org" <Huang@freedesktop.org>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>,
 "Ceraolo Spurio, Daniele" <daniele.ceraolospurio@intel.com>,
 "chris@chris-wilson.co.uk" <chris@chris-wilson.co.uk>
Message-ID: <YUjEpiFPnHvq+rDW@intel.com>
References: <20210918042008.29468-1-alan.previn.teres.alexis@intel.com>
 <20210918042008.29468-10-alan.previn.teres.alexis@intel.com>
 <YUixKKXkHyUY0bF3@intel.com>
 <f998c74c65c3a30ae2e6e0b9f68d551b0d92b063.camel@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <f998c74c65c3a30ae2e6e0b9f68d551b0d92b063.camel@intel.com>
Subject: Re: [Intel-gfx] [PATCH v10 09/17] drm/i915/pxp: Implement PXP irq
 handler
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

On Mon, Sep 20, 2021 at 04:18:10PM +0000, Teres Alexis, Alan Previn wrote:
> 
> On Mon, 2021-09-20 at 12:04 -0400, Rodrigo Vivi wrote:
> > On Fri, Sep 17, 2021 at 09:20:00PM -0700, Alan Previn wrote:
> > > From: "Huang, Sean Z" <sean.z.huang@intel.com>
> > > 
> > > The HW will generate a teardown interrupt when session termination is
> > > required, which requires i915 to submit a terminating batch. Once the HW
> > > is done with the termination it will generate another interrupt, at
> > > which point it is safe to re-create the session.
> > > 
> > > Since the termination and re-creation flow is something we want to
> > > trigger from the driver as well, use a common work function that can be
> > > called both from the irq handler and from the driver set-up flows, which
> > > has the addded benefit of allowing us to skip any extra locks because
> > > the work itself serializes the operations.
> > > 
> > > v2: use struct completion instead of bool (Chris)
> > > v3: drop locks, clean up functions and improve comments (Chris),
> > >     move to common work function.
> > > v4: improve comments, simplify wait logic (Rodrigo)
> > > v5: unconditionally set interrupts, rename state_attacked var (Rodrigo)
> > > 
> > > Signed-off-by: Alan Previn <alan.previn.teres.alexis@intel.com>
> > > Signed-off-by: Huang, Sean Z <sean.z.huang@intel.com>
> > > Signed-off-by: Daniele Ceraolo Spurio <daniele.ceraolospurio@intel.com>
> > > Cc: Chris Wilson <chris@chris-wilson.co.uk>
> > > Cc: Rodrigo Vivi <rodrigo.vivi@intel.com>
> > > Reviewed-by: Rodrigo Vivi <rodrigo.vivi@intel.com>
> > > ---
> > > +#include <linux/workqueue.h>
> > > +#include "intel_pxp.h"
> > > +#include "intel_pxp_irq.h"
> > > +#include "intel_pxp_session.h"
> > > +#include "gt/intel_gt_irq.h"
> > > +#include "gt/intel_gt_types.h"
> > > +#include "i915_irq.h"
> > > +#include "i915_reg.h"
> > > +
> > > +/**
> > > + * intel_pxp_irq_handler - Handles PXP interrupts.
> > > + * @pxp: pointer to pxp struct
> > > + * @iir: interrupt vector
> > > + */
> > > +void intel_pxp_irq_handler(struct intel_pxp *pxp, u16 iir)
> > > +{
> > > +	struct intel_gt *gt = pxp_to_gt(pxp);
> > 
> > this compiles, but I don't see how this can work.
> > 
> > shouldn't we use the container_of here directly instead of trying
> > to use something that is not properly defined?
> > 
> Its now a function that's abstracted in .c file and prototype defined in the intel_pxp.h. Unless i
> misunderstood something, i thought this was one of the options discussed in last rev - i can change it
> again to use the container_of directly in all the instances if you like. side note: inline was still
> defined but only for the CONFIG_PXP==off case that doesn't require the additional header inclusions.

Oh, indeed.... Sorry
If this was not working we would get an "Undefined referrence" in the face.

Reviewed-by: Rodrigo Vivi <rodrigo.vivi@intel.com>

for this v as well.

> 
> > > +
