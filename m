Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 4DC56886B64
	for <lists+intel-gfx@lfdr.de>; Fri, 22 Mar 2024 12:40:54 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id CE2F210F398;
	Fri, 22 Mar 2024 11:40:50 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="KFVmhAo1";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.15])
 by gabe.freedesktop.org (Postfix) with ESMTPS id F0DEC10F398
 for <intel-gfx@lists.freedesktop.org>; Fri, 22 Mar 2024 11:40:48 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1711107649; x=1742643649;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=ETwOGN4iMh5bBYF1OeXCrV8/j7wzixB0xMhp8AcOZPE=;
 b=KFVmhAo1w5nqNIhfvN6qKGjAuOE9fvHFrw2zlVTFDMF38Ds45Vnv/usg
 gRj/DdS7L6s78Em0OorjhvGSgYJp++y9mpuspJGAiCnGOOPjDzcXnHyQE
 zrLbTuSh4vcgNE5oqW/cevMNcAyXt6YXWV+aLi4rITWztjdenOUuoLxwY
 Y5kGbtXgevyoBiA3GEqadrF0+55Db2GWCzhXZUCjJclVwrHjX55cCoLLi
 1kcUq0/3ggkn9B95rtqQdA2KoOk9NTyNZ3UPfrGkoDX4UyIA6AAll9F4d
 Xz/i2czY/AX86j1A6CaMebpOtkNzzrJO9wM4torj1OVh/ry4/i6qTWZLs A==;
X-IronPort-AV: E=McAfee;i="6600,9927,11020"; a="9939203"
X-IronPort-AV: E=Sophos;i="6.07,145,1708416000"; 
   d="scan'208";a="9939203"
Received: from fmviesa009.fm.intel.com ([10.60.135.149])
 by orvoesa107.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 22 Mar 2024 04:40:48 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.07,145,1708416000"; d="scan'208";a="14906475"
Received: from unknown (HELO slisovsk-Lenovo-ideapad-720S-13IKB.fi.intel.com)
 ([10.237.72.65])
 by fmviesa009.fm.intel.com with ESMTP; 22 Mar 2024 04:40:46 -0700
From: Stanislav Lisovskiy <stanislav.lisovskiy@intel.com>
To: intel-gfx@lists.freedesktop.org
Cc: jani.saarinen@intel.com, Stanislav.Lisovskiy@intel.com,
 ville.syrjala@linux.intel.com
Subject: [PATCH 0/5] Enable fastset for mbus_join state change
Date: Fri, 22 Mar 2024 13:40:41 +0200
Message-Id: <20240322114046.24930-1-stanislav.lisovskiy@intel.com>
X-Mailer: git-send-email 2.37.3
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

Currently fastset is not supported, if mbus join state changes,
so whenever we have to switch mbus state, we have to force a full
modeset. This patch series makes fastset possible from MBUS state
point of view.

Stanislav Lisovskiy (5):
  drm/i915: Update mbus in intel_dbuf_mbus_update and do it properly
  drm/i915: Break intel_dbuf_mbus_update into 2 separate parts
  drm/i915: Use old mbus_join value when increasing CDCLK
  drm/i915: Loop over all active pipes in intel_mbus_dbox_update
  drm/i915: Implement vblank synchronized MBUS join changes

 drivers/gpu/drm/i915/display/intel_cdclk.c   |  12 +-
 drivers/gpu/drm/i915/display/intel_display.c |   6 +-
 drivers/gpu/drm/i915/display/skl_watermark.c | 155 ++++++++++++++-----
 drivers/gpu/drm/i915/display/skl_watermark.h |   2 +
 4 files changed, 134 insertions(+), 41 deletions(-)

-- 
2.37.3

