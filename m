Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id YEuMNkyL12k3PggAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Thu, 09 Apr 2026 13:19:40 +0200
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 3E46E3C9954
	for <lists+intel-gfx@lfdr.de>; Thu, 09 Apr 2026 13:19:39 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 908D210E7C1;
	Thu,  9 Apr 2026 11:19:38 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="Jc68mhls";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.18])
 by gabe.freedesktop.org (Postfix) with ESMTPS id BB01010E7C1;
 Thu,  9 Apr 2026 11:19:37 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1775733578; x=1807269578;
 h=date:from:to:cc:subject:message-id:references:
 mime-version:content-transfer-encoding:in-reply-to;
 bh=W044KsuiqEnq5+U1Vr/ZHmEhSl//AYNZVyuoY1pR/ZQ=;
 b=Jc68mhlsI2O2e+owFt1xIYd7FXDE96MtOsAQjVnu8XE8x9qRO1hSCE9M
 raiL/4hP3Rec3DTIhxI2zi5kvDfkMSyjDYo7/DfpUmAPmi1d8XFPoaJ5o
 lXqbQQknVhvszTUBiQM/Pzrwca7/x9VhLLWkQ3M9uDbtrcBOreAmulQQf
 pKrKMaQOLXaY7fR8uTx7u9Rqi4tE2G8g8qZt1vDHbFHDXYG7/iiFk2VQZ
 /DLcyPld9jkShpncmEcYjLq7SPWoM2t/hwVyCu1bpKN4P/tZD+XVStu1L
 yQ9yRBODE5ZLWWlzvotLOFpmaW1mT2bKoFMpCxXb3NhMhVcBXTll4uUwA Q==;
X-CSE-ConnectionGUID: a60W2OeeT9CJxKwCSwk4gA==
X-CSE-MsgGUID: JYak8wfpS/C4JYuAzKFCoQ==
X-IronPort-AV: E=McAfee;i="6800,10657,11753"; a="76754376"
X-IronPort-AV: E=Sophos;i="6.23,169,1770624000"; d="scan'208";a="76754376"
Received: from fmviesa001.fm.intel.com ([10.60.135.141])
 by orvoesa110.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 09 Apr 2026 04:19:38 -0700
X-CSE-ConnectionGUID: hMxTOrWGQxeVELDN2IYMyQ==
X-CSE-MsgGUID: U+uqeZ8bS9Cc/T/voayGTQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.23,169,1770624000"; d="scan'208";a="252078413"
Received: from hrotuna-mobl2.ger.corp.intel.com (HELO localhost)
 ([10.245.245.216])
 by smtpauth.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 09 Apr 2026 04:19:35 -0700
Date: Thu, 9 Apr 2026 14:19:32 +0300
From: Ville =?iso-8859-1?Q?Syrj=E4l=E4?= <ville.syrjala@linux.intel.com>
To: Christian =?iso-8859-1?Q?K=F6nig?= <christian.koenig@amd.com>
Cc: intel-gfx@lists.freedesktop.org, intel-xe@lists.freedesktop.org,
 dri-devel@lists.freedesktop.org, Simona Vetter <simona.vetter@ffwll.ch>,
 Jani Nikula <jani.nikula@intel.com>,
 Jouni =?iso-8859-1?Q?H=F6gander?= <jouni.hogander@intel.com>,
 Maarten Lankhorst <maarten.lankhorst@linux.intel.com>
Subject: Re: [PATCH 5/6] drm/i915/reset: Handle the display vs. GPU reset
 deadlock using a custom dma-fence
