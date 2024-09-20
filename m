Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id A3C6A97D11B
	for <lists+intel-gfx@lfdr.de>; Fri, 20 Sep 2024 08:23:56 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id D6ACE10E067;
	Fri, 20 Sep 2024 06:23:54 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="FfDCeqrr";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.12])
 by gabe.freedesktop.org (Postfix) with ESMTPS id D3B7510E067
 for <intel-gfx@lists.freedesktop.org>; Fri, 20 Sep 2024 06:23:52 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1726813433; x=1758349433;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=P8p4MUTsOg4aXu7OeCpEa+jga7aZAlmhIw42XEmkK6U=;
 b=FfDCeqrrkaDAw9bdlUk8oYIkxqZ8bZVIg/GGx02VBVT4FyX7Gcs+KGl/
 p7IJ0opEJC9Xd3bGK/83lbSNXL3D08+FTeMGHf9U+ERcsXqLWTxHm5tzl
 /Fu+rOtXy9jR/R30MKjRamR9H4P1niDx5kBC4SM72JGI1l5VAKocKinWc
 GJj+s99ordHiFAjcOn/yUyPsaEpFhMsIGIiloINNhU8pis9o/elqGgOsN
 LZGtTTSphw3823hWGPjip0s0mbpDaYz3ojDgrwBjBJZ23X6eXMtd4V3fI
 X+owX7tXwSZ/ue1rmh0zM78Z+EV8SElMUzJUrdKzY5Zq7Cnotd/NOqsGb Q==;
X-CSE-ConnectionGUID: eTohTRRcTlmstD1QDmw5Bw==
X-CSE-MsgGUID: Fsd5nyKkT8CgNgi96Y4jsg==
X-IronPort-AV: E=McAfee;i="6700,10204,11200"; a="29704276"
X-IronPort-AV: E=Sophos;i="6.10,243,1719903600"; d="scan'208";a="29704276"
Received: from orviesa001.jf.intel.com ([10.64.159.141])
 by fmvoesa106.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 19 Sep 2024 23:23:52 -0700
X-CSE-ConnectionGUID: Xa4QIVgySLGw1scUiii/FA==
X-CSE-MsgGUID: WMJmZ4t+TF+3o0KxqrOT3w==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.10,243,1719903600"; d="scan'208";a="107656070"
Received: from carterle-desk.ger.corp.intel.com (HELO jhogande-mobl1..)
 ([10.245.244.217])
 by smtpauth.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 19 Sep 2024 23:23:51 -0700
From: =?UTF-8?q?Jouni=20H=C3=B6gander?= <jouni.hogander@intel.com>
To: intel-gfx@lists.freedesktop.org
Cc: ville.syrjala@linux.intel.com,
 =?UTF-8?q?Jouni=20H=C3=B6gander?= <jouni.hogander@intel.com>
Subject: [PATCH v5 0/2] Block DC6 on Vblank enable for Panel Replay
Date: Fri, 20 Sep 2024 09:23:38 +0300
Message-Id: <20240920062340.1333777-1-jouni.hogander@intel.com>
X-Mailer: git-send-email 2.34.1
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

v5:
  - s/vblank_work/vblank_dc_work/
  - changed type of block_dc_for_vblank to bool
v4:
  - do flush_work for vblank_work on intel_crtc_vblank_off
  - no need to use READ_ONCE in bdw_enable_vblank
  - check crtc->block_dc_for_vblank in bdw_disable_vblank as well
  - move adding block_dc_for_vblank into patch 2.
  - patch 1. scope changed
v3: check that encoder is dp
v2: set/clear block_dc6_needed in intel_crtc_vblank_on/off

Jouni Högander (2):
  drm/i915/psr: Add intel_psr_needs_block_dc_vblank for blocking dc
    entry
  drm/i915/display: Prevent DC6 while vblank is enabled for Panel Replay

 drivers/gpu/drm/i915/display/intel_crtc.c     |  7 +++++
 .../gpu/drm/i915/display/intel_display_core.h |  2 ++
 .../gpu/drm/i915/display/intel_display_irq.c  | 28 +++++++++++++++++
 .../drm/i915/display/intel_display_types.h    |  2 ++
 drivers/gpu/drm/i915/display/intel_psr.c      | 31 +++++++++++++++++++
 drivers/gpu/drm/i915/display/intel_psr.h      |  1 +
 6 files changed, 71 insertions(+)

-- 
2.34.1

