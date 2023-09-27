Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 23CDD7B0996
	for <lists+intel-gfx@lfdr.de>; Wed, 27 Sep 2023 18:05:36 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 2278A10E55F;
	Wed, 27 Sep 2023 16:05:34 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [134.134.136.65])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 1321910E55F
 for <intel-gfx@lists.freedesktop.org>; Wed, 27 Sep 2023 16:05:31 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1695830731; x=1727366731;
 h=date:from:to:subject:message-id:references:mime-version:
 content-transfer-encoding:in-reply-to;
 bh=+fWcV/ypK8DbPqm+VGwQAwKY1+AxQaGO1b4Sb/65VBI=;
 b=BSY7rLSLPYPghGmJkOLtAnm9vEhf4HqUt0CfnomQfXvqB4e9VO1V691y
 87IplNrpIgiZmZIvWOl2OGtVPrVhNoTUqJotJMR2OY70gXxzd6HbKwjdh
 tirHMFy3yWJ2nS5vciUvm3hN9lJG5FbO5Y+H4+VirXKGFaA8L05kJ5t3E
 iJIv7jMddiDnY5Zb4WrweoosA5uNt+x1BqgDS7RqtOAejniYtPwqW2Jlx
 QxaVnfbo7rLA5CwhST366T+R7BMpumvYU8I+GUnZAfsKXc0r3l9o1Pm72
 a/5tG4buFxbnPNPZ4J3dfWitddkA/0lGugob0/U7J/1PhiVkRkdCt3O9+ g==;
X-IronPort-AV: E=McAfee;i="6600,9927,10846"; a="385724842"
X-IronPort-AV: E=Sophos;i="6.03,181,1694761200"; d="scan'208";a="385724842"
Received: from orsmga007.jf.intel.com ([10.7.209.58])
 by orsmga103.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 27 Sep 2023 09:05:08 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10846"; a="742763712"
X-IronPort-AV: E=Sophos;i="6.03,181,1694761200"; d="scan'208";a="742763712"
Received: from stinkpipe.fi.intel.com (HELO stinkbox) ([10.237.72.153])
 by orsmga007.jf.intel.com with SMTP; 27 Sep 2023 09:05:06 -0700
Received: by stinkbox (sSMTP sendmail emulation);
 Wed, 27 Sep 2023 19:05:05 +0300
Date: Wed, 27 Sep 2023 19:05:05 +0300
From: Ville =?iso-8859-1?Q?Syrj=E4l=E4?= <ville.syrjala@linux.intel.com>
To: intel-gfx@lists.freedesktop.org
Message-ID: <ZRRSsRyoUiV_jDMG@intel.com>
References: <20230606191504.18099-1-ville.syrjala@linux.intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=iso-8859-1
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <20230606191504.18099-1-ville.syrjala@linux.intel.com>
X-Patchwork-Hint: comment
Subject: Re: [Intel-gfx] [PATCH v2 00/19] drm/i915: Load LUTs with DSB
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

On Tue, Jun 06, 2023 at 10:14:45PM +0300, Ville Syrjala wrote:
> From: Ville Syrjälä <ville.syrjala@linux.intel.com>
> 
> Another attempt at re-enabling DSB based LUT loads.
> 
> The main change from the last attempt is that we now
> use the DSB's DEwake mechanism to combat PkgC latency
> which was causing the LUT to not always load correctly
> (due to the anti-collision logic not working correctly
> for DSB LUT accesses).
> 
> I also got the non-posted writes working correctly 
> which lets us load the legacy LUT without the 
> "write each entry twice" trick I used previously.
> 
> Ville Syrjälä (19):
>   drm/i915: Constify LUT entries in checker
>   drm/i915/dsb: Use non-locked register access
>   drm/i915/dsb: Dump the DSB command buffer when DSB fails
>   drm/i915/dsb: Define more DSB bits
>   drm/i915/dsb: Define the contents of some intstructions bit better
>   drm/i915/dsb: Avoid corrupting the first register write
>   drm/i915/dsb: Don't use indexed writes when byte enables are not all
>     set
>   drm/i915/dsb: Introduce intel_dsb_noop()
>   drm/i915/dsb: Introduce intel_dsb_reg_write_masked()
>   drm/i915/dsb: Add support for non-posted DSB registers writes
>   drm/i915/dsb: Don't use DSB to load the LUTs during full modeset
>   drm/i915/dsb: Load LUTs using the DSB during vblank
>   drm/i915/dsb: Use non-posted register writes for legacy LUT
>   drm/i915/dsb: Evade transcoder undelayed vblank when using DSB
>   drm/i915: Introduce skl_watermark_max_latency()
>   drm/i915: Introudce intel_crtc_scanline_to_hw()
>   drm/i915/dsb: Use DEwake to combat PkgC latency

Everything up to here pushed now.

>   drm/i915/dsb: Re-instate DSB for LUT updates
>   drm/i915: Do state check for color management changes

I'll do another repost of these two to get a fresh
CI run, just in case.

Thanks for the reviews.

> 
>  drivers/gpu/drm/i915/display/intel_color.c    |  58 +++--
>  drivers/gpu/drm/i915/display/intel_color.h    |   2 +
>  drivers/gpu/drm/i915/display/intel_crtc.c     |  10 +-
>  drivers/gpu/drm/i915/display/intel_display.c  |   3 +
>  drivers/gpu/drm/i915/display/intel_dsb.c      | 217 +++++++++++++++---
>  drivers/gpu/drm/i915/display/intel_dsb.h      |   9 +-
>  drivers/gpu/drm/i915/display/intel_dsb_regs.h |  31 +++
>  .../drm/i915/display/intel_modeset_verify.c   |   2 +
>  drivers/gpu/drm/i915/display/intel_vblank.c   |  14 ++
>  drivers/gpu/drm/i915/display/intel_vblank.h   |   1 +
>  drivers/gpu/drm/i915/display/skl_watermark.c  |  14 ++
>  drivers/gpu/drm/i915/display/skl_watermark.h  |   2 +
>  12 files changed, 317 insertions(+), 46 deletions(-)
> 
> -- 
> 2.39.3

-- 
Ville Syrjälä
Intel
