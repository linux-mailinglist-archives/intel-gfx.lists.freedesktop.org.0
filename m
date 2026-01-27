Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id cCduCRKNeGlprAEAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Tue, 27 Jan 2026 11:01:54 +0100
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id D6D3D92574
	for <lists+intel-gfx@lfdr.de>; Tue, 27 Jan 2026 11:01:53 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 6BE3A10E509;
	Tue, 27 Jan 2026 10:01:52 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="ADkEZa/D";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.17])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 8253E10E519;
 Tue, 27 Jan 2026 10:01:51 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1769508112; x=1801044112;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=+v4xLQ3b0ONPKbntndrDWPYN3WbMtXmZxpNJc97oRTo=;
 b=ADkEZa/Dv/8Y1qSpEMM95ZkV2LvmrY2Ym0Ckg2PottHC4zmLnc/UedoH
 WD6UxIhkd5akHILh+9g6qdAMaYXjVxoET4LlbVF2egQLmQj6RKSjuSTVx
 ukCnjGqRQSxD52U0Ju7lXvqlH46ENwh7r+Lc3EVtcPtIszYqo9q4sfi5k
 hrjefQ+sLarCfNqaUd8zR74amALX9yC568dz3OcW1yDw/03e69kMpJM1r
 O4AR2P7f48h9WKbto/4mf/5Uj7LX2mEDsgLDCKZQ3l6zvu5lN6+mnQSA0
 QkCt4ReDQDlSPYV7fB23MTb+wKZi9zCYNndC9SknJUJY9PxaLR3g0ULe9 g==;
X-CSE-ConnectionGUID: LuBtzy0BRwe+FRaoEF2oPA==
X-CSE-MsgGUID: yuji63HYSB+MphQ5/6IHKA==
X-IronPort-AV: E=McAfee;i="6800,10657,11683"; a="70602237"
X-IronPort-AV: E=Sophos;i="6.21,256,1763452800"; d="scan'208";a="70602237"
Received: from orviesa009.jf.intel.com ([10.64.159.149])
 by fmvoesa111.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 27 Jan 2026 02:01:51 -0800
X-CSE-ConnectionGUID: n6hea6YCSwO8d7xPrNIzTw==
X-CSE-MsgGUID: 7mcCUgHZQqSgelj8GASGmg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.21,256,1763452800"; d="scan'208";a="207732521"
Received: from jkrzyszt-mobl2.ger.corp.intel.com ([10.245.246.153])
 by orviesa009-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 27 Jan 2026 02:01:48 -0800
From: Janusz Krzysztofik <janusz.krzysztofik@linux.intel.com>
To: igt-dev@lists.freedesktop.org
Cc: intel-gfx@lists.freedesktop.org, intel-xe@lists.freedesktop.org,
 Kamil Konieczny <kamil.konieczny@linux.intel.com>,
 Andi Shyti <andi.shyti@linux.intel.com>,
 Krzysztof Karas <krzysztof.karas@intel.com>,
 Krzysztof Niemiec <krzysztof.niemiec@intel.com>,
 Sebastian Brzezinka <sebastian.brzezinka@intel.com>,
 Janusz Krzysztofik <janusz.krzysztofik@linux.intel.com>
Subject: [PATCH i-g-t v2 4/6] lib/igt_device_scan: List PCIe bridge ports
 after their children
Date: Tue, 27 Jan 2026 10:54:21 +0100
Message-ID: <20260127100123.114516-12-janusz.krzysztofik@linux.intel.com>
X-Mailer: git-send-email 2.52.0
In-Reply-To: <20260127100123.114516-8-janusz.krzysztofik@linux.intel.com>
References: <20260127100123.114516-8-janusz.krzysztofik@linux.intel.com>
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
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [0.19 / 15.00];
	MID_CONTAINS_FROM(1.00)[];
	R_MISSING_CHARSET(0.50)[];
	DMARC_POLICY_ALLOW(-0.50)[intel.com,none];
	R_SPF_ALLOW(-0.20)[+ip4:131.252.210.177:c];
	R_DKIM_ALLOW(-0.20)[intel.com:s=Intel];
	MAILLIST(-0.20)[mailman];
	MIME_GOOD(-0.10)[text/plain];
	RWL_MAILSPIKE_GOOD(-0.10)[131.252.210.177:from];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	RCVD_COUNT_THREE(0.00)[4];
	MIME_TRACE(0.00)[0:+];
	ARC_NA(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	TO_DN_SOME(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[janusz.krzysztofik@linux.intel.com,intel-gfx-bounces@lists.freedesktop.org];
	FROM_HAS_DN(0.00)[];
	DKIM_TRACE(0.00)[intel.com:+];
	NEURAL_HAM(-0.00)[-1.000];
	TAGGED_RCPT(0.00)[intel-gfx];
	RCPT_COUNT_SEVEN(0.00)[9];
	ASN(0.00)[asn:6366, ipnet:131.252.0.0/16, country:US];
	DBL_BLOCKED_OPENRESOLVER(0.00)[intel.com:email,intel.com:dkim]
X-Rspamd-Queue-Id: D6D3D92574
X-Rspamd-Action: no action

Current device sorting algorithm positions PCIe bridge upstream ports
between DRM and PCI devices of their GPU children.  Listing those two not
interleaved with bridge ports, and the ports following their PCI GPU
devices, seems more clear.  Go for it.

Reviewed-by: Sebastian Brzezinka <sebastian.brzezinka@intel.com>
Signed-off-by: Janusz Krzysztofik <janusz.krzysztofik@linux.intel.com>
---
 lib/igt_device_scan.c | 8 ++++++++
 1 file changed, 8 insertions(+)

diff --git a/lib/igt_device_scan.c b/lib/igt_device_scan.c
index ec6cc38953..d5159f5d40 100644
--- a/lib/igt_device_scan.c
+++ b/lib/igt_device_scan.c
@@ -23,6 +23,7 @@
  */
 
 #include "drmtest.h"
+#include "igt_aux.h"
 #include "igt_core.h"
 #include "igt_device_scan.h"
 #include "igt_list.h"
@@ -1061,6 +1062,7 @@ static struct igt_device *duplicate_device(struct igt_device *dev) {
 static int devs_compare(const void *a, const void *b)
 {
 	struct igt_device *dev1, *dev2;
+	unsigned int len1, len2;
 	int ret;
 
 	dev1 = *(struct igt_device **) a;
@@ -1069,6 +1071,12 @@ static int devs_compare(const void *a, const void *b)
 	if (ret)
 		return ret;
 
+	len1 = strlen(dev1->syspath);
+	len2 = strlen(dev2->syspath);
+
+	if (len1 != len2 && !strncmp(dev1->syspath, dev2->syspath, min(len1, len2)))
+		return len2 - len1;
+
 	return strcmp(dev1->syspath, dev2->syspath);
 }
 
-- 
2.52.0

