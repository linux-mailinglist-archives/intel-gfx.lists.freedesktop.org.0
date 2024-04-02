Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 1768A895764
	for <lists+intel-gfx@lfdr.de>; Tue,  2 Apr 2024 16:49:32 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 7B6B510E3E2;
	Tue,  2 Apr 2024 14:49:30 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="Q3621bCI";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.16])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 19E1B10E3E2
 for <intel-gfx@lists.freedesktop.org>; Tue,  2 Apr 2024 14:49:29 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1712069370; x=1743605370;
 h=date:from:to:cc:subject:message-id:references:
 mime-version:content-transfer-encoding:in-reply-to;
 bh=ElmKD0pRz42hWnFb4VTQ33Shr1YOAGtYcEQQC+iFiuc=;
 b=Q3621bCIIp8hAO9+fNLvY8Z7XjN0TdRnuWsfOwa4FHYmGVGU8X2O+7hw
 i/7QI22zY4DRUNdDvssCe/L/wxNVXXOxoaPsGhmy4KAIFyCy1MM00QiKN
 miqnEveP5HjitlLt0ZxKBXGggk+WavkMiP0RujzMFh4oxkmBPFhzwdCbf
 Oz377cMr8j6DcPB/LfoXb9gYlqe52IV94ZSrMhalSB76RzZVThk4QT+jA
 +WlD4ufyQ7Hf87UKjnZClpd9jxMFAF9AJZy15sG8wzPE6BQAsHn+P8ylt
 54At7TvCHRGZ614CkkZ25pM3vs4Vehhy6ITOLc8wNPxUtbVosI5tpGNvq g==;
X-CSE-ConnectionGUID: MnhgyssiQr2f1mQoUV5h0w==
X-CSE-MsgGUID: C362id2EQWecMtmgiiB4iw==
X-IronPort-AV: E=McAfee;i="6600,9927,11032"; a="7370424"
X-IronPort-AV: E=Sophos;i="6.07,175,1708416000"; 
   d="scan'208";a="7370424"
Received: from orsmga001.jf.intel.com ([10.7.209.18])
 by orvoesa108.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 02 Apr 2024 07:49:29 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,11032"; a="827789433"
X-IronPort-AV: E=Sophos;i="6.07,175,1708416000"; d="scan'208";a="827789433"
Received: from stinkpipe.fi.intel.com (HELO stinkbox) ([10.237.72.74])
 by orsmga001.jf.intel.com with SMTP; 02 Apr 2024 07:49:26 -0700
Received: by stinkbox (sSMTP sendmail emulation);
 Tue, 02 Apr 2024 17:49:25 +0300
Date: Tue, 2 Apr 2024 17:49:25 +0300
From: Ville =?iso-8859-1?Q?Syrj=E4l=E4?= <ville.syrjala@linux.intel.com>
To: Gustavo Sousa <gustavo.sousa@intel.com>
Cc: intel-gfx@lists.freedesktop.org
Subject: Re: [PATCH 12/13] drm/i915: Use a plain old int for the cdclk/mdclk
 ratio
Message-ID: <Zgwa9bB6RhzTsmza@intel.com>
References: <20240327174544.983-1-ville.syrjala@linux.intel.com>
 <20240327174544.983-13-ville.syrjala@linux.intel.com>
 <171173661439.2604.16824263735177166188@gjsousa-mobl2>
MIME-Version: 1.0
Content-Type: text/plain; charset=iso-8859-1
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <171173661439.2604.16824263735177166188@gjsousa-mobl2>
X-Patchwork-Hint: comment
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

On Fri, Mar 29, 2024 at 03:23:34PM -0300, Gustavo Sousa wrote:
> Quoting Ville Syrjala (2024-03-27 14:45:43-03:00)
> >From: Ville Syrjälä <ville.syrjala@linux.intel.com>
> >
> >No point in throwing around u8 when we're dealing with
> >just an integer. Use a plain old boring 'int'.
> 
> Learned and noted :-)
> 
> Thanks for fixing that.
> 
> Should we also modify the member mdclk_cdclk_ratio of intel_dbuf_state?

