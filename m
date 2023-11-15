Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 01E937EC7F7
	for <lists+intel-gfx@lfdr.de>; Wed, 15 Nov 2023 16:54:55 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id C47A910E086;
	Wed, 15 Nov 2023 15:54:51 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.9])
 by gabe.freedesktop.org (Postfix) with ESMTPS id D71D410E086
 for <intel-gfx@lists.freedesktop.org>; Wed, 15 Nov 2023 15:54:49 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1700063690; x=1731599690;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=VIv8OjLt61iPy4byMZL8kTrpL+tqYDwFEvjckuJZTo8=;
 b=WeDPcnebq1Lx2CU6NlxrQORM4hLaUoiGGqqy6YVAcPxWbBQNN+Ja2kOX
 UmgSVryObeLTh4XZwA0lf+EisQ2ZPoaoWWeLD1P3wfl+U34da2tzhiNWa
 uvYMeaqnXn1McGXSd7ExAFMNEnHQ5YHhyGy8EdlROWV2jV3pALZDwiyAl
 nNZfhcsfGx2HIThlLoZE0lJ6+eocl/fNRrSjzDk3fuQVxPDf4vi1Pedtg
 88a4vcgNi2YL2E6XYC3QfT5UWAVPayHF0t7yRwaF4SNoXDPrOf2+/p88D
 mEdtx7edPrb2oFy2A1TMccGqExzjMoon+ovU/oihwcDhlxWkFERp2VUAE g==;
X-IronPort-AV: E=McAfee;i="6600,9927,10895"; a="9537385"
X-IronPort-AV: E=Sophos;i="6.03,305,1694761200"; 
   d="scan'208";a="9537385"
Received: from fmsmga004.fm.intel.com ([10.253.24.48])
 by orvoesa101.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 15 Nov 2023 07:54:49 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10895"; a="835426517"
X-IronPort-AV: E=Sophos;i="6.03,305,1694761200"; d="scan'208";a="835426517"
Received: from mgolanimitul-x299-ud4-pro.iind.intel.com ([10.190.239.114])
 by fmsmga004.fm.intel.com with ESMTP; 15 Nov 2023 07:54:47 -0800
From: Mitul Golani <mitulkumar.ajitkumar.golani@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Wed, 15 Nov 2023 21:19:40 +0530
Message-Id: <20231115154943.3801663-1-mitulkumar.ajitkumar.golani@intel.com>
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
Cc: jani.nikula@intel.com, ville.syrjala@intel.com
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
 drivers/gpu/drm/i915/display/intel_display.c  |  54 +++++++-
 .../drm/i915/display/intel_display_device.h   |   1 +
 .../drm/i915/display/intel_display_types.h    |   6 +
 drivers/gpu/drm/i915/display/intel_vrr.c      | 126 ++++++++++++++++--
 drivers/gpu/drm/i915/i915_reg.h               |  10 ++
 6 files changed, 181 insertions(+), 20 deletions(-)

-- 
2.25.1

