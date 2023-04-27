Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 6FA9F6F0648
	for <lists+intel-gfx@lfdr.de>; Thu, 27 Apr 2023 15:02:40 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 7859D10EB33;
	Thu, 27 Apr 2023 13:02:36 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga07.intel.com (mga07.intel.com [134.134.136.100])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 2441210EB33
 for <intel-gfx@lists.freedesktop.org>; Thu, 27 Apr 2023 13:02:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1682600554; x=1714136554;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=EeEP8R18PbR9BXIcpZ2LnQ2iZmc4mD+gjEml3mtPfVg=;
 b=i/Tv5keRVyDkhrVRv4TKSNkBYXP9CMVfI/wM+QKZ1NxjloGKByP4rpND
 YseXNf75MiYVg0DDs7bHSStA9AAVH4jTXGq1N9h1exxj5Ndy0qWeqhXcg
 MKzbQ2cPG/DIIVfmNFFi+Uvyw0eDAebqITBGouTJ0jaMt0uU9aORxiWgO
 9TKealFQp9UVuybU4z7e5lP2PYf4Ar6xOo+SB3bzx+ifPjEfgK7ckz7kF
 A8LqiYVJc6EslXZFDVhEOZHtXyA5El8RnCjTXUn0t3Z+iafSM3eoM6bNB
 xFmcH5WreLGtb+1pZm8VjU6SMbPGr7m+MQtp43AG2amSdllfLelen4x52 g==;
X-IronPort-AV: E=McAfee;i="6600,9927,10692"; a="412761835"
X-IronPort-AV: E=Sophos;i="5.99,230,1677571200"; d="scan'208";a="412761835"
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
 by orsmga105.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 27 Apr 2023 06:00:55 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10692"; a="805950100"
X-IronPort-AV: E=Sophos;i="5.99,230,1677571200"; d="scan'208";a="805950100"
Received: from srr4-3-linux-103-aknautiy.iind.intel.com ([10.223.34.160])
 by fmsmga002-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 27 Apr 2023 06:00:51 -0700
From: Ankit Nautiyal <ankit.k.nautiyal@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Thu, 27 Apr 2023 18:25:59 +0530
Message-Id: <20230427125605.487769-1-ankit.k.nautiyal@intel.com>
X-Mailer: git-send-email 2.25.1
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH 0/6] Introduce sink_format and other fixes
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

This patch series is part of a previous series:
https://patchwork.freedesktop.org/series/109470/

This adds new member sink_format to store the final format that the
sink will be using, which might be different than the output format,
and thus might need color/format conversion performed by the PCON.

Last patch just refactors some lines in mode_valid code for DP.

Ankit Nautiyal (6):
  drm/i915/display: Add new member to configure PCON color conversion
  drm/i915/dp: Replace intel_dp.dfp members with the new crtc_state
    sink_format
  drm/i915/dp: Configure PCON for conversion of output_format to
    YCbCr444
  drm/i915/display: Use sink_format instead of ycbcr420_output flag
  drm/i915/dp: Add helper to get sink_format
  drm/i915/dp: Rearrange check for illegal mode and comments in
    mode_valid

 drivers/gpu/drm/i915/display/icl_dsi.c        |   1 +
 drivers/gpu/drm/i915/display/intel_crt.c      |   1 +
 .../drm/i915/display/intel_crtc_state_dump.c  |   5 +-
 drivers/gpu/drm/i915/display/intel_display.c  |   5 +
 .../drm/i915/display/intel_display_types.h    |  12 +-
 drivers/gpu/drm/i915/display/intel_dp.c       | 263 ++++++++++++------
 drivers/gpu/drm/i915/display/intel_dp_mst.c   |   1 +
 drivers/gpu/drm/i915/display/intel_dvo.c      |   1 +
 drivers/gpu/drm/i915/display/intel_hdmi.c     |  71 +++--
 drivers/gpu/drm/i915/display/intel_hdmi.h     |   5 +-
 drivers/gpu/drm/i915/display/intel_lvds.c     |   1 +
 drivers/gpu/drm/i915/display/intel_sdvo.c     |   1 +
 drivers/gpu/drm/i915/display/intel_tv.c       |   1 +
 drivers/gpu/drm/i915/display/vlv_dsi.c        |   1 +
 14 files changed, 250 insertions(+), 119 deletions(-)

-- 
2.25.1

