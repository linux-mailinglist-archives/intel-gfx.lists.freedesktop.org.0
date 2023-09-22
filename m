Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id CD2597AB2E1
	for <lists+intel-gfx@lfdr.de>; Fri, 22 Sep 2023 15:45:46 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 9B35C10E66C;
	Fri, 22 Sep 2023 13:45:43 +0000 (UTC)
X-Original-To: Intel-gfx@lists.freedesktop.org
Delivered-To: Intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.55.52.93])
 by gabe.freedesktop.org (Postfix) with ESMTPS id C7EA010E66D;
 Fri, 22 Sep 2023 13:44:49 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1695390289; x=1726926289;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=EVMxRqjB9gaHRMSHsxPm1b+2XFN8n7tU7dm8akjKYKs=;
 b=LITM5u90oJ5BLgypNpoX6lOIisUZFYB6u2gynSp90Q7Sc20r0dD59lsD
 DCSpNUaXHSf2e1C7fJeRZ3mShmYLb6XSA2pkM8RynaWUy9qe68UkKw6Eq
 8qhFeNsCJBxsgI27XyvR8qMhSyN8bSF6mAJ7UxND+4PJleDX9OS6QaFdz
 kvJ7CiqWp/a1IRYDSF9FijLKEXTOeMojlMzwC3G7gQsCg81RIF6l57vIQ
 S9reAiWfOpFWyqJFuKWD03NFCeDgyVieNkr3bV66BfVLNs3rS+rc2wRSZ
 Q4Sl3Athag6NAq61nyjqbSDqxsa5vzExEQLt7a44mTeDgGacegmWtSWcQ g==;
X-IronPort-AV: E=McAfee;i="6600,9927,10841"; a="378117139"
X-IronPort-AV: E=Sophos;i="6.03,167,1694761200"; d="scan'208";a="378117139"
Received: from orsmga004.jf.intel.com ([10.7.209.38])
 by fmsmga102.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 22 Sep 2023 06:44:49 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10841"; a="871243568"
X-IronPort-AV: E=Sophos;i="6.03,167,1694761200"; d="scan'208";a="871243568"
Received: from placki-mobl.ger.corp.intel.com (HELO localhost.localdomain)
 ([10.213.200.149])
 by orsmga004-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 22 Sep 2023 06:44:48 -0700
From: Tvrtko Ursulin <tvrtko.ursulin@linux.intel.com>
To: igt-dev@lists.freedesktop.org,
	Intel-gfx@lists.freedesktop.org
Date: Fri, 22 Sep 2023 14:44:29 +0100
Message-Id: <20230922134437.234888-5-tvrtko.ursulin@linux.intel.com>
X-Mailer: git-send-email 2.39.2
In-Reply-To: <20230922134437.234888-1-tvrtko.ursulin@linux.intel.com>
References: <20230922134437.234888-1-tvrtko.ursulin@linux.intel.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH i-g-t 04/12] tools/intel_gpu_top: Fix clients
 header width when no clients
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

Recent refactoring broke the clients header in cases when there are no
clients displayed. To fix it we need to account the width of the "NAME"
label.

Signed-off-by: Tvrtko Ursulin <tvrtko.ursulin@intel.com>
---
 tools/intel_gpu_top.c | 7 ++++---
 1 file changed, 4 insertions(+), 3 deletions(-)

diff --git a/tools/intel_gpu_top.c b/tools/intel_gpu_top.c
index e01355f90458..76956619eaae 100644
--- a/tools/intel_gpu_top.c
+++ b/tools/intel_gpu_top.c
@@ -1969,6 +1969,8 @@ print_clients_header(struct igt_drm_clients *clients, int lines,
 		     int con_w, int con_h, int *class_w)
 {
 	struct intel_clients *iclients = clients->private_data;
+	const int max_name_len = clients->max_name_len < 4 ?
+				 4 : clients->max_name_len; /* At least "NAME" */
 
 	if (output_mode == INTERACTIVE) {
 		unsigned int num_active = 0;
@@ -1992,9 +1994,8 @@ print_clients_header(struct igt_drm_clients *clients, int lines,
 					num_active++;
 			}
 
-			*class_w = width =
-				(con_w - len - clients->max_name_len - 1) /
-				num_active;
+			*class_w = width = (con_w - len - max_name_len - 1) /
+					   num_active;
 
 			for (i = 0; i <= iclients->classes.max_engine_id; i++) {
 				const char *name = iclients->classes.names[i];
-- 
2.39.2

