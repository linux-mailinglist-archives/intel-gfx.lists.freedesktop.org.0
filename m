Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 5A6944BFC70
	for <lists+intel-gfx@lfdr.de>; Tue, 22 Feb 2022 16:24:57 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 8217210E469;
	Tue, 22 Feb 2022 15:24:55 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga04.intel.com (mga04.intel.com [192.55.52.120])
 by gabe.freedesktop.org (Postfix) with ESMTPS id CF3F810E3E9
 for <intel-gfx@lists.freedesktop.org>; Tue, 22 Feb 2022 15:24:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1645543493; x=1677079493;
 h=date:from:to:cc:subject:message-id:references:
 mime-version:content-transfer-encoding:in-reply-to;
 bh=aqiOg08Zj2fJ/E9dumIL+x/xtCqU5oJ3NvvbIlMZnJI=;
 b=eoxbk6BLxYgS7UP/DPQLGid+xhZ2KkJPZbOiXLYSMddulzIJQ8AMYh3i
 fqCKV3UShbI6TxyAhjFzfu2rwnLn/qO0LT+oVn4X4YMw2j3an1nfAUKSr
 ejoONI+DtAc1ofZ2KogJbn5GX57YD1V01g0J/e7pWO1ChrNwIZgTKqXFr
 dcfbLXxIJSh+LXMTvfs3YJB6VT0y424/ZrUWYA039GMINh2mWuw9J9tsj
 QQcM/sIkQg4nHLCefaVFcrFky+BbPzwFWaJI7xB7/qhLNRNw9msnmdmQD
 Hn2HJ0T4EzIJxT7Hzz9A6+aUnDxTACAPCCRCbTYu/iV9sNxfA8scZsLaW g==;
X-IronPort-AV: E=McAfee;i="6200,9189,10265"; a="250553211"
X-IronPort-AV: E=Sophos;i="5.88,387,1635231600"; d="scan'208";a="250553211"
Received: from orsmga001.jf.intel.com ([10.7.209.18])
 by fmsmga104.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 22 Feb 2022 07:24:31 -0800
X-IronPort-AV: E=Sophos;i="5.88,387,1635231600"; d="scan'208";a="573468741"
Received: from ideak-desk.fi.intel.com ([10.237.68.141])
 by orsmga001-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 22 Feb 2022 07:24:30 -0800
Date: Tue, 22 Feb 2022 17:24:26 +0200
From: Imre Deak <imre.deak@intel.com>
To: "Hogander, Jouni" <jouni.hogander@intel.com>
Message-ID: <20220222152426.GB890201@ideak-desk.fi.intel.com>
References: <20220208113656.179823-1-imre.deak@intel.com>
 <ef2aa7b42d176699c9a19aa3bf5ce93ff14f4d3a.camel@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=iso-8859-1
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <ef2aa7b42d176699c9a19aa3bf5ce93ff14f4d3a.camel@intel.com>
Subject: Re: [Intel-gfx] [PATCH v2 00/26] drm/i915: Refactor the display
 power domain mappings
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
Cc: "Nikula, Jani" <jani.nikula@intel.com>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Thu, Feb 17, 2022 at 01:59:26PM +0200, Hogander, Jouni wrote:
> Reviewed-by: Jouni Högander <jouni.hogander@intel.com>

Thanks.

> for all the patches except. I'm expecting you send patch 09/26 again?

Yes, I decided to resend patches 1-8 in a separate patchset and
resend the remaining ones after the first half is merged.

