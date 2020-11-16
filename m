Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id A79582B4CB5
	for <lists+intel-gfx@lfdr.de>; Mon, 16 Nov 2020 18:27:16 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id EAF9289F5F;
	Mon, 16 Nov 2020 17:27:11 +0000 (UTC)
X-Original-To: Intel-gfx@lists.freedesktop.org
Delivered-To: Intel-gfx@lists.freedesktop.org
Received: from mga04.intel.com (mga04.intel.com [192.55.52.120])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 2EA4089F47;
 Mon, 16 Nov 2020 17:27:11 +0000 (UTC)
IronPort-SDR: RAhQFIcXWEqig64sxCWLRSLuQMfUUmelzjy0LD4b2ZAij0y++JdEc3Dg0t4q9pDEDVQgECopAS
 to7msvck1iRQ==
X-IronPort-AV: E=McAfee;i="6000,8403,9807"; a="168205772"
X-IronPort-AV: E=Sophos;i="5.77,483,1596524400"; d="scan'208";a="168205772"
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga005.jf.intel.com ([10.7.209.41])
 by fmsmga104.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 16 Nov 2020 09:27:10 -0800
IronPort-SDR: I0Re341HhrydmO5BwHr6asvgvscBoyJ6idQFNMRpTbBSTvlNk96IT/xix2ICYWJ0AcDBgE6xHo
 kKM5P3OLdyfg==
X-IronPort-AV: E=Sophos;i="5.77,483,1596524400"; d="scan'208";a="543681968"
Received: from abaldovi-mobl.ger.corp.intel.com (HELO localhost.localdomain)
 ([10.252.52.236])
 by orsmga005-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 16 Nov 2020 09:27:09 -0800
From: Tvrtko Ursulin <tvrtko.ursulin@linux.intel.com>
To: igt-dev@lists.freedesktop.org
Date: Mon, 16 Nov 2020 17:26:53 +0000
Message-Id: <20201116172653.4030093-5-tvrtko.ursulin@linux.intel.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20201116172653.4030093-1-tvrtko.ursulin@linux.intel.com>
References: <20201116172653.4030093-1-tvrtko.ursulin@linux.intel.com>
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH i-g-t 5/5] intel_gpu_top: Default GPU list to
 PCI mode
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

It is more obvious for the user to only shows filters for DRM master
nodes since those are the ones that intel_gpu_top monitors.

v2:
 * Filter prefix needs to be sys: when listing PCI devices.

Signed-off-by: Tvrtko Ursulin <tvrtko.ursulin@intel.com>
---
 tools/intel_gpu_top.c | 3 ++-
 1 file changed, 2 insertions(+), 1 deletion(-)

diff --git a/tools/intel_gpu_top.c b/tools/intel_gpu_top.c
index 07f88d555dc8..37b2141e784d 100644
--- a/tools/intel_gpu_top.c
+++ b/tools/intel_gpu_top.c
@@ -1388,7 +1388,8 @@ int main(int argc, char **argv)
 
 	if (list_device) {
 		struct igt_devices_print_format fmt = {
-			.type = IGT_PRINT_USER
+			.type = IGT_PRINT_USER,
+			.option = IGT_PRINT_PCI,
 		};
 
 		igt_devices_print(&fmt);
-- 
2.25.1

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
