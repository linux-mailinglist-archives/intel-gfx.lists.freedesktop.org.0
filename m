Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 140FD7E21CD
	for <lists+intel-gfx@lfdr.de>; Mon,  6 Nov 2023 13:35:39 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 2E7D010E2E8;
	Mon,  6 Nov 2023 12:35:35 +0000 (UTC)
X-Original-To: Intel-gfx@lists.freedesktop.org
Delivered-To: Intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [134.134.136.65])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 54D4C10E2FA;
 Mon,  6 Nov 2023 12:35:30 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1699274130; x=1730810130;
 h=from:to:subject:date:message-id:in-reply-to:references:
 mime-version:content-transfer-encoding;
 bh=Z8sUXaTQUMTttpL/OhbVUqAFI8NVmMNXqYMbm042WKE=;
 b=BZFVcFEbpJkF6tP7ZEMH8QR4VRnzU8JQOZT7DC47vIo74DJcXOWGWubY
 +WHj6OOlWbrnwFSgT0n3pJOmfB54ZTUt1BDxlAjTfpzSc97TOY5aGQ7VM
 P4yowTU8Ur/Kdp40JSwzn/Cv6unrEZ4uwGXJVfy4GqfCVvtbwfYfwu6Ge
 ciCqZSe3Lv2mNwxWrcMvJ+dFaqcnEo2bpy7rGQAZd+Q/2S8ajetljTdOM
 FpUVMmUFzhU1adAnsYbckAWxKfqHyoigfpTk0gmwZShK1ECDk/VSTkCtx
 5w3OmJA1Asowf4nms0OzYVeeaIM+7smjZHaA+SbqOQaJBtSpgrpiJpyFj w==;
X-IronPort-AV: E=McAfee;i="6600,9927,10885"; a="393159558"
X-IronPort-AV: E=Sophos;i="6.03,281,1694761200"; d="scan'208";a="393159558"
Received: from orsmga003.jf.intel.com ([10.7.209.27])
 by orsmga103.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 06 Nov 2023 04:35:30 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10885"; a="712188496"
X-IronPort-AV: E=Sophos;i="6.03,281,1694761200"; d="scan'208";a="712188496"
Received: from ajayshan-mobl.ger.corp.intel.com (HELO localhost.localdomain)
 ([10.213.234.152])
 by orsmga003-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 06 Nov 2023 04:35:28 -0800
From: Tvrtko Ursulin <tvrtko.ursulin@linux.intel.com>
To: igt-dev@lists.freedesktop.org,
	Intel-gfx@lists.freedesktop.org
Date: Mon,  6 Nov 2023 12:35:14 +0000
Message-Id: <20231106123518.588528-5-tvrtko.ursulin@linux.intel.com>
X-Mailer: git-send-email 2.39.2
In-Reply-To: <20231106123518.588528-1-tvrtko.ursulin@linux.intel.com>
References: <20231106123518.588528-1-tvrtko.ursulin@linux.intel.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [CI 5/9] lib/igt_drm_clients: Fix client id type
 confusion
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

From: Tvrtko Ursulin <tvrtko.ursulin@intel.com>

Igt_drm_fdinfo defines it as an unsigned long so it is best that it
matches here as well.

Signed-off-by: Tvrtko Ursulin <tvrtko.ursulin@intel.com>
Reviewed-by: Kamil Konieczny <kamil.konieczny@linux.intel.com>
---
 lib/igt_drm_clients.c | 2 +-
 lib/igt_drm_clients.h | 2 +-
 tools/intel_gpu_top.c | 2 +-
 3 files changed, 3 insertions(+), 3 deletions(-)

diff --git a/lib/igt_drm_clients.c b/lib/igt_drm_clients.c
index 47ad137d5f1f..da51d7335b2b 100644
--- a/lib/igt_drm_clients.c
+++ b/lib/igt_drm_clients.c
@@ -49,7 +49,7 @@ struct igt_drm_clients *igt_drm_clients_init(void *private_data)
 static struct igt_drm_client *
 igt_drm_clients_find(struct igt_drm_clients *clients,
 		     enum igt_drm_client_status status,
-		     unsigned int drm_minor, unsigned int id)
+		     unsigned int drm_minor, unsigned long id)
 {
 	unsigned int start, num;
 	struct igt_drm_client *c;
diff --git a/lib/igt_drm_clients.h b/lib/igt_drm_clients.h
index 07bd236d43bf..cd37f8508b20 100644
--- a/lib/igt_drm_clients.h
+++ b/lib/igt_drm_clients.h
@@ -56,7 +56,7 @@ struct igt_drm_client {
 	enum igt_drm_client_status status;
 	struct igt_drm_client_regions *regions; /* Memory regions present in this client, to map with memory usage. */
 	struct igt_drm_client_engines *engines; /* Engines used by this client, to map with busynees data. */
-	unsigned int id; /* DRM client id from fdinfo. */
+	unsigned long id; /* DRM client id from fdinfo. */
 	unsigned int drm_minor; /* DRM minor of this client. */
 	unsigned int pid; /* PID which has this DRM fd open. */
 	char pid_str[10]; /* Cached PID representation. */
diff --git a/tools/intel_gpu_top.c b/tools/intel_gpu_top.c
index 00506c63db4e..34fa99235e11 100644
--- a/tools/intel_gpu_top.c
+++ b/tools/intel_gpu_top.c
@@ -2106,7 +2106,7 @@ print_client(struct igt_drm_client *c, struct engines *engines, double t, int li
 	} else if (output_mode == JSON) {
 		char buf[64];
 
-		snprintf(buf, sizeof(buf), "%u", c->id);
+		snprintf(buf, sizeof(buf), "%lu", c->id);
 		pops->open_struct(buf);
 
 		__json_add_member("name", c->print_name);
-- 
2.39.2

