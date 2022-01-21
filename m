Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id F2053495F7C
	for <lists+intel-gfx@lfdr.de>; Fri, 21 Jan 2022 14:12:42 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 9C1DA10EABA;
	Fri, 21 Jan 2022 13:12:40 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 60FC910EABA
 for <intel-gfx@lists.freedesktop.org>; Fri, 21 Jan 2022 13:12:39 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1642770759; x=1674306759;
 h=date:from:to:cc:subject:message-id:references:
 mime-version:content-transfer-encoding:in-reply-to;
 bh=QxVgsXtxvL1WShzaeryOQCGaqvjVZEQW0g3QlyxKVQM=;
 b=FOY4xrtAGWn4USWiTLbknXzOb3JD8B3JvzAjVZZobYaH9Kx8Y87gZQv/
 EP6bMrElODQhsvo8+VSyvaQCIUYmfM3Z8fgcceUYnHjrfWBNHYkyF22WA
 Vk6Ypcjma7wdERaNWr+7FCai48X9S7jhk7BywbdG8Zkhynjy/FYF0KMTD
 bvr1UL/8LMBPY+LY1di1NTaxbrsLKXF2EuKCXzt/T1PF7Axzdryazwo+F
 JCBUeRfT6WVlCq6Oh2sF2BG8TGNQhB2L5WctAm2OhDBCPlIELHALPpQTg
 At0PRXDhhD1GJfMUuiB/MgdU1/Lyh0Wk9NT31FaV2sTPirCpFxNKJBWk4 A==;
X-IronPort-AV: E=McAfee;i="6200,9189,10233"; a="245433735"
X-IronPort-AV: E=Sophos;i="5.88,304,1635231600"; d="scan'208";a="245433735"
Received: from fmsmga008.fm.intel.com ([10.253.24.58])
 by orsmga102.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 21 Jan 2022 05:12:38 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.88,304,1635231600"; d="scan'208";a="579602641"
Received: from stinkbox.fi.intel.com (HELO stinkbox) ([10.237.72.147])
 by fmsmga008.fm.intel.com with SMTP; 21 Jan 2022 05:12:36 -0800
Received: by stinkbox (sSMTP sendmail emulation);
 Fri, 21 Jan 2022 15:12:36 +0200
Date: Fri, 21 Jan 2022 15:12:36 +0200
From: Ville =?iso-8859-1?Q?Syrj=E4l=E4?= <ville.syrjala@linux.intel.com>
To: Jani Nikula <jani.nikula@intel.com>
Message-ID: <YeqxRDzd/PY8E4bP@intel.com>
References: <cover.1642769982.git.jani.nikula@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=iso-8859-1
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <cover.1642769982.git.jani.nikula@intel.com>
X-Patchwork-Hint: comment
Subject: Re: [Intel-gfx] [PATCH 0/9] drm/i915/display: drm device based
 logging conversions
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

On Fri, Jan 21, 2022 at 03:00:29PM +0200, Jani Nikula wrote:
> Purge some accumulated drm device based logging changes from my local
> branches.
> 
> Jani Nikula (9):
>   drm/i915/snps: convert to drm device based logging
>   drm/i915/pps: convert to drm device based logging
>   drm/i915/hotplug: convert to drm device based logging
>   drm/i915/dp: convert to drm device based logging
>   drm/i915/plane: convert to drm device based logging and WARN
>   drm/i915/sprite: convert to drm device based logging
>   drm/i915/lspcon: convert to drm device based logging
>   drm/i915/cdclk: update intel_dump_cdclk_config() logging
>   drm/i915/cdclk: convert to drm device based logging

Eyeballed it quickly. Looks all right to me.

Series is
Reviewed-by: Ville Syrjälä <ville.syrjala@linux.intel.com>

> 
>  .../gpu/drm/i915/display/intel_atomic_plane.c |   5 +-
>  drivers/gpu/drm/i915/display/intel_cdclk.c    |  23 +--
>  drivers/gpu/drm/i915/display/intel_cdclk.h    |   3 +-
>  drivers/gpu/drm/i915/display/intel_display.c  |   2 +-
>  .../drm/i915/display/intel_display_power.c    |   2 +-
>  drivers/gpu/drm/i915/display/intel_dp.c       |  35 +++--
>  drivers/gpu/drm/i915/display/intel_hotplug.c  |  14 +-
>  drivers/gpu/drm/i915/display/intel_lspcon.c   | 142 ++++++++++--------
>  drivers/gpu/drm/i915/display/intel_pps.c      |  22 +--
>  drivers/gpu/drm/i915/display/intel_snps_phy.c |  29 ++--
>  drivers/gpu/drm/i915/display/intel_sprite.c   |  24 +--
>  .../drm/i915/display/skl_universal_plane.c    |  10 +-
>  12 files changed, 169 insertions(+), 142 deletions(-)
> 
> -- 
> 2.30.2

-- 
Ville Syrjälä
Intel
