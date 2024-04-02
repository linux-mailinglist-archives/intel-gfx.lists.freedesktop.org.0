Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id E37A4895794
	for <lists+intel-gfx@lfdr.de>; Tue,  2 Apr 2024 16:56:41 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 413DA10FDAF;
	Tue,  2 Apr 2024 14:56:39 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="gthKdOX0";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.18])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 8055910FD99
 for <intel-gfx@lists.freedesktop.org>; Tue,  2 Apr 2024 14:56:37 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1712069798; x=1743605798;
 h=date:from:to:cc:subject:message-id:references:
 mime-version:content-transfer-encoding:in-reply-to;
 bh=fPylKXGfWR1l/5GTni61hnX8WradRL0t5N72aB79zXE=;
 b=gthKdOX01jz0O1/nWaQao3QGqoxpnFEJ2qJnMmoBYELqFrl+JYMGHr6P
 bXepuE+91JESvUTRbrHx7uqdH/CCjlyKNWAsrF72bVt+wwrZX184V4Dn5
 /BLnSrpfz0K0Taom7elH1uVAZWoRxp1X9Y3SMKWGTVhaVH4OzQeVCSbeg
 G3z3WAm4tOi6vd97jwdihWSOrrJgctk/KHcGylDRNO5eHeM28LCJQuu8E
 yE0bpy2aKaFEujMq4EZdA2TmTDBuN4VJpJBWAlYpH8PYwuNNN6nTAXVea
 DFLYslbu35e99uUL5M570gF0X5bCC7RqB+wCR/47WEBxE3yKnopfPC17y w==;
X-CSE-ConnectionGUID: mIBdxrQmT+irT+lc9+OCkQ==
X-CSE-MsgGUID: qTDvYYsXTJu1AnjsPztDFg==
X-IronPort-AV: E=McAfee;i="6600,9927,11032"; a="7086853"
X-IronPort-AV: E=Sophos;i="6.07,175,1708416000"; 
   d="scan'208";a="7086853"
Received: from orsmga001.jf.intel.com ([10.7.209.18])
 by fmvoesa112.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 02 Apr 2024 07:56:37 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,11032"; a="827789440"
X-IronPort-AV: E=Sophos;i="6.07,175,1708416000"; d="scan'208";a="827789440"
Received: from stinkpipe.fi.intel.com (HELO stinkbox) ([10.237.72.74])
 by orsmga001.jf.intel.com with SMTP; 02 Apr 2024 07:56:34 -0700
Received: by stinkbox (sSMTP sendmail emulation);
 Tue, 02 Apr 2024 17:56:33 +0300
Date: Tue, 2 Apr 2024 17:56:33 +0300
From: Ville =?iso-8859-1?Q?Syrj=E4l=E4?= <ville.syrjala@linux.intel.com>
To: Gustavo Sousa <gustavo.sousa@intel.com>
Cc: intel-gfx@lists.freedesktop.org
Subject: Re: [PATCH 02/13] drm/i915/cdclk: Fix voltage_level programming edge
 case
Message-ID: <ZgwcoRjvkpb4LgAA@intel.com>
References: <20240327174544.983-1-ville.syrjala@linux.intel.com>
 <20240327174544.983-3-ville.syrjala@linux.intel.com>
 <171173189599.2604.463532333386373442@gjsousa-mobl2>
MIME-Version: 1.0
Content-Type: text/plain; charset=iso-8859-1
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <171173189599.2604.463532333386373442@gjsousa-mobl2>
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

