Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id EPXKJYdEqGlOrwAAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Wed, 04 Mar 2026 15:41:11 +0100
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 41A64201C49
	for <lists+intel-gfx@lfdr.de>; Wed, 04 Mar 2026 15:41:11 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 83C8710EA05;
	Wed,  4 Mar 2026 14:41:09 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="LvK/2xH1";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.11])
 by gabe.freedesktop.org (Postfix) with ESMTPS id DB62810EA2B;
 Wed,  4 Mar 2026 14:41:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1772635269; x=1804171269;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=gwi/PbauKktvIICAOeLkYEJ76JmKPsJ3qNwI06MmwIA=;
 b=LvK/2xH1p1+v31bGsKzt3NEnHALNVixLSlPRMwqkZ6ZR4hD5++ro/0FK
 /D7KP4xtk7OSAx6M3VM2tnY2AG+eLusjLzBJN605+05n4WzmYTBvr+1hp
 mwpnrL/bLwDxhZr0Sza5sMSskb/WKy1xgwnJUUSrF3szYWdqW8xi1CZ07
 54a5Zf3RtGGGxCcEzxzuC7Le92z6ZOllod8fgvzekXF0oav8//EhFJMgZ
 G1yR0Kn46zsnVtgsR9xFEbcp7nXCrxGqcEcA9Ipw0DbvvnqFtGvnfusdf
 q3q1FkYzB43Owmq/Py5it24k2jc+DcO8Tygq7RSOJoXcOD4cYhG0iF4bi w==;
X-CSE-ConnectionGUID: m35E1UqNTRKl3m6AqQsZfg==
X-CSE-MsgGUID: u2ewJlyUSNmUDliabw0aOw==
X-IronPort-AV: E=McAfee;i="6800,10657,11719"; a="84330034"
X-IronPort-AV: E=Sophos;i="6.21,324,1763452800"; d="scan'208";a="84330034"
Received: from orviesa007.jf.intel.com ([10.64.159.147])
 by fmvoesa105.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 04 Mar 2026 06:41:09 -0800
X-CSE-ConnectionGUID: 7jkLqVXYQv2BAJ1WYIoRwg==
X-CSE-MsgGUID: +l40w6lvRlOn/MwCyGcVEw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.21,324,1763452800"; d="scan'208";a="218479348"
Received: from krybak-mobl1.ger.corp.intel.com (HELO localhost)
 ([10.245.246.84])
 by orviesa007-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 04 Mar 2026 06:41:08 -0800
From: Jani Nikula <jani.nikula@intel.com>
To: intel-gfx@lists.freedesktop.org,
	intel-xe@lists.freedesktop.org
