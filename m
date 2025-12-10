Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id AD51DCB2C43
	for <lists+intel-gfx@lfdr.de>; Wed, 10 Dec 2025 12:08:37 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 2E32010E6E5;
	Wed, 10 Dec 2025 11:08:36 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="PRtpOxlv";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.18])
 by gabe.freedesktop.org (Postfix) with ESMTPS id C905010E202;
 Wed, 10 Dec 2025 11:08:34 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1765364915; x=1796900915;
 h=from:to:subject:in-reply-to:references:date:message-id:
 mime-version; bh=lUrcF/xd2GSNNiW3EGYGHDNCOWZyVniJvUJ3nZrUoS0=;
 b=PRtpOxlvC6f2BEjCdTLykVXCqQb1wPnqQHqcb1Xp6i5yv6elwl2GT8La
 iDM3E2p1Os7pKbSSAfdF1vdVd9BtARJDItbZseBsu9+Vd4bYLw2sHcd7b
 VsXEiZ96JSIMBJE2gyJMTF2VkJS6UhQuPSd1Bw2btzmVeRBub1kUePmJV
 unGP6mNBfSZ3mVgr1l+Nh4rC5o0o148qAA2wMj3R6ya90d+wYVgdtX5aG
 5PljfYlN6nRBs1TSuzR2BY3UvK6GJep+I52hmByc/0xldD3rOf/6qrvJR
 pNP9OXvJHINmU1lXQ51np5wzvnDB+RzMHyEu9yBfNwGiy/8Jo36AhZn9x g==;
X-CSE-ConnectionGUID: +TQXlCbgR2KOMGKqfrqWAg==
X-CSE-MsgGUID: /9Y8+xOBSz+XLi1YsxiNGQ==
X-IronPort-AV: E=McAfee;i="6800,10657,11637"; a="66511733"
X-IronPort-AV: E=Sophos;i="6.20,263,1758610800"; d="scan'208";a="66511733"
Received: from orviesa009.jf.intel.com ([10.64.159.149])
 by fmvoesa112.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 10 Dec 2025 03:08:34 -0800
X-CSE-ConnectionGUID: p7VOZYcOT7O/a7vsgNCAMA==
X-CSE-MsgGUID: uUpP0mKmRTWQkeXeZi6lTw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.20,263,1758610800"; d="scan'208";a="196239833"
Received: from mjarzebo-mobl1.ger.corp.intel.com (HELO localhost)
 ([10.245.246.207])
 by orviesa009-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 10 Dec 2025 03:08:33 -0800
From: Jani Nikula <jani.nikula@linux.intel.com>
To: "Manna, Animesh" <animesh.manna@intel.com>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>,
 "intel-xe@lists.freedesktop.org" <intel-xe@lists.freedesktop.org>
Subject: RE: [PATCH] drm/i915/display: Panel Replay BW optimization for
 DP2.0 tunneling
In-Reply-To: <DS0PR11MB8049E5428BA761F99FB5A7B0F9A0A@DS0PR11MB8049.namprd11.prod.outlook.com>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
References: <20251210052128.1857581-1-animesh.manna@intel.com>
 <b6cd982649633cef5f878054e35cd8315b04ca05@intel.com>
 <DS0PR11MB8049E5428BA761F99FB5A7B0F9A0A@DS0PR11MB8049.namprd11.prod.outlook.com>
Date: Wed, 10 Dec 2025 13:08:29 +0200
Message-ID: <75e3a87a24ff92c02cb62236a821a91e9e5ea81f@intel.com>
MIME-Version: 1.0
Content-Type: text/plain
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

