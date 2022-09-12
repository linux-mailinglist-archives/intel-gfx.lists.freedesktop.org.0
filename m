Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id CF84C5B5E9E
	for <lists+intel-gfx@lfdr.de>; Mon, 12 Sep 2022 18:55:44 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id B302C10E5FC;
	Mon, 12 Sep 2022 16:55:36 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
 by gabe.freedesktop.org (Postfix) with ESMTPS id A417F10E43E
 for <intel-gfx@lists.freedesktop.org>; Mon, 12 Sep 2022 16:54:57 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1663001697; x=1694537697;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=E2Eqv2GRQZaHmyq+/Et8aFsQcowbDuGrB5OGeVvxeZI=;
 b=iaMzDCdlgrDhmZgb41gaSoIqQ8Yux7r0LSQcQ6sp6tyr2cCOME3tLdgd
 5J7IV2iANqwnDvnJpBjxSHlWvwq3tNkx35wUxqsLGxDsBpwzqzV77Maoe
 3yVikp5CWuqUtfa1BTT11SFfiFBlXHPvygNLSjtyONPrIF5ZgOdEM9STQ
 JI3WrYsj066I9s1yPaqKr/APHsbsJ5gzoxhNufh/YXHszEqOCO0ItQoVq
 oyimqJfmFqsMzKMmXw0gfPUVtTz+cQ+awRxduUC3akj7wumAskDaL5hRW
 Gfns9oHha67N0iRHdjUVnEcKNynNE65Jbs32p/VPKRugz8FM5a0qp/zd+ w==;
X-IronPort-AV: E=McAfee;i="6500,9779,10468"; a="284937231"
X-IronPort-AV: E=Sophos;i="5.93,310,1654585200"; d="scan'208";a="284937231"
Received: from orsmga006.jf.intel.com ([10.7.209.51])
 by orsmga101.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 12 Sep 2022 09:54:55 -0700
X-IronPort-AV: E=Sophos;i="5.93,310,1654585200"; d="scan'208";a="593571578"
Received: from abijaz-mobl.ger.corp.intel.com (HELO localhost)
 ([10.252.58.140])
 by orsmga006-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 12 Sep 2022 09:54:54 -0700
From: Jani Nikula <jani.nikula@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Mon, 12 Sep 2022 19:54:25 +0300
Message-Id: <a2edeefd1fef0c197837ae846169521d5ccb88ce.1662999695.git.jani.nikula@intel.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <cover.1662999695.git.jani.nikula@intel.com>
References: <cover.1662999695.git.jani.nikula@intel.com>
MIME-Version: 1.0
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH 03/15] drm/i915: reduce includes in
 intel_fifo_underrun.h
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

Only include what's needed.

Signed-off-by: Jani Nikula <jani.nikula@intel.com>
---
 drivers/gpu/drm/i915/display/intel_fifo_underrun.h | 3 +--
 1 file changed, 1 insertion(+), 2 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_fifo_underrun.h b/drivers/gpu/drm/i915/display/intel_fifo_underrun.h
index e04f22ac1f49..2e47d7d3c101 100644
--- a/drivers/gpu/drm/i915/display/intel_fifo_underrun.h
+++ b/drivers/gpu/drm/i915/display/intel_fifo_underrun.h
@@ -8,9 +8,8 @@
 
 #include <linux/types.h>
 
-#include "intel_display.h"
-
 struct drm_i915_private;
+enum pipe;
 
 bool intel_set_cpu_fifo_underrun_reporting(struct drm_i915_private *dev_priv,
 					   enum pipe pipe, bool enable);
-- 
2.34.1

