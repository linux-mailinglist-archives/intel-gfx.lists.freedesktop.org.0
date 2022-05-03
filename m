Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 5FBEB51876D
	for <lists+intel-gfx@lfdr.de>; Tue,  3 May 2022 16:56:08 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id DE98F10E419;
	Tue,  3 May 2022 14:56:05 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga03.intel.com (mga03.intel.com [134.134.136.65])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 52B7110E329;
 Tue,  3 May 2022 14:56:04 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1651589764; x=1683125764;
 h=date:from:to:cc:subject:message-id:references:
 mime-version:in-reply-to;
 bh=mcNiq24dgcoii9RZG1mA/dCdkkXemv75lVZhKcNZNrE=;
 b=MZB/DsSA/yXvwxs3hwMXRso98XgY2WRtsOCIg5b6Zxp+hJG6JAOFdlda
 U75jnxOlgH2RjwBaV2EG1tUhrCFDIve9N8hmWvDZkcJ6zItpqh8m+9KHv
 zqFcdR3tZOGPc3tjIAp3xNXaWdKzHF1me63owIs/TAHneyyPWCiQIHjmN
 jMnSerbMfBX+QqncR1Egj3UZ7YPmTUa9ENE65cfk7ren+CHmzrhaw2vyy
 doyy2pJm/Fi7fZdy9VCPDjCqq3e53ksIhInoqPLIZvlDcniTzNulpSisd
 Dl8LKtJb0Qs37aPxHCbakrFrEUGE9o4CykVgjulsLsHLYmTG8Hrbe0ymA Q==;
X-IronPort-AV: E=McAfee;i="6400,9594,10336"; a="267374556"
X-IronPort-AV: E=Sophos;i="5.91,195,1647327600"; d="scan'208";a="267374556"
Received: from fmsmga008.fm.intel.com ([10.253.24.58])
 by orsmga103.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 03 May 2022 07:56:03 -0700
X-IronPort-AV: E=Sophos;i="5.91,195,1647327600"; d="scan'208";a="620366447"
Received: from mdroper-desk1.fm.intel.com (HELO
 mdroper-desk1.amr.corp.intel.com) ([10.1.27.134])
 by fmsmga008-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 03 May 2022 07:56:03 -0700
Date: Tue, 3 May 2022 07:56:02 -0700
From: Matt Roper <matthew.d.roper@intel.com>
To: Tvrtko Ursulin <tvrtko.ursulin@linux.intel.com>
Message-ID: <YnFCgtBB+wUY2Up2@mdroper-desk1.amr.corp.intel.com>
References: <20220502163417.2635462-1-matthew.d.roper@intel.com>
 <0524db05-4d9e-4522-4d80-10ffe4c4207c@linux.intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <0524db05-4d9e-4522-4d80-10ffe4c4207c@linux.intel.com>
Subject: Re: [Intel-gfx] [PATCH 00/11] i915: Introduce Ponte Vecchio
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

On Tue, May 03, 2022 at 09:21:04AM +0100, Tvrtko Ursulin wrote:
> 
> On 02/05/2022 17:34, Matt Roper wrote:
> > Ponte Vecchio (PVC) is a new GPU based on the Xe_HPC architecture.  As a
> > compute-focused platform, PVC has compute engines and enhanced copy
> > engines, but no render engine (there is no geometry pipeline) and no
> > display.
> > 
> > This is just a handful of early enablement patches, including some
> > initial support for the new copy engines (although we're not yet adding
> > those to the platform's engine list or exposing them to userspace just
> > yet).
> 
> IMO lets hold off merging this until next week if that sounds acceptable?
> This week I need to do a final pull for final bits of DG2 and I would like
> to keep it as small as possible.

I was wondering if we should try to apply patch #1 quickly, just to get
the IS_PONTEVECCHIO definition into the tree early and minimize the
cross-tree merge hassles down the road?  Although I guess PVC might not
be as big a problem as some platforms since no display means that we
won't have a huge split of patches between -next and -gt-next that both
need the basic defines present.


Matt

> 
> Regards,
> 
> Tvrtko
> 
> > 
> > Ayaz A Siddiqui (1):
> >    drm/i915/pvc: Define MOCS table for PVC
> > 
> > John Harrison (1):
> >    drm/i915/pvc: Reduce stack usage in reset selftest with extra blitter
> >      engine
> > 
> > Lucas De Marchi (2):
> >    drm/i915/pvc: skip all copy engines from aux table invalidate
> >    drm/i915/pvc: read fuses for link copy engines
> > 
> > Matt Roper (5):
> >    drm/i915/pvc: Add forcewake support
> >    drm/i915/pvc: Read correct RP_STATE_CAP register
> >    drm/i915/pvc: Engines definitions for new copy engines
> >    drm/i915/pvc: Interrupt support for new copy engines
> >    drm/i915/pvc: Reset support for new copy engines
> > 
> > Stuart Summers (2):
> >    drm/i915/pvc: add initial Ponte Vecchio definitions
> >    drm/i915/pvc: Remove additional 3D flags from PIPE_CONTROL
> > 
> >   drivers/gpu/drm/i915/gt/gen8_engine_cs.c      |  20 ++-
> >   drivers/gpu/drm/i915/gt/intel_engine_cs.c     |  92 +++++++++++
> >   drivers/gpu/drm/i915/gt/intel_engine_types.h  |  10 +-
> >   drivers/gpu/drm/i915/gt/intel_gpu_commands.h  |  12 +-
> >   drivers/gpu/drm/i915/gt/intel_gt_irq.c        |  16 ++
> >   drivers/gpu/drm/i915/gt/intel_gt_regs.h       |  56 ++++---
> >   drivers/gpu/drm/i915/gt/intel_gt_types.h      |   1 +
> >   drivers/gpu/drm/i915/gt/intel_mocs.c          |  24 ++-
> >   drivers/gpu/drm/i915/gt/intel_rps.c           |   4 +-
> >   drivers/gpu/drm/i915/gt/intel_workarounds.c   |  13 +-
> >   drivers/gpu/drm/i915/gt/selftest_hangcheck.c  |   9 +-
> >   drivers/gpu/drm/i915/gvt/cmd_parser.c         |   2 +-
> >   drivers/gpu/drm/i915/i915_drv.h               |   6 +
> >   drivers/gpu/drm/i915/i915_pci.c               |  23 +++
> >   drivers/gpu/drm/i915/i915_reg.h               |   9 ++
> >   drivers/gpu/drm/i915/intel_device_info.c      |   1 +
> >   drivers/gpu/drm/i915/intel_device_info.h      |   5 +-
> >   drivers/gpu/drm/i915/intel_uncore.c           | 150 +++++++++++++++++-
> >   drivers/gpu/drm/i915/selftests/intel_uncore.c |   2 +
> >   19 files changed, 417 insertions(+), 38 deletions(-)
> > 

-- 
Matt Roper
Graphics Software Engineer
VTT-OSGC Platform Enablement
Intel Corporation
(916) 356-2795
