Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 046BF22CBA7
	for <lists+intel-gfx@lfdr.de>; Fri, 24 Jul 2020 19:07:02 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id CF16D6E9CF;
	Fri, 24 Jul 2020 17:06:59 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (unknown [77.68.26.236])
 by gabe.freedesktop.org (Postfix) with ESMTPS id E13C06E9CF;
 Fri, 24 Jul 2020 17:06:57 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.65.138; 
Received: from haswell.alporthouse.com (unverified [78.156.65.138]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP id 21922107-1500050 
 for multiple; Fri, 24 Jul 2020 18:06:51 +0100
From: Chris Wilson <chris@chris-wilson.co.uk>
To: intel-gfx@lists.freedesktop.org
Date: Fri, 24 Jul 2020 18:06:46 +0100
Message-Id: <20200724170649.463842-1-chris@chris-wilson.co.uk>
X-Mailer: git-send-email 2.28.0.rc1
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH i-g-t 1/4] lib/i915: Identify Rocketlake
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
Cc: igt-dev@lists.freedesktop.org, Chris Wilson <chris@chris-wilson.co.uk>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

commit a048d54f58dd ("lib: Sync i915 PCI ids") added the ids for
Rocketlake, but no identification tables.

Closes: https://gitlab.freedesktop.org/drm/intel/-/issues/2217
Signed-off-by: Chris Wilson <chris@chris-wilson.co.uk>
---
 lib/intel_chipset.h     | 2 ++
 lib/intel_device_info.c | 7 +++++++
 2 files changed, 9 insertions(+)

diff --git a/lib/intel_chipset.h b/lib/intel_chipset.h
index 929fac530..aab823a17 100644
--- a/lib/intel_chipset.h
+++ b/lib/intel_chipset.h
@@ -73,6 +73,7 @@ struct intel_device_info {
 	bool is_icelake : 1;
 	bool is_elkhartlake : 1;
 	bool is_tigerlake : 1;
+	bool is_rocketlake : 1;
 	const char *codename;
 };
 
@@ -172,6 +173,7 @@ void intel_check_pch(void);
 #define IS_CANNONLAKE(devid)	(intel_get_device_info(devid)->is_cannonlake)
 #define IS_ICELAKE(devid)	(intel_get_device_info(devid)->is_icelake)
 #define IS_TIGERLAKE(devid)	(intel_get_device_info(devid)->is_tigerlake)
+#define IS_ROCKETLAKE(devid)	(intel_get_device_info(devid)->is_rocketlake)
 
 #define IS_GEN(devid, x)	(intel_get_device_info(devid)->gen & (1u << ((x)-1)))
 #define AT_LEAST_GEN(devid, x)	(intel_get_device_info(devid)->gen & -(1u << ((x)-1)))
diff --git a/lib/intel_device_info.c b/lib/intel_device_info.c
index 21f7a9570..6c9ac388c 100644
--- a/lib/intel_device_info.c
+++ b/lib/intel_device_info.c
@@ -321,6 +321,12 @@ static const struct intel_device_info intel_tigerlake_info = {
 	.codename = "tigerlake"
 };
 
+static const struct intel_device_info intel_rocketlake_info = {
+	.gen = BIT(11),
+	.is_rocketlake = true,
+	.codename = "rocketlake"
+};
+
 static const struct pci_id_match intel_device_match[] = {
 	INTEL_I810_IDS(&intel_i810_info),
 	INTEL_I815_IDS(&intel_i815_info),
@@ -405,6 +411,7 @@ static const struct pci_id_match intel_device_match[] = {
 	INTEL_EHL_IDS(&intel_elkhartlake_info),
 
 	INTEL_TGL_12_IDS(&intel_tigerlake_info),
+	INTEL_RKL_IDS(&intel_rocketlake_info),
 
 	INTEL_VGA_DEVICE(PCI_MATCH_ANY, &intel_generic_info),
 };
-- 
2.28.0.rc1

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
