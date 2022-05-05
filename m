Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 2220C51CAD7
	for <lists+intel-gfx@lfdr.de>; Thu,  5 May 2022 22:59:36 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 5FA0910E1E9;
	Thu,  5 May 2022 20:59:34 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga05.intel.com (mga05.intel.com [192.55.52.43])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 6E6F110E1E9;
 Thu,  5 May 2022 20:59:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1651784373; x=1683320373;
 h=date:from:to:cc:subject:message-id:references:
 mime-version:content-transfer-encoding:in-reply-to;
 bh=X/f6vFcPBxsiwwdi3QZiKim1BEpuSxnffZV3TejMD8Q=;
 b=i/QFByrr5b54mn9Zz+i+rFMMC8uUfjGbUNLYmHg48vNX+FNwBE09Q055
 hJEJ47kL9DTn+hJmZhSfZXjZ/MpK2sbwR60lESQwdJZhS3BAT8HfQqyYy
 H9FGflQSD0NJ/LGatn2K8zML0iMT08kx+2l9vDO7xCVWUX/kJoH1s/eRa
 iyZL94/jhvnNNyhmLPo7tYqGdCWrJfALYHqT5iTzXaaQwgK4/oKJmrqiY
 PpnyZHd8gJ2NLH2h4hdor3HJAfnymy0Glfk8Zn4MdSyPXuNJDVYWFSMYB
 7KNncp+9g5T4MZXIPJZWtsTB+vg2FeFjbsisf130HaBjn3qu95AXgmWor g==;
X-IronPort-AV: E=McAfee;i="6400,9594,10338"; a="354683259"
X-IronPort-AV: E=Sophos;i="5.91,203,1647327600"; d="scan'208";a="354683259"
Received: from fmsmga006.fm.intel.com ([10.253.24.20])
 by fmsmga105.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 05 May 2022 13:59:33 -0700
X-IronPort-AV: E=Sophos;i="5.91,203,1647327600"; d="scan'208";a="811907212"
Received: from mdroper-desk1.fm.intel.com (HELO
 mdroper-desk1.amr.corp.intel.com) ([10.1.27.134])
 by fmsmga006-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 05 May 2022 13:59:32 -0700
Date: Thu, 5 May 2022 13:59:31 -0700
From: Matt Roper <matthew.d.roper@intel.com>
To: Tvrtko Ursulin <tvrtko.ursulin@linux.intel.com>
Message-ID: <YnQ6s5SqV9Dm4wPR@mdroper-desk1.amr.corp.intel.com>
References: <20220502163417.2635462-1-matthew.d.roper@intel.com>
 <20220502163417.2635462-8-matthew.d.roper@intel.com>
 <472e2679-abc5-8881-6f93-f64ec1feb365@linux.intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <472e2679-abc5-8881-6f93-f64ec1feb365@linux.intel.com>
