Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 9F8B79B4552
	for <lists+intel-gfx@lfdr.de>; Tue, 29 Oct 2024 10:10:59 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 31AC210E5E8;
	Tue, 29 Oct 2024 09:10:58 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="aIeNF1qD";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.17])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 5241810E5EB;
 Tue, 29 Oct 2024 09:10:57 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1730193057; x=1761729057;
 h=from:to:subject:in-reply-to:references:date:message-id:
 mime-version; bh=lkMe9iQJhnuIjC0x9QBbD6lhYRAeIa8hp5rxicRiKmk=;
 b=aIeNF1qDB/vt9qTbZ7kdK/D4zsvcdZFsNmhGa18z14KIJTExhbXkjezy
 I+PbW/8518jpWruNaFs6kVp39xBHMakoNM7kqnEiIYLOvsry6vrjxU0Wa
 0/PtHdqBWhfz3sh8XCgqyePrU/Zn67p+euUDzelpfONBOVpi8mAf27Cnm
 zJwoy4XDlYAs+CGxromUru9xNGjvrSJNMKLjTnJnE+jaqMH8vcekAYCQp
 sO3dMcIss4RRP2mLbbmdO5V7Um0auvdi5ECSYMYMgPW9/s1wbcxEVF1dc
 gk8ZZiEw2dMZb478yYnwdkm/YSnfgxo0BA+Vlmyc5QIFd5cl6KkCEmGII A==;
X-CSE-ConnectionGUID: PXZ7dLnQTbuuS2u7144bZA==
X-CSE-MsgGUID: gp2cum85TEewJy5moZUfcA==
X-IronPort-AV: E=McAfee;i="6700,10204,11239"; a="29721875"
X-IronPort-AV: E=Sophos;i="6.11,241,1725346800"; d="scan'208";a="29721875"
Received: from fmviesa002.fm.intel.com ([10.60.135.142])
 by fmvoesa111.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 29 Oct 2024 02:10:57 -0700
X-CSE-ConnectionGUID: 82qCI+2lR/mpLIiJs27rxg==
X-CSE-MsgGUID: mdxjYWdwRwWNkAV5Sf+V3g==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.11,241,1725346800"; d="scan'208";a="105242380"
Received: from bergbenj-mobl1.ger.corp.intel.com (HELO localhost)
 ([10.245.246.69])
 by fmviesa002-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 29 Oct 2024 02:10:55 -0700
From: Jani Nikula <jani.nikula@linux.intel.com>
To: Clint Taylor <clinton.a.taylor@intel.com>,
 intel-gfx@lists.freedesktop.org, intel-xe@lists.freedesktop.org
Subject: Re: [PATCH v6 0/9] drm/i915/xe3lpd: ptl display patches
In-Reply-To: <20241028193015.3241858-1-clinton.a.taylor@intel.com>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
References: <20241028193015.3241858-1-clinton.a.taylor@intel.com>
Date: Tue, 29 Oct 2024 11:10:53 +0200
Message-ID: <87plnjnujm.fsf@intel.com>
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

On Mon, 28 Oct 2024, Clint Taylor <clinton.a.taylor@intel.com> wrote:
> This series has all review comments addressed and review-by's. Basic
> enabling is now complete to start testing.

Acked-by: Jani Nikula <jani.nikula@intel.com>

>
> Clint Taylor (1):
>   drm/i915/cx0: Remove bus reset after every c10 transaction
>
> Dnyaneshwar Bhadane (3):
>   drm/i915/ptl: Define IS_PANTHERLAKE macro
>   drm/i915/cx0: Extend C10 check to PTL
>   drm/i915/xe3lpd: Move async flip bit to PLANE_SURF register
>
> Haridhar Kalvala (1):
>   drm/xe/ptl: Enable PTL display
>
> Heikkila, Juha-pekka (1):
>   drm/i915/display/xe3: disable x-tiled framebuffers
>
> Matt Roper (1):
>   drm/i915/xe3lpd: Update pmdemand programming
>
> Ravi Kumar Vodapalli (1):
>   drm/i915/xe3: Underrun recovery does not exist post Xe2
>
> Suraj Kandpal (1):
>   drm/i915/xe3lpd: Add check to see if edp over type c is allowed
>
>  drivers/gpu/drm/i915/display/intel_cx0_phy.c  | 12 +++-
>  .../gpu/drm/i915/display/intel_cx0_phy_regs.h |  3 +
>  drivers/gpu/drm/i915/display/intel_display.c  |  2 +-
>  .../drm/i915/display/intel_display_device.c   |  5 ++
>  .../drm/i915/display/intel_display_device.h   |  1 +
>  drivers/gpu/drm/i915/display/intel_dp.c       |  7 +-
>  drivers/gpu/drm/i915/display/intel_fb.c       |  2 +-
>  drivers/gpu/drm/i915/display/intel_pmdemand.c | 69 +++++++++++++------
>  drivers/gpu/drm/i915/display/intel_pmdemand.h |  4 +-
>  .../drm/i915/display/skl_universal_plane.c    | 13 ++--
>  .../i915/display/skl_universal_plane_regs.h   |  1 +
>  drivers/gpu/drm/i915/i915_drv.h               |  1 +
>  drivers/gpu/drm/i915/i915_reg.h               |  1 +
>  .../gpu/drm/xe/compat-i915-headers/i915_drv.h |  1 +
>  drivers/gpu/drm/xe/xe_pci.c                   |  2 +-
>  15 files changed, 89 insertions(+), 35 deletions(-)

-- 
Jani Nikula, Intel
