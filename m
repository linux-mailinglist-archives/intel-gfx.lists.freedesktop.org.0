Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id E837A7EBD1E
	for <lists+intel-gfx@lfdr.de>; Wed, 15 Nov 2023 07:36:05 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 36C6010E1EF;
	Wed, 15 Nov 2023 06:36:04 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.55.52.88])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 4E5C910E1EF
 for <intel-gfx@lists.freedesktop.org>; Wed, 15 Nov 2023 06:36:01 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1700030161; x=1731566161;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=P6lOF4EyF+DaDKyAc7NxU3Qzhk1OlcFbfczHPForliE=;
 b=Tu1ovagZN2K3CO19ixy3UrqVrSSRGy3lt279yV3qqefXDNKeOd5SMDym
 QQ3dbnwMHpAa9ru25UIQjWCn6v1Vzf1gYZbg2uSTXt7505SDfAluJZl3h
 Egte1UWjzrP8mTgEPqlSOMO3uX45eSAdhWb8Z9hOnP5gMG83y/r3Zm4V6
 W0f2lOpq0d4e0senFKyRLUcO85KoWzkqUfP2TVLLLiBl/KWrhQWxkp6NC
 nxFmqmCFNxTTyOFPLKygtyfFCxwEwAfDRSzoyvVgGMqjPUZDBC3CI50u0
 13e/6YGpo3O4JDbrMegl7Q+VLlntZIQBUfajNn71MK1TMn82VZ5mAltMM A==;
X-IronPort-AV: E=McAfee;i="6600,9927,10894"; a="421919589"
X-IronPort-AV: E=Sophos;i="6.03,304,1694761200"; d="scan'208";a="421919589"
Received: from orsmga006.jf.intel.com ([10.7.209.51])
 by fmsmga101.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 14 Nov 2023 22:36:00 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10894"; a="741336146"
X-IronPort-AV: E=Sophos;i="6.03,304,1694761200"; d="scan'208";a="741336146"
Received: from mgolanimitul-x299-ud4-pro.iind.intel.com ([10.190.239.114])
 by orsmga006.jf.intel.com with ESMTP; 14 Nov 2023 22:35:58 -0800
From: Mitul Golani <mitulkumar.ajitkumar.golani@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Wed, 15 Nov 2023 12:00:51 +0530
Message-Id: <20231115063054.3754600-1-mitulkumar.ajitkumar.golani@intel.com>
X-Mailer: git-send-email 2.25.1
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [RFC 0/3] Implement CMRR Support
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
Cc: ville.syrjala@intel.com
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

CMRR is a display feature that uses adaptive sync
framework to vary Vtotal slightly to match the
content rate exactly without frame drops. This
feature is a variation of VRR where it varies Vtotal
slightly (between additional 0 and 1 Vtotal scanlines)
to match content rate exactly without frame drops
using the adaptive sync framework.

enable this feature by programing new registers for
CMRR enable, CMRR_M, CMRR_N, vmin=vmax=flipline.The
CMRR_M/CMRR_N ratio represents the fractional part
in (actual refresh rate/target refresh rate) * origVTotal.

Signed-off-by: Mitul Golani <mitulkumar.ajitkumar.golani@intel.com>

Mitul Golani (3):
  drm/i915: Define and compute Transcoder CMRR registers
  drm/i915: Add Enable/Disable for CMRR based on VRR state
  drm/i915: Compute CMRR and calculate vtotal

 .../drm/i915/display/intel_crtc_state_dump.c  |   4 +-
 drivers/gpu/drm/i915/display/intel_display.c  |  48 +++++-
 .../drm/i915/display/intel_display_device.h   |   1 +
 .../drm/i915/display/intel_display_types.h    |   6 +
 drivers/gpu/drm/i915/display/intel_vrr.c      | 141 +++++++++++++++---
 drivers/gpu/drm/i915/i915_reg.h               |  14 ++
 6 files changed, 191 insertions(+), 23 deletions(-)

-- 
2.25.1