My rule of thumb is to prefer the smallest type when embedded
in structures. Whether that's a good idea I'm not really sure.
I suppose there is always some risk of forgeting to bump up the
type size when needed.

On the other hand we do have some absolutely massive structs
(looking at you intel_crtc_state!) where trying to keep things
small and optimally packed seems like a good idea. For the
dbuf state it probably doesn't make a lick of difference.

The other case is eg. big arrays/lists of structs where I
think generally it's a good idea to minimize the size as there
the overhead is potentially multiplied by the number of elements
Otherwise these just waste unswappable kernel memory.

I suppose one argument for using small types in all structures
is consistency. People tend to cargo cult what they see so
if existing code does it then new code should end up with the
same approach. Though I suppose it might also work against us
and trick people into also using the smaller types for function
arguments and on stack variables as well.

Apart from running out of bits, the main danger with the
smaller types is C's integer promotion and arithmetic
conversion rules. I feel most people don't generally know
how those work. Eg. people see a u8 and assume everything
to do with it is unsigned, and then they might get confused
whether negative values are possible or not as a result of
some artihmetic expression. So the safest type is pretty
much the plain old 'int', and that is in fact what u8 & co.
end up being due to the aforementioned language rules.

tldr I don't really have a great answer here :/

> 
> In any case,
> 
> Reviewed-by: Gustavo Sousa <gustavo.sousa@intel.com>

Thanks.

