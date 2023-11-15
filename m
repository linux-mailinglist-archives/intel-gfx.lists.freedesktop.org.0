Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 992977EBF20
	for <lists+intel-gfx@lfdr.de>; Wed, 15 Nov 2023 10:07:54 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 7886910E50B;
	Wed, 15 Nov 2023 09:07:52 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [134.134.136.20])
 by gabe.freedesktop.org (Postfix) with ESMTPS id D8BDF10E50A
 for <intel-gfx@lists.freedesktop.org>; Wed, 15 Nov 2023 09:07:44 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1700039264; x=1731575264;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=yK+gbY1iuOBoTFcZHrhS4fdZfIwVFK4HmutEsmO4a2U=;
 b=HRO4Ex6o5Pau/4PHtUxlY2zvvVb+QbrW25j0OfFTS/Chwx+hz7mDzik4
 yAEP4m8jtLVcE9k5nT+4cl0dweKrEpu5OMNNUi2uV2VVgVQtJ57WWXn9R
 aDbF/iNPybxiX8Ye5yi39zx9HOCOH74fVt90KBBBNHSt8MuywMe+paJjw
 GjGu7salCABf7Gxmlqyv0ytdpw7Ris4l/C/x9wY/Pa87grufOjAdXpZDU
 k68rIEfFkaXhA2rn1M3B7V70em9rL7z+Ag2fGM1wj12u9QFsaOnDKfawQ
 48azvReNAXCJgvCHfwvc/p5KS2xBYPrOJXtN1KnDlB1e2IbtWdAKfKH1G A==;
X-IronPort-AV: E=McAfee;i="6600,9927,10894"; a="381236096"
X-IronPort-AV: E=Sophos;i="6.03,304,1694761200"; d="scan'208";a="381236096"
Received: from orsmga001.jf.intel.com ([10.7.209.18])
 by orsmga101.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 15 Nov 2023 01:07:40 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10894"; a="799781350"
X-IronPort-AV: E=Sophos;i="6.03,304,1694761200"; d="scan'208";a="799781350"
Received: from tmagriss-mobl.ger.corp.intel.com (HELO
 jhogande-mobl1.intel.com) ([10.251.218.181])
 by orsmga001-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 15 Nov 2023 01:07:38 -0800
From: =?UTF-8?q?Jouni=20H=C3=B6gander?= <jouni.hogander@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Wed, 15 Nov 2023 11:07:19 +0200
Message-Id: <20231115090719.3210079-3-jouni.hogander@intel.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20231115090719.3210079-1-jouni.hogander@intel.com>
References: <20231115090719.3210079-1-jouni.hogander@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH 2/2] drm/i915/display: use intel_bo_to_drm_bo in
 intel_fbdev
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

We are preparing for Xe driver. I915 and Xe object implementation are
differing. Do not use  i915_gem_object->base directly. Instead use
intel_bo_to_drm_bo.

Signed-off-by: Jouni Högander <jouni.hogander@intel.com>
Signed-off-by: Maarten Lankhorst <maarten.lankhorst@linux.intel.com>
---
 drivers/gpu/drm/i915/display/intel_fbdev.c | 4 ++--
 1 file changed, 2 insertions(+), 2 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_fbdev.c b/drivers/gpu/drm/i915/display/intel_fbdev.c
index b7e4b7830e45..99894a855ef0 100644
--- a/drivers/gpu/drm/i915/display/intel_fbdev.c
+++ b/drivers/gpu/drm/i915/display/intel_fbdev.c
@@ -332,12 +332,12 @@ static bool intel_fbdev_init_bios(struct drm_device *dev,
 			continue;
 		}
 
-		if (obj->base.size > max_size) {
+		if (intel_bo_to_drm_bo(obj)->size > max_size) {
 			drm_dbg_kms(&i915->drm,
 				    "found possible fb from [PLANE:%d:%s]\n",
 				    plane->base.base.id, plane->base.name);
 			fb = to_intel_framebuffer(plane_state->uapi.fb);
-			max_size = obj->base.size;
+			max_size = intel_bo_to_drm_bo(obj)->size;
 		}
 	}
 
-- 
2.34.1

