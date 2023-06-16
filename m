Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id AC682733857
	for <lists+intel-gfx@lfdr.de>; Fri, 16 Jun 2023 20:51:08 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 6004010E679;
	Fri, 16 Jun 2023 18:51:05 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga11.intel.com (mga11.intel.com [192.55.52.93])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 4C0CF10E679
 for <intel-gfx@lists.freedesktop.org>; Fri, 16 Jun 2023 18:51:04 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1686941464; x=1718477464;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=q5WSxxZ+AiKdfjQ2cSk0XLtAtvr/pSc+nD10S6Ac/U0=;
 b=nGYmG8k5PnqhGdN1RzbtAHNQItv2nynCQkCWioTti62YhIDBS15XdUs9
 703xUs8JtjtmXbYppA57StjCaE4BGuEgEV5XvLtVX9xCp/zIXPQeTa7S4
 kCyKhmloady5gGfElyV7++wxAdPbVYP/Fqs76j+IywlRScogHfez5wTMh
 12G1EBR/C6NoJtj0L3ta8SX8Z8I5FTCoeZmx9PhHAI86nUn7D6jKrSZNS
 XnVP05XbE/pLp9iNbsfVr1g0y+PmhbCM7DqqyDplm18DSRribyggA81v4
 ESFAZvK1rPyYLX6jZrgZzm3+mZUy7xqxmTGXDeFIqP3lRicNoSAfYyk14 w==;
X-IronPort-AV: E=McAfee;i="6600,9927,10743"; a="356778181"
X-IronPort-AV: E=Sophos;i="6.00,248,1681196400"; d="scan'208";a="356778181"
Received: from orsmga005.jf.intel.com ([10.7.209.41])
 by fmsmga102.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 16 Jun 2023 11:51:03 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10743"; a="887198405"
X-IronPort-AV: E=Sophos;i="6.00,248,1681196400"; d="scan'208";a="887198405"
Received: from unknown (HELO ideak-desk.fi.intel.com) ([10.237.72.78])
 by orsmga005-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 16 Jun 2023 11:51:01 -0700
From: Imre Deak <imre.deak@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Fri, 16 Jun 2023 21:51:01 +0300
Message-Id: <20230616185104.2502003-1-imre.deak@intel.com>
X-Mailer: git-send-email 2.37.2
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH 1/4] drm/i915: Add missing forward
 declarations/includes to display power headers
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
Cc: Randy Dunlap <rdunlap@infradead.org>
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

Add the seq_file struct forward declaration to intel_display_power.h
fixing the build error below. While at it add the rest of missing
forward declarations/includes to the display power header files.

In file included from <command-line>:
./../drivers/gpu/drm/i915/display/intel_display_power.h:255:70: error: 'struct seq_file'
declared inside parameter list will not be visible outside of this definition or declaration [-Werror]
  255 | void intel_display_power_debug(struct drm_i915_private *i915, struct seq_file *m);
      |                                                                      ^~~~~~~~

Reported-by: Randy Dunlap <rdunlap@infradead.org>
Closes: https://lore.kernel.org/intel-gfx/89adc1ac-25a0-6eb6-4cc9-ab6cc8d49730@infradead.org/
Signed-off-by: Imre Deak <imre.deak@intel.com>
---
 drivers/gpu/drm/i915/display/intel_display_power.h      | 4 ++++
 drivers/gpu/drm/i915/display/intel_display_power_well.h | 2 ++
 2 files changed, 6 insertions(+)

diff --git a/drivers/gpu/drm/i915/display/intel_display_power.h b/drivers/gpu/drm/i915/display/intel_display_power.h
index be1a87bde0c9d..df38632c62371 100644
--- a/drivers/gpu/drm/i915/display/intel_display_power.h
+++ b/drivers/gpu/drm/i915/display/intel_display_power.h
@@ -6,6 +6,9 @@
 #ifndef __INTEL_DISPLAY_POWER_H__
 #define __INTEL_DISPLAY_POWER_H__
 
+#include <linux/mutex.h>
+#include <linux/workqueue.h>
+
 #include "intel_wakeref.h"
 
 enum aux_ch;
@@ -16,6 +19,7 @@ enum port;
 struct drm_i915_private;
 struct i915_power_well;
 struct intel_encoder;
+struct seq_file;
 
 /*
  * Keep the pipe, transcoder, port (DDI_LANES,DDI_IO,AUX) domain instances
diff --git a/drivers/gpu/drm/i915/display/intel_display_power_well.h b/drivers/gpu/drm/i915/display/intel_display_power_well.h
index e494df379e6c2..1015bba4af01e 100644
--- a/drivers/gpu/drm/i915/display/intel_display_power_well.h
+++ b/drivers/gpu/drm/i915/display/intel_display_power_well.h
@@ -12,6 +12,8 @@
 
 struct drm_i915_private;
 struct i915_power_well;
+struct i915_power_well_ops;
+struct intel_encoder;
 
 #define for_each_power_well(__dev_priv, __power_well)				\
 	for ((__power_well) = (__dev_priv)->display.power.domains.power_wells;	\
-- 
2.37.2

