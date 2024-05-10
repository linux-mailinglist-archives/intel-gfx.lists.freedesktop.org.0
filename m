Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 1307D8C261F
	for <lists+intel-gfx@lfdr.de>; Fri, 10 May 2024 15:55:17 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 6CE7E10EC18;
	Fri, 10 May 2024 13:55:14 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="a13jeYJ0";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.10])
 by gabe.freedesktop.org (Postfix) with ESMTPS id D103310E12B
 for <intel-gfx@lists.freedesktop.org>; Fri, 10 May 2024 13:55:12 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1715349313; x=1746885313;
 h=from:to:subject:in-reply-to:references:date:message-id:
 mime-version; bh=FnkjXC4i6xl2Mr5cMoLCB/KhnXlWHwdYFqJLTaZI2aw=;
 b=a13jeYJ04koPNm0ueEXeHsuYvIwRpAQvJjBIM9DvMZMPu78HRFF9ngZx
 TU1F+ERXyGGXW0J/8CmUuWSr0UHbE6dvAIOXudlyMt0TEeKJ7+qGGSHJb
 JgGX0+m90+P8LXz3pbaFsNBKSqiC5KqSM6yN+IQq19K6Se1zQI1VWFXcL
 W4RIb9SzMZ5sjSFxIHZKyU8+Il3mpdFMIEnSBDGJFN1/o8b6EpiZ5eTEZ
 JXg+WPYnD7ptTvnjH5VuCsnSJADQGjYhojQfxSZBfHkMXz528flLvB0zq
 9UtD8sJPYUNXEjwj87PBvTFtP93Ec0gPqeZhQ+3mcgU+01yx930rCm6cF w==;
X-CSE-ConnectionGUID: WCwPJ3fJTtKrQtLN7yBrBg==
X-CSE-MsgGUID: A/JMGsF9TV+nqGAaxIOCAg==
X-IronPort-AV: E=McAfee;i="6600,9927,11068"; a="28813859"
X-IronPort-AV: E=Sophos;i="6.08,151,1712646000"; d="scan'208";a="28813859"
Received: from fmviesa009.fm.intel.com ([10.60.135.149])
 by orvoesa102.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 10 May 2024 06:55:12 -0700
X-CSE-ConnectionGUID: 9M6OUe/gQMSvVZH3zR5YBA==
X-CSE-MsgGUID: uKb4RQYDRD21FGkJ097vkQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.08,151,1712646000"; d="scan'208";a="29632278"
Received: from ettammin-desk.ger.corp.intel.com (HELO localhost)
 ([10.245.246.180])
 by fmviesa009-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 10 May 2024 06:55:10 -0700
From: Jani Nikula <jani.nikula@intel.com>
To: intel-gfx@lists.freedesktop.org, Bjorn Helgaas <bhelgaas@google.com>,
 linux-pci@vger.kernel.org
Subject: Re: [PATCH 0/8] drm/i915/pciids: PCI ID macro cleanups
In-Reply-To: <cover.1715340032.git.jani.nikula@intel.com>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
References: <cover.1715340032.git.jani.nikula@intel.com>
Date: Fri, 10 May 2024 16:55:07 +0300
Message-ID: <87ikzlhiv8.fsf@intel.com>
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

On Fri, 10 May 2024, Jani Nikula <jani.nikula@intel.com> wrote:
> This is a spin-off from [1], including just the PCI ID macro cleanups,
> as well as adding a bunch more cleanups.
>
> BR,
> Jani.
>
> [1] https://lore.kernel.org/all/cover.1715086509.git.jani.nikula@intel.com/
>
>
> Jani Nikula (8):
>   drm/i915/pciids: add INTEL_PNV_IDS(), use acronym
>   drm/i915/pciids: add INTEL_ILK_IDS(), use acronym
>   drm/i915/pciids: add INTEL_SNB_IDS()
>   drm/i915/pciids: add INTEL_IVB_IDS()
>   drm/i915/pciids: don't include WHL/CML PCI IDs in CFL
>   drm/i915/pciids: remove 11 from INTEL_ICL_IDS()
>   drm/i915/pciids: remove 12 from INTEL_TGL_IDS()
>   drm/i915/pciids: don't include RPL-U PCI IDs in RPL-P
>
>  arch/x86/kernel/early-quirks.c                | 19 +++---

Bjorn, ack for merging this via drm-intel-next?

BR,
Jani.


>  .../drm/i915/display/intel_display_device.c   | 20 +++---
>  drivers/gpu/drm/i915/i915_pci.c               | 13 ++--
>  drivers/gpu/drm/i915/intel_device_info.c      |  3 +-
>  include/drm/i915_pciids.h                     | 67 ++++++++++++-------
>  5 files changed, 71 insertions(+), 51 deletions(-)

-- 
Jani Nikula, Intel
