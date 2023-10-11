Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 121D67C56C4
	for <lists+intel-gfx@lfdr.de>; Wed, 11 Oct 2023 16:27:16 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 5294210E8AB;
	Wed, 11 Oct 2023 14:27:12 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.55.52.136])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 2D78410E8AB
 for <intel-gfx@lists.freedesktop.org>; Wed, 11 Oct 2023 14:27:11 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1697034431; x=1728570431;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=Pquc6EicXN5B8BEQeiLDHvKxiLAkTnY8wLxMB24Q5MA=;
 b=LXC3+q8aazZhFvzRXwyWw7Dh7sHTmmBu2L+ybEqT68fyHmGd6MSdhTjq
 20UAhA55iBsY4boacjY0MEtk3elhsM79V7d71bardvB6NTmKEVYr3us5O
 karXG5gqtwH1lW9mKJdzGknqAR7911YGNSP7jP2vjNDa8vTe7KnlHDhvM
 N+U0JA30pci+SHoFbLaqOwUp8U+dDhyyGp4H4JRoYDXbLJktlGncpFFpa
 proNFJhrTpL7jYxH7y1NhV0oTXphrLi6Wm1ryHVzE1aA/Z64rueNkwJOU
 72ICcaqLGZxXHrwKCFni6TfZipmLlHLcLkhkJuL30ShdkUjpJ6ocnwoVo w==;
X-IronPort-AV: E=McAfee;i="6600,9927,10860"; a="364039612"
X-IronPort-AV: E=Sophos;i="6.03,216,1694761200"; d="scan'208";a="364039612"
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
 by fmsmga106.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 11 Oct 2023 07:27:10 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10860"; a="897640523"
X-IronPort-AV: E=Sophos;i="6.03,216,1694761200"; d="scan'208";a="897640523"
Received: from bjvanakk-mobl.ger.corp.intel.com (HELO localhost)
 ([10.252.42.111])
 by fmsmga001-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 11 Oct 2023 07:25:24 -0700
From: Jani Nikula <jani.nikula@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Wed, 11 Oct 2023 17:27:04 +0300
Message-Id: <20231011142704.985867-1-jani.nikula@intel.com>
X-Mailer: git-send-email 2.39.2
MIME-Version: 1.0
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH] drm/i915: drop gt/intel_gt.h include from
 skl_universal_plane.c
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
Cc: jani.nikula@intel.com
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

No longer needed after commit 94bcf876cb6a ("drm/i915/mtl: Drop
Wa_14017240301").

Signed-off-by: Jani Nikula <jani.nikula@intel.com>
---
 drivers/gpu/drm/i915/display/skl_universal_plane.c | 1 -
 1 file changed, 1 deletion(-)

diff --git a/drivers/gpu/drm/i915/display/skl_universal_plane.c b/drivers/gpu/drm/i915/display/skl_universal_plane.c
index 245a64332cc7..49e9d40d5e67 100644
--- a/drivers/gpu/drm/i915/display/skl_universal_plane.c
+++ b/drivers/gpu/drm/i915/display/skl_universal_plane.c
@@ -21,7 +21,6 @@
 #include "skl_scaler.h"
 #include "skl_universal_plane.h"
 #include "skl_watermark.h"
-#include "gt/intel_gt.h"
 #include "pxp/intel_pxp.h"
 
 static const u32 skl_plane_formats[] = {
-- 
2.39.2

