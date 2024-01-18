Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 0D00A831513
	for <lists+intel-gfx@lfdr.de>; Thu, 18 Jan 2024 09:48:57 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 8AAB410E17F;
	Thu, 18 Jan 2024 08:48:55 +0000 (UTC)
X-Original-To: Intel-gfx@lists.freedesktop.org
Delivered-To: Intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.55.52.93])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 2B1D710E17F;
 Thu, 18 Jan 2024 08:48:49 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1705567734; x=1737103734;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=Crlwhp3kdZuxANX4Y6SMgg0yGG7qEeZCRmbOLEVfODI=;
 b=anNyRpUI4Y7UdmJ8lnOvRW6K34INNGU9QOPaNP+pLoncYgcU9kgQd3Tm
 U8ud11rxh+PemgrwFA0gnycmQe0isM9E2MqOSHRl/tI1zDqzn2reT0GWV
 xjHA/rmkWN6NhqY9HJ450p2krRUH6kVDgFH311ecRIGzAM0qpDfrkF3vn
 Fpmvd17dVGknIejQSqq+NCnX9bD1KjQSq+pQCXFcX/zC7JKK++jRL8SG1
 G5Mm2X3BAqCu7p4mMI2nIsTIIQY/S/OfSmMe8r17QTNb6qv4lkWXh1zNU
 /gox+NaUStctTw8/CRrawAHkCbcxD5CJF/5cHQMzuWacT18MpKC5ijlRj Q==;
X-IronPort-AV: E=McAfee;i="6600,9927,10956"; a="397552139"
X-IronPort-AV: E=Sophos;i="6.05,201,1701158400"; d="scan'208";a="397552139"
Received: from orsmga004.jf.intel.com ([10.7.209.38])
 by fmsmga102.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 18 Jan 2024 00:48:48 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10956"; a="907981377"
X-IronPort-AV: E=Sophos;i="6.05,201,1701158400"; d="scan'208";a="907981377"
Received: from amyers-mobl2.ger.corp.intel.com (HELO localhost.localdomain)
 ([10.213.224.223])
 by orsmga004-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 18 Jan 2024 00:48:46 -0800
From: Tvrtko Ursulin <tvrtko.ursulin@linux.intel.com>
To: igt-dev@lists.freedesktop.org,
	Intel-gfx@lists.freedesktop.org
Subject: [PATCH i-g-t] tools/intel_gpu_top: Fix near full percentage bar
 formatting
Date: Thu, 18 Jan 2024 08:48:38 +0000
Message-Id: <20240118084838.734165-1-tvrtko.ursulin@linux.intel.com>
X-Mailer: git-send-email 2.40.1
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
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
Cc: anonymoustranquillity@proton.me, Tvrtko Ursulin <tvrtko.ursulin@intel.com>
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

From: Tvrtko Ursulin <tvrtko.ursulin@intel.com>

Fix a bug where 1) the end vertical separator element would not be printed
if the progress bar portion was all filled by the progress bar characters
(no trailing spaces), and 2) the numerical overlay would be skipped to.

The bug would also shift the layout of following UI elements since the
progress bar would not be consuming all the allocated horizontal space.

Signed-off-by: Tvrtko Ursulin <tvrtko.ursulin@intel.com>
Reported-by: anonymoustranquillity@proton.me
---
 tools/intel_gpu_top.c | 5 ++---
 1 file changed, 2 insertions(+), 3 deletions(-)

diff --git a/tools/intel_gpu_top.c b/tools/intel_gpu_top.c
index 046ead15a122..5b4f94d7de7a 100644
--- a/tools/intel_gpu_top.c
+++ b/tools/intel_gpu_top.c
@@ -1015,9 +1015,8 @@ print_percentage_bar(double percent, double max, int max_len, bool numeric)
 		printf("%s", bars[i]);
 
 	len -= (bar_len + (w - 1)) / w;
-	if (len < 1)
-		return;
-	n_spaces(len);
+	if (len >= 1)
+		n_spaces(len);
 
 	putchar('|');
 
-- 
2.40.1

