Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 603F66E45D8
	for <lists+intel-gfx@lfdr.de>; Mon, 17 Apr 2023 12:57:55 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 8B73910E416;
	Mon, 17 Apr 2023 10:57:50 +0000 (UTC)
X-Original-To: Intel-gfx@lists.freedesktop.org
Delivered-To: Intel-gfx@lists.freedesktop.org
Received: from mga07.intel.com (mga07.intel.com [134.134.136.100])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 4A3EF10E40F;
 Mon, 17 Apr 2023 10:57:48 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1681729068; x=1713265068;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=wPKswX9bQg2liRh77nhHxF2eSkz/pUCxRs4m+ja9pys=;
 b=Db1oqqeiZvB8Bs/sbxZ3gyf6LOAd5RT0pRPry+eKdHbrbvFsK7ZSMNKj
 HWAa0jYjZ41xwum9Uy3EMX+tM7nBsbcrNlXZngAJgYNMFWW7HWJzcIyjW
 k6uBdOhduEei2tzLkyxymOm0DeGEksM3wP/XJL1+LvRkx2hikO/fI+UjE
 2KUFKvvqXqpxgFtTgIYqTYOUsEb8wKJyN/Urnae8fOKLbCN8kEdbHS9hf
 C5PuE+5HY1EDFeLeGx9apkGP+1fWJUPNpmSfKY83GK8OdZGWNINeWpEWX
 mV44kyR6h4sAevpgdyz6y5M3qWUWqCBWQhuY7CnT3jdAnoNLgC30fMPw1 Q==;
X-IronPort-AV: E=McAfee;i="6600,9927,10682"; a="410073191"
X-IronPort-AV: E=Sophos;i="5.99,203,1677571200"; d="scan'208";a="410073191"
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
 by orsmga105.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 17 Apr 2023 03:57:48 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10682"; a="834363425"
X-IronPort-AV: E=Sophos;i="5.99,203,1677571200"; d="scan'208";a="834363425"
Received: from gtohallo-mobl.ger.corp.intel.com (HELO localhost.localdomain)
 ([10.213.232.210])
 by fmsmga001-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 17 Apr 2023 03:57:46 -0700
From: Tvrtko Ursulin <tvrtko.ursulin@linux.intel.com>
To: igt-dev@lists.freedesktop.org,
	Intel-gfx@lists.freedesktop.org
Date: Mon, 17 Apr 2023 11:57:30 +0100
Message-Id: <20230417105734.3945840-5-tvrtko.ursulin@linux.intel.com>
X-Mailer: git-send-email 2.37.2
In-Reply-To: <20230417105734.3945840-1-tvrtko.ursulin@linux.intel.com>
References: <20230417105734.3945840-1-tvrtko.ursulin@linux.intel.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH i-g-t 4/8] lib/igt_drm_clients: Support multiple
 DRM cards
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

Require DRM minor match during client lookup.

Signed-off-by: Tvrtko Ursulin <tvrtko.ursulin@intel.com>
---
 lib/igt_drm_clients.c | 14 ++++++++------
 1 file changed, 8 insertions(+), 6 deletions(-)

diff --git a/lib/igt_drm_clients.c b/lib/igt_drm_clients.c
index b837450301dc..06b66fe95b62 100644
--- a/lib/igt_drm_clients.c
+++ b/lib/igt_drm_clients.c
@@ -49,7 +49,7 @@ struct igt_drm_clients *igt_drm_clients_init(void *private_data)
 static struct igt_drm_client *
 igt_drm_clients_find(struct igt_drm_clients *clients,
 		     enum igt_drm_client_status status,
-		     unsigned int id)
+		     unsigned int drm_minor, unsigned int id)
 {
 	unsigned int start, num;
 	struct igt_drm_client *c;
@@ -61,7 +61,8 @@ igt_drm_clients_find(struct igt_drm_clients *clients,
 		if (status != c->status)
 			continue;
 
-		if (status == IGT_DRM_CLIENT_FREE || c->id == id)
+		if (status == IGT_DRM_CLIENT_FREE ||
+		    (drm_minor == c->drm_minor && c->id == id))
 			return c;
 	}
 
@@ -128,9 +129,10 @@ igt_drm_client_add(struct igt_drm_clients *clients,
 {
 	struct igt_drm_client *c;
 
-	assert(!igt_drm_clients_find(clients, IGT_DRM_CLIENT_ALIVE, info->id));
+	assert(!igt_drm_clients_find(clients, IGT_DRM_CLIENT_ALIVE,
+				     drm_minor, info->id));
 
-	c = igt_drm_clients_find(clients, IGT_DRM_CLIENT_FREE, 0);
+	c = igt_drm_clients_find(clients, IGT_DRM_CLIENT_FREE, 0, 0);
 	if (!c) {
 		unsigned int idx = clients->num_clients;
 
@@ -445,11 +447,11 @@ igt_drm_clients_scan(struct igt_drm_clients *clients,
 				continue;
 
 			if (igt_drm_clients_find(clients, IGT_DRM_CLIENT_ALIVE,
-						info.id))
+						 minor, info.id))
 				continue; /* Skip duplicate fds. */
 
 			c = igt_drm_clients_find(clients, IGT_DRM_CLIENT_PROBE,
-						info.id);
+						 minor, info.id);
 			if (!c)
 				igt_drm_client_add(clients, &info, client_pid,
 						   client_name, minor);
-- 
2.37.2

