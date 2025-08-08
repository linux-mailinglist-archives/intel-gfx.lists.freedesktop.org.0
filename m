Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id DD8D3B1EDEF
	for <lists+intel-gfx@lfdr.de>; Fri,  8 Aug 2025 19:42:27 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 0016010E1EC;
	Fri,  8 Aug 2025 17:42:25 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="cEX1qono";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.18])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 2FD6E10E05C;
 Fri,  8 Aug 2025 17:42:24 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1754674944; x=1786210944;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=scqsCr/gY95CgfLfoHwhksXqCdHbUBd1aA1h16lHKLY=;
 b=cEX1qonoDx1/6zFCmKDqGDQwjPMthhrmGcUmi9Sfrn0zhOLPiwdsV2de
 951hqEaCgn89ebuhtavUe6S0MvIjHV5qd8WGTeUk/UEPICwUDonIR7YdL
 risesZRA2Y8guyC96RZc72qtp5LHNygx3O/JAACHvFhiUPWcmCpP+L4SX
 rBD/IMFuo9K2Hq4yLdFxwMYy6ySIcvfqhszvXGlKkA1nZMxi4WdAFKZBv
 UdOxYwvFkOCL+FV83p9L09jR9gcpBG8cun/P1JvsjgJzpI9jmEm5W/veg
 w+QwjQ98/joM2phJ/X+aI78XFkIBqrUHmm17O/gubP3G0AW4JgtX+AbLu w==;
X-CSE-ConnectionGUID: M7PFq9IBS7qxUmCA/Hj8Ow==
X-CSE-MsgGUID: M4pnCRHTRdGQhzw2m2gIPg==
X-IronPort-AV: E=McAfee;i="6800,10657,11515"; a="56231346"
X-IronPort-AV: E=Sophos;i="6.17,274,1747724400"; d="scan'208";a="56231346"
Received: from fmviesa002.fm.intel.com ([10.60.135.142])
 by fmvoesa112.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 08 Aug 2025 10:42:24 -0700
X-CSE-ConnectionGUID: IWRMnFsyRGKgI8KB5+cMsg==
X-CSE-MsgGUID: Nl9SGMWdQji1j9qVW+IwSg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.17,274,1747724400"; d="scan'208";a="189084966"
Received: from lucas-s2600cw.jf.intel.com ([10.165.21.196])
 by fmviesa002-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 08 Aug 2025 10:42:24 -0700
From: Lucas De Marchi <lucas.demarchi@intel.com>
To: intel-gfx@lists.freedesktop.org,
	intel-xe@lists.freedesktop.org
Cc: Lucas De Marchi <lucas.demarchi@intel.com>,
 Jani Nikula <jani.nikula@intel.com>
Subject: [PATCH] drm/intel/pciids: Add match on vendor/id only
Date: Fri,  8 Aug 2025 10:41:08 -0700
Message-ID: <20250808-intel-pci-device-v1-1-ce3545d86502@intel.com>
X-Mailer: git-send-email 2.50.1
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
X-Change-ID: 20250808-intel-pci-device-c8f757afa3a7
X-Mailer: b4 0.15-dev-858c0
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

All our PCI ID macros match on the PCI class besides the vendor and
devid, even for devices that may or may not have display. This may not
work going forward, so add a simple INTEL_PCI_DEVICE that matches only
on vendor/device IDs.

Cc: Jani Nikula <jani.nikula@intel.com>
Signed-off-by: Lucas De Marchi <lucas.demarchi@intel.com>
---
 include/drm/intel/pciids.h | 5 +++++
 1 file changed, 5 insertions(+)

diff --git a/include/drm/intel/pciids.h b/include/drm/intel/pciids.h
index 76f8d26f9cc9d..da6301a6fceab 100644
--- a/include/drm/intel/pciids.h
+++ b/include/drm/intel/pciids.h
@@ -26,6 +26,11 @@
 #define __PCIIDS_H__
 
 #ifdef __KERNEL__
+#define INTEL_PCI_DEVICE(_id, _info) { \
+	PCI_DEVICE(PCI_VENDOR_ID_INTEL, (_id)), \
+	.driver_data = (kernel_ulong_t)(_info), \
+}
+
 #define INTEL_VGA_DEVICE(_id, _info) { \
 	PCI_DEVICE(PCI_VENDOR_ID_INTEL, (_id)), \
 	.class = PCI_BASE_CLASS_DISPLAY << 16, .class_mask = 0xff << 16, \



