Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 0E04EA9A4CB
	for <lists+intel-gfx@lfdr.de>; Thu, 24 Apr 2025 09:51:07 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 5192710E761;
	Thu, 24 Apr 2025 07:51:03 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="LBjItC6H";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.15])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 8EEF410E762
 for <intel-gfx@lists.freedesktop.org>; Thu, 24 Apr 2025 07:51:01 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1745481061; x=1777017061;
 h=resent-to:resent-from:resent-date:resent-message-id:from:
 to:cc:subject:date:message-id:in-reply-to:references:
 content-transfer-encoding:mime-version;
 bh=tkVxw8XoHhMxLmgb84SnGaq5JBhhyQtFgrdIKYjR7yM=;
 b=LBjItC6H9jcKGcJnTsX0SWk/J71AHbt+nQJrWfp2fazKZ63zA6QHUSBe
 uBMXR4ZluZcsWrzUSbGxpQwqMkSMcr8zDhVkKE+2cznUlhVo44Ik8TJjT
 Zt/XFgDxIB8Q69U40kt3eqThWO/XO8OU+URDHvs4/dtXuQNQqcH8RCCKQ
 FxJej845u/cCfm8vcE93ZUX1r+rjS/eQLDdB1sWeDrI04f1y4j3iErFVk
 NjsVqfzem6R1WUam8XtO7ISP2vZ4cRefw2+ZJvjYQvnVpbtl5wlKCioSn
 RTAyZyR0X78oLSC0pV/d1uzuh9V2jWIvDK1boYi1d1SVjGccFh/wsbhCO w==;
X-CSE-ConnectionGUID: rdxqxaQxQ5S0ztW+mzyoUg==
X-CSE-MsgGUID: YGsd+qgMQRKlmB1SioBmNQ==
X-IronPort-AV: E=McAfee;i="6700,10204,11412"; a="47233643"
X-IronPort-AV: E=Sophos;i="6.15,235,1739865600"; d="scan'208";a="47233643"
Received: from fmviesa005.fm.intel.com ([10.60.135.145])
 by fmvoesa109.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 24 Apr 2025 00:51:01 -0700
X-CSE-ConnectionGUID: jz1Ukg7lTs6V4riSOwAFUA==
X-CSE-MsgGUID: k/r8h+ZFTzmoVZZP1/P8ag==
X-ExtLoopCount2: 2 from 10.245.246.243
X-IronPort-AV: E=Sophos;i="6.15,235,1739865600"; d="scan'208";a="137336835"
Received: from mwiniars-desk2.ger.corp.intel.com (HELO localhost)
 ([10.245.246.243])
 by fmviesa005-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 24 Apr 2025 00:51:00 -0700
Resent-Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7,
 02160 Espoo
Resent-To: intel-gfx@lists.freedesktop.org
Resent-From: Jani Nikula <jani.nikula@intel.com>
Resent-Date: Thu, 24 Apr 2025 10:50:57 +0300
Resent-Message-ID: <87o6wmyp3y.fsf@intel.com>
Received: from SJ0PR11MB5770.namprd11.prod.outlook.com (2603:10b6:a03:421::6)
 by PH7PR11MB6428.namprd11.prod.outlook.com with HTTPS;
 Wed, 23 Apr 2025 09:10:28 +0000
Received: from BY3PR05CA0049.namprd05.prod.outlook.com (2603:10b6:a03:39b::24)
 by SJ0PR11MB5770.namprd11.prod.outlook.com (2603:10b6:a03:421::6)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.8678.22; Wed, 23 Apr
 2025 09:10:25 +0000
Received: from CY4PEPF0000E9CD.namprd03.prod.outlook.com
 (2603:10b6:a03:39b:cafe::81) by BY3PR05CA0049.outlook.office365.com
 (2603:10b6:a03:39b::24) with Microsoft SMTP Server (version=TLS1_3,
 cipher=TLS_AES_256_GCM_SHA384) id 15.20.8655.18 via Frontend Transport; Wed,
 23 Apr 2025 09:10:25 +0000
Authentication-Results: spf=fail (sender IP is 192.55.55.70)
 smtp.mailfrom=intel.com; dkim=none (message not signed)
 header.d=none;dmarc=fail action=none header.from=intel.com;
Received: from edgegateway.intel.com (192.55.55.70) by
 CY4PEPF0000E9CD.mail.protection.outlook.com (10.167.241.132) with Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.8655.12 via Frontend Transport; Wed, 23 Apr 2025 09:10:25 +0000
Received: from FMSMSX902.amr.corp.intel.com (10.18.126.91) by
 edgegateway.intel.com (10.1.192.135) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.44; Wed, 23 Apr 2025 02:10:11 -0700
Received: from FMSMSX902.amr.corp.intel.com (10.18.126.91) by
 fmsmsx902.amr.corp.intel.com (10.18.126.91) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1544.14; Wed, 23 Apr 2025 02:10:10 -0700
