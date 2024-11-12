Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id F37FE9C64D2
	for <lists+intel-gfx@lfdr.de>; Wed, 13 Nov 2024 00:05:31 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 1C70910E235;
	Tue, 12 Nov 2024 23:05:30 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="cXIocNk9";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.13])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 417C410E235
 for <intel-gfx@lists.freedesktop.org>; Tue, 12 Nov 2024 23:05:28 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1731452728; x=1762988728;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=jUAt4VAfwtWxA9ynovbKgy231Ict53sFVSLZgX4ClUY=;
 b=cXIocNk9O5I2NNVcINgqiAwGxkCa/XMsLCN+AXN8JGIwa4IGCNTmdC4f
 e3JzqtJqCC0IfYSfO8hXKOE2XLPTmqPecIC8OLb3jKbeha+QuYQxx7LXf
 90GQdg88NGkX8VNy6P9a8I36hWxl6+l/Jy8qzMO0qhBusd0SDcQSQQUb9
 IPKHPIsQ4WFvsH616ISqGVljJa6qdmMXnibPTeebdDpyhs3JbsEx0lNKK
 dz1G8Bto/mo6aJOHNFD9k//Hk94i27e4VenX61m1DV5PY3ET4tVeS34yR
 NAraNQ50V7u89Rb/GeuhBP6ZBQqkJ89dvWUFip1armtaxx7VGP6dYTil6 A==;
X-CSE-ConnectionGUID: cPSHQ9fgTfmEDxyKrKe6Jw==
X-CSE-MsgGUID: jHsyYd/gTiCYRx4OTydFyg==
X-IronPort-AV: E=McAfee;i="6700,10204,11222"; a="42427217"
X-IronPort-AV: E=Sophos;i="6.11,199,1725346800"; d="scan'208";a="42427217"
Received: from orviesa010.jf.intel.com ([10.64.159.150])
 by orvoesa105.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 12 Nov 2024 15:05:28 -0800
X-CSE-ConnectionGUID: XO1lOaC7QKuM5QfIsB+cQw==
X-CSE-MsgGUID: yWn84wfmTVGTNKNB3VV28A==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.12,149,1728975600"; d="scan'208";a="87578686"
Received: from valcore-skull-1.fm.intel.com ([10.1.39.17])
 by orviesa010-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 12 Nov 2024 15:05:28 -0800
From: Daniele Ceraolo Spurio <daniele.ceraolospurio@intel.com>
To: intel-gfx@lists.freedesktop.org
Cc: Daniele Ceraolo Spurio <daniele.ceraolospurio@intel.com>,
 Alan Previn <alan.previn.teres.alexis@intel.com>
Subject: [PATCH] drm/i915/gsc: Improve SW proxy error checking and logging
Date: Tue, 12 Nov 2024 15:05:09 -0800
Message-ID: <20241112230509.781164-1-daniele.ceraolospurio@intel.com>
X-Mailer: git-send-email 2.43.0
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
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

If an error occurs in the GSC<->CSME handshake, the GSC will send a
PROXY_END msg to the driver with the status set to an error code. We
currently don't check the status when receiving a PROXY_END message and
instead check the proxy initialization status in the FWSTS reg;
therefore, while still catching any initialization failures, we lose the
actual returned error code. This can be easily improved by checking the
status value and printing it to dmesg if it's an error.

Signed-off-by: Daniele Ceraolo Spurio <daniele.ceraolospurio@intel.com>
Cc: Alan Previn <alan.previn.teres.alexis@intel.com>
---
 drivers/gpu/drm/i915/gt/uc/intel_gsc_proxy.c | 26 ++++++++++++++++----
 1 file changed, 21 insertions(+), 5 deletions(-)

diff --git a/drivers/gpu/drm/i915/gt/uc/intel_gsc_proxy.c b/drivers/gpu/drm/i915/gt/uc/intel_gsc_proxy.c
index d8edd7c054c8..cf114361cf59 100644
--- a/drivers/gpu/drm/i915/gt/uc/intel_gsc_proxy.c
+++ b/drivers/gpu/drm/i915/gt/uc/intel_gsc_proxy.c
@@ -155,7 +155,8 @@ static int proxy_send_to_gsc(struct intel_gsc_uc *gsc)
 	return err;
 }
 
-static int validate_proxy_header(struct intel_gsc_proxy_header *header,
+static int validate_proxy_header(struct intel_gt *gt,
+				 struct intel_gsc_proxy_header *header,
 				 u32 source, u32 dest)
 {
 	u32 type = FIELD_GET(GSC_PROXY_TYPE, header->hdr);
@@ -167,6 +168,12 @@ static int validate_proxy_header(struct intel_gsc_proxy_header *header,
 		goto fail;
 	}
 
+	/* We only care about the status if this is a message for the driver */
+	if (dest == GSC_PROXY_ADDRESSING_KMD && header->status != 0) {
+		ret = -EIO;
+		goto fail;
+	}
+
 	switch (type) {
 	case GSC_PROXY_MSG_TYPE_PROXY_PAYLOAD:
 		if (length > 0)
@@ -180,6 +187,11 @@ static int validate_proxy_header(struct intel_gsc_proxy_header *header,
 	}
 
 fail:
+	if (ret)
+		gt_err(gt,
+		       "GSC proxy error: s=0x%x[0x%x], d=0x%x[0x%x], t=%u, l=0x%x, st=0x%x\n",
+		       header->source, source, header->destination, dest,
+		       type, length, header->status);
 	return ret;
 }
 
@@ -214,13 +226,17 @@ static int proxy_query(struct intel_gsc_uc *gsc)
 			goto proxy_error;
 		}
 
-		/* stop if this was the last message */
+		/* Check the status and stop if this was the last message */
 		if (FIELD_GET(GSC_PROXY_TYPE, to_csme->proxy_header.hdr) ==
-				GSC_PROXY_MSG_TYPE_PROXY_END)
+				GSC_PROXY_MSG_TYPE_PROXY_END) {
+			ret = validate_proxy_header(gt, &to_csme->proxy_header,
+						    GSC_PROXY_ADDRESSING_GSC,
+						    GSC_PROXY_ADDRESSING_KMD);
 			break;
+		}
 
 		/* make sure the GSC-to-CSME proxy header is sane */
-		ret = validate_proxy_header(&to_csme->proxy_header,
+		ret = validate_proxy_header(gt, &to_csme->proxy_header,
 					    GSC_PROXY_ADDRESSING_GSC,
 					    GSC_PROXY_ADDRESSING_CSME);
 		if (ret) {
@@ -239,7 +255,7 @@ static int proxy_query(struct intel_gsc_uc *gsc)
 		to_gsc->header.message_size = ret + sizeof(struct intel_gsc_mtl_header);
 
 		/* make sure the CSME-to-GSC proxy header is sane */
-		ret = validate_proxy_header(&to_gsc->proxy_header,
+		ret = validate_proxy_header(gt, &to_gsc->proxy_header,
 					    GSC_PROXY_ADDRESSING_CSME,
 					    GSC_PROXY_ADDRESSING_GSC);
 		if (ret) {
-- 
2.43.0