Cc: jani.nikula@intel.com
Subject: [PATCH 2/8] drm/i915/display: add step name in display runtime info
Date: Wed,  4 Mar 2026 16:40:47 +0200
Message-ID: <a5555ababff36d7f903df7cb5c5d0e4bca6054d0.1772635152.git.jani.nikula@intel.com>
X-Mailer: git-send-email 2.47.3
In-Reply-To: <cover.1772635152.git.jani.nikula@intel.com>
References: <cover.1772635152.git.jani.nikula@intel.com>
MIME-Version: 1.0
Organization: Intel Finland Oy - BIC 0357606-4 - c/o Alberga Business Park,
 6 krs Bertel Jungin Aukio 5, 02600 Espoo, Finland
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
X-Rspamd-Queue-Id: 41A64201C49
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [0.19 / 15.00];
	MID_CONTAINS_FROM(1.00)[];
	R_MISSING_CHARSET(0.50)[];
	DMARC_POLICY_ALLOW(-0.50)[intel.com,none];
	MAILLIST(-0.20)[mailman];
	R_SPF_ALLOW(-0.20)[+ip4:131.252.210.177:c];
	R_DKIM_ALLOW(-0.20)[intel.com:s=Intel];
	RWL_MAILSPIKE_GOOD(-0.10)[131.252.210.177:from];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	DKIM_TRACE(0.00)[intel.com:+];
	RCVD_TLS_LAST(0.00)[];
	RCVD_COUNT_THREE(0.00)[4];
	ARC_NA(0.00)[];
	HAS_ORG_HEADER(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	MIME_TRACE(0.00)[0:+];
	TO_DN_NONE(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[jani.nikula@intel.com,intel-gfx-bounces@lists.freedesktop.org];
	FROM_HAS_DN(0.00)[];
	RCPT_COUNT_THREE(0.00)[3];
	NEURAL_HAM(-0.00)[-1.000];
	FORGED_SENDER_MAILLIST(0.00)[];
	TAGGED_RCPT(0.00)[intel-gfx];
	ASN(0.00)[asn:6366, ipnet:131.252.0.0/16, country:US];
	DBL_BLOCKED_OPENRESOLVER(0.00)[intel.com:dkim,intel.com:email,intel.com:mid,gabe.freedesktop.org:rdns,gabe.freedesktop.org:helo]
X-Rspamd-Action: no action

Initialize the stepping name in display runtime info. This avoids having
to use intel_step_name().

For display device info print at boot, debugfs and snapshot this changes
the unknown step name from ** to N/A, which is more user friendly
anyway.

Signed-off-by: Jani Nikula <jani.nikula@intel.com>
---
 .../drm/i915/display/intel_display_device.c   | 28 +++++++++++++++++--
 .../drm/i915/display/intel_display_device.h   |  1 +
 2 files changed, 26 insertions(+), 3 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_display_device.c b/drivers/gpu/drm/i915/display/intel_display_device.c
index 0241603470a2..f716e9a51532 100644
--- a/drivers/gpu/drm/i915/display/intel_display_device.c
+++ b/drivers/gpu/drm/i915/display/intel_display_device.c
@@ -1653,6 +1653,28 @@ static void display_platforms_or(struct intel_display_platforms *dst,
 	bitmap_or(dst->bitmap, dst->bitmap, src->bitmap, display_platforms_num_bits());
 }
 
+#define __STEP_NAME(name) [STEP_##name] = #name,
+
+static void initialize_step(struct intel_display *display, enum intel_step step)
+{
+	static const char step_names[][3] = {
+		STEP_NAME_LIST(__STEP_NAME)
+	};
+
+	DISPLAY_RUNTIME_INFO(display)->step = step;
+
+	/* Step name will remain an empty string if not applicable */
+	if (step >= 0 && step < ARRAY_SIZE(step_names))
+		strscpy(DISPLAY_RUNTIME_INFO(display)->step_name, step_names[step]);
+}
+
+#undef __STEP_NAME
+
+static const char *step_name(const struct intel_display_runtime_info *runtime)
+{
+	return strlen(runtime->step_name) ? runtime->step_name : "N/A";
+}
+
 struct intel_display *intel_display_device_probe(struct pci_dev *pdev,
 						 const struct intel_display_parent_interface *parent)
 {
@@ -1730,14 +1752,14 @@ struct intel_display *intel_display_device_probe(struct pci_dev *pdev,
 					  subdesc ? &subdesc->step_info : NULL);
 	}
 
-	DISPLAY_RUNTIME_INFO(display)->step = step;
+	initialize_step(display, step);
 
 	drm_info(display->drm, "Found %s%s%s (device ID %04x) %s display version %u.%02u stepping %s\n",
 		 desc->name, subdesc ? "/" : "", subdesc ? subdesc->name : "",
 		 pdev->device, display->platform.dgfx ? "discrete" : "integrated",
 		 DISPLAY_RUNTIME_INFO(display)->ip.ver,
 		 DISPLAY_RUNTIME_INFO(display)->ip.rel,
-		 step != STEP_NONE ? intel_step_name(step) : "N/A");
+		 step_name(DISPLAY_RUNTIME_INFO(display)));
 
 	return display;
 
@@ -1953,7 +1975,7 @@ void intel_display_device_info_print(const struct intel_display_device_info *inf
 		drm_printf(p, "display version: %u\n",
 			   runtime->ip.ver);
 
-	drm_printf(p, "display stepping: %s\n", intel_step_name(runtime->step));
+	drm_printf(p, "display stepping: %s\n", step_name(runtime));
 
 #define PRINT_FLAG(name) drm_printf(p, "%s: %s\n", #name, str_yes_no(info->name))
 	DEV_INFO_DISPLAY_FOR_EACH_FLAG(PRINT_FLAG);
diff --git a/drivers/gpu/drm/i915/display/intel_display_device.h b/drivers/gpu/drm/i915/display/intel_display_device.h
index e84c190dcc4f..1170ac346615 100644
--- a/drivers/gpu/drm/i915/display/intel_display_device.h
+++ b/drivers/gpu/drm/i915/display/intel_display_device.h
@@ -287,6 +287,7 @@ struct intel_display_runtime_info {
 		u16 step; /* hardware */
 	} ip;
 	int step; /* symbolic */
+	char step_name[3]; /* empty string if not applicable */
 
 	u32 rawclk_freq;
 
-- 
2.47.3