On Wed, 10 Dec 2025, "Manna, Animesh" <animesh.manna@intel.com> wrote:
>> -----Original Message-----
>> From: Jani Nikula <jani.nikula@linux.intel.com>
>> Sent: Wednesday, December 10, 2025 2:25 PM
>> To: Manna, Animesh <animesh.manna@intel.com>; intel-
>> gfx@lists.freedesktop.org; intel-xe@lists.freedesktop.org
>> Cc: Manna, Animesh <animesh.manna@intel.com>
>> Subject: Re: [PATCH] drm/i915/display: Panel Replay BW optimization for
>> DP2.0 tunneling
>> 
>> On Wed, 10 Dec 2025, Animesh Manna <animesh.manna@intel.com> wrote:
>> > Unused bandwidth can be used by external display agents for Panel
>> > Replay enabled DP panel during idleness with link on. Enable source to
>> > replace dummy data from the display with data from another agent by
>> > programming TRANS_DP2_CTL [Panel Replay Tunneling Enable].
>> >
>> > Bspec: 68920
>> > Signed-off-by: Animesh Manna <animesh.manna@intel.com>
>> > ---
>> >  .../gpu/drm/i915/display/intel_display_regs.h |  1 +
>> >  drivers/gpu/drm/i915/display/intel_psr.c      | 23 +++++++++++++++++++
>> >  2 files changed, 24 insertions(+)
>> >
>> > diff --git a/drivers/gpu/drm/i915/display/intel_display_regs.h
>> > b/drivers/gpu/drm/i915/display/intel_display_regs.h
>> > index 9e0d853f4b61..b6fc249a9f09 100644
>> > --- a/drivers/gpu/drm/i915/display/intel_display_regs.h
>> > +++ b/drivers/gpu/drm/i915/display/intel_display_regs.h
>> > @@ -2051,6 +2051,7 @@
>> >  #define TRANS_DP2_CTL(trans)			_MMIO_TRANS(trans,
>> _TRANS_DP2_CTL_A, _TRANS_DP2_CTL_B)
>> >  #define  TRANS_DP2_128B132B_CHANNEL_CODING	REG_BIT(31)
>> >  #define  TRANS_DP2_PANEL_REPLAY_ENABLE		REG_BIT(30)
>> > +#define  TRANS_DP2_PR_TUNNELING_ENABLE		REG_BIT(26)
>> >  #define  TRANS_DP2_DEBUG_ENABLE			REG_BIT(23)
>> >
>> >  #define _TRANS_DP2_VFREQHIGH_A			0x600a4
>> > diff --git a/drivers/gpu/drm/i915/display/intel_psr.c
>> > b/drivers/gpu/drm/i915/display/intel_psr.c
>> > index 2a378a5adc59..d0a01a08299e 100644
>> > --- a/drivers/gpu/drm/i915/display/intel_psr.c
>> > +++ b/drivers/gpu/drm/i915/display/intel_psr.c
>> > @@ -44,6 +44,7 @@
>> >  #include "intel_dmc.h"
>> >  #include "intel_dp.h"
>> >  #include "intel_dp_aux.h"
>> > +#include "intel_dp_tunnel.h"
>> >  #include "intel_dsb.h"
>> >  #include "intel_frontbuffer.h"
>> >  #include "intel_hdmi.h"
>> > @@ -2152,6 +2153,25 @@ static bool psr_interrupt_error_check(struct
>> intel_dp *intel_dp)
>> >  	return true;
>> >  }
>> >
>> > +static void intel_psr_set_pr_bw_optimization(struct intel_dp
>> > +*intel_dp) {
>> > +	struct intel_display *display = to_intel_display(intel_dp);
>> > +	u8 val;
>> > +
>> > +	if (DISPLAY_VER(display) < 35)
>> > +		return;
>> > +
>> > +	if (!intel_dp_tunnel_bw_alloc_is_enabled(intel_dp))
>> > +		return;
>> > +
>> > +	drm_dp_dpcd_readb(&intel_dp->aux, DP_TUNNELING_CAPABILITIES,
>> &val);
>> > +	if (!(val & DP_PANEL_REPLAY_OPTIMIZATION_SUPPORT))
>> > +		return;
>> > +
>> > +	intel_de_rmw(display, TRANS_DP2_CTL(intel_dp->psr.transcoder), 0,
>> > +		     TRANS_DP2_PR_TUNNELING_ENABLE); }
>> 
>> Why is this so separated from dg2_activate_panel_replay()?
>
> I felt this feature more leaning towards DP tunneling, so kept outside of dg2_activate_panel_replay().
> But this is just after intel_psr_activate().

On *one* path calling intel_psr_activate(). Why not others?

>
> Regards,
> Animesh
>> 
>> > +
>> >  static void intel_psr_enable_locked(struct intel_dp *intel_dp,
>> >  				    const struct intel_crtc_state *crtc_state)  {
>> @@ -2221,6
>> > +2241,9 @@ static void intel_psr_enable_locked(struct intel_dp *intel_dp,
>> >  	intel_dp->psr.link_ok = true;
>> >
>> >  	intel_psr_activate(intel_dp);
>> > +
>> > +	if (!intel_dp_is_edp(intel_dp) && intel_dp-
>> >psr.panel_replay_enabled)
>> > +		intel_psr_set_pr_bw_optimization(intel_dp);
>> >  }
>> >
>> >  static void intel_psr_exit(struct intel_dp *intel_dp)
>> 
>> --
>> Jani Nikula, Intel

-- 
Jani Nikula, Intel
