Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id B08ADA05E71
	for <lists+intel-gfx@lfdr.de>; Wed,  8 Jan 2025 15:19:22 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 0B8A010E425;
	Wed,  8 Jan 2025 14:19:21 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="DTmbHNHn";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.8])
 by gabe.freedesktop.org (Postfix) with ESMTPS id F1D5310E425;
 Wed,  8 Jan 2025 14:19:19 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1736345960; x=1767881960;
 h=from:to:subject:in-reply-to:references:date:message-id:
 mime-version; bh=+4rFzPS5pwsGpL7qrHpwI9c2LBdSYjPEI62UzznfD30=;
 b=DTmbHNHn3VJGY4cB2sqHyEuiRWquGJlsRORvNU1jmIMKGgK2magSb8Zj
 r9hv1Et5d6KnY7N4qKof6loifXiVo8OhdI5DrJIaxp2j6Bl74hgPB97PZ
 ST229CzjSETowfscQ8mBRcKUFsqjEAwEx1ZTWxMetFBC95IonaRAly4K7
 AO9/WtU4gX5LgqvHGwh6zy7DhII9mDducr9M4WbMa0zZAfRtlY9qyvhdk
 SbAdLTyMSaT9YMJHDGnTEybVxgJYpz1MAC2P45l3njXYLFsmweTBWJgzv
 0DHZzrbFVBMQZd0OwGXlG5J/eQ3XudPLEfJ3CVj/5xJhHvVSx8v8JD9Hf A==;
X-CSE-ConnectionGUID: AVs3PhOoQmKijxu14AMt1w==
X-CSE-MsgGUID: 9PCBru/LSyGPXr+urb/USQ==
X-IronPort-AV: E=McAfee;i="6700,10204,11309"; a="54121925"
X-IronPort-AV: E=Sophos;i="6.12,298,1728975600"; d="scan'208";a="54121925"
Received: from fmviesa008.fm.intel.com ([10.60.135.148])
 by fmvoesa102.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 08 Jan 2025 06:19:19 -0800
X-CSE-ConnectionGUID: mZV1OLHeRb+tTtXFay3eOg==
X-CSE-MsgGUID: D9AP4aM6Qk2yKuFF9tkf9g==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.12,298,1728975600"; d="scan'208";a="103332225"
Received: from klitkey1-mobl1.ger.corp.intel.com (HELO localhost)
 ([10.245.246.152])
 by fmviesa008-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 08 Jan 2025 06:19:19 -0800
From: Jani Nikula <jani.nikula@intel.com>
To: Gustavo Sousa <gustavo.sousa@intel.com>,
 intel-gfx@lists.freedesktop.org, intel-xe@lists.freedesktop.org
Subject: Re: [PATCH v4 0/2] drm/i915/cmtg: Disable the CMTG
In-Reply-To: <20250104172937.64015-1-gustavo.sousa@intel.com>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
References: <20250104172937.64015-1-gustavo.sousa@intel.com>
Date: Wed, 08 Jan 2025 16:19:14 +0200
Message-ID: <87ldvll76l.fsf@intel.com>
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

On Sat, 04 Jan 2025, Gustavo Sousa <gustavo.sousa@intel.com> wrote:
> Next version of [1], with review comments addressed.
>
> Note that I have added one extra "squash patch", because I was not sure that was
> the correct way of handling sanitization and thought that having it separate
> would make it easier for reviewers to check the change.

I'm sorry, this is really hard for me to follow. Please just send the
actual patch you're suggesting. You can easily preserve the alternatives
in local branches in case you need to backtrack.

I did try to apply and squash this myself, but it's also conflicting
now.

BR,
Jani.



>
> [1] https://lore.kernel.org/all/20241224165408.43778-1-gustavo.sousa@intel.com/
>
> Gustavo Sousa (2):
>   drm/i915/cmtg: Disable the CMTG
>   squash! drm/i915/cmtg: Disable the CMTG
>
>  drivers/gpu/drm/i915/Makefile                 |   1 +
>  drivers/gpu/drm/i915/display/intel_cmtg.c     | 251 ++++++++++++++++++
>  drivers/gpu/drm/i915/display/intel_cmtg.h     |  18 ++
>  .../gpu/drm/i915/display/intel_cmtg_regs.h    |  21 ++
>  .../gpu/drm/i915/display/intel_display_core.h |   4 +
>  .../drm/i915/display/intel_display_device.h   |   1 +
>  .../drm/i915/display/intel_display_driver.c   |   5 +
>  .../drm/i915/display/intel_modeset_setup.c    |  20 +-
>  drivers/gpu/drm/i915/i915_reg.h               |   1 +
>  drivers/gpu/drm/xe/Makefile                   |   1 +
>  10 files changed, 318 insertions(+), 5 deletions(-)
>  create mode 100644 drivers/gpu/drm/i915/display/intel_cmtg.c
>  create mode 100644 drivers/gpu/drm/i915/display/intel_cmtg.h
>  create mode 100644 drivers/gpu/drm/i915/display/intel_cmtg_regs.h

-- 
Jani Nikula, Intel
