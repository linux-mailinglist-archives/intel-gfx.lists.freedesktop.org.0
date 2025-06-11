Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 6610BAD57AE
	for <lists+intel-gfx@lfdr.de>; Wed, 11 Jun 2025 15:56:21 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id B1DFC10E661;
	Wed, 11 Jun 2025 13:56:18 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="LbkgQrb3";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.17])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 2B4E910E661;
 Wed, 11 Jun 2025 13:56:17 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1749650177; x=1781186177;
 h=from:to:cc:subject:in-reply-to:references:date:
 message-id:mime-version;
 bh=kjh0xW7jhcW8dThapLlci++MPBYErQdzyJa9Gdplj/A=;
 b=LbkgQrb31n0uZvb4qGWuqfvAxIFgQokuijhAPBoUdb6K0/5HtCIO4IVK
 nv93Z2wtVAlbHQGiOdyBdrryB52GUtnL1bp0JbIf2iVSjgpDpf2hgXvPx
 fZiVTwiKeERKZCDCT6lvMPBhSbMMZn1XAbSToUqxHEJlGVCbLmol+X0gN
 y6nM4L+FEU7wE/GNL+iXjri/MW+U6GbSaoYalML/JqffkBdMZCOrSrXAV
 W80dJw9jRQDAFpUwW9vwQg5CZgUiD1Q/+ogOuOTqvmytO7j95dC5tEypj
 JHd+xLGN7Y5YzuMc6VHWdVSIPoOctFt1Ylus/n9hsyXUvWV9Ad8CxyZ3X A==;
X-CSE-ConnectionGUID: OUdIEELqSrqEDjNZ8LJ5WQ==
X-CSE-MsgGUID: aBAYz6KVQnKM55P3Q/FuEw==
X-IronPort-AV: E=McAfee;i="6800,10657,11461"; a="51787063"
X-IronPort-AV: E=Sophos;i="6.16,228,1744095600"; d="scan'208";a="51787063"
Received: from fmviesa005.fm.intel.com ([10.60.135.145])
 by orvoesa109.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 11 Jun 2025 06:56:16 -0700
X-CSE-ConnectionGUID: Cah+HvC3Qzq9TtILcVWmyw==
X-CSE-MsgGUID: oB9mfZTiSWihxM/jvvAzdg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.16,228,1744095600"; d="scan'208";a="152095317"
Received: from mjarzebo-mobl1.ger.corp.intel.com (HELO localhost)
 ([10.245.246.209])
 by fmviesa005-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 11 Jun 2025 06:56:14 -0700
From: Jani Nikula <jani.nikula@linux.intel.com>
To: Dnyaneshwar Bhadane <dnyaneshwar.bhadane@intel.com>,
 intel-xe@lists.freedesktop.org
Cc: intel-gfx@lists.freedesktop.org, Dnyaneshwar Bhadane
 <dnyaneshwar.bhadane@intel.com>
Subject: Re: [PATCH v4 0/9] Add WildCat Lake support
In-Reply-To: <20250611134431.2761487-1-dnyaneshwar.bhadane@intel.com>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
References: <20250611134431.2761487-1-dnyaneshwar.bhadane@intel.com>
Date: Wed, 11 Jun 2025 16:56:11 +0300
Message-ID: <badc9c23f4baf043ab375cbb6cf31cc7260a0765@intel.com>
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

On Wed, 11 Jun 2025, Dnyaneshwar Bhadane <dnyaneshwar.bhadane@intel.com> wrote:
> Enable Wildcat Lake by adding PCI IDs and add the initial support GT, Media
> and Display workarounds.

Please figure out whether this should be merged via drm-intel-next or
drm-xe-next, and ask for appropriate acks in advance.

Thanks,
Jani.


>
> Dnyaneshwar Bhadane (3):
>   drm/i915/xe3lpd: Extend DMC path for display version 30.02
>   drm/i915/wcl: C10 phy connected to port A and B
>   drm/i915/xe3lpd: Extend WA 16023981245 for display 30.02
>
> Matt Atwood (2):
>   drm/i915/xe3lpd: Update bandwidth parameters for display version 30.02
>   drm/i915: Set max cdclk for display 30.02
>
> Matt Roper (4):
>   drm/i915/xe3lpd: Add support for display version 30.02
>   drm/xe/xe3: Add support for graphics IP version 30.03
>   drm/xe/xe3: Add support for media IP version 30.02
>   drm/xe: Add Wildcat Lake device IDs to PTL list
>
>  drivers/gpu/drm/i915/display/intel_atomic_plane.c   |  3 ++-
>  drivers/gpu/drm/i915/display/intel_bw.c             | 11 ++++++++++-
>  drivers/gpu/drm/i915/display/intel_cdclk.c          |  4 +++-
>  drivers/gpu/drm/i915/display/intel_cx0_phy.c        |  8 +++++++-
>  drivers/gpu/drm/i915/display/intel_display_device.c |  1 +
>  drivers/gpu/drm/i915/display/intel_dmc.c            |  3 ++-
>  drivers/gpu/drm/xe/xe_pci.c                         |  2 ++
>  drivers/gpu/drm/xe/xe_wa.c                          |  6 +++---
>  drivers/gpu/drm/xe/xe_wa_oob.rules                  | 11 ++++++-----
>  include/drm/intel/pciids.h                          |  4 +++-
>  10 files changed, 39 insertions(+), 14 deletions(-)

-- 
Jani Nikula, Intel
