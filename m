Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 3E4B3C63FF8
	for <lists+intel-gfx@lfdr.de>; Mon, 17 Nov 2025 13:10:03 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 8B7EA10E36E;
	Mon, 17 Nov 2025 12:10:01 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="UwWmvDml";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.16])
 by gabe.freedesktop.org (Postfix) with ESMTPS id F191D10E33B;
 Mon, 17 Nov 2025 12:09:58 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1763381399; x=1794917399;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=4nWa5NOhUFsWW8rXCFQ1udElTHywSOjeCR8BTlj4+WU=;
 b=UwWmvDml1rdciKxfUmOc/ZBHuP5mmQvUvEzcTz2X8rLFqL4XRklqDezV
 tJRrXCYuik0BP8B1dFUb3gG3gALHM06oiFqmccEPI7NYIYn9gGDT+iHy3
 hLy0GZlLOwr2r/YDNu1znBk+5tlKaLCcyaxrmSfKF/OttQasUQtwJCy2y
 JpGGAJpkBxOlfdN8DeYtpVic8jUdUyZ6T1gZiTmWQHRDwIabjS/+gbWtT
 nWkLV/K2wn+au+X25QX8OFrm2++HjXBQgG8cVp65egkS934Pb6I81g/5u
 z4t28kES4q0oFKultqaQFs8R+Bi3zhqJLiRdAtZ0aMq7w5oHny1mhfszF g==;
X-CSE-ConnectionGUID: kNyCb+zRQfyImiH9slyp/g==
X-CSE-MsgGUID: /NmZBTKbQmucLWBUMo12Xg==
X-IronPort-AV: E=McAfee;i="6800,10657,11615"; a="52945791"
X-IronPort-AV: E=Sophos;i="6.19,311,1754982000"; d="scan'208";a="52945791"
Received: from fmviesa003.fm.intel.com ([10.60.135.143])
 by fmvoesa110.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 17 Nov 2025 04:09:59 -0800
X-CSE-ConnectionGUID: IC2MYL+YTnKBctqxEVnhmg==
X-CSE-MsgGUID: ibnUwXacQBaZN46LANKoig==
X-ExtLoop1: 1
Received: from srr4-3-linux-101-amanna.iind.intel.com ([10.223.74.76])
 by fmviesa003.fm.intel.com with ESMTP; 17 Nov 2025 04:09:57 -0800
From: Animesh Manna <animesh.manna@intel.com>
To: intel-gfx@lists.freedesktop.org,
	intel-xe@lists.freedesktop.org
Cc: Animesh Manna <animesh.manna@intel.com>
Subject: [RFC 8/8] drm/i915/cmtg: enable cmtg ctl
Date: Mon, 17 Nov 2025 17:12:16 +0530
Message-Id: <20251117114216.1522615-9-animesh.manna@intel.com>
X-Mailer: git-send-email 2.29.0
In-Reply-To: <20251117114216.1522615-1-animesh.manna@intel.com>
References: <20251117114216.1522615-1-animesh.manna@intel.com>
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

Enable CMTG through control register.

Signed-off-by: Animesh Manna <animesh.manna@intel.com>
---
 drivers/gpu/drm/i915/display/intel_cmtg.c | 17 +++++++++++++++++
 1 file changed, 17 insertions(+)

diff --git a/drivers/gpu/drm/i915/display/intel_cmtg.c b/drivers/gpu/drm/i915/display/intel_cmtg.c
index d5793842815f..fb2ce22d136b 100644
--- a/drivers/gpu/drm/i915/display/intel_cmtg.c
+++ b/drivers/gpu/drm/i915/display/intel_cmtg.c
@@ -257,6 +257,20 @@ static void intel_cpu_cmtg_transcoder_set_m_n(const struct intel_crtc_state *crt
 	intel_de_write(display, TRANS_LINKN1_CMTG(cpu_transcoder), m_n->link_n);
 }
 
+static void intel_cmtg_ctl_enable(const struct intel_crtc_state *crtc_state)
+{
+	struct intel_display *display = to_intel_display(crtc_state);
+	enum transcoder cpu_transcoder = crtc_state->cpu_transcoder;
+	u32 val = 0;
+
+	val = intel_de_read(display, TRANS_CMTG_CTL(cpu_transcoder));
+
+	val |= CMTG_ENABLE;
+
+	intel_de_write(display, TRANS_CMTG_CTL(cpu_transcoder), val);
+	drm_dbg_kms(display->drm, "CMTG enabled\n");
+}
+
 void intel_cmtg_enable(const struct intel_crtc_state *crtc_state)
 {
 	struct intel_display *display = to_intel_display(crtc_state);
@@ -277,4 +291,7 @@ void intel_cmtg_enable(const struct intel_crtc_state *crtc_state)
 
 	/* Program Cmtg Sync to Port Sync, TRANS_CMTG_CTL */
 	intel_de_rmw(display, TRANS_CMTG_CTL(cpu_transcoder), CMTG_SYNC_TO_PORT, CMTG_SYNC_TO_PORT);
+
+	/* Program Enable Cmtg */
+	intel_cmtg_ctl_enable(crtc_state);
 }
-- 
2.29.0

