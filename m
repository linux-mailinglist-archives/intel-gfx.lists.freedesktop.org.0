Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id B27AD84E469
	for <lists+intel-gfx@lfdr.de>; Thu,  8 Feb 2024 16:52:52 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id ECD2710E94F;
	Thu,  8 Feb 2024 15:52:50 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="XMcuVdOW";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.21])
 by gabe.freedesktop.org (Postfix) with ESMTPS id A31DC10E96A
 for <intel-gfx@lists.freedesktop.org>; Thu,  8 Feb 2024 15:52:46 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1707407566; x=1738943566;
 h=from:to:subject:in-reply-to:references:date:message-id:
 mime-version:content-transfer-encoding;
 bh=xuUjOAS6Vs3CGakVnE7QuZJufgdLmfaidwambVkgJfI=;
 b=XMcuVdOWeE1fr8D9UwYl8ejU2le80dqcppltwzuuPOZMH3Rlxi2vJMoN
 ihqVMzT9qXGB/Wv5TwWXXZewXdjYjM2/7XIbunuwWvzeQ9T7wXmuzWUal
 gAWtpddQEmv9WCXca64K1irGRoAZ07L3lL9cWeG4VvtnKA+/JEJKWfsK9
 P7FdNOq/F3BmZ2JKU7Sl5fE2/bhwLmOqZxiQFfWONKhMDpj589IXFbvER
 rfglVhTdZXrMERog3ZmLSjiTzXsr2SlAO3f6xaNmvH/UHojaihOp6vRL2
 CQ/KWV8zyKb2R0VEeBsh11o7cz0W3Tzar88e8iEapWTNCCYlOUsnYcMti A==;
X-IronPort-AV: E=McAfee;i="6600,9927,10978"; a="1151396"
X-IronPort-AV: E=Sophos;i="6.05,254,1701158400"; 
   d="scan'208";a="1151396"
Received: from fmviesa010.fm.intel.com ([10.60.135.150])
 by orvoesa113.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 08 Feb 2024 07:52:45 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.05,254,1701158400"; 
   d="scan'208";a="1670276"
Received: from unknown (HELO localhost) ([10.237.66.162])
 by fmviesa010-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 08 Feb 2024 07:52:44 -0800
From: Jani Nikula <jani.nikula@linux.intel.com>
To: Ville Syrjala <ville.syrjala@linux.intel.com>,
 intel-gfx@lists.freedesktop.org
Subject: Re: [PATCH 00/13] drm/i915: drm_dbg_kms() conversions and cleanups
In-Reply-To: <20240208151720.7866-1-ville.syrjala@linux.intel.com>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
References: <20240208151720.7866-1-ville.syrjala@linux.intel.com>
Date: Thu, 08 Feb 2024 17:52:38 +0200
Message-ID: <87o7crar7d.fsf@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: quoted-printable
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

On Thu, 08 Feb 2024, Ville Syrjala <ville.syrjala@linux.intel.com> wrote:
> From: Ville Syrj=C3=A4l=C3=A4 <ville.syrjala@linux.intel.com>
>
> Convert a bunch of lingering DRM_DEBUG_KMS() & co. to the
> per-device drm_dbg_kms() variants. The stuff remining after this
> are DVO encoder drivers, DMI match functions, and ACPI/DSM stuff.
>
> And also include a bit of other house cleaning I spotted.
>
> Ville Syrj=C3=A4l=C3=A4 (13):
>   drm/i915: Correct for_each_old_global_obj_in_state() arguments
>   drm/i915/sdvo: Convert to per-device debugs
>   drm/i915/sdvo: Fix up code alignment
>   drm/i915/color: Use per-device debugs
>   drm/i915/fb: Use per-device debugs
>   drm/i915/bios: Switch to kms debugs
>   drm/i915/bios: Use per-device debugs for VBT related stuff
>   drm/i915/hdcp: Use per-device debugs
>   drm/i915/wm: Pass the whole i916 to intel_get_cxsr_latency()

Off by one in the subject there. ;)

Other than that, the series is

Reviewed-by: Jani Nikula <jani.nikula@intel.com>


>   drm/i915/wm: Use per-device debugs in pre-ilk wm code
>   drm/i915/wm: Use per-device debugs ilk wm code
>   drm/i915/dvo/ns2501: Nuke pointless casts
>   drm/i915/dvo: Use sizeof(*variable) instead of sizeof(type)
>
>  drivers/gpu/drm/i915/display/dvo_ch7017.c     |   2 +-
>  drivers/gpu/drm/i915/display/dvo_ch7xxx.c     |   2 +-
>  drivers/gpu/drm/i915/display/dvo_ivch.c       |   2 +-
>  drivers/gpu/drm/i915/display/dvo_ns2501.c     |   6 +-
>  drivers/gpu/drm/i915/display/dvo_sil164.c     |   2 +-
>  drivers/gpu/drm/i915/display/dvo_tfp410.c     |   2 +-
>  drivers/gpu/drm/i915/display/i9xx_wm.c        |  81 +++----
>  drivers/gpu/drm/i915/display/intel_bios.c     |  73 +++---
>  drivers/gpu/drm/i915/display/intel_bios.h     |   3 +-
>  drivers/gpu/drm/i915/display/intel_color.c    |  11 +-
>  drivers/gpu/drm/i915/display/intel_dp_hdcp.c  |  12 +-
>  drivers/gpu/drm/i915/display/intel_fb.c       |   7 +-
>  .../gpu/drm/i915/display/intel_global_state.h |   4 +-
>  drivers/gpu/drm/i915/display/intel_opregion.c |   6 +-
>  drivers/gpu/drm/i915/display/intel_sdvo.c     | 217 ++++++++++--------
>  15 files changed, 233 insertions(+), 197 deletions(-)

--=20
Jani Nikula, Intel
