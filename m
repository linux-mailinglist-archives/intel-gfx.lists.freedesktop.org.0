Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 6E2E76F86A4
	for <lists+intel-gfx@lfdr.de>; Fri,  5 May 2023 18:25:16 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id DD6CB10E0C3;
	Fri,  5 May 2023 16:25:14 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga14.intel.com (mga14.intel.com [192.55.52.115])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 8D9F810E0C3
 for <intel-gfx@lists.freedesktop.org>; Fri,  5 May 2023 16:25:12 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1683303912; x=1714839912;
 h=date:from:to:cc:subject:message-id:references:
 mime-version:content-transfer-encoding:in-reply-to;
 bh=Jx8uvNmTJAMuq5qIA8SysZqCBELfg0LNFxr0spfBwRU=;
 b=Sld69y5Gd5ejjaDkQJAWqiab8jGSecV4xVKAgiyBF6PKsGiOgE4Dtjet
 0CXuWCikcG2E4HunYWPvFA3VYpQFdiEwvQdRonDWexQWqMg8vewk2c3Q2
 lwnfZ/00jXe+WWcuUJCbBvYtE2NE6/eIw3c5bUJyGpiFxWlw6AZ/+7rfp
 WmxRq4DdIJGIMSm6c7U5eXIlziJtj1aDZD4RjilwIUYOgaKkn6lSSmAO1
 3HZP2WijJUFou71p4IqYhaq97lkjbvtjbeaIkMZSQr/tA0tXZg3c7rt3T
 RexR+XnBmrfuAAbTeelf9ah5mriYJSadis/QV8TCC1p0uFmSQ66hB9Kog g==;
X-IronPort-AV: E=McAfee;i="6600,9927,10701"; a="349281812"
X-IronPort-AV: E=Sophos;i="5.99,252,1677571200"; d="scan'208";a="349281812"
Received: from orsmga003.jf.intel.com ([10.7.209.27])
 by fmsmga103.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 05 May 2023 09:25:11 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10701"; a="647947776"
X-IronPort-AV: E=Sophos;i="5.99,252,1677571200"; d="scan'208";a="647947776"
Received: from stinkpipe.fi.intel.com (HELO stinkbox) ([10.237.72.70])
 by orsmga003.jf.intel.com with SMTP; 05 May 2023 09:25:08 -0700
Received: by stinkbox (sSMTP sendmail emulation);
 Fri, 05 May 2023 19:25:07 +0300
Date: Fri, 5 May 2023 19:25:07 +0300
From: Ville =?iso-8859-1?Q?Syrj=E4l=E4?= <ville.syrjala@linux.intel.com>
To: Ankit Nautiyal <ankit.k.nautiyal@intel.com>
Message-ID: <ZFUt48Z1eCfyAr3h@intel.com>
References: <20230427125605.487769-1-ankit.k.nautiyal@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=iso-8859-1
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <20230427125605.487769-1-ankit.k.nautiyal@intel.com>
X-Patchwork-Hint: comment
Subject: Re: [Intel-gfx] [PATCH 0/6] Introduce sink_format and other fixes
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

On Thu, Apr 27, 2023 at 06:25:59PM +0530, Ankit Nautiyal wrote:
> This patch series is part of a previous series:
> https://patchwork.freedesktop.org/series/109470/
> 
> This adds new member sink_format to store the final format that the
> sink will be using, which might be different than the output format,
> and thus might need color/format conversion performed by the PCON.
> 
> Last patch just refactors some lines in mode_valid code for DP.
> 
> Ankit Nautiyal (6):
>   drm/i915/display: Add new member to configure PCON color conversion
>   drm/i915/dp: Replace intel_dp.dfp members with the new crtc_state
>     sink_format
>   drm/i915/dp: Configure PCON for conversion of output_format to
>     YCbCr444
>   drm/i915/display: Use sink_format instead of ycbcr420_output flag
>   drm/i915/dp: Add helper to get sink_format
>   drm/i915/dp: Rearrange check for illegal mode and comments in
>     mode_valid

Series pushed to drm-intel-next. Thanks.

> 
>  drivers/gpu/drm/i915/display/icl_dsi.c        |   1 +
>  drivers/gpu/drm/i915/display/intel_crt.c      |   1 +
>  .../drm/i915/display/intel_crtc_state_dump.c  |   5 +-
>  drivers/gpu/drm/i915/display/intel_display.c  |   5 +
>  .../drm/i915/display/intel_display_types.h    |  12 +-
>  drivers/gpu/drm/i915/display/intel_dp.c       | 263 ++++++++++++------
>  drivers/gpu/drm/i915/display/intel_dp_mst.c   |   1 +
>  drivers/gpu/drm/i915/display/intel_dvo.c      |   1 +
>  drivers/gpu/drm/i915/display/intel_hdmi.c     |  71 +++--
>  drivers/gpu/drm/i915/display/intel_hdmi.h     |   5 +-
>  drivers/gpu/drm/i915/display/intel_lvds.c     |   1 +
>  drivers/gpu/drm/i915/display/intel_sdvo.c     |   1 +
>  drivers/gpu/drm/i915/display/intel_tv.c       |   1 +
>  drivers/gpu/drm/i915/display/vlv_dsi.c        |   1 +
>  14 files changed, 250 insertions(+), 119 deletions(-)
> 
> -- 
> 2.25.1

-- 
Ville Syrjälä
Intel
