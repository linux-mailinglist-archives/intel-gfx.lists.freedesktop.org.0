Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id DFF8F748946
	for <lists+intel-gfx@lfdr.de>; Wed,  5 Jul 2023 18:32:14 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 852FE10E3A8;
	Wed,  5 Jul 2023 16:32:08 +0000 (UTC)
X-Original-To: Intel-gfx@lists.freedesktop.org
Delivered-To: Intel-gfx@lists.freedesktop.org
Received: from mga04.intel.com (mga04.intel.com [192.55.52.120])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 032DB10E3A7;
 Wed,  5 Jul 2023 16:32:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1688574726; x=1720110726;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=P0HaUU25EVVKFeHDi3LH9dI7lMcn+lPR4hAV24sy5fQ=;
 b=h1H5Jh511Z6LPA0OlBm7R8vf28P3crsbk8oNxtB9uWU6C90WKR96aFsi
 rqQGqzSu8Q1tcDWLHqQrbjV01sVO2pjtNvmHe4WmABzRon65A60Lnp2FT
 iSDsOyH3lIqvbCx0QKUi5AlCMAYaNJcgamOEVHRBGMW1CMzltyuyTJYiW
 iq+al6wpNHeIrxCtb7uYZQBs6mkml97Dx+9IwiKaoTu2foR4USbjJDZ4B
 48vsRrv8H0CgkdhOs9/NlCivFGXgJUxRhjss2BspxDNfnwoFDhBeKWhGe
 E1rPSsOaR/9CQhQyXbbdjNedPCFfwd6qBYURhm50q5zhAQdsh0UV4kpDg w==;
X-IronPort-AV: E=McAfee;i="6600,9927,10762"; a="362255335"
X-IronPort-AV: E=Sophos;i="6.01,183,1684825200"; d="scan'208";a="362255335"
Received: from orsmga001.jf.intel.com ([10.7.209.18])
 by fmsmga104.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 05 Jul 2023 09:31:18 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10762"; a="754412988"
X-IronPort-AV: E=Sophos;i="6.01,183,1684825200"; d="scan'208";a="754412988"
Received: from jputsman-mobl.ger.corp.intel.com (HELO localhost.localdomain)
 ([10.213.200.219])
 by orsmga001-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 05 Jul 2023 09:31:16 -0700
From: Tvrtko Ursulin <tvrtko.ursulin@linux.intel.com>
To: igt-dev@lists.freedesktop.org,
	Intel-gfx@lists.freedesktop.org
Date: Wed,  5 Jul 2023 17:31:04 +0100
Message-Id: <20230705163105.3804677-3-tvrtko.ursulin@linux.intel.com>
X-Mailer: git-send-email 2.39.2
In-Reply-To: <20230705163105.3804677-1-tvrtko.ursulin@linux.intel.com>
References: <20230705163105.3804677-1-tvrtko.ursulin@linux.intel.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH i-g-t 2/3] lib/igt_drm_clients: Store memory
 info in the client
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
Cc: Rob Clark <robdclark@chromium.org>
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

From: Tvrtko Ursulin <tvrtko.ursulin@intel.com>

Define the storage structure and copy over memory data as parsed by the
fdinfo helpers.

Signed-off-by: Tvrtko Ursulin <tvrtko.ursulin@intel.com>
Cc: Rob Clark <robdclark@chromium.org>
---
 lib/igt_drm_clients.c | 31 +++++++++++++++++++++++++++++++
 lib/igt_drm_clients.h | 11 +++++++++++
 2 files changed, 42 insertions(+)

diff --git a/lib/igt_drm_clients.c b/lib/igt_drm_clients.c
index fdea42752a81..0db5b64effea 100644
--- a/lib/igt_drm_clients.c
+++ b/lib/igt_drm_clients.c
@@ -103,6 +103,8 @@ igt_drm_client_update(struct igt_drm_client *c, unsigned int pid, char *name,
 			c->clients->max_name_len = len;
 	}
 
