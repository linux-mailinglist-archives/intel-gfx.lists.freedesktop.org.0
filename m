Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id SGtrNDEFUWo/+AIAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Fri, 10 Jul 2026 16:44:01 +0200
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 4066073BDB9
	for <lists+intel-gfx@lfdr.de>; Fri, 10 Jul 2026 16:44:01 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=intel.com header.s=Intel header.b=cEq0r7Jx;
	dmarc=pass (policy=none) header.from=intel.com;
	spf=pass (mail.lfdr.de: domain of intel-gfx-bounces@lists.freedesktop.org designates 131.252.210.177 as permitted sender) smtp.mailfrom=intel-gfx-bounces@lists.freedesktop.org
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id B9DE310E5BF;
	Fri, 10 Jul 2026 14:43:59 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.9])
 by gabe.freedesktop.org (Postfix) with ESMTPS id B219410E271;
 Fri, 10 Jul 2026 14:43:57 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1783694638; x=1815230638;
 h=date:from:to:cc:subject:message-id:references:
 mime-version:content-transfer-encoding:in-reply-to;
 bh=P/xTpRQYMnd8u/4+Tw0FzTUYhWK0cV5/lwQ3OzgYZ1g=;
 b=cEq0r7JxSCbd0ZbubfrWG30YEqCu8R/qx14qHORITDHrNEBKh0qEcT6z
 QKbt4nCUXvOyh48DyrC5WRE6oXas7ugcSTOdd+b2C7WOzjGqNeYlPAahA
 nR4yWcqsMy0kbMrdCgYdAYZzIEgAvmGizOYDCVHgnIG/QK7optaYHY/DL
 h4EbnUzYY2RwLl0Cp3EQM+iNAC1a5UL24OtLFYxZNb9SsUrXismlu6gxp
 AQaSoJNLm/oBg0T/oHWCNKZp/OwIxMmjX9CfjI0IzU+Ly8c1T0Jw7Yfvn
 6chBULH7eyfZHIW2BOteGCHh034XfHnA02cycHqfgsPVBY57hqMZzB0JI g==;
X-CSE-ConnectionGUID: DOKH8/TaQcWF3I2E+rA1wg==
X-CSE-MsgGUID: nWv8fLBtSneUMoE9R+tKdQ==
X-IronPort-AV: E=McAfee;i="6800,10657,11841"; a="95040123"
X-IronPort-AV: E=Sophos;i="6.25,154,1779174000"; d="scan'208";a="95040123"
Received: from fmviesa010.fm.intel.com ([10.60.135.150])
 by fmvoesa103.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 10 Jul 2026 07:43:58 -0700
X-CSE-ConnectionGUID: UI+Pb0gwS0We7SIQUxPtew==
X-CSE-MsgGUID: qQi3cn8RR02z1tltzmgnIA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.25,154,1779174000"; d="scan'208";a="250915261"
Received: from hrotuna-mobl2.ger.corp.intel.com (HELO localhost)
 ([10.245.244.208])
 by fmviesa010-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 10 Jul 2026 07:43:56 -0700
Date: Fri, 10 Jul 2026 17:43:53 +0300
From: Ville =?iso-8859-1?Q?Syrj=E4l=E4?= <ville.syrjala@linux.intel.com>
To: Maarten Lankhorst <dev@lankhorst.se>
Cc: intel-xe@lists.freedesktop.org, intel-gfx@lists.freedesktop.org,
 dri-devel@lists.freedesktop.org
Subject: Re: [PATCH 00/10] drm/intel/display: Changes required to make vblank
 evasion PREEMPT_RT safe.
