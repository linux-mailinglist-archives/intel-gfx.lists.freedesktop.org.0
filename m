Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id C879270DD2B
	for <lists+intel-gfx@lfdr.de>; Tue, 23 May 2023 15:07:29 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id C591310E030;
	Tue, 23 May 2023 13:07:24 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga14.intel.com (mga14.intel.com [192.55.52.115])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 08E2A10E030;
 Tue, 23 May 2023 13:07:23 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1684847244; x=1716383244;
 h=from:to:cc:subject:in-reply-to:references:date:
 message-id:mime-version;
 bh=pjhJABw4NPeqWAE0kx7Dc0GnJ+vs++85R1+DDftQIBw=;
 b=npRvaX4ZMJMO1Zzl/yJpEhjd9KsZO4Q8W4u42rcSNFnbc1WUA8eVwJB6
 hF9AFHtOZ66K5Xov7eeLO3QDcDgG4/ARaVEO6kwlM7nFV2Hu3pwZnBaDw
 AToNnhjQX7KWKbPsX1KZ7ckXsitXlROMr8YS11vzOYnb1KPSSZaY/RCXe
 Y7hnTuglRBoPg03JaGjYyN8aC2HrP9t4WtGYYi4AxNTo/fKARaXYwzTU3
 ooBTXfC/EQ3y8fvtpeU5eYuB4dtOcC/zjUKskAr3daZxdTTnQo3szWvME
 Suf+vmZeEQxULsaGrrf+mTiJi98H1EI/FITjgLlCgZTn57/iOyjHbcQHR Q==;
X-IronPort-AV: E=McAfee;i="6600,9927,10719"; a="353255477"
X-IronPort-AV: E=Sophos;i="6.00,186,1681196400"; d="scan'208";a="353255477"
Received: from orsmga007.jf.intel.com ([10.7.209.58])
 by fmsmga103.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 23 May 2023 06:07:22 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10719"; a="698043555"
X-IronPort-AV: E=Sophos;i="6.00,186,1681196400"; d="scan'208";a="698043555"
Received: from chauvina-mobl.ger.corp.intel.com (HELO localhost)
 ([10.252.53.70])
 by orsmga007-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 23 May 2023 06:07:20 -0700
From: Jani Nikula <jani.nikula@intel.com>
To: Matt Roper <matthew.d.roper@intel.com>, intel-gfx@lists.freedesktop.org
In-Reply-To: <20230522202314.3939499-1-matthew.d.roper@intel.com>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
References: <20230522202314.3939499-1-matthew.d.roper@intel.com>
Date: Tue, 23 May 2023 16:07:17 +0300
Message-ID: <87a5xvkxh6.fsf@intel.com>
MIME-Version: 1.0
Content-Type: text/plain
Subject: Re: [Intel-gfx] [PATCH v2 0/6] i915: Move display
 identification/probing under display/
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
Cc: Lucas De Marchi <lucas.demarchi@intel.com>,
 Matt Roper <matthew.d.roper@intel.com>, intel-xe@lists.freedesktop.org,
 Andrzej Hajda <andrzej.hajda@intel.com>
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Mon, 22 May 2023, Matt Roper <matthew.d.roper@intel.com> wrote:
> Since i915's display code will soon be shared by two DRM drivers (i915
> and Xe), it makes sense for the display code itself to be responsible
> for recognizing the platform it's running on rather than relying on the
> making the top-level DRM driver handle this.  This also becomes more
> important for all platforms MTL and beyond where we're not really
> supposed to identify platform behavior by PCI device ID anymore, but
> rather by the hardware IP version reported by the device through the
> GMD_ID register.
>
> This series creates a more well-defined split between display and
> non-display deviceinfo/runtimeinfo and then moves the definition of the
> display-specific feature flags under the display/ code.  Finally, it
> switches MTL (and all future platforms), to select the display feature
> flags based on the hardware's GMD_ID identification.

My primary gripe with this series is that I didn't think of it myself.

I was always hung up on making device info (i915->__info) itself a
pointer, and got stuck there.

Nice job, and many thanks!

I see that there are already a bunch of reviews, so I didn't dig into
all the details. I left some nitpicky comments, but nothing that can't
be fixed later.

Acked-by: Jani Nikula <jani.nikula@intel.com>


BR,
Jani.

>
> v2:
>  - Move DISPLAY_INFO() definition one patch earlier.  (Andrzej)
>  - Rename display's runtime default structure to __runtime_defaults to
>    make it more clear what the purpose is.  (Andrzej)
>  - Simplify copy of runtime defaults to per-device runtime data.
>    (Andrzej)
>  - Fix uninitialized ptr use on error path during device probe. (lkp)
>  - Add extra patch moving display-specific feature test macros to
>    display/intel_display_device.h
>
> Cc: Jani Nikula <jani.nikula@intel.com>
> Cc: Lucas De Marchi <lucas.demarchi@intel.com>
> Cc: Andrzej Hajda <andrzej.hajda@intel.com>
>
> Matt Roper (5):
>   drm/i915/display: Move display device info to header under display/
>   drm/i915: Convert INTEL_INFO()->display to a pointer
>   drm/i915/display: Move display runtime info to display structure
>   drm/i915/display: Make display responsible for probing its own IP
>   drm/i915/display: Handle GMD_ID identification in display code
>   drm/i915/display: Move feature test macros to intel_display_device.h
>
>  drivers/gpu/drm/i915/Makefile                 |   2 +
>  drivers/gpu/drm/i915/display/intel_color.c    |  31 +-
>  drivers/gpu/drm/i915/display/intel_crtc.c     |   2 +-
>  drivers/gpu/drm/i915/display/intel_cursor.c   |   4 +-
>  drivers/gpu/drm/i915/display/intel_display.c  |   2 +-
>  drivers/gpu/drm/i915/display/intel_display.h  |  10 +-
>  .../drm/i915/display/intel_display_device.c   | 764 ++++++++++++++++++
>  .../drm/i915/display/intel_display_device.h   | 129 +++
>  .../drm/i915/display/intel_display_power.c    |   6 +-
>  .../drm/i915/display/intel_display_reg_defs.h |  14 +-
>  drivers/gpu/drm/i915/display/intel_fb_pin.c   |   2 +-
>  drivers/gpu/drm/i915/display/intel_fbc.c      |   6 +-
>  drivers/gpu/drm/i915/display/intel_hdcp.c     |   2 +-
>  drivers/gpu/drm/i915/display/intel_hti.c      |   2 +-
>  .../drm/i915/display/skl_universal_plane.c    |   2 +-
>  drivers/gpu/drm/i915/display/skl_watermark.c  |   8 +-
>  drivers/gpu/drm/i915/i915_driver.c            |  17 +-
>  drivers/gpu/drm/i915/i915_drv.h               |  65 +-
>  drivers/gpu/drm/i915/i915_pci.c               | 382 +--------
>  drivers/gpu/drm/i915/i915_reg.h               |  33 -
>  drivers/gpu/drm/i915/intel_device_info.c      | 113 +--
>  drivers/gpu/drm/i915/intel_device_info.h      |  67 +-
>  drivers/gpu/drm/i915/intel_step.c             |   8 +-
>  23 files changed, 1030 insertions(+), 641 deletions(-)
>  create mode 100644 drivers/gpu/drm/i915/display/intel_display_device.c
>  create mode 100644 drivers/gpu/drm/i915/display/intel_display_device.h

-- 
Jani Nikula, Intel Open Source Graphics Center
