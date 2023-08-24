Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 79A80787B30
	for <lists+intel-gfx@lfdr.de>; Fri, 25 Aug 2023 00:06:21 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id EDBE210E5E9;
	Thu, 24 Aug 2023 22:06:18 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from dfw.source.kernel.org (dfw.source.kernel.org
 [IPv6:2604:1380:4641:c500::1])
 by gabe.freedesktop.org (Postfix) with ESMTPS id A8F3A10E5E8
 for <intel-gfx@lists.freedesktop.org>; Thu, 24 Aug 2023 22:06:16 +0000 (UTC)
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
 (using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
 key-exchange X25519 server-signature RSA-PSS (2048 bits))
 (No client certificate requested)
 by dfw.source.kernel.org (Postfix) with ESMTPS id BAB0B60B2A;
 Thu, 24 Aug 2023 22:06:15 +0000 (UTC)
Received: from rdvivi-mobl4 (unknown [192.55.54.48])
 (using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
 key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
 (No client certificate requested)
 by smtp.kernel.org (Postfix) with ESMTPSA id 9C83CC433C7;
 Thu, 24 Aug 2023 22:06:12 +0000 (UTC)
Date: Thu, 24 Aug 2023 18:06:10 -0400
From: Rodrigo Vivi <rodrigo.vivi@kernel.org>
To: Matt Roper <matthew.d.roper@intel.com>
Message-ID: <ZOfUUv+2RhOOEg7+@rdvivi-mobl4>
References: <20230823213901.335696-1-rodrigo.vivi@intel.com>
 <20230823222203.GP1529860@mdroper-desk1.amr.corp.intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20230823222203.GP1529860@mdroper-desk1.amr.corp.intel.com>
Subject: Re: [Intel-gfx] [PATCH] drm/i915: Add missing CCS documentation.
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
Cc: intel-gfx@lists.freedesktop.org,
 Sushma Venkatesh Reddy <sushma.venkatesh.reddy@intel.com>,
 Rodrigo Vivi <rodrigo.vivi@intel.com>
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Wed, Aug 23, 2023 at 03:22:07PM -0700, Matt Roper wrote:
> On Wed, Aug 23, 2023 at 05:39:01PM -0400, Rodrigo Vivi wrote:
> > Let's introduce the basic documentation about CCS.
> > While doing that, also removed the legacy execution flag name. That flag
> > simply doesn't exist for CCS and it is not needed on current context
> > submission. Those flag names are only needed on legacy context,
> > while on new ones we only need to pass the engine ID.
> > 
> > It is worth mention that this documentation should probably live with
> > the engine definitions rather than in the i915.rst file directly and
> > that more updates are likely need in this section. But this should
> > come later.
> 
> It may be better to just delete this completely and instead provide a
> reference to the better engine documentation we already have in
> include/uapi/drm/i915_drm.h?

I thought about that, but I believe the 2 different documentation have
different reader targets, although there are some overlapping.

But probably the right way is indeed to move these things to the .h where
they are defined... or we are sentenced to keep forgetting to update
this one way or another.

> 
> > 
> > Fixes: 944823c94639 ("drm/i915/xehp: Define compute class and engine")
> > Cc: Matt Roper <matthew.d.roper@intel.com>
> > Cc: Sushma Venkatesh Reddy <sushma.venkatesh.reddy@intel.com>
> > Cc: Joonas Lahtinen <joonas.lahtinen@linux.intel.com>
> > Cc: Tvrtko Ursulin <tvrtko.ursulin@intel.com>
> > Signed-off-by: Rodrigo Vivi <rodrigo.vivi@intel.com>
> > ---
> >  Documentation/gpu/i915.rst | 24 +++++++++++-------------
> >  1 file changed, 11 insertions(+), 13 deletions(-)
> > 
> > diff --git a/Documentation/gpu/i915.rst b/Documentation/gpu/i915.rst
> > index 60ea21734902..87bdcd616944 100644
> > --- a/Documentation/gpu/i915.rst
> > +++ b/Documentation/gpu/i915.rst
> > @@ -267,19 +267,17 @@ i915 driver.
> >  Intel GPU Basics
> >  ----------------
> >  
> > -An Intel GPU has multiple engines. There are several engine types.
> > -
> > -- RCS engine is for rendering 3D and performing compute, this is named
> > -  `I915_EXEC_RENDER` in user space.
> > -- BCS is a blitting (copy) engine, this is named `I915_EXEC_BLT` in user
> > -  space.
> > -- VCS is a video encode and decode engine, this is named `I915_EXEC_BSD`
> > -  in user space
> > -- VECS is video enhancement engine, this is named `I915_EXEC_VEBOX` in user
> > -  space.
> > -- The enumeration `I915_EXEC_DEFAULT` does not refer to specific engine;
> > -  instead it is to be used by user space to specify a default rendering
> > -  engine (for 3D) that may or may not be the same as RCS.
> > +An Intel GPU has multiple engines. There are several engine types:
> > +
> > +- Render Command Streamer (RCS). An engine for rendering 3D and
> > +  performing compute on platforms without CCS.
> 
> I don't think the "without CCS" here is accurate; even platforms with
> CCS engines can still access the GPGPU pipeline via the RCS.

indeed.

> 
> > +- Blitting Command Streamer (BCS). An engine for performing blitting and/or
> > +  copying operations.
> > +- Video Command Streamer. An engine used for video decoding. For historical
> > +  reasons this engine was alsso called 'BCS'.
> 
> I don't think this is true?  As far as I recall, BCS has always referred
> to the blitter/copy engines, not the VCS.

doh! I meant 'BSD' to reflect the removed I915_EXEC_BSD... I can't even
recall why that ever got the BSD name to start with.

> 
> 
> Matt
> 
> > +- Video Enhancement Command Streamer (VECS). The engine used only by media.
> > +- Compute Command Streamer (CCS). An engine that has access to the media and
> > +  GPGPU pipelines, but not the 3D pipeline.
> >  
> >  The Intel GPU family is a family of integrated GPU's using Unified
> >  Memory Access. For having the GPU "do work", user space will feed the
> > -- 
> > 2.41.0
> > 
> 
> -- 
> Matt Roper
> Graphics Software Engineer
> Linux GPU Platform Enablement
> Intel Corporation