Message-ID: <adeLRHQ2omAv93yM@intel.com>
References: <20260408233458.22666-1-ville.syrjala@linux.intel.com>
 <20260408233458.22666-6-ville.syrjala@linux.intel.com>
 <44fa373c-6216-4cc4-a605-94776b3873ad@amd.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=iso-8859-1
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <44fa373c-6216-4cc4-a605-94776b3873ad@amd.com>
X-Patchwork-Hint: comment
Organization: Intel Finland Oy - BIC 0357606-4 - c/o Alberga Business Park, 6
 krs Bertel Jungin Aukio 5, 02600 Espoo, Finland
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
X-Spamd-Result: default: False [-1.31 / 15.00];
	DMARC_POLICY_ALLOW(-0.50)[intel.com,none];
	MAILLIST(-0.20)[mailman];
	R_DKIM_ALLOW(-0.20)[intel.com:s=Intel];
	R_SPF_ALLOW(-0.20)[+ip4:131.252.210.177:c];
	MIME_GOOD(-0.10)[text/plain];
	RWL_MAILSPIKE_GOOD(-0.10)[131.252.210.177:from];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_COUNT_THREE(0.00)[4];
	HAS_ORG_HEADER(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	ARC_NA(0.00)[];
	TO_DN_SOME(0.00)[];
	MIME_TRACE(0.00)[0:+];
	FROM_HAS_DN(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	MID_RHS_MATCH_FROMTLD(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	FROM_NEQ_ENVFROM(0.00)[ville.syrjala@linux.intel.com,intel-gfx-bounces@lists.freedesktop.org];
	DKIM_TRACE(0.00)[intel.com:+];
	RCPT_COUNT_SEVEN(0.00)[8];
	ASN(0.00)[asn:6366, ipnet:131.252.0.0/16, country:US];
	TAGGED_RCPT(0.00)[intel-gfx];
	MISSING_XM_UA(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[amd.com:email,gabe.freedesktop.org:helo,gabe.freedesktop.org:rdns,intel.com:dkim,intel.com:email,intel.com:mid,ffwll.ch:email]
X-Rspamd-Queue-Id: 3E46E3C9954
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

On Thu, Apr 09, 2026 at 12:46:11PM +0200, Christian König wrote:
> On 4/9/26 01:34, Ville Syrjala wrote:
> > From: Ville Syrjälä <ville.syrjala@linux.intel.com>
> > 
> > The old display vs. GPU reset deadlock is back more or less.
> > The old (working) solution to the problem was originally
> > introduced in commit 9db529aac938 ("drm/i915: More surgically
> > unbreak the modeset vs reset deadlock"), but it got nuked with
> > commit d59cf7bb73f3 ("drm/i915/display: Use dma_fence interfaces
> > instead of i915_sw_fence").
> > 
> > Apparently no one looked hard enough to see that things didn't
> > work quite properly anymore. What is still saving us for the most
> > part is that we have a timeout on the fence wait
> > (CONFIG_DRM_I915_FENCE_TIMEOUT, 10 seconds by default). But
> > people are perhaps trying to get rid of that so we may need
> > another solution, and 10 seconds is a bit slow.
> 
> Yeah agree that approach with the timeout is usually a big no no.
> 
> > Re-solve the problem yet again with a custom dma-fence that gets
> > signaled just prior to a GPU reset, and have the atomic commit wait
> > for either that or the real fence using dma_fence_wait_any_timeout().
> 
> Hui? I don't fully understand what the source of the problem is, but of hand that approach of solving it doesn't sound like a good idea either.
> 
> > Whichever signals first will let the commit proceed. We create a new
> > "reset fence" whenever someone needs one, and keep it until the next
> > GPU reset has completed. After that the next guy will again get a
> > fresh unsignaled "reset fence".
> 
> And that sounds even worse. A dma_fence which waits for the next GPU reset without triggering it itself would be an indefinite dma_fence which is not allowed.

This is a purely internal thing to the i915 display code. This fence
is never shared with anyone. And we never wait for just this fence,
the wait always happens alongside a real fence using
dma_fence_wait_any_timeout().

> 
> I think something is missing in my picture how that is supposed to work.

The problem stems from the fact that on old platforms a GPU reset
also resets the display hardware, and to do that safely we need:
1. shut down display
2. perform the GPU reset
3. restore the display hardware to its orignal state

We just do that with essentially with a normal atomic commit. But a 
previous atomic commit may already be waiting for a fence, which
won't signal until the GPU reset happens, and the GPU reset is now
waiting for that previous atomic commit to finish so that it can do
its own atomic commit. In order to break the deadlock we need to
abort the fence waits in the atomic commit, and that's what this
"reset fence" achieves.

> 
> Thanks,
> Christian.
> 
> > 
> > Cc: Simona Vetter <simona.vetter@ffwll.ch>
> > Cc: Christian König <christian.koenig@amd.com>
> > Cc: Jani Nikula <jani.nikula@intel.com>
> > Cc: Jouni Högander <jouni.hogander@intel.com>
> > Cc: Maarten Lankhorst <maarten.lankhorst@linux.intel.com>
> > Signed-off-by: Ville Syrjälä <ville.syrjala@linux.intel.com>
> > ---
> >  drivers/gpu/drm/i915/display/intel_display.c  | 34 +++++---
> >  .../gpu/drm/i915/display/intel_display_core.h |  6 ++
> >  .../drm/i915/display/intel_display_driver.c   |  5 ++
> >  .../drm/i915/display/intel_display_reset.c    | 77 +++++++++++++++++++
> >  .../drm/i915/display/intel_display_reset.h    |  4 +
> >  drivers/gpu/drm/xe/Makefile                   |  1 +
> >  6 files changed, 117 insertions(+), 10 deletions(-)
> > 
> > diff --git a/drivers/gpu/drm/i915/display/intel_display.c b/drivers/gpu/drm/i915/display/intel_display.c
> > index 58a654ca0d20..83ccf13c4b16 100644
> > --- a/drivers/gpu/drm/i915/display/intel_display.c
> > +++ b/drivers/gpu/drm/i915/display/intel_display.c
> > @@ -72,6 +72,7 @@
> >  #include "intel_display_driver.h"
> >  #include "intel_display_power.h"
> >  #include "intel_display_regs.h"
> > +#include "intel_display_reset.h"
> >  #include "intel_display_rpm.h"
> >  #include "intel_display_types.h"
> >  #include "intel_display_utils.h"
> > @@ -7149,22 +7150,35 @@ static void skl_commit_modeset_enables(struct intel_atomic_state *state)
> >  
> >  static void intel_atomic_commit_fence_wait(struct intel_atomic_state *intel_state)
> >  {
> > -	struct drm_plane *plane;
> > +	struct intel_display *display = to_intel_display(intel_state);
> >  	struct drm_plane_state *new_plane_state;
> > -	long ret;
> > +	struct dma_fence *reset_fence;
> > +	struct drm_plane *plane;
> >  	int i;
> >  
> > +	reset_fence = intel_display_reset_fence_get(display);
> > +
> >  	for_each_new_plane_in_state(&intel_state->base, plane, new_plane_state, i) {
> > -		if (new_plane_state->fence) {
> > -			ret = dma_fence_wait_timeout(new_plane_state->fence, false,
> > -						     i915_fence_timeout());
> > -			if (ret <= 0)
> > -				break;
> > +		struct dma_fence *fences[2] = {
> > +			[0] = new_plane_state->fence,
> > +			[1] = reset_fence,
> > +		};
> > +		long ret;
> >  
> > -			dma_fence_put(new_plane_state->fence);
> > -			new_plane_state->fence = NULL;
> > -		}
> > +		if (!new_plane_state->fence)
> > +			continue;
> > +
> > +		ret = dma_fence_wait_any_timeout(fences, reset_fence ? 2 : 1, false,
> > +						 i915_fence_timeout(), NULL);
> > +		if (ret <= 0)
> > +			break;
> > +
> > +		dma_fence_put(new_plane_state->fence);
> > +		new_plane_state->fence = NULL;
> >  	}
> > +
> > +	if (reset_fence)
> > +		dma_fence_put(reset_fence);
> >  }
> >  
> >  static void intel_atomic_dsb_wait_commit(struct intel_crtc_state *crtc_state)
> > diff --git a/drivers/gpu/drm/i915/display/intel_display_core.h b/drivers/gpu/drm/i915/display/intel_display_core.h
> > index 9e77003addd0..6687b658c51d 100644
> > --- a/drivers/gpu/drm/i915/display/intel_display_core.h
> > +++ b/drivers/gpu/drm/i915/display/intel_display_core.h
> > @@ -556,6 +556,12 @@ struct intel_display {
> >  		unsigned long mask;
> >  	} quirks;
> >  
> > +	struct {
> > +		/* protects reset.fence */
> > +		struct mutex mutex;
> > +		struct dma_fence *fence;
> > +	} reset;
> > +
> >  	struct {
> >  		/* restore state for suspend/resume and display reset */
> >  		struct drm_atomic_state *modeset_state;
> > diff --git a/drivers/gpu/drm/i915/display/intel_display_driver.c b/drivers/gpu/drm/i915/display/intel_display_driver.c
> > index 23bfecc983e8..fcd31722c731 100644
> > --- a/drivers/gpu/drm/i915/display/intel_display_driver.c
> > +++ b/drivers/gpu/drm/i915/display/intel_display_driver.c
> > @@ -34,6 +34,7 @@
> >  #include "intel_display_driver.h"
> >  #include "intel_display_irq.h"
> >  #include "intel_display_power.h"
> > +#include "intel_display_reset.h"
> >  #include "intel_display_types.h"
> >  #include "intel_display_utils.h"
> >  #include "intel_display_wa.h"
> > @@ -257,6 +258,8 @@ int intel_display_driver_probe_noirq(struct intel_display *display)
> >  
> >  	intel_mode_config_init(display);
> >  
> > +	intel_display_reset_fence_init(display);
> > +
> >  	ret = intel_cdclk_init(display);
> >  	if (ret)
> >  		goto cleanup_wq_unordered;
> > @@ -584,6 +587,8 @@ void intel_display_driver_remove(struct intel_display *display)
> >  	if (!HAS_DISPLAY(display))
> >  		return;
> >  
> > +	intel_display_reset_fence_discard(display);
> > +
> >  	flush_workqueue(display->wq.flip);
> >  	flush_workqueue(display->wq.modeset);
> >  	flush_workqueue(display->wq.cleanup);
> > diff --git a/drivers/gpu/drm/i915/display/intel_display_reset.c b/drivers/gpu/drm/i915/display/intel_display_reset.c
> > index ca15dc18ef0f..80dd2ea8a0c2 100644
> > --- a/drivers/gpu/drm/i915/display/intel_display_reset.c
> > +++ b/drivers/gpu/drm/i915/display/intel_display_reset.c
> > @@ -3,6 +3,8 @@
> >   * Copyright © 2023 Intel Corporation
> >   */
> >  
> > +#include <linux/dma-fence.h>
> > +
> >  #include <drm/drm_atomic_helper.h>
> >  #include <drm/drm_print.h>
> >  
> > @@ -16,6 +18,72 @@
> >  #include "intel_hotplug.h"
> >  #include "intel_pps.h"
> >  
> > +static const char *intel_display_reset_fence_get_driver_name(struct dma_fence *fence)
> > +{
> > +	return "intel_display";
> > +}
> > +
> > +static const char *intel_display_reset_fence_get_timeline_name(struct dma_fence *fence)
> > +{
> > +	return "reset";
> > +}
> > +
> > +static const struct dma_fence_ops intel_display_reset_fence_ops = {
> > +	.get_driver_name = intel_display_reset_fence_get_driver_name,
> > +	.get_timeline_name = intel_display_reset_fence_get_timeline_name,
> > +};
> > +
> > +static void intel_display_reset_create(struct intel_display *display)
> > +{
> > +	struct dma_fence *fence;
> > +
> > +	fence = kzalloc_obj(*fence);
> > +	if (!fence)
> > +		return;
> > +
> > +	dma_fence_init(fence, &intel_display_reset_fence_ops, NULL, 0, 0);
> > +
> > +	display->reset.fence = fence;
> > +}
> > +
> > +struct dma_fence *intel_display_reset_fence_get(struct intel_display *display)
> > +{
> > +	struct dma_fence *fence;
> > +
> > +	mutex_lock(&display->reset.mutex);
> > +
> > +	if (!display->reset.fence)
> > +		intel_display_reset_create(display);
> > +
> > +	fence = display->reset.fence;
> > +	if (fence)
> > +		dma_fence_get(fence);
> > +
> > +	mutex_unlock(&display->reset.mutex);
> > +
> > +	return fence;
> > +}
> > +
> > +void intel_display_reset_fence_discard(struct intel_display *display)
> > +{
> > +	struct dma_fence *fence;
> > +
> > +	mutex_lock(&display->reset.mutex);
> > +
> > +	fence = display->reset.fence;
> > +	if (fence)
> > +		dma_fence_put(fence);
> > +
> > +	display->reset.fence = NULL;
> > +
> > +	mutex_unlock(&display->reset.mutex);
> > +}
> > +
> > +void intel_display_reset_fence_init(struct intel_display *display)
> > +{
> > +	mutex_init(&display->reset.mutex);
> > +}
> > +
> >  bool intel_display_reset_supported(struct intel_display *display)
> >  {
> >  	return HAS_DISPLAY(display);
> > @@ -31,8 +99,15 @@ void intel_display_reset_prepare(struct intel_display *display)
> >  {
> >  	struct drm_modeset_acquire_ctx *ctx = &display->restore.reset_ctx;
> >  	struct drm_atomic_state *state;
> > +	struct dma_fence *reset_fence;
> >  	int ret;
> >  
> > +	reset_fence = intel_display_reset_fence_get(display);
> > +	if (reset_fence) {
> > +		dma_fence_signal(reset_fence);
> > +		dma_fence_put(reset_fence);
> > +	}
> > +
> >  	/*
> >  	 * Need mode_config.mutex so that we don't
> >  	 * trample ongoing ->detect() and whatnot.
> > @@ -110,6 +185,8 @@ void intel_display_reset_finish(struct intel_display *display, bool test_only)
> >  
> >  	drm_atomic_state_put(state);
> >  unlock:
> > +	intel_display_reset_fence_discard(display);
> > +
> >  	drm_modeset_drop_locks(ctx);
> >  	drm_modeset_acquire_fini(ctx);
> >  	mutex_unlock(&display->drm->mode_config.mutex);
> > diff --git a/drivers/gpu/drm/i915/display/intel_display_reset.h b/drivers/gpu/drm/i915/display/intel_display_reset.h
> > index a8aa7729d33f..c36a075c6b4d 100644
> > --- a/drivers/gpu/drm/i915/display/intel_display_reset.h
> > +++ b/drivers/gpu/drm/i915/display/intel_display_reset.h
> > @@ -10,6 +10,10 @@
> >  
> >  struct intel_display;
> >  
> > +struct dma_fence *intel_display_reset_fence_get(struct intel_display *display);
> > +void intel_display_reset_fence_discard(struct intel_display *display);
> > +void intel_display_reset_fence_init(struct intel_display *display);
> > +
> >  bool intel_display_reset_supported(struct intel_display *display);
> >  bool intel_display_reset_test(struct intel_display *display);
> >  void intel_display_reset_prepare(struct intel_display *display);
> > diff --git a/drivers/gpu/drm/xe/Makefile b/drivers/gpu/drm/xe/Makefile
> > index 110fef511fe2..1a85dfe457f0 100644
> > --- a/drivers/gpu/drm/xe/Makefile
> > +++ b/drivers/gpu/drm/xe/Makefile
> > @@ -262,6 +262,7 @@ xe-$(CONFIG_DRM_XE_DISPLAY) += \
> >  	i915-display/intel_display_power.o \
> >  	i915-display/intel_display_power_map.o \
> >  	i915-display/intel_display_power_well.o \
> > +	i915-display/intel_display_reset.o \
> >  	i915-display/intel_display_rpm.o \
> >  	i915-display/intel_display_rps.o \
> >  	i915-display/intel_display_trace.o \

-- 
Ville Syrjälä
Intel
