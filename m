Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id DA8BD7F6109
	for <lists+intel-gfx@lfdr.de>; Thu, 23 Nov 2023 15:08:03 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 6413910E75C;
	Thu, 23 Nov 2023 14:08:02 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.8])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 5C29110E75B
 for <intel-gfx@lists.freedesktop.org>; Thu, 23 Nov 2023 14:08:00 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1700748480; x=1732284480;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=aYPNSXQxM+CWecwl9jqLW7h7Gsg6BLE/dsxD0jXq/iE=;
 b=djr+XdkKMtXISVpgUR5Th6/724zPJb/TpbV/cipGHZyr+OmqYEY3ODIB
 wAC1UN5BDHZNsaps1yBqi4QJh7DvQYG7Tj4lIoULnC5/DtGPwuFxm5jW+
 2qLztQLJvig7cLrX2vri31P+HFDmF368bOxXphCJBwHlGuhncvVAkpn2a
 DRinUu2jw2GUrUsLqn+6TzhKf+GISi08OqA7q0EVhCk0HS5h2boxLIWDQ
 xrKuJB5Qc2xum9tZS0jOWlGQYqZQv+KSbDE122mEtFy1dO9YtFIONPGHc
 hFkbjvJ5RDB9c+VcXr6ioiLGeLXh8hNSi0Q+3yQBC4nmWFR2Xc4oQlsEd g==;
X-IronPort-AV: E=McAfee;i="6600,9927,10902"; a="5418501"
X-IronPort-AV: E=Sophos;i="6.04,221,1695711600"; 
   d="scan'208";a="5418501"
Received: from orsmga002.jf.intel.com ([10.7.209.21])
 by fmvoesa102.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 23 Nov 2023 06:07:49 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10902"; a="767213012"
X-IronPort-AV: E=Sophos;i="6.04,221,1695711600"; d="scan'208";a="767213012"
Received: from mgolanimitul-x299-ud4-pro.iind.intel.com ([10.190.239.114])
 by orsmga002.jf.intel.com with ESMTP; 23 Nov 2023 06:07:47 -0800
From: Mitul Golani <mitulkumar.ajitkumar.golani@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Thu, 23 Nov 2023 19:32:41 +0530
Message-Id: <20231123140244.4183869-1-mitulkumar.ajitkumar.golani@intel.com>
X-Mailer: git-send-email 2.25.1
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH 0/3] Enable Adaptive Sync SDP Support for DP
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

An Adaptive Sync SDP allows a DP protocol converter to
forward Adaptive Sync video with minimal buffering overhead
within the converter. An Adaptive-Sync-capable DP protocol
converter indicates its support by setting the related bit
in the DPCD register.

Computes AS SDP values based on the display configuration,
ensuring proper handling of Variable Refresh Rate (VRR)
in the context of Adaptive Sync.

Mitul Golani (3):
  drm: Add Adaptive Sync SDP logging
  drm/i915/display/: Add Read/Write support for Adaptive Sync SDP
  drm/i915/display/:Compute and enable daptive Sync SDP

 drivers/gpu/drm/display/drm_dp_helper.c       |  15 ++
 .../drm/i915/display/intel_display_types.h    |   1 +
 drivers/gpu/drm/i915/display/intel_dp.c       | 139 +++++++++++++++++-
 drivers/gpu/drm/i915/display/intel_hdmi.c     |  11 +-
 drivers/gpu/drm/i915/i915_reg.h               |   6 +
 include/drm/display/drm_dp.h                  |   1 +
 include/drm/display/drm_dp_helper.h           |  30 ++++
 7 files changed, 196 insertions(+), 7 deletions(-)

-- 
2.25.1

