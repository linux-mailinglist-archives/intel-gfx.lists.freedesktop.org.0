Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 80445C74AA1
	for <lists+intel-gfx@lfdr.de>; Thu, 20 Nov 2025 15:53:24 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 05E4810E763;
	Thu, 20 Nov 2025 14:53:23 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="TliSlvmx";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.10])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 7689310E763;
 Thu, 20 Nov 2025 14:53:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1763650403; x=1795186403;
 h=date:from:to:cc:subject:message-id:references:
 mime-version:content-transfer-encoding:in-reply-to;
 bh=A53gM0VQuToK1jhI0e4o+wPaI7RV3327DVqZXXNAP3Q=;
 b=TliSlvmx4mcVFx7CcsRhLyN3TIModCbAfQV8km7hfGekIxbtK19U5Vcm
 6WD5Dpv+SMg0zK0vv942vx7QHhFsZJ7k2xrekVJH1VZhOlKg3nAdqPqt6
 z9ct78W0g4QDpc2PD4+VK0ZanteIpeys3Y0WW1SogxpxaX/rsyz+FCn1V
 xuz/xnwCCpaB2FywY4GsadHBBsWb8v43kLFRpm1cu/FLFF54EGZbBbB24
 6fNQxOivtvbZmX2MwwcFCABnx6XOJmOTaDIyFnV4bh2xziWJsDTIQxI4C
 k2tox1p/l2yjqomsLIK3S8rPjZp9s+oaVN8Af+etpCIwfOEHQ2IzgF5wg A==;
X-CSE-ConnectionGUID: nIbZS/FwQzS0HL94ct+cNQ==
X-CSE-MsgGUID: YypoK64OTZGAtj3CJHqX6g==
X-IronPort-AV: E=McAfee;i="6800,10657,11619"; a="77080720"
X-IronPort-AV: E=Sophos;i="6.20,213,1758610800"; d="scan'208";a="77080720"
Received: from orviesa007.jf.intel.com ([10.64.159.147])
 by fmvoesa104.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 20 Nov 2025 06:53:22 -0800
X-CSE-ConnectionGUID: JTcC2CIWR8KIlZ31VkjezA==
X-CSE-MsgGUID: Or8MRcklSL+F63xIws0gLQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.20,213,1758610800"; d="scan'208";a="191413120"
Received: from inaky-mobl1.amr.corp.intel.com (HELO localhost)
 ([10.245.244.92])
 by orviesa007-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 20 Nov 2025 06:53:20 -0800
Date: Thu, 20 Nov 2025 16:53:16 +0200
From: Ville =?iso-8859-1?Q?Syrj=E4l=E4?= <ville.syrjala@linux.intel.com>
To: Jani Nikula <jani.nikula@intel.com>
Cc: intel-gfx@lists.freedesktop.org, intel-xe@lists.freedesktop.org
Subject: Re: [PATCH v3] drm/i915/display: change pipe allocation order for
 discrete platforms
Message-ID: <aR8rXMvxITI2VINk@intel.com>
References: <20251119153321.2640969-1-jani.nikula@intel.com>
 <aR39Rlq9kENqpBEl@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=iso-8859-1
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <aR39Rlq9kENqpBEl@intel.com>
X-Patchwork-Hint: comment
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
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

