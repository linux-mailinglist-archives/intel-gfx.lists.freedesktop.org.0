Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id C0E02A47A6A
	for <lists+intel-gfx@lfdr.de>; Thu, 27 Feb 2025 11:36:26 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 645D210E256;
	Thu, 27 Feb 2025 10:36:25 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="nBOI2lBK";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.13])
 by gabe.freedesktop.org (Postfix) with ESMTPS id BF02E10E248;
 Thu, 27 Feb 2025 10:36:23 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1740652584; x=1772188584;
 h=from:to:subject:in-reply-to:references:date:message-id:
 mime-version; bh=ACMT2Y86IWKEzw/MC2xuS+u+l90g57v9dO7RKlpqQZ4=;
 b=nBOI2lBKoutM71PD6jCG0UeJraVy1KSVaOUqID+H8ObjrbaeYcVWv2Ny
 KNofz1aGMgfonGt70ImZkCAfQe7c7Nr8OdkYOdf/os6rmk32Tvynb2TPz
 OuNaMNV1cFAkTPwPUCwciMMZObQTvh9NqkOOmDBk2y3U9NekUTGo26QcF
 72z5h0jKfOGKF5BUktyf/H61MEhrMk4+LFfIfvgiu/owPmqSAbs1wLjKb
 A1BdrUhMTZd/uTaxd5zN3g7uSRpWmAz+42K124tymQN0gMdSYAsyob5oG
 zXaDLTlpoyjeEMY8FFkcLvjdi4zgYKY+r9Y/JesLWTsfbpxR/Ex1KSq6p A==;
X-CSE-ConnectionGUID: IeDtshsGSCqcnzrgytHjwA==
X-CSE-MsgGUID: 5QmdmsFiSTKb1Kvu4ZFsNA==
X-IronPort-AV: E=McAfee;i="6700,10204,11357"; a="44360638"
X-IronPort-AV: E=Sophos;i="6.13,319,1732608000"; d="scan'208";a="44360638"
Received: from fmviesa005.fm.intel.com ([10.60.135.145])
 by fmvoesa107.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 27 Feb 2025 02:36:23 -0800
X-CSE-ConnectionGUID: siVsY+oSToSZ4tFgp+KP8g==
X-CSE-MsgGUID: XQ/Gq/3dSju57DmFb3IX4A==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.13,319,1732608000"; d="scan'208";a="121590724"
Received: from lfiedoro-mobl.ger.corp.intel.com (HELO localhost)
 ([10.245.246.181])
 by fmviesa005-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 27 Feb 2025 02:36:22 -0800
From: Jani Nikula <jani.nikula@intel.com>
To: "Kandpal, Suraj" <suraj.kandpal@intel.com>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>,
 "intel-xe@lists.freedesktop.org" <intel-xe@lists.freedesktop.org>
Subject: RE: [PATCH 00/12] drm/i915: struct intel_display conversions, part
 2434235
In-Reply-To: <SN7PR11MB675029123F2C57E96A96CB27E3CD2@SN7PR11MB6750.namprd11.prod.outlook.com>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
References: <cover.1740502116.git.jani.nikula@intel.com>
 <SN7PR11MB675029123F2C57E96A96CB27E3CD2@SN7PR11MB6750.namprd11.prod.outlook.com>
Date: Thu, 27 Feb 2025 12:36:19 +0200
Message-ID: <87y0xr3c9o.fsf@intel.com>
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

On Thu, 27 Feb 2025, "Kandpal, Suraj" <suraj.kandpal@intel.com> wrote:
>> -----Original Message-----
>> From: Intel-xe <intel-xe-bounces@lists.freedesktop.org> On Behalf Of Jani
>> Nikula
>> Sent: Tuesday, February 25, 2025 10:19 PM
>> To: intel-gfx@lists.freedesktop.org; intel-xe@lists.freedesktop.org
>> Cc: Nikula, Jani <jani.nikula@intel.com>
>> Subject: [PATCH 00/12] drm/i915: struct intel_display conversions, part
>> 2434235
>>
>> More of the same.
>
> LGTM,
> Reviewed-by: Suraj Kandpal <suraj.kandpal@intel.com>

Thanks for the review, pushed to drm-intel-next.

BR,
Jani.

