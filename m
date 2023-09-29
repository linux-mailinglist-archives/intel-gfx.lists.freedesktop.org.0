Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 5CB2B7B3281
	for <lists+intel-gfx@lfdr.de>; Fri, 29 Sep 2023 14:26:02 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 0948610E71B;
	Fri, 29 Sep 2023 12:25:58 +0000 (UTC)
X-Original-To: Intel-gfx@lists.freedesktop.org
Delivered-To: Intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [134.134.136.31])
 by gabe.freedesktop.org (Postfix) with ESMTPS id C23A310E70A;
 Fri, 29 Sep 2023 12:25:35 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1695990335; x=1727526335;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=cBaFm1ac9yKFb5jgD+NCZxo7kujT+Lwyy2+WipwqjHw=;
 b=DyER4VdUBVfavehptjOqzqxvhja7/KmLkR+RVpglErQRz9QY/0XX62yB
 SXFi5zOLBwxQd4Z3KdS7b6xW1FTQsI9jIPfhO0vZdq6OXVkGP/iGjyYD5
 hG4jcNpObPlt6j1WCmf6axxZVRs3uH8YUTsmaJVAtxkN6V335g1fhIrPY
 a0htCniAe/BUShofx6j4JHKDZbR14cGNgaC4EjWQdJdJGIq9miqUNH9Z8
 GgtInL3q+wOkyeNsbynN7YeedXm9n83UIJmmtjwQqWBZ7T+bGIH5zzDGa
 /ge/Pw2NMPaFwU4I/ai4/XxLAYHqoIWYIClj4ZB0n+3G5gC+0Fj9/dqts A==;
X-IronPort-AV: E=McAfee;i="6600,9927,10847"; a="446443779"
X-IronPort-AV: E=Sophos;i="6.03,187,1694761200"; d="scan'208";a="446443779"
Received: from orsmga006.jf.intel.com ([10.7.209.51])
 by orsmga104.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 29 Sep 2023 05:25:35 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10847"; a="726577171"
X-IronPort-AV: E=Sophos;i="6.03,187,1694761200"; d="scan'208";a="726577171"
Received: from pbrady4x-mobl1.ger.corp.intel.com (HELO localhost.localdomain)
 ([10.213.203.84])
 by orsmga006-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 29 Sep 2023 05:25:34 -0700
From: Tvrtko Ursulin <tvrtko.ursulin@linux.intel.com>
To: igt-dev@lists.freedesktop.org,
	Intel-gfx@lists.freedesktop.org
Date: Fri, 29 Sep 2023 13:25:13 +0100
Message-Id: <20230929122517.349348-9-tvrtko.ursulin@linux.intel.com>
X-Mailer: git-send-email 2.39.2
In-Reply-To: <20230929122517.349348-1-tvrtko.ursulin@linux.intel.com>
References: <20230929122517.349348-1-tvrtko.ursulin@linux.intel.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH i-g-t 08/12] lib/igt_drm_clients: Fix client id
 type confusion
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
index 739ed9839961..35c125f22c48 100644
--- a/tools/intel_gpu_top.c
+++ b/tools/intel_gpu_top.c
@@ -2102,7 +2102,7 @@ print_client(struct igt_drm_client *c, struct engines *engines, double t, int li
 	} else if (output_mode == JSON) {
 		char buf[64];
 
-		snprintf(buf, sizeof(buf), "%u", c->id);
+		snprintf(buf, sizeof(buf), "%lu", c->id);
 		pops->open_struct(buf);
 
 		__json_add_member("name", c->print_name);
-- 
2.39.2

