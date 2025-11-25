Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 98645C86354
	for <lists+intel-gfx@lfdr.de>; Tue, 25 Nov 2025 18:30:55 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 26BC810E582;
	Tue, 25 Nov 2025 17:30:54 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="Bcs2h2Uc";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.11])
 by gabe.freedesktop.org (Postfix) with ESMTPS id B591110E582;
 Tue, 25 Nov 2025 17:30:52 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1764091853; x=1795627853;
 h=date:from:to:cc:subject:message-id:references:
 mime-version:content-transfer-encoding:in-reply-to;
 bh=O6Ts/eXcnu1k52sWSJjEC1xQvx8A5Gb4+RUjIHyOiLg=;
 b=Bcs2h2UcLgmf1teDfAX6S7JZ/OZrPszZ77YqQeRzdl7jH8/P0+QAVGaP
 WNXLvlecAviUswxaX/9256WBWZAXVMowBHUI8YWa0xAnHUegbzRPjr5gV
 +/f31excYymvbKrTBetqQXt1Ekrtq6nqaH5NdUA00UnpMmco9hqjFQT+r
 amCXqoBcsO019M6N4+/efuKLVxJBmhV1bcmueuxynuQDdhvdRZEdC+Qb2
 6SCNBpsTBR2AaM8GahW7yk9B/feEmIhX06qK+t41BLopxtM5GSYEcdCGd
 hSPInrDSi/8PZJqQje2v7sba/CmZLoq2c6YS+1/23QrBaEygxFkQZULBZ w==;
X-CSE-ConnectionGUID: aoiIggV/T8+bKpfzcpwkgg==
X-CSE-MsgGUID: ypuWrwN/QK+ITY5KmQ+lSQ==
X-IronPort-AV: E=McAfee;i="6800,10657,11624"; a="76742836"
X-IronPort-AV: E=Sophos;i="6.20,226,1758610800"; d="scan'208";a="76742836"
Received: from fmviesa001.fm.intel.com ([10.60.135.141])
 by fmvoesa105.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 25 Nov 2025 09:30:53 -0800
X-CSE-ConnectionGUID: bq+yzOP+RSm1sT70HQhPuw==
X-CSE-MsgGUID: TUAMaa6iQEeDll4qLZisDQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.20,226,1758610800"; d="scan'208";a="223663525"
Received: from bkammerd-mobl.amr.corp.intel.com (HELO localhost)
 ([10.124.222.230])
 by smtpauth.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 25 Nov 2025 09:30:50 -0800
Date: Tue, 25 Nov 2025 19:30:48 +0200
From: Ville =?iso-8859-1?Q?Syrj=E4l=E4?= <ville.syrjala@linux.intel.com>
To: Jani Nikula <jani.nikula@intel.com>
Cc: intel-gfx@lists.freedesktop.org, intel-xe@lists.freedesktop.org,
 Lucas De Marchi <lucas.demarchi@intel.com>,
 Rodrigo Vivi <rodrigo.vivi@intel.com>
Subject: Re: [RFC] drm/i915: move i915 specific display adaptation files to
 display-adapt
Message-ID: <aSXnyB8JjEY7qelM@intel.com>
References: <20251015160140.2296120-1-jani.nikula@intel.com>
 <929e694adba1e3942c685826906bd8123a1696d3@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=iso-8859-1
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <929e694adba1e3942c685826906bd8123a1696d3@intel.com>
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

On Tue, Nov 25, 2025 at 04:01:11PM +0200, Jani Nikula wrote:
> On Wed, 15 Oct 2025, Jani Nikula <jani.nikula@intel.com> wrote:
> > The display/ subdirectory currently contains files that are about i915
> > core driver adaptation to display rather than generic display
> > implementation. Move them to a new i915 subdirectory display-adapt/.
> >
> > In the xe driver, all of its display/ is basically xe core adaptation to
> > display. It's just that i915 display/ contains the actual display
> > implementation for both. Ideally, we'd have the shared display code
> > somewhere else, and the adaptation in i915 would be under display/, but
> > we're not quite ready for that kind of churn yet. So let's just call it
> > display-adapt for now.
> >
> > xe basically has equivalent files to the ones that are being moved,
> > apart from intel_dpt.c, for which the implementation is quite different.
> >
> > Cc: Lucas De Marchi <lucas.demarchi@intel.com>
> > Cc: Rodrigo Vivi <rodrigo.vivi@intel.com>
> > Cc: Ville Syrjälä <ville.syrjala@linux.intel.com>
> > Signed-off-by: Jani Nikula <jani.nikula@intel.com>
> > ---
> >  drivers/gpu/drm/i915/Makefile                 | 23 +++++++++++--------
> >  .../{display => display-adapt}/intel_bo.c     |  3 ++-
> >  .../intel_display_rpm.c                       |  5 ++--
> >  .../{display => display-adapt}/intel_dpt.c    | 11 +++++----
> >  .../intel_dsb_buffer.c                        |  5 ++--
> >  .../{display => display-adapt}/intel_fb_bo.c  |  9 ++++----
> >  .../{display => display-adapt}/intel_fb_pin.c | 14 +++++------
> >  .../intel_fbdev_fb.c                          |  5 +++-
> >  .../intel_hdcp_gsc.c                          |  2 +-
> >  .../{display => display-adapt}/intel_panic.c  |  6 ++---
> >  .../intel_plane_initial.c                     | 17 +++++++-------
> >  11 files changed, 56 insertions(+), 44 deletions(-)
> >  rename drivers/gpu/drm/i915/{display => display-adapt}/intel_bo.c (98%)
> >  rename drivers/gpu/drm/i915/{display => display-adapt}/intel_display_rpm.c (95%)
> >  rename drivers/gpu/drm/i915/{display => display-adapt}/intel_dpt.c (97%)
> >  rename drivers/gpu/drm/i915/{display => display-adapt}/intel_dsb_buffer.c (96%)
> >  rename drivers/gpu/drm/i915/{display => display-adapt}/intel_fb_bo.c (94%)
> >  rename drivers/gpu/drm/i915/{display => display-adapt}/intel_fb_pin.c (97%)
> >  rename drivers/gpu/drm/i915/{display => display-adapt}/intel_fbdev_fb.c (94%)
> >  rename drivers/gpu/drm/i915/{display => display-adapt}/intel_hdcp_gsc.c (99%)
> >  rename drivers/gpu/drm/i915/{display => display-adapt}/intel_panic.c (84%)
> >  rename drivers/gpu/drm/i915/{display => display-adapt}/intel_plane_initial.c (97%)
> 
> I've been postponing the series pending other refactoring.
> 
> Anyway, Ville, are you okay with moving intel_dpt.c to i915? Doesn't
> that reflect the reality with i915 and xe implementations?

Yeah. Seems fine.

Reviewed-by: Ville Syrjälä <ville.syrjala@linux.intel.com>

-- 
Ville Syrjälä
Intel
