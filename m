Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 9016A9A9908
	for <lists+intel-gfx@lfdr.de>; Tue, 22 Oct 2024 07:57:24 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 14DEB10E5DD;
	Tue, 22 Oct 2024 05:57:22 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="aRhEx1wq";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.11])
 by gabe.freedesktop.org (Postfix) with ESMTPS id AA2A910E5DD;
 Tue, 22 Oct 2024 05:57:20 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1729576641; x=1761112641;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=mF7tT7yHczEQbrYJpHvmCToCJ/1p8eGFKlmontLTsUA=;
 b=aRhEx1wq8yUTSVxsr8Lyx6RCKYnNMl+aqqcxmLDaDOgYAy18/AdQ5ip6
 zAZRh/Q891ZBszzNxO9hHrbslcMpFfNq52DMM7aCsJtYmvRV9WJBRU8HR
 zYEUtaUGsbMcpsFFPmgRE8ceffh0zC2Rs9OwCVtDfD0LryAe5e1bfcEmX
 BldHX9dSwRPEGGUIsH/9aZAcOVpasGupFbY/xJN6yWB0EdV0MJ8TF02sz
 16sZWBuTn20MNoAStctLrgCslW6ANfypPU3MV4jP8wkeLtCuDOC2B/3Vu
 eynOnYEEjm7zz8BT/HVNiGfLFaVSyiypV2jR54fzw8qMkHe14Jk7Xg3Jb w==;
X-CSE-ConnectionGUID: xUDcqx+1SMGi05WU51WZ9A==
X-CSE-MsgGUID: sQal/IbcSiqokpIWukKFTg==
X-IronPort-AV: E=McAfee;i="6700,10204,11232"; a="39673725"
X-IronPort-AV: E=Sophos;i="6.11,222,1725346800"; d="scan'208";a="39673725"
Received: from fmviesa007.fm.intel.com ([10.60.135.147])
 by fmvoesa105.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 21 Oct 2024 22:57:20 -0700
X-CSE-ConnectionGUID: 3vDepdZVSSK6pVfhWqPQ0w==
X-CSE-MsgGUID: Yr7fV4gfQDOLoWWjOQ79pQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.11,222,1725346800"; d="scan'208";a="79386384"
Received: from linux-lunar-lake-client-platform.iind.intel.com
 ([10.227.88.172])
 by fmviesa007.fm.intel.com with ESMTP; 21 Oct 2024 22:57:18 -0700
From: Suraj Kandpal <suraj.kandpal@intel.com>
To: intel-xe@lists.freedesktop.org,
	intel-gfx@lists.freedesktop.org
Cc: Suraj Kandpal <suraj.kandpal@intel.com>
Subject: [PATCH] drm/xe/hdcp: Add check to remove hdcp2 compatibilty
Date: Tue, 22 Oct 2024 11:26:56 +0530
Message-Id: <20241022055655.1902-1-suraj.kandpal@intel.com>
X-Mailer: git-send-email 2.34.1
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

Add check to remove HDCP2 compatibility from BMG as it does not
have GSC which ends up causing warning when we try to get reference
of GSC FW.

Signed-off-by: Suraj Kandpal <suraj.kandpal@intel.com>
---
 drivers/gpu/drm/i915/display/intel_hdcp_gsc.c | 3 ++-
 drivers/gpu/drm/xe/display/xe_hdcp_gsc.c      | 3 ++-
 2 files changed, 4 insertions(+), 2 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_hdcp_gsc.c b/drivers/gpu/drm/i915/display/intel_hdcp_gsc.c
index 55965844d829..2c1d0ee8cec2 100644
--- a/drivers/gpu/drm/i915/display/intel_hdcp_gsc.c
+++ b/drivers/gpu/drm/i915/display/intel_hdcp_gsc.c
@@ -21,7 +21,8 @@ struct intel_hdcp_gsc_message {
 
 bool intel_hdcp_gsc_cs_required(struct intel_display *display)
 {
-	return DISPLAY_VER(display) >= 14;
+	return DISPLAY_VER(display) >= 14 &&
+		DISPLAY_VER_FULL(display) != IP_VER(14, 1);
 }
 
 bool intel_hdcp_gsc_check_status(struct intel_display *display)
diff --git a/drivers/gpu/drm/xe/display/xe_hdcp_gsc.c b/drivers/gpu/drm/xe/display/xe_hdcp_gsc.c
index 231677129a35..e3c57f0b79c4 100644
--- a/drivers/gpu/drm/xe/display/xe_hdcp_gsc.c
+++ b/drivers/gpu/drm/xe/display/xe_hdcp_gsc.c
@@ -32,7 +32,8 @@ struct intel_hdcp_gsc_message {
 
 bool intel_hdcp_gsc_cs_required(struct intel_display *display)
 {
-	return DISPLAY_VER(display) >= 14;
+	return DISPLAY_VER(display) >= 14 &&
+		DISPLAY_VER_FULL(display) != IP_VER(14, 1);
 }
 
 bool intel_hdcp_gsc_check_status(struct intel_display *display)
-- 
2.34.1

