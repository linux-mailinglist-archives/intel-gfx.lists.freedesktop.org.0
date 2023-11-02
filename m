Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id A9D787DF10F
	for <lists+intel-gfx@lfdr.de>; Thu,  2 Nov 2023 12:22:37 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 1715810E094;
	Thu,  2 Nov 2023 11:22:36 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.8])
 by gabe.freedesktop.org (Postfix) with ESMTPS id C7DC110E094
 for <intel-gfx@lists.freedesktop.org>; Thu,  2 Nov 2023 11:22:34 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1698924155; x=1730460155;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=BZlp9rrY9hOYXXECGDhJVJyfxrA8zDTV7ZNwyz3Bazg=;
 b=iKkwpWwXJ5c8Tu+EGQdYwavGfV4OIK0tij7xIiZgUh5LE3rKCnOTFFwm
 /Oc89GmsnEvY2pOpU0pNjCIHqTQiyYfK5f7wKCz2tn/XE5YYWEMdyFh75
 VLyTFcxn04NWbCgdw8yVALTDtkF5H/I509RYX3WeZmrK/fPcmSkQeQeP/
 C/eFliKxyOzAf1uYInB104Z1vOlT9MzZCiEiRsFHZcZwoY83RVJ+RzyxG
 KZczdn9/1L1mV537Tg74v/i7FeCVAyp4xj21RZ5Yv9rRIe36/0SJNzI4b
 6Le/d6wDkUdwXBQS+G2KtmlZBDqI1epGVLn4RGTl0D+cSpqvwELJGIP1g Q==;
X-IronPort-AV: E=McAfee;i="6600,9927,10881"; a="1562563"
X-IronPort-AV: E=Sophos;i="6.03,271,1694761200"; 
   d="scan'208";a="1562563"
Received: from orsmga003.jf.intel.com ([10.7.209.27])
 by fmvoesa102.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 02 Nov 2023 04:22:34 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10881"; a="711125153"
X-IronPort-AV: E=Sophos;i="6.03,271,1694761200"; d="scan'208";a="711125153"
Received: from avhiruda-mobl1.amr.corp.intel.com (HELO
 jhogande-mobl1.intel.com) ([10.252.34.224])
 by orsmga003-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 02 Nov 2023 04:22:31 -0700
From: =?UTF-8?q?Jouni=20H=C3=B6gander?= <jouni.hogander@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Thu,  2 Nov 2023 13:22:19 +0200
Message-Id: <20231102112219.1039362-1-jouni.hogander@intel.com>
X-Mailer: git-send-email 2.34.1
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH] drm/i915/display: Use intel_bo_to_drm_bo
 instead of obj->base
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

We are preparing for Xe. Xe_bo doesn't have obj->base. Due to this
use intel_bo_to_drm_bo instead in intel_prepare_plane_fb.

Signed-off-by: Jouni Högander <jouni.hogander@intel.com>
---
 drivers/gpu/drm/i915/display/intel_atomic_plane.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/gpu/drm/i915/display/intel_atomic_plane.c b/drivers/gpu/drm/i915/display/intel_atomic_plane.c
index 3b9a66923422..06c2455bdd78 100644
--- a/drivers/gpu/drm/i915/display/intel_atomic_plane.c
+++ b/drivers/gpu/drm/i915/display/intel_atomic_plane.c
@@ -1096,7 +1096,7 @@ intel_prepare_plane_fb(struct drm_plane *_plane,
 		 * can safely continue.
 		 */
 		if (new_crtc_state && intel_crtc_needs_modeset(new_crtc_state)) {
-			ret = add_dma_resv_fences(old_obj->base.resv,
+			ret = add_dma_resv_fences(intel_bo_to_drm_bo(old_obj)->resv,
 						  &new_plane_state->uapi);
 			if (ret < 0)
 				return ret;
-- 
2.34.1

