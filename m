Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id B458A2A09E6
	for <lists+intel-gfx@lfdr.de>; Fri, 30 Oct 2020 16:32:24 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 82F6A6EDFB;
	Fri, 30 Oct 2020 15:32:21 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (unknown [77.68.26.236])
 by gabe.freedesktop.org (Postfix) with ESMTPS id E6E686EDFE
 for <intel-gfx@lists.freedesktop.org>; Fri, 30 Oct 2020 15:32:19 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.65.138; 
Received: from build.alporthouse.com (unverified [78.156.65.138]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP id 22846146-1500050 
 for multiple; Fri, 30 Oct 2020 15:32:10 +0000
From: Chris Wilson <chris@chris-wilson.co.uk>
To: intel-gfx@lists.freedesktop.org
Date: Fri, 30 Oct 2020 15:32:09 +0000
Message-Id: <20201030153209.14808-1-chris@chris-wilson.co.uk>
X-Mailer: git-send-email 2.20.1
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH] drm/i915: Reduce severity for fixing up
 mistaken VBT tc->legacy_port
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
Cc: Chris Wilson <chris@chris-wilson.co.uk>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

If the VBT assigned tc->legacy_port mismatches the live_status indicator
for the connector, we ignore the VBT directive and switch over to the HW
setting. This is not a driver error, unless we happen to misparse the
VBT or the live_status registers. However, for the system in CI where
the error is only reported on 1 port out of 4, the evidence indicates
the VBT is wrong. Stop flaging this as an error since the cause is
beyond our control, fixup the mistake and continue on.

Signed-off-by: Chris Wilson <chris@chris-wilson.co.uk>
Cc: Imre Deak <imre.deak@intel.com>
---
 drivers/gpu/drm/i915/display/intel_tc.c | 6 +++---
 1 file changed, 3 insertions(+), 3 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_tc.c b/drivers/gpu/drm/i915/display/intel_tc.c
index 8f67aef18b2d..6155ea6127a4 100644
--- a/drivers/gpu/drm/i915/display/intel_tc.c
+++ b/drivers/gpu/drm/i915/display/intel_tc.c
@@ -228,9 +228,9 @@ static void tc_port_fixup_legacy_flag(struct intel_digital_port *dig_port,
 		return;
 
 	/* If live status mismatches the VBT flag, trust the live status. */
-	drm_err(&i915->drm,
-		"Port %s: live status %08x mismatches the legacy port flag, fix flag\n",
-		dig_port->tc_port_name, live_status_mask);
+	drm_dbg_kms(&i915->drm,
+		    "Port %s: live status %08x mismatches the legacy port flag %08x, fixing flag\n",
+		    dig_port->tc_port_name, live_status_mask, valid_hpd_mask);
 
 	dig_port->tc_legacy_port = !dig_port->tc_legacy_port;
 }
-- 
2.20.1

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
