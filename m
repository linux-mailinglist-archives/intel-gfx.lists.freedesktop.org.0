Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id CB533492540
	for <lists+intel-gfx@lfdr.de>; Tue, 18 Jan 2022 12:55:44 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 0283210E627;
	Tue, 18 Jan 2022 11:55:43 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 21F8E10E2ED
 for <intel-gfx@lists.freedesktop.org>; Tue, 18 Jan 2022 11:55:42 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1642506942; x=1674042942;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=FQOZmEvLme6mlaOYK+iJq2r6/khOCX/MvwlSpLobiME=;
 b=hJmHGhnRikGodFraTUNg4PSLNX2QQx47qHLRGY63bY07NFT9x2N9rymV
 rUS56TCaNjurBNTTd6EdxMxR0o/ljy7IwBc5qaQpMhMqLcS+hogLUeR+M
 wKc8PS3Vu6KpHQKP1ilLyJB39RMfDDyqpN+lMnasyRp+sAa97uPKmkasM
 IivjdYLEQVYYMpMtcjUW5RC+A3Tz4ZMZXK4vPlI69D7yUjAz5Q1weslKS
 PtZ/ismeiiWOnB4g6zw9o0usnM0UcLdLw4dUu88IFm3+VpR2Vhr3whkNo
 tqpMk9uXOtewR7aIVfBU5heyk171szWrNyI19SL9aU41yHGNMOyi/ZQHL Q==;
X-IronPort-AV: E=McAfee;i="6200,9189,10230"; a="232158550"
X-IronPort-AV: E=Sophos;i="5.88,297,1635231600"; d="scan'208";a="232158550"
Received: from orsmga005.jf.intel.com ([10.7.209.41])
 by orsmga101.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 18 Jan 2022 03:55:41 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.88,297,1635231600"; d="scan'208";a="693365909"
Received: from unknown (HELO slisovsk-Lenovo-ideapad-720S-13IKB.fi.intel.com)
 ([10.237.72.65])
 by orsmga005.jf.intel.com with ESMTP; 18 Jan 2022 03:55:39 -0800
From: Stanislav Lisovskiy <stanislav.lisovskiy@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Tue, 18 Jan 2022 13:55:42 +0200
Message-Id: <20220118115544.15116-1-stanislav.lisovskiy@intel.com>
X-Mailer: git-send-email 2.24.1.485.gad05a3d8e5
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH 0/2] Tile 4 format support
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
Cc: m@freedesktop.org
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

Tile4 in bspec format is 4K tile organized into
64B subtiles with same basic shape as for legacy TileY.

Stanislav Lisovskiy (2):
  drm/i915: Introduce new Tile 4 format
  drm/i915/dg2: Tile 4 plane format support

 drivers/gpu/drm/i915/display/intel_display.c  |  1 +
 drivers/gpu/drm/i915/display/intel_fb.c       | 15 +++++++++++-
 drivers/gpu/drm/i915/display/intel_fb.h       |  1 +
 drivers/gpu/drm/i915/display/intel_fbc.c      |  1 +
 .../drm/i915/display/intel_plane_initial.c    |  1 +
 .../drm/i915/display/skl_universal_plane.c    | 23 ++++++++++++-------
 drivers/gpu/drm/i915/i915_drv.h               |  1 +
 drivers/gpu/drm/i915/i915_pci.c               |  1 +
 drivers/gpu/drm/i915/i915_reg.h               |  1 +
 drivers/gpu/drm/i915/intel_device_info.h      |  1 +
 drivers/gpu/drm/i915/intel_pm.c               |  1 +
 include/uapi/drm/drm_fourcc.h                 | 11 +++++++++
 12 files changed, 49 insertions(+), 9 deletions(-)

-- 
2.24.1.485.gad05a3d8e5

