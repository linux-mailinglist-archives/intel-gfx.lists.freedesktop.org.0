Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id B8C8799A3B5
	for <lists+intel-gfx@lfdr.de>; Fri, 11 Oct 2024 14:17:43 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 7F4C310E12C;
	Fri, 11 Oct 2024 12:17:41 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="SZUxuURg";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.11])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 0AF6810E12C
 for <intel-gfx@lists.freedesktop.org>; Fri, 11 Oct 2024 12:17:40 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1728649060; x=1760185060;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=tgdyCM+On930dRg706IlYxHP7cMSoTGWrpO8UhqWgM8=;
 b=SZUxuURgEr1f6ZFjQOJZd2UbA8JhLa0l8bSBAKmVqFuAO6UODPgON8yk
 ZZxIdQgManS1mk7SMjnJa9RbwdVwmKkXKa2PtMfO5i1n5xZ6pHpQrIONC
 nOaiwgfyy7t9q0knfNANEmsnNa80c9NljdzDnuv1pCxIMpZxGDsbc1BgQ
 qDhBmJmzVARKfNhygoaXYsG/4F2Om/3uvEgLoUPVxJKh/Y0Mdz1/+M0xC
 mFXAQV5vAJwf74STjEHdRnf58ewlmeyuLx25/Vw78Slwnogy6CAHeAdU1
 oml5KykTuCg3uTkDqA5Xlp+OxSzJ7EfAuPZbXABn0oQHlwRVPwsfN/6rx Q==;
X-CSE-ConnectionGUID: LFYYtiV9Tmmp94+gstkE0A==
X-CSE-MsgGUID: 81vCKORWTMWGPa5I5c9xwA==
X-IronPort-AV: E=McAfee;i="6700,10204,11221"; a="38628942"
X-IronPort-AV: E=Sophos;i="6.11,195,1725346800"; d="scan'208";a="38628942"
Received: from orviesa003.jf.intel.com ([10.64.159.143])
 by fmvoesa105.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 11 Oct 2024 05:17:39 -0700
X-CSE-ConnectionGUID: ZC90DcaRRn2LiwRO49iasQ==
X-CSE-MsgGUID: R//dD13zScqtL10KNHVaag==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.11,195,1725346800"; d="scan'208";a="81722632"
Received: from mwiniars-desk2.ger.corp.intel.com (HELO localhost)
 ([10.245.246.178])
 by ORVIESA003-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 11 Oct 2024 05:17:37 -0700
From: Jani Nikula <jani.nikula@intel.com>
To: intel-gfx@lists.freedesktop.org
Cc: jani.nikula@intel.com,
	Imre Deak <imre.deak@intel.com>
Subject: [core-for-CI] Revert "ICL HACK: usb/icl: Work around ACPI boottime
 crash"
Date: Fri, 11 Oct 2024 15:17:29 +0300
Message-Id: <20241011121729.143932-1-jani.nikula@intel.com>
X-Mailer: git-send-email 2.39.5
MIME-Version: 1.0
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
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

This reverts commit 8d16a118950c ("ICL HACK: usb/icl: Work around ACPI
boottime crash").

There shouldn't be any ICL RVP's in CI anymore.

Cc: Imre Deak <imre.deak@intel.com>
Signed-off-by: Jani Nikula <jani.nikula@intel.com>
---
 drivers/usb/core/usb-acpi.c | 25 -------------------------
 1 file changed, 25 deletions(-)

diff --git a/drivers/usb/core/usb-acpi.c b/drivers/usb/core/usb-acpi.c
index 4c7e862cdf2d..21585ed89ef8 100644
--- a/drivers/usb/core/usb-acpi.c
+++ b/drivers/usb/core/usb-acpi.c
@@ -12,7 +12,6 @@
 #include <linux/acpi.h>
 #include <linux/pci.h>
 #include <linux/usb/hcd.h>
-#include <linux/dmi.h>
 
 #include "hub.h"
 
@@ -190,19 +189,6 @@ static int usb_acpi_add_usb4_devlink(struct usb_device *udev)
 	return 0;
 }
 
-static const struct dmi_system_id intel_icl_broken_acpi[] = {
-	{
-		.ident = "ICL RVP",
-		.matches = {
-			DMI_MATCH(DMI_SYS_VENDOR, "Intel Corporation"),
-			DMI_MATCH(DMI_PRODUCT_NAME, "Ice Lake Client Platform"),
-		},
-	},
-
-	{ }
-};
-static bool acpi_connection_type_broken;
-
 /*
  * Private to usb-acpi, all the core needs to know is that
  * port_dev->location is non-zero when it has been set by the firmware.
@@ -218,12 +204,6 @@ usb_acpi_get_connect_type(struct usb_port *port_dev, acpi_handle *handle)
 	struct acpi_pld_info *pld = NULL;
 	acpi_status status;
 
-	/* Work around unknown ACPI instruction error on ICL RVP BIOSes. */
-	if (acpi_connection_type_broken) {
-		port_dev->connect_type = USB_PORT_CONNECT_TYPE_UNKNOWN;
-		return;
-	}
-
 	/*
 	 * According to 9.14 in ACPI Spec 6.2. _PLD indicates whether usb port
 	 * is user visible and _UPC indicates whether it is connectable. If
@@ -394,11 +374,6 @@ static struct acpi_bus_type usb_acpi_bus = {
 
 int usb_acpi_register(void)
 {
-	if (dmi_check_system(intel_icl_broken_acpi)) {
-		pr_info("USB ACPI connection type broken.\n");
-		acpi_connection_type_broken = true;
-	}
-
 	return register_acpi_bus_type(&usb_acpi_bus);
 }
 
-- 
2.39.5

