Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id D21A8A59B25
	for <lists+intel-gfx@lfdr.de>; Mon, 10 Mar 2025 17:37:22 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id D16F910E418;
	Mon, 10 Mar 2025 16:37:20 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="ilJOqpRq";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.15])
 by gabe.freedesktop.org (Postfix) with ESMTPS id D48F610E418;
 Mon, 10 Mar 2025 16:37:19 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1741624640; x=1773160640;
 h=date:from:to:cc:subject:message-id:references:
 mime-version:content-transfer-encoding:in-reply-to;
 bh=0Oif3LeK+3ZMo3wWuqn0d7iovtvCxPfLouFcjMhfJG0=;
 b=ilJOqpRqAWXyGhCv5nExzFhR6owQQKS4A3n68CESQY7Cknqh254gFVXF
 FBe7qZQCwmhH75N6s1tfPKLzjFCr4WX8FVQifv2nUGohbv47i+sJjgV3U
 GdFGuNVQ1q03h3xTauwrYqVKfEJFhGzXqJmbtylYYRvO4DbLpO1Ho3CNv
 jX4K7LO/Ujpk1IfhcmEtoTpWKJXikW7sD0w3HTwi/bN6soqAohAAUmXTd
 mGOmdhuH7xn42WeH1+BASWtaJsd8DM0Xm7pdkpPB0jUkNgpwb9r6uRyr0
 MCys2zmdJVtvJUHrEtquig8c+hgXbLd16htuLL8XLTNWtDhaEo47b02Bv A==;
X-CSE-ConnectionGUID: /Tb54euWR86sMlNlbfnrUg==
X-CSE-MsgGUID: 75fS6TV0TCaxmkPtkIsPrg==
X-IronPort-AV: E=McAfee;i="6700,10204,11369"; a="42762549"
X-IronPort-AV: E=Sophos;i="6.14,236,1736841600"; d="scan'208";a="42762549"
Received: from orviesa005.jf.intel.com ([10.64.159.145])
 by fmvoesa109.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 10 Mar 2025 09:37:19 -0700
X-CSE-ConnectionGUID: GV9jDnvuRIqRFJap3dU8kg==
X-CSE-MsgGUID: 22I8h3MqQLeETxY3AqUZog==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.14,236,1736841600"; d="scan'208";a="125267999"
Received: from stinkpipe.fi.intel.com (HELO stinkbox) ([10.237.72.74])
 by orviesa005.jf.intel.com with SMTP; 10 Mar 2025 09:37:17 -0700
Received: by stinkbox (sSMTP sendmail emulation);
 Mon, 10 Mar 2025 18:37:15 +0200
Date: Mon, 10 Mar 2025 18:37:15 +0200
From: Ville =?iso-8859-1?Q?Syrj=E4l=E4?= <ville.syrjala@linux.intel.com>
To: Jani Nikula <jani.nikula@linux.intel.com>
Cc: Gustavo Sousa <gustavo.sousa@intel.com>,
 intel-gfx@lists.freedesktop.org, intel-xe@lists.freedesktop.org,
 Matt Roper <matthew.d.roper@intel.com>
Subject: Re: [PATCH v3 0/3] drm/i915/xe3lpd: Update bandwidth parameters
Message-ID: <Z88VOxMunnhE_koL@intel.com>
References: <20250307-xe3lpd-bandwidth-update-v3-0-58bbe81f65bf@intel.com>
 <87ldtdghbo.fsf@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=iso-8859-1
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <87ldtdghbo.fsf@intel.com>
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

On Mon, Mar 10, 2025 at 03:12:43PM +0200, Jani Nikula wrote:
> On Fri, 07 Mar 2025, Gustavo Sousa <gustavo.sousa@intel.com> wrote:
> > Bandwidth parameters for Xe3_LPD have been updated with respect to
> > previous display releases. Encode them into xe3lpd_sa_info and use that
> > new struct.
> >
> > Since we are touching intel_bw.c, also take the opportunity convert it
> > to intel_display.
> 
> In case you didn't notice already, this series and [1] from Ville will
> conflict badly with each other. Please collaborate to sort out which
> series to merge first.

I can rebase my stuff, so no worries.

> 
> Thanks,
> Jani.
> 
> 
> [1] https://lore.kernel.org/r/20250307180139.15744-1-ville.syrjala@linux.intel.com
> 
> 
> >
> > Changes in v2:
> >   - Fix typo in patch #2.
> >
> > Changes in v3:
> > - Squash patches #1 and #2 into a single one and modify it to convert
> >   intel_bw.c internally to intel_display (new patch subject is
> >   "drm/i915/display: Convert intel_bw.c internally to intel_display").
> > - Add a new patch #2 to convert intel_bw.c externally to intel_display.
> > - Link to v2: https://lore.kernel.org/r/20250217153550.43909-1-gustavo.sousa@intel.com
> >
> > ---
> > Gustavo Sousa (3):
> >       drm/i915/display: Convert intel_bw.c internally to intel_display
> >       drm/i915/display: Convert intel_bw.c externally to intel_display
> >       drm/i915/xe3lpd: Update bandwidth parameters
> >
> >  drivers/gpu/drm/i915/display/intel_bw.c            | 440 +++++++++++----------
> >  drivers/gpu/drm/i915/display/intel_bw.h            |   9 +-
> >  drivers/gpu/drm/i915/display/intel_cdclk.c         |   3 +-
> >  .../gpu/drm/i915/display/intel_display_driver.c    |   2 +-
> >  drivers/gpu/drm/i915/display/skl_watermark.c       |  10 +-
> >  drivers/gpu/drm/i915/i915_driver.c                 |   2 +-
> >  drivers/gpu/drm/xe/display/xe_display.c            |   2 +-
> >  7 files changed, 245 insertions(+), 223 deletions(-)
> > ---
> > base-commit: f811577f424491a57b1e8669bde62998227d6907
> > change-id: 20250228-xe3lpd-bandwidth-update-f011599c0c3e
> >
> > Best regards,
> 
> -- 
> Jani Nikula, Intel

-- 
Ville Syrjälä
Intel
