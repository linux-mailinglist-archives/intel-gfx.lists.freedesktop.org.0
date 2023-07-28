Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id F2C46766DAE
	for <lists+intel-gfx@lfdr.de>; Fri, 28 Jul 2023 14:56:36 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 777C410E214;
	Fri, 28 Jul 2023 12:56:35 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [134.134.136.20])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 59EB310E214
 for <intel-gfx@lists.freedesktop.org>; Fri, 28 Jul 2023 12:56:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1690548993; x=1722084993;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=Jkyl2xTz4MosmdTyl6dc3XzBskc4+B3dF+ZFTfCZWUA=;
 b=R71HUqDLavuzuF5n9U4wGdnwLPUF9ANmNWsGEMmo6eWj/eJ9wd95z9kg
 5G8RuR//qR2pi2tZ9u0DEpB6sKlKW3o/wyGObJ/jBjrcwzmYLFlcODVUh
 4k1UEH+eiSa03LGrJFeAcUA2Vntl+oV9Innnngd+NlEiLwPbTmcbccRLn
 VANmfQ6AdJ0qwxAACzgnXVIKiaaabMUOyRE8K1fsQr3botHEO98AeOfYc
 rUk2U8Hd4c7MQ2dw2MDK4VpFlaAwSakgVpoAnbqsVVt2ltblCfQlZMpCi
 UghnEPuaH21Dx4LGYwTezg9dG8hYVjinlQ+rQhN/B7FZKT4JK6a8iMYbt Q==;
X-IronPort-AV: E=McAfee;i="6600,9927,10784"; a="358612310"
X-IronPort-AV: E=Sophos;i="6.01,237,1684825200"; d="scan'208";a="358612310"
Received: from orsmga002.jf.intel.com ([10.7.209.21])
 by orsmga101.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 28 Jul 2023 05:56:33 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10784"; a="727473164"
X-IronPort-AV: E=Sophos;i="6.01,237,1684825200"; d="scan'208";a="727473164"
Received: from srr4-3-linux-101-amanna.iind.intel.com ([10.223.74.76])
 by orsmga002.jf.intel.com with ESMTP; 28 Jul 2023 05:56:31 -0700
From: Animesh Manna <animesh.manna@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Fri, 28 Jul 2023 18:16:08 +0530
Message-Id: <20230728124609.2911830-6-animesh.manna@intel.com>
X-Mailer: git-send-email 2.29.0
In-Reply-To: <20230728124609.2911830-1-animesh.manna@intel.com>
References: <20230728124609.2911830-1-animesh.manna@intel.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH v3 5/6] drm/i915/panelreplay: Enable panel
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
index 7508e6c967e2..f6b00abe92d4 100644
--- a/drivers/gpu/drm/i915/display/intel_psr.c
+++ b/drivers/gpu/drm/i915/display/intel_psr.c
@@ -2735,6 +2735,9 @@ void intel_psr_init(struct intel_dp *intel_dp)
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

