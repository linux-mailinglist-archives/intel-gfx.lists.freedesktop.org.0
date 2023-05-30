Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 44664716CE4
	for <lists+intel-gfx@lfdr.de>; Tue, 30 May 2023 20:54:16 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 5E61010E40D;
	Tue, 30 May 2023 18:54:06 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga06.intel.com (mga06b.intel.com [134.134.136.31])
 by gabe.freedesktop.org (Postfix) with ESMTPS id B9A5D10E407
 for <intel-gfx@lists.freedesktop.org>; Tue, 30 May 2023 18:54:03 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1685472843; x=1717008843;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=87mTrwnU+tWUWLn/gNFyCcTfAEJ26BMQYDVJymIBZx8=;
 b=BdarZUyCOJINHVw5H6w8OGN8nMkMHnbPSa+ZebXvcHzNPFLLlPBEZ3Wg
 pqwogoPDTW3WiIMMC3XgfdKG7rC52oDGCLM0+udGu2XenurdMMWYr9Xz1
 DVUWgNW39pcjZYSdKTuWTruQQ9TNgypcGYf5dBg1AzG8YGX/IATOW8gkB
 V5TblPukfIxp7+E26vwANeruySRzwVH8vTWuqBhNeyVkW4Ocz6KjW3CjS
 JiaqCx8VIohvNeOO0+4xAoD09f4UVpxH2taf7C/1BWilqfn9q+JBtqsOO
 0Nl5knmCFy4JsAbkRBPUcJepDxiQsscHlRB7sQrfIg9C+cZSbQDzxjHFt w==;
X-IronPort-AV: E=McAfee;i="6600,9927,10726"; a="418504043"
X-IronPort-AV: E=Sophos;i="6.00,205,1681196400"; d="scan'208";a="418504043"
Received: from fmsmga003.fm.intel.com ([10.253.24.29])
 by orsmga104.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 30 May 2023 11:54:01 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10726"; a="796381468"
X-IronPort-AV: E=Sophos;i="6.00,205,1681196400"; d="scan'208";a="796381468"
Received: from anushasr-simics.jf.intel.com ([10.165.21.205])
 by fmsmga003-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 30 May 2023 11:53:56 -0700
From: Anusha Srivatsa <anusha.srivatsa@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Tue, 30 May 2023 11:55:24 -0700
Message-Id: <20230530185529.3378520-1-anusha.srivatsa@intel.com>
X-Mailer: git-send-email 2.25.1
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH 0/5] s/ADL/ALDERLAKE
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

Replace all occurences of ADL -> ALDERLAKE in
platform and subplatform defines. This way there is a
consistent pattern to how platforms are referred. While
the change is minor and could be combined to have lesser patches,
splitting to per subpaltform for easier cherrypicks, if needed.

Anusha Srivatsa (5):
  drm/i915/adlp: s/ADLP/ALDERLAKE_P for display and graphics step
  drm/i915/rplp: s/ADLP/ALDERLAKE_P for RPLP defines
  drm/i915/rplu: s/ADLP/ALDERLAKE_P in RPLU defines
  drm/i915/adln: s/ADLP/ALDERLAKE_P in ADLN defines
  drm/i915/adls: s/ADLS/ALDERLAKE_S in platform and subplatform  defines

 drivers/gpu/drm/i915/display/intel_cdclk.c       |  4 ++--
 drivers/gpu/drm/i915/display/intel_dpll_mgr.c    |  2 +-
 drivers/gpu/drm/i915/display/intel_psr.c         |  8 ++++----
 .../gpu/drm/i915/display/skl_universal_plane.c   |  4 ++--
 drivers/gpu/drm/i915/gt/uc/intel_guc_hwconfig.c  |  2 +-
 drivers/gpu/drm/i915/gt/uc/intel_uc.c            |  2 +-
 drivers/gpu/drm/i915/gt/uc/intel_uc_fw.c         |  2 +-
 drivers/gpu/drm/i915/i915_drv.h                  | 16 ++++++++--------
 drivers/gpu/drm/i915/intel_device_info.c         |  2 +-
 drivers/gpu/drm/i915/intel_step.c                |  6 +++---
 10 files changed, 24 insertions(+), 24 deletions(-)

-- 
2.25.1

