Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 0F631975D92
	for <lists+intel-gfx@lfdr.de>; Thu, 12 Sep 2024 01:06:01 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id D81D110E1CB;
	Wed, 11 Sep 2024 23:05:57 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="druHANRT";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.20])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 7303710E1CB
 for <intel-gfx@lists.freedesktop.org>; Wed, 11 Sep 2024 23:05:56 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1726095957; x=1757631957;
 h=date:from:to:cc:subject:message-id:references:
 mime-version:content-transfer-encoding:in-reply-to;
 bh=s84Y+1Z4DAAOC1EFFjriiHfAsyYest3EBHFivtdz2WA=;
 b=druHANRTbmO+JLYUqfq8SKXe1jWUw5lOpuYA1/yyY5KRDOHQA0f0O23B
 6xyjghW+prFWsEfOQyLTzI9pXEvp9mXGaAI5fCTaDYpAgfACnvwclFJ0w
 tch5+fvQj9+VYpYXDIjCPhdhvvYNRh8UeBxba4jPR3+ztgPYNe75WbIIi
 PizXw2Jbwmytn9K3DrYxK9NG221Gp6N7pxgu0sjpYMV9SK9wQY5nZdbsY
 WRKWorcuBoTJPo1Q3568Cyrdc8Sr7+hncN9wSvK6Ou75hE56zlQUmze48
 KesBw3+XXKzTTaDx4jlxrS/JU9suTePcgXmgUKuJB0gbLejPFl75qRRa3 A==;
X-CSE-ConnectionGUID: Q8yWHnr+TfmXsS7n68E8JQ==
X-CSE-MsgGUID: t7zmRWWnRl23BOj9+bJryA==
X-IronPort-AV: E=McAfee;i="6700,10204,11192"; a="24746142"
X-IronPort-AV: E=Sophos;i="6.10,221,1719903600"; d="scan'208";a="24746142"
Received: from fmviesa008.fm.intel.com ([10.60.135.148])
 by orvoesa112.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 11 Sep 2024 16:05:56 -0700
X-CSE-ConnectionGUID: IOIsBqnRRTOlzfWfKv5mIA==
X-CSE-MsgGUID: ueNQN/ajR36VZBj4MIATJw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.10,221,1719903600"; d="scan'208";a="67577231"
Received: from stinkpipe.fi.intel.com (HELO stinkbox) ([10.237.72.74])
 by fmviesa008.fm.intel.com with SMTP; 11 Sep 2024 16:05:53 -0700
Received: by stinkbox (sSMTP sendmail emulation);
 Thu, 12 Sep 2024 02:05:52 +0300
Date: Thu, 12 Sep 2024 02:05:52 +0300
From: Ville =?iso-8859-1?Q?Syrj=E4l=E4?= <ville.syrjala@linux.intel.com>
To: Ankit Nautiyal <ankit.k.nautiyal@intel.com>
Cc: intel-gfx@lists.freedesktop.org, suraj.kandpal@intel.com,
 jani.saarinen@intel.com
Subject: Re: [PATCH 00/19] Ultrajoiner basic functionality series
Message-ID: <ZuIiUF2BLhd5ot6P@intel.com>
References: <20240911131349.933814-1-ankit.k.nautiyal@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=iso-8859-1
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <20240911131349.933814-1-ankit.k.nautiyal@intel.com>
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

On Wed, Sep 11, 2024 at 06:43:30PM +0530, Ankit Nautiyal wrote:
> This patch series attempts to implement basic support
> for Ultrajoiner functionality.
> 
> Rev6:
> -Upgrade the debugfs functionality to enable the joining of a
> specified number of pipes.
> -Modify the display helpers reliant on the pipe joiner mechanism
> to use number of pipes joined, instead of joiner flag.
> -Checkpatch fixes.
> 
> Rev7:
> -Use struct intel_display, minor refactoring, and rebase.
> 
> Rev8:
> -Address comments from Ville.
> -Simplified debugfs for forcing joiner, and added option to disable
> joiner.
> -Modified the ultra/bigjoiner helpers as suggested by Ville. 
> -Split few of the bigger patches as suggested.
> 
> Test-with: 20240911072204.22825-1-karthik.b.s@intel.com
> 
> Ankit Nautiyal (11):
>   drm/i915/display: Simplify intel_joiner_num_pipes and its usage
>   drm/i915/display: Use joined pipes in intel_dp_joiner_needs_dsc
>   drm/i915/display: Use joined pipes in intel_mode_valid_max_plane_size
>   drm/i915/display: Use joined pipes in dsc helpers for slices, bpp

I have a feeling those four at least could be merged ahead of
time, and thus shrink what's left quite decently already.
Granted, you probably won't have the num_pipes value passed
in all the way from the top yet, so might have to do some
'joiner ? 2 : 1' here and there as a temporary measure.

I think getting this stuff out of the way would help
avoid confusion with the debugfs/compute_config changes
to some degree at least, and might help with bisectability,
Presumably it builds, but I'm not really convinced all the
intermediate steps would actually work 100% correctly.

>   drm/i915/display: Check whether platform supports joiner

For this stuff I'd like to see a HAS_BIGJOINER() and
HAS_UNCOMPRESSED_JOINER() like we have for most platform
features. This also seems like good material for stuff to
merge on its own, ahead of the rest of the more complicated 
stuff below.

>   drm/i915/display: Modify debugfs for joiner to force n pipes
>   drm/i915/display_debugfs: Allow force joiner only if supported
>   drm/i915/dp: Add helper to compute num pipes joined
>   drm/i915/display: Add debugfs support to avoid joiner
>   drm/i915/display: Consider ultrajoiner for computing maxdotclock
>   drm/i915/intel_dp: Add support for forcing ultrajoiner
> 
> Stanislav Lisovskiy (8):
>   drm/i915: Add some essential functionality for joiners
>   drm/i915: Split current joiner hw state readout
>   drm/i915: Add bigjoiner and uncompressed joiner hw readout sanity
>     checks
>   drm/i915: Implement hw state readout and checks for ultrajoiner
>   drm/i915/display: Percolate ultrajoiner info to get_joiner_config
>   drm/i915/display/vdsc: Add ultrajoiner support with DSC
>   drm/i915: Add new abstraction layer to handle pipe order for different
>     joiners
>   drm/i915: Compute config and mode valid changes for ultrajoiner
> 
>  drivers/gpu/drm/i915/display/intel_ddi.c      |  19 +-
>  drivers/gpu/drm/i915/display/intel_display.c  | 423 +++++++++++++++---
>  drivers/gpu/drm/i915/display/intel_display.h  |  17 +-
>  .../drm/i915/display/intel_display_debugfs.c  |  84 +++-
>  .../drm/i915/display/intel_display_types.h    |   2 +-
>  drivers/gpu/drm/i915/display/intel_dp.c       | 138 ++++--
>  drivers/gpu/drm/i915/display/intel_dp.h       |  14 +-
>  drivers/gpu/drm/i915/display/intel_dp_mst.c   |  54 ++-
>  drivers/gpu/drm/i915/display/intel_dsi.c      |   2 +-
>  drivers/gpu/drm/i915/display/intel_hdmi.c     |   2 +-
>  drivers/gpu/drm/i915/display/intel_vdsc.c     |  30 +-
>  .../gpu/drm/i915/display/intel_vdsc_regs.h    |   3 +
>  12 files changed, 646 insertions(+), 142 deletions(-)
> 
> -- 
> 2.45.2

-- 
Ville Syrjälä
Intel
