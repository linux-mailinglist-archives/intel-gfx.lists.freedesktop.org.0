Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 25FCB9F13A9
	for <lists+intel-gfx@lfdr.de>; Fri, 13 Dec 2024 18:31:29 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id C4CBB10F0B1;
	Fri, 13 Dec 2024 17:31:27 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="U8DW/eZg";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.19])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 9DDF910E26F;
 Fri, 13 Dec 2024 17:31:26 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1734111087; x=1765647087;
 h=date:from:to:cc:subject:message-id:references:
 mime-version:content-transfer-encoding:in-reply-to;
 bh=VoNqLdTCzztQMDYn/OOFE+CPXREX0WahptOC5gzm44M=;
 b=U8DW/eZg9cuknfUSYWz3zHTNEEfO13RETBVVqv791acKUMTgevIjywpF
 dChvHgpC+nRoekFzpztouvuuIAtEghYnr7smNoksdHUyZorxp5OakyfvO
 9BMK+keTeU+yP4WfgHFKclp83pDFJmjdzGxWrSX+MC+0+BI7Z0pXDV6hS
 nRhFbFWyk7B7LS/XWoDxP3Nke4nObeNHXy7fvQdO2KS8W0EraggnleSek
 ACzXvZbmryZHmjNb/FP2ALyZ0/hcxt8Y02ThoDxjPcg6uJ9z/IPZ22M7q
 UOtVg64Gpwyx36MwjFk6/XnCpJNgMs2glQ2/Yu++K7bu0oWE+EFpLpKqI A==;
X-CSE-ConnectionGUID: iZkfgNwrSDaTlPdXyk4sDw==
X-CSE-MsgGUID: 5hWBbl+/RzeSJ8Pg7GrAXA==
X-IronPort-AV: E=McAfee;i="6700,10204,11285"; a="33869163"
X-IronPort-AV: E=Sophos;i="6.12,231,1728975600"; d="scan'208";a="33869163"
Received: from fmviesa008.fm.intel.com ([10.60.135.148])
 by fmvoesa113.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 13 Dec 2024 09:31:26 -0800
X-CSE-ConnectionGUID: qpN332hMQ+OEBF0X4ymzVA==
X-CSE-MsgGUID: VPeCxkNFQb2zgpYjtqhbHQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.12,231,1728975600"; d="scan'208";a="96818004"
Received: from stinkpipe.fi.intel.com (HELO stinkbox) ([10.237.72.74])
 by fmviesa008.fm.intel.com with SMTP; 13 Dec 2024 09:31:23 -0800
Received: by stinkbox (sSMTP sendmail emulation);
 Fri, 13 Dec 2024 19:31:22 +0200
Date: Fri, 13 Dec 2024 19:31:22 +0200
From: Ville =?iso-8859-1?Q?Syrj=E4l=E4?= <ville.syrjala@linux.intel.com>
To: Ankit Nautiyal <ankit.k.nautiyal@intel.com>
Cc: intel-gfx@lists.freedesktop.org, intel-xe@lists.freedesktop.org,
 jani.nikula@linux.intel.com, mitulkumar.ajitkumar.golani@intel.com
Subject: Re: [PATCH 00/23] Use VRR timing generator for fixed refresh rate
 modes
Message-ID: <Z1xvavnFCeaiYwJL@intel.com>
References: <20241111091221.2992818-1-ankit.k.nautiyal@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=iso-8859-1
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <20241111091221.2992818-1-ankit.k.nautiyal@intel.com>
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

On Mon, Nov 11, 2024 at 02:41:58PM +0530, Ankit Nautiyal wrote:
> Even though the VRR timing generator (TG) is primarily used for
> variable refresh rates, it can be used for fixed refresh rates as
> well. For a fixed refresh rate the Flip Line and Vmax must be equal
> (TRANS_VRR_FLIPLINE = TRANS_VRR_VMAX). Beyond that, there are some
> dependencies between the VRR timings and the legacy timing generator
> registers.
> 
> This series is an attempt to use VRR TG for fixed refresh rate.
> For platforms XE2LPD+, always go with VRR timing generator for both fixed and
> variable refresh rate cases.

Some ideas I had while thinking about this:

- perhaps the most fundemental decision we have to make is how do
  we compute the vrr state in each case. My first idea was to
  stick to the current way of always computing it as if vrr is enabled,
  but that complicates the state checker needlessly, so I'm actually
  leaning towards always computing the vrr state based on actual
  uapi.vrr_enable knob. So when that knob is disabled we always compute
  vmin=flipline=vmax. We're going to anyway have to repgrogram all those
  registers when toggle VRR anyway.

- intel_vrr_{enable,disable}() should just flip between the fixed and
  variable timings in vmin/flipline/vmax. I think we should just do this
  for all the platforms, regarless of whether we also toggle the VRR_CTL
  enable bit there. This minimizes the differences between the two
  approaches fairly well, and it should also work well with the previous
  idea of computing the vrr state based on uapi.vrr_enable. I'm still
  a bit uneasy wrt. repgramming the timings on the fly since none of
  the registers are double buffered. So not entirely sure if we need
  to spend some brain cells on coming up with some kind of safe order
  of writing the registers or not.

- guardbad/pipeline full probably can't be reprogrammed on the fly,
  so we need to make sure it satisfies both the fixed and variable
  timings. I think we should probably just always set vmin=crtc_vtotal
  instead of the using the current refresh rate based approach. That
  way we never need to change anything to do with the guardband.

- I was initially thinking we chould jsue the PUSH_EN bit to
  differentiate between variable and fixed timings, but at least tgl
  and adl refuse to play ball and the display just blanks out if you
  attempt to use the VRR timing generator without enabling push.
  So probably we'll just need make the distinction based on
  flipline==vmax.

- cmrr I've not really though about. It'll still involve frobbing the
  VRR_CTL and whatnot (which I think might be double buffered unlike
  all the other VRR registers). So not sure how to make sure the changes
  beween the modes are done safely. I think easiest to just never use
  cmrr for now, and we can figure it out later.

So maybe something along the lines of:
1) do the vmin==crtc_vtotal change
2) neuter cmrr
2) change the state computation and 
   add vmin/vmax/flipline reprogramming to vrr_{enable,disable}()
   (need to make sure we can still do the fastset vrr toggle)
3) add the vrr enable/disable steps to the modeset sequence when
   we want to always use the vrr timing generator

-- 
Ville Syrjälä
Intel