+	/* Engines */
+
 	c->last_runtime = 0;
 	c->total_runtime = 0;
 
@@ -118,6 +120,13 @@ igt_drm_client_update(struct igt_drm_client *c, unsigned int pid, char *name,
 		c->last[i] = info->busy[i];
 	}
 
+	/* Memory regions */
+	for (i = 0; i <= c->regions->max_region_id; i++) {
+		assert(i < ARRAY_SIZE(info->region_mem));
+
+		c->memory[i] = info->region_mem[i];
+	}
+
 	c->samples++;
 	c->status = IGT_DRM_CLIENT_ALIVE;
 }
@@ -154,6 +163,8 @@ igt_drm_client_add(struct igt_drm_clients *clients,
 	c->id = info->id;
 	c->drm_minor = drm_minor;
 	c->clients = clients;
+
+	/* Engines */
 	c->engines = malloc(sizeof(*c->engines));
 	assert(c->engines);
 	memset(c->engines, 0, sizeof(*c->engines));
@@ -178,6 +189,26 @@ igt_drm_client_add(struct igt_drm_clients *clients,
 	c->last = calloc(c->engines->max_engine_id + 1, sizeof(c->last));
 	assert(c->val && c->last);
 
+	/* Memory regions */
+	c->regions = malloc(sizeof(*c->regions));
+	assert(c->regions);
+	memset(c->regions, 0, sizeof(*c->regions));
+	c->regions->names = calloc(info->last_region_index + 1,
+				   sizeof(*c->regions->names));
+	assert(c->regions->names);
+
+	for (i = 0; i <= info->last_region_index; i++) {
+		if (!info->region_names[i])
+			continue;
+
+		c->regions->names[i] = strdup(info->region_names[i]);
+		assert(c->regions->names[i]);
+		c->regions->num_regions++;
+		c->regions->max_region_id = i;
+	}
+	c->memory = calloc(c->regions->max_region_id + 1, sizeof(*c->memory));
+	assert(c->memory);
+
 	igt_drm_client_update(c, pid, name, info);
 }
 
diff --git a/lib/igt_drm_clients.h b/lib/igt_drm_clients.h
index ed795c193986..07bd236d43bf 100644
--- a/lib/igt_drm_clients.h
+++ b/lib/igt_drm_clients.h
@@ -8,6 +8,8 @@
 
 #include <stdint.h>
 
+#include "lib/igt_drm_fdinfo.h"
+
 /**
  * SECTION:igt_drm_clients
  * @short_description: Parsing driver exposed fdinfo to track DRM clients
@@ -39,12 +41,20 @@ struct igt_drm_client_engines {
 	char **names; /* Array of engine names, either auto-detected or from the passed in engine map. */
 };
 
+struct igt_drm_client_regions {
+	unsigned int num_regions; /* Number of discovered memory_regions. */
+	unsigned int max_region_id; /* Largest memory region index discovered.
+				       (Can differ from num_regions - 1 when using the region map facility.) */
+	char **names; /* Array of region names, either auto-detected or from the passed in region map. */
+};
+
 struct igt_drm_clients;
 
 struct igt_drm_client {
 	struct igt_drm_clients *clients; /* Owning list. */
 
 	enum igt_drm_client_status status;
+	struct igt_drm_client_regions *regions; /* Memory regions present in this client, to map with memory usage. */
 	struct igt_drm_client_engines *engines; /* Engines used by this client, to map with busynees data. */
 	unsigned int id; /* DRM client id from fdinfo. */
 	unsigned int drm_minor; /* DRM minor of this client. */
@@ -57,6 +67,7 @@ struct igt_drm_client {
 	unsigned long last_runtime; /* Aggregate busyness on all engines since previous scan. */
 	unsigned long *val; /* Array of engine busyness data, relative to previous scan. */
 	uint64_t *last; /* Array of engine busyness data as parsed from fdinfo. */
+	struct drm_client_meminfo *memory; /* Array of region memory utilisation as parsed from fdinfo. */
 };
 
 struct igt_drm_clients {
-- 
2.39.2

