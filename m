Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id A88CB8179AF
	for <lists+intel-gfx@lfdr.de>; Mon, 18 Dec 2023 19:30:26 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id DF47E10E28C;
	Mon, 18 Dec 2023 18:30:24 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.55.52.93])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 30DD510E259
 for <intel-gfx@lists.freedesktop.org>; Mon, 18 Dec 2023 18:30:24 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1702924224; x=1734460224;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=2izMpW5m+roUc8UEku96tfP3OTHPWHcX/ihBwV2U1qE=;
 b=fEs9XUjC14k/n+6lkteKYxPoWdSH4zfvw0OLHEiOXthor4vcU+JtlvqF
 xNnJonWoiTFd8hJLVTG3i15LvZCu1f3nry9XwtCGI5uZk9/aCiDGSx2AX
 zM0dCPrf0KYk2wlyLsv29UlPcvcYIT46n3uYLk5Nj3EXCs0YJ9gxv00UY
 rjk7yldYtGC08bG1T2ouUnxNcCEBqUqnGgODphdDhkIzDaldg+4DmKp20
 Ed7xF5YuWjD7IFehgpnVtamvQUeHjIuuyGYbrDbTsqtWy0ZpjCLO0QxjO
 l47gQ7P+T9X5G80QuTVU4q8WA6TIUSBi0e3qwQHs12in6X/In+Sig83Xn g==;
X-IronPort-AV: E=McAfee;i="6600,9927,10928"; a="392714103"
X-IronPort-AV: E=Sophos;i="6.04,286,1695711600"; d="scan'208";a="392714103"
Received: from fmsmga007.fm.intel.com ([10.253.24.52])
 by fmsmga102.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 18 Dec 2023 09:50:18 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10928"; a="779176562"
X-IronPort-AV: E=Sophos;i="6.04,286,1695711600"; d="scan'208";a="779176562"
Received: from etrunovx-mobl.ger.corp.intel.com (HELO
 jhogande-mobl1.intel.com) ([10.249.35.24])
 by fmsmga007-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 18 Dec 2023 09:50:16 -0800
From: =?UTF-8?q?Jouni=20H=C3=B6gander?= <jouni.hogander@intel.com>
To: intel-gfx@lists.freedesktop.org
Subject: [PATCH 0/7] Early Transport for Panel Replay and PSR
Date: Mon, 18 Dec 2023 19:49:57 +0200
Message-Id: <20231218175004.52875-1-jouni.hogander@intel.com>
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

This patch set is implementing driver support for selective update
region early transport for Panel Replay and PSR on Intel hardware.

On Intel hardware selective update area has to cover cursor fully if
selective update region early transport is enabled. This is taken care
in these patches by aligning selective update area after calulation to
cover the cursor fully if needed.

Last patch in the set is disabling the feature by default as
validating the feature is currently incomplete. 

Jouni Högander (7):
  drm: Add eDP 1.5 early transport definition
  drm/i915/psr: Extend SU area to cover cursor fully if needed
  drm/i915/psr: Carry su area in crtc_state
  drm/i915/psr: Calculate and configure CUR_POS_ERLY_TPT
  drm/i915/psr: Configure PIPE_SRCSZ_ERLY_TPT for psr2 early transport
  drm/i915/psr: Enable psr2 early transport as possible
  drm/i915/psr: Disable early transport by default

 drivers/gpu/drm/i915/display/intel_cursor.c   |  32 +++--
 drivers/gpu/drm/i915/display/intel_display.c  |  10 ++
 .../drm/i915/display/intel_display_types.h    |  18 +--
 drivers/gpu/drm/i915/display/intel_psr.c      | 113 ++++++++++++++----
 drivers/gpu/drm/i915/display/intel_psr_regs.h |   6 +
 drivers/gpu/drm/i915/i915_reg.h               |   2 +
 include/drm/display/drm_dp.h                  |   1 +
 7 files changed, 144 insertions(+), 38 deletions(-)

-- 
2.34.1