On Wed, Nov 19, 2025 at 07:24:22PM +0200, Ville Syrjälä wrote:
> On Wed, Nov 19, 2025 at 05:33:21PM +0200, Jani Nikula wrote:
> > When big joiner is enabled, it reserves the adjacent pipe as the
> > secondary pipe. This happens without the user space knowing, and
> > subsequent attempts at using the CRTC with that pipe will fail. If the
> > user space does not have a coping mechanism, i.e. trying another CRTC,
> > this leads to a black screen.
> > 
> > Try to reduce the impact of the problem on discrete platforms by mapping
> > the CRTCs to pipes in order A, C, B, and D. If the user space reserves
> > CRTCs in order, this should trick it to using pipes that are more likely
> > to be available for and after joining.
> > 
> > Limit this to discrete platforms, which have four pipes, and no eDP, a
> > combination that should benefit the most with least drawbacks.
> > 
> > Although there are currently no platforms with more than four pipes, add
> > a fallback for initializing the rest of the pipes to not miss them.
> > 
> > Signed-off-by: Jani Nikula <jani.nikula@intel.com>
> > 
> > ---
> > 
> > v2: Also remove WARN_ON()
> > 
> > v3: Limit to discrete
> > 
> > There are a number of issues in IGT with assuming CRTC index == pipe, at
> > least with CRC and vblank waits. With them being used a lot in tests, we
> > won't get enough test coverage until they're fixed.
> > ---
> >  drivers/gpu/drm/i915/display/intel_crtc.c     |  2 --
> >  .../drm/i915/display/intel_display_driver.c   | 26 ++++++++++++++++++-
> >  2 files changed, 25 insertions(+), 3 deletions(-)
> > 
> > diff --git a/drivers/gpu/drm/i915/display/intel_crtc.c b/drivers/gpu/drm/i915/display/intel_crtc.c
> > index 9d2a23c96c61..11e58d07ddef 100644
> > --- a/drivers/gpu/drm/i915/display/intel_crtc.c
> > +++ b/drivers/gpu/drm/i915/display/intel_crtc.c
> > @@ -394,8 +394,6 @@ int intel_crtc_init(struct intel_display *display, enum pipe pipe)
> >  
> >  	cpu_latency_qos_add_request(&crtc->vblank_pm_qos, PM_QOS_DEFAULT_VALUE);
> >  
> > -	drm_WARN_ON(display->drm, drm_crtc_index(&crtc->base) != crtc->pipe);
> > -
> >  	if (HAS_CASF(display))
> >  		drm_crtc_create_sharpness_strength_property(&crtc->base);
> >  
> > diff --git a/drivers/gpu/drm/i915/display/intel_display_driver.c b/drivers/gpu/drm/i915/display/intel_display_driver.c
> > index 7e000ba3e08b..b5c9cdf14a43 100644
> > --- a/drivers/gpu/drm/i915/display/intel_display_driver.c
> > +++ b/drivers/gpu/drm/i915/display/intel_display_driver.c
> > @@ -452,6 +452,7 @@ bool intel_display_driver_check_access(struct intel_display *display)
> >  /* part #2: call after irq install, but before gem init */
> >  int intel_display_driver_probe_nogem(struct intel_display *display)
> >  {
> > +	u8 pipe_mask = U8_MAX;
> >  	enum pipe pipe;
> >  	int ret;
> >  
> > @@ -470,7 +471,30 @@ int intel_display_driver_probe_nogem(struct intel_display *display)
> >  		    INTEL_NUM_PIPES(display),
> >  		    INTEL_NUM_PIPES(display) > 1 ? "s" : "");
> >  
> > -	for_each_pipe(display, pipe) {
> > +	/*
> > +	 * Expose the pipes in order A, C, B, D on discrete platforms to trick
> > +	 * user space into using pipes that are more likely to be available for
> > +	 * both a) user space if pipe B has been reserved for the joiner, and b)
> > +	 * the joiner if pipe A doesn't need the joiner.
> > +	 *
> > +	 * Fall back to normal initialization for the remaining pipes, if any.
> > +	 */
> > +	if (HAS_BIGJOINER(display) && display->platform.dgfx) {
> 
> uncompressed joiner is also a thing.
> 
> > +		enum pipe pipe_order[] = { PIPE_A, PIPE_C, PIPE_B, PIPE_D };
> > +		int i;
> > +
> > +		for (i = 0; i < ARRAY_SIZE(pipe_order); i++) {
> > +			pipe = pipe_order[i];
> > +
> > +			ret = intel_crtc_init(display, pipe);
> > +			if (ret)
> > +				goto err_mode_config;
> > +
> > +			pipe_mask &= ~BIT(pipe);
> > +		}
> > +	}
> 
> I was thinking it might be easier to just do the B<->C swap inside
> intel_crtc_init(). Kinda similar how we we already do the plane
> A<->B swap in intel_primary_plane_create(). But I guess the
> loop here would become a bit more confusing since it would have
> to iterate all possible pipes and not just the ones present in
> the runtime info pipe_mask.

Gave this a quick try and I don't think it looks all that bad.
Shrug.

diff --git a/drivers/gpu/drm/i915/display/intel_crtc.c b/drivers/gpu/drm/i915/display/intel_crtc.c
index 7ebbde716238..9279c76216ca 100644
--- a/drivers/gpu/drm/i915/display/intel_crtc.c
+++ b/drivers/gpu/drm/i915/display/intel_crtc.c
@@ -326,6 +326,21 @@ static void add_crtc_to_pipe_list(struct intel_display *display, struct intel_cr
 	list_add_tail(&crtc->pipe_head, &display->pipe_list);
 }
 
+static enum pipe reorder_pipe(struct intel_display *display, enum pipe pipe)
+{
+	if (!display->platform.dgfx)
+		return pipe;
+
+	switch (pipe) {
+	case PIPE_B:
+		return PIPE_C;
+	case PIPE_C:
+		return PIPE_B;
+	default:
+		return pipe;
+	}
+}
+
 int intel_crtc_init(struct intel_display *display, enum pipe pipe)
 {
 	struct intel_plane *primary, *cursor;
@@ -333,6 +348,11 @@ int intel_crtc_init(struct intel_display *display, enum pipe pipe)
 	struct intel_crtc *crtc;
 	int sprite, ret;
 
+	pipe = reorder_pipe(display, pipe);
+
+	if ((DISPLAY_RUNTIME_INFO(display)->pipe_mask & BIT(pipe)) == 0)
+		return 0;
+
 	crtc = intel_crtc_alloc();
 	if (IS_ERR(crtc))
 		return PTR_ERR(crtc);
diff --git a/drivers/gpu/drm/i915/display/intel_display_driver.c b/drivers/gpu/drm/i915/display/intel_display_driver.c
index 32726906e550..cd30c6f18bb5 100644
--- a/drivers/gpu/drm/i915/display/intel_display_driver.c
+++ b/drivers/gpu/drm/i915/display/intel_display_driver.c
@@ -471,7 +471,7 @@ int intel_display_driver_probe_nogem(struct intel_display *display)
 		    INTEL_NUM_PIPES(display),
 		    INTEL_NUM_PIPES(display) > 1 ? "s" : "");
 
-	for_each_pipe(display, pipe) {
+	for (pipe = PIPE_A; pipe < I915_MAX_PIPES; pipe++) {
 		ret = intel_crtc_init(display, pipe);
 		if (ret)
 			goto err_mode_config;

-- 
Ville Syrjälä
Intel
