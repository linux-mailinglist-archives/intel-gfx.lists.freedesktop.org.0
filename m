Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 89649122167
	for <lists+intel-gfx@lfdr.de>; Tue, 17 Dec 2019 02:23:18 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 3456F6E922;
	Tue, 17 Dec 2019 01:23:15 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 172D96E91F
 for <intel-gfx@lists.freedesktop.org>; Tue, 17 Dec 2019 01:23:13 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga002.jf.intel.com ([10.7.209.21])
 by fmsmga101.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 16 Dec 2019 17:23:12 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.69,323,1571727600"; d="scan'208";a="227317204"
Received: from dceraolo-linux.fm.intel.com ([10.1.27.145])
 by orsmga002.jf.intel.com with ESMTP; 16 Dec 2019 17:23:12 -0800
From: Daniele Ceraolo Spurio <daniele.ceraolospurio@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Mon, 16 Dec 2019 17:23:11 -0800
Message-Id: <20191217012316.13271-2-daniele.ceraolospurio@intel.com>
X-Mailer: git-send-email 2.23.0
In-Reply-To: <20191217012316.13271-1-daniele.ceraolospurio@intel.com>
References: <20191217012316.13271-1-daniele.ceraolospurio@intel.com>
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH v2 2/7] drm/i915/guc/ct: Drop guards in
 enable/disable calls
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

We track the status of the GuC much more closely now and we expect the
enable/disable functions to be correctly called only once. If this isn't
true we do want to flag it as a flow failure (via the BUG_ON in the ctch
functions) and not silently ignore the call.

Suggested-by: Michal Wajdeczko <michal.wajdeczko@intel.com>
Signed-off-by: Daniele Ceraolo Spurio <daniele.ceraolospurio@intel.com>
---
 drivers/gpu/drm/i915/gt/uc/intel_guc_ct.c | 6 ------
 1 file changed, 6 deletions(-)

diff --git a/drivers/gpu/drm/i915/gt/uc/intel_guc_ct.c b/drivers/gpu/drm/i915/gt/uc/intel_guc_ct.c
index f74ba4750a94..b23b46619742 100644
--- a/drivers/gpu/drm/i915/gt/uc/intel_guc_ct.c
+++ b/drivers/gpu/drm/i915/gt/uc/intel_guc_ct.c
@@ -862,9 +862,6 @@ int intel_guc_ct_enable(struct intel_guc_ct *ct)
 	struct intel_guc *guc = ct_to_guc(ct);
 	struct intel_guc_ct_channel *ctch = &ct->host_channel;
 
-	if (ctch->enabled)
-		return 0;
-
 	return ctch_enable(guc, ctch);
 }
 
@@ -877,8 +874,5 @@ void intel_guc_ct_disable(struct intel_guc_ct *ct)
 	struct intel_guc *guc = ct_to_guc(ct);
 	struct intel_guc_ct_channel *ctch = &ct->host_channel;
 
-	if (!ctch->enabled)
-		return;
-
 	ctch_disable(guc, ctch);
 }
-- 
2.23.0

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
