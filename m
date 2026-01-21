Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id yDomMQ29cGkRZgAAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Wed, 21 Jan 2026 12:48:29 +0100
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 79DAD563F8
	for <lists+intel-gfx@lfdr.de>; Wed, 21 Jan 2026 12:48:29 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 0504710E772;
	Wed, 21 Jan 2026 11:48:28 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="Q7R5RWHX";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.9])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 5D56610E76B;
 Wed, 21 Jan 2026 11:48:26 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1768996106; x=1800532106;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=f3WUAaEZAjlQK8xmNRKUdlo2YUwr0Uwhu94TRrQWkvc=;
 b=Q7R5RWHX5gN+1bR+5K2w11Qm//sd+X6YrRNAPCO2c+g4Ey7VJNTONiPP
 aaJ0jd9iYspcz14c+47aeFVC7GGbf0R5S4AxIXqfhAKvkod1ZuaCqVx2F
 ziE+Ba+vClQ2LzRV6P8FxTN9R/yThG3Y45rMi4TXAZx+dtfp9WtJdzuMK
 LrGHNL3rukvhe3DrZdD6Py+80TkSDUhXOfx7lY3pOz+DF8WVIxvzcheS+
 6+ln89bm5KYEDP5XxPjL350kbDYyOhe1kJ5d7JIN4c8toW2oB7kURNsuR
 yBF2JCS6SvslVZKJOOOP68hX75ccK62+ORVQ8Lx2WL0+n09Za0VPThYBM A==;
X-CSE-ConnectionGUID: 6zdAeMmqSQS2uyv6KfA0sw==
X-CSE-MsgGUID: 3ppvFO+DSO+LEFIB+mK3gA==
X-IronPort-AV: E=McAfee;i="6800,10657,11677"; a="92889129"
X-IronPort-AV: E=Sophos;i="6.21,242,1763452800"; d="scan'208";a="92889129"
Received: from fmviesa006.fm.intel.com ([10.60.135.146])
 by orvoesa101.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 21 Jan 2026 03:48:26 -0800
X-CSE-ConnectionGUID: Cey3sf/RR5qjuJjKfByWng==
X-CSE-MsgGUID: weBvKmDBRo+SMoPst1Eqtg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.21,242,1763452800"; d="scan'208";a="206347813"
Received: from jkrzyszt-mobl2.ger.corp.intel.com (HELO
 jkrzyszt-mobl2.intranet) ([10.245.246.125])
 by fmviesa006-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 21 Jan 2026 03:48:24 -0800
From: Janusz Krzysztofik <janusz.krzysztofik@linux.intel.com>
To: igt-dev@lists.freedesktop.org
Cc: intel-gfx@lists.freedesktop.org, intel-xe@lists.freedesktop.org,
 Kamil Konieczny <kamil.konieczny@linux.intel.com>,
 Andi Shyti <andi.shyti@linux.intel.com>,
 Krzysztof Karas <krzysztof.karas@intel.com>,
 Krzysztof Niemiec <krzysztof.niemiec@intel.com>,
 Sebastian Brzezinka <sebastian.brzezinka@intel.com>,
 Janusz Krzysztofik <janusz.krzysztofik@linux.intel.com>
Subject: [PATCH i-g-t 7/7] lib/igt_device_scan: Print GPU upstream port
 parent/child relations
Date: Wed, 21 Jan 2026 12:42:25 +0100
Message-ID: <20260121114656.1970684-16-janusz.krzysztofik@linux.intel.com>
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
X-Rspamd-Queue-Id: 79DAD563F8
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

In a short listing, information about PCI parents of DRM devices, as well
as about DRM children of PCI GPU devices is now printed.  In a long
listing in turn, the latter is also printed.  Apply a similar approach to
PCIe bridge upstream ports: print information about their PCI GPU children
and also their codenames in both formats, and inform about upstream ports
of PCIe bridges found on PCI discrete GPU cards in the short format.

Signed-off-by: Janusz Krzysztofik <janusz.krzysztofik@linux.intel.com>
---
 lib/igt_device_scan.c | 22 +++++++++++++++++-----
 1 file changed, 17 insertions(+), 5 deletions(-)

diff --git a/lib/igt_device_scan.c b/lib/igt_device_scan.c
index e86da001a9..69ea8d2eaf 100644
--- a/lib/igt_device_scan.c
+++ b/lib/igt_device_scan.c
@@ -250,6 +250,8 @@ struct igt_device {
 	char *codename; /* For grouping by codename */
 	enum dev_type dev_type; /* For grouping by integrated/discrete */
 
+	char *pci_gpu; /* Filled for upstream bridge ports */
+
 	struct igt_list_head link;
 };
 
@@ -1058,6 +1060,9 @@ static void update_or_add_parent(struct udev *udev,
 	igt_assert(bridge_idev);
 
 	bridge_idev->dev_type = DEVTYPE_BRIDGE;
+	bridge_idev->pci_gpu = parent_idev->pci_slot_name;
+	bridge_idev->codename = parent_idev->codename;
+	parent_idev->parent = bridge_idev;
 }
 
 static struct igt_device *duplicate_device(struct igt_device *dev) {
@@ -1316,8 +1321,11 @@ igt_devs_print_simple(struct igt_list_head *view,
 			if (is_pci_subsystem(dev)) {
 				_pr_simple("vendor", dev->vendor);
 				_pr_simple("device", dev->device);
-				if (dev->dev_type != DEVTYPE_BRIDGE)
-					_pr_simple("codename", dev->codename);
+				if (dev->pci_gpu)
+					_pr_simple("GPU device", dev->pci_gpu);
+				_pr_simple("codename", dev->codename);
+				if (dev->parent && dev->parent->pci_slot_name)
+					_pr_simple("upstream port", dev->parent->pci_slot_name);
 			}
 		}
 		printf("\n");
@@ -1469,9 +1477,13 @@ igt_devs_print_detail(struct igt_list_head *view,
 	igt_list_for_each_entry(dev, view, link) {
 		printf("========== %s:%s ==========\n",
 		       dev->subsystem, dev->syspath);
-		if (!is_drm_subsystem(dev) && dev->dev_type != DEVTYPE_BRIDGE) {
-			_print_key_value("card device", dev->drm_card);
-			_print_key_value("render device", dev->drm_render);
+		if (!is_drm_subsystem(dev)) {
+			if (dev->dev_type != DEVTYPE_BRIDGE) {
+				_print_key_value("card device", dev->drm_card);
+				_print_key_value("render device", dev->drm_render);
+			} else {
+				_print_key_value("GPU device", dev->pci_gpu);
+			}
 			_print_key_value("codename", dev->codename);
 		}
 
-- 
2.52.0

