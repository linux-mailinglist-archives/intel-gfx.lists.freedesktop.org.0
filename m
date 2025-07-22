Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 1EF49B0D707
	for <lists+intel-gfx@lfdr.de>; Tue, 22 Jul 2025 12:13:39 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 0A84410E3F3;
	Tue, 22 Jul 2025 10:13:37 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="bSSl0D/v";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.19])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 5C12A10E10E;
 Tue, 22 Jul 2025 10:13:35 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1753179215; x=1784715215;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=DwQglXlkfD17zjIwMuK5aSRLB7xaBkc51nD5Q6P8/KY=;
 b=bSSl0D/vusPA2SaSPRuMYL4ULHGPM6KzqiCOHbbpNpilr7ymwH74P41f
 CW6p3ZWKLhSs3O8yHsCz5UYSnY7nw792R7f3kSgyEEyTNne14DGpBLfdN
 hGZsmhekobjra8VLMPh+PT1J03tp8Z3ZNNJtCSDkyievh7+o33SnYABw2
 oYVqt/bTA8+h3szFolbH6TL2oyT0Pr+g4yTuHb76FPmXOVkhkNHayLJ/G
 cpM5VP3bMojemjEGQmeYAUqyGq3IqZroxX50Joc5tJPtQmWDotBh3CV1K
 utEcek9GCmbaPvXm3KTzp8MeaELDXICLfyLl5GJUbZoPilObz2eSbunWi A==;
X-CSE-ConnectionGUID: Ztsgxj7ESK+A+ri/gPuPDQ==
X-CSE-MsgGUID: j9qZCy5WR5i41JEBvwSAnA==
X-IronPort-AV: E=McAfee;i="6800,10657,11499"; a="55266629"
X-IronPort-AV: E=Sophos;i="6.16,331,1744095600"; d="scan'208";a="55266629"
Received: from fmviesa009.fm.intel.com ([10.60.135.149])
 by orvoesa111.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 22 Jul 2025 03:13:35 -0700
X-CSE-ConnectionGUID: TimzVj3IQMymyxnE+JrkDg==
X-CSE-MsgGUID: +2p+o3dqRwilkNPGeEYzlA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.16,331,1744095600"; d="scan'208";a="159418515"
Received: from klitkey1-mobl1.ger.corp.intel.com (HELO jhogande-mobl1..)
 ([10.245.244.223])
 by fmviesa009-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 22 Jul 2025 03:13:33 -0700
From: =?UTF-8?q?Jouni=20H=C3=B6gander?= <jouni.hogander@intel.com>
To: intel-gfx@lists.freedesktop.org,
	intel-xe@lists.freedesktop.org
Cc: gustavo.sousa@intel.com,
 =?UTF-8?q?Jouni=20H=C3=B6gander?= <jouni.hogander@intel.com>
Subject: [PATCH v2 0/4] PHY LFPS sending configuration fixes
Date: Tue, 22 Jul 2025 13:13:13 +0300
Message-ID: <20250722101317.1728499-1-jouni.hogander@intel.com>
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

We are seeing "dmesg-warn/abort - *ERROR* PHY * failed after 3 retries"
since we started configuring LFPS sending. According to Bspec Configuring
LFPS sending is needed only when using AUXLess ALPM. This patch avoids
these failures by configuring LFPS sending only when using AUXLess ALPM.

Addition to PHY failure fix this patch set contains some additions
that were seen missing during review:

1. Ensure phy is accessible on lfps configuration
2. Set C10_VDR_CTRL_MSGBUS_ACCESS before phy reg read

Also one optimization is added to avoid unnecessarily calling
intel_cx0_get_owned_lane_mask.

v2:
  - split as a patch set
  - add ensuring phy is accessible on lfps configuration
  - set C10_VDR_CTRL_MSGBUS_ACCESS before phy reg read

Jouni Högander (4):
  drm/i915/display: Write PHY_CMN1_CONTROL only when using AUXLess ALPM
  drm/i915/display: Avoid unnecessarily calling
    intel_cx0_get_owned_lane_mask
  drm/i915/display: Ensure phy is accessible on lfps configuration
  drm/i915/display: Set C10_VDR_CTRL_MSGBUS_ACCESS before phy reg read

 drivers/gpu/drm/i915/display/intel_cx0_phy.c | 22 ++++++++++++++------
 1 file changed, 16 insertions(+), 6 deletions(-)

-- 
2.43.0

