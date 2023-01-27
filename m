Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 0D01A67E2D3
	for <lists+intel-gfx@lfdr.de>; Fri, 27 Jan 2023 12:13:07 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id B325310E461;
	Fri, 27 Jan 2023 11:13:03 +0000 (UTC)
X-Original-To: Intel-gfx@lists.freedesktop.org
Delivered-To: Intel-gfx@lists.freedesktop.org
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 9A32F10E452;
 Fri, 27 Jan 2023 11:12:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1674817973; x=1706353973;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=4EUo78eqCR4vzVuzw9kpw88MrcKCkVdPmbiE3N//srs=;
 b=Ujn9tQlMCq9jkqn6KRGEo8qGYP0WFEW5eYEU0ISX+TzS0/XoBKA5e8+F
 mD1Xqnh3vlQyWPD9Aqvgr892b9tqNPHEccOA4hpTZdjxFG+BmB6R6tE7N
 4R0XSeS1tSRJLIBC5VM2RqycCMszZQYMOa/UX7LpZhy6xRgePo5FUl08H
 /Rpm4TSmyRY8W9EiUN/UhFFn39hLemqQu0z5AIla7+eahhdFxp6vXx02P
 +8fI9cIgy5JqNSh5+ohLiHnFxN8WueR937VNrq3ZGwNyfVjtt998xBSK4
 uiGODn0vpVWeVSHO4dVza9nEg5JZDbQTQQquHdTNfRYOdQooPfaYupn/c g==;
X-IronPort-AV: E=McAfee;i="6500,9779,10602"; a="328352649"
X-IronPort-AV: E=Sophos;i="5.97,250,1669104000"; d="scan'208";a="328352649"
Received: from fmsmga006.fm.intel.com ([10.253.24.20])
 by orsmga102.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 27 Jan 2023 03:12:53 -0800
X-IronPort-AV: E=McAfee;i="6500,9779,10602"; a="908638125"
X-IronPort-AV: E=Sophos;i="5.97,250,1669104000"; d="scan'208";a="908638125"
Received: from jgeary-mobl1.ger.corp.intel.com (HELO localhost.localdomain)
 ([10.213.233.162])
 by fmsmga006-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 27 Jan 2023 03:12:51 -0800
From: Tvrtko Ursulin <tvrtko.ursulin@linux.intel.com>
To: igt-dev@lists.freedesktop.org,
	Intel-gfx@lists.freedesktop.org
Date: Fri, 27 Jan 2023 11:12:37 +0000
Message-Id: <20230127111241.3624629-3-tvrtko.ursulin@linux.intel.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20230127111241.3624629-1-tvrtko.ursulin@linux.intel.com>
References: <20230127111241.3624629-1-tvrtko.ursulin@linux.intel.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH i-g-t 2/6] intel_gpu_top: Automatically enclose
 JSON output into brackets
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
Cc: Eero Tamminen <eero.t.tamminen@intel.com>
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

From: Tvrtko Ursulin <tvrtko.ursulin@intel.com>

Parsers need the whole output enclosed into square brackets so every
period sample becomes an array element.

So far we have been suggesting this in the man page but we can trivially
make the tool output that itself.

Signed-off-by: Tvrtko Ursulin <tvrtko.ursulin@intel.com>
Cc: Eero Tamminen <eero.t.tamminen@intel.com>
Reviewed-by: Kamil Konieczny <kamil.konieczny@linux.intel.com>
---
 man/intel_gpu_top.rst | 2 +-
 tools/intel_gpu_top.c | 6 ++++++
 2 files changed, 7 insertions(+), 1 deletion(-)

diff --git a/man/intel_gpu_top.rst b/man/intel_gpu_top.rst
index 4417bcff0d5b..caf0a9f9432c 100644
--- a/man/intel_gpu_top.rst
+++ b/man/intel_gpu_top.rst
@@ -79,7 +79,7 @@ pci          | ``pci:[vendor=%04x/name][,device=%04x][,card=%d]``  Select using
 JSON OUTPUT
 ===========
 
-To parse the JSON as output by the tool the consumer should wrap its entirety into square brackets ([ ]). This will make each sample point a JSON array element and will avoid "Multiple root elements" JSON validation error.
+JSON output will be correctly terminated when the tool cleanly exits, otherwise one square bracket needs to be added before parsing.
 
 LIMITATIONS
 ===========
diff --git a/tools/intel_gpu_top.c b/tools/intel_gpu_top.c
index 6de8a164fcff..c4d98de4fe31 100644
--- a/tools/intel_gpu_top.c
+++ b/tools/intel_gpu_top.c
@@ -2597,6 +2597,9 @@ int main(int argc, char **argv)
 	scan_clients(clients, false);
 	codename = igt_device_get_pretty_name(&card, false);
 
+	if (output_mode == JSON)
+		printf("[\n");
+
 	while (!stop_top) {
 		struct clients *disp_clients;
 		bool consumed = false;
@@ -2683,6 +2686,9 @@ int main(int argc, char **argv)
 			usleep(period_us);
 	}
 
+	if (output_mode == JSON)
+		printf("]\n");
+
 	if (clients)
 		free_clients(clients);
 
-- 
2.34.1

