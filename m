Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 90EF4CB2243
	for <lists+intel-gfx@lfdr.de>; Wed, 10 Dec 2025 08:06:41 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 5B71910E678;
	Wed, 10 Dec 2025 07:06:39 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="UVCkjDDS";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.9])
 by gabe.freedesktop.org (Postfix) with ESMTPS id DB9E210E675;
 Wed, 10 Dec 2025 07:06:37 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1765350398; x=1796886398;
 h=date:from:to:cc:subject:message-id:references:
 mime-version:content-transfer-encoding:in-reply-to;
 bh=6CL3EdQxnn5n04T1Bk0HTY+48b6P2Y5paLSiokhP0KM=;
 b=UVCkjDDS5e72iWHdd4H/kFVsUtGeJgrp9yyROcSY6qwyRtT5eC2Gea11
 CMZa5fKTtdcl0D6fCWzDltPrDiNz0C3l/ehPIfnDMg8gF1Bpdsri5F8iM
 4xxG3G8rs/WnZlfl7SeMIN9Er/RZh+hYESWjKrcln/deVoXJQUcn7DJjH
 JB2zo3ipmyhJjl1LSBtxrTuQhratekqgDgWRdUg97RPkZTqnj+9/IOWXJ
 LurRe3roB/NF4w604Sn4J8d+rjbF7gT3S/fhbSJkNkv9YOYZU7ePslJ44
 yyEF8OL5fbHpJh6xbXKDA17Z+PZxq9sKCu4+E/m6bb4jv0eHQrQZ5bfmK g==;
X-CSE-ConnectionGUID: nY1+nJ4hTTit4GH8mibGKw==
X-CSE-MsgGUID: kcSnmu3OTm+4X3P3yMaT+w==
X-IronPort-AV: E=McAfee;i="6800,10657,11637"; a="78010034"
X-IronPort-AV: E=Sophos;i="6.20,263,1758610800"; d="scan'208";a="78010034"
Received: from fmviesa003.fm.intel.com ([10.60.135.143])
 by fmvoesa103.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 09 Dec 2025 23:06:34 -0800
X-CSE-ConnectionGUID: q7+QjBrCRQewkbInnNttDQ==
X-CSE-MsgGUID: TtDRSyFRRvijmM6+EfGVsA==
X-ExtLoop1: 1
Received: from dalessan-mobl3.ger.corp.intel.com (HELO localhost)
 ([10.245.244.21])
 by fmviesa003-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 09 Dec 2025 23:06:32 -0800
Date: Wed, 10 Dec 2025 09:06:28 +0200
From: Ville =?iso-8859-1?Q?Syrj=E4l=E4?= <ville.syrjala@linux.intel.com>
To: "Hogander, Jouni" <jouni.hogander@intel.com>
Cc: "intel-xe@lists.freedesktop.org" <intel-xe@lists.freedesktop.org>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>
Subject: Re: [PATCH v4 0/3] Selective Fetch and async flip
Message-ID: <aTkb9ByZ6oJQ-kZn@intel.com>
References: <20251204070718.1090778-1-jouni.hogander@intel.com>
 <aThp0YZOjgWyA9DW@intel.com>
 <66f94d37118e7de638e3d0f5a016b7e496497ee3.camel@intel.com>
 <aTkWRYBWrWaMNkbC@intel.com>
 <011a7d32fc6860ae4b3d00d438a79d8ade6f724e.camel@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=iso-8859-1
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <011a7d32fc6860ae4b3d00d438a79d8ade6f724e.camel@intel.com>
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

On Wed, Dec 10, 2025 at 06:57:41AM +0000, Hogander, Jouni wrote:
> On Wed, 2025-12-10 at 08:42 +0200, Ville Syrjälä wrote:
> > On Wed, Dec 10, 2025 at 06:23:34AM +0000, Hogander, Jouni wrote:
> > > On Tue, 2025-12-09 at 20:26 +0200, Ville Syrjälä wrote:
> > > > On Thu, Dec 04, 2025 at 09:07:15AM +0200, Jouni Högander wrote:
> > > > > This patch set contains fixes for Selective Fetch async flip
> > > > > sequences. On async flip selective fetch is choosing full frame
> > > > > update. Also subsequent flip/update is still using full frame
> > > > > update
> > > > > to ensure plane with pending async flip is not taken in to
> > > > > selective
> > > > > fetch/update.
> > > > > 
> > > > > v4:
> > > > >   - rework if-else if to if-if
> > > > >   - added comment updated
> > > > >   - check crtc_state->async_flip_planes in
> > > > >     psr2_sel_fetch_pipe_state_supported
> > > > > v3:
> > > > >   - rebase
> > > > >   - fix old_crtc_state->pipe_srcsz_early_tpt
> > > > >   - fix using intel_atomic_get_new_crtc_state
> > > > > v2:
> > > > >   - check also crtc_state->async_flip_planes in
> > > > >     psr2_sel_fetch_plane_state_supported
> > > > > 
> > > > > Jouni Högander (3):
> > > > >   drm/i915/psr: Set plane id bit in crtc_state-
> > > > > >async_flip_planes
> > > > > for
> > > > >     PSR
> > > > >   drm/i915/psr: Perform full frame update on async flip
> > > > >   drm/i915/psr: Allow async flip when Selective Fetch enabled
> > > > 
> > > > Series is
> > > > Reviewed-by: Ville Syrjälä <ville.syrjala@linux.intel.com>
> > > > 
> > > > When testing this I saw that we get stuck into full frame mode
> > > > all the time. But that seems to be a pre-existing issues caused
> > > > by the broken selective fetch area calculation code. I suppose
> > > > now that I have a laptop with a PSR2 panel I might have to dig
> > > > out
> > > > that branch of mine where I attempted to rewrite the whoile thing
> > > > and figure out what was wrong with it...
> > > > 
> > > 
> > > What is the SW setup you are using and what kind of testing you are
> > > doing? Could it be related to frontbuffer tracking?
> > 
> > I just have Xorg running w/o a compositor and then running
> > 'vblank_mode=0 glxgears -fullscreen'. The last tests were done
> > using mate/marco as the window manager, but I suppose it might be
> > reproducible w/o any window manager as well.
> > 
> > I was monitoring the full vs. partial update state by just polling
> > the PSR_MAN_TRACK_CTL (or whatever it's called) register. Might
> > actually be a decent idea to add something into the debufs status
> > file for that, given that the register layout is rather platform
> > specific.
> > 
> > I sprinkled a few debugs in the driver and it generally seemed to end
> > up in the 'if (crtc_state->psr2_su_area.y1 == -1) -> full_update'
> > case, which doesn't really surprise given that the code is very
> > confused about coordinate spaces.
> 
> Thank you for the description. I will try to reproduce. What does that
> vblank_mode=0?

It forces vsync off regardless of what the application asks for.

I was going to point you at the Mesa environment variable docs, but
surprisingly vblank_mode doesn't appear to be documented there.

-- 
Ville Syrjälä
Intel
