Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id bxf4DVdiRmqCSQsAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Thu, 02 Jul 2026 15:06:31 +0200
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 3539D6F8200
	for <lists+intel-gfx@lfdr.de>; Thu, 02 Jul 2026 15:06:30 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=none;
	dmarc=none;
	spf=pass (mail.lfdr.de: domain of intel-gfx-bounces@lists.freedesktop.org designates 131.252.210.177 as permitted sender) smtp.mailfrom=intel-gfx-bounces@lists.freedesktop.org
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 87C2D10F393;
	Thu,  2 Jul 2026 13:06:28 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mailgw.kylinos.cn (mailgw.kylinos.cn [124.126.103.232])
 by gabe.freedesktop.org (Postfix) with ESMTPS id E179310E403;
 Thu,  2 Jul 2026 01:12:30 +0000 (UTC)
X-UUID: 15f341b275b311f1aa26b74ffac11d73-20260702
X-CID-P-RULE: Release_Ham
X-CID-O-INFO: VERSION:1.3.12, REQID:49fb15a2-fbfc-40cd-b4de-8fa6bf793a81, IP:0,
 U
 RL:0,TC:0,Content:-5,EDM:0,RT:0,SF:0,FILE:0,BULK:0,RULE:Release_Ham,ACTION
 :release,TS:-5
X-CID-META: VersionHash:e7bac3a, CLOUDID:b968c6a74fb6efa6e62b2f52a76dcecd,
 BulkI
 D:nil,BulkQuantity:0,Recheck:0,SF:81|82|102|123|136|850|865|898,TC:nil,Con
 tent:0|15|50,EDM:-3,IP:nil,URL:99|1,File:nil,RT:nil,Bulk:nil,QS:nil,BEC:ni
 l,COL:0,OSI:0,OSA:0,AV:0,LES:1,SPR:NO,DKR:0,DKP:0,BRR:0,BRE:0,ARC:0
X-CID-BVR: 2,SSN|SDN
X-CID-BAS: 2,SSN|SDN,0,_
X-CID-FACTOR: TF_CID_SPAM_SNR,TF_CID_SPAM_ULS
X-CID-RHF: D41D8CD98F00B204E9800998ECF8427E
X-UUID: 15f341b275b311f1aa26b74ffac11d73-20260702
X-User: yaolu@kylinos.cn
Received: from localhost.localdomain [(10.44.16.150)] by mailgw.kylinos.cn
 (envelope-from <yaolu@kylinos.cn>)
 (Generic MTA with TLSv1.3 TLS_AES_256_GCM_SHA384 256/256)
 with ESMTP id 284343023; Thu, 02 Jul 2026 09:12:25 +0800
From: yaolu@kylinos.cn
To: yaolu@kylinos.cn
Cc: dri-devel@lists.freedesktop.org, intel-gfx@lists.freedesktop.org,
 jani.nikula@linux.intel.com, joonas.lahtinen@linux.intel.com,
 linux-kernel@vger.kernel.org, rodrigo.vivi@intel.com, tursulin@ursulin.net
Subject: [PATCH v3] drm/i915/display: fix error handling in
 intel_display_driver_probe_noirq
