Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id A6BE67866A7
	for <lists+intel-gfx@lfdr.de>; Thu, 24 Aug 2023 06:20:56 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 2AAC810E4DD;
	Thu, 24 Aug 2023 04:20:55 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.55.52.93])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 966DA10E4B4
 for <intel-gfx@lists.freedesktop.org>; Thu, 24 Aug 2023 04:20:49 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1692850849; x=1724386849;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=SMf0Fihr+Ki3VUCsXmwIUsnuETDGKuHb41i1w+UJ7v8=;
 b=eorBh2cdoxH90aMH4D+u1zSu2NFbX1qQo2TT7IyBucCAlmBUNxs6fke2
 SCrcJ3YXi9nk3hEPtY8nfGUDH1L1jKYjnd+Pa5eC/rdwEZnIjadS2lvKb
 jkt+V0uVyqyGjepsYJIlvtenU837/aOfrYSDSH9XF60Nsb5cr97zfbfdb
 WIM/dCX8JRbEgVESNi8wNk2CCeOW+uKYU3u5qn+9Vzw8B6tp3HDJ/wci4
 5SV/rKLZckzfovZ6W3YEGS8zWADtHgYJXPT6oydKNPIErja6C3tJ8H78h
 dxMsppiu61UzRjVlmKzcWPZKrz1jAkm9iAfhjJVzKo7QQfi9Om975jTNI w==;
X-IronPort-AV: E=McAfee;i="6600,9927,10811"; a="371750979"
X-IronPort-AV: E=Sophos;i="6.01,195,1684825200"; d="scan'208";a="371750979"
Received: from orsmga007.jf.intel.com ([10.7.209.58])
 by fmsmga102.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 23 Aug 2023 21:20:49 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10811"; a="730441477"
X-IronPort-AV: E=Sophos;i="6.01,195,1684825200"; d="scan'208";a="730441477"
Received: from srr4-3-linux-101-amanna.iind.intel.com ([10.223.74.76])
 by orsmga007.jf.intel.com with ESMTP; 23 Aug 2023 21:20:47 -0700
From: Animesh Manna <animesh.manna@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Thu, 24 Aug 2023 09:39:51 +0530
Message-Id: <20230824040952.186407-6-animesh.manna@intel.com>
X-Mailer: git-send-email 2.29.0
In-Reply-To: <20230824040952.186407-1-animesh.manna@intel.com>
References: <20230824040952.186407-1-animesh.manna@intel.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH v4 5/6] drm/i915/panelreplay: Enable panel
 replay dpcd initialization for DP
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

Due to similarity panel replay dpcd initialization got added in psr
function which is specific for edp panel. This patch enables panel
replay initialization for dp connector.

Signed-off-by: Animesh Manna <animesh.manna@intel.com>
---
 drivers/gpu/drm/i915/display/intel_psr.c | 3 +++
 1 file changed, 3 insertions(+)

diff --git a/drivers/gpu/drm/i915/display/intel_psr.c b/drivers/gpu/drm/i915/display/intel_psr.c
index 8dd61c62492d..c92acc7be4f1 100644
--- a/drivers/gpu/drm/i915/display/intel_psr.c
+++ b/drivers/gpu/drm/i915/display/intel_psr.c
@@ -2732,6 +2732,9 @@ void intel_psr_init(struct intel_dp *intel_dp)
 	if (!(HAS_PSR(dev_priv) || HAS_PANEL_REPLAY(dev_priv)))
 		return;
 
+	if (!intel_dp_is_edp(intel_dp))
+		intel_psr_init_dpcd(intel_dp);
+
 	/*
 	 * HSW spec explicitly says PSR is tied to port A.
 	 * BDW+ platforms have a instance of PSR registers per transcoder but
-- 
2.29.0

