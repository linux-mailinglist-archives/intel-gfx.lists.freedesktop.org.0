Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 8448E74D2FF
	for <lists+intel-gfx@lfdr.de>; Mon, 10 Jul 2023 12:11:01 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id F35C210E259;
	Mon, 10 Jul 2023 10:10:59 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga12.intel.com (mga12.intel.com [192.55.52.136])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 53A8010E259
 for <intel-gfx@lists.freedesktop.org>; Mon, 10 Jul 2023 10:10:57 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1688983857; x=1720519857;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=ShMGlQ9gL6hFPlI2yfegd5QnIkvFLDkYx2K2jvuEfx0=;
 b=avx2cMNQpNlnOIjDnvM/KtvH3f7D6Fq+k+TmqpkO1nJ2GeJMMAwvyPke
 TuzKBSQVqzm7BXTZF16gUrj0l05MBoRIP/SkRyLRZ1RmYWCX+bzbsiCXW
 gkIyYSg3ICC7MWRYszfXTWFWeiMAaUezF4GTqmiArFU6E/e/2dXptzEKw
 1uKj9D+bRlk0S1iWQ8yEVR3eTntMDy7tfbFv5ctjjzJUGPMO9DIOhO2e6
 ovuoBwL2fGehCVmjwOdfDJBwMHpPVIZo528rvVjlY4thFY0apE0COfqZb
 lpgOXvs7S+73s8VeEhJuSM4xOz2PJNVG/vpeRvyIg/RDgdbLXil4iVcrV A==;
X-IronPort-AV: E=McAfee;i="6600,9927,10766"; a="343897107"
X-IronPort-AV: E=Sophos;i="6.01,194,1684825200"; d="scan'208";a="343897107"
Received: from fmsmga007.fm.intel.com ([10.253.24.52])
 by fmsmga106.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 10 Jul 2023 03:10:56 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10766"; a="723955060"
X-IronPort-AV: E=Sophos;i="6.01,194,1684825200"; d="scan'208";a="723955060"
Received: from kandpal-x299-ud4-pro.iind.intel.com ([10.190.239.32])
 by fmsmga007.fm.intel.com with ESMTP; 10 Jul 2023 03:10:54 -0700
From: Suraj Kandpal <suraj.kandpal@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Mon, 10 Jul 2023 15:39:07 +0530
Message-Id: <20230710100911.2736389-2-suraj.kandpal@intel.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20230710100911.2736389-1-suraj.kandpal@intel.com>
References: <20230710100911.2736389-1-suraj.kandpal@intel.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH 1/5] drm/i915/dsc: Add PPS enum
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

Add PPS enum so that we can later on use it to distinguish which
PPS is being read or written onto.

Signed-off-by: Suraj Kandpal <suraj.kandpal@intel.com>
---
 drivers/gpu/drm/i915/display/intel_vdsc.c | 17 +++++++++++++++++
 1 file changed, 17 insertions(+)

diff --git a/drivers/gpu/drm/i915/display/intel_vdsc.c b/drivers/gpu/drm/i915/display/intel_vdsc.c
index bd9116d2cd76..1a8272324c36 100644
--- a/drivers/gpu/drm/i915/display/intel_vdsc.c
+++ b/drivers/gpu/drm/i915/display/intel_vdsc.c
@@ -19,6 +19,23 @@
 #include "intel_vdsc.h"
 #include "intel_vdsc_regs.h"
 
+enum intel_dsc_pps {
+	PPS_0 = 0,
+	PPS_1,
+	PPS_2,
+	PPS_3,
+	PPS_4,
+	PPS_5,
+	PPS_6,
+	PPS_7,
+	PPS_8,
+	PPS_9,
+	PPS_10,
+	PPS_16,
+	PPS_17,
+	PPS_18,
+};
+
 bool intel_dsc_source_support(const struct intel_crtc_state *crtc_state)
 {
 	const struct intel_crtc *crtc = to_intel_crtc(crtc_state->uapi.crtc);
-- 
2.25.1

