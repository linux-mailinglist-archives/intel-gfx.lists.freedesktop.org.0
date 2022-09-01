Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id B048A5A8DDF
	for <lists+intel-gfx@lfdr.de>; Thu,  1 Sep 2022 08:01:27 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 68CBE10E54F;
	Thu,  1 Sep 2022 06:01:22 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga05.intel.com (mga05.intel.com [192.55.52.43])
 by gabe.freedesktop.org (Postfix) with ESMTPS id E617110E59C
 for <intel-gfx@lists.freedesktop.org>; Thu,  1 Sep 2022 06:01:18 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1662012078; x=1693548078;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=6iXJduPEBOxV+mmA5A99irJrGOB4Ldd16nXWiA3X5sw=;
 b=fbR75upAkdY54FKPHTWjwoeHyyOgb/YkxOsP1gP65lAb1BKhdv3/AtUD
 iQ9WU7NvqqQoXqUOSGjy3I/W/BsQ3cNZV7eNJPh5QBf2ml3P1HBoma8ZU
 y8aKsYqGFqn4tTbLNm5oKpMFYnMhPCZjcT9UH/BQdbUqVfadkI+AaDj9c
 v95MSn5hUAzTB/KaBQrJKxGM4ts0Qu0gfTM+bO5gQgtOvj5YQdY+Pj905
 Pz6aOQqb9Z3aip8oLjx3ShIkyKV676eWhTMpobUqR6mn3VyE3plTIGzXS
 a0w9yOd1RCUISJ+oEzubvTHEV4vlX92E49h9izPkMu3PBywCIcykS8hqd A==;
X-IronPort-AV: E=McAfee;i="6500,9779,10456"; a="381920215"
X-IronPort-AV: E=Sophos;i="5.93,280,1654585200"; d="scan'208";a="381920215"
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
 by fmsmga105.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 31 Aug 2022 23:01:18 -0700
X-IronPort-AV: E=Sophos;i="5.93,280,1654585200"; d="scan'208";a="754685606"
Received: from srr4-3-linux-103-aknautiy.iind.intel.com ([10.223.34.160])
 by fmsmga001-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 31 Aug 2022 23:01:16 -0700
From: Ankit Nautiyal <ankit.k.nautiyal@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Thu,  1 Sep 2022 11:30:52 +0530
Message-Id: <20220901060101.1000290-1-ankit.k.nautiyal@intel.com>
X-Mailer: git-send-email 2.25.1
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH v2 0/9] Handle BPC for HDMI2.1 PCON without
 DSC1.2 sink and other fixes
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

This series fixes issues faced when an HDMI2.1 sink that does not
support DSC is connected via HDMI2.1PCON. It also icludes other minor
HDMI2.1 PCON fixes/refactoring.

Patch 1-3 Have minor fixes/cleanups.
Patch 4-7 Pull the decision making to use DFP conversion capabilities
for every mode during compute config, instead of having that decision
during DP initializing phase.
Patch 8-9 Calculate the max BPC that can be sufficient with either
RGB or YCbcr420 format for the maximum FRL rate supported.

Rev2: Split the refactoring of DFP RG->YCBCR conversion into smaller
patches, as suggested by Jani N.
Also dropped the unnecessary helper for DSC1.2 support for HDMI2.1 DFP.

Ankit Nautiyal (9):
  drm/i915/dp: Reset frl trained flag before restarting FRL training
  drm/i915/dp: Add RGB to YCBCR conversion case in is_dp_ycbcr420 helper
  drm/i915/dp: Remove whitespace at the end of function.
  drm/i915/display: Add new members to configure PCON color conversion
  drm/i915/dp: Compute configuration for using PCON's color/format
    conversion
  drm/i915/dp: Use crtc_state members in dp_is_ycbcr420
  drm/i915/dp: Replace intel_dp.dfp members with the new crtc_state
    dp_dfp members
  drm/i915/dp: Handle BPP where HDMI2.1 DFP doesn't support DSC
  drm/i915/dp: Fix FRL BW check for HDMI2.1 DFP

 .../drm/i915/display/intel_display_types.h    |   7 +
 drivers/gpu/drm/i915/display/intel_dp.c       | 234 ++++++++++++++----
 2 files changed, 191 insertions(+), 50 deletions(-)

-- 
2.25.1

