Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 7112D30A5B7
	for <lists+intel-gfx@lfdr.de>; Mon,  1 Feb 2021 11:45:42 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 35D6A6E550;
	Mon,  1 Feb 2021 10:45:39 +0000 (UTC)
X-Original-To: Intel-gfx@lists.freedesktop.org
Delivered-To: Intel-gfx@lists.freedesktop.org
Received: from mga18.intel.com (mga18.intel.com [134.134.136.126])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 1627B6E188;
 Mon,  1 Feb 2021 10:45:37 +0000 (UTC)
IronPort-SDR: LSjGacKo7p/RfEvQvz+YUKpRGpvFz0Hyp1c6aDLlPqPVtvOD+4ukf39ICbPjNdgrG5VS3fZJBG
 gNDqim1RB7UQ==
X-IronPort-AV: E=McAfee;i="6000,8403,9881"; a="168348285"
X-IronPort-AV: E=Sophos;i="5.79,392,1602572400"; d="scan'208";a="168348285"
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
 by orsmga106.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 01 Feb 2021 02:45:36 -0800
IronPort-SDR: ZYjnbVI9FeaERDiw3vnnSIv5DFv37RX0/WEnKH4jqFTIVj1NHme46pZi9B9ii0BihtoznLOzAo
 mD8wIq0R6OzA==
X-IronPort-AV: E=Sophos;i="5.79,392,1602572400"; d="scan'208";a="478821445"
Received: from rmeir2x-mobl.ger.corp.intel.com (HELO localhost.localdomain)
 ([10.214.231.94])
 by fmsmga001-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 01 Feb 2021 02:45:34 -0800
From: Tvrtko Ursulin <tvrtko.ursulin@linux.intel.com>
To: igt-dev@lists.freedesktop.org
Date: Mon,  1 Feb 2021 10:45:22 +0000
Message-Id: <20210201104524.875560-1-tvrtko.ursulin@linux.intel.com>
X-Mailer: git-send-email 2.27.0
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH i-g-t 1/3] intel_gpu_top: Update manual page for
 recent additions
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
Cc: Intel-gfx@lists.freedesktop.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

From: Tvrtko Ursulin <tvrtko.ursulin@intel.com>

Document numeric busyness overlay and sort selection.

Signed-off-by: Tvrtko Ursulin <tvrtko.ursulin@intel.com>
---
 man/intel_gpu_top.rst | 2 ++
 1 file changed, 2 insertions(+)

diff --git a/man/intel_gpu_top.rst b/man/intel_gpu_top.rst
index 35ab10da9bb4..b18fd9675bb7 100644
--- a/man/intel_gpu_top.rst
+++ b/man/intel_gpu_top.rst
@@ -55,6 +55,8 @@ Supported keys:
 
     'q'    Exit from the tool.
     '1'    Toggle between aggregated engine class and physical engine mode.
+    'n'    Toggle display of numeric client busyness overlay.
+    's'    Toggle between sort modes (runtime, total runtime, client id).
 
 DEVICE SELECTION
 ================
-- 
2.27.0

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