> On Tue, 2022-02-08 at 13:36 +0200, Imre Deak wrote:
> > This is v2 of [1] addressing the review comments from Jani, moving
> > the
> > power well ops/desc struct accessor functions and implementation of
> > the
> > platform specific power well hooks to a separate file.
> >
> > [1] https://patchwork.freedesktop.org/series/99476/
> >
> > Cc: Jani Nikula <jani.nikula@intel.com>
> >
> > Imre Deak (26):
> >   drm/i915: Fix the VDSC_PW2 power domain enum value
> >   drm/i915: Sanitize open-coded power well enable()/disable() calls
> >   drm/i915: Remove redundant state verification during TypeC AUX
> > power
> >     well disabling
> >   drm/i915: Move i915_power_well_regs struct into i915_power_well_ops
> >   drm/i915: Move power well get/put/enable/disable functions to a new
> >     file
> >   drm/i915: Add function to call a power well's sync_hw() hook
> >   drm/i915: Add functions to get a power well's
> >     state/name/domains/mask/refcount
> >   drm/i915: Move intel_display_power_well_is_enabled() to
> >     intel_display_power_well.c
> >   drm/i915: Move per-platform power well hooks to
> >     intel_display_power_well.c
> >   drm/i915: Unexport the for_each_power_well() macros
> >   drm/i915: Move the power domain->well mappings to
> >     intel_display_power_map.c
> >   drm/i915: Move the dg2 fixed_enable_delay power well param to a
> > common
> >     bitfield
> >   drm/i915: Move the HSW power well flags to a common bitfield
> >   drm/i915: Rename the power domain names to end with pipes/ports
> >   drm/i915: Sanitize the power well names
> >   drm/i915: Convert the power well descriptor domain mask to an array
> > of
> >     domains
> >   drm/i915: Convert the u64 power well domains mask to a bitmap
> >   drm/i915: Simplify power well definitions by adding power well
> >     instances
> >   drm/i915: Allow platforms to share power well descriptors
> >   drm/i915: Simplify the DG1 power well descriptors
> >   drm/i915: Sanitize the ADL-S power well definition
> >   drm/i915: Sanitize the port -> DDI/AUX power domain mapping for
> > each
> >     platform
> >   drm/i915: Remove the aliasing of power domain enum values
> >   drm/i915: Remove the ICL specific TBT power domains
> >   drm/i915: Remove duplicate DDI/AUX power domain mappings
> >   drm/i915: Remove the XELPD specific AUX and DDI power domains
> >
> >  drivers/gpu/drm/i915/Makefile                 |    2 +
> >  drivers/gpu/drm/i915/display/g4x_dp.c         |    3 +-
> >  drivers/gpu/drm/i915/display/g4x_hdmi.c       |    3 +-
> >  drivers/gpu/drm/i915/display/icl_dsi.c        |    8 +-
> >  drivers/gpu/drm/i915/display/intel_ddi.c      |    6 +-
> >  drivers/gpu/drm/i915/display/intel_display.c  |  150 +-
> >  drivers/gpu/drm/i915/display/intel_display.h  |    4 +-
> >  .../drm/i915/display/intel_display_debugfs.c  |    1 +
> >  .../drm/i915/display/intel_display_power.c    | 4842 ++-------------
> > --
> >  .../drm/i915/display/intel_display_power.h    |  154 +-
> >  .../i915/display/intel_display_power_map.c    | 1487 +++++
> >  .../i915/display/intel_display_power_map.h    |   14 +
> >  .../i915/display/intel_display_power_well.c   | 1937 +++++++
> >  .../i915/display/intel_display_power_well.h   |  168 +
> >  drivers/gpu/drm/i915/display/intel_hdcp.c     |    1 +
> >  drivers/gpu/drm/i915/display/intel_tc.c       |    5 +-
> >  16 files changed, 4105 insertions(+), 4680 deletions(-)
> >  create mode 100644
> > drivers/gpu/drm/i915/display/intel_display_power_map.c
> >  create mode 100644
> > drivers/gpu/drm/i915/display/intel_display_power_map.h
> >  create mode 100644
> > drivers/gpu/drm/i915/display/intel_display_power_well.c
> >  create mode 100644
> > drivers/gpu/drm/i915/display/intel_display_power_well.h
> >
> 
> BR,
> 
> Jouni Högander
