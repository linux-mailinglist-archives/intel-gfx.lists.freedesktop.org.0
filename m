Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id D39837A8E07
	for <lists+intel-gfx@lfdr.de>; Wed, 20 Sep 2023 22:56:23 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id E650E10E554;
	Wed, 20 Sep 2023 20:56:18 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [134.134.136.20])
 by gabe.freedesktop.org (Postfix) with ESMTPS id B5D1F10E554
 for <intel-gfx@lists.freedesktop.org>; Wed, 20 Sep 2023 20:56:15 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1695243375; x=1726779375;
 h=date:from:to:cc:subject:message-id:references:
 mime-version:content-transfer-encoding:in-reply-to;
 bh=Lu0Zh1LqJMyS+/2WGLBpxdg/iEwmb1rIEb65jFcwc+Y=;
 b=FrrmWcSlNonZNqCvLvGoRDiIhu425sSKSkSE7aeUKW5BLIqT4pK0VBTK
 eO5BkWHcIcx40QIFDnwHxWLbwztg9BlcYZXR9oApYoCwHIbZul8M4T+oz
 FgEkpiik+uGwWcjmzTm32AkFvF/PVhE06sz0hQ5eKbFNDU5+JGNpSACR5
 vFqlhN9AphKLFCueiTwo7s3GlScEGQt/ZgYgCLF7XHHWM4tOmia3KJQ+z
 +gkm2wsv0cf+n3ljfhR9AhQXwmb+GlRJMKaqe37YSuOD0eDicmRV6fHBE
 HPNNj26CqXzGumx+5RaZYXNlYapKOMQmt92InsV2f8HDQ81nPbVsKH7a6 g==;
X-IronPort-AV: E=McAfee;i="6600,9927,10839"; a="370653720"
X-IronPort-AV: E=Sophos;i="6.03,162,1694761200"; d="scan'208";a="370653720"
Received: from orsmga001.jf.intel.com ([10.7.209.18])
 by orsmga101.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 20 Sep 2023 13:56:05 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10839"; a="781863077"
X-IronPort-AV: E=Sophos;i="6.03,162,1694761200"; d="scan'208";a="781863077"
Received: from stinkpipe.fi.intel.com (HELO stinkbox) ([10.237.72.153])
 by orsmga001.jf.intel.com with SMTP; 20 Sep 2023 13:56:02 -0700
Received: by stinkbox (sSMTP sendmail emulation);
 Wed, 20 Sep 2023 23:56:01 +0300
Date: Wed, 20 Sep 2023 23:56:01 +0300
From: Ville =?iso-8859-1?Q?Syrj=E4l=E4?= <ville.syrjala@linux.intel.com>
To: Manasi Navare <navaremanasi@chromium.org>
Message-ID: <ZQtcYUN7DPXihbvb@intel.com>
References: <20230901130440.2085-1-ville.syrjala@linux.intel.com>
 <CAE72mNmgzHnMtwNR0ggO+a=wWvZf-M_AAr_BYc4js-3-sdpc8A@mail.gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <CAE72mNmgzHnMtwNR0ggO+a=wWvZf-M_AAr_BYc4js-3-sdpc8A@mail.gmail.com>
X-Patchwork-Hint: comment
Subject: Re: [Intel-gfx] [PATCH 00/12] drm/i915: VRR, LRR, and M/N stuff
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
Cc: intel-gfx@lists.freedesktop.org
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Wed, Sep 20, 2023 at 11:54:41AM -0700, Manasi Navare wrote:
> Hi Ville,
> 
> After the comments have been addressed, I have completed reviewing the
> patches. Is there anything
> else blocking this from getting merged? Could we get this merged if
> everything looks good?

Series pushed to drm-intel-next, Thanks for the reviews everyone.

> 
> Regards
> Manasi
> 
> On Fri, Sep 1, 2023 at 6:04 AM Ville Syrjala
> <ville.syrjala@linux.intel.com> wrote:
> >
> > From: Ville Syrjälä <ville.syrjala@linux.intel.com>
> >
> > Attempt to make VRR, LRR, and M/N updates coexist nicely,
> > allowing fastsets whenever feasible.
> >
> > Lightly smoke tested on my adl.
> >
> > Cc: Manasi Navare <navaremanasi@chromium.org>
> >
> > Ville Syrjälä (12):
> >   drm/i915: Move psr unlock out from the pipe update critical section
> >   drm/i915: Change intel_pipe_update_{start,end}() calling convention
> >   drm/i915: Extract intel_crtc_vblank_evade_scanlines()
> >   drm/i915: Enable VRR later during fastsets
> >   drm/i915: Adjust seamless_m_n flag behaviour
> >   drm/i915: Optimize out redundant M/N updates
> >   drm/i915: Relocate is_in_vrr_range()
> >   drm/i915: Validate that the timings are within the VRR range
> >   drm/i915: Disable VRR during seamless M/N changes
> >   drm/i915: Update VRR parameters in fastset
> >   drm/i915: Assert that VRR is off during vblank evasion if necessary
> >   drm/i915: Implement transcoder LRR for TGL+
> >
> >  drivers/gpu/drm/i915/display/intel_atomic.c   |   2 +
> >  drivers/gpu/drm/i915/display/intel_crtc.c     | 110 ++++++++------
> >  drivers/gpu/drm/i915/display/intel_crtc.h     |   6 +-
> >  drivers/gpu/drm/i915/display/intel_display.c  | 135 ++++++++++++++----
> >  .../drm/i915/display/intel_display_device.h   |   1 +
> >  .../drm/i915/display/intel_display_types.h    |   5 +-
> >  drivers/gpu/drm/i915/display/intel_dp.c       |   2 +-
> >  drivers/gpu/drm/i915/display/intel_panel.c    |  17 +--
> >  drivers/gpu/drm/i915/display/intel_vrr.c      |  18 ++-
> >  drivers/gpu/drm/i915/display/intel_vrr.h      |   1 +
> >  drivers/gpu/drm/i915/i915_reg.h               |   1 +
> >  11 files changed, 212 insertions(+), 86 deletions(-)
> >
> > --
> > 2.41.0
> >

-- 
Ville Syrjälä
Intel