On Fri, Mar 29, 2024 at 02:04:55PM -0300, Gustavo Sousa wrote:
> Quoting Ville Syrjala (2024-03-27 14:45:33-03:00)
> >From: Ville Syrjälä <ville.syrjala@linux.intel.com>
> >
> >Currently we only consider the relationship of the
> >old and new CDCLK frequencies when determining whether
> >to do the repgramming from intel_set_cdclk_pre_plane_update()
> >or intel_set_cdclk_post_plane_update().
> >
> >It is technically possible to have a situation where the
> >CDCLK frequency is decreasing, but the voltage_level is
> >increasing due a DDI port. In this case we should bump
> >the voltage level already in intel_set_cdclk_pre_plane_update()
> >(so that the voltage_level will have been increased by the
> >time the port gets enabled), while leaving the CDCLK frequency
> >unchanged (as active planes/etc. may still depend on it).
> >We can then reduce the CDCLK frequency to its final value
> >from intel_set_cdclk_post_plane_update().
> >
> >In order to handle that correctly we shall construct a
> >suitable amalgam of the old and new cdclk states in
> >intel_set_cdclk_pre_plane_update().
> >
> >And we can simply call intel_set_cdclk() unconditionally
> >in both places as it will not do anything if nothing actually
> >changes vs. the current hw state.
> >
> >v2: Handle cdclk_state->disable_pipes
> >
> >Signed-off-by: Ville Syrjälä <ville.syrjala@linux.intel.com>
> >---
> > drivers/gpu/drm/i915/display/intel_cdclk.c | 27 +++++++++++++---------
> > 1 file changed, 16 insertions(+), 11 deletions(-)
> >
> >diff --git a/drivers/gpu/drm/i915/display/intel_cdclk.c b/drivers/gpu/drm/i915/display/intel_cdclk.c
> >index 619529dba095..504c5cbbcfff 100644
> >--- a/drivers/gpu/drm/i915/display/intel_cdclk.c
> >+++ b/drivers/gpu/drm/i915/display/intel_cdclk.c
> >@@ -2600,6 +2600,7 @@ intel_set_cdclk_pre_plane_update(struct intel_atomic_state *state)
> >                 intel_atomic_get_old_cdclk_state(state);
> >         const struct intel_cdclk_state *new_cdclk_state =
> >                 intel_atomic_get_new_cdclk_state(state);
> >+        struct intel_cdclk_config cdclk_config;
> > 
> >         if (!intel_cdclk_changed(&old_cdclk_state->actual,
> >                                  &new_cdclk_state->actual))
> >@@ -2608,13 +2609,21 @@ intel_set_cdclk_pre_plane_update(struct intel_atomic_state *state)
> >         if (IS_DG2(i915))
> >                 intel_cdclk_pcode_pre_notify(state);
> > 
> >-        if (new_cdclk_state->disable_pipes ||
> >-            old_cdclk_state->actual.cdclk <= new_cdclk_state->actual.cdclk) {
> >-                drm_WARN_ON(&i915->drm, !new_cdclk_state->base.changed);
> >+        if (new_cdclk_state->disable_pipes) {
> >+                cdclk_config = new_cdclk_state->actual;
> >+        } else {
> >+                if (new_cdclk_state->actual.cdclk >= old_cdclk_state->actual.cdclk)
> >+                        cdclk_config = new_cdclk_state->actual;
> >+                else
> >+                        cdclk_config = old_cdclk_state->actual;
> > 
> >-                intel_set_cdclk(i915, &new_cdclk_state->actual,
> >-                                new_cdclk_state->pipe);
> >+                cdclk_config.voltage_level = max(new_cdclk_state->actual.voltage_level,
> >+                                                 old_cdclk_state->actual.voltage_level);
> >         }
> >+
> >+        drm_WARN_ON(&i915->drm, !new_cdclk_state->base.changed);
> >+
> >+        intel_set_cdclk(i915, &cdclk_config, new_cdclk_state->pipe);
> 
> Not sure if there could be unwanted side effects with passing
> new_cdclk_state->pipe when using old_cdclk_state->actual. Because
> voltage_level might have changed, parts of the cdclk change sequence end
> up being exercised even when cdclk_config == old_cdclk_state->actual.
> 
> Well, even if those side effects might be harmless, I wonder if it would
> be better if we used INVALID_PIPE when using old_cdclk_state->actual.

Yeah. I doubt there should be any really bad side effects, but
probably a good idea to sidestep the whole question by passing
in INVALID_PIPE.

-- 
Ville Syrjälä
Intel
