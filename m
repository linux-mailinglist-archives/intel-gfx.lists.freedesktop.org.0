Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 36DCF7C6777
	for <lists+intel-gfx@lfdr.de>; Thu, 12 Oct 2023 10:16:16 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 0E04D10E443;
	Thu, 12 Oct 2023 08:16:11 +0000 (UTC)
X-Original-To: Intel-gfx@lists.freedesktop.org
Delivered-To: Intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.9])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 79F2210E454;
 Thu, 12 Oct 2023 08:16:02 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1697098563; x=1728634563;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=qDZzYgf08JTqeJ9QZ3q4sZVtq17ZzT6I+kUaImgnM3M=;
 b=g+SU+LBWN8B7exrJyBMDdSKUZQvl/HxyeOAilaCT2lNJNQOHwqEy9m7c
 TGwTQhu6y8bzFcNVNblD8QePTtvNOfuY2hqvMj7yUypF/STD1UHZMqLaf
 2sVrf3vo5VYsPAclQjDn25qwQ4o6bVRl1LmNPsAmMWO3Kx28m0J7DpaY0
 NK4TAKisM5q08AfsEMzhMqrtbqJR4XH7z7a8Yj+hP6DbcpeWW96sYAwz4
 EnTrT/jMlqNtMt4VMOJoDAQird66fT1pE+PAsyl9CO/AGVpcbVMQ5Foo3
 q10Qcusc3/GYV+xzesogaEfvZCXu12HaAz2tMhfYdwV80iW1KghmRq79r A==;
X-IronPort-AV: E=McAfee;i="6600,9927,10860"; a="3454685"
X-IronPort-AV: E=Sophos;i="6.03,218,1694761200"; 
   d="scan'208";a="3454685"
Received: from orsmga008.jf.intel.com ([10.7.209.65])
 by orvoesa101.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 12 Oct 2023 01:16:03 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10860"; a="783599338"
X-IronPort-AV: E=Sophos;i="6.03,218,1694761200"; d="scan'208";a="783599338"
Received: from maloneyj-mobl.ger.corp.intel.com (HELO localhost.localdomain)
 ([10.213.239.225])
 by orsmga008-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 12 Oct 2023 01:16:01 -0700
From: Tvrtko Ursulin <tvrtko.ursulin@linux.intel.com>
To: igt-dev@lists.freedesktop.org,
	Intel-gfx@lists.freedesktop.org
Date: Thu, 12 Oct 2023 09:15:43 +0100
Message-Id: <20231012081547.852052-6-tvrtko.ursulin@linux.intel.com>
X-Mailer: git-send-email 2.39.2
In-Reply-To: <20231012081547.852052-1-tvrtko.ursulin@linux.intel.com>
References: <20231012081547.852052-1-tvrtko.ursulin@linux.intel.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH i-g-t 5/9] lib/igt_drm_clients: Fix client id
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
Cc: Tvrtko Ursulin <tvrtko.ursulin@intel.com>
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

