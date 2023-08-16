Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id BF1E877DCFF
	for <lists+intel-gfx@lfdr.de>; Wed, 16 Aug 2023 11:11:27 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 98FE510E30C;
	Wed, 16 Aug 2023 09:11:25 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [134.134.136.24])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 6DB2C10E30C
 for <intel-gfx@lists.freedesktop.org>; Wed, 16 Aug 2023 09:11:24 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1692177084; x=1723713084;
 h=from:to:cc:subject:in-reply-to:references:date:
 message-id:mime-version;
 bh=7uNIS/33dsxRxo1smJPsCXP2Xsvj2a1QqVvVNFH/aW0=;
 b=Py5Laeci9hMj8K+WbDF494C3eyLysjm9uBYS916VrmjZx0uz8HLCNYK6
 5KanYQTqIu4tr6XL/gLXLaLzfEPQibNA9VJWCDvyaU+biBlgpaQcQ80Kw
 PzuV5U+yCz5CxvZWwor6pC2oKnkAXwWKmgEP4IDSBVy/sIYaUEstkmTjR
 CiZaYALgcAxZ/8d2eRbwXEIrg/8cL11TqMqDXf/HcbxIL+GrAscRgj8BB
 qCRCovwCl2dhz6KoZC4usRSpeW+GQgn02Fo0CAAprU3ynkB+2JkbHvzvZ
 DcUCHXhL5BnF5ZE2bKGsX9Xifk+XFzHT1HGl4vfX+ZSLqj4KDPw4tkqOT Q==;
X-IronPort-AV: E=McAfee;i="6600,9927,10803"; a="375253803"
X-IronPort-AV: E=Sophos;i="6.01,176,1684825200"; d="scan'208";a="375253803"
Received: from orsmga003.jf.intel.com ([10.7.209.27])
 by orsmga102.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 16 Aug 2023 02:11:23 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10803"; a="683989312"
X-IronPort-AV: E=Sophos;i="6.01,176,1684825200"; d="scan'208";a="683989312"
Received: from golubevv-mobl2.ger.corp.intel.com (HELO localhost)
 ([10.252.52.134])
 by orsmga003-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 16 Aug 2023 02:11:22 -0700
From: Jani Nikula <jani.nikula@linux.intel.com>
To: Matt Roper <matthew.d.roper@intel.com>, intel-gfx@lists.freedesktop.org
In-Reply-To: <20230815173611.142687-6-matthew.d.roper@intel.com>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
References: <20230815173611.142687-6-matthew.d.roper@intel.com>
Date: Wed, 16 Aug 2023 12:11:19 +0300
Message-ID: <87v8df9wso.fsf@intel.com>
MIME-Version: 1.0
Content-Type: text/plain
Subject: Re: [Intel-gfx] [PATCH 0/4] Drop support for pre-production DG2
 hardware
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
Cc: matthew.d.roper@intel.com
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Tue, 15 Aug 2023, Matt Roper <matthew.d.roper@intel.com> wrote:
> We generally only keep support for pre-production steppings and
> workarounds around in the driver until the next major platform is
> implemented.  Now that MTL is in good shape in i915 (and subsequent
> platforms like LNL are being implemented solely on the Xe driver) it's
> time to drop the DG2 pre-production hardware support.
>
> DG2 production hardware always has display stepping C0 or later.  On the
> GT side, production hardware starts with C0 (for DG2-G10), B1 (for
> DG2-G11), and A1 (for DG2-G12).  This means we can drop quite a few
> pre-production workarounds, and simplify the handling of several others.

Did not review, but in general

Acked-by: Jani Nikula <jani.nikula@intel.com>


>
>
> Matt Roper (4):
>   drm/i915/dg2: Recognize pre-production hardware
>   drm/i915/dg2: Drop pre-production display workarounds
>   drm/i915/dg2: Drop pre-production GT workarounds
>   drm/i915: Tidy workaround definitions
>
>  drivers/gpu/drm/i915/display/intel_display.c  |   2 +-
>  .../drm/i915/display/skl_universal_plane.c    |   4 -
>  drivers/gpu/drm/i915/gt/intel_lrc.c           |  34 +-
>  drivers/gpu/drm/i915/gt/intel_mocs.c          |  21 +-
>  drivers/gpu/drm/i915/gt/intel_rc6.c           |   6 +-
>  drivers/gpu/drm/i915/gt/intel_workarounds.c   | 301 +++---------------
>  drivers/gpu/drm/i915/gt/uc/intel_guc.c        |  20 +-
>  drivers/gpu/drm/i915/i915_driver.c            |   3 +
>  drivers/gpu/drm/i915/i915_drv.h               |  23 --
>  drivers/gpu/drm/i915/i915_perf.c              |  20 --
>  drivers/gpu/drm/i915/intel_clock_gating.c     |   8 -
>  11 files changed, 66 insertions(+), 376 deletions(-)

-- 
Jani Nikula, Intel Open Source Graphics Center
