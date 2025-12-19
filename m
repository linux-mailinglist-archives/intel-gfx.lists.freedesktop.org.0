Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 8CA1DCCFD98
	for <lists+intel-gfx@lfdr.de>; Fri, 19 Dec 2025 13:42:52 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 2D4E110EF8B;
	Fri, 19 Dec 2025 12:42:51 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="lKgzRq/1";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.19])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 42F6210EF8A;
 Fri, 19 Dec 2025 12:42:49 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1766148169; x=1797684169;
 h=date:from:to:cc:subject:message-id:references:
 mime-version:content-transfer-encoding:in-reply-to;
 bh=n1wJIvj83UqnNBmE8u5cUjAJc2VsuGaauF6HkABKSWE=;
 b=lKgzRq/1blWdkaLeHd0IEV9tXSNcOKsHEZgic7jcGRWbisI/cdjFXgBa
 msv9LFpLWmkcLoCU0st2MzvvgNLon3d3H34mZzkSltMPWW08uqqo+CjX4
 uDlYMKjLy0pbeWSqmV3zepLkOowMaMINbjSbG4S0pKEeWq2CbYL+vLbtw
 /S0VnNqsiUCCT92ogzelP9d1iMOGs1Ok+HDxSYCaCQdtXlY4tdwTZGCs5
 FJlMrUbNRsowq0dE/tSBR+USeG3jKVEVysWddLo3GqHc/8JH7X/6RsvG8
 JMJyhXZXB+3p5vHWhwbqyovIY/kQMRCTBt/D1QRzJ4JjKYCa1P+siKD86 w==;
X-CSE-ConnectionGUID: cmVaYmJWTw6s+aRQZrlrxg==
X-CSE-MsgGUID: NSCJw57TSkGDWlc6Cnh0dA==
X-IronPort-AV: E=McAfee;i="6800,10657,11646"; a="67106432"
X-IronPort-AV: E=Sophos;i="6.21,161,1763452800"; d="scan'208";a="67106432"
Received: from orviesa002.jf.intel.com ([10.64.159.142])
 by fmvoesa113.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 19 Dec 2025 04:42:49 -0800
X-CSE-ConnectionGUID: bE6mFMFhQdWHZsm/TMcc2A==
X-CSE-MsgGUID: 0ckX0hc8S4Cut4ZpcRKDRQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.21,161,1763452800"; d="scan'208";a="229538211"
Received: from jjgreens-desk21.amr.corp.intel.com (HELO localhost)
 ([10.124.220.15])
 by orviesa002-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 19 Dec 2025 04:42:45 -0800
Date: Fri, 19 Dec 2025 14:42:42 +0200
From: Ville =?iso-8859-1?Q?Syrj=E4l=E4?= <ville.syrjala@linux.intel.com>
To: Jani Nikula <jani.nikula@intel.com>
Cc: intel-gfx@lists.freedesktop.org, intel-xe@lists.freedesktop.org
Subject: Re: [PATCH 0/2] drm/i915/display: reduce i915_drv.h usage
Message-ID: <aUVIQn2Bpb-4K8_U@intel.com>
References: <cover.1766141244.git.jani.nikula@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=iso-8859-1
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <cover.1766141244.git.jani.nikula@intel.com>
X-Patchwork-Hint: comment
Organization: Intel Finland Oy - BIC 0357606-4 - c/o Alberga Business Park, 6
 krs Bertel Jungin Aukio 5, 02600 Espoo, Finland
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

On Fri, Dec 19, 2025 at 12:50:32PM +0200, Jani Nikula wrote:
> This helps reduce the dependencies on i915_drv.h, better highlighting
> what's left and what needs to be addressed.
> 
> Ville, I hope this does not make your life more difficult with the
> uncore conversions. If it does, we can drop this.

Nah, looks easy enough to deal with.

Series is
Reviewed-by: Ville Syrjälä <ville.syrjala@linux.intel.com>

> 
> BR,
> Jani.
> 
> 
> Cc: Ville Syrjala <ville.syrjala@linux.intel.com>
> 
> Jani Nikula (2):
>   drm/xe/compat: convert uncore macros to static inlines
>   drm/i915/display: use to_intel_uncore() to avoid i915_drv.h
> 
>  drivers/gpu/drm/i915/display/i9xx_wm.c        | 17 ++++----
>  drivers/gpu/drm/i915/display/intel_bw.c       | 17 ++++----
>  drivers/gpu/drm/i915/display/intel_display.c  |  4 +-
>  .../drm/i915/display/intel_display_power.c    |  8 ++--
>  drivers/gpu/drm/i915/display/intel_dram.c     | 39 +++++++++----------
>  drivers/gpu/drm/i915/display/intel_rom.c      |  8 ++--
>  drivers/gpu/drm/i915/display/intel_vblank.c   | 13 +++----
>  .../drm/xe/compat-i915-headers/intel_uncore.h | 17 ++++++--
>  8 files changed, 66 insertions(+), 57 deletions(-)
> 
> -- 
> 2.47.3

-- 
Ville Syrjälä
Intel
