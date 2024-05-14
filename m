Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 89BD58C5B8A
	for <lists+intel-gfx@lfdr.de>; Tue, 14 May 2024 21:14:20 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id C0AB510E169;
	Tue, 14 May 2024 19:14:17 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="CeAwOfTt";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.12])
 by gabe.freedesktop.org (Postfix) with ESMTPS id E398910E169
 for <intel-gfx@lists.freedesktop.org>; Tue, 14 May 2024 19:14:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1715714057; x=1747250057;
 h=from:to:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=Q65ZBJFI8xbueKDoNxFXsxdQHw6Wfe5S6aUZrX+U+3I=;
 b=CeAwOfTt1cc3ebh4cCr0aZEZTyc+R6gzm86jKTTm7XiLaX7ecKb8nnh/
 N9CtFoa+lFy0zk9Bn4YxPofDCslUtpxXaj9yzdOrUXDChuo7La2axOInA
 wAnzcngV8SGs6V40r09wn/pk0eBJk2ZvcmcYaiUvxfOLOUvdLTOjIJWUo
 S7XNtUxlpY7Ac+yKHwvXPmG3J6gPl+eD/4ACGkeELFfEbvNIcdYDJMDmu
 V2Hn+CHeW/yybL3DPWlRa3u84mTmsEyzYqbNzkWUmo20xQdxazKdhO4Z4
 PoNw8kgQXCWrmYg+u6WCij3xHLuSjxsG+3ZszSy6EhWBypu58Qzris41T A==;
X-CSE-ConnectionGUID: SQ4BIThnSRi5VeS+GmQxhA==
X-CSE-MsgGUID: 5tNCg/kzQ96U2D5tWZcCqQ==
X-IronPort-AV: E=McAfee;i="6600,9927,11073"; a="23124982"
X-IronPort-AV: E=Sophos;i="6.08,159,1712646000"; d="scan'208";a="23124982"
Received: from fmviesa007.fm.intel.com ([10.60.135.147])
 by orvoesa104.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 14 May 2024 12:14:16 -0700
X-CSE-ConnectionGUID: 9Uuh/zRpTQap/fxDZ3R+vw==
X-CSE-MsgGUID: 4J1Zao3wSpiJ+mmcvTYzCw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.08,159,1712646000"; d="scan'208";a="30724585"
Received: from ideak-desk.fi.intel.com ([10.237.72.78])
 by fmviesa007-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 14 May 2024 12:14:15 -0700
From: Imre Deak <imre.deak@intel.com>
To: intel-gfx@lists.freedesktop.org
Subject: [PATCH 00/20] drm/i915/dp_mst: Enable link training fallback
Date: Tue, 14 May 2024 22:13:58 +0300
Message-ID: <20240514191418.2863344-1-imre.deak@intel.com>
X-Mailer: git-send-email 2.43.3
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

This patchset enables the link training fallback logic for MST links,
similarly to how this is done for SST links. It also fixes the MST
link-retraining - which requires a full modeset as opposed to SST - and
adds a way for automated testing of the link training fallback and
retraining functionality via connector debugfs entries.

Imre Deak (20):
  drm/i915/dp_mst: Align TUs to avoid splitting symbols across MTPs
  drm/i915/dp: Move link train params to a substruct in intel_dp
  drm/i915/dp: Move link train fallback to intel_dp_link_training.c
  drm/i915/dp: Sanitize intel_dp_get_link_train_fallback_values()
  drm/i915: Factor out function to modeset commit a set of pipes
  drm/i915/dp: Use a commit modeset for link retraining MST links
  drm/i915/dp: Recheck link state after modeset
  drm/i915/dp: Reduce link params only after retrying with unchanged
    params
  drm/i915/dp: Remove the modeset retry event's dependece on atomic
    state
  drm/i915/dp: Send a link training modeset-retry uevent to all MST
    connectors
  drm/i915/dp: Use check link state work in the hotplug handler
  drm/i915/dp: Use check link state work in the detect handler
  drm/i915/dp: Use check link state work in the HPD IRQ handler
  drm/i915/dp: Disable link retraining after the last fallback step
  drm/i915/dp_mst: Reset intel_dp->link_trained during disabling
  drm/i915/dp_mst: Enable link training fallback for MST
  drm/i915/dp: Add debugfs entries to set a target link rate/lane count
  drm/i915/dp: Add debugfs entry to force link training failure
  drm/i915/dp: Add debugfs entry to force link retrain
  drm/i915/dp: Add debugfs entry for link training info

 drivers/gpu/drm/i915/display/g4x_dp.c         |  20 +-
 drivers/gpu/drm/i915/display/intel_ddi.c      |  42 +--
 drivers/gpu/drm/i915/display/intel_display.c  |  34 ++
 drivers/gpu/drm/i915/display/intel_display.h  |   3 +
 .../drm/i915/display/intel_display_debugfs.c  | 349 ++++++++++++++++++
 .../drm/i915/display/intel_display_types.h    |  24 +-
 drivers/gpu/drm/i915/display/intel_dp.c       | 292 ++++++++-------
 drivers/gpu/drm/i915/display/intel_dp.h       |  16 +-
 .../drm/i915/display/intel_dp_link_training.c | 140 ++++++-
 drivers/gpu/drm/i915/display/intel_dp_mst.c   |  30 +-
 .../gpu/drm/i915/display/intel_dp_tunnel.c    |   2 +-
 11 files changed, 738 insertions(+), 214 deletions(-)

-- 
2.43.3

