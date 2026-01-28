Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id WPuAHCs1eml+4gEAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Wed, 28 Jan 2026 17:11:23 +0100
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id E4561A53ED
	for <lists+intel-gfx@lfdr.de>; Wed, 28 Jan 2026 17:11:18 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 8DDA010E72C;
	Wed, 28 Jan 2026 16:11:16 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="dOtua6gM";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.12])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 22D1010E740;
 Wed, 28 Jan 2026 16:11:15 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1769616676; x=1801152676;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=Aa6yZVedBCpO1gMTLD6kxFOO0eKs2nH/7uhnRYFv+/k=;
 b=dOtua6gMBYJf2S3MaNAnD/YYxxmoKsm+J+ATgWktjfJCgsRkCFuKBLzH
 oqW436lnGjlEB5qRSOKOTfZX1JP93m15hxSYTX4/N6bV7F7VFDgg4Qh/N
 ZkCpphxAmuiGgbbVyVFmukOmrmjmRNF5J6A9mKAwbCls1mFR/slLBA0gc
 nVPUOB3Ga3nrCFR+Wkpecig9bze/8fQWjncdNKCD8qix5p9+5gJwNaQEb
 DXFeJg4GeV5y68oOrnVvgClIHGYxrcKuilRoKr99nNVjzB30iCFvplohX
 MEtOIxFmz6uTVUkozWOhidPiT2vzDgghyqLh13BEZo60EopUQkaIWfgqt g==;
X-CSE-ConnectionGUID: ETbk9pOtR+e5gbAzw4rwtQ==
X-CSE-MsgGUID: bkJr/ePtRoakEX7j4y/Nww==
X-IronPort-AV: E=McAfee;i="6800,10657,11685"; a="82262462"
X-IronPort-AV: E=Sophos;i="6.21,258,1763452800"; d="scan'208";a="82262462"
Received: from fmviesa008.fm.intel.com ([10.60.135.148])
 by orvoesa104.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 28 Jan 2026 08:11:15 -0800
X-CSE-ConnectionGUID: +QN1EVbZQuqnNBUr8WdBig==
X-CSE-MsgGUID: OsENfbnAR2GHhPD6GeWFLA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.21,258,1763452800"; d="scan'208";a="208546992"
Received: from jkrzyszt-mobl2.ger.corp.intel.com ([10.245.246.210])
 by fmviesa008-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 28 Jan 2026 08:11:12 -0800
From: Janusz Krzysztofik <janusz.krzysztofik@linux.intel.com>
To: igt-dev@lists.freedesktop.org
Cc: intel-gfx@lists.freedesktop.org, intel-xe@lists.freedesktop.org,
 Kamil Konieczny <kamil.konieczny@linux.intel.com>,
 Andi Shyti <andi.shyti@linux.intel.com>,
 Krzysztof Karas <krzysztof.karas@intel.com>,
 Krzysztof Niemiec <krzysztof.niemiec@intel.com>,
 Sebastian Brzezinka <sebastian.brzezinka@intel.com>,
 Janusz Krzysztofik <janusz.krzysztofik@linux.intel.com>
Subject: [PATCH i-g-t v3 6/6] lib/igt_device_scan: Print GPU upstream port
 parent/child relations
Date: Wed, 28 Jan 2026 17:09:04 +0100
Message-ID: <20260128161041.225652-14-janusz.krzysztofik@linux.intel.com>
X-Mailer: git-send-email 2.52.0
In-Reply-To: <20260128161041.225652-8-janusz.krzysztofik@linux.intel.com>
References: <20260128161041.225652-8-janusz.krzysztofik@linux.intel.com>
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
X-Rspamd-Queue-Id: E4561A53ED
X-Rspamd-Action: no action

