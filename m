Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id UNRMIAu9cGkRZgAAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Wed, 21 Jan 2026 12:48:27 +0100
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 542C9563F1
	for <lists+intel-gfx@lfdr.de>; Wed, 21 Jan 2026 12:48:27 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id D81E810E778;
	Wed, 21 Jan 2026 11:48:25 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="Z2YKlsfI";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.9])
 by gabe.freedesktop.org (Postfix) with ESMTPS id E0C4910E76B;
 Wed, 21 Jan 2026 11:48:23 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1768996104; x=1800532104;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=wHmDze3k12U2BMip5y57/a8YYsTat0TAcxrxNQkYKY4=;
 b=Z2YKlsfIY3FEJPRaBzmx2TCUq/cVmtm94sNE7Fo7HsK99B0udO39AGOZ
 vKP5hDjyzNOH6PD0gRmnfGe1X9gdPg4Aq8jQgaiBBvmGDXdohbdKDIKlS
 uU1AsGzJeniCoD1yXja2IaDFzzTMr9bqQJFVB7ofDrmhyvnNbcB16eCEC
 /DOX1cWLPbdAN6pLNs2vAzVUHGx2mWvsxmvwViFQ9jEojeyIGHbdI2mYF
 lyhpdsJz58EqfdcP5r0J6QoFdTm1YSxM30b7nEbgWQ2hExP47eEcFPCrX
 ENdao8lg8P2n3AWIb0X48aLHusBSCz9bfq2uNjE5lgDASmtTwmuBlHuXV A==;
X-CSE-ConnectionGUID: 4sc0dtzaTX6m7t+TMbl5eA==
X-CSE-MsgGUID: 1N3sCveEQ6GWF8iJk3SUjA==
X-IronPort-AV: E=McAfee;i="6800,10657,11677"; a="92889125"
X-IronPort-AV: E=Sophos;i="6.21,242,1763452800"; d="scan'208";a="92889125"
Received: from fmviesa006.fm.intel.com ([10.60.135.146])
 by orvoesa101.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 21 Jan 2026 03:48:23 -0800
X-CSE-ConnectionGUID: uObAWglvTEmwam/dV69ZnA==
X-CSE-MsgGUID: j2LQPoIxToefbqsaDBPEXQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.21,242,1763452800"; d="scan'208";a="206347795"
Received: from jkrzyszt-mobl2.ger.corp.intel.com (HELO
 jkrzyszt-mobl2.intranet) ([10.245.246.125])
 by fmviesa006-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 21 Jan 2026 03:48:21 -0800
From: Janusz Krzysztofik <janusz.krzysztofik@linux.intel.com>
To: igt-dev@lists.freedesktop.org
Cc: intel-gfx@lists.freedesktop.org, intel-xe@lists.freedesktop.org,
 Kamil Konieczny <kamil.konieczny@linux.intel.com>,
 Andi Shyti <andi.shyti@linux.intel.com>,
 Krzysztof Karas <krzysztof.karas@intel.com>,
 Krzysztof Niemiec <krzysztof.niemiec@intel.com>,
 Sebastian Brzezinka <sebastian.brzezinka@intel.com>,
 Janusz Krzysztofik <janusz.krzysztofik@linux.intel.com>
Subject: [PATCH i-g-t 6/7] lib/igt_device_scan: Don't print bridge not
 applicable attributes
