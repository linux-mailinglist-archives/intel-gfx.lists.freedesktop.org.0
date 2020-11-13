Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id BA30A2B2077
	for <lists+intel-gfx@lfdr.de>; Fri, 13 Nov 2020 17:28:44 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 15B9E6E58E;
	Fri, 13 Nov 2020 16:28:43 +0000 (UTC)
X-Original-To: Intel-gfx@lists.freedesktop.org
Delivered-To: Intel-gfx@lists.freedesktop.org
Received: from mga06.intel.com (mga06.intel.com [134.134.136.31])
 by gabe.freedesktop.org (Postfix) with ESMTPS id F19176E58E;
 Fri, 13 Nov 2020 16:28:41 +0000 (UTC)
IronPort-SDR: S5dzLqww5KB5y8kbNbAwWyjz35Pxm566sYnpS8V/XMPt+sitmIhijWSbTKS8V1OcdckNK1iA7X
 EeZ5JcN/ayzg==
X-IronPort-AV: E=McAfee;i="6000,8403,9804"; a="232113249"
X-IronPort-AV: E=Sophos;i="5.77,476,1596524400"; d="scan'208";a="232113249"
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga004.jf.intel.com ([10.7.209.38])
 by orsmga104.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 13 Nov 2020 08:28:41 -0800
IronPort-SDR: XzlD2p0Nm6w78S/u0ZKDRS7moZ468TypIK1ftUht3Ciyaf6GNjugzQw8EcSwCNBeSoInU2t15X
 YfWzWXKXEFGA==
X-IronPort-AV: E=Sophos;i="5.77,476,1596524400"; d="scan'208";a="474721291"
Received: from shalomzo-mobl1.ger.corp.intel.com (HELO localhost.localdomain)
 ([10.251.180.188])
 by orsmga004-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 13 Nov 2020 08:28:39 -0800
From: Tvrtko Ursulin <tvrtko.ursulin@linux.intel.com>
To: igt-dev@lists.freedesktop.org
Date: Fri, 13 Nov 2020 16:27:36 +0000
Message-Id: <20201113162736.2434791-6-tvrtko.ursulin@linux.intel.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20201113162736.2434791-1-tvrtko.ursulin@linux.intel.com>
References: <20201113162736.2434791-1-tvrtko.ursulin@linux.intel.com>
MIME-Version: 1.0
Subject: [Intel-gfx] [RFC i-g-t 5/5] intel_gpu_top: Default GPU list to PCI
 mode
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
