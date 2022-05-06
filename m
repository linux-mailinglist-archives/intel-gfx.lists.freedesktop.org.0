Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 1A00351D0DA
	for <lists+intel-gfx@lfdr.de>; Fri,  6 May 2022 07:42:04 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 73CDD112039;
	Fri,  6 May 2022 05:42:02 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga17.intel.com (mga17.intel.com [192.55.52.151])
 by gabe.freedesktop.org (Postfix) with ESMTPS id BA464112039;
 Fri,  6 May 2022 05:42:01 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1651815721; x=1683351721;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=XccIIwTVEOz2EECvLGBZZyWb+J86Im3pab25N6U5lqM=;
 b=AxRSqUqpcUNrYF4H2DcjVxYHtvkit4IaxG/XSL1BMxeUh+jkZ2dpAKkz
 tiWn5bgHT0EwGKxGGjKp+LbDki8zHNMu+3j+5/AGWs6jzcQ+HpJRriJ7J
 yqEjIJWMAWgppX8mgJ3+CRa8uC1fRrwDT4Hl/S+WXfZ+GXMrBvRrsx+zd
 cOvgBrmQfALBp5hQmdmGlmcPvWwnU9P/D8NNESBMbCMZKaW5xPE5yDu3q
 6A5lD8Kvuum7F3kSWEru7Nuld41bRA6Gb7cgDXn3ozh71yV6djHYVzQao
 pyEHJYdn5fZgyuqIkwAoFlbLIJFWkxWJXch8LZrup43EEaIDg0Nme98EA A==;
X-IronPort-AV: E=McAfee;i="6400,9594,10338"; a="248894437"
X-IronPort-AV: E=Sophos;i="5.91,203,1647327600"; d="scan'208";a="248894437"
Received: from fmsmga007.fm.intel.com ([10.253.24.52])
 by fmsmga107.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 05 May 2022 22:42:01 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.91,203,1647327600"; d="scan'208";a="568947760"
Received: from vbelgaum-ubuntu.fm.intel.com ([10.1.27.27])
 by fmsmga007.fm.intel.com with ESMTP; 05 May 2022 22:42:01 -0700
From: Vinay Belgaumkar <vinay.belgaumkar@intel.com>
To: intel-gfx@lists.freedesktop.org,
	dri-devel@lists.freedesktop.org
Date: Thu,  5 May 2022 22:41:42 -0700
Message-Id: <20220506054142.5025-1-vinay.belgaumkar@intel.com>
X-Mailer: git-send-email 2.35.1
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH] drm/i915/guc/rc: Use i915_probe_error instead
 of drm_error
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

To avoid false positives in error injection cases.

Signed-off-by: Vinay Belgaumkar <vinay.belgaumkar@intel.com>
---
 drivers/gpu/drm/i915/gt/uc/intel_guc_rc.c | 5 ++---
 1 file changed, 2 insertions(+), 3 deletions(-)

diff --git a/drivers/gpu/drm/i915/gt/uc/intel_guc_rc.c b/drivers/gpu/drm/i915/gt/uc/intel_guc_rc.c
index e00661fb0853..8f8dd05835c5 100644
--- a/drivers/gpu/drm/i915/gt/uc/intel_guc_rc.c
+++ b/drivers/gpu/drm/i915/gt/uc/intel_guc_rc.c
@@ -49,7 +49,6 @@ static int guc_action_control_gucrc(struct intel_guc *guc, bool enable)
 static int __guc_rc_control(struct intel_guc *guc, bool enable)
 {
 	struct intel_gt *gt = guc_to_gt(guc);
-	struct drm_device *drm = &guc_to_gt(guc)->i915->drm;
 	int ret;
 
 	if (!intel_uc_uses_guc_rc(&gt->uc))
@@ -60,8 +59,8 @@ static int __guc_rc_control(struct intel_guc *guc, bool enable)
 
 	ret = guc_action_control_gucrc(guc, enable);
 	if (ret) {
-		drm_err(drm, "Failed to %s GuC RC (%pe)\n",
-			str_enable_disable(enable), ERR_PTR(ret));
+		i915_probe_error(guc_to_gt(guc)->i915, "Failed to %s GuC RC (%pe)\n",
+				 str_enable_disable(enable), ERR_PTR(ret));
 		return ret;
 	}
 
-- 
2.35.1

