Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id D0A94535AB7
	for <lists+intel-gfx@lfdr.de>; Fri, 27 May 2022 09:53:16 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 8C86C10EEC1;
	Fri, 27 May 2022 07:53:12 +0000 (UTC)
X-Original-To: Intel-gfx@lists.freedesktop.org
Delivered-To: Intel-gfx@lists.freedesktop.org
Received: from mga12.intel.com (mga12.intel.com [192.55.52.136])
 by gabe.freedesktop.org (Postfix) with ESMTPS id E8BEC10EEC0;
 Fri, 27 May 2022 07:53:10 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1653637991; x=1685173991;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=ixv6mvkmb7VpAednvl8XWweXK5CrMz7RZCPWIlwsFdc=;
 b=VgpR2rvs8jGf9UE+OcMqgi1gJucrmGE5BSQngGxzpCdiHuuGLTu99HZ4
 Kg1ipmWkjutiPPQpX5D6ehFRT/OgNAKYS4BFlIkh4c/ha+yh69/OsZlnx
 FDK/alB6pBI/JWDfeoGxliElzQjanBu4TR3unUtJd93Fi2Jr7pm9w7/CA
 93VMvg5SgQLza/k0G/wLqZ+n3LCmE65pAQCo19BFnYYQj6cpt7tdP5mMG
 47Cga7bY8qYtjJyKV0vk0ZSWUc1tQUWMJDLwr5/kjranCUtS9bPGi71V1
 AcU/tgpMdpcU5lAJO2rlRINIIhQmbwz5hwy0W5siyHwcqblmTWKlybsGS g==;
X-IronPort-AV: E=McAfee;i="6400,9594,10359"; a="254287967"
X-IronPort-AV: E=Sophos;i="5.91,254,1647327600"; d="scan'208";a="254287967"
Received: from orsmga003.jf.intel.com ([10.7.209.27])
 by fmsmga106.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 27 May 2022 00:53:10 -0700
X-IronPort-AV: E=Sophos;i="5.91,254,1647327600"; d="scan'208";a="527912443"
Received: from dnanduri-mobl.ger.corp.intel.com (HELO tursulin-mobl2.home)
 ([10.213.215.174])
 by orsmga003-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 27 May 2022 00:53:08 -0700
From: Tvrtko Ursulin <tvrtko.ursulin@linux.intel.com>
To: igt-dev@lists.freedesktop.org
Date: Fri, 27 May 2022 08:53:04 +0100
Message-Id: <20220527075304.2226456-1-tvrtko.ursulin@linux.intel.com>
X-Mailer: git-send-email 2.32.0
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH i-g-t] intel_gpu_top: Don't show client header
 if no kernel support
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
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

From: Tvrtko Ursulin <tvrtko.ursulin@intel.com>

On kernels without support for the feature we should skip showing the
clients header to avoid confusing users.

Simply briefly open a render node to the selected device during init and
look if the relevant fields are present in the fdinfo data.

Signed-off-by: Tvrtko Ursulin <tvrtko.ursulin@intel.com>
Issue: https://gitlab.freedesktop.org/drm/igt-gpu-tools/-/issues/120
---
 tools/intel_gpu_top.c | 22 ++++++++++++++++++++--
 1 file changed, 20 insertions(+), 2 deletions(-)

diff --git a/tools/intel_gpu_top.c b/tools/intel_gpu_top.c
index 1984c10dca29..26986a822bb7 100644
--- a/tools/intel_gpu_top.c
+++ b/tools/intel_gpu_top.c
@@ -2389,6 +2389,23 @@ static void process_stdin(unsigned int timeout_us)
 		process_normal_stdin();
 }
 
+static bool has_drm_fdinfo(const struct igt_device_card *card)
+{
+	struct drm_client_fdinfo info;
+	unsigned int cnt;
+	int fd;
+
+	fd = open(card->render, O_RDWR);
+	if (fd < 0)
+		return false;
+
+	cnt = igt_parse_drm_fdinfo(fd, &info);
+
+	close(fd);
+
+	return cnt > 0;
+}
+
 static void show_help_screen(void)
 {
 	printf(
@@ -2545,8 +2562,9 @@ int main(int argc, char **argv)
 
 	ret = EXIT_SUCCESS;
 
-	clients = init_clients(card.pci_slot_name[0] ?
-			       card.pci_slot_name : IGPU_PCI);
+	if (has_drm_fdinfo(&card))
+		clients = init_clients(card.pci_slot_name[0] ?
+				       card.pci_slot_name : IGPU_PCI);
 	init_engine_classes(engines);
 	if (clients) {
 		clients->num_classes = engines->num_classes;
-- 
2.32.0

