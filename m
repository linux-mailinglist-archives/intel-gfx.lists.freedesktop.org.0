Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id RDprOHY8IGogzAAAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Wed, 03 Jun 2026 16:38:46 +0200
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 01D44638AD2
	for <lists+intel-gfx@lfdr.de>; Wed, 03 Jun 2026 16:38:46 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=intel.com header.s=Intel header.b=RGYGIZaH;
	spf=pass (mail.lfdr.de: domain of intel-gfx-bounces@lists.freedesktop.org designates 131.252.210.177 as permitted sender) smtp.mailfrom=intel-gfx-bounces@lists.freedesktop.org;
	dmarc=pass (policy=none) header.from=intel.com
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id F247D10FF44;
	Wed,  3 Jun 2026 14:38:43 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.17])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 96F5810FF43;
 Wed,  3 Jun 2026 14:38:42 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1780497522; x=1812033522;
 h=date:from:to:cc:subject:message-id:references:
 mime-version:content-transfer-encoding:in-reply-to;
 bh=GWdaupkhWor8JS2NPoWg24ntiq33N7PaKfMwTo8co6M=;
 b=RGYGIZaHqYYjVN3qDCPpQoLckhS971Cly6qRe12IAQoEnuLshGtGIx0z
 mqs4z5kNWAVsc+ruCDFMxz6WANrBd65oEBgzccL9PMX2EjMSlofY9atMJ
 IX24JRVQ8hAG/5MyRejCYzBWgRL/CGSn47FursHC8n1DLPA5Rd0dV/C7K
 NYdtreuzYxxnUl81vFpBJptLcikB98T3uWssV/cYNeAZK59gb/dRlwsDm
 p0Dg2KSfiwjFEkKGAF72PcVV/FaaTABXB3SEva3bORhZR2R9wl9kTfYqC
 /kMoyjsgz0BADay6lRdL9Dr/2+vEGohPQd3pofg73B0Brw9rWjxhi5jLA w==;
X-CSE-ConnectionGUID: AGT/PkywRryauIVqk1leTw==
X-CSE-MsgGUID: 9xdjOJ5PRUOF6/rRy58Cng==
X-IronPort-AV: E=McAfee;i="6800,10657,11805"; a="81167090"
X-IronPort-AV: E=Sophos;i="6.24,185,1774335600"; d="scan'208";a="81167090"
Received: from orviesa009.jf.intel.com ([10.64.159.149])
 by fmvoesa111.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 03 Jun 2026 07:38:42 -0700
X-CSE-ConnectionGUID: I1GGhW/ESEC20Fxde9lyJQ==
X-CSE-MsgGUID: RzMbq9NtRwOsN93iy96nwA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.24,185,1774335600"; d="scan'208";a="244340431"
Received: from fpallare-mobl4.ger.corp.intel.com (HELO localhost)
 ([10.245.244.220])
 by orviesa009-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 03 Jun 2026 07:38:40 -0700
Date: Wed, 3 Jun 2026 17:38:36 +0300
From: Ville =?iso-8859-1?Q?Syrj=E4l=E4?= <ville.syrjala@linux.intel.com>
To: Ankit Nautiyal <ankit.k.nautiyal@intel.com>
Cc: intel-gfx@lists.freedesktop.org, intel-xe@lists.freedesktop.org,
 jani.nikula@linux.intel.com, navaremanasi@google.com
Subject: Re: [PATCH 0/6] drm/i915/intel_panel: Fix seamless VRR mode
 switching for DRRS panels