Date: Thu,  2 Jul 2026 09:12:21 +0800
Message-Id: <20260702011221.16029-1-yaolu@kylinos.cn>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20260701011533.16336-1-yaolu@kylinos.cn>
References: <20260701011533.16336-1-yaolu@kylinos.cn>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Mailman-Approved-At: Thu, 02 Jul 2026 13:06:24 +0000
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
X-Rspamd-Action: no action
X-Spamd-Result: default: False [0.89 / 15.00];
	MID_CONTAINS_FROM(1.00)[];
	R_MISSING_CHARSET(0.50)[];
	MAILLIST(-0.20)[mailman];
	R_SPF_ALLOW(-0.20)[+ip4:131.252.210.177:c];
	MIME_GOOD(-0.10)[text/plain];
	RWL_MAILSPIKE_GOOD(-0.10)[131.252.210.177:from];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	RCVD_COUNT_THREE(0.00)[3];
	ARC_NA(0.00)[];
	DMARC_NA(0.00)[kylinos.cn];
	MIME_TRACE(0.00)[0:+];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	ASN(0.00)[asn:6366, ipnet:131.252.0.0/16, country:US];
	FORGED_SENDER_MAILLIST(0.00)[];
	TO_DN_NONE(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[yaolu@kylinos.cn,intel-gfx-bounces@lists.freedesktop.org];
	FROM_NO_DN(0.00)[];
	ALIAS_RESOLVED(0.00)[];
	RCPT_COUNT_SEVEN(0.00)[8];
	R_DKIM_NA(0.00)[];
	TAGGED_RCPT(0.00)[intel-gfx];
	DBL_BLOCKED_OPENRESOLVER(0.00)[lists.freedesktop.org:from_smtp,gabe.freedesktop.org:rdns,gabe.freedesktop.org:helo]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: 3539D6F8200

From: Lu Yao <yaolu@kylinos.cn>

Fix two bugs in the probe error path:

1. If intel_mode_config_init() succeeded, after intel_xxx_init()
   failed leaked the resources allocated by drm_mode_config_init().
   Add a cleanup_mode_config label.

2. intel_dmc_fini() was called on workqueue alloc failed paths but
   intel_dmc_init() don't been invoked.  Move the dmc fini call in
   cleanup_mode_config label.

Signed-off-by: Lu Yao <yaolu@kylinos.cn>
---
v2->v3: rm unused label checked by CI
  Link: https://lore.kernel.org/all/178294904225.140838.18311548714090230092@6beec6c84f66/

v1->v2: don't move intel_dmc_init() advance chencked by Sashiko AI and Jani
  Link: https://lore.kernel.org/all/20260630032254.05B511F000E9@smtp.kernel.org/
  Link: https://lore.kernel.org/all/677fb92771df1f9f491226bf006c157a007c16dc@intel.com/

 .../drm/i915/display/intel_display_driver.c   | 21 ++++++++++---------
 1 file changed, 11 insertions(+), 10 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_display_driver.c b/drivers/gpu/drm/i915/display/intel_display_driver.c
index d0729936f681..4af2324f5252 100644
--- a/drivers/gpu/drm/i915/display/intel_display_driver.c
+++ b/drivers/gpu/drm/i915/display/intel_display_driver.c
@@ -226,7 +226,7 @@ int intel_display_driver_probe_noirq(struct intel_display *display)
 	display->hotplug.dp_wq = alloc_ordered_workqueue("intel-dp", 0);
 	if (!display->hotplug.dp_wq) {
 		ret = -ENOMEM;
-		goto cleanup_pw_domain_dmc;
+		goto cleanup_pw_domain;
 	}
 
 	display->wq.modeset = alloc_ordered_workqueue("i915_modeset", 0);
@@ -260,27 +260,27 @@ int intel_display_driver_probe_noirq(struct intel_display *display)
 
 	ret = intel_cdclk_init(display);
 	if (ret)
-		goto cleanup_wq_unordered;
+		goto cleanup_mode_config;
 
 	ret = intel_color_init(display);
 	if (ret)
-		goto cleanup_wq_unordered;
+		goto cleanup_mode_config;
 
 	ret = intel_dbuf_init(display);
 	if (ret)
-		goto cleanup_wq_unordered;
+		goto cleanup_mode_config;
 
 	ret = intel_dbuf_bw_init(display);
 	if (ret)
-		goto cleanup_wq_unordered;
+		goto cleanup_mode_config;
 
 	ret = intel_bw_init(display);
 	if (ret)
-		goto cleanup_wq_unordered;
+		goto cleanup_mode_config;
 
 	ret = intel_pmdemand_init(display);
 	if (ret)
-		goto cleanup_wq_unordered;
+		goto cleanup_mode_config;
 
 	intel_init_quirks(display);
 
@@ -288,7 +288,9 @@ int intel_display_driver_probe_noirq(struct intel_display *display)
 
 	return 0;
 
-cleanup_wq_unordered:
+cleanup_mode_config:
+	intel_mode_config_cleanup(display);
+	intel_dmc_fini(display);
 	destroy_workqueue(display->wq.unordered);
 cleanup_wq_cleanup:
 	destroy_workqueue(display->wq.cleanup);
@@ -298,8 +300,7 @@ int intel_display_driver_probe_noirq(struct intel_display *display)
 	destroy_workqueue(display->wq.modeset);
 cleanup_wq_dp:
 	destroy_workqueue(display->hotplug.dp_wq);
-cleanup_pw_domain_dmc:
-	intel_dmc_fini(display);
+cleanup_pw_domain:
 	intel_display_power_driver_remove(display);
 cleanup_bios:
 	intel_bios_driver_remove(display);
-- 
2.25.1

