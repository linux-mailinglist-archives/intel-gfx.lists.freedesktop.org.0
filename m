Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id hW9tLtgORWqG6AoAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Wed, 01 Jul 2026 14:58:00 +0200
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 64D6D6EDB1C
	for <lists+intel-gfx@lfdr.de>; Wed, 01 Jul 2026 14:58:00 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=none;
	dmarc=none;
	spf=pass (mail.lfdr.de: domain of intel-gfx-bounces@lists.freedesktop.org designates 131.252.210.177 as permitted sender) smtp.mailfrom=intel-gfx-bounces@lists.freedesktop.org
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 003A510EFE1;
	Wed,  1 Jul 2026 12:57:56 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mailgw.kylinos.cn (mailgw.kylinos.cn [124.126.103.232])
 by gabe.freedesktop.org (Postfix) with ESMTPS id E651710E142;
 Tue, 30 Jun 2026 03:17:01 +0000 (UTC)
X-UUID: 26424482743211f1aa26b74ffac11d73-20260630
X-CID-P-RULE: Release_Ham
X-CID-O-INFO: VERSION:1.3.12, REQID:8d8573c9-8b63-420e-a361-412d2c9ec18f, IP:0,
 U
 RL:0,TC:0,Content:0,EDM:0,RT:0,SF:0,FILE:0,BULK:0,RULE:Release_Ham,ACTION:
 release,TS:0
X-CID-META: VersionHash:e7bac3a, CLOUDID:1acb257d12bf33a060d0c1d47cb64a43,
 BulkI
 D:nil,BulkQuantity:0,Recheck:0,SF:102|123|136|850|865|898,TC:nil,Content:0
 |15|50,EDM:-3,IP:nil,URL:0,File:nil,RT:nil,Bulk:nil,QS:nil,BEC:nil,COL:0,O
 SI:0,OSA:0,AV:0,LES:1,SPR:NO,DKR:0,DKP:0,BRR:0,BRE:0,ARC:0
X-CID-BVR: 2,SSN|SDN
X-CID-BAS: 2,SSN|SDN,0,_
X-CID-FACTOR: TF_CID_SPAM_SNR
X-CID-RHF: D41D8CD98F00B204E9800998ECF8427E
X-UUID: 26424482743211f1aa26b74ffac11d73-20260630
X-User: yaolu@kylinos.cn
Received: from localhost.localdomain [(10.44.16.150)] by mailgw.kylinos.cn
 (envelope-from <yaolu@kylinos.cn>)
 (Generic MTA with TLSv1.3 TLS_AES_256_GCM_SHA384 256/256)
 with ESMTP id 1470254635; Tue, 30 Jun 2026 11:16:56 +0800
From: yaolu@kylinos.cn
To: jani.nikula@linux.intel.com, rodrigo.vivi@intel.com,
 joonas.lahtinen@linux.intel.com, tursulin@ursulin.net
Cc: intel-gfx@lists.freedesktop.org, dri-devel@lists.freedesktop.org,
 linux-kernel@vger.kernel.org, Lu Yao <yaolu@kylinos.cn>
Subject: [PATCH] drm/i915/display: fix error handling in
 intel_display_driver_probe_noirq
Date: Tue, 30 Jun 2026 11:16:52 +0800
Message-Id: <20260630031652.67747-1-yaolu@kylinos.cn>
X-Mailer: git-send-email 2.25.1
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Mailman-Approved-At: Wed, 01 Jul 2026 12:57:46 +0000
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
X-Spamd-Result: default: False [1.89 / 15.00];
	DATE_IN_PAST(1.00)[33];
	MID_CONTAINS_FROM(1.00)[];
	R_MISSING_CHARSET(0.50)[];
	MAILLIST(-0.20)[mailman];
	R_SPF_ALLOW(-0.20)[+ip4:131.252.210.177:c];
	MIME_GOOD(-0.10)[text/plain];
	RWL_MAILSPIKE_GOOD(-0.10)[131.252.210.177:from];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	ARC_NA(0.00)[];
	TO_DN_SOME(0.00)[];
	DMARC_NA(0.00)[kylinos.cn];
	MIME_TRACE(0.00)[0:+];
	RCVD_COUNT_THREE(0.00)[3];
	FROM_NO_DN(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	ALIAS_RESOLVED(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[yaolu@kylinos.cn,intel-gfx-bounces@lists.freedesktop.org];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	R_DKIM_NA(0.00)[];
	TAGGED_RCPT(0.00)[intel-gfx];
	RCPT_COUNT_SEVEN(0.00)[8];
	ASN(0.00)[asn:6366, ipnet:131.252.0.0/16, country:US];
	DBL_BLOCKED_OPENRESOLVER(0.00)[kylinos.cn:email,kylinos.cn:mid,kylinos.cn:from_mime,gabe.freedesktop.org:rdns,gabe.freedesktop.org:helo,lists.freedesktop.org:from_smtp]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: 64D6D6EDB1C

From: Lu Yao <yaolu@kylinos.cn>

Fix two bugs in the probe error path:

1. intel_dmc_fini() was called on workqueue alloc failed paths but
   intel_dmc_init() had been invoked.  Move the dmc init call advance.

2. If intel_mode_config_init() succeeded, after intel_xxx_init()
   failed leaked the resources allocated by drm_mode_config_init().
   Add a cleanup_mode_config label.

Signed-off-by: Lu Yao <yaolu@kylinos.cn>
---
 .../drm/i915/display/intel_display_driver.c    | 18 ++++++++++--------
 1 file changed, 10 insertions(+), 8 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_display_driver.c b/drivers/gpu/drm/i915/display/intel_display_driver.c
index d0729936f681..d69bdfb19efe 100644
--- a/drivers/gpu/drm/i915/display/intel_display_driver.c
+++ b/drivers/gpu/drm/i915/display/intel_display_driver.c
@@ -223,6 +223,8 @@ int intel_display_driver_probe_noirq(struct intel_display *display)
 	if (!HAS_DISPLAY(display))
 		return 0;
 
+	intel_dmc_init(display);
+
 	display->hotplug.dp_wq = alloc_ordered_workqueue("intel-dp", 0);
 	if (!display->hotplug.dp_wq) {
 		ret = -ENOMEM;
@@ -254,33 +256,31 @@ int intel_display_driver_probe_noirq(struct intel_display *display)
 		goto cleanup_wq_cleanup;
 	}
 
-	intel_dmc_init(display);
-
 	intel_mode_config_init(display);
 
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
 
@@ -288,6 +288,8 @@ int intel_display_driver_probe_noirq(struct intel_display *display)
 
 	return 0;
 
+cleanup_mode_config:
+	intel_mode_config_cleanup(display);
 cleanup_wq_unordered:
 	destroy_workqueue(display->wq.unordered);
 cleanup_wq_cleanup:
-- 
2.25.1

