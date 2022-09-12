Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 624C15B598C
	for <lists+intel-gfx@lfdr.de>; Mon, 12 Sep 2022 13:45:45 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 4C89710E3D6;
	Mon, 12 Sep 2022 11:45:41 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga18.intel.com (mga18.intel.com [134.134.136.126])
 by gabe.freedesktop.org (Postfix) with ESMTPS id B46EA10E3CF
 for <intel-gfx@lists.freedesktop.org>; Mon, 12 Sep 2022 11:45:35 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1662983135; x=1694519135;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=yOR6iUp4ZI2aN07x3rxT6WEGahVCJInpGNPo+zqgBQs=;
 b=I1lANUFsJFS9XT/ChQJCCQ2rDXc1Olz4kFEL7w8fcswWkJ4ySewN8fXg
 PCJdF42w44+vMLXf37GzakawfLTwBFQpXJi5jcVsHKhH/+jqtcFSotxDB
 pCwjhLS1ZFvTHao1zvURGHZV2pF4pu9gCSgpcIOpF7mj1NpBIZTLxF+9B
 zdnAVQLAmJY1lOwx3pUB5xW75Mv2Fg0pW1Uqz3v0Uay297u7oGNqA4S5v
 PYSOGNpXzb2UrEm7lrKMbhTl9+ENuw86GeklUsYFXwogm7F3+c9ChSBGY
 ehurbw+cY2T1NxKvY8/yilnSVM8feeNaE7obFke8rLV2NllwdCmoWGC+c Q==;
X-IronPort-AV: E=McAfee;i="6500,9779,10467"; a="280862332"
X-IronPort-AV: E=Sophos;i="5.93,310,1654585200"; d="scan'208";a="280862332"
Received: from fmsmga008.fm.intel.com ([10.253.24.58])
 by orsmga106.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 12 Sep 2022 04:45:35 -0700
X-IronPort-AV: E=Sophos;i="5.93,310,1654585200"; d="scan'208";a="678052190"
Received: from abijaz-mobl.ger.corp.intel.com (HELO localhost)
 ([10.252.58.140])
 by fmsmga008-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 12 Sep 2022 04:45:33 -0700
From: Jani Nikula <jani.nikula@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Mon, 12 Sep 2022 14:45:14 +0300
Message-Id: <b18edb4f96c9d2ec728ef04e6f99d161fe5641d1.1662983005.git.jani.nikula@intel.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <cover.1662983005.git.jani.nikula@intel.com>
References: <cover.1662983005.git.jani.nikula@intel.com>
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
 drivers/gpu/drm/i915/display/skl_watermark.c | 6 +++---
 1 file changed, 3 insertions(+), 3 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/skl_watermark.c b/drivers/gpu/drm/i915/display/skl_watermark.c
index 1f0efde29d96..fd9552f08422 100644
--- a/drivers/gpu/drm/i915/display/skl_watermark.c
+++ b/drivers/gpu/drm/i915/display/skl_watermark.c
@@ -3479,9 +3479,6 @@ static int skl_watermark_ipc_status_open(struct inode *inode, struct file *file)
 {
 	struct drm_i915_private *i915 = inode->i_private;
 
-	if (!HAS_IPC(i915))
-		return -ENODEV;
-
 	return single_open(file, skl_watermark_ipc_status_show, i915);
 }
 
@@ -3523,6 +3520,9 @@ void skl_watermark_ipc_debugfs_register(struct drm_i915_private *i915)
 {
 	struct drm_minor *minor = i915->drm.primary;
 
+	if (!HAS_IPC(i915))
+		return;
+
 	debugfs_create_file("i915_ipc_status", 0644, minor->debugfs_root, i915,
 			    &skl_watermark_ipc_status_fops);
 }
-- 
2.34.1

