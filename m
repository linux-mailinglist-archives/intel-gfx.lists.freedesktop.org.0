Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id AF7DEC63FF5
	for <lists+intel-gfx@lfdr.de>; Mon, 17 Nov 2025 13:09:59 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 2B2AC10E3AA;
	Mon, 17 Nov 2025 12:09:58 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="Ahwi10Eb";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.16])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 1064410E386;
 Mon, 17 Nov 2025 12:09:55 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1763381395; x=1794917395;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=scE7ixUwYsE+FuHBJjEKFea7/AyvGPFDqZqb2/I58eM=;
 b=Ahwi10EbAra0KrVau/y54P5KVSDkQToG8Ouszik6Hw35b+LWue5k1wGt
 mIlzWDEYuh+jgIc5nqjorx4lOe4hUCyx5zgKkbe+HWvrWCyvA4cujmDBb
 sU0nsfxWHA9m+83KZTU8nsVXTOULoT/qvjOMEH4CgAJvWS6rOHXPw0Gft
 un2BL7iGoDLdYPRh4Y5RbDvad2d+Emd0/JYUBDHJx+/bfyw1hNwuq9jL9
 rDUfWzSppVzR8NMQl8nuMzgyJsZ9War0miG1jHOo8l5Bwcix+afQ+lbDv
 CKO949CEed9xcPnyR4l0Zy6yeoYroHEQkwZLUoSFK6WB9MvIxNakGatRW Q==;
X-CSE-ConnectionGUID: EfoT8CoqQ0yM4vAhxneR2A==
X-CSE-MsgGUID: 8E7Z1cFXS4WmBS/b9/M6mA==
X-IronPort-AV: E=McAfee;i="6800,10657,11615"; a="52945789"
X-IronPort-AV: E=Sophos;i="6.19,311,1754982000"; d="scan'208";a="52945789"
Received: from fmviesa003.fm.intel.com ([10.60.135.143])
 by fmvoesa110.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 17 Nov 2025 04:09:55 -0800
X-CSE-ConnectionGUID: a+b0ayX4Sb+HujY23uavuQ==
X-CSE-MsgGUID: eX5XLBHXQEuVoUqEEWkXlw==
X-ExtLoop1: 1
Received: from srr4-3-linux-101-amanna.iind.intel.com ([10.223.74.76])
 by fmviesa003.fm.intel.com with ESMTP; 17 Nov 2025 04:09:54 -0800
From: Animesh Manna <animesh.manna@intel.com>
To: intel-gfx@lists.freedesktop.org,
	intel-xe@lists.freedesktop.org
Cc: Animesh Manna <animesh.manna@intel.com>
Subject: [RFC 6/8] drm/i915/cmtg: set transcoder mn for cmtg
Date: Mon, 17 Nov 2025 17:12:14 +0530
Message-Id: <20251117114216.1522615-7-animesh.manna@intel.com>
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

Program CMTG link M/N.

Signed-off-by: Animesh Manna <animesh.manna@intel.com>
---
 drivers/gpu/drm/i915/display/intel_cmtg.c      | 13 +++++++++++++
 drivers/gpu/drm/i915/display/intel_cmtg_regs.h |  3 +++
 2 files changed, 16 insertions(+)

diff --git a/drivers/gpu/drm/i915/display/intel_cmtg.c b/drivers/gpu/drm/i915/display/intel_cmtg.c
index 6086ba4d764f..0a804554f16d 100644
--- a/drivers/gpu/drm/i915/display/intel_cmtg.c
+++ b/drivers/gpu/drm/i915/display/intel_cmtg.c
@@ -247,6 +247,16 @@ static void intel_cmtg_set_timings(const struct intel_crtc_state *crtc_state)
 	}
 }
 
+static void intel_cpu_cmtg_transcoder_set_m_n(const struct intel_crtc_state *crtc_state)
+{
+	struct intel_display *display = to_intel_display(crtc_state);
+	enum transcoder cpu_transcoder = crtc_state->cpu_transcoder;
+	const struct intel_link_m_n *m_n = &crtc_state->dp_m_n;
+
+	intel_de_write(display, TRANS_LINKM1_CMTG(cpu_transcoder), m_n->link_m);
+	intel_de_write(display, TRANS_LINKN1_CMTG(cpu_transcoder), m_n->link_n);
+}
+
 void intel_cmtg_enable(const struct intel_crtc_state *crtc_state)
 {
 	struct intel_display *display = to_intel_display(crtc_state);
@@ -261,4 +271,7 @@ void intel_cmtg_enable(const struct intel_crtc_state *crtc_state)
 	/* Program context latency */
 	intel_de_write(display, TRANS_SET_CTX_LATENCY_CMTG(cpu_transcoder),
 		       intel_de_read(display, TRANS_SET_CONTEXT_LATENCY(display, cpu_transcoder)));
+
+	/* Program CMTG MN */
+	intel_cpu_cmtg_transcoder_set_m_n(crtc_state);
 }
diff --git a/drivers/gpu/drm/i915/display/intel_cmtg_regs.h b/drivers/gpu/drm/i915/display/intel_cmtg_regs.h
index 406b5eb385a5..1bbdb66ee587 100644
--- a/drivers/gpu/drm/i915/display/intel_cmtg_regs.h
+++ b/drivers/gpu/drm/i915/display/intel_cmtg_regs.h
@@ -33,6 +33,9 @@ enum cmtg {
 #define TRANS_VBLANK_CMTG(id)		_MMIO(0x6F010 + (id) * 0x100)
 #define TRANS_VSYNC_CMTG(id)		_MMIO(0x6F014 + (id) * 0x100)
 
+#define TRANS_LINKM1_CMTG(id)		_MMIO(0x6F040 + (id) * 0x100)
+#define TRANS_LINKN1_CMTG(id)		_MMIO(0x6F044 + (id) * 0x100)
+
 #define TRANS_SET_CTX_LATENCY_CMTG(id)	_MMIO(0x6F07C + (id) * 0x100)
 
 #define TRANS_VRR_CTL_CMTG(id)		_MMIO(0x6F420 + (id) * 0x100)
-- 
2.29.0