Received: from fmviesa001.fm.intel.com (10.60.135.141) by
 FMSMSX902.amr.corp.intel.com (10.18.84.215) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1544.14 via Frontend Transport; Wed, 23 Apr 2025 02:10:10 -0700
X-CSE-ConnectionGUID: HaRvs+tPSVCPS4Nh4vMmrg==
X-CSE-MsgGUID: x1AOPM0qSvasoF7avpkRbg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.15,233,1739865600"; d="scan'208";a="163317717"
Received: from fdefranc-mobl3.ger.corp.intel.com (HELO localhost)
 ([10.245.246.175])
 by smtpauth.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 23 Apr
 2025 02:10:08 -0700
From: Jani Nikula <jani.nikula@intel.com>
To: <intel-gfx@lists.freedesktop.org>, <intel-xe@lists.freedesktop.org>
CC: <jani.nikula@intel.com>
Subject: [PATCH 2/3] drm/i915/hdmi: convert rest of intel_hdmi.c to struct
 intel_display
Date: Wed, 23 Apr 2025 12:09:47 +0300
Message-ID: <7e3bb01cdc5b0c78dfd260a3cea23ca58081e299.1745399318.git.jani.nikula@intel.com>
X-Mailer: git-send-email 2.39.5
In-Reply-To: <cover.1745399318.git.jani.nikula@intel.com>
References: <cover.1745399318.git.jani.nikula@intel.com>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
Content-Transfer-Encoding: 8bit
Content-Type: text/plain
X-OrganizationHeadersPreserved: fmsmsx902.amr.corp.intel.com
X-MS-Exchange-Organization-ExpirationStartTime: 23 Apr 2025 09:10:25.7875 (UTC)
X-MS-Exchange-Organization-ExpirationStartTimeReason: OriginalSubmit
X-MS-Exchange-Organization-ExpirationInterval: 1:00:00:00.0000000
X-MS-Exchange-Organization-ExpirationIntervalReason: OriginalSubmit
X-MS-Exchange-Organization-Network-Message-Id: 4aa484e9-8810-4d69-841f-08dd8246af5c
X-EOPAttributedMessage: 0
X-MS-Exchange-Organization-MessageDirectionality: Originating
X-MS-Exchange-Organization-AuthSource: fmsmsx902.amr.corp.intel.com
X-MS-Exchange-Organization-AuthAs: Internal
X-MS-Exchange-Organization-AuthMechanism: 10
X-MS-Exchange-Organization-SCL: 1
X-CrossPremisesHeadersPromoted: CY4PEPF0000E9CD.namprd03.prod.outlook.com
X-CrossPremisesHeadersFiltered: CY4PEPF0000E9CD.namprd03.prod.outlook.com
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: CY4PEPF0000E9CD:EE_|SJ0PR11MB5770:EE_|PH7PR11MB6428:EE_
X-OriginatorOrg: intel.onmicrosoft.com
X-MS-Office365-Filtering-Correlation-Id: 4aa484e9-8810-4d69-841f-08dd8246af5c
X-Microsoft-Antispam: BCL:0;
 ARA:13230040|366016|82310400026|7053199007|41050700001; 
X-Forefront-Antispam-Report: CIP:192.55.55.70; CTRY:US; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:edgegateway.intel.com; PTR:edgegateway.intel.com;
 CAT:NONE; SFS:(13230040)(366016)(82310400026)(7053199007)(41050700001);
 DIR:INT; 
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 23 Apr 2025 09:10:25.6469 (UTC)
X-MS-Exchange-CrossTenant-Network-Message-Id: 4aa484e9-8810-4d69-841f-08dd8246af5c
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-OriginalAttributedTenantConnectingIp: TenantId=46c98d88-e344-4ed4-8496-4ed7712e255d; Ip=[192.55.55.70];
 Helo=[edgegateway.intel.com]
X-MS-Exchange-CrossTenant-AuthSource: fmsmsx902.amr.corp.intel.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-FromEntityHeader: HybridOnPrem
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SJ0PR11MB5770
X-MS-Exchange-Transport-EndToEndLatency: 00:00:03.3425944
X-MS-Exchange-Processed-By-BccFoldering: 15.20.8655.031
X-Microsoft-Antispam-Mailbox-Delivery: ucf:0; jmr:0; auth:0; dest:I;
 ENG:(910005)(944506478)(944626604)(920097)(425001)(930097)(140003); 
