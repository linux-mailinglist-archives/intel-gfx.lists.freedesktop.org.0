Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id F0C6927E17D
	for <lists+intel-gfx@lfdr.de>; Wed, 30 Sep 2020 08:43:05 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 5197B6E519;
	Wed, 30 Sep 2020 06:42:57 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga17.intel.com (mga17.intel.com [192.55.52.151])
 by gabe.freedesktop.org (Postfix) with ESMTPS id E7D756E509
 for <intel-gfx@lists.freedesktop.org>; Wed, 30 Sep 2020 06:42:55 +0000 (UTC)
IronPort-SDR: NW7GoUOTF8vQSFPpKx6PGtcRde7jYK6Nd81Oen3U4noyopOE0ruIF2OLxmzQX6UVpBaWtY6L60
 QcZK0JF31TKA==
X-IronPort-AV: E=McAfee;i="6000,8403,9759"; a="142387786"
X-IronPort-AV: E=Sophos;i="5.77,321,1596524400"; d="scan'208";a="142387786"
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga006.jf.intel.com ([10.7.209.51])
 by fmsmga107.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 29 Sep 2020 23:42:55 -0700
IronPort-SDR: eJ30iITr5IaoRpQJadMoSW/J5bA52dicqlP/eZVQszc6VCCLV9wVzL41ph0RhoSkbX9pO0/URZ
 g1UWu5Uw6qbw==
X-IronPort-AV: E=Sophos;i="5.77,321,1596524400"; d="scan'208";a="312487777"
Received: from cdgarci1-mobl1.amr.corp.intel.com (HELO
 ldmartin-desk1.intel.com) ([10.213.164.152])
 by orsmga006-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 29 Sep 2020 23:42:55 -0700
From: Lucas De Marchi <lucas.demarchi@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Tue, 29 Sep 2020 23:42:34 -0700
Message-Id: <20200930064234.85769-25-lucas.demarchi@intel.com>
X-Mailer: git-send-email 2.28.0
In-Reply-To: <20200930064234.85769-1-lucas.demarchi@intel.com>
References: <20200930064234.85769-1-lucas.demarchi@intel.com>
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH v6 24/24] drm/i915/dgfx: define llc and snooping
 behaviour
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
Cc: Michel Thierry <michel.thierry@intel.com>,
 Matthew Auld <matthew.auld@intel.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

From: Michel Thierry <michel.thierry@intel.com>

While we do lack the faster shared LLC, we should still have support
for snooping over PCIe.

Signed-off-by: Michel Thierry <michel.thierry@intel.com>
Signed-off-by: Matthew Auld <matthew.auld@intel.com>
---
 drivers/gpu/drm/i915/i915_pci.c | 2 ++
 1 file changed, 2 insertions(+)

diff --git a/drivers/gpu/drm/i915/i915_pci.c b/drivers/gpu/drm/i915/i915_pci.c
index c2dfdf52419b..95f281b48c64 100644
--- a/drivers/gpu/drm/i915/i915_pci.c
+++ b/drivers/gpu/drm/i915/i915_pci.c
@@ -900,6 +900,8 @@ static const struct intel_device_info rkl_info = {
 	GEN12_FEATURES, \
 	.memory_regions = REGION_SMEM | REGION_LMEM, \
 	.has_master_unit_irq = 1, \
+	.has_llc = 0, \
+	.has_snoop = 1, \
 	.is_dgfx = 1
 
 static const struct intel_device_info dg1_info __maybe_unused = {
-- 
2.28.0

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
