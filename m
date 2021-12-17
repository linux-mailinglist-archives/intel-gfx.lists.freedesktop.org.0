Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 472284790E6
	for <lists+intel-gfx@lfdr.de>; Fri, 17 Dec 2021 17:03:38 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 8255810EB25;
	Fri, 17 Dec 2021 16:03:36 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga17.intel.com (mga17.intel.com [192.55.52.151])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 0994110EB25
 for <intel-gfx@lists.freedesktop.org>; Fri, 17 Dec 2021 16:03:35 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1639757016; x=1671293016;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=C/ka4KMhyQPhRlx7AXwJn+MB5gGN7IqXh/3BocRmg4E=;
 b=fDRqFdQnAkMeoH5Gpr7EM54Z7j/m6iel4DZrgN29qnrB/0byndjX4tWh
 WATxFyV04GXPNf3NaEEmCne2B4nE7lMzOwdKSLFmnFHNCNDW56+Hi09fm
 GViyZ5kvizDLOOQFwiTfibQ+YqIDxnMR9b2ntzHPQIDFZGzKL6pFnYotG
 LLjmP8enAWDoxM/+9Dki1IxY1gDH8A5InTAs+42rTgh7SA5qWknJV+ymC
 0DE6LD0apOjo7/H5vhu/plHsuL7o5lanUEr1uKET23utwn8/kAjUAzq8X
 fAxNQ2dIahHkp2bZNmA//7qsTiUJDdltA7vB6Uum+q4REJgbcihBQhCtK Q==;
X-IronPort-AV: E=McAfee;i="6200,9189,10201"; a="220458623"
X-IronPort-AV: E=Sophos;i="5.88,213,1635231600"; d="scan'208";a="220458623"
Received: from orsmga005.jf.intel.com ([10.7.209.41])
 by fmsmga107.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 17 Dec 2021 08:03:00 -0800
X-IronPort-AV: E=Sophos;i="5.88,213,1635231600"; d="scan'208";a="683430999"
Received: from hchegond-ivm1.jf.intel.com ([10.54.81.90])
 by orsmga005-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 17 Dec 2021 08:02:59 -0800
From: Harish Chegondi <harish.chegondi@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Fri, 17 Dec 2021 08:02:55 -0800
Message-Id: <20211217160255.1300348-1-harish.chegondi@intel.com>
X-Mailer: git-send-email 2.31.1
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH v2] drm/i915: Fix possible NULL pointer
 dereferences in i9xx_update_wm()
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

Check return pointer from intel_crtc_for_plane() before dereferencing
it, as it can be NULL.

v2: Moved the NULL check into intel_crtc_active().

Cc: Jani Nikula <jani.nikula@intel.com>
Cc: Caz Yokoyama <caz.yokoyama@intel.com>
Cc: Radhakrishna Sripada <radhakrishna.sripada@intel.com>
Signed-off-by: Harish Chegondi <harish.chegondi@intel.com>
---
 drivers/gpu/drm/i915/intel_pm.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/gpu/drm/i915/intel_pm.c b/drivers/gpu/drm/i915/intel_pm.c
index bdf97a8c9ef3..8b357ec35a4a 100644
--- a/drivers/gpu/drm/i915/intel_pm.c
+++ b/drivers/gpu/drm/i915/intel_pm.c
@@ -877,7 +877,7 @@ static bool intel_crtc_active(struct intel_crtc *crtc)
 	 * crtc->state->active once we have proper CRTC states wired up
 	 * for atomic.
 	 */
-	return crtc->active && crtc->base.primary->state->fb &&
+	return crtc && crtc->active && crtc->base.primary->state->fb &&
 		crtc->config->hw.adjusted_mode.crtc_clock;
 }
 
-- 
2.31.1

