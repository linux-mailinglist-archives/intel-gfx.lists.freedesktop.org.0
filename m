Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 746175AD8B5
	for <lists+intel-gfx@lfdr.de>; Mon,  5 Sep 2022 20:01:46 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 7A80710E477;
	Mon,  5 Sep 2022 18:01:43 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga18.intel.com (mga18.intel.com [134.134.136.126])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 71E5210E476
 for <intel-gfx@lists.freedesktop.org>; Mon,  5 Sep 2022 18:01:38 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1662400898; x=1693936898;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=emaXKAQXjTsYAt6THXlolUltPkKj/qLpZNosJQVv0SM=;
 b=J8cH+v9G08/tT5xThkK2WBCqx/EL/n1a/hgMgTOVMb5V0p8fxN8t29zW
 Upb8vRbbRtImW3miKb95PcCT3Hm0uF6udaihfLKNEbxuXFKd4GjlUNJFK
 A0Fm/jtfcs5ca8zTLOD9a9BtDnh6F3dJp20OU+E1rUi79cb1qaRUfr2f3
 6y2xQKguONcW3d+gsXqHZaQhY7aHpxVOCwKlB8tAgluQXbEN7fm9x3ANP
 kJuRa7IstjRuFEHH2dxwCVaC0XAaSmzl+29rDHYTRFmw7Kgf5H+fjIutK
 ps20Cb3ekuSjznrsz0sBwaqHY/+taq17pQhp2f0bTqOddzod9wwT/CxOX g==;
X-IronPort-AV: E=McAfee;i="6500,9779,10461"; a="279447058"
X-IronPort-AV: E=Sophos;i="5.93,291,1654585200"; d="scan'208";a="279447058"
Received: from orsmga008.jf.intel.com ([10.7.209.65])
 by orsmga106.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 05 Sep 2022 11:01:37 -0700
X-IronPort-AV: E=Sophos;i="5.93,291,1654585200"; d="scan'208";a="643878429"
Received: from smaciag-mobl2.ger.corp.intel.com (HELO localhost)
 ([10.252.57.57])
 by orsmga008-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 05 Sep 2022 11:01:36 -0700
From: Jani Nikula <jani.nikula@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Mon,  5 Sep 2022 21:01:06 +0300
Message-Id: <65c7d79adbfbd8a5b69217b0f9437d8798c17218.1662400767.git.jani.nikula@intel.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <cover.1662400767.git.jani.nikula@intel.com>
References: <cover.1662400767.git.jani.nikula@intel.com>
MIME-Version: 1.0
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH 3/5] drm/i915/ipc: register debugfs only if IPC
 available
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

It looks like trying to enable IPC via debugfs on platforms that don't
have IPC resulted in dmesg info message about IPC being enabled, which
is clearly not possible and would not happen.

Seems sensible to register IPC debugfs only on platforms that have IPC.

Signed-off-by: Jani Nikula <jani.nikula@intel.com>
---
 drivers/gpu/drm/i915/display/intel_ipc.c | 6 +++---
 1 file changed, 3 insertions(+), 3 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_ipc.c b/drivers/gpu/drm/i915/display/intel_ipc.c
index 389d7d8012d9..1285d88b5d25 100644
--- a/drivers/gpu/drm/i915/display/intel_ipc.c
+++ b/drivers/gpu/drm/i915/display/intel_ipc.c
@@ -68,9 +68,6 @@ static int intel_ipc_status_open(struct inode *inode, struct file *file)
 {
 	struct drm_i915_private *i915 = inode->i_private;
 
-	if (!HAS_IPC(i915))
-		return -ENODEV;
-
 	return single_open(file, intel_ipc_status_show, i915);
 }
 
@@ -111,6 +108,9 @@ void intel_ipc_debugfs_register(struct drm_i915_private *i915)
 {
 	struct drm_minor *minor = i915->drm.primary;
 
+	if (!HAS_IPC(i915))
+		return;
+
 	debugfs_create_file("i915_ipc_status", 0644, minor->debugfs_root,
 			    i915, &intel_ipc_status_fops);
 }
-- 
2.34.1

