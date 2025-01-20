Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id A3F06A16C9F
	for <lists+intel-gfx@lfdr.de>; Mon, 20 Jan 2025 13:57:53 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id EFCD710E351;
	Mon, 20 Jan 2025 12:57:51 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="PLgf7JaO";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.15])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 98B0D10E351;
 Mon, 20 Jan 2025 12:57:50 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1737377871; x=1768913871;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=LOP1Yvj3Cnj04OJjRzfrS6m8pB5BmhLieaCdbMpCWrw=;
 b=PLgf7JaOVVa9c2crLQfzE++RHAWFeDX/nF1A8ITd1uW5ZuzRqMI7a7kX
 d+7o9J59tpLHqqM+fvyNe6Jg3e5yhqlujhZT3wxNlmV2VLJV6QfODhfGS
 7zoQP+mQ40UmnpDjX90RdZ+HWW/XGmSwr2D7KtmixywTbYmGIInMXUgsW
 A56zyfFjejv4Vj/Wxg4qEPP9mqOWOx/4DCoybcsN/p6FY8k+Wgsw/xJ0Y
 dn3IxPDg0GjOIzduq1Y0sBGTyBz0pvCbLoqxxPrbui/kSjbkalEXFVy1s
 ZqTGHEpPZ5PxohvWeIj9lygY6J62yii0HwC+0j/+6edoHnz2KDtgqyv0T g==;
X-CSE-ConnectionGUID: kgTNei53RQuUwmJeajg4KA==
X-CSE-MsgGUID: oYZs86khRY6wTpm6pz0Gug==
X-IronPort-AV: E=McAfee;i="6700,10204,11321"; a="37930625"
X-IronPort-AV: E=Sophos;i="6.13,219,1732608000"; d="scan'208";a="37930625"
Received: from fmviesa006.fm.intel.com ([10.60.135.146])
 by fmvoesa109.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 20 Jan 2025 04:57:50 -0800
X-CSE-ConnectionGUID: C45E3iPfTNmppc12i57cxQ==
X-CSE-MsgGUID: b0s554BBQrWoKLEzgy9o5w==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.13,219,1732608000"; d="scan'208";a="106326405"
Received: from mgolanimitul-x299-ud4-pro.iind.intel.com ([10.190.239.114])
 by fmviesa006.fm.intel.com with ESMTP; 20 Jan 2025 04:57:48 -0800
From: Mitul Golani <mitulkumar.ajitkumar.golani@intel.com>
To: intel-gfx@lists.freedesktop.org,
	intel-xe@lists.freedesktop.org
Cc: ankit.k.nautiyal@intel.com, jani.nikula@intel.com, ville.syrjala@intel.com
Subject: [PATCH v8 0/7] Check Scaler and DSC Prefill Latency Against Vblank
Date: Mon, 20 Jan 2025 18:24:32 +0530
Message-ID: <20250120125439.4188626-1-mitulkumar.ajitkumar.golani@intel.com>
X-Mailer: git-send-email 2.48.1
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
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

Compute and check if dsc and scaler prefill latency is sufficient with
respect to vblank.

Previous Revision Reference:
https://patchwork.freedesktop.org/series/141203/
https://patchwork.freedesktop.org/series/142745/

Mitul Golani (7):
  drm/i915/scaler: Add and compute scaling factors
  drm/i915/scaler: Use crtc_state to setup plane or pipe scaler
  drm/i915/scaler: Refactor max_scale computation
  drm/i915/scaler: Compute scaling factors for pipe scaler
  drm/i915/scaler: Limit pipe scaler downscaling factors for YUV420
  drm/i915/scaler: Check if vblank is sufficient for scaler
  drm/i915/dsc: Check if vblank is sufficient for dsc prefill

 .../drm/i915/display/intel_display_types.h    |   2 +
 drivers/gpu/drm/i915/display/skl_scaler.c     | 123 ++++++++++++------
 drivers/gpu/drm/i915/display/skl_watermark.c  |  84 +++++++++++-
 3 files changed, 171 insertions(+), 38 deletions(-)

-- 
2.48.1

