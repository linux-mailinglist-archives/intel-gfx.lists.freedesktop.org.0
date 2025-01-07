Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 729AFA04784
	for <lists+intel-gfx@lfdr.de>; Tue,  7 Jan 2025 18:05:53 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 1696610E758;
	Tue,  7 Jan 2025 17:05:52 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="BXWdGtbm";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.9])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 6C0C810E75A;
 Tue,  7 Jan 2025 17:05:49 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1736269551; x=1767805551;
 h=from:to:cc:subject:in-reply-to:references:date:
 message-id:mime-version;
 bh=W6pls0YzCvqR8pi1pOBKX9dp8Xv1Wnj7nhG6d0NIGNQ=;
 b=BXWdGtbmiGnEOoxXRFP076zAINVWS/UrcGwc6zKWC5KdS2gFjHALKKtS
 y9hQOOSOJVKpo2YZZeoVq2yf/ISO0F2OEpPyU9AyljQ2wjyrskwWMlLnf
 AMxtBXTNbynggHrpXFi+TcdQ4a9UBIL3t/fsvVG55SOW5aPsj9zzMitAD
 KC3rJf/Iwa8CH1BD2YGubOM+ejHKScgy3ludRSEwRemjZB7wL+pBUfyJY
 xv9hmU1nnKcO4qTli5iAbdoL/z0fbNQVtkfQ1xEB/UCmISVdLbfItTV5c
 S3BdlMCLkB7EfDbX3V/MHqBOmOanqkqbas/iG9ZmnpgDDqArwJkFHdhbw g==;
X-CSE-ConnectionGUID: z+i2jlXnQ16PXo/xFCJCBw==
X-CSE-MsgGUID: FRhwHUKKQmm0IRTVX73gMg==
X-IronPort-AV: E=McAfee;i="6700,10204,11308"; a="58929700"
X-IronPort-AV: E=Sophos;i="6.12,296,1728975600"; d="scan'208";a="58929700"
Received: from orviesa009.jf.intel.com ([10.64.159.149])
 by orvoesa101.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 07 Jan 2025 09:05:49 -0800
X-CSE-ConnectionGUID: HDy36DEwTpq7INxRNbYMOQ==
X-CSE-MsgGUID: 7MVNbHM1RSuQj7A19BUNbg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.12,296,1728975600"; d="scan'208";a="102646416"
Received: from cpetruta-mobl1.ger.corp.intel.com (HELO localhost)
 ([10.245.246.85])
 by orviesa009-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 07 Jan 2025 09:05:47 -0800
From: Jani Nikula <jani.nikula@intel.com>
To: intel-gfx@lists.freedesktop.org, intel-xe@lists.freedesktop.org
Cc: imre.deak@intel.com
Subject: Re: [PATCH v3 00/16] drm/i915/dp: 128b/132b uncompressed SST
In-Reply-To: <cover.1735912293.git.jani.nikula@intel.com>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
References: <cover.1735912293.git.jani.nikula@intel.com>
Date: Tue, 07 Jan 2025 19:05:44 +0200
Message-ID: <87ttaalfkn.fsf@intel.com>
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

On Fri, 03 Jan 2025, Jani Nikula <jani.nikula@intel.com> wrote:
> This is v4 of [1], enabling uncompressed 128b/132b UHBR SST.
>
> Address review comments from Imre.

Thanks for the review, pushed to drm-intel-next.

BR,
Jani.

>
> [1] https://lore.kernel.org/r/cover.1734643485.git.jani.nikula@intel.com
>
> Jani Nikula (16):
>   drm/mst: remove mgr parameter and debug logging from
>     drm_dp_get_vc_payload_bw()
>   drm/i915/mst: drop connector parameter from intel_dp_mst_bw_overhead()
>   drm/i915/mst: drop connector parameter from intel_dp_mst_compute_m_n()
>   drm/i915/mst: change return value of
>     mst_stream_find_vcpi_slots_for_bpp()
>   drm/i915/mst: remove crtc_state->pbn
>   drm/i915/mst: split out a helper for figuring out the TU
>   drm/i915/mst: adapt intel_dp_mtp_tu_compute_config() for 128b/132b SST
>   drm/i915/ddi: enable 128b/132b TRANS_DDI_FUNC_CTL mode for UHBR SST
>   drm/i915/ddi: 128b/132b SST also needs DP_TP_CTL_MODE_MST
>   drm/i915/ddi: write payload for 128b/132b SST
>   drm/i915/ddi: initialize 128b/132b SST DP2 VFREQ registers
>   drm/i915/ddi: enable ACT handling for 128b/132b SST
>   drm/i915/ddi: start distinguishing 128b/132b SST and MST at state
>     readout
>   drm/i915/ddi: handle 128b/132b SST in intel_ddi_read_func_ctl()
>   drm/i915/ddi: disable trancoder port select for 128b/132b SST
>   drm/i915/dp: compute config for 128b/132b SST w/o DSC
>
>  drivers/gpu/drm/display/drm_dp_mst_topology.c |  10 +-
>  drivers/gpu/drm/i915/display/intel_ddi.c      | 122 ++++++++--
>  .../drm/i915/display/intel_display_types.h    |   2 -
>  drivers/gpu/drm/i915/display/intel_dp.c       |  34 ++-
>  drivers/gpu/drm/i915/display/intel_dp_mst.c   | 218 +++++++++---------
>  drivers/gpu/drm/i915/display/intel_dp_mst.h   |   7 +
>  drivers/gpu/drm/nouveau/dispnv50/disp.c       |   3 +-
>  .../gpu/drm/tests/drm_dp_mst_helper_test.c    |  17 +-
>  include/drm/display/drm_dp_mst_helper.h       |   3 +-
>  9 files changed, 259 insertions(+), 157 deletions(-)

-- 
Jani Nikula, Intel
