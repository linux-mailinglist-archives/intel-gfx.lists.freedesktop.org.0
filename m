Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id E17565AD5A4
	for <lists+intel-gfx@lfdr.de>; Mon,  5 Sep 2022 17:01:22 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 7C29F10E3FC;
	Mon,  5 Sep 2022 15:01:19 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
 by gabe.freedesktop.org (Postfix) with ESMTPS id E973210E3F9
 for <intel-gfx@lists.freedesktop.org>; Mon,  5 Sep 2022 15:01:15 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1662390075; x=1693926075;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=A6wla5woOPKjNQ8eYSMyBJgMbbwV9PpHMxijDv100Sw=;
 b=mS+rahhjLgsk09w3dD26TD3sXN1tgMZhOXReJM9QoHE6UwqzjDB22pj2
 U/dF4q1kWgJgGrA32Af+c8+buXweijQFfPEy0f1BaL2218WJFNzRHzmGc
 RvahDw8hG+PZJhrwYcGHX1HwvAMVdlStkLe5Xt6P+kCjDiXgZO/xT+hj6
 TXDYlcnZVRqrwLTcTPhHbmLDbzYnihfxrExB0zBAJfghu/v6WUi232HFI
 qCjTmHEDxkRdNOo75Ebc6w6YUjIO4XzSc84QATU6IzXFiwk6fpqlG8P08
 3C5PyQiJVK2vyJhicVdWoKHM313w5pgMlN4qgV9O2jHKmnEWCcnoln+0W A==;
X-IronPort-AV: E=McAfee;i="6500,9779,10461"; a="322575445"
X-IronPort-AV: E=Sophos;i="5.93,291,1654585200"; d="scan'208";a="322575445"
Received: from orsmga008.jf.intel.com ([10.7.209.65])
 by fmsmga101.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 05 Sep 2022 08:01:15 -0700
X-IronPort-AV: E=Sophos;i="5.93,291,1654585200"; d="scan'208";a="643836053"
Received: from smaciag-mobl2.ger.corp.intel.com (HELO localhost)
 ([10.252.57.57])
 by orsmga008-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 05 Sep 2022 08:01:13 -0700
From: Jani Nikula <jani.nikula@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Mon,  5 Sep 2022 18:00:49 +0300
Message-Id: <b28b183457cf8871b1b070cbbbc3473bd5288210.1662390010.git.jani.nikula@intel.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <cover.1662390010.git.jani.nikula@intel.com>
References: <cover.1662390010.git.jani.nikula@intel.com>
MIME-Version: 1.0
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH 1/5] drm/i915: remove unused macro
 I915_GTT_OFFSET_NONE
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

Apparently the last user of the macro was removed in commit 9c4ce97d8025
("drm/i915/display: Be explicit in handling the preallocated vma").

Signed-off-by: Jani Nikula <jani.nikula@intel.com>
---
 drivers/gpu/drm/i915/i915_drv.h | 2 --
 1 file changed, 2 deletions(-)

diff --git a/drivers/gpu/drm/i915/i915_drv.h b/drivers/gpu/drm/i915/i915_drv.h
index c9cca165bf5d..c813d7906794 100644
--- a/drivers/gpu/drm/i915/i915_drv.h
+++ b/drivers/gpu/drm/i915/i915_drv.h
@@ -459,8 +459,6 @@ static inline struct intel_gt *to_gt(struct drm_i915_private *i915)
 	     (engine__) && (engine__)->uabi_class == (class__); \
 	     (engine__) = rb_to_uabi_engine(rb_next(&(engine__)->uabi_node)))
 
-#define I915_GTT_OFFSET_NONE ((u32)-1)
-
 #define INTEL_INFO(dev_priv)	(&(dev_priv)->__info)
 #define RUNTIME_INFO(dev_priv)	(&(dev_priv)->__runtime)
 #define DRIVER_CAPS(dev_priv)	(&(dev_priv)->caps)
-- 
2.34.1