> For the whole series
>
>>
>> Jani Nikula (12):
>>   drm/i915/display: remove leftover struct drm_i915_private forward
>>     declarations
>>   drm/i915/debugfs: continue display debugfs struct intel_display
>>     conversion
>>   drm/i915/tdf: convert intel_tdf.[ch] to struct intel_display
>>   drm/i915/snps: convert intel_snps_phy.[ch] to struct intel_display
>>   drm/i915/dkl: convert intel_dkl_phy.[ch] to struct intel_display
>>   drm/i915/drrs: convert intel_drrs.[ch] to struct intel_display
>>   drm/i915/display: convert the M/N functions to struct intel_display
>>   drm/i915/dpt: convert intel_dpt.[ch] interfaces to struct
>>     intel_display
>>   drm/i915/fbc: convert intel_fbc.[ch] to struct intel_display
>>   drm/i915/rps: convert intel_display_rps.[ch] to struct intel_display
>>   drm/i915/ddi: convert intel_wait_ddi_buf_idle() to struct
>>     intel_display
>>   drm/i915/fdi: convert intel_fdi.[ch] to struct intel_display
>>
>>  drivers/gpu/drm/i915/display/intel_atomic.h   |   1 -
>>  .../gpu/drm/i915/display/intel_atomic_plane.c |   8 +-
>>  drivers/gpu/drm/i915/display/intel_ddi.c      |  11 +-
>>  drivers/gpu/drm/i915/display/intel_ddi.h      |   4 +-
>>  .../drm/i915/display/intel_ddi_buf_trans.h    |   1 -
>>  drivers/gpu/drm/i915/display/intel_display.c  | 102 ++--
>>  drivers/gpu/drm/i915/display/intel_display.h  |   8 +-
>>  .../drm/i915/display/intel_display_debugfs.c  |  26 +-
>>  .../drm/i915/display/intel_display_debugfs.h  |   6 +-
>>  .../drm/i915/display/intel_display_driver.c   |   8 +-
>>  .../drm/i915/display/intel_display_power.c    |   2 +-
>>  .../gpu/drm/i915/display/intel_display_rps.c  |   4 +-
>>  .../gpu/drm/i915/display/intel_display_rps.h  |   4 +-
>>  drivers/gpu/drm/i915/display/intel_dkl_phy.c  |   8 +-
>>  drivers/gpu/drm/i915/display/intel_dkl_phy.h  |   3 +-
>>  drivers/gpu/drm/i915/display/intel_dp.c       |   7 +-
>>  drivers/gpu/drm/i915/display/intel_dpt.c      |  24 +-
>>  drivers/gpu/drm/i915/display/intel_dpt.h      |   7 +-
>>  drivers/gpu/drm/i915/display/intel_drrs.c     |  45 +-
>>  drivers/gpu/drm/i915/display/intel_drrs.h     |  10 +-
>>  drivers/gpu/drm/i915/display/intel_fbc.c      | 113 ++---
>>  drivers/gpu/drm/i915/display/intel_fbc.h      |   6 +-
>>  drivers/gpu/drm/i915/display/intel_fdi.c      | 464 +++++++++---------
>>  drivers/gpu/drm/i915/display/intel_fdi.h      |  16 +-
>>  .../gpu/drm/i915/display/intel_frontbuffer.c  |  11 +-
>>  drivers/gpu/drm/i915/display/intel_hdmi.h     |   1 -
>>  .../drm/i915/display/intel_modeset_verify.c   |   3 +-
>>  drivers/gpu/drm/i915/display/intel_overlay.h  |   1 -
>>  .../gpu/drm/i915/display/intel_pch_display.c  |  35 +-
>>  drivers/gpu/drm/i915/display/intel_pipe_crc.h |   1 -
>>  drivers/gpu/drm/i915/display/intel_snps_phy.c |  75 ++-
>>  drivers/gpu/drm/i915/display/intel_snps_phy.h |   6 +-
>>  drivers/gpu/drm/i915/display/intel_tdf.h      |   6 +-
>>  drivers/gpu/drm/i915/i915_driver.c            |   4 +-
>>  drivers/gpu/drm/xe/display/xe_display_rps.c   |   2 +-
>>  drivers/gpu/drm/xe/display/xe_tdf.c           |   6 +-
>>  36 files changed, 493 insertions(+), 546 deletions(-)
>>
>> --
>> 2.39.5
>

-- 
Jani Nikula, Intel
