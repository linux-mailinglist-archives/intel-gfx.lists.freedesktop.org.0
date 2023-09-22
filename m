Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 51ECA7AB2EA
	for <lists+intel-gfx@lfdr.de>; Fri, 22 Sep 2023 15:46:07 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id F3C8610E671;
	Fri, 22 Sep 2023 13:46:03 +0000 (UTC)
X-Original-To: Intel-gfx@lists.freedesktop.org
Delivered-To: Intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.55.52.93])
 by gabe.freedesktop.org (Postfix) with ESMTPS id F304C10E675;
 Fri, 22 Sep 2023 13:45:15 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1695390338; x=1726926338;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=ODuRqiCEYhg8FjXO8Q7WnDSgkg8CIzYwYZaG7QoCb8o=;
 b=AgrkWe4DN/wOOM5bXzCbKr6UQdeBk8AFgCt9U98VKuXIbxwuyyzbfJns
 lA5EpPZxh2eNFeXppuiDSzIqOw0YL/0pLbmbZnBrgc27LgLC/+DVo5K5G
 fwiixh90RUfk6RY3AvYrZvX9H6OlFV/sk3Dy5OrL0NopAkYT2j6XSiTLS
 xfJw+6c2gT02bAZijh4xUE6z/3ambiSp/5b2SQZwacOR8H3dM9ZqBeWdT
 wqWVj6i0V3fhXTiD1cgQjUhLi0ugdkjfR3et/a6tFUhloXvvFcPa6EhNh
 zMvBW9lQjA1nBs3T2H1LRKGUjFJh7ZNaFcFMds5Tvz80q879tV+0jLx+N A==;
X-IronPort-AV: E=McAfee;i="6600,9927,10841"; a="378117154"
X-IronPort-AV: E=Sophos;i="6.03,167,1694761200"; d="scan'208";a="378117154"
Received: from orsmga004.jf.intel.com ([10.7.209.38])
 by fmsmga102.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 22 Sep 2023 06:44:55 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10841"; a="871243606"
X-IronPort-AV: E=Sophos;i="6.03,167,1694761200"; d="scan'208";a="871243606"
Received: from placki-mobl.ger.corp.intel.com (HELO localhost.localdomain)
 ([10.213.200.149])
 by orsmga004-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 22 Sep 2023 06:44:53 -0700
From: Tvrtko Ursulin <tvrtko.ursulin@linux.intel.com>
To: igt-dev@lists.freedesktop.org,
	Intel-gfx@lists.freedesktop.org
Date: Fri, 22 Sep 2023 14:44:33 +0100
Message-Id: <20230922134437.234888-9-tvrtko.ursulin@linux.intel.com>
X-Mailer: git-send-email 2.39.2
In-Reply-To: <20230922134437.234888-1-tvrtko.ursulin@linux.intel.com>
References: <20230922134437.234888-1-tvrtko.ursulin@linux.intel.com>
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
index a7a24e527f01..e18ec25e8036 100644
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

