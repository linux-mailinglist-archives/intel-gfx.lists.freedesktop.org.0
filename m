Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id AB6416EF8C0
	for <lists+intel-gfx@lfdr.de>; Wed, 26 Apr 2023 18:53:15 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 714D610E252;
	Wed, 26 Apr 2023 16:53:13 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga17.intel.com (mga17.intel.com [192.55.52.151])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 5D5C110E252
 for <intel-gfx@lists.freedesktop.org>; Wed, 26 Apr 2023 16:53:10 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1682527990; x=1714063990;
 h=from:to:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=HCwY+ghOBd22i7LS17uTnNbYi6OOE8qB38zRgcn2TLs=;
 b=c+HLCWrkykDXe3T6snymveGT+Z0khCq511MMZ72Zkal+je9lfyW15IKr
 TxVC/IYRliDcHVcyAHnKNAZ4rqeaV3GSjwnBoIwweDOlW6Qm2WgjnbNDs
 xREJGbzgf3zVLZLHdI1WHXj+C9l58/Wxk121ZzqmPQEkKEEbeGpihLEAy
 gU9zd+EEDol3kPaUKxdjho9N6kQ4cXxil1XPw8GRNxUYnVVGHsizNjCoe
 WMcTW3betJP5uooLWaYNBVpX24bvAjpu+pQBtIGsC7A5GC+VSHBf1uzwL
 o86JYQBYr41VjWRRpQoYZfTZfx7HLL8UP0R8225YvmblEEGlclm8eRABu w==;
X-IronPort-AV: E=McAfee;i="6600,9927,10692"; a="327493459"
X-IronPort-AV: E=Sophos;i="5.99,228,1677571200"; d="scan'208";a="327493459"
Received: from orsmga006.jf.intel.com ([10.7.209.51])
 by fmsmga107.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 26 Apr 2023 09:53:09 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10692"; a="671402693"
X-IronPort-AV: E=Sophos;i="5.99,228,1677571200"; d="scan'208";a="671402693"
Received: from ideak-desk.fi.intel.com ([10.237.72.58])
 by orsmga006-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 26 Apr 2023 09:53:08 -0700
From: Imre Deak <imre.deak@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Wed, 26 Apr 2023 19:52:54 +0300
Message-Id: <20230426165305.2049341-1-imre.deak@intel.com>
X-Mailer: git-send-email 2.37.2
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH 00/11] drm/i915/tc: Add a workaround for an
 IOM/TCSS firmware hang issue
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

If a TypeC/DP-alt output is not disabled in time some IOM/TCSS firmware
component will time-out and block at least the PCI power management
operations for other PCI GFX devices. This patchset adds a workaround
that performs an in-kernel modeset (either disabling or switching to
TBT-alt mode) on such connectors to work around this issue.

Imre Deak (11):
  drm/i915: Fix PIPEDMC disabling for a bigjoiner configuration
  drm/i915: Make the CRTC wrt. CSC state consistent during
    sanitize-disabling
  drm/i915: Update connector atomic state before crtc sanitize-disabling
  drm/i915: Factor out set_encoder_for_connector()
  drm/i915: Add support for disabling any CRTCs during HW
    readout/sanitization
  drm/i915/dp: Add link training debug and error printing helpers
  drm/i915/dp: Convert link training error to debug message on
    disconnected sink
  drm/i915/dp: Prevent link training fallback on disconnected port
  drm/i915/dp: Factor out intel_dp_get_active_pipes()
  drm/i915: Factor out call_with_modeset_ctx()
  drm/i915/tc: Reset TypeC PHYs left enabled in DP-alt mode after the
    sink disconnects

 drivers/gpu/drm/i915/display/intel_ddi.c      |  92 ++++-
 drivers/gpu/drm/i915/display/intel_display.c  |  12 +-
 .../drm/i915/display/intel_display_types.h    |   2 +
 drivers/gpu/drm/i915/display/intel_dp.c       |  71 +++-
 drivers/gpu/drm/i915/display/intel_dp.h       |   4 +
 .../drm/i915/display/intel_dp_link_training.c | 388 +++++++-----------
 .../drm/i915/display/intel_modeset_setup.c    | 202 +++++++--
 drivers/gpu/drm/i915/display/intel_tc.c       |  21 +
 drivers/gpu/drm/i915/display/intel_tc.h       |   1 +
 9 files changed, 488 insertions(+), 305 deletions(-)

-- 
2.37.2

