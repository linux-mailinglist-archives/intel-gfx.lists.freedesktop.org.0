Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 4305D682B86
	for <lists+intel-gfx@lfdr.de>; Tue, 31 Jan 2023 12:33:11 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 02DF710E335;
	Tue, 31 Jan 2023 11:33:00 +0000 (UTC)
X-Original-To: Intel-gfx@lists.freedesktop.org
Delivered-To: Intel-gfx@lists.freedesktop.org
Received: from mga17.intel.com (mga17.intel.com [192.55.52.151])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 462ED10E31A;
 Tue, 31 Jan 2023 11:32:57 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1675164777; x=1706700777;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=SFGLmHc7XVOfYnYhdlVGwKT2+NH6RYdNaTqCCMoIymk=;
 b=gpM5FgMRWLmoHPXvUEhFDhOlM2emfpPC0I7NAD1wxW+c8zABX+1NpqsC
 trCs9srciw96Bms9C3XBFif4LGHcSZ+X4ekY+4tSsMlRS3rq+6CDoWyYI
 BEbDoWwRKcSkb6y7edmmp285nxU2ssstQRkux0i0nGkJ//mjIMW9vNtPL
 OGQvNyBmjZWtVOtKo8hTLnXL4p4L8q4fEHyK3drheNwgVrplEvpQKbbZZ
 voL6Bde6H8fDs8dHkzAAO95Ay2l48BNV/9PVuQuUT/I/9vpsfpPZbR1DN
 XQiN3x3IyPIeYcgrIngdBozje6G57w2pDhP823Kv5/VOHxJV5TtnyAg+r A==;
X-IronPort-AV: E=McAfee;i="6500,9779,10606"; a="308159815"
X-IronPort-AV: E=Sophos;i="5.97,261,1669104000"; d="scan'208";a="308159815"
Received: from fmsmga005.fm.intel.com ([10.253.24.32])
 by fmsmga107.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 31 Jan 2023 03:32:52 -0800
X-IronPort-AV: E=McAfee;i="6500,9779,10606"; a="993235729"
X-IronPort-AV: E=Sophos;i="5.97,261,1669104000"; d="scan'208";a="993235729"
Received: from rdorchar-mobl.ger.corp.intel.com (HELO localhost.localdomain)
 ([10.213.217.6])
 by fmsmga005-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 31 Jan 2023 03:32:51 -0800
From: Tvrtko Ursulin <tvrtko.ursulin@linux.intel.com>
To: igt-dev@lists.freedesktop.org,
	Intel-gfx@lists.freedesktop.org
Date: Tue, 31 Jan 2023 11:32:33 +0000
Message-Id: <20230131113237.3707217-5-tvrtko.ursulin@linux.intel.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20230131113237.3707217-1-tvrtko.ursulin@linux.intel.com>
References: <20230131113237.3707217-1-tvrtko.ursulin@linux.intel.com>
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
index c23a3fae9793..e11c8b18188f 100644
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
 
@@ -119,9 +120,10 @@ igt_drm_client_add(struct igt_drm_clients *clients,
 {
 	struct igt_drm_client *c;
 
-	assert(!igt_drm_clients_find(clients, IGT_DRM_CLIENT_ALIVE, info->id));
+	assert(!igt_drm_clients_find(clients, IGT_DRM_CLIENT_ALIVE,
+				     drm_minor, info->id));
 
-	c = igt_drm_clients_find(clients, IGT_DRM_CLIENT_FREE, 0);
+	c = igt_drm_clients_find(clients, IGT_DRM_CLIENT_FREE, 0, 0);
 	if (!c) {
 		unsigned int idx = clients->num_clients;
 
@@ -411,11 +413,11 @@ igt_drm_clients_scan(struct igt_drm_clients *clients,
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
2.34.1

