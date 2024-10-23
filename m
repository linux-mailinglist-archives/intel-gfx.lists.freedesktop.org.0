Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 81F129AD67E
	for <lists+intel-gfx@lfdr.de>; Wed, 23 Oct 2024 23:19:02 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 2B58010E1BA;
	Wed, 23 Oct 2024 21:18:59 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="MxBM9wzb";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.13])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 7492F10E081
 for <intel-gfx@lists.freedesktop.org>; Wed, 23 Oct 2024 21:18:57 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1729718337; x=1761254337;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=h7e3LVjW/H0VMvPgKqHrSv9q6LYiLEC470ia8uiWUD8=;
 b=MxBM9wzbuZIxQdPLbTbs/Uy6ausn8q9QomUSvJt40bIP2QEf250wQSXA
 hU0ucw4FKg7K+IiLSk1Ma8mtDHi2dCGamNRZEN7bIrk2socjvI4MvObre
 rMl9zLIvn5z8NW9pE6bDkSnKQCbN0QUc5jMp7s93592ML9+E0QiogeMre
 2z8Op3acFaI9YsZdHyS6eta/l89Z64rKiO/JFn0N7gPhB0eA76v2YVtzI
 55YGk4TcSWV9LZ8rFSKk46vua0xL6JZyum/WPmCzBA469p3H9V/wMk9cH
 QDw4/lMXNSNi6GY0K/FkMy5K0awWuP1tXnMHxCRSr+qIfeJ9Ys5EWITbZ Q==;
X-CSE-ConnectionGUID: dT6LMgCaSDqTmJkEJK4hUg==
X-CSE-MsgGUID: SGQXUGLvSTCzZFHwDOcTmw==
X-IronPort-AV: E=McAfee;i="6700,10204,11234"; a="32183721"
X-IronPort-AV: E=Sophos;i="6.11,227,1725346800"; d="scan'208";a="32183721"
Received: from orviesa005.jf.intel.com ([10.64.159.145])
 by fmvoesa107.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 23 Oct 2024 14:18:56 -0700
X-CSE-ConnectionGUID: z35eIYlRT6SXYhKYGwdIxA==
X-CSE-MsgGUID: S6LD7f+uTDCs2+CeOvN85Q==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.11,227,1725346800"; d="scan'208";a="85173381"
Received: from lucas-s2600cw.jf.intel.com ([10.165.21.196])
 by orviesa005-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 23 Oct 2024 14:18:57 -0700
From: Lucas De Marchi <lucas.demarchi@intel.com>
To: intel-gfx@lists.freedesktop.org
Cc: Jani Nikula <jani.nikula@linux.intel.com>,
 Rodrigo Vivi <rodrigo.vivi@intel.com>,
 Lucas De Marchi <lucas.demarchi@intel.com>
Subject: [PATCH topic/core-for-CI 1/2] Revert "HAX suspend: Disable S3/S4 for
 fi-bdw-samus"
Date: Wed, 23 Oct 2024 14:18:33 -0700
Message-ID: <20241023211834.3370346-1-lucas.demarchi@intel.com>
X-Mailer: git-send-email 2.47.0
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

This reverts commit efeb42fe3b7c58abbe674515252cfdb71c09eba5.

That machine is not in CI anymore, let's drop the hack.

Signed-off-by: Lucas De Marchi <lucas.demarchi@intel.com>
---
 drivers/acpi/sleep.c | 20 --------------------
 1 file changed, 20 deletions(-)

diff --git a/drivers/acpi/sleep.c b/drivers/acpi/sleep.c
index 4272cbc71ae89..c8ee8e42b0f64 100644
--- a/drivers/acpi/sleep.c
+++ b/drivers/acpi/sleep.c
@@ -84,16 +84,11 @@ static int acpi_sleep_prepare(u32 acpi_state)
 	return 0;
 }
 
-static u8 max_sleep_state = -1;
-
 bool acpi_sleep_state_supported(u8 sleep_state)
 {
 	acpi_status status;
 	u8 type_a, type_b;
 
-	if (sleep_state > max_sleep_state)
-		return false;
-
 	status = acpi_get_sleep_type_data(sleep_state, &type_a, &type_b);
 	return ACPI_SUCCESS(status) && (!acpi_gbl_reduced_hardware
 		|| (acpi_gbl_FADT.sleep_control.address
@@ -170,13 +165,6 @@ static int __init init_nvs_nosave(const struct dmi_system_id *d)
 	return 0;
 }
 
-static int __init init_nosleep(const struct dmi_system_id *d)
-{
-	pr_info("Disabling ACPI suspend\n");
-	max_sleep_state = 0;
-	return 0;
-}
-
 bool acpi_sleep_default_s3;
 
 static int __init init_default_s3(const struct dmi_system_id *d)
@@ -411,14 +399,6 @@ static const struct dmi_system_id acpisleep_dmi_table[] __initconst = {
 		DMI_MATCH(DMI_PRODUCT_NAME, "20GGA00L00"),
 		},
 	},
-	{
-	.callback = init_nosleep,
-	.ident = "samus",
-	.matches = {
-		DMI_MATCH(DMI_SYS_VENDOR, "GOOGLE"),
-		DMI_MATCH(DMI_PRODUCT_NAME, "Samus"),
-		},
-	},
 	{},
 };
 
-- 
2.47.0

