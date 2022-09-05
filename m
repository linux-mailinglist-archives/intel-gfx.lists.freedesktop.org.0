Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 8162B5AD5AB
	for <lists+intel-gfx@lfdr.de>; Mon,  5 Sep 2022 17:01:47 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id C4F3C10E404;
	Mon,  5 Sep 2022 15:01:44 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga04.intel.com (mga04.intel.com [192.55.52.120])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 3E98510E407
 for <intel-gfx@lists.freedesktop.org>; Mon,  5 Sep 2022 15:01:39 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1662390099; x=1693926099;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=K7hSLrjYtzKYmLHw7w70uSMPNbsSEgtPH/cZ6XpvhAc=;
 b=mi40d+lOy6Eb2rbQ2CgI7oDFsMV4wC4OZ7aa44fskwAGjXnimuIHwDpv
 hlaoGJCItoDWZnORdQC+A7wLDO0IdBgQT5TLk6RqqHk3IncVu0/Vydq9z
 fdTBAVdmriTK04scSQrSibpEp3y8zuZCZKSem7BVyXvvT9IJRvq5J+1PK
 83CqTlQBkz6TbKo6cXj7c3WmRwZ3pcwV3Swm9IOzumKAwpsjokB5zOLpH
 MrVPqxutP5zSkAtPl0CeNkIOFc77Vnpi8qW9lQ/lwVzzVWOTqZYMxrA4p
 VKVuXnPNIoCG5U/vQd+g3b/D8fYgBBK1skNyJgjbFef4xgdro3qrbgW41 g==;
X-IronPort-AV: E=McAfee;i="6500,9779,10461"; a="295143423"
X-IronPort-AV: E=Sophos;i="5.93,291,1654585200"; d="scan'208";a="295143423"
Received: from orsmga006.jf.intel.com ([10.7.209.51])
 by fmsmga104.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 05 Sep 2022 08:01:19 -0700
X-IronPort-AV: E=Sophos;i="5.93,291,1654585200"; d="scan'208";a="590947534"
Received: from smaciag-mobl2.ger.corp.intel.com (HELO localhost)
 ([10.252.57.57])
 by orsmga006-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 05 Sep 2022 08:01:17 -0700
From: Jani Nikula <jani.nikula@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Mon,  5 Sep 2022 18:00:50 +0300
Message-Id: <0f88380416c1bd457af58bb31aeb297749a6fb9e.1662390010.git.jani.nikula@intel.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <cover.1662390010.git.jani.nikula@intel.com>
References: <cover.1662390010.git.jani.nikula@intel.com>
MIME-Version: 1.0
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH 2/5] drm/i915: remove unused
 i915_gem_set_global_seqno() declaration
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

The function was removed four years ago in commit 6faf5916e6be
("drm/i915: Remove HW semaphores for gen7 inter-engine
synchronisation"). Finish the job.

Signed-off-by: Jani Nikula <jani.nikula@intel.com>
---
 drivers/gpu/drm/i915/i915_drv.h | 2 --
 1 file changed, 2 deletions(-)

diff --git a/drivers/gpu/drm/i915/i915_drv.h b/drivers/gpu/drm/i915/i915_drv.h
index c813d7906794..54898faa9b72 100644
--- a/drivers/gpu/drm/i915/i915_drv.h
+++ b/drivers/gpu/drm/i915/i915_drv.h
@@ -1035,8 +1035,6 @@ int i915_gem_object_unbind(struct drm_i915_gem_object *obj,
 
 void i915_gem_runtime_suspend(struct drm_i915_private *dev_priv);
 
-int __must_check i915_gem_set_global_seqno(struct drm_device *dev, u32 seqno);
-
 int __must_check i915_gem_init(struct drm_i915_private *dev_priv);
 void i915_gem_driver_register(struct drm_i915_private *i915);
 void i915_gem_driver_unregister(struct drm_i915_private *i915);
-- 
2.34.1

