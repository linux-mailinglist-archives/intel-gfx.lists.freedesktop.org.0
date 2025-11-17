Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 91F60C63FEF
	for <lists+intel-gfx@lfdr.de>; Mon, 17 Nov 2025 13:09:55 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 24CA810E381;
	Mon, 17 Nov 2025 12:09:54 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="If1PZ4TG";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.16])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 2B69110E381;
 Mon, 17 Nov 2025 12:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1763381393; x=1794917393;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=APHW4g8XKRKK8UfEMwzU6rM4nZBjL88zv/vx1X6SLUs=;
 b=If1PZ4TGkO9j7CIkmQiRjeDx6ejPz9Hor27TBwNB+LJHuVUIMLf6JRKq
 EhSAbKOkVdjE9DHmnXI5ib1Zz62+EZ9olvbdHKuQoxwmGa9qxzDKuOXwp
 6n5/NjR9zzxKphJ95oG1dfbNq+huLfCARVPScmrT8t8Tk1TjLtTDPiknB
 6yLyh70rxHegmIdz23IvAwo6bywetsHD7XuhNF8l/CgxjJ+f/Yrzg5Kxu
 UWFhDBBDYDkLKfvhN+M+QJrk443mqEbxeHox7XnNv7buiJwlWqx/KVCf5
 K2sUq5IeuqgIVIqPb8/DQfl1DdfSIvgf0DMIsg9zPfOzFoP4I0AC4P6Cb Q==;
X-CSE-ConnectionGUID: AhQW40pTTbimgbT+tyjKaw==
X-CSE-MsgGUID: luGeRKfwQfiKybx85M8/3w==
X-IronPort-AV: E=McAfee;i="6800,10657,11615"; a="52945787"
X-IronPort-AV: E=Sophos;i="6.19,311,1754982000"; d="scan'208";a="52945787"
Received: from fmviesa003.fm.intel.com ([10.60.135.143])
 by fmvoesa110.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 17 Nov 2025 04:09:53 -0800
X-CSE-ConnectionGUID: jgV6W5FhQOyxu38qUsNwSw==
X-CSE-MsgGUID: fBqAHvuKS0Gx1Tp9GwVZfg==
X-ExtLoop1: 1
Received: from srr4-3-linux-101-amanna.iind.intel.com ([10.223.74.76])
 by fmviesa003.fm.intel.com with ESMTP; 17 Nov 2025 04:09:52 -0800
From: Animesh Manna <animesh.manna@intel.com>
To: intel-gfx@lists.freedesktop.org,
	intel-xe@lists.freedesktop.org
Cc: Animesh Manna <animesh.manna@intel.com>
Subject: [RFC 5/8] drm/i915/cmtg: program set context latency of cmtg
Date: Mon, 17 Nov 2025 17:12:13 +0530
Message-Id: <20251117114216.1522615-6-animesh.manna@intel.com>
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

Program context latency for delayed vblank timings to create window2.

Signed-off-by: Animesh Manna <animesh.manna@intel.com>
---
 drivers/gpu/drm/i915/display/intel_cmtg.c      | 4 ++++
 drivers/gpu/drm/i915/display/intel_cmtg_regs.h | 2 ++
 2 files changed, 6 insertions(+)

diff --git a/drivers/gpu/drm/i915/display/intel_cmtg.c b/drivers/gpu/drm/i915/display/intel_cmtg.c
index 3dfb691913cb..6086ba4d764f 100644
--- a/drivers/gpu/drm/i915/display/intel_cmtg.c
+++ b/drivers/gpu/drm/i915/display/intel_cmtg.c
@@ -249,6 +249,7 @@ static void intel_cmtg_set_timings(const struct intel_crtc_state *crtc_state)
 
 void intel_cmtg_enable(const struct intel_crtc_state *crtc_state)
 {
+	struct intel_display *display = to_intel_display(crtc_state);
 	enum transcoder cpu_transcoder = crtc_state->cpu_transcoder;
 
 	if (cpu_transcoder != TRANSCODER_A && cpu_transcoder != TRANSCODER_B)
@@ -257,4 +258,7 @@ void intel_cmtg_enable(const struct intel_crtc_state *crtc_state)
 	/* Program CMTG Transcoder Timings */
 	intel_cmtg_set_timings(crtc_state);
 
+	/* Program context latency */
+	intel_de_write(display, TRANS_SET_CTX_LATENCY_CMTG(cpu_transcoder),
+		       intel_de_read(display, TRANS_SET_CONTEXT_LATENCY(display, cpu_transcoder)));
 }
diff --git a/drivers/gpu/drm/i915/display/intel_cmtg_regs.h b/drivers/gpu/drm/i915/display/intel_cmtg_regs.h
index 37dee7165852..406b5eb385a5 100644
--- a/drivers/gpu/drm/i915/display/intel_cmtg_regs.h
+++ b/drivers/gpu/drm/i915/display/intel_cmtg_regs.h
@@ -33,6 +33,8 @@ enum cmtg {
 #define TRANS_VBLANK_CMTG(id)		_MMIO(0x6F010 + (id) * 0x100)
 #define TRANS_VSYNC_CMTG(id)		_MMIO(0x6F014 + (id) * 0x100)
 
+#define TRANS_SET_CTX_LATENCY_CMTG(id)	_MMIO(0x6F07C + (id) * 0x100)
+
 #define TRANS_VRR_CTL_CMTG(id)		_MMIO(0x6F420 + (id) * 0x100)
 #define TRANS_VRR_VMAX_CMTG(id)		_MMIO(0x6F424 + (id) * 0x100)
 #define TRANS_VRR_VMIN_CMTG(id)		_MMIO(0x6F434 + (id) * 0x100)
-- 
2.29.0

