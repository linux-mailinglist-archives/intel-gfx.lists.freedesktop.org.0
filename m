Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 3F05F35276A
	for <lists+intel-gfx@lfdr.de>; Fri,  2 Apr 2021 10:23:25 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 292606E17E;
	Fri,  2 Apr 2021 08:23:23 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mx2.suse.de (mx2.suse.de [195.135.220.15])
 by gabe.freedesktop.org (Postfix) with ESMTPS id F33836E17E
 for <intel-gfx@lists.freedesktop.org>; Fri,  2 Apr 2021 08:23:21 +0000 (UTC)
X-Virus-Scanned: by amavisd-new at test-mx.suse.de
Received: from relay2.suse.de (unknown [195.135.221.27])
 by mx2.suse.de (Postfix) with ESMTP id 93D5EABED;
 Fri,  2 Apr 2021 08:23:20 +0000 (UTC)
From: Takashi Iwai <tiwai@suse.de>
To: Jani Nikula <jani.nikula@linux.intel.com>,
 Joonas Lahtinen <joonas.lahtinen@linux.intel.com>,
 Rodrigo Vivi <rodrigo.vivi@intel.com>
Date: Fri,  2 Apr 2021 10:23:17 +0200
Message-Id: <20210402082317.871-1-tiwai@suse.de>
X-Mailer: git-send-email 2.26.2
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH v2] drm/i915: Fix invalid access to ACPI _DSM
 objects
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
Cc: intel-gfx@lists.freedesktop.org, linux-kernel@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

intel_dsm_platform_mux_info() tries to parse the ACPI package data
from _DSM for the debug information, but it assumes the fixed format
without checking what values are stored in the elements actually.
When an unexpected value is returned from BIOS, it may lead to GPF or
NULL dereference, as reported recently.

Add the checks of the contents in the returned values and skip the
values for invalid cases.

v1->v2: Check the info contents before dereferencing, too

BugLink: http://bugzilla.opensuse.org/show_bug.cgi?id=1184074
Cc: <stable@vger.kernel.org>
Signed-off-by: Takashi Iwai <tiwai@suse.de>
---
 drivers/gpu/drm/i915/display/intel_acpi.c | 22 ++++++++++++++++++++--
 1 file changed, 20 insertions(+), 2 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_acpi.c b/drivers/gpu/drm/i915/display/intel_acpi.c
index e21fb14d5e07..833d0c1be4f1 100644
--- a/drivers/gpu/drm/i915/display/intel_acpi.c
+++ b/drivers/gpu/drm/i915/display/intel_acpi.c
@@ -84,13 +84,31 @@ static void intel_dsm_platform_mux_info(acpi_handle dhandle)
 		return;
 	}
 
+	if (!pkg->package.count) {
+		DRM_DEBUG_DRIVER("no connection in _DSM\n");
+		return;
+	}
+
 	connector_count = &pkg->package.elements[0];
 	DRM_DEBUG_DRIVER("MUX info connectors: %lld\n",
 		  (unsigned long long)connector_count->integer.value);
 	for (i = 1; i < pkg->package.count; i++) {
 		union acpi_object *obj = &pkg->package.elements[i];
-		union acpi_object *connector_id = &obj->package.elements[0];
-		union acpi_object *info = &obj->package.elements[1];
+		union acpi_object *connector_id;
+		union acpi_object *info;
+
+		if (obj->type != ACPI_TYPE_PACKAGE || obj->package.count < 2) {
+			DRM_DEBUG_DRIVER("Invalid object for MUX #%d\n", i);
+			continue;
+		}
+
+		connector_id = &obj->package.elements[0];
+		info = &obj->package.elements[1];
+		if (info->type != ACPI_TYPE_BUFFER || info->buffer.length < 4) {
+			DRM_DEBUG_DRIVER("Invalid info for MUX obj #%d\n", i);
+			continue;
+		}
+
 		DRM_DEBUG_DRIVER("Connector id: 0x%016llx\n",
 			  (unsigned long long)connector_id->integer.value);
 		DRM_DEBUG_DRIVER("  port id: %s\n",
-- 
2.26.2

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
