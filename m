Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id D36867C4D5C
	for <lists+intel-gfx@lfdr.de>; Wed, 11 Oct 2023 10:38:53 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 5E41910E5B5;
	Wed, 11 Oct 2023 08:38:52 +0000 (UTC)
X-Original-To: Intel-gfx@lists.freedesktop.org
Delivered-To: Intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.55.52.120])
 by gabe.freedesktop.org (Postfix) with ESMTPS id BFDB710E5AB;
 Wed, 11 Oct 2023 08:38:50 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1697013530; x=1728549530;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=h2u6JPoZBKdqCKrz5ddYElOvwAyN7GAo4zuTE4uMRzg=;
 b=QG63m2sCiqapUu8tTNDzZ3DKTWM92jGiCrX8uJWilakHq/odhOA8GnBY
 BNp4vTQEx+jGF2UKaz+4slbsvm8H2t4GK8PbA5fWz+9S7edTFxBh0kxec
 b+IZYy647aJ01/NYw6QF2r/zBCaazn+s2Z8nyaySottV3JDJ+rWEEb0B2
 fohLDBhGfeAAPWeNsf3ajbVotelR/lTJwaS3C8uJZe0EixssTG/nMZgte
 cUcARx80IyTmt2LHippikzaKo1seCB5pWgX5u60sODy1sRdwjU5Y5BLzm
 U02YRNhHUwizDzzQbrURDb3C9Q26bRPlV3q/HDhFRHnZu6pgxmG9+Ee9K w==;
X-IronPort-AV: E=McAfee;i="6600,9927,10859"; a="383473305"
X-IronPort-AV: E=Sophos;i="6.03,214,1694761200"; d="scan'208";a="383473305"
Received: from orsmga004.jf.intel.com ([10.7.209.38])
 by fmsmga104.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 11 Oct 2023 01:38:50 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10859"; a="877584852"
X-IronPort-AV: E=Sophos;i="6.03,214,1694761200"; d="scan'208";a="877584852"
Received: from cjodwyer-mobl.ger.corp.intel.com (HELO localhost.localdomain)
 ([10.213.194.149])
 by orsmga004-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 11 Oct 2023 01:38:48 -0700
From: Tvrtko Ursulin <tvrtko.ursulin@linux.intel.com>
To: igt-dev@lists.freedesktop.org,
	Intel-gfx@lists.freedesktop.org
Date: Wed, 11 Oct 2023 09:38:42 +0100
Message-Id: <20231011083845.798413-1-tvrtko.ursulin@linux.intel.com>
X-Mailer: git-send-email 2.39.2
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH i-g-t 1/4] tools/intel_gpu_top: Fix clients
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
Cc: Tvrtko Ursulin <tvrtko.ursulin@intel.com>
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

From: Tvrtko Ursulin <tvrtko.ursulin@intel.com>

Recent refactoring broke the clients header in cases when there are no
clients displayed. To fix it we need to account the width of the "NAME"
label.

Signed-off-by: Tvrtko Ursulin <tvrtko.ursulin@intel.com>
Reviewed-by: Kamil Konieczny <kamil.konieczny@linux.intel.com>
---
 tools/intel_gpu_top.c | 7 ++++---
 1 file changed, 4 insertions(+), 3 deletions(-)

diff --git a/tools/intel_gpu_top.c b/tools/intel_gpu_top.c
index 10601e66b18e..60fe06917531 100644
--- a/tools/intel_gpu_top.c
+++ b/tools/intel_gpu_top.c
@@ -1967,6 +1967,8 @@ print_clients_header(struct igt_drm_clients *clients, int lines,
 		     int con_w, int con_h, int *class_w)
 {
 	struct intel_clients *iclients = clients->private_data;
+	const int max_name_len = clients->max_name_len < 4 ?
+				 4 : clients->max_name_len; /* At least "NAME" */
 
 	if (output_mode == INTERACTIVE) {
 		unsigned int num_active = 0;
@@ -1990,9 +1992,8 @@ print_clients_header(struct igt_drm_clients *clients, int lines,
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

