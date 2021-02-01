Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id E541330A5B9
	for <lists+intel-gfx@lfdr.de>; Mon,  1 Feb 2021 11:45:45 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id C8D8B6E188;
	Mon,  1 Feb 2021 10:45:41 +0000 (UTC)
X-Original-To: Intel-gfx@lists.freedesktop.org
Delivered-To: Intel-gfx@lists.freedesktop.org
Received: from mga18.intel.com (mga18.intel.com [134.134.136.126])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 728E66E452;
 Mon,  1 Feb 2021 10:45:40 +0000 (UTC)
IronPort-SDR: mNZ9RmvtH553gHBLBsIUD9CXCYIdi/tyb1/Z3gjWaCfpIddKlnJkmXK3c249iM6EYuDx+kZIXY
 iJV4i1wCiThw==
X-IronPort-AV: E=McAfee;i="6000,8403,9881"; a="168348290"
X-IronPort-AV: E=Sophos;i="5.79,392,1602572400"; d="scan'208";a="168348290"
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
 by orsmga106.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 01 Feb 2021 02:45:40 -0800
IronPort-SDR: ZAVLkqLsuoHRnVHGb/HEUoB+PRPBumo4oP2C3sxX/l7HQu6dIjS4Gtw+TzCxnekclYoNrcpH01
 Crp/SvHslnBg==
X-IronPort-AV: E=Sophos;i="5.79,392,1602572400"; d="scan'208";a="478821461"
Received: from rmeir2x-mobl.ger.corp.intel.com (HELO localhost.localdomain)
 ([10.214.231.94])
 by fmsmga001-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 01 Feb 2021 02:45:38 -0800
From: Tvrtko Ursulin <tvrtko.ursulin@linux.intel.com>
To: igt-dev@lists.freedesktop.org
Date: Mon,  1 Feb 2021 10:45:24 +0000
Message-Id: <20210201104524.875560-3-tvrtko.ursulin@linux.intel.com>
X-Mailer: git-send-email 2.27.0
In-Reply-To: <20210201104524.875560-1-tvrtko.ursulin@linux.intel.com>
References: <20210201104524.875560-1-tvrtko.ursulin@linux.intel.com>
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH i-g-t 3/3] intel_gpu_top: Fix interactive header
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

Client stats refactoring broke the header layout with an extra newline.

Signed-off-by: Tvrtko Ursulin <tvrtko.ursulin@intel.com>
---
 tools/intel_gpu_top.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/tools/intel_gpu_top.c b/tools/intel_gpu_top.c
index dffc6ebecc57..9b8302de54da 100644
--- a/tools/intel_gpu_top.c
+++ b/tools/intel_gpu_top.c
@@ -1523,7 +1523,7 @@ print_header(const struct igt_device_card *card,
 		printf("\033[H\033[J");
 
 		if (lines++ < con_h)
-			printf("intel-gpu-top: %s @ %s\n",
+			printf("intel-gpu-top: %s @ %s - ",
 			       codename, card->card);
 		if (lines++ < con_h) {
 			printf("%s/%s MHz; %s%% RC6; ",
-- 
2.27.0

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
