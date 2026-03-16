Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id 4NlPN1n0t2mLXgEAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Mon, 16 Mar 2026 13:15:21 +0100
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 925C62994C4
	for <lists+intel-gfx@lfdr.de>; Mon, 16 Mar 2026 13:15:21 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 20BA510E504;
	Mon, 16 Mar 2026 12:15:20 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="UTjSjk+h";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.18])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 40CFA10E504;
 Mon, 16 Mar 2026 12:15:19 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1773663320; x=1805199320;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=Xt8nXYmm8mcCzXhUXyxLn2OLqXV8/haysgLEYWYXvXk=;
 b=UTjSjk+hIbgta9fKqNwJd98EmpT4UhA5qygocfjA8j2W/YaLRPxOrwFQ
 UD7ec/Zjan3u7HSiUDFsc/HVV1Q94Ac2xWBb10cgmbfGSWB4MZkpuZzMR
 eYvdtGSggkmCLtVubycst30B/pjGTn3s7q20uItSMUl2WgwR+imKgDate
 D2UJoX+61EyJiZyYRNJtNE84IDWuO6lVuepBmWDKa3LZpW4nVx955tGtn
 whQ5TVREV0r+zDzLY0/N/RHPeV5qPBnUl401occG5Gbcf/hIitblt+hhx
 1HMlGyAy++ox4oqivtyCY2pSa+WgPa+wWE9YLkOaAzXaBuiLnmByKND9R Q==;
X-CSE-ConnectionGUID: eaJE/YTdQ067x1QrCCUJEA==
X-CSE-MsgGUID: ttHh/KNlQP+eIf9V/7fz6w==
X-IronPort-AV: E=McAfee;i="6800,10657,11730"; a="74711442"
X-IronPort-AV: E=Sophos;i="6.23,124,1770624000"; d="scan'208";a="74711442"
Received: from orviesa009.jf.intel.com ([10.64.159.149])
 by orvoesa110.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 16 Mar 2026 05:15:20 -0700
X-CSE-ConnectionGUID: VkBxRyZxTd63vvZKNdUOGg==
X-CSE-MsgGUID: Zd/yUAUvREaZeTWOmAosFg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.23,124,1770624000"; d="scan'208";a="221846827"
Received: from mjarzebo-mobl1.ger.corp.intel.com (HELO localhost)
 ([10.245.246.238])
 by orviesa009-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 16 Mar 2026 05:15:17 -0700
From: Jani Nikula <jani.nikula@intel.com>
To: intel-gfx@lists.freedesktop.org,
	intel-xe@lists.freedesktop.org
Cc: jani.nikula@intel.com,
	Luca Coelho <luciano.coelho@intel.com>
Subject: [CI 2/5] drm/i915/display: add step name in display runtime info
Date: Mon, 16 Mar 2026 14:14:59 +0200
Message-ID: <aab445dedb8235d9fdddfe2ee5bb624cdf453a18.1773663208.git.jani.nikula@intel.com>
X-Mailer: git-send-email 2.47.3
In-Reply-To: <cover.1773663208.git.jani.nikula@intel.com>
References: <cover.1773663208.git.jani.nikula@intel.com>
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
X-Spamd-Result: default: False [0.19 / 15.00];
	MID_CONTAINS_FROM(1.00)[];
	DMARC_POLICY_ALLOW(-0.50)[intel.com,none];
	R_MISSING_CHARSET(0.50)[];
	R_DKIM_ALLOW(-0.20)[intel.com:s=Intel];
	R_SPF_ALLOW(-0.20)[+ip4:131.252.210.177:c];
	MAILLIST(-0.20)[mailman];
	RWL_MAILSPIKE_GOOD(-0.10)[131.252.210.177:from];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	DKIM_TRACE(0.00)[intel.com:+];
	RCVD_TLS_LAST(0.00)[];
	RCVD_COUNT_THREE(0.00)[4];
	MIME_TRACE(0.00)[0:+];
	HAS_ORG_HEADER(0.00)[];
	ARC_NA(0.00)[];
	RCPT_COUNT_THREE(0.00)[4];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[jani.nikula@intel.com,intel-gfx-bounces@lists.freedesktop.org];
	FROM_HAS_DN(0.00)[];
	TO_DN_SOME(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	TAGGED_RCPT(0.00)[intel-gfx];
	NEURAL_HAM(-0.00)[-1.000];
	ASN(0.00)[asn:6366, ipnet:131.252.0.0/16, country:US];
	DBL_BLOCKED_OPENRESOLVER(0.00)[intel.com:dkim,intel.com:email,intel.com:mid]
X-Rspamd-Queue-Id: 925C62994C4
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

Initialize the stepping name in display runtime info. This avoids having
to use intel_step_name().

For display device info print at boot, debugfs and snapshot this changes
the unknown step name from ** to N/A, which is more user friendly
anyway.

Reviewed-by: Luca Coelho <luciano.coelho@intel.com>
Signed-off-by: Jani Nikula <jani.nikula@intel.com>
---
 .../drm/i915/display/intel_display_device.c   | 28 +++++++++++++++++--
 .../drm/i915/display/intel_display_device.h   |  1 +
 2 files changed, 26 insertions(+), 3 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_display_device.c b/drivers/gpu/drm/i915/display/intel_display_device.c
index a8ef1e6193b8..be55ef8ea617 100644
--- a/drivers/gpu/drm/i915/display/intel_display_device.c
+++ b/drivers/gpu/drm/i915/display/intel_display_device.c
@@ -1654,6 +1654,28 @@ static void display_platforms_or(struct intel_display_platforms *dst,
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
@@ -1731,14 +1753,14 @@ struct intel_display *intel_display_device_probe(struct pci_dev *pdev,
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
 
@@ -1954,7 +1976,7 @@ void intel_display_device_info_print(const struct intel_display_device_info *inf
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

