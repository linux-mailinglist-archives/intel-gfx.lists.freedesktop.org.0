Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id B2D187BF935
	for <lists+intel-gfx@lfdr.de>; Tue, 10 Oct 2023 13:08:09 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 4C9E710E335;
	Tue, 10 Oct 2023 11:08:01 +0000 (UTC)
X-Original-To: Intel-gfx@lists.freedesktop.org
Delivered-To: Intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [134.134.136.100])
 by gabe.freedesktop.org (Postfix) with ESMTPS id DE40010E1D0;
 Tue, 10 Oct 2023 11:07:57 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1696936078; x=1728472078;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=oSW8UAGZ/xuxrulfCMy/ouKz2mQ/bQtyNOA0TQI3wuk=;
 b=ZJRaWftezB2kMceygho61rGg4lx9gDAUAIpZArsDhL0dd+Jkc+Ulzw7W
 Z76h4y+OAcLb5ia+fuy2iFhHeeWKAk/a9Iw3IwMjvg7dw5TkF6QZdK4+V
 an9KHrqFgSlQU3c6J96XqZW5LIIrKyGyRRIVuowjME2Y1bm5p7k1VBbKQ
 pEihmAy24lhCyHt+9YCd60q1xaK05N7VOaSBv+5oTOwcv3yOs/K6SaBSO
 JbCIeBbG8yMda/TWTYfeMGHnC7nbN4iC2vLcAqCGAC0uKx2qf+UwhmPhw
 I9gwgVqZmq9brSLViwxeRrVFC/w5CxOwLri8FOMlQLFi9GOxELQiTb0Fe A==;
X-IronPort-AV: E=McAfee;i="6600,9927,10858"; a="450863383"
X-IronPort-AV: E=Sophos;i="6.03,212,1694761200"; d="scan'208";a="450863383"
Received: from fmsmga008.fm.intel.com ([10.253.24.58])
 by orsmga105.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 10 Oct 2023 04:07:26 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10858"; a="819205888"
X-IronPort-AV: E=Sophos;i="6.03,212,1694761200"; d="scan'208";a="819205888"
Received: from emikisch-mobl.amr.corp.intel.com (HELO localhost.localdomain)
 ([10.213.174.67])
 by fmsmga008-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 10 Oct 2023 04:07:22 -0700
From: Tvrtko Ursulin <tvrtko.ursulin@linux.intel.com>
To: igt-dev@lists.freedesktop.org,
	Intel-gfx@lists.freedesktop.org
Date: Tue, 10 Oct 2023 12:07:11 +0100
Message-Id: <20231010110714.749239-2-tvrtko.ursulin@linux.intel.com>
X-Mailer: git-send-email 2.39.2
In-Reply-To: <20231010110714.749239-1-tvrtko.ursulin@linux.intel.com>
References: <20231010110714.749239-1-tvrtko.ursulin@linux.intel.com>
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

