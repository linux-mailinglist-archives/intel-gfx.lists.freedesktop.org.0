Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id A46AE17F357
	for <lists+intel-gfx@lfdr.de>; Tue, 10 Mar 2020 10:19:35 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 0DDDE6E15C;
	Tue, 10 Mar 2020 09:19:33 +0000 (UTC)
X-Original-To: Intel-gfx@lists.freedesktop.org
Delivered-To: Intel-gfx@lists.freedesktop.org
Received: from mga06.intel.com (mga06.intel.com [134.134.136.31])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 137116E843
 for <Intel-gfx@lists.freedesktop.org>; Tue, 10 Mar 2020 09:19:32 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga002.jf.intel.com ([10.7.209.21])
 by orsmga104.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 10 Mar 2020 02:19:31 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.70,518,1574150400"; d="scan'208";a="260718660"
Received: from pkosiack-mobl2.ger.corp.intel.com (HELO localhost.localdomain)
 ([10.252.21.27])
 by orsmga002.jf.intel.com with ESMTP; 10 Mar 2020 02:19:29 -0700
From: Tvrtko Ursulin <tvrtko.ursulin@linux.intel.com>
To: Intel-gfx@lists.freedesktop.org
Date: Tue, 10 Mar 2020 09:19:27 +0000
Message-Id: <20200310091927.27401-1-tvrtko.ursulin@linux.intel.com>
X-Mailer: git-send-email 2.20.1
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH] drm/i915/tgl:
 WaEnablePreemptionGranularityControlByUMD
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

From: Tvrtko Ursulin <tvrtko.ursulin@intel.com>

Certain workloads need the ability to disable preemption completely so
allow them to do that by whitelisting GEN8_CS_CHICKEN1.

Signed-off-by: Tvrtko Ursulin <tvrtko.ursulin@intel.com>
Cc: Michal Mrozek <michal.mrozek@intel.com>
Cc: Tony Ye <tony.ye@intel.com>
Cc: Rafael Antognolli <rafael.antognolli@intel.com>
Cc: Jason Ekstrand <jason@jlekstrand.net>
---
We need confirmation and acks from all three userspace components here.
Especially since my impression was some are for and some were against
whitelisting this one.
---
 drivers/gpu/drm/i915/gt/intel_workarounds.c | 3 +++
 1 file changed, 3 insertions(+)

diff --git a/drivers/gpu/drm/i915/gt/intel_workarounds.c b/drivers/gpu/drm/i915/gt/intel_workarounds.c
index 391f39b1fb26..37becdf77427 100644
--- a/drivers/gpu/drm/i915/gt/intel_workarounds.c
+++ b/drivers/gpu/drm/i915/gt/intel_workarounds.c
@@ -1276,6 +1276,9 @@ static void tgl_whitelist_build(struct intel_engine_cs *engine)
 
 		/* Wa_1806527549:tgl */
 		whitelist_reg(w, HIZ_CHICKEN);
+
+		/* WaEnablePreemptionGranularityControlByUMD:tgl */
+		whitelist_reg(w, GEN8_CS_CHICKEN1);
 		break;
 	default:
 		break;
-- 
2.20.1

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
