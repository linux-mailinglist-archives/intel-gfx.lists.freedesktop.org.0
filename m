Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 2153996B784
	for <lists+intel-gfx@lfdr.de>; Wed,  4 Sep 2024 11:56:57 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 2113610E72C;
	Wed,  4 Sep 2024 09:56:55 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="gmM0EpYw";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.13])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 38E5410E72C;
 Wed,  4 Sep 2024 09:56:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1725443814; x=1756979814;
 h=from:to:cc:subject:in-reply-to:references:date:
 message-id:mime-version;
 bh=uOpY6pBbY8+sofMp5HwWCX9Rj4x5E+eWT/c0ceGCS8c=;
 b=gmM0EpYwxUeb7nLp4s/rpoeZ9oz/K8QnLiEV5aA27E0sX6U2p6CI8sXE
 WGABBqhnYpHTZaHWDPAm9vWWApFZ5hHn9psCksaCSbSBL388GnDq0p6in
 bYjRTbN4XcLwq02j3wCNpCLu3A6/9t0tcJ0wQooLBW/pwEbW5C5pPS0rv
 riG70LMDiRhJV/fe5ZN2DF8qFMmuZg9Vnc0JTz5gvKT8HVkmlJs+dDDkv
 ZpdJAgyhGKmQuxwEVeUHD6YYjWcxvSeO7VbexYECL7Z8KR5icBsDYVOWG
 N1DNwQpOY0AJeEjMkc9KL9fSKJkXhIyLITDWvAjuSfQa9T73jiYOrLJe0 A==;
X-CSE-ConnectionGUID: Zj0GQch/Qxu+xkFey+VCTQ==
X-CSE-MsgGUID: eKDzQrDkRV6PuMpmD2/fdg==
X-IronPort-AV: E=McAfee;i="6700,10204,11184"; a="27011560"
X-IronPort-AV: E=Sophos;i="6.10,201,1719903600"; d="scan'208";a="27011560"
Received: from fmviesa008.fm.intel.com ([10.60.135.148])
 by fmvoesa107.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 04 Sep 2024 02:56:13 -0700
X-CSE-ConnectionGUID: ZeIiJMIkT3i+iDEB4VvLQA==
X-CSE-MsgGUID: WcXOA7AtTGG4iqenHLgfBg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.10,201,1719903600"; d="scan'208";a="65268994"
Received: from cpetruta-mobl1.ger.corp.intel.com (HELO localhost)
 ([10.245.246.18])
 by fmviesa008-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 04 Sep 2024 02:56:11 -0700
From: Jani Nikula <jani.nikula@intel.com>
To: intel-gfx@lists.freedesktop.org, intel-xe@lists.freedesktop.org
Cc: rodrigo.vivi@intel.com, lucas.demarchi@intel.com
Subject: Re: [PATCH 0/8] drm/i915 & drm/xe: shared PCI ID macros
In-Reply-To: <cover.1725297097.git.jani.nikula@intel.com>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
References: <cover.1725297097.git.jani.nikula@intel.com>
Date: Wed, 04 Sep 2024 12:55:54 +0300
Message-ID: <87le07spxx.fsf@intel.com>
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

On Mon, 02 Sep 2024, Jani Nikula <jani.nikula@intel.com> wrote:
> There's considerable overlap in i915 and xe PCI ID macros, and (as can
> be seen in this series) they get updated out of sync. With i915 display
> continuing to use PCI IDs for platforms that i915 core does not support,
> but xe does, the duplication will just increase. Just use a single file
> for all of them.
>
> BR,
> Jani.
>
> Jani Nikula (8):
>   drm/i915/pciids: use designated initializers in INTEL_VGA_DEVICE()
>   drm/i915/pciids: separate ARL and MTL PCI IDs

Sent these for drm-intel-next:

https://lore.kernel.org/r/cover.1725443418.git.jani.nikula@intel.com

>   drm/xe/pciids: add some missing ADL-N PCI IDs
>   drm/xe/pciids: separate RPL-U and RPL-P PCI IDs
>   drm/xe/pciids: separate ARL and MTL PCI IDs

Sent these for drm-xe-next:

https://lore.kernel.org/r/cover.1725443121.git.jani.nikula@intel.com

>   drm/i915/pciids: add PVC PCI ID macros
>   drm/intel/pciids: rename i915_pciids.h to just pciids.h
>   drm/xe: switch to common PCI ID macros

Dropping these for now, but I might resurrect the idea after the merge
window.


BR,
Jani.

>
>  arch/x86/kernel/early-quirks.c                |   2 +-
>  .../drm/i915/display/intel_display_device.c   |   3 +-
>  drivers/gpu/drm/i915/i915_pci.c               |   3 +-
>  drivers/gpu/drm/i915/intel_device_info.c      |   2 +-
>  drivers/gpu/drm/xe/xe_pci.c                   |  49 ++--
>  include/drm/intel/{i915_pciids.h => pciids.h} |  63 ++---
>  include/drm/intel/xe_pciids.h                 | 218 ------------------
>  7 files changed, 64 insertions(+), 276 deletions(-)
>  rename include/drm/intel/{i915_pciids.h => pciids.h} (96%)
>  delete mode 100644 include/drm/intel/xe_pciids.h

-- 
Jani Nikula, Intel
