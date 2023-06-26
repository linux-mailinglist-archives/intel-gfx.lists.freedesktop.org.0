Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id B6EB073D8ED
	for <lists+intel-gfx@lfdr.de>; Mon, 26 Jun 2023 09:55:34 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 8CC8810E19D;
	Mon, 26 Jun 2023 07:55:32 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga05.intel.com (mga05.intel.com [192.55.52.43])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 615EF10E19D
 for <intel-gfx@lists.freedesktop.org>; Mon, 26 Jun 2023 07:55:31 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1687766131; x=1719302131;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=GeseM36ysdm7otLzchAdTeL8TZ2Rz80SdrEvhPFsc+c=;
 b=UhFhrRp3bIQGgXxSP8QbYSEkbh2xpLID/4boehfsWwwjKD1jp+bolmZO
 Is7LKfP55+QYKgPVi4DmKpciYNkqUsDEkV0vhgO8/tDgWSUxKqTB4wPqF
 qBHMQ4S9bCCcnHxfXJab9F5j5JIQOQnrQhTe2XJDoNaVsG0uQWXIF9/n4
 yzOT7ABJk4ooXfPg9eJC7UANTFBr+okCfI453hVJ/U1g2KhvukDNsPmWt
 K0pbMDzUpYeu7XkB39mTXQeuDWl70dhK6+tX5XavorcfG3prxTyG4U+jh
 ZckllfVCvQYOteAcPEb4ASmhkPEkSrdFnVn/J95G5QaKvvBZL/QSiI5/n g==;
X-IronPort-AV: E=McAfee;i="6600,9927,10752"; a="447585774"
X-IronPort-AV: E=Sophos;i="6.01,159,1684825200"; d="scan'208";a="447585774"
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
 by fmsmga105.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 26 Jun 2023 00:55:30 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10752"; a="860592086"
X-IronPort-AV: E=Sophos;i="6.01,159,1684825200"; d="scan'208";a="860592086"
Received: from dut-2a59.iind.intel.com ([10.190.239.113])
 by fmsmga001.fm.intel.com with ESMTP; 26 Jun 2023 00:55:28 -0700
From: Chaitanya Kumar Borah <chaitanya.kumar.borah@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Mon, 26 Jun 2023 13:22:53 +0530
Message-Id: <20230626075254.1183894-1-chaitanya.kumar.borah@intel.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20230626061043.1162688-1-chaitanya.kumar.borah@intel.com>
References: <20230626061043.1162688-1-chaitanya.kumar.borah@intel.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH] drm/i915/display: Add forward declaration for
 struct seq_file
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

With change [1], visibility of struct seq_file is lost in
intel_display_power.h leading to build errors. Add forward
declaration.

[1] ef104443bffa ("procfs: consolidate arch_report_meminfo declaration")

v2: Use forward declaration instead of headerfile inclusion [Jani]

Signed-off-by: Chaitanya Kumar Borah <chaitanya.kumar.borah@intel.com>
---
 drivers/gpu/drm/i915/display/intel_display_power.h | 1 +
 1 file changed, 1 insertion(+)

diff --git a/drivers/gpu/drm/i915/display/intel_display_power.h b/drivers/gpu/drm/i915/display/intel_display_power.h
index be1a87bde0c9..0ba268e566b0 100644
--- a/drivers/gpu/drm/i915/display/intel_display_power.h
+++ b/drivers/gpu/drm/i915/display/intel_display_power.h
@@ -16,6 +16,7 @@ enum port;
 struct drm_i915_private;
 struct i915_power_well;
 struct intel_encoder;
+struct seq_file;
 
 /*
  * Keep the pipe, transcoder, port (DDI_LANES,DDI_IO,AUX) domain instances
-- 
2.25.1

