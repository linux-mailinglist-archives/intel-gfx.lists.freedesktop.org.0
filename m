Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id C3308829AF8
	for <lists+intel-gfx@lfdr.de>; Wed, 10 Jan 2024 14:13:34 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id BCFCC10E5EC;
	Wed, 10 Jan 2024 13:13:32 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [134.134.136.100])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 172E210E5D4
 for <intel-gfx@lists.freedesktop.org>; Wed, 10 Jan 2024 13:13:31 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1704892411; x=1736428411;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=Yfz7Ld+PY7U0CC7cEU0Jormj8/cvGcRu7xaGgL4hBJo=;
 b=gIoKxV5JCWw4hkRX8gaXeZpJczL2XQ3tAYKbKPUUWOZ9Ut6tczK2Q0jx
 YfQL/CfyTR6k3L9qAVIE7GD0zccL8wBm2pNZTcgi7B+CmjpT7BPU6lpE+
 kR5FQ6NhbdnfMR/1aB/7wXeuURIZ6SbwmoopdkT6o+/GOGT5JUvs5YDBd
 KdStib24DLu7tlePBhp3aanNngx/JM0OCK1o/+zvRGiJUH2xPV0seEUW/
 +ypokbRU1Qo54/ufVXEkriXMUJszxUq6vFLd/sXFwhM/Y6yt9mUtrzfGB
 staJig53TOb0I3lo9WIIrAfP6Bo9nunVoQXlRtNq4Yo161V8+Z/qZwsCi A==;
X-IronPort-AV: E=McAfee;i="6600,9927,10948"; a="464914005"
X-IronPort-AV: E=Sophos;i="6.04,184,1695711600"; d="scan'208";a="464914005"
Received: from orsmga001.jf.intel.com ([10.7.209.18])
 by orsmga105.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 10 Jan 2024 05:13:30 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10948"; a="816347028"
X-IronPort-AV: E=Sophos;i="6.04,184,1695711600"; d="scan'208";a="816347028"
Received: from vsovraso-mobl.ccr.corp.intel.com (HELO
 jhogande-mobl1.intel.com) ([10.251.211.202])
 by orsmga001-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 10 Jan 2024 05:13:28 -0800
From: =?UTF-8?q?Jouni=20H=C3=B6gander?= <jouni.hogander@intel.com>
To: intel-gfx@lists.freedesktop.org
Subject: [PATCH v2 02/13] drm/i915/psr: Intel_psr_pause/resume needs to
 support panel replay
Date: Wed, 10 Jan 2024 15:12:53 +0200
Message-Id: <20240110131304.2470006-3-jouni.hogander@intel.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20240110131304.2470006-1-jouni.hogander@intel.com>
References: <20240110131304.2470006-1-jouni.hogander@intel.com>
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

Currently intel_psr_pause and intel_psr_resume do nothing in case of panel
replay. Change them to perform pause and return also in case of panel
replay.

Signed-off-by: Jouni Högander <jouni.hogander@intel.com>
---
 drivers/gpu/drm/i915/display/intel_psr.c | 4 ++--
 1 file changed, 2 insertions(+), 2 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_psr.c b/drivers/gpu/drm/i915/display/intel_psr.c
index 9705a75e063a..3e287a9f0e09 100644
--- a/drivers/gpu/drm/i915/display/intel_psr.c
+++ b/drivers/gpu/drm/i915/display/intel_psr.c
@@ -1829,7 +1829,7 @@ void intel_psr_pause(struct intel_dp *intel_dp)
 	struct drm_i915_private *dev_priv = dp_to_i915(intel_dp);
 	struct intel_psr *psr = &intel_dp->psr;
 
-	if (!CAN_PSR(intel_dp))
+	if (!CAN_PSR(intel_dp) && !CAN_PANEL_REPLAY(intel_dp))
 		return;
 
 	mutex_lock(&psr->lock);
@@ -1862,7 +1862,7 @@ void intel_psr_resume(struct intel_dp *intel_dp)
 {
 	struct intel_psr *psr = &intel_dp->psr;
 
-	if (!CAN_PSR(intel_dp))
+	if (!CAN_PSR(intel_dp) && !CAN_PANEL_REPLAY(intel_dp))
 		return;
 
 	mutex_lock(&psr->lock);
-- 
2.34.1

