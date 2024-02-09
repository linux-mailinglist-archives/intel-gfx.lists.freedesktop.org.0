Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id ED3A484F56F
	for <lists+intel-gfx@lfdr.de>; Fri,  9 Feb 2024 13:54:11 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 3C2BA10E1B2;
	Fri,  9 Feb 2024 12:54:10 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="XQULlkxM";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.21])
 by gabe.freedesktop.org (Postfix) with ESMTPS id ED80410E1B2
 for <intel-gfx@lists.freedesktop.org>; Fri,  9 Feb 2024 12:54:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1707483249; x=1739019249;
 h=date:from:to:cc:subject:message-id:references:
 mime-version:content-transfer-encoding:in-reply-to;
 bh=wIaywcfRW3YcyQlCLbIUmhUsN2HjuARoHZm+EedqviM=;
 b=XQULlkxMvF5j1RBsazitA+EVKKMbEB4ZYvmQJHv7GCxRpahHrMwKOhBA
 4z2sGb1wdgzHozbCH2QDoBk6otGDaGJmS3JG9yhLM35J2hKttXYdMFXB/
 1gTHgISXR4clVhu6AXsYLnynN7eLRuKjqeT+caG/hh0+zKpy77wxOVHwJ
 YNGe7OrdR3+IHojEsHvTcU7XJUmfvxwLr2Scc5nIhI1zA8fns92OQPVrI
 WKrLwNn+C/NWPYGmQG9oVIil2fgnBv7Kkc0E/zmHnXEff9rZYUSg5HxnZ
 SxOcmIdQkJojbJu7AYCMqvnixm6UQQfQJEuTg2utK2fSvzWtaooR210+H w==;
X-IronPort-AV: E=McAfee;i="6600,9927,10978"; a="1327799"
X-IronPort-AV: E=Sophos;i="6.05,256,1701158400"; 
   d="scan'208";a="1327799"
Received: from orsmga001.jf.intel.com ([10.7.209.18])
 by orvoesa113.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 09 Feb 2024 04:54:08 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10978"; a="825134748"
X-IronPort-AV: E=Sophos;i="6.05,256,1701158400"; d="scan'208";a="825134748"
Received: from stinkpipe.fi.intel.com (HELO stinkbox) ([10.237.72.74])
 by orsmga001.jf.intel.com with SMTP; 09 Feb 2024 04:54:06 -0800
Received: by stinkbox (sSMTP sendmail emulation);
 Fri, 09 Feb 2024 14:54:05 +0200
Date: Fri, 9 Feb 2024 14:54:05 +0200
From: Ville =?iso-8859-1?Q?Syrj=E4l=E4?= <ville.syrjala@linux.intel.com>
To: Jani Nikula <jani.nikula@linux.intel.com>
Cc: intel-gfx@lists.freedesktop.org
Subject: Re: [PATCH 00/13] drm/i915: drm_dbg_kms() conversions and cleanups
Message-ID: <ZcYgbcy_t5jMpZri@intel.com>
References: <20240208151720.7866-1-ville.syrjala@linux.intel.com>
 <87o7crar7d.fsf@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=iso-8859-1
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <87o7crar7d.fsf@intel.com>
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

On Thu, Feb 08, 2024 at 05:52:38PM +0200, Jani Nikula wrote:
> On Thu, 08 Feb 2024, Ville Syrjala <ville.syrjala@linux.intel.com> wrote:
> > From: Ville Syrjälä <ville.syrjala@linux.intel.com>
> >
> > Convert a bunch of lingering DRM_DEBUG_KMS() & co. to the
> > per-device drm_dbg_kms() variants. The stuff remining after this
> > are DVO encoder drivers, DMI match functions, and ACPI/DSM stuff.
> >
> > And also include a bit of other house cleaning I spotted.
> >
> > Ville Syrjälä (13):
> >   drm/i915: Correct for_each_old_global_obj_in_state() arguments
> >   drm/i915/sdvo: Convert to per-device debugs
> >   drm/i915/sdvo: Fix up code alignment
> >   drm/i915/color: Use per-device debugs
> >   drm/i915/fb: Use per-device debugs
> >   drm/i915/bios: Switch to kms debugs
> >   drm/i915/bios: Use per-device debugs for VBT related stuff
> >   drm/i915/hdcp: Use per-device debugs
> >   drm/i915/wm: Pass the whole i916 to intel_get_cxsr_latency()
> 
> Off by one in the subject there. ;)

Doh. I did spot that myself but then forgot to fix it
anyway.

> 
> Other than that, the series is
> 
> Reviewed-by: Jani Nikula <jani.nikula@intel.com>

Thanks. Pushed the lot.

> 
> 
> >   drm/i915/wm: Use per-device debugs in pre-ilk wm code
> >   drm/i915/wm: Use per-device debugs ilk wm code
> >   drm/i915/dvo/ns2501: Nuke pointless casts
> >   drm/i915/dvo: Use sizeof(*variable) instead of sizeof(type)
> >
> >  drivers/gpu/drm/i915/display/dvo_ch7017.c     |   2 +-
> >  drivers/gpu/drm/i915/display/dvo_ch7xxx.c     |   2 +-
> >  drivers/gpu/drm/i915/display/dvo_ivch.c       |   2 +-
> >  drivers/gpu/drm/i915/display/dvo_ns2501.c     |   6 +-
> >  drivers/gpu/drm/i915/display/dvo_sil164.c     |   2 +-
> >  drivers/gpu/drm/i915/display/dvo_tfp410.c     |   2 +-
> >  drivers/gpu/drm/i915/display/i9xx_wm.c        |  81 +++----
> >  drivers/gpu/drm/i915/display/intel_bios.c     |  73 +++---
> >  drivers/gpu/drm/i915/display/intel_bios.h     |   3 +-
> >  drivers/gpu/drm/i915/display/intel_color.c    |  11 +-
> >  drivers/gpu/drm/i915/display/intel_dp_hdcp.c  |  12 +-
> >  drivers/gpu/drm/i915/display/intel_fb.c       |   7 +-
> >  .../gpu/drm/i915/display/intel_global_state.h |   4 +-
> >  drivers/gpu/drm/i915/display/intel_opregion.c |   6 +-
> >  drivers/gpu/drm/i915/display/intel_sdvo.c     | 217 ++++++++++--------
> >  15 files changed, 233 insertions(+), 197 deletions(-)
> 
> -- 
> Jani Nikula, Intel

-- 
Ville Syrjälä
Intel
