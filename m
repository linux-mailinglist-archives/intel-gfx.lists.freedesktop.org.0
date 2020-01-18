Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 7EB85141552
	for <lists+intel-gfx@lfdr.de>; Sat, 18 Jan 2020 02:03:54 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 7AC9E6F982;
	Sat, 18 Jan 2020 01:03:51 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga04.intel.com (mga04.intel.com [192.55.52.120])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 1AE656F982
 for <intel-gfx@lists.freedesktop.org>; Sat, 18 Jan 2020 01:03:49 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
 by fmsmga104.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 17 Jan 2020 17:03:49 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.70,332,1574150400"; d="scan'208";a="258020911"
Received: from orsmsx102.amr.corp.intel.com ([10.22.225.129])
 by fmsmga002.fm.intel.com with ESMTP; 17 Jan 2020 17:03:49 -0800
Received: from orsmsx158.amr.corp.intel.com (10.22.240.20) by
 ORSMSX102.amr.corp.intel.com (10.22.225.129) with Microsoft SMTP Server (TLS)
 id 14.3.439.0; Fri, 17 Jan 2020 17:03:49 -0800
Received: from vkasired-desk2.fm.intel.com (10.22.254.139) by
 ORSMSX158.amr.corp.intel.com (10.22.240.20) with Microsoft SMTP Server (TLS)
 id 14.3.439.0; Fri, 17 Jan 2020 17:03:48 -0800
From: Vivek Kasireddy <vivek.kasireddy@intel.com>
To: <intel-gfx@lists.freedesktop.org>
Date: Fri, 17 Jan 2020 16:58:48 -0800
Message-ID: <20200118005848.20382-1-vivek.kasireddy@intel.com>
X-Mailer: git-send-email 2.21.1
MIME-Version: 1.0
X-Originating-IP: [10.22.254.139]
Subject: [Intel-gfx] [PATCH] drm/i915/dsi: Ensure that the ACPI adapter
 lookup overrides the bus num
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
Cc: Jani Nikula <jani.nikula@intel.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

Remove the i2c_bus_num >= 0 check from the adapter lookup function
as this would prevent ACPI bus number override. This check was mainly
there to return early if the bus number has already been found but we
anyway return in the next line if the slave address does not match.

Fixes: 8cbf89db2941 ("drm/i915/dsi: Parse the I2C element from the VBT MIPI sequence block (v3)")
Cc: Hans de Goede <hdegoede@redhat.com>
Cc: Nabendu Maiti <nabendu.bikash.maiti@intel.com>
Cc: Matt Roper <matthew.d.roper@intel.com>
Cc: Bob Paauwe <bob.j.paauwe@intel.com>
Cc: Jani Nikula <jani.nikula@intel.com>
Signed-off-by: Vivek Kasireddy <vivek.kasireddy@intel.com>
---
 drivers/gpu/drm/i915/display/intel_dsi_vbt.c | 3 +--
 1 file changed, 1 insertion(+), 2 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_dsi_vbt.c b/drivers/gpu/drm/i915/display/intel_dsi_vbt.c
index 6ec35d975bd7..04f953ba8f00 100644
--- a/drivers/gpu/drm/i915/display/intel_dsi_vbt.c
+++ b/drivers/gpu/drm/i915/display/intel_dsi_vbt.c
@@ -394,8 +394,7 @@ static int i2c_adapter_lookup(struct acpi_resource *ares, void *data)
 	acpi_handle adapter_handle;
 	acpi_status status;
 
-	if (intel_dsi->i2c_bus_num >= 0 ||
-	    !i2c_acpi_get_i2c_resource(ares, &sb))
+	if (!i2c_acpi_get_i2c_resource(ares, &sb))
 		return 1;
 
 	if (lookup->slave_addr != sb->slave_address)
-- 
2.21.1

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
