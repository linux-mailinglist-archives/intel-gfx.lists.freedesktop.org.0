Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 7C5F79B5FCE
	for <lists+intel-gfx@lfdr.de>; Wed, 30 Oct 2024 11:13:53 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 2A5F010E774;
	Wed, 30 Oct 2024 10:13:51 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="FowlSRgc";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.11])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 4C82A10E778;
 Wed, 30 Oct 2024 10:13:49 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1730283229; x=1761819229;
 h=from:to:cc:subject:in-reply-to:references:date:
 message-id:mime-version;
 bh=iFNlKDRMWW9z4KCKjUyJa2VjjfL0Fo7rAC5FLiLXT30=;
 b=FowlSRgcSjiI41DJv4VfnIDHFwNbunpLXq3DqgDwzJhETUuTAkS+0b0X
 PajR6qt8Ximti2j3nKDWWWoxm/MQxGGyhAUmKJB8YPt/XDGll0ATi+YZH
 5QsotqChS+eZih6gHrufGzl6jFq3VabD8uWFR5fUWDxbTlAxxfyNpeGCq
 yw8T0ICe9KMJ/IOh5LDcprYJRnlvLGWn2tDpw7m8R1nSEw0UOy4UuX3M+
 87tTeOTiWiY2Z4Yw+ZLvfgxAt2Abx1aKZjOUcCYsmP4cZ7E2ATUUrM6Aj
 imB1lKjMDNsyyI2pGYEB9n6HoG17rJtoLXpbsUISA2KCeb0bIwk2XJYiV g==;
X-CSE-ConnectionGUID: bOyUszLjSU+cG0p6eOEoiQ==
X-CSE-MsgGUID: 3ITZaiGmSiebRfkL8oMt4w==
X-IronPort-AV: E=McAfee;i="6700,10204,11222"; a="40506040"
X-IronPort-AV: E=Sophos;i="6.11,199,1725346800"; d="scan'208";a="40506040"
Received: from orviesa006.jf.intel.com ([10.64.159.146])
 by orvoesa103.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 30 Oct 2024 03:13:49 -0700
X-CSE-ConnectionGUID: +GCUE7s2SKiKywV2OzeAzg==
X-CSE-MsgGUID: nXaDJyrnQUe/Da2pMoKw6g==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.11,244,1725346800"; d="scan'208";a="82435588"
Received: from lfiedoro-mobl.ger.corp.intel.com (HELO localhost)
 ([10.245.246.122])
 by orviesa006-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 30 Oct 2024 03:13:47 -0700
From: Jani Nikula <jani.nikula@intel.com>
To: intel-gfx@lists.freedesktop.org, intel-xe@lists.freedesktop.org
Cc: rodrigo.vivi@intel.com, lucas.demarchi@intel.com,
 maarten.lankhorst@linux.intel.com
Subject: Re: [CI RESEND v4 v4 00/16] drm/i915/display: platform
 identification with display->platform.<platform>
In-Reply-To: <cover.1730144869.git.jani.nikula@intel.com>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
References: <cover.1730144869.git.jani.nikula@intel.com>
Date: Wed, 30 Oct 2024 12:13:43 +0200
Message-ID: <8734kdoq3s.fsf@intel.com>
MIME-Version: 1.0
Content-Type: text/plain
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

On Mon, 28 Oct 2024, Jani Nikula <jani.nikula@intel.com> wrote:
> Just resending [1] because I never got the CI logs for it.

Pushed to din, thanks for the review.

BR,
Jani.

>
> [1] https://lore.kernel.org/r/cover.1729773149.git.jani.nikula@intel.com
>
> Jani Nikula (16):
>   drm/i915/display: reindent subplatform initialization
>   drm/i915/display: use a macro to initialize subplatforms
>   drm/i915/display: use a macro to define platform enumerations
>   drm/i915/display: join the platform and subplatform enums
>   drm/i915/display: convert display platforms to lower case
>   drm/i915/display: add display platforms structure with platform
>     members
>   drm/i915/display: add platform member to struct intel_display
>   drm/i915/display: remove the display platform enum as unnecessary
>   drm/i915/display: add platform group for g4x
>   drm/i915/display: add subplatform group for HSW/BDW ULT
>   drm/i915/bios: use display->platform.<platform> instead of
>     IS_<PLATFORM>()
>   drm/i915/pps: use display->platform.<platform> instead of
>     IS_<PLATFORM>()
>   drm/i915/tv: use display->platform.<platform> instead of
>     IS_<PLATFORM>()
>   drm/i915/vga: use display->platform.<platform> instead of
>     IS_<PLATFORM>()
>   drm/i915/vblank: drop unnecessary i915 local variable
>   drm/i915/vblank: use display->platform.<platform> instead of
>     IS_<PLATFORM>()
>
>  drivers/gpu/drm/i915/display/intel_bios.c     |  40 +--
>  .../gpu/drm/i915/display/intel_display_core.h |   3 +
>  .../drm/i915/display/intel_display_device.c   | 269 +++++++++++++-----
>  .../drm/i915/display/intel_display_device.h   | 185 ++++++------
>  drivers/gpu/drm/i915/display/intel_pps.c      |  47 ++-
>  drivers/gpu/drm/i915/display/intel_tv.c       |  10 +-
>  drivers/gpu/drm/i915/display/intel_vblank.c   |  11 +-
>  drivers/gpu/drm/i915/display/intel_vga.c      |   4 +-
>  8 files changed, 340 insertions(+), 229 deletions(-)

-- 
Jani Nikula, Intel
