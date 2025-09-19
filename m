Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 1F739B88B55
	for <lists+intel-gfx@lfdr.de>; Fri, 19 Sep 2025 11:59:28 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 62F7110E976;
	Fri, 19 Sep 2025 09:59:26 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="EPtmT9D1";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.15])
 by gabe.freedesktop.org (Postfix) with ESMTPS id A889C10E976
 for <intel-gfx@lists.freedesktop.org>; Fri, 19 Sep 2025 09:59:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1758275966; x=1789811966;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=soFYAXukzESUvL0bJQTk4Xjx9WouwWNy74gROoyZuCw=;
 b=EPtmT9D1PuuwZ8EAaMnEUxtyZAt2GDujQntYnVWl0h/pcVtGoTwYc680
 9jTKtayaopwJ2D/D7D+4ZuvpbVwWS8gA1dVUriZ+LdBx92vsLPIHHADUm
 i0HcOjsQfGSbQqxvFdkdjmrUUwwNHvcvnVQovM7qRZ74HioeEFLJHAbhM
 Za3bRkvaUu48GGdJoXLtN8ez/af0XSngCU4qB7ATDNEcxMLtZAsT1WTVd
 8jO0iQb0mG1jgzvWJfEnwGHQrG29ou4dTbse26GZgimlF4GHasblWAHiB
 3CpPIgLgddNroiUlENTCLhKGRhMqyBqcbX0raK3AvkMg/16pJaD7oXqow g==;
X-CSE-ConnectionGUID: 2+rwTe1dQRWZb79PqxKxfQ==
X-CSE-MsgGUID: XRjGD7aXSlCdDswHMDGyVQ==
X-IronPort-AV: E=McAfee;i="6800,10657,11557"; a="64259666"
X-IronPort-AV: E=Sophos;i="6.18,277,1751266800"; d="scan'208";a="64259666"
Received: from orviesa004.jf.intel.com ([10.64.159.144])
 by orvoesa107.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 19 Sep 2025 02:59:26 -0700
X-CSE-ConnectionGUID: HulUNyBtTcKn0KZ9nzlh/w==
X-CSE-MsgGUID: XGw/ii/BQoaCRnmphSACkg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.18,277,1751266800"; d="scan'208";a="180050072"
Received: from dbhadane-mobl1.iind.intel.com ([10.190.239.58])
 by orviesa004.jf.intel.com with ESMTP; 19 Sep 2025 02:59:25 -0700
From: Dnyaneshwar Bhadane <dnyaneshwar.bhadane@intel.com>
To: intel-gfx@lists.freedesktop.org
Cc: Dnyaneshwar Bhadane <dnyaneshwar.bhadane@intel.com>
Subject: [PATCH v2 2/3] drm/i915/display: Add definition for wcl as subplatform
Date: Fri, 19 Sep 2025 15:29:19 +0530
Message-ID: <20250919095920.1594604-3-dnyaneshwar.bhadane@intel.com>
X-Mailer: git-send-email 2.51.0
In-Reply-To: <20250919095920.1594604-1-dnyaneshwar.bhadane@intel.com>
References: <20250911210514.389014-1-dnyaneshwar.bhadane@intel.com>
 <20250919095920.1594604-1-dnyaneshwar.bhadane@intel.com>
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

Update the device definition structs for adding wildcat lake as
subplatfrom of pantherlake.

Signed-off-by: Dnyaneshwar Bhadane <dnyaneshwar.bhadane@intel.com>
---
 drivers/gpu/drm/i915/display/intel_display_device.c | 12 ++++++++++++
 drivers/gpu/drm/i915/display/intel_display_device.h |  4 +++-
 2 files changed, 15 insertions(+), 1 deletion(-)

diff --git a/drivers/gpu/drm/i915/display/intel_display_device.c b/drivers/gpu/drm/i915/display/intel_display_device.c
index a9a36176096f..84aa6b6384da 100644
--- a/drivers/gpu/drm/i915/display/intel_display_device.c
+++ b/drivers/gpu/drm/i915/display/intel_display_device.c
@@ -1379,6 +1379,11 @@ static const u16 mtl_u_ids[] = {
 	0
 };
 
+static const u16 wcl_ids[] = {
+	INTEL_WCL_IDS(ID),
+	0
+};
+
 /*
  * Do not initialize the .info member of the platform desc for GMD ID based
  * platforms. Their display will be probed automatically based on the IP version
@@ -1406,6 +1411,13 @@ static const struct platform_desc bmg_desc = {
 
 static const struct platform_desc ptl_desc = {
 	PLATFORM(pantherlake),
+	.subplatforms = (const struct subplatform_desc[]) {
+		{
+			SUBPLATFORM(pantherlake, wildcatlake),
+			.pciidlist = wcl_ids,
+		},
+		{},
+	}
 };
 
 __diag_pop();
diff --git a/drivers/gpu/drm/i915/display/intel_display_device.h b/drivers/gpu/drm/i915/display/intel_display_device.h
index 1f091fbcd0ec..0e062753cf9b 100644
--- a/drivers/gpu/drm/i915/display/intel_display_device.h
+++ b/drivers/gpu/drm/i915/display/intel_display_device.h
@@ -101,7 +101,9 @@ struct pci_dev;
 	/* Display ver 14.1 (based on GMD ID) */ \
 	func(battlemage) \
 	/* Display ver 30 (based on GMD ID) */ \
-	func(pantherlake)
+	func(pantherlake) \
+	func(pantherlake_wildcatlake)
+
 
 #define __MEMBER(name) unsigned long name:1;
 #define __COUNT(x) 1 +
-- 
2.51.0