Subject: Re: [Intel-gfx] [PATCH 07/11] drm/i915/pvc: Engines definitions for
 new copy engines
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
Cc: intel-gfx@lists.freedesktop.org, dri-devel@lists.freedesktop.org
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Tue, May 03, 2022 at 09:05:43AM +0100, Tvrtko Ursulin wrote:
> 
> On 02/05/2022 17:34, Matt Roper wrote:
> > This patch adds the basic definitions needed to support
> > new copy engines. Also updating the cmd_info to accommodate
> > new engines, as the engine id's of legacy engines have been
> > changed.
> > 
> > Original-author: CQ Tang
> > Signed-off-by: Matt Roper <matthew.d.roper@intel.com>
> > ---
> >   drivers/gpu/drm/i915/gt/intel_engine_cs.c    | 56 ++++++++++++++++++++
> >   drivers/gpu/drm/i915/gt/intel_engine_types.h | 10 +++-
> >   drivers/gpu/drm/i915/gt/intel_gt_regs.h      |  8 +++
> >   drivers/gpu/drm/i915/gvt/cmd_parser.c        |  2 +-
> >   drivers/gpu/drm/i915/i915_reg.h              |  8 +++
> >   5 files changed, 82 insertions(+), 2 deletions(-)
> > 
> > diff --git a/drivers/gpu/drm/i915/gt/intel_engine_cs.c b/drivers/gpu/drm/i915/gt/intel_engine_cs.c
> > index 14c6ddbbfde8..4532c3ea9ace 100644
> > --- a/drivers/gpu/drm/i915/gt/intel_engine_cs.c
> > +++ b/drivers/gpu/drm/i915/gt/intel_engine_cs.c
> > @@ -71,6 +71,62 @@ static const struct engine_info intel_engines[] = {
> >   			{ .graphics_ver = 6, .base = BLT_RING_BASE }
> >   		},
> >   	},
> > +	[BCS1] = {
> > +		.class = COPY_ENGINE_CLASS,
> > +		.instance = 1,
> > +		.mmio_bases = {
> > +			{ .graphics_ver = 12, .base = XEHPC_BCS1_RING_BASE }
> > +		},
> > +	},
> > +	[BCS2] = {
> > +		.class = COPY_ENGINE_CLASS,
> > +		.instance = 2,
> > +		.mmio_bases = {
> > +			{ .graphics_ver = 12, .base = XEHPC_BCS2_RING_BASE }
> > +		},
> > +	},
> > +	[BCS3] = {
> > +		.class = COPY_ENGINE_CLASS,
> > +		.instance = 3,
> > +		.mmio_bases = {
> > +			{ .graphics_ver = 12, .base = XEHPC_BCS3_RING_BASE }
> > +		},
> > +	},
> > +	[BCS4] = {
> > +		.class = COPY_ENGINE_CLASS,
> > +		.instance = 4,
> > +		.mmio_bases = {
> > +			{ .graphics_ver = 12, .base = XEHPC_BCS4_RING_BASE }
> > +		},
> > +	},
> > +	[BCS5] = {
> > +		.class = COPY_ENGINE_CLASS,
> > +		.instance = 5,
> > +		.mmio_bases = {
> > +			{ .graphics_ver = 12, .base = XEHPC_BCS5_RING_BASE }
> > +		},
> > +	},
> > +	[BCS6] = {
> > +		.class = COPY_ENGINE_CLASS,
> > +		.instance = 6,
> > +		.mmio_bases = {
> > +			{ .graphics_ver = 12, .base = XEHPC_BCS6_RING_BASE }
> > +		},
> > +	},
> > +	[BCS7] = {
> > +		.class = COPY_ENGINE_CLASS,
> > +		.instance = 7,
> > +		.mmio_bases = {
> > +			{ .graphics_ver = 12, .base = XEHPC_BCS7_RING_BASE }
> > +		},
> > +	},
> > +	[BCS8] = {
> > +		.class = COPY_ENGINE_CLASS,
> > +		.instance = 8,
> > +		.mmio_bases = {
> > +			{ .graphics_ver = 12, .base = XEHPC_BCS8_RING_BASE }
> > +		},
> > +	},
> >   	[VCS0] = {
> >   		.class = VIDEO_DECODE_CLASS,
> >   		.instance = 0,
> > diff --git a/drivers/gpu/drm/i915/gt/intel_engine_types.h b/drivers/gpu/drm/i915/gt/intel_engine_types.h
> > index 298f2cc7a879..356c15cdccf0 100644
> > --- a/drivers/gpu/drm/i915/gt/intel_engine_types.h
> > +++ b/drivers/gpu/drm/i915/gt/intel_engine_types.h
> > @@ -35,7 +35,7 @@
> >   #define OTHER_CLASS		4
> >   #define COMPUTE_CLASS		5
> >   #define MAX_ENGINE_CLASS	5
> > -#define MAX_ENGINE_INSTANCE	7
> > +#define MAX_ENGINE_INSTANCE	8
> >   #define I915_MAX_SLICES	3
> >   #define I915_MAX_SUBSLICES 8
> > @@ -107,6 +107,14 @@ struct i915_ctx_workarounds {
> >   enum intel_engine_id {
> >   	RCS0 = 0,
> >   	BCS0,
> > +	BCS1,
> > +	BCS2,
> > +	BCS3,
> > +	BCS4,
> > +	BCS5,
> > +	BCS6,
> > +	BCS7,
> > +	BCS8,
> 
> _BCS(n) macro will not be required?
> 
> >   	VCS0,
> >   	VCS1,
> >   	VCS2,
> > diff --git a/drivers/gpu/drm/i915/gt/intel_gt_regs.h b/drivers/gpu/drm/i915/gt/intel_gt_regs.h
> > index a0a49c16babd..aa2c0974b02c 100644
> > --- a/drivers/gpu/drm/i915/gt/intel_gt_regs.h
> > +++ b/drivers/gpu/drm/i915/gt/intel_gt_regs.h
> > @@ -1476,6 +1476,14 @@
> >   #define   GEN11_KCR				(19)
> >   #define   GEN11_GTPM				(16)
> >   #define   GEN11_BCS				(15)
> > +#define   XEHPC_BCS1				(14)
> > +#define   XEHPC_BCS2				(13)
> > +#define   XEHPC_BCS3				(12)
> > +#define   XEHPC_BCS4				(11)
> > +#define   XEHPC_BCS5				(10)
> > +#define   XEHPC_BCS6				(9)
> > +#define   XEHPC_BCS7				(8)
> > +#define   XEHPC_BCS8				(23)
> >   #define   GEN12_CCS3				(7)
> >   #define   GEN12_CCS2				(6)
> >   #define   GEN12_CCS1				(5)
> > diff --git a/drivers/gpu/drm/i915/gvt/cmd_parser.c b/drivers/gpu/drm/i915/gvt/cmd_parser.c
> > index b9eb75a2b400..0ba2a3455d99 100644
> > --- a/drivers/gpu/drm/i915/gvt/cmd_parser.c
> > +++ b/drivers/gpu/drm/i915/gvt/cmd_parser.c
> > @@ -428,7 +428,7 @@ struct cmd_info {
> >   #define R_VECS	BIT(VECS0)
> >   #define R_ALL (R_RCS | R_VCS | R_BCS | R_VECS)
> >   	/* rings that support this cmd: BLT/RCS/VCS/VECS */
> > -	u16 rings;
> > +	intel_engine_mask_t rings;
> 
> Looks like mask already overflows u16 even without the blitter engines.
> (When CCS were added.) Meaning maybe there should be a separate patch to fix
> it.

Adding the CCS engines didn't cause a problem because GVT only includes
the gen11 set of engines in R_ALL.  Since the CCS engines (and even the
higher instances of VCS/VECS introduced by Xe_HP) are never used
anywhere in GVT, there's no overflow possible...the highest bit they
ever use anywhere is VECS0; before this patch, that was bit(10) and fit
within a u16 comfortably.  But since the new BCS engines added by this
patch get inserted at lower values within the engine_id enum, the
location of VECS0 moves up to bit(18), which falls outside the u16
definition and triggers a build failure:

drivers/gpu/drm/i915/gvt/cmd_parser.c:429:15: error: conversion from ‘long unsigned int’ to ‘short unsigned int’ changes value from ‘265219’ to ‘3075’ [-Werror=overflow]
  429 | #define R_ALL (R_RCS | R_VCS | R_BCS | R_VECS)


Matt

> 
> But good question though is GVT supporting CCS and should it be part of
> R_ALL? Or should this patch even be touching GVT since CCS enablement did
> not? Adding Zhi to comment.
> 
> Regards,
> 
> Tvrtko
> 
> >   	/* devices that support this cmd: SNB/IVB/HSW/... */
> >   	u16 devices;
> > diff --git a/drivers/gpu/drm/i915/i915_reg.h b/drivers/gpu/drm/i915/i915_reg.h
> > index 4a3d7b96ef43..ab64ab4317b3 100644
> > --- a/drivers/gpu/drm/i915/i915_reg.h
> > +++ b/drivers/gpu/drm/i915/i915_reg.h
> > @@ -976,6 +976,14 @@
> >   #define GEN12_COMPUTE2_RING_BASE	0x1e000
> >   #define GEN12_COMPUTE3_RING_BASE	0x26000
> >   #define BLT_RING_BASE		0x22000
> > +#define XEHPC_BCS1_RING_BASE	0x3e0000
> > +#define XEHPC_BCS2_RING_BASE	0x3e2000
> > +#define XEHPC_BCS3_RING_BASE	0x3e4000
> > +#define XEHPC_BCS4_RING_BASE	0x3e6000
> > +#define XEHPC_BCS5_RING_BASE	0x3e8000
> > +#define XEHPC_BCS6_RING_BASE	0x3ea000
> > +#define XEHPC_BCS7_RING_BASE	0x3ec000
> > +#define XEHPC_BCS8_RING_BASE	0x3ee000
> >   #define DG1_GSC_HECI1_BASE	0x00258000
> >   #define DG1_GSC_HECI2_BASE	0x00259000
> >   #define DG2_GSC_HECI1_BASE	0x00373000

-- 
Matt Roper
Graphics Software Engineer
VTT-OSGC Platform Enablement
Intel Corporation
(916) 356-2795
