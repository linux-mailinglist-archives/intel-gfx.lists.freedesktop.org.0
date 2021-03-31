Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id ADA8834FC00
	for <lists+intel-gfx@lfdr.de>; Wed, 31 Mar 2021 10:57:28 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id EE57A6E15E;
	Wed, 31 Mar 2021 08:57:25 +0000 (UTC)
X-Original-To: Intel-gfx@lists.freedesktop.org
Delivered-To: Intel-gfx@lists.freedesktop.org
Received: from mga17.intel.com (mga17.intel.com [192.55.52.151])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 237286E128;
 Wed, 31 Mar 2021 08:57:24 +0000 (UTC)
IronPort-SDR: x/KSlDXMI0k7aKkLnh/i0pA9gmhURy3IYxeupjS1M0xMPsfXPdOhVOf/l/WN+y/n4Ql123tb77
 jq0zPOy/yByg==
X-IronPort-AV: E=McAfee;i="6000,8403,9939"; a="171985216"
X-IronPort-AV: E=Sophos;i="5.81,293,1610438400"; d="scan'208";a="171985216"
Received: from orsmga001.jf.intel.com ([10.7.209.18])
 by fmsmga107.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 31 Mar 2021 01:57:23 -0700
IronPort-SDR: nNDfWNdz1Mi03xwUOF2oZ6fVFIGoOtvpZi1aI3TV2HFlZN+EemNicNXnkP9/qoQRWQ210HWlxq
 2pr0i11K5vHQ==
X-IronPort-AV: E=Sophos;i="5.81,293,1610438400"; d="scan'208";a="455393287"
Received: from jlowe-mobl.ger.corp.intel.com (HELO localhost.localdomain)
 ([10.213.201.218])
 by orsmga001-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 31 Mar 2021 01:57:21 -0700
From: Tvrtko Ursulin <tvrtko.ursulin@linux.intel.com>
To: igt-dev@lists.freedesktop.org
Date: Wed, 31 Mar 2021 09:57:13 +0100
Message-Id: <20210331085713.2566057-1-tvrtko.ursulin@linux.intel.com>
X-Mailer: git-send-email 2.27.0
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH i-g-t] intel_gpu_top: Do not print client header
 if no client stats
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
Cc: Intel-gfx@lists.freedesktop.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

From: Tvrtko Ursulin <tvrtko.ursulin@intel.com>

Add a check if client stats are present to init_clients() so that the
returned clients data can be null from the start. This prevents the client
stats header to be printed on old kernels.

Signed-off-by: Tvrtko Ursulin <tvrtko.ursulin@intel.com>
---
 tools/intel_gpu_top.c | 21 ++++++++++++++++++---
 1 file changed, 18 insertions(+), 3 deletions(-)

diff --git a/tools/intel_gpu_top.c b/tools/intel_gpu_top.c
index e22e3bedacbe..7311038a39f4 100644
--- a/tools/intel_gpu_top.c
+++ b/tools/intel_gpu_top.c
@@ -671,9 +671,14 @@ struct clients {
 
 static struct clients *init_clients(const char *drm_card)
 {
-	struct clients *clients = malloc(sizeof(*clients));
+	struct clients *clients;
 	const char *slash;
 	ssize_t ret;
+	int dir;
+
+	clients = malloc(sizeof(*clients));
+	if (!clients)
+		return NULL;
 
 	memset(clients, 0, sizeof(*clients));
 
@@ -688,6 +693,14 @@ static struct clients *init_clients(const char *drm_card)
 		       "/sys/class/drm/%s/clients/", slash);
 	assert(ret > 0 && ret < sizeof(clients->sysfs_root));
 
+	dir = open(clients->sysfs_root, O_DIRECTORY | O_RDONLY);
+	if (dir < 0) {
+		free(clients);
+		clients = NULL;
+	} else {
+		close(dir);
+	}
+
 	return clients;
 }
 
@@ -2519,8 +2532,10 @@ int main(int argc, char **argv)
 
 	clients = init_clients(card.pci_slot_name[0] ? card.card : NULL);
 	init_engine_classes(engines);
-	clients->num_classes = engines->num_classes;
-	clients->class = engines->class;
+	if (clients) {
+		clients->num_classes = engines->num_classes;
+		clients->class = engines->class;
+	}
 
 	pmu_sample(engines);
 	scan_clients(clients);
-- 
2.27.0

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