X-Microsoft-Antispam-Message-Info: o46GRbTgUihfbvE+IXTBWY+jhzjtiTROtfct1yyPG3S1NfFQb8uQWtTyqQb+ReR2iW8g+XWZxS4VYuSZbvgtuh0MVgrBUJwdxx8oq9GEC/Q2RAkTEtouCQBi2AaU1lp+xzYTBVuormCmrXAkQTolu6o+kgCFawMzHatwL3xghcNEaFq8bgjrnO6ngns2C1ugFpnFC2ziObT5SsuQX0DuMvvrM5o5n2OOtpEbYy7o2IwecCUM6i11mYdtyeHahBIEJL0BMgMYEJrV7Y3wNBTdzFkFBCzSisajy72rZP62P0V5zQyHwRJMpq1giXbHBN3itOpvNFTDajC+PpHFoOZHcrKBgo3Utpf4VVF143wXE5vPmKseSRGEBxWGZBv1c6d1esq/yyoxCd5Oproc9L1s41+nXfoRPmq2FQnXVmLgcTy5BAk37+/ASmRaC/3I5YxeCbvAMMWYVe6OiKaul4h6RM3xaz7rNj3vhIhM5X//clQn9Rb7JdwYBUelT12T5pv5ikq7HC0TrjQO9+4jpcZ5o7/4TlnPt+2m+V71rA5OClui38xEwUAxswQlAXEh2Bt1YZ02LF8dyLX0S5gUfkGWckuZ9dGfvlE3UGvKKrQj+HYmeltpCbNlvUab3gdWGcB5QavmjdJY4q3zwQbg5Icu3OQu/Luh50EritNuvTNaEVrzuhJ84feLP2Gz8tE+wcUdchgJK/jMRpBIRmaUubzl7Eeo0ye7SV5+WV+gkzwwJlj4UYnYzfs4+GnQYaQ/E3ky3MO/3w54LodFTwr5ClMS5U06ssshDfsKuFqV/44zhzWG5cpzoTzrJUG/Yrl4/AVsDRxS59Is0LszPdYAeacwcA==
MIME-Version: 1.0
X-TUID: jME4HJHdNoLG
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

Remove the last uses of struct drm_i915_private from intel_hdmi.c, and
drop the dependency on i915_drv.h.

Signed-off-by: Jani Nikula <jani.nikula@intel.com>
---
 drivers/gpu/drm/i915/display/intel_hdmi.c | 14 +++++++-------
 1 file changed, 7 insertions(+), 7 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_hdmi.c b/drivers/gpu/drm/i915/display/intel_hdmi.c
index e08c01e5b9d3..7fc01ba19afc 100644
--- a/drivers/gpu/drm/i915/display/intel_hdmi.c
+++ b/drivers/gpu/drm/i915/display/intel_hdmi.c
@@ -38,14 +38,15 @@
 #include <drm/drm_atomic_helper.h>
 #include <drm/drm_crtc.h>
 #include <drm/drm_edid.h>
+#include <drm/drm_print.h>
 #include <drm/drm_probe_helper.h>
 #include <drm/intel/intel_lpe_audio.h>
 
 #include <media/cec-notifier.h>
 
 #include "g4x_hdmi.h"
-#include "i915_drv.h"
 #include "i915_reg.h"
+#include "i915_utils.h"
 #include "intel_atomic.h"
 #include "intel_audio.h"
 #include "intel_connector.h"
@@ -1567,7 +1568,6 @@ bool intel_hdmi_hdcp_check_link_once(struct intel_digital_port *dig_port,
 				     struct intel_connector *connector)
 {
 	struct intel_display *display = to_intel_display(dig_port);
-	struct drm_i915_private *i915 = to_i915(dig_port->base.base.dev);
 	enum port port = dig_port->base.port;
 	enum transcoder cpu_transcoder = connector->hdcp.cpu_transcoder;
 	int ret;
@@ -1580,15 +1580,15 @@ bool intel_hdmi_hdcp_check_link_once(struct intel_digital_port *dig_port,
 	if (ret)
 		return false;
 
-	intel_de_write(i915, HDCP_RPRIME(i915, cpu_transcoder, port), ri.reg);
+	intel_de_write(display, HDCP_RPRIME(display, cpu_transcoder, port), ri.reg);
 
 	/* Wait for Ri prime match */
-	if (wait_for((intel_de_read(i915, HDCP_STATUS(i915, cpu_transcoder, port)) &
+	if (wait_for((intel_de_read(display, HDCP_STATUS(display, cpu_transcoder, port)) &
 		      (HDCP_STATUS_RI_MATCH | HDCP_STATUS_ENC)) ==
 		     (HDCP_STATUS_RI_MATCH | HDCP_STATUS_ENC), 1)) {
 		drm_dbg_kms(display->drm, "Ri' mismatch detected (%x)\n",
-			    intel_de_read(i915, HDCP_STATUS(i915, cpu_transcoder,
-							    port)));
+			    intel_de_read(display, HDCP_STATUS(display, cpu_transcoder,
+							       port)));
 		return false;
 	}
 	return true;
@@ -2013,7 +2013,7 @@ intel_hdmi_mode_valid(struct drm_connector *connector,
 	struct intel_hdmi *hdmi = intel_attached_hdmi(to_intel_connector(connector));
 	enum drm_mode_status status;
 	int clock = mode->clock;
-	int max_dotclk = to_i915(connector->dev)->display.cdclk.max_dotclk_freq;
+	int max_dotclk = display->cdclk.max_dotclk_freq;
 	bool has_hdmi_sink = intel_has_hdmi_sink(hdmi, connector->state);
 	bool ycbcr_420_only;
 	enum intel_output_format sink_format;
-- 
2.39.5

