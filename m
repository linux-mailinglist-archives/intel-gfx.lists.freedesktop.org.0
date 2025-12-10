Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id AADF6CB21B2
	for <lists+intel-gfx@lfdr.de>; Wed, 10 Dec 2025 07:46:35 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id E6A2D10E674;
	Wed, 10 Dec 2025 06:46:33 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="lrwzXfih";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.7])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 97F7D10E670;
 Wed, 10 Dec 2025 06:46:32 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1765349193; x=1796885193;
 h=date:from:to:cc:subject:message-id:references:
 mime-version:content-transfer-encoding:in-reply-to;
 bh=WlIZPeFu4+w2qFVADl0O4ONuCqV63wOwUvOk4TXwPbc=;
 b=lrwzXfihNQcfUZEQxflJl5AqLtt49BwOktBVpIWcHSQUadoFOoJGt7X3
 ns8Yt7tAgAe/7kpi0JPms+dqb6BqIre4IIwP1w1z4t1ZOlz1l3wsDVc+v
 thcrqeyp67tQfMNCVf72m5aW915qQXJCgZIST+or5G6jwMaozO777UIiq
 9dyY2N5AYLufkVg9XDsBf1fRBJ7zQ+7maXp5F4N0gRO35Uw0XNUSm10CW
 LC73p+bM9B32h54tW3VC1hZg5n9aHGmhAVngBh4C5nllcsQ4k2L2Weg8v
 2gXA+w3L6XCoqHgK+Tvr4UImlp1/szsdBGinMi14jytAtBBEdEtgURsF5 g==;
X-CSE-ConnectionGUID: gemVDJtwT0e1NYcBllnLEA==
X-CSE-MsgGUID: Ra9YE2F9QMmecJtwIYfepA==
X-IronPort-AV: E=McAfee;i="6800,10657,11637"; a="92790270"
X-IronPort-AV: E=Sophos;i="6.20,263,1758610800"; d="scan'208";a="92790270"
Received: from orviesa004.jf.intel.com ([10.64.159.144])
 by fmvoesa101.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 09 Dec 2025 22:46:32 -0800
X-CSE-ConnectionGUID: zEMljV7cR3mnxaXq0l4xRA==
X-CSE-MsgGUID: Xf5lfl4BRGWLXgdoh4pbyQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.20,263,1758610800"; d="scan'208";a="200926542"
Received: from dalessan-mobl3.ger.corp.intel.com (HELO localhost)
 ([10.245.244.21])
 by orviesa004-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 09 Dec 2025 22:46:30 -0800
Date: Wed, 10 Dec 2025 08:46:28 +0200
From: Ville =?iso-8859-1?Q?Syrj=E4l=E4?= <ville.syrjala@linux.intel.com>
To: "Hogander, Jouni" <jouni.hogander@intel.com>
Cc: "intel-xe@lists.freedesktop.org" <intel-xe@lists.freedesktop.org>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>
Subject: Re: [PATCH v4 0/3] Selective Fetch and async flip
Message-ID: <aTkXRD524f4yeT8g@intel.com>
References: <20251204070718.1090778-1-jouni.hogander@intel.com>
 <aThp0YZOjgWyA9DW@intel.com>
 <66f94d37118e7de638e3d0f5a016b7e496497ee3.camel@intel.com>
 <a7970dbeb7785e0f63cd50caae7c18e05384d9db.camel@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=iso-8859-1
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <a7970dbeb7785e0f63cd50caae7c18e05384d9db.camel@intel.com>
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

On Wed, Dec 10, 2025 at 06:31:02AM +0000, Hogander, Jouni wrote:
> On Wed, 2025-12-10 at 08:23 +0200, Hogander, Jouni wrote:
> > On Tue, 2025-12-09 at 20:26 +0200, Ville Syrjälä wrote:
> > > On Thu, Dec 04, 2025 at 09:07:15AM +0200, Jouni Högander wrote:
> > > > This patch set contains fixes for Selective Fetch async flip
> > > > sequences. On async flip selective fetch is choosing full frame
> > > > update. Also subsequent flip/update is still using full frame
> > > > update
> > > > to ensure plane with pending async flip is not taken in to
> > > > selective
> > > > fetch/update.
> > > > 
> > > > v4:
> > > >   - rework if-else if to if-if
> > > >   - added comment updated
> > > >   - check crtc_state->async_flip_planes in
> > > >     psr2_sel_fetch_pipe_state_supported
> > > > v3:
> > > >   - rebase
> > > >   - fix old_crtc_state->pipe_srcsz_early_tpt
> > > >   - fix using intel_atomic_get_new_crtc_state
> > > > v2:
> > > >   - check also crtc_state->async_flip_planes in
> > > >     psr2_sel_fetch_plane_state_supported
> > > > 
> > > > Jouni Högander (3):
> > > >   drm/i915/psr: Set plane id bit in crtc_state->async_flip_planes
> > > > for
> > > >     PSR
> > > >   drm/i915/psr: Perform full frame update on async flip
> > > >   drm/i915/psr: Allow async flip when Selective Fetch enabled
> > > 
> > > Series is
> > > Reviewed-by: Ville Syrjälä <ville.syrjala@linux.intel.com>
> > > 
> > > When testing this I saw that we get stuck into full frame mode
> > > all the time. But that seems to be a pre-existing issues caused
> > > by the broken selective fetch area calculation code. I suppose
> > > now that I have a laptop with a PSR2 panel I might have to dig out
> > > that branch of mine where I attempted to rewrite the whoile thing
> > > and figure out what was wrong with it...
> > > 
> > 
> > What is the SW setup you are using and what kind of testing you are
> > doing? Could it be related to frontbuffer tracking?
> 
> Also what is the HW/platform you are using?

This was a LNL.

-- 
Ville Syrjälä
Intel
