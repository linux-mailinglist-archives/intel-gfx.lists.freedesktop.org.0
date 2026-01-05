Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 1604FCF37AE
	for <lists+intel-gfx@lfdr.de>; Mon, 05 Jan 2026 13:19:05 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id A45F710E0B5;
	Mon,  5 Jan 2026 12:19:03 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="jGa2D2AV";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.20])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 5E3D110E0A2;
 Mon,  5 Jan 2026 12:19:02 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1767615543; x=1799151543;
 h=from:to:cc:subject:in-reply-to:references:date:
 message-id:mime-version;
 bh=mQ5IqI5ZvrTzUfCLBMhJRlBsJI4RKPY7ZRIlvSa3n7I=;
 b=jGa2D2AVkHcuyBEUICwAlDHAcGm9bVB9nWP5yD31y/dA7EhrlnoWoEVV
 HA52fX733s9OrBcdr7izS0GI8cNv4I3p2yi7ZUnuJ7FtRympkJ2MdRe+S
 9qyoKKEaJJHu8matcQFfkU0urB0dup2JyKQbuFSxhlL0xyn5J02ASrnfP
 m0iKu0ahLBzaQDGX80PJdU+muR6dFARPdMbl16s2KdxFrI/EtyqgGUxkK
 QlcAaiyD/L1o870Je8tu2t8ZCsPk+SRM71pL6mDZX8aMzkyE+GsrkJHBI
 InWL5pDS38dXZpZ1VIo6JwOGG8Qf4K72E5gsVr5YVvaf6eC94Rsi3flRZ Q==;
X-CSE-ConnectionGUID: GXFsZ4U0Ra29ue7mHO/Vtw==
X-CSE-MsgGUID: StLxYlIUQZmQwk6HBk17Uw==
X-IronPort-AV: E=McAfee;i="6800,10657,11661"; a="68719399"
X-IronPort-AV: E=Sophos;i="6.21,203,1763452800"; d="scan'208";a="68719399"
Received: from orviesa005.jf.intel.com ([10.64.159.145])
 by orvoesa112.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 05 Jan 2026 04:19:02 -0800
X-CSE-ConnectionGUID: ue7VCXaqRuGkIPD/hRkjxQ==
X-CSE-MsgGUID: KPIDBYDvQMa15S5E5mFfIA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.21,203,1763452800"; d="scan'208";a="207408763"
Received: from ettammin-mobl2.ger.corp.intel.com (HELO localhost)
 ([10.245.246.3])
 by orviesa005-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 05 Jan 2026 04:19:00 -0800
From: Jani Nikula <jani.nikula@linux.intel.com>
To: Ankit Nautiyal <ankit.k.nautiyal@intel.com>,
 intel-gfx@lists.freedesktop.org, intel-xe@lists.freedesktop.org
Cc: Ankit Nautiyal <ankit.k.nautiyal@intel.com>
Subject: Re: [PATCH 0/9] drm/i915/display: Fix the SPDX license identifier
 for C headers
In-Reply-To: <20260105113544.574323-1-ankit.k.nautiyal@intel.com>
Organization: Intel Finland Oy - BIC 0357606-4 - c/o Alberga Business Park,
 6 krs Bertel Jungin Aukio 5, 02600 Espoo, Finland
References: <20260105113544.574323-1-ankit.k.nautiyal@intel.com>
Date: Mon, 05 Jan 2026 14:18:57 +0200
Message-ID: <29065e980dbc049422c07f9466c241a0505dfb29@intel.com>
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

On Mon, 05 Jan 2026, Ankit Nautiyal <ankit.k.nautiyal@intel.com> wrote:
> As per the Linux kernel licensing rules [1], the SPDX license identifier
> comment style for a C header file should be:
> /* SPDX-License-Identifier: <SPDX License Expression> */

With the extra blank line removed in patch 8, the series is

Reviewed-by: Jani Nikula <jani.nikula@intel.com>


>
> This series fixes the SPDX identifier comments in the header files under
> drm/i915/display to align with these rules.
>
> Note : There are some older files that do not have the SPDX license
> identifiers at all. Perhaps those can be addressed separately in a future
> cleanup series.
>
> [1] https://www.kernel.org/doc/html/latest/process/license-rules.html
>
> Ankit Nautiyal (9):
>   drm/i915/intel_alpm: Fix the SPDX identifier comment
>   drm/i915/intel_cx0_phy: Fix the SPDX identifier comment
>   drm/i915/intel_cx0_phy_regs: Fix the SPDX identifier comment
>   drm/i915/intel_display_params: Fix the SPDX identifier comment
>   drm/i915/intel_dsb: Fix the SPDX identifier comment
>   drm/i915/intel_dsb_buffer: Fix the SPDX identifier comment
>   drm/i915/intel_gvt_api: Fix the SPDX identifier comment
>   drm/i915/intel_lt_phy: Fix the SPDX identifier comment
>   drm/i915/lt_phy_regs: Fix the SPDX identifier comment
>
>  drivers/gpu/drm/i915/display/intel_alpm.h           | 4 ++--
>  drivers/gpu/drm/i915/display/intel_cx0_phy.h        | 2 +-
>  drivers/gpu/drm/i915/display/intel_cx0_phy_regs.h   | 4 ++--
>  drivers/gpu/drm/i915/display/intel_display_params.h | 2 +-
>  drivers/gpu/drm/i915/display/intel_dsb.h            | 4 ++--
>  drivers/gpu/drm/i915/display/intel_dsb_buffer.h     | 4 ++--
>  drivers/gpu/drm/i915/display/intel_gvt_api.h        | 4 ++--
>  drivers/gpu/drm/i915/display/intel_lt_phy.h         | 3 ++-
>  drivers/gpu/drm/i915/display/intel_lt_phy_regs.h    | 4 ++--
>  9 files changed, 16 insertions(+), 15 deletions(-)

-- 
Jani Nikula, Intel