Message-ID: <aiA8bL4E1SCZQVsw@intel.com>
References: <20260522132511.321540-1-ankit.k.nautiyal@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=iso-8859-1
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <20260522132511.321540-1-ankit.k.nautiyal@intel.com>
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
X-Rspamd-Action: no action
X-Spamd-Result: default: False [0.25 / 15.00];
	MID_RHS_MATCH_TO(1.00)[];
	R_MIXED_CHARSET(0.56)[subject];
	DMARC_POLICY_ALLOW(-0.50)[intel.com,none];
	R_DKIM_ALLOW(-0.20)[intel.com:s=Intel];
	R_SPF_ALLOW(-0.20)[+ip4:131.252.210.177:c];
	MAILLIST(-0.20)[mailman];
	RWL_MAILSPIKE_GOOD(-0.10)[131.252.210.177:from];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	HAS_ORG_HEADER(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	TO_DN_SOME(0.00)[];
	MIME_TRACE(0.00)[0:+];
	ARC_NA(0.00)[];
	RCVD_COUNT_THREE(0.00)[4];
	DKIM_TRACE(0.00)[intel.com:+];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCPT_COUNT_FIVE(0.00)[5];
	ALIAS_RESOLVED(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[ville.syrjala@linux.intel.com,intel-gfx-bounces@lists.freedesktop.org];
	FROM_HAS_DN(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	MID_RHS_MATCH_FROMTLD(0.00)[];
	ASN(0.00)[asn:6366, ipnet:131.252.0.0/16, country:US];
	TAGGED_RCPT(0.00)[intel-gfx];
	MISSING_XM_UA(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[intel.com:mid,intel.com:dkim,gabe.freedesktop.org:helo,gabe.freedesktop.org:rdns,lists.freedesktop.org:from_smtp]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: 01D44638AD2

On Fri, May 22, 2026 at 06:55:05PM +0530, Ankit Nautiyal wrote:
> Currently intel_panel_fixed_mode() can return a lower refresh rate mode
> for VRR panels if the lower refresh rate mode is first in the list.
> This creates problems for seamless switch features like LRR and
> Seamless-DRRS, as it results in changes to vsync_start/end causing a
> full modeset instead of a seamless switch.
> 
> This is particularly problematic for DRRS panels on platforms without
> double buffered M/N support for LNL+ (display version 20+), where
> seamless clock changes are not possible.
> 
> This series attempts to fix this by:
> 1. Adding a helper to get the highest refresh rate mode from the list of
>    fixed modes for a connector.
> 2. When a seamless switch to a lower mode is desired, making
>    intel_panel_fixed_mode() return the highest refresh rate mode,
>    provided the requested rate is in VRR range. The vblank is then
>    extended to provide the desired refresh rate.
> 
> To determine whether a full modeset or seamless switch is intended, the
> connector state is checked for the allow_modeset flag. A nullable
> conn_state parameter is added to intel_panel_fixed_mode() and
> intel_panel_compute_config() for this purpose.
> 
> Rev2:
>  - Address Ville's comments to preserve Vtotal-Vsync distance while
>    adjusting VTOTAL.
>  - Address Manasi's comments to always go with highest RR mode
>    irrespective of allow_modeset flag for modes that have same clock but
>    different votal.
> 
> Rev3:
>  - Drop patch to deprecate TRANS_VSYNC, instead add Vsync start/end in
>    lrr codepaths. (Ville).
>  - Fix the condition to avoid picking higher RR mode for DRRS panels
>    when allow modeset flag is set.
> 
> Ankit Nautiyal (6):
>   drm/i915/display: Handle VSYNC timing in LRR path
>   drm/i915/panel: Preserve Vtotal-Vsync distance while adjusting vtotal
>   drm/i915/intel_panel: Add a helper to get the highest refresh rate
>     mode
>   drm/i915/intel_panel: Pass crtc_state to intel_panel_compute_config
>   drm/i915/intel_panel: Use highest refresh rate mode for VRR panels
>   drm/i915/intel_panel: Refine VRR fixed mode selection for DRRS panels

I didn't really go through the rest of the stuff in fine detail,
but my initial reaction was that it all feels complicated.

Here's a quick attempt at a simpler thing:
 https://github.com/vsyrjala/linux.git vrr_no_allow_modeset

Ie. just try to make sure the fixed mode selected by a
!allow_modeset commit is "VRR compatible" with the old
adjusted_mode. This is completely untested though, so not
sure it actually works.

The guardband does still pose a bit of a problem in that
the optimized guardband might exceed the available vblank
for either the old or new mode, in case we can end up with
a change in guardband. If that turns out to be a serious issue
then I suppose we might also need to preserve the current
guardband value instead of recalculating it...

> 
>  drivers/gpu/drm/i915/display/icl_dsi.c       |   2 +-
>  drivers/gpu/drm/i915/display/intel_display.c |   9 +-
>  drivers/gpu/drm/i915/display/intel_dp.c      |   2 +-
>  drivers/gpu/drm/i915/display/intel_dvo.c     |   2 +-
>  drivers/gpu/drm/i915/display/intel_lvds.c    |   2 +-
>  drivers/gpu/drm/i915/display/intel_panel.c   | 102 +++++++++++++++----
>  drivers/gpu/drm/i915/display/intel_panel.h   |   9 +-
>  drivers/gpu/drm/i915/display/intel_sdvo.c    |   8 +-
>  drivers/gpu/drm/i915/display/vlv_dsi.c       |   2 +-
>  9 files changed, 108 insertions(+), 30 deletions(-)
> 
> -- 
> 2.45.2

-- 
Ville Syrjälä
Intel
