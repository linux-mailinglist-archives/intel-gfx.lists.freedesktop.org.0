Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 5439A3E9A2A
	for <lists+intel-gfx@lfdr.de>; Wed, 11 Aug 2021 23:04:22 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 2EE266E1BB;
	Wed, 11 Aug 2021 21:04:19 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga03.intel.com (mga03.intel.com [134.134.136.65])
 by gabe.freedesktop.org (Postfix) with ESMTPS id E14BB6E1BB
 for <intel-gfx@lists.freedesktop.org>; Wed, 11 Aug 2021 21:04:17 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6200,9189,10073"; a="215248631"
X-IronPort-AV: E=Sophos;i="5.84,313,1620716400"; d="scan'208";a="215248631"
Received: from orsmga007.jf.intel.com ([10.7.209.58])
 by orsmga103.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 11 Aug 2021 14:04:17 -0700
X-IronPort-AV: E=Sophos;i="5.84,313,1620716400"; d="scan'208";a="460860839"
Received: from mdroper-desk1.fm.intel.com (HELO
 mdroper-desk1.amr.corp.intel.com) ([10.1.27.134])
 by orsmga007-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 11 Aug 2021 14:04:17 -0700
Date: Wed, 11 Aug 2021 14:04:15 -0700
From: Matt Roper <matthew.d.roper@intel.com>
To: "Souza, Jose" <jose.souza@intel.com>
Cc: "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>,
 "mika.kuoppala@linux.intel.com" <mika.kuoppala@linux.intel.com>,
 "Ceraolo Spurio, Daniele" <daniele.ceraolospurio@intel.com>
Message-ID: <20210811210415.GI1556418@mdroper-desk1.amr.corp.intel.com>
References: <20210806174130.1058960-1-matthew.d.roper@intel.com>
 <c53a507f96eadee5178062305c999ff1250999c9.camel@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=iso-8859-1
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <c53a507f96eadee5178062305c999ff1250999c9.camel@intel.com>
Subject: Re: [Intel-gfx] [PATCH] drm/i915: Only access SFC_DONE when media
 domain is not fused off
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

On Wed, Aug 11, 2021 at 01:55:48PM -0700, Souza, Jose wrote:
> On Fri, 2021-08-06 at 10:41 -0700, Matt Roper wrote:
> > The SFC_DONE register lives within the corresponding VD0/VD2/VD4/VD6
> > forcewake domain and is not accessible if the vdbox in that domain is
> > fused off and the forcewake is not initialized.
> > 
> > This mistake went unnoticed because until recently we were using the
> > wrong register offset for the SFC_DONE register; once the register
> > offset was corrected, we started hitting errors like
> > 
> >   <4> [544.989065] i915 0000:cc:00.0: Uninitialized forcewake domain(s) 0x80 accessed at 0x1ce000
> > 
> > on parts with fused-off vdbox engines.
> 
> Reviewed-by: José Roberto de Souza <jose.souza@intel.com>

Applied to drm-intel-next.  Thanks for the review.


Matt

> 
> > 
> > Fixes: e50dbdbfd9fb ("drm/i915/tgl: Add SFC instdone to error state")
> > Fixes: 82929a2140eb ("drm/i915: Correct SFC_DONE register offset")
> > Cc: Daniele Ceraolo Spurio <daniele.ceraolospurio@intel.com>
> > Cc: Mika Kuoppala <mika.kuoppala@linux.intel.com>
> > Signed-off-by: Matt Roper <matthew.d.roper@intel.com>
> > ---
> >  drivers/gpu/drm/i915/i915_gpu_error.c | 19 ++++++++++++++++++-
> >  1 file changed, 18 insertions(+), 1 deletion(-)
> > 
> > diff --git a/drivers/gpu/drm/i915/i915_gpu_error.c b/drivers/gpu/drm/i915/i915_gpu_error.c
> > index 0f08bcfbe964..9cf6ac575de1 100644
> > --- a/drivers/gpu/drm/i915/i915_gpu_error.c
> > +++ b/drivers/gpu/drm/i915/i915_gpu_error.c
> > @@ -727,9 +727,18 @@ static void err_print_gt(struct drm_i915_error_state_buf *m,
> >  	if (GRAPHICS_VER(m->i915) >= 12) {
> >  		int i;
> >  
> > -		for (i = 0; i < GEN12_SFC_DONE_MAX; i++)
> > +		for (i = 0; i < GEN12_SFC_DONE_MAX; i++) {
> > +			/*
> > +			 * SFC_DONE resides in the VD forcewake domain, so it
> > +			 * only exists if the corresponding VCS engine is
> > +			 * present.
> > +			 */
> > +			if (!HAS_ENGINE(gt->_gt, _VCS(i * 2)))
> > +				continue;
> > +
> >  			err_printf(m, "  SFC_DONE[%d]: 0x%08x\n", i,
> >  				   gt->sfc_done[i]);
> > +		}
> >  
> >  		err_printf(m, "  GAM_DONE: 0x%08x\n", gt->gam_done);
> >  	}
> > @@ -1598,6 +1607,14 @@ static void gt_record_regs(struct intel_gt_coredump *gt)
> >  
> >  	if (GRAPHICS_VER(i915) >= 12) {
> >  		for (i = 0; i < GEN12_SFC_DONE_MAX; i++) {
> > +			/*
> > +			 * SFC_DONE resides in the VD forcewake domain, so it
> > +			 * only exists if the corresponding VCS engine is
> > +			 * present.
> > +			 */
> > +			if (!HAS_ENGINE(gt->_gt, _VCS(i * 2)))
> > +				continue;
> > +
> >  			gt->sfc_done[i] =
> >  				intel_uncore_read(uncore, GEN12_SFC_DONE(i));
> >  		}
> 

-- 
Matt Roper
Graphics Software Engineer
VTT-OSGC Platform Enablement
Intel Corporation
(916) 356-2795
