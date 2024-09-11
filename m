Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 5BADD975349
	for <lists+intel-gfx@lfdr.de>; Wed, 11 Sep 2024 15:12:17 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 90ADC10EA13;
	Wed, 11 Sep 2024 13:12:15 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="O7VDQIWw";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.10])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 59CAF10EA11
 for <intel-gfx@lists.freedesktop.org>; Wed, 11 Sep 2024 13:12:12 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1726060332; x=1757596332;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=RDQTlUp3PS/E9B/8eBxTYjPcWP7yUaMR2GLQq/hkCBo=;
 b=O7VDQIWwYFuSI/gQY4nNPi/Q3qEL/Mg3BMF21gWFz0JfxnfvSagt7ERF
 bq5kGMPKuDN/geN/qsIDUbOw84XLzhZsXDv1Goa/0pqsitoG5vr1kne1t
 adfhRPf/GCoxFKI4UwYu3YZex6zRYmoTulNr8GucPEN1RJnes9Bgll8iI
 sn8kTSj+uYp9wX+zQRvhObFW1KsMESFSQGzIg5sRS15s7VNCDwVxAcnrF
 4nzO94oDDHng1e+n2zXTox2ByqdpkdSZEaVeAb0ET0MK30LHNqVIsyG5N
 skF1RdqWFPzuDyPotd7y16XUukuKBPmiRMxgBmEKqopw7ZCsS0ypuzgrT A==;
X-CSE-ConnectionGUID: BfqFxDscTgmGEBWMu/xODA==
X-CSE-MsgGUID: ITRXKucDQi6GrImk7aN1jA==
X-IronPort-AV: E=McAfee;i="6700,10204,11191"; a="36244337"
X-IronPort-AV: E=Sophos;i="6.10,220,1719903600"; d="scan'208";a="36244337"
Received: from fmviesa009.fm.intel.com ([10.60.135.149])
 by fmvoesa104.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 11 Sep 2024 06:12:12 -0700
X-CSE-ConnectionGUID: nkqnD/eqS8atf/jNYyGZJQ==
X-CSE-MsgGUID: 2eWWqhEERhGFcGptPfoMHw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.10,220,1719903600"; d="scan'208";a="67380851"
Received: from srr4-3-linux-103-aknautiy.iind.intel.com ([10.223.34.160])
 by fmviesa009-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 11 Sep 2024 06:12:10 -0700
From: Ankit Nautiyal <ankit.k.nautiyal@intel.com>
To: intel-gfx@lists.freedesktop.org
Cc: suraj.kandpal@intel.com, jani.saarinen@intel.com,
 ville.syrjala@linux.intel.com
Subject: [PATCH 03/19] drm/i915/display_debugfs: Allow force joiner only if
 supported
Date: Wed, 11 Sep 2024 18:43:33 +0530
Message-ID: <20240911131349.933814-4-ankit.k.nautiyal@intel.com>
X-Mailer: git-send-email 2.45.2
In-Reply-To: <20240911131349.933814-1-ankit.k.nautiyal@intel.com>
References: <20240911131349.933814-1-ankit.k.nautiyal@intel.com>
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

Currently joiner is only supported for DP encoder.
Allow force joiner only for DP for supported platforms.

Signed-off-by: Ankit Nautiyal <ankit.k.nautiyal@intel.com>
---
 .../drm/i915/display/intel_display_debugfs.c  | 20 ++++++++++++++++---
 1 file changed, 17 insertions(+), 3 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_display_debugfs.c b/drivers/gpu/drm/i915/display/intel_display_debugfs.c
index d7651f6f80e1..7ceaf01a884a 100644
--- a/drivers/gpu/drm/i915/display/intel_display_debugfs.c
+++ b/drivers/gpu/drm/i915/display/intel_display_debugfs.c
@@ -1520,6 +1520,9 @@ static ssize_t i915_joiner_write(struct file *file,
 	struct seq_file *m = file->private_data;
 	struct intel_connector *connector = m->private;
 	struct intel_display *display = to_intel_display(connector);
+	struct intel_encoder *intel_encoder = intel_attached_encoder(connector);
+	struct intel_dp *intel_dp;
+	int connector_type = connector->base.connector_type;
 	int force_join_pipes = 0;
 	int ret;
 
@@ -1530,16 +1533,27 @@ static ssize_t i915_joiner_write(struct file *file,
 	if (ret < 0)
 		return ret;
 
+	/* Currently joiner is only supported for eDP/DP */
+	if (connector_type != DRM_MODE_CONNECTOR_DisplayPort &&
+	    connector_type != DRM_MODE_CONNECTOR_eDP)
+		return 0;
+
+	intel_dp = enc_to_intel_dp(intel_encoder);
+
+	connector->force_joined_pipes = 0;
+
 	switch (force_join_pipes) {
 	case 0:
-		fallthrough;
+		break;
 	case 2:
-		connector->force_joined_pipes = force_join_pipes;
+		if (intel_dp_has_joiner(intel_dp))
+			connector->force_joined_pipes = force_join_pipes;
+		else
+			drm_dbg(display->drm, "Force joiner not supported for the config\n");
 		break;
 	default:
 		drm_dbg(display->drm, "Ignoring Invalid num of pipes %d for force joining\n",
 			force_join_pipes);
-		connector->force_joined_pipes = 0;
 	}
 
 	*offp += len;
-- 
2.45.2

