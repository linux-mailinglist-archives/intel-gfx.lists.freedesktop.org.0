Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 98BAE7B3279
	for <lists+intel-gfx@lfdr.de>; Fri, 29 Sep 2023 14:25:44 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 2144310E700;
	Fri, 29 Sep 2023 12:25:34 +0000 (UTC)
X-Original-To: Intel-gfx@lists.freedesktop.org
Delivered-To: Intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [134.134.136.31])
 by gabe.freedesktop.org (Postfix) with ESMTPS id CAA1110E700;
 Fri, 29 Sep 2023 12:25:30 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1695990330; x=1727526330;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=EL/WRwIdQJULtNfoc/4uDTgdJ0QIo7VKKQvLcvWWoAY=;
 b=Epkm6zVpYXdhpbMjqzv4I46026SngvLSJ0sD70uSauVpyitMojdiZ4aH
 mou/YVEFklwEgvbkTxFk827XCHjymSiqh3UyFlsvHDL6HvZPmPiZ2GCww
 FFRC0KYhdoKd2BFiuKpVwI0eItUzcFfoi9U+h6gy1jxymH3e/JYhy3Jz2
 4d2J6BG6dII7kuvP4Z5Qt7FOFFVQOQcgTE+8w7mPXu/ulT+vjiETPE8td
 v31c4uliKMl0UIwHubdTQ34nHPccO24InXl6Y23d7L9bVIhp2I8+irKTJ
 JDmjTlngHA3A5oqht07pIY5atoeuIyBsE5OrMer7tup8YdEe2cLp8cdOI g==;
X-IronPort-AV: E=McAfee;i="6600,9927,10847"; a="446443767"
X-IronPort-AV: E=Sophos;i="6.03,187,1694761200"; d="scan'208";a="446443767"
Received: from orsmga006.jf.intel.com ([10.7.209.51])
 by orsmga104.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 29 Sep 2023 05:25:30 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10847"; a="726577148"
X-IronPort-AV: E=Sophos;i="6.03,187,1694761200"; d="scan'208";a="726577148"
Received: from pbrady4x-mobl1.ger.corp.intel.com (HELO localhost.localdomain)
 ([10.213.203.84])
 by orsmga006-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 29 Sep 2023 05:25:29 -0700
From: Tvrtko Ursulin <tvrtko.ursulin@linux.intel.com>
To: igt-dev@lists.freedesktop.org,
	Intel-gfx@lists.freedesktop.org
Date: Fri, 29 Sep 2023 13:25:09 +0100
Message-Id: <20230929122517.349348-5-tvrtko.ursulin@linux.intel.com>
X-Mailer: git-send-email 2.39.2
In-Reply-To: <20230929122517.349348-1-tvrtko.ursulin@linux.intel.com>
References: <20230929122517.349348-1-tvrtko.ursulin@linux.intel.com>
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
index 87e9681e53b4..66b76c4afed0 100644
--- a/tools/intel_gpu_top.c
+++ b/tools/intel_gpu_top.c
@@ -1965,6 +1965,8 @@ print_clients_header(struct igt_drm_clients *clients, int lines,
 		     int con_w, int con_h, int *class_w)
 {
 	struct intel_clients *iclients = clients->private_data;
+	const int max_name_len = clients->max_name_len < 4 ?
+				 4 : clients->max_name_len; /* At least "NAME" */
 
 	if (output_mode == INTERACTIVE) {
 		unsigned int num_active = 0;
@@ -1988,9 +1990,8 @@ print_clients_header(struct igt_drm_clients *clients, int lines,
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

