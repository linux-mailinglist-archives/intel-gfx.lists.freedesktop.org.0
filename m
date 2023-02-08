Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 5C39968EE21
	for <lists+intel-gfx@lfdr.de>; Wed,  8 Feb 2023 12:43:10 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 2BFCB10E744;
	Wed,  8 Feb 2023 11:43:07 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga18.intel.com (mga18.intel.com [134.134.136.126])
 by gabe.freedesktop.org (Postfix) with ESMTPS id E2E2710E744
 for <intel-gfx@lists.freedesktop.org>; Wed,  8 Feb 2023 11:43:04 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1675856584; x=1707392584;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=M4n2BP8NikOmQ4teE19I2RSjaylMUt0TcXYvmXdSeXI=;
 b=Brfk7El+N6q2p3Juich4lTbx86Hgyi1ZKryY63xRhn/hrUCWVo8GEIKY
 DlJ5ZXDAXil8FaP+oRl50VJNhOgcDuqgJZc7gQZmHpcsI6C4wuZzK8gDQ
 peJ4hP8RBwBFu/zJkmjjXTcFKMSXql8wsfIVgcgsBwjELkr4ki04eLKlE
 aDzEhe6wXBKL5v0doveeOl0COma9ubsZPmwc0eaEX2mRIsm55qqK//sCS
 CUeLK8VVOK8oMVWQBKKGFM68vs1LSBQhrmaC30FsLX+hKvjQnYPbPr4i4
 Pl4nBHZzgXQqh8RROGUg1IZGmBAAZKgG2d+Tw6NH0FSCVYBwfwSz2poqK w==;
X-IronPort-AV: E=McAfee;i="6500,9779,10614"; a="313415483"
X-IronPort-AV: E=Sophos;i="5.97,280,1669104000"; d="scan'208";a="313415483"
Received: from orsmga001.jf.intel.com ([10.7.209.18])
 by orsmga106.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 08 Feb 2023 03:43:04 -0800
X-IronPort-AV: E=McAfee;i="6500,9779,10614"; a="699620677"
X-IronPort-AV: E=Sophos;i="5.97,280,1669104000"; d="scan'208";a="699620677"
Received: from ideak-desk.fi.intel.com ([10.237.72.58])
 by orsmga001-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 08 Feb 2023 03:43:03 -0800
From: Imre Deak <imre.deak@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Wed,  8 Feb 2023 13:42:56 +0200
Message-Id: <20230208114300.3123934-1-imre.deak@intel.com>
X-Mailer: git-send-email 2.31.1.189.g2e36527f23
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH v2 0/4] drm/i915/dg2: Fix platforms without
 display
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
Cc: Jani Nikula <jani.nikula@intel.com>
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

This is v2 of [1] fixing DG2 platforms without display, addressing the
review comments from Jani and fixing one related issue noticed by the
bug reporter.

[1] https://patchwork.freedesktop.org/series/113711/

Cc: Jani Nikula <jani.nikula@intel.com>

Imre Deak (4):
  drm/i915: Fix system suspend without fbdev being initialized
  drm/i915: Move display power initialization during driver probing
    later
  drm/i915/dgfx, mtl+: Disable display functionality if the display is
    not present
  drm/i915: Sanitize the display fused-off check on GEN7/8

 drivers/gpu/drm/i915/display/intel_display.c |  5 +++++
 drivers/gpu/drm/i915/display/intel_fbdev.c   |  8 +++++++-
 drivers/gpu/drm/i915/i915_driver.c           |  7 -------
 drivers/gpu/drm/i915/i915_reg.h              |  3 +++
 drivers/gpu/drm/i915/intel_device_info.c     | 10 ++++++++--
 5 files changed, 23 insertions(+), 10 deletions(-)

-- 
2.37.1

