Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 33DF2A14A44
	for <lists+intel-gfx@lfdr.de>; Fri, 17 Jan 2025 08:44:42 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id CC95410EA70;
	Fri, 17 Jan 2025 07:44:40 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="NXmQiInN";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.12])
 by gabe.freedesktop.org (Postfix) with ESMTPS id CBA4910EA70;
 Fri, 17 Jan 2025 07:44:38 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1737099879; x=1768635879;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=RL+AqLJx739NdBvp6ohaOQINzCHVPc1HxU4k1DKIJpI=;
 b=NXmQiInNywmKGoKkv5o62TLMnLXm8DA9Sh42cOYstL/kUaDkYKiDDK6R
 jtHBqzZ8P9aVOFchfkGGbxq4C7NHEBMc0AXSI5yJIYKBL8EmwXtBapHvi
 DyfLrgjFfVa/uAf/LfbetnvH/44oj+omlw0rNogR+T6qic3tok+9rsu3C
 LAoj1c3tgfavuy4CJHwcztWfX4AWO45MuKh84YvmEYaBOOjeNlBH/iOwL
 jytM/EGeHZW2OS55PJhKr3AFiaw9sHnHmHm6QHb1zqK2JEayMAZLA7048
 LpKW2j4B/TLzyBm9W9XH5xipLV+kb+Bum/QuvnaTvbEPbGt/4hK6hqI9/ g==;
X-CSE-ConnectionGUID: JRP6R/I1TNe/i7VDMfGp1Q==
X-CSE-MsgGUID: 5H5c7HA9TuWRsOSnzgI2Aw==
X-IronPort-AV: E=McAfee;i="6700,10204,11317"; a="41454704"
X-IronPort-AV: E=Sophos;i="6.13,211,1732608000"; d="scan'208";a="41454704"
Received: from orviesa008.jf.intel.com ([10.64.159.148])
 by fmvoesa106.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 16 Jan 2025 23:44:38 -0800
X-CSE-ConnectionGUID: GKqRy8I/SB6b7OAwmJwkrA==
X-CSE-MsgGUID: 8Gmrk/zoQtehvWRVBX2eng==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.12,224,1728975600"; d="scan'208";a="106618488"
Received: from mgolanimitul-x299-ud4-pro.iind.intel.com ([10.190.239.114])
 by orviesa008.jf.intel.com with ESMTP; 16 Jan 2025 23:44:36 -0800
From: Mitul Golani <mitulkumar.ajitkumar.golani@intel.com>
To: intel-gfx@lists.freedesktop.org,
	v7-000intel-xe@lists.freedesktop.org
Cc: ankit.k.nautiyal@intel.com, jani.nikula@intel.com, ville.syrjala@intel.com
Subject: [PATCH v7 0/7] Check Scaler and DSC Prefill Latency Against Vblank
Date: Fri, 17 Jan 2025 13:11:17 +0530
Message-ID: <20250117074124.3965392-1-mitulkumar.ajitkumar.golani@intel.com>
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
 drivers/gpu/drm/i915/display/skl_watermark.c  |  82 +++++++++++-
 3 files changed, 169 insertions(+), 38 deletions(-)

-- 
2.48.1

