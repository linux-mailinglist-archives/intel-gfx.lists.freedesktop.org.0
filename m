Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 32F35881257
	for <lists+intel-gfx@lfdr.de>; Wed, 20 Mar 2024 14:31:35 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id A183110FB48;
	Wed, 20 Mar 2024 13:31:33 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="l5uBtrLG";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.12])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 92E2B10FB48
 for <intel-gfx@lists.freedesktop.org>; Wed, 20 Mar 2024 13:31:31 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1710941491; x=1742477491;
 h=date:from:to:cc:subject:message-id:references:
 mime-version:content-transfer-encoding:in-reply-to;
 bh=gA4BilEVl/+EnDlsKJx1dvLdyVrB86CTZzbiPYb0c0k=;
 b=l5uBtrLGDyqwKEWXE4RDD7GTWyagVqUkzCQzuGDEBnYBE1epbTNEMBnW
 ugzZBlQykPpytYNhdcu7MsGYCuVLNCtZ9DyziF/mbFOy9o53zjaKS+CAN
 r8a67qwVZ0Qc4IeAztSuaVDlrB0DYb/gl3fkTV1BHsXGquDoPXZRzftkt
 KikuAnWSLywg35DLOvKmvcjXfRReDDHpkLIEc5OjXUJoNMRKtxriwKjFa
 i/M18HvzIs06DMiXvV36p3u/hIME3UMezWyHn5UBjbG2hEGlPZw0asqYF
 3aKJBEiO4y5WyEPSCDAOybAeruAbSxbyEUGAurjFAaDDZKfAZMbi308AC w==;
X-IronPort-AV: E=McAfee;i="6600,9927,11018"; a="9633915"
X-IronPort-AV: E=Sophos;i="6.07,140,1708416000"; 
   d="scan'208";a="9633915"
Received: from orsmga001.jf.intel.com ([10.7.209.18])
 by fmvoesa106.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 20 Mar 2024 06:31:31 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,11018"; a="827782559"
X-IronPort-AV: E=Sophos;i="6.07,140,1708416000"; d="scan'208";a="827782559"
Received: from stinkpipe.fi.intel.com (HELO stinkbox) ([10.237.72.74])
 by orsmga001.jf.intel.com with SMTP; 20 Mar 2024 06:31:28 -0700
Received: by stinkbox (sSMTP sendmail emulation);
 Wed, 20 Mar 2024 15:31:27 +0200
Date: Wed, 20 Mar 2024 15:31:27 +0200
From: Ville =?iso-8859-1?Q?Syrj=E4l=E4?= <ville.syrjala@linux.intel.com>
To: Julia Lawall <julia.lawall@inria.fr>
Cc: cocci@systeme.lip6.fr, Jani Nikula <jani.nikula@linux.intel.com>,
 intel-gfx@lists.freedesktop.org
Subject: Re: Weirdness in parsing cpp macros
Message-ID: <ZfrlLw3W00-cnH1U@intel.com>
References: <ZfrYc_rKGETrJsE4@intel.com>
 <c22ade0-6b91-3386-a32d-19bcb8cc3d7@inria.fr>
MIME-Version: 1.0
Content-Type: text/plain; charset=iso-8859-1
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <c22ade0-6b91-3386-a32d-19bcb8cc3d7@inria.fr>
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

On Wed, Mar 20, 2024 at 02:24:08PM +0100, Julia Lawall wrote:
> 
> 
> On Wed, 20 Mar 2024, Ville Syrjälä wrote:
> 
> > Hi Julia et al,
> >
> > In Linux drm/i915 driver (drivers/gpu/drm/i915/display/intel_pps.[ch])
> > we have a magic macro like this:
> >
> > #define with_intel_pps_lock(dp, wf) \
> 
> Did you try declaring:
> 
> iterator name with_intel_pps_lock;
> 
> up with the metavariables?

Nope, didn't know about that one.

Seems to work fine with that. Thanks.

> 
> julia
> 
> 
> >         for ((wf) = intel_pps_lock(dp); (wf); (wf) = intel_pps_unlock((dp), (wf)))
> >
> >
> > which we can then use like so:
> > ...
> > with_intel_pps_lock(intel_dp, wakeref)
> > 	wait_panel_power_cycle(intel_dp);
> > ...
> >
> >
> > If I try to modify this code with eg.
> >
> > @@
> > @@
> > - wait_panel_power_cycle
> > + _wait_panel_power_cycle
> >
> > spatch fails to parse the macro and won't do the changes here.
> >
> >
> > While experimenting with this I discovered that
> > I can make it work by:
> > - moving the macro definition into intel_pps.c file from intel_pps.h
> > - renaming the macro to contain the substring "for" (doesn't matter
> >   where in the macro name the "for" appears)
> >
> > What on earth is going on here?
> >
> > --
> > Ville Syrjälä
> > Intel
> >


-- 
Ville Syrjälä
Intel