> 
> >
> >Signed-off-by: Ville Syrjälä <ville.syrjala@linux.intel.com>
> >---
> > drivers/gpu/drm/i915/display/intel_cdclk.c   | 6 +++---
> > drivers/gpu/drm/i915/display/intel_cdclk.h   | 4 ++--
> > drivers/gpu/drm/i915/display/skl_watermark.c | 6 ++++--
> > drivers/gpu/drm/i915/display/skl_watermark.h | 6 ++++--
> > 4 files changed, 13 insertions(+), 9 deletions(-)
> >
> >diff --git a/drivers/gpu/drm/i915/display/intel_cdclk.c b/drivers/gpu/drm/i915/display/intel_cdclk.c
> >index 66c161d7b485..5cba0d08189b 100644
> >--- a/drivers/gpu/drm/i915/display/intel_cdclk.c
> >+++ b/drivers/gpu/drm/i915/display/intel_cdclk.c
> >@@ -1893,8 +1893,8 @@ static u32 xe2lpd_mdclk_source_sel(struct drm_i915_private *i915)
> >         return MDCLK_SOURCE_SEL_CD2XCLK;
> > }
> > 
> >-u8 intel_mdclk_cdclk_ratio(struct drm_i915_private *i915,
> >-                           const struct intel_cdclk_config *cdclk_config)
> >+int intel_mdclk_cdclk_ratio(struct drm_i915_private *i915,
> >+                            const struct intel_cdclk_config *cdclk_config)
> > {
> >         if (mdclk_source_is_cdclk_pll(i915))
> >                 return DIV_ROUND_UP(cdclk_config->vco, cdclk_config->cdclk);
> >@@ -3321,7 +3321,7 @@ int intel_modeset_calc_cdclk(struct intel_atomic_state *state)
> > 
> >         if (intel_mdclk_cdclk_ratio(dev_priv, &old_cdclk_state->actual) !=
> >             intel_mdclk_cdclk_ratio(dev_priv, &new_cdclk_state->actual)) {
> >-                u8 ratio = intel_mdclk_cdclk_ratio(dev_priv, &new_cdclk_state->actual);
> >+                int ratio = intel_mdclk_cdclk_ratio(dev_priv, &new_cdclk_state->actual);
> > 
> >                 ret = intel_dbuf_state_set_mdclk_cdclk_ratio(state, ratio);
> >                 if (ret)
> >diff --git a/drivers/gpu/drm/i915/display/intel_cdclk.h b/drivers/gpu/drm/i915/display/intel_cdclk.h
> >index 5d4faf401774..cfdcdec07a4d 100644
> >--- a/drivers/gpu/drm/i915/display/intel_cdclk.h
> >+++ b/drivers/gpu/drm/i915/display/intel_cdclk.h
> >@@ -67,8 +67,8 @@ void intel_update_cdclk(struct drm_i915_private *dev_priv);
> > u32 intel_read_rawclk(struct drm_i915_private *dev_priv);
> > bool intel_cdclk_clock_changed(const struct intel_cdclk_config *a,
> >                                const struct intel_cdclk_config *b);
> >-u8 intel_mdclk_cdclk_ratio(struct drm_i915_private *i915,
> >-                           const struct intel_cdclk_config *cdclk_config);
> >+int intel_mdclk_cdclk_ratio(struct drm_i915_private *i915,
> >+                            const struct intel_cdclk_config *cdclk_config);
> > bool intel_cdclk_is_decreasing_later(struct intel_atomic_state *state);
> > void intel_set_cdclk_pre_plane_update(struct intel_atomic_state *state);
> > void intel_set_cdclk_post_plane_update(struct intel_atomic_state *state);
> >diff --git a/drivers/gpu/drm/i915/display/skl_watermark.c b/drivers/gpu/drm/i915/display/skl_watermark.c
> >index ca0f1f89e6d9..1b48009efe2b 100644
> >--- a/drivers/gpu/drm/i915/display/skl_watermark.c
> >+++ b/drivers/gpu/drm/i915/display/skl_watermark.c
> >@@ -3616,7 +3616,8 @@ static void intel_mbus_dbox_update(struct intel_atomic_state *state)
> >         }
> > }
> > 
> >-int intel_dbuf_state_set_mdclk_cdclk_ratio(struct intel_atomic_state *state, u8 ratio)
> >+int intel_dbuf_state_set_mdclk_cdclk_ratio(struct intel_atomic_state *state,
> >+                                           int ratio)
> > {
> >         struct intel_dbuf_state *dbuf_state;
> > 
> >@@ -3629,7 +3630,8 @@ int intel_dbuf_state_set_mdclk_cdclk_ratio(struct intel_atomic_state *state, u8
> >         return intel_atomic_lock_global_state(&dbuf_state->base);
> > }
> > 
> >-void intel_dbuf_mdclk_cdclk_ratio_update(struct drm_i915_private *i915, u8 ratio, bool joined_mbus)
> >+void intel_dbuf_mdclk_cdclk_ratio_update(struct drm_i915_private *i915,
> >+                                         int ratio, bool joined_mbus)
> > {
> >         enum dbuf_slice slice;
> > 
> >diff --git a/drivers/gpu/drm/i915/display/skl_watermark.h b/drivers/gpu/drm/i915/display/skl_watermark.h
> >index 3323a1d973f9..ef1a008466be 100644
> >--- a/drivers/gpu/drm/i915/display/skl_watermark.h
> >+++ b/drivers/gpu/drm/i915/display/skl_watermark.h
> >@@ -74,11 +74,13 @@ intel_atomic_get_dbuf_state(struct intel_atomic_state *state);
> >         to_intel_dbuf_state(intel_atomic_get_new_global_obj_state(state, &to_i915(state->base.dev)->display.dbuf.obj))
> > 
> > int intel_dbuf_init(struct drm_i915_private *i915);
> >-int intel_dbuf_state_set_mdclk_cdclk_ratio(struct intel_atomic_state *state, u8 ratio);
> >+int intel_dbuf_state_set_mdclk_cdclk_ratio(struct intel_atomic_state *state,
> >+                                           int ratio);
> > 
> > void intel_dbuf_pre_plane_update(struct intel_atomic_state *state);
> > void intel_dbuf_post_plane_update(struct intel_atomic_state *state);
> >-void intel_dbuf_mdclk_cdclk_ratio_update(struct drm_i915_private *i915, u8 ratio, bool joined_mbus);
> >+void intel_dbuf_mdclk_cdclk_ratio_update(struct drm_i915_private *i915,
> >+                                         int ratio, bool joined_mbus);
> > void intel_dbuf_mbus_pre_ddb_update(struct intel_atomic_state *state);
> > void intel_dbuf_mbus_post_ddb_update(struct intel_atomic_state *state);
> > 
> >-- 
> >2.43.2
> >

-- 
Ville Syrjälä
Intel