Message-ID: <alEFKfqD-69wOVxJ@intel.com>
References: <20260702072154.171324-1-dev@lankhorst.se>
MIME-Version: 1.0
Content-Type: text/plain; charset=iso-8859-1
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <20260702072154.171324-1-dev@lankhorst.se>
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
X-Spamd-Result: default: False [-0.75 / 15.00];
	R_MIXED_CHARSET(0.56)[subject];
	DMARC_POLICY_ALLOW(-0.50)[intel.com,none];
	MAILLIST(-0.20)[mailman];
	R_DKIM_ALLOW(-0.20)[intel.com:s=Intel];
	R_SPF_ALLOW(-0.20)[+ip4:131.252.210.177:c];
	MIME_GOOD(-0.10)[text/plain];
	RWL_MAILSPIKE_GOOD(-0.10)[131.252.210.177:from];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	RCVD_COUNT_THREE(0.00)[4];
	FROM_HAS_DN(0.00)[];
	HAS_ORG_HEADER(0.00)[];
	ARC_NA(0.00)[];
	TO_DN_SOME(0.00)[];
	MIME_TRACE(0.00)[0:+];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	RCPT_COUNT_THREE(0.00)[4];
	FORGED_SENDER_MAILLIST(0.00)[];
	MID_RHS_MATCH_FROMTLD(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[ville.syrjala@linux.intel.com,intel-gfx-bounces@lists.freedesktop.org];
	DKIM_TRACE(0.00)[intel.com:+];
	ALIAS_RESOLVED(0.00)[];
	ASN(0.00)[asn:6366, ipnet:131.252.0.0/16, country:US];
	TAGGED_RCPT(0.00)[intel-gfx];
	MISSING_XM_UA(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[intel.com:mid,intel.com:dkim,lists.freedesktop.org:from_smtp,linux.intel.com:from_mime,gabe.freedesktop.org:helo,gabe.freedesktop.org:rdns]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: 4066073BDB9

On Thu, Jul 02, 2026 at 09:21:43AM +0200, Maarten Lankhorst wrote:
> CONFIG_PREEMPT_RT requires code to be as deterministic as possible,
> and codes with interrupts disabled cannot use spinlocks.
> 
> In order to handle this correctly, we ensure any locking requirements
> are handled before disabling interrupts, and only start locking again
> after interrupts are re-enabled and timing sensitive path completed.
> 
> This also has the benefit of making the vblank evasion code more
> deterministic; without locking there's much less jitter.
> 
> Previously, we scheduled vblank work on completion.
> This is now handled by scheduling the vblank in advance, only arming
> it upon completion without locks.

Sashiko found a bunch of stuff that I was also thinking would be
a problem. Don't think I'll need to repeat it here.

I'm still thinking the easy way out would be to just convert
everything to raw spinlocks. The uncore lock I think should become
easier to deal with once I manage to move all of it into the
display code. I admit that the vblank locking is kinda annoying
and potentially inefficient. I've been pondering about making the
vblank locks to per-crtc to at least avoid some unnecessary contention,
but the fact that a lot of the drivers poke at the vblank internals
directly makes it a lot more work than it should be :/

> 
> Maarten Lankhorst (9):
>   drm/vblank_work: Add methods to schedule vblank_work in 2 stages
>   drm/vblank: Add a 2-stage version of drm_crtc_arm_vblank_event
>   drm/intel/display: Make intel_crtc_arm_vblank_event static
>   drm/intel/display: Convert vblank event handling to 2-stage arming
>   drm/i915/display: Move vblank put until after critical section
>   drm/i915/display: Remove locking from intel_vblank_evade critical
>     section
>   drm/i915/display: Handle vlv dsi workaround in scanline_in_safe_range
>     too
>   drm/i915/display: Make get_vblank_counter use intel_de_read_fw()
>   drm/i915/display: Do not take uncore lock in i915_get_vblank_counter
> 
> Mike Galbraith (1):
>   drm/i915: Use preempt_disable/enable_rt() where recommended
> 
>  drivers/gpu/drm/drm_vblank.c                  |  64 +++++++++-
>  drivers/gpu/drm/drm_vblank_work.c             | 110 +++++++++++++----
>  drivers/gpu/drm/i915/display/intel_crtc.c     |  86 ++++++-------
>  drivers/gpu/drm/i915/display/intel_crtc.h     |   1 -
>  drivers/gpu/drm/i915/display/intel_cursor.c   |   8 +-
>  drivers/gpu/drm/i915/display/intel_de.h       |   8 ++
>  drivers/gpu/drm/i915/display/intel_vblank.c   | 115 ++++++++++--------
>  drivers/gpu/drm/i915/display/intel_vblank.h   |   1 +
>  drivers/gpu/drm/i915/intel_uncore.h           |  26 ++--
>  .../drm/xe/compat-i915-headers/intel_uncore.h |   7 ++
>  include/drm/drm_vblank.h                      |  14 ++-
>  include/drm/drm_vblank_work.h                 |  12 ++
>  12 files changed, 324 insertions(+), 128 deletions(-)
> 
> -- 
> 2.53.0

-- 
Ville Syrjälä
Intel