In a short listing, lsgpu prints a sysfs path of a PCI GPU parent as a
local attribute of a DRM device.  However, if that's a discrete GPU and
its associated PCIe upstream bridge port has been identified, no
information on that bridge is listed among the GPU attributes.  Follow the
pattern used with DRM devices and also show a PCI slot of the bridge port
as a local attribute of the discrete GPU device.

Moreover, in both short and detailed listings, local attributes intended
for providing device names of GPU associated DRM devices and the GPU
codename are also printed as attributes of related PCIe upstream bridge
port, however, the DRM device names are shown as (null), and the codename
attribute provides raw vendor:device codes of the bridge itself.  Replace
those with PCI slot and codename of the GPU device.

v2: Allocate memory to local attributes of a bridge for safety (Sebastian),
  - merge with a formerly separate patch "lib/igt_device_scan: Don't print
    bridge not applicable attributes" (Sebastian),
  - no need for DEVTYPE_BRIDGE, just skip attributes if NULL.

Cc: Sebastian Brzezinka <sebastian.brzezinka@intel.com>
Signed-off-by: Janusz Krzysztofik <janusz.krzysztofik@linux.intel.com>
---
 lib/igt_device_scan.c | 18 ++++++++++++++++--
 1 file changed, 16 insertions(+), 2 deletions(-)

diff --git a/lib/igt_device_scan.c b/lib/igt_device_scan.c
index f4d2eb6568..96bf0e359d 100644
--- a/lib/igt_device_scan.c
+++ b/lib/igt_device_scan.c
@@ -249,6 +249,8 @@ struct igt_device {
 	char *codename; /* For grouping by codename */
 	enum dev_type dev_type; /* For grouping by integrated/discrete */
 
+	char *pci_gpu; /* Filled for upstream bridge ports */
+
 	struct igt_list_head link;
 };
 
@@ -1063,6 +1065,9 @@ static void update_or_add_parent(struct udev *udev,
 
 	/* override DEVTYPE_INTEGRATED so link attributes won't be omitted */
 	bridge_idev->dev_type = DEVTYPE_ALL;
+	bridge_idev->pci_gpu = strdup(parent_idev->pci_slot_name);
+	bridge_idev->codename = strdup(parent_idev->codename);
+	parent_idev->parent = bridge_idev;
 }
 
 static struct igt_device *duplicate_device(struct igt_device *dev) {
@@ -1234,6 +1239,7 @@ static void igt_device_free(struct igt_device *dev)
 	free(dev->device);
 	free(dev->driver);
 	free(dev->pci_slot_name);
+	free(dev->pci_gpu);
 	igt_map_destroy(dev->attrs_map, free_key_value);
 	igt_map_destroy(dev->props_map, free_key_value);
 }
@@ -1330,7 +1336,11 @@ igt_devs_print_simple(struct igt_list_head *view,
 			if (is_pci_subsystem(dev)) {
 				_pr_simple("vendor", dev->vendor);
 				_pr_simple("device", dev->device);
+				if (dev->pci_gpu)
+					_pr_simple("GPU device", dev->pci_gpu);
 				_pr_simple("codename", dev->codename);
+				if (dev->parent && dev->parent->pci_slot_name)
+					_pr_simple("upstream port", dev->parent->pci_slot_name);
 			}
 		}
 		printf("\n");
@@ -1483,8 +1493,12 @@ igt_devs_print_detail(struct igt_list_head *view,
 		printf("========== %s:%s ==========\n",
 		       dev->subsystem, dev->syspath);
 		if (!is_drm_subsystem(dev)) {
-			_print_key_value("card device", dev->drm_card);
-			_print_key_value("render device", dev->drm_render);
+			if (dev->drm_card)
+				_print_key_value("card device", dev->drm_card);
+			if (dev->drm_render)
+				_print_key_value("render device", dev->drm_render);
+			if (dev->pci_gpu)
+				_print_key_value("GPU device", dev->pci_gpu);
 			_print_key_value("codename", dev->codename);
 		}
 
-- 
2.52.0

