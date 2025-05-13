Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id A4FBAAB4FEF
	for <lists+intel-gfx@lfdr.de>; Tue, 13 May 2025 11:34:31 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id C1C1610E522;
	Tue, 13 May 2025 09:34:29 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="A8lYNJaL";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.17])
 by gabe.freedesktop.org (Postfix) with ESMTPS id B547910E4DC;
 Tue, 13 May 2025 09:34:26 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1747128867; x=1778664867;
 h=date:from:to:cc:subject:message-id:references:
 mime-version:content-transfer-encoding:in-reply-to;
 bh=KEChjx3+GAChoGqB3zheFTHKBVEdUZIkFtoIg5RMDJs=;
 b=A8lYNJaLW9FkJ1s4CEQsHlL4SOKfkif4AY8FzUxKTXSCekEdNq2ZF+DJ
 Jf2CcoSzn6sAtiohJEuzqWjCb0JIeoM7sPCg9sr3RPKMJdqIoMkx4YYh6
 hDi93GUok8qA7/9i07atuaQTWOIg7JlwGStT0q71J7J1cf/iBLG5u3zwq
 rF5nAGGiKIe+sVptLTLUdzxmNnrv8FDeqSW9Rok+6JMVEYf/5diO8J0Ys
 iqIrYu1ZMrOCVMKtVMADyIOoRtmC1IxXlzaZcV3MK7ATHCkcMM5y29a8e
 pnQY/1ciRuCOb262GxqLbX3SCBzaj3GV+Cf+v0q3iDZzHKGJA4H9OxP6Y g==;
X-CSE-ConnectionGUID: 4EX19KrrR8CjhniwmrcIsg==
X-CSE-MsgGUID: P6SaUTf3SwaxET948O0++g==
X-IronPort-AV: E=McAfee;i="6700,10204,11431"; a="48957004"
X-IronPort-AV: E=Sophos;i="6.15,284,1739865600"; d="scan'208";a="48957004"
Received: from orviesa005.jf.intel.com ([10.64.159.145])
 by orvoesa109.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 13 May 2025 02:34:26 -0700
X-CSE-ConnectionGUID: jJ4ln9nNRIi2YUdLOdy6+Q==
X-CSE-MsgGUID: nYpFynYtSg+t2cUuqZdL5Q==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.15,284,1739865600"; d="scan'208";a="142769102"
Received: from dalessan-mobl3.ger.corp.intel.com (HELO stinkbox)
 ([10.245.244.221])
 by orviesa005.jf.intel.com with SMTP; 13 May 2025 02:34:23 -0700
Received: by stinkbox (sSMTP sendmail emulation);
 Tue, 13 May 2025 12:34:22 +0300
Date: Tue, 13 May 2025 12:34:22 +0300
From: Ville =?iso-8859-1?Q?Syrj=E4l=E4?= <ville.syrjala@linux.intel.com>
To: Jani Nikula <jani.nikula@intel.com>
Cc: intel-gfx@lists.freedesktop.org, intel-xe@lists.freedesktop.org
Subject: Re: [PATCH 0/5] drm/i915/display: various small cleanups
Message-ID: <aCMSHuv8KMcy6Lrj@intel.com>
References: <cover.1747128495.git.jani.nikula@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=iso-8859-1
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <cover.1747128495.git.jani.nikula@intel.com>
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

On Tue, May 13, 2025 at 12:28:40PM +0300, Jani Nikula wrote:
> A bunch of small cleanups.
> 
> Jani Nikula (5):
>   drm/i915/pps: drop dependency on intel_display_conversion.h
>   drm/i915/rps: pass struct intel_display to DISPLAY_VER()
>   drm/i915/display: drop unused declarations from intel_display.h
>   drm/i915/gem: drop intel_display.h include
>   drm/i915/display: drop unnecessary includes on i915 core headers

Series is
Reviewed-by: Ville Syrjälä <ville.syrjala@linux.intel.com>

> 
>  .../gpu/drm/i915/display/intel_atomic_plane.c    |  1 -
>  drivers/gpu/drm/i915/display/intel_crt.c         |  1 -
>  drivers/gpu/drm/i915/display/intel_display.c     |  1 -
>  drivers/gpu/drm/i915/display/intel_display.h     | 16 ----------------
>  .../gpu/drm/i915/display/intel_display_debugfs.c |  1 -
>  drivers/gpu/drm/i915/display/intel_display_rps.c |  3 ++-
>  drivers/gpu/drm/i915/display/intel_dp.c          |  1 -
>  drivers/gpu/drm/i915/display/intel_dsb.c         |  1 -
>  drivers/gpu/drm/i915/display/intel_pps_regs.h    | 15 +++++++--------
>  drivers/gpu/drm/i915/gem/i915_gem_domain.c       |  1 -
>  10 files changed, 9 insertions(+), 32 deletions(-)
> 
> -- 
> 2.39.5

-- 
Ville Syrjälä
Intel