Date: Wed, 21 Jan 2026 12:42:24 +0100
Message-ID: <20260121114656.1970684-15-janusz.krzysztofik@linux.intel.com>
X-Mailer: git-send-email 2.52.0
In-Reply-To: <20260121114656.1970684-9-janusz.krzysztofik@linux.intel.com>
References: <20260121114656.1970684-9-janusz.krzysztofik@linux.intel.com>
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
X-Spamd-Result: default: False [0.19 / 15.00];
	MID_CONTAINS_FROM(1.00)[];
	R_MISSING_CHARSET(0.50)[];
	DMARC_POLICY_ALLOW(-0.50)[intel.com,none];
	R_DKIM_ALLOW(-0.20)[intel.com:s=Intel];
	R_SPF_ALLOW(-0.20)[+ip4:131.252.210.177:c];
	MAILLIST(-0.20)[mailman];
	MIME_GOOD(-0.10)[text/plain];
	RWL_MAILSPIKE_GOOD(-0.10)[131.252.210.177:from];
	HAS_LIST_UNSUB(-0.01)[];
	ASN(0.00)[asn:6366, ipnet:131.252.0.0/16, country:US];
	ARC_NA(0.00)[];
	TO_DN_SOME(0.00)[];
	MIME_TRACE(0.00)[0:+];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCVD_COUNT_THREE(0.00)[4];
	RCPT_COUNT_SEVEN(0.00)[9];
	FROM_NEQ_ENVFROM(0.00)[janusz.krzysztofik@linux.intel.com,intel-gfx-bounces@lists.freedesktop.org];
	FROM_HAS_DN(0.00)[];
	TAGGED_RCPT(0.00)[intel-gfx];
	DBL_BLOCKED_OPENRESOLVER(0.00)[intel.com:email,intel.com:dkim,linux.intel.com:mid,gabe.freedesktop.org:rdns,gabe.freedesktop.org:helo];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	DKIM_TRACE(0.00)[intel.com:+]
X-Rspamd-Queue-Id: 542C9563F1
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

In addition to properties and attributes obtained from udev, print
functions also list some library specific attributes: drm_card,
drm_render and codename.  Those not necessarily make sense for PCIe
bridge upstream ports that follow their PCI GPU devices on the listing.
Skip them.

Signed-off-by: Janusz Krzysztofik <janusz.krzysztofik@linux.intel.com>
---
 lib/igt_device_scan.c | 8 ++++++--
 1 file changed, 6 insertions(+), 2 deletions(-)

diff --git a/lib/igt_device_scan.c b/lib/igt_device_scan.c
index 7c58ab84e8..e86da001a9 100644
--- a/lib/igt_device_scan.c
+++ b/lib/igt_device_scan.c
@@ -204,6 +204,7 @@ enum dev_type {
 	DEVTYPE_ALL,
 	DEVTYPE_INTEGRATED,
 	DEVTYPE_DISCRETE,
+	DEVTYPE_BRIDGE,
 };
 
 #define STR_INTEGRATED "integrated"
@@ -1055,6 +1056,8 @@ static void update_or_add_parent(struct udev *udev,
 
 	bridge_idev = find_or_add_igt_device(udev, bridge_dev, limit_attrs);
 	igt_assert(bridge_idev);
+
+	bridge_idev->dev_type = DEVTYPE_BRIDGE;
 }
 
 static struct igt_device *duplicate_device(struct igt_device *dev) {
@@ -1313,7 +1316,8 @@ igt_devs_print_simple(struct igt_list_head *view,
 			if (is_pci_subsystem(dev)) {
 				_pr_simple("vendor", dev->vendor);
 				_pr_simple("device", dev->device);
-				_pr_simple("codename", dev->codename);
+				if (dev->dev_type != DEVTYPE_BRIDGE)
+					_pr_simple("codename", dev->codename);
 			}
 		}
 		printf("\n");
@@ -1465,7 +1469,7 @@ igt_devs_print_detail(struct igt_list_head *view,
 	igt_list_for_each_entry(dev, view, link) {
 		printf("========== %s:%s ==========\n",
 		       dev->subsystem, dev->syspath);
-		if (!is_drm_subsystem(dev)) {
+		if (!is_drm_subsystem(dev) && dev->dev_type != DEVTYPE_BRIDGE) {
 			_print_key_value("card device", dev->drm_card);
 			_print_key_value("render device", dev->drm_render);
 			_print_key_value("codename", dev->codename);
-- 
2.52.0

