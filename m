Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id C186B7B05E4
	for <lists+intel-gfx@lfdr.de>; Wed, 27 Sep 2023 15:58:44 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 6CFCA10E0E5;
	Wed, 27 Sep 2023 13:58:42 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.55.52.43])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 6738210E0E5
 for <intel-gfx@lists.freedesktop.org>; Wed, 27 Sep 2023 13:58:40 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1695823120; x=1727359120;
 h=date:from:to:cc:subject:message-id:references:
 mime-version:content-transfer-encoding:in-reply-to;
 bh=/8tLdyJW/Yy5FA1xH8kTOtHEKPjK3pwYRHAA8+IgYj0=;
 b=MabotpNOW1f2sKRcyvqRQAYKZOUFQci+tgIH3xfTT3nzhTnF2kQ4mhQm
 DETAMM5cW5CggN9fTfhyCOiFFRTmovwX25eWjPRRKXQzTjEIO67cipD2M
 Y92ysgeusUSwgFWN4bFecGHHH6mmGsvHkIfMqFsbpAeVYgMX5/LEmu1vw
 +CBzjYUzd/srG7AmMqrBlFonw1JioYqmpZQnfPOzW3PasfQkgmenLSe9x
 hkbyB17jzZK4gf7ZgjPrT42BZ9H9N6f6zSzdzOvXGuV1LTr5H4i4/gXIT
 dNsa4T9zz6pOw9rIKBQpJRc7RBtjZGtoS5UOMGoPzwDzPwx6p4HqKqfy/ w==;
X-IronPort-AV: E=McAfee;i="6600,9927,10846"; a="468112772"
X-IronPort-AV: E=Sophos;i="6.03,181,1694761200"; d="scan'208";a="468112772"
Received: from orsmga001.jf.intel.com ([10.7.209.18])
 by fmsmga105.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 27 Sep 2023 06:58:39 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10846"; a="784334397"
X-IronPort-AV: E=Sophos;i="6.03,181,1694761200"; d="scan'208";a="784334397"
Received: from stinkpipe.fi.intel.com (HELO stinkbox) ([10.237.72.153])
 by orsmga001.jf.intel.com with SMTP; 27 Sep 2023 06:58:36 -0700
Received: by stinkbox (sSMTP sendmail emulation);
 Wed, 27 Sep 2023 16:58:35 +0300
Date: Wed, 27 Sep 2023 16:58:35 +0300
From: Ville =?iso-8859-1?Q?Syrj=E4l=E4?= <ville.syrjala@linux.intel.com>
To: Imre Deak <imre.deak@intel.com>
Message-ID: <ZRQ1CzYk_HsERTsg@intel.com>
References: <20230921195159.2646027-1-imre.deak@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=iso-8859-1
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <20230921195159.2646027-1-imre.deak@intel.com>
X-Patchwork-Hint: comment
Subject: Re: [Intel-gfx] [PATCH 00/11] drm/i915: Improve BW management on
 FDI links
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
Cc: Luca Coelho <luciano.coelho@intel.com>, intel-gfx@lists.freedesktop.org
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Thu, Sep 21, 2023 at 10:51:48PM +0300, Imre Deak wrote:
> This is the first half of patchset [1] enabling the BW management on FDI
> links, addressing the review comments and adding R-bs.
> 
> [1] https://lore.kernel.org/all/20230914192659.757475-1-imre.deak@intel.com
> 
> Cc: Jani Nikula <jani.nikula@linux.intel.com>
> Cc: Stanislav Lisovskiy <stanislav.lisovskiy@intel.com>
> Cc: Lyude Paul <lyude@redhat.com>
> Cc: Ville Syrjälä <ville.syrjala@linux.intel.com>
> Cc: Luca Coelho <luciano.coelho@intel.com>
> 
> Imre Deak (11):
>   drm/i915/dp: Factor out helpers to compute the link limits
>   drm/i915/dp: Track the pipe and link bpp limits separately
>   drm/i915/dp: Skip computing a non-DSC link config if DSC is needed
>   drm/i915/dp: Update the link bpp limits for DSC mode
>   drm/i915/dp: Limit the output link bpp in DSC mode
>   drm/i915: Add helper to modeset a set of pipes
>   drm/i915: Rename intel_modeset_all_pipes() to
>     intel_modeset_all_pipes_late()
>   drm/i915: Factor out a helper to check/compute all the CRTC states
>   drm/i915: Add helpers for BW management on shared display links
>   drm/i915/fdi: Improve FDI BW sharing between pipe B and C
>   drm/i915/fdi: Recompute state for affected CRTCs on FDI links

Series is
Reviewed-by: Ville Syrjälä <ville.syrjala@linux.intel.com>

> 
>  drivers/gpu/drm/i915/Makefile                 |   1 +
>  drivers/gpu/drm/i915/display/g4x_hdmi.c       |   6 +-
>  drivers/gpu/drm/i915/display/intel_cdclk.c    |   2 +-
>  drivers/gpu/drm/i915/display/intel_crt.c      |   7 +
>  drivers/gpu/drm/i915/display/intel_crtc.c     |   1 +
>  drivers/gpu/drm/i915/display/intel_display.c  | 261 +++++++++++++-----
>  drivers/gpu/drm/i915/display/intel_display.h  |   6 +-
>  .../drm/i915/display/intel_display_types.h    |  26 +-
>  drivers/gpu/drm/i915/display/intel_dp.c       | 170 +++++++++---
>  drivers/gpu/drm/i915/display/intel_dp.h       |  15 +-
>  drivers/gpu/drm/i915/display/intel_dp_mst.c   | 106 ++++---
>  drivers/gpu/drm/i915/display/intel_fdi.c      | 162 +++++++++--
>  drivers/gpu/drm/i915/display/intel_fdi.h      |   8 +
>  drivers/gpu/drm/i915/display/intel_link_bw.c  | 212 ++++++++++++++
>  drivers/gpu/drm/i915/display/intel_link_bw.h  |  37 +++
>  drivers/gpu/drm/i915/display/intel_lvds.c     |  10 +-
>  drivers/gpu/drm/i915/display/intel_sdvo.c     |  11 +-
>  drivers/gpu/drm/i915/display/skl_watermark.c  |   2 +-
>  18 files changed, 872 insertions(+), 171 deletions(-)
>  create mode 100644 drivers/gpu/drm/i915/display/intel_link_bw.c
>  create mode 100644 drivers/gpu/drm/i915/display/intel_link_bw.h
> 
> -- 
> 2.37.2

-- 
Ville Syrjälä
Intel
