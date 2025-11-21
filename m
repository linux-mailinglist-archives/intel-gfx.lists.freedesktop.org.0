Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 8BED6C78B91
	for <lists+intel-gfx@lfdr.de>; Fri, 21 Nov 2025 12:17:15 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 8B0A510E855;
	Fri, 21 Nov 2025 11:17:12 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="PCx4BhAr";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.18])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 447A110E84E;
 Fri, 21 Nov 2025 11:17:10 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1763723830; x=1795259830;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=6fMvGyow//PozJ/83rqSvKAeq11G8lNUEAk4MUa2iG0=;
 b=PCx4BhArLR7PGf/BNVLP8MonauQJk/xJ7Cr2MQJ/o0ZemUWzvCB/KA3q
 gHXr+9RD4Yfo1Nc8Ciwz5Xm5S06boRl4n7Gw8kXuuGIPgIdU3KcZaShMW
 bmk4xlH0EHrcE1BjRPmbJlDdZel7nrIZyRnEQjCURvQ6LAchJsl6WGJwr
 KAWtImle21aKal+XLYc+E8vZ9Ir+105o81+Aa6GHolZb6EuZJJ/PR4nNt
 k4i8aWxFl+pLCPhTUQA+T6FqElPJv7S1ytgI/LFLeyVeIOMlEvGDJ8tLV
 +14L8OxJbMDVQfILggIv+c/IpaewoxzIvSeyqxBW2S/Tc6D1jDIRPj77N g==;
X-CSE-ConnectionGUID: sMnkI5xgQESUO7XC0osb2Q==
X-CSE-MsgGUID: s3geWtf5QSCkKRGQP64deQ==
X-IronPort-AV: E=McAfee;i="6800,10657,11619"; a="65845511"
X-IronPort-AV: E=Sophos;i="6.20,215,1758610800"; d="scan'208";a="65845511"
Received: from orviesa005.jf.intel.com ([10.64.159.145])
 by orvoesa110.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 21 Nov 2025 03:17:09 -0800
X-CSE-ConnectionGUID: 0b1Y/lHhSmOgkH5ijcBJ3w==
X-CSE-MsgGUID: nR5eyokQSrW95YtrECf17Q==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.20,215,1758610800"; d="scan'208";a="196801974"
Received: from krybak-mobl1.ger.corp.intel.com (HELO jhogande-mobl3.intel.com)
 ([10.245.246.72])
 by orviesa005-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 21 Nov 2025 03:17:08 -0800
From: =?UTF-8?q?Jouni=20H=C3=B6gander?= <jouni.hogander@intel.com>
To: intel-gfx@lists.freedesktop.org,
	intel-xe@lists.freedesktop.org
Cc: =?UTF-8?q?Jouni=20H=C3=B6gander?= <jouni.hogander@intel.com>
Subject: [PATCH 0/8] Move PSR/Panel Replay sink data into intel_connector
Date: Fri, 21 Nov 2025 13:16:47 +0200
Message-ID: <20251121111655.164830-1-jouni.hogander@intel.com>
X-Mailer: git-send-email 2.43.0
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
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

This is a preparation patch set for MST Panel Replay.

In case of MST Panel Replay we may have several CRTCs on single
pipe. There CRTCs representing virtual devices within e.g. docking
station. All these virtual devices has their own DPCD registers
containing their Panel Replay capability information. These needs to
be taken into account when computing used Panel Replay state. Due to
this we can't continue having only sink capabilities stored in struct
intel_dp.

This patch set is moving Panel Replay capabilities into struct
intel_connector to make them available for Panel Replay CRTC state
computation.

Jouni Högander (8):
  drm/i915/psr: Add panel granularity information into intel_connector
  drm/i915/psr: Use SU granularity information available in
    intel_connector
  drm/i915/psr: Compute Panel Replay/Adaptive coexistence behavior
  drm/i915/psr: Move pr_dpcd and psr_dpcd to intel_connector
  drm/i915/psr: Clear pr_dpcd as well on disconnect
  drm/i915/psr: Move Panel Replay DSC sink support data to
    intel_connector
  drm/i915/psr: Move sink PSR and Panel Replay booleans to
    intel_connector
  drm/i915/psr: Move sink_sync_latency to intel_connector

 drivers/gpu/drm/i915/display/intel_alpm.c     |   6 +-
 .../drm/i915/display/intel_display_types.h    |  43 ++-
 drivers/gpu/drm/i915/display/intel_dp.c       |  11 +-
 drivers/gpu/drm/i915/display/intel_psr.c      | 283 ++++++++++--------
 drivers/gpu/drm/i915/display/intel_psr.h      |   2 +-
 5 files changed, 192 insertions(+), 153 deletions(-)

-- 
2.43.0

