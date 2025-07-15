Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 5AD9DB05119
	for <lists+intel-gfx@lfdr.de>; Tue, 15 Jul 2025 07:40:48 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 16F6F10E1A4;
	Tue, 15 Jul 2025 05:40:45 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="Bi30m43w";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.17])
 by gabe.freedesktop.org (Postfix) with ESMTPS id B352410E158;
 Tue, 15 Jul 2025 05:40:43 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1752558044; x=1784094044;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=PzIqd7wcHLEwzvzikpm6aRUOveP+5Ix5FDrPvxyf0KI=;
 b=Bi30m43wNdK1PIxQslLMaMS2J82a2jLu2LUV9yMEjns2nCuyYPVHb2i5
 87UxRltNAuG8dzHiYpoHWRUsotjI24H9nkas5f0h/I3sPBlTw3ZDK/ewJ
 wi78nwpXiI/SjHk7SzPByMmzcjCdpOCp0Bra+l/kKDY9prTb3DAVej95N
 GudotNGuGHy+GvkWuQFY7qhWJ8avEtAATIKCH4+O/alkQATfsbE6vbXn+
 vN+DLdrL0eUUuSuIqeSAzKLEeP9Bd9q85Wmo4JKoKkRyrJcTKswSojkph
 2AnruTNvgZeg1U61fOcXn7kERTdYVFzyuGaTrkevJXUb+/sfgembCPV5M g==;
X-CSE-ConnectionGUID: g2fBjjOGRA6zPE8yR88roQ==
X-CSE-MsgGUID: mxjX3X9RTBGzHC5zNP4XzA==
X-IronPort-AV: E=McAfee;i="6800,10657,11491"; a="54701838"
X-IronPort-AV: E=Sophos;i="6.16,312,1744095600"; d="scan'208";a="54701838"
Received: from orviesa007.jf.intel.com ([10.64.159.147])
 by fmvoesa111.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 14 Jul 2025 22:40:40 -0700
X-CSE-ConnectionGUID: IL1nIyAMSXeTfNaKdHfpvw==
X-CSE-MsgGUID: IcNjkBGuTz28oRKrwVLCCQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.16,312,1744095600"; d="scan'208";a="157232235"
Received: from ettammin-mobl2.ger.corp.intel.com (HELO jhogande-mobl1..)
 ([10.245.244.144])
 by orviesa007-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 14 Jul 2025 22:40:39 -0700
From: =?UTF-8?q?Jouni=20H=C3=B6gander?= <jouni.hogander@intel.com>
To: intel-gfx@lists.freedesktop.org,
	intel-xe@lists.freedesktop.org
Cc: =?UTF-8?q?Jouni=20H=C3=B6gander?= <jouni.hogander@intel.com>
Subject: [PATCH v5 2/7] drm/i915/psr: Add TRANS_PUSH register bit definition
 for PSR
Date: Tue, 15 Jul 2025 08:40:19 +0300
Message-ID: <20250715054024.3856223-3-jouni.hogander@intel.com>
X-Mailer: git-send-email 2.43.0
In-Reply-To: <20250715054024.3856223-1-jouni.hogander@intel.com>
References: <20250715054024.3856223-1-jouni.hogander@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
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

Add TRANS_PUSH register bit LNL_TRANS_PUSH_PSR_PR_EN definition for PSR
usage.

Signed-off-by: Jouni Högander <jouni.hogander@intel.com>
---
 drivers/gpu/drm/i915/display/intel_vrr_regs.h | 1 +
 1 file changed, 1 insertion(+)

diff --git a/drivers/gpu/drm/i915/display/intel_vrr_regs.h b/drivers/gpu/drm/i915/display/intel_vrr_regs.h
index ba9b9215dc11..a67b2eb125ce 100644
--- a/drivers/gpu/drm/i915/display/intel_vrr_regs.h
+++ b/drivers/gpu/drm/i915/display/intel_vrr_regs.h
@@ -97,6 +97,7 @@
 #define TRANS_PUSH(display, trans)		_MMIO_TRANS2((display), (trans), _TRANS_PUSH_A)
 #define   TRANS_PUSH_EN				REG_BIT(31)
 #define   TRANS_PUSH_SEND			REG_BIT(30)
+#define   LNL_TRANS_PUSH_PSR_PR_EN		REG_BIT(16)
 
 #define _TRANS_VRR_VSYNC_A			0x60078
 #define TRANS_VRR_VSYNC(display, trans)		_MMIO_TRANS2((display), (trans), _TRANS_VRR_VSYNC_A)
-- 
2.43.0

