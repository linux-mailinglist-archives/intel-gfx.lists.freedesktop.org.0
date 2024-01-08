Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 2DB14827B47
	for <lists+intel-gfx@lfdr.de>; Tue,  9 Jan 2024 00:07:18 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id BD26610E33C;
	Mon,  8 Jan 2024 23:07:03 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.8])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 2959910E332
 for <intel-gfx@lists.freedesktop.org>; Mon,  8 Jan 2024 23:07:02 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1704755222; x=1736291222;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=kiLWziUVy5yYD4C4EkkdzxeuPKa2zeai2ZJF8AZqB8s=;
 b=ixlwhbDYvLM7EmPucWvuJ54cgD2L4QGXM3RraMny4TpnyUHqim7ILZcY
 Y2UGYTwHOBEfgzEx4GR9Afow9CqkbaXBfp/Lhb2Wt8VZwMhaOJ6tgnkM4
 bsb/x1RiuGv8YAy9bHvdD3wIzQB+rTD6PY5T6p4F38ecnijP9+pHpsbQ9
 v/IvuFb20oYhmWs6CJ/2TQky31y5pCGST7gvLdD/P/kqNy1C5sup4iUDs
 Mracqx2J8AiALA7ApLnXzRtQzDBW7CdDnnrk07cDJHhDyTlGcKa2MU/qN
 YNbYduaK2qJxKU7tlBG5453Uk9M620A45WIjT7q4NLZqU7rhHDVIXxeEr w==;
X-IronPort-AV: E=McAfee;i="6600,9927,10947"; a="11514131"
X-IronPort-AV: E=Sophos;i="6.04,181,1695711600"; d="scan'208";a="11514131"
Received: from orsmga007.jf.intel.com ([10.7.209.58])
 by fmvoesa102.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 08 Jan 2024 15:07:02 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10947"; a="774647112"
X-IronPort-AV: E=Sophos;i="6.04,181,1695711600"; d="scan'208";a="774647112"
Received: from invictus.jf.intel.com ([10.165.21.201])
 by orsmga007-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 08 Jan 2024 15:07:00 -0800
From: Radhakrishna Sripada <radhakrishna.sripada@intel.com>
To: intel-gfx@lists.freedesktop.org
Subject: [RFC 13/15] drm/i915: Make intel_load_vbt_firmware operate on
 intel_vbt
Date: Mon,  8 Jan 2024 15:05:15 -0800
Message-Id: <20240108230517.1497504-14-radhakrishna.sripada@intel.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20240108230517.1497504-1-radhakrishna.sripada@intel.com>
References: <20240108230517.1497504-1-radhakrishna.sripada@intel.com>
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

intel_vbt will be used to cache the vbt read from firmware. Make
vbt firmware read variant operate on intel_vbt to cache the fw for
future reference.

Signed-off-by: Radhakrishna Sripada <radhakrishna.sripada@intel.com>
---
 drivers/gpu/drm/i915/display/intel_bios.c | 6 +++---
 1 file changed, 3 insertions(+), 3 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_bios.c b/drivers/gpu/drm/i915/display/intel_bios.c
index 5a06879d6825..1b5cc3416d77 100644
--- a/drivers/gpu/drm/i915/display/intel_bios.c
+++ b/drivers/gpu/drm/i915/display/intel_bios.c
@@ -2949,9 +2949,9 @@ bool intel_bios_is_valid_vbt(const void *buf, size_t size)
 	return vbt;
 }
 
-static int intel_load_vbt_firmware(struct drm_i915_private *dev_priv)
+static int intel_load_vbt_firmware(struct drm_i915_private *dev_priv,
+				   struct intel_vbt *vbt)
 {
-	struct intel_vbt *vbt = &dev_priv->display.vbt;
 	const struct firmware *fw = NULL;
 	const char *name = dev_priv->display.params.vbt_firmware;
 	int ret;
@@ -3153,7 +3153,7 @@ void intel_bios_init(struct drm_i915_private *i915)
 
 	init_vbt_defaults(i915);
 
-	intel_load_vbt_firmware(i915);
+	intel_load_vbt_firmware(i915, vbt);
 
 	if (!vbt->vbt && opregion->asls)
 		intel_load_opregion_vbt(i915, opregion, vbt);
-- 
2.34.1

