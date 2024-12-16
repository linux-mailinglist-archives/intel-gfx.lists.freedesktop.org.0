Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 649BB9F30CD
	for <lists+intel-gfx@lfdr.de>; Mon, 16 Dec 2024 13:47:15 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 04CDA10E603;
	Mon, 16 Dec 2024 12:47:14 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="Ff2KQgZ2";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.17])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 0627910E603
 for <intel-gfx@lists.freedesktop.org>; Mon, 16 Dec 2024 12:47:12 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1734353233; x=1765889233;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=n4VJvva6nvK+J0guzac6ktKSO/o9FFXQOf5kG1WejJU=;
 b=Ff2KQgZ22cDJeylUW6iEoWPUIQZxyH3n9LwMe9984XLlf+LLX9iGOWuF
 AnWrnmVttrSWI64Fn9dyCm3lMavBdaza1ng+BnRzE1/ezobGfVerO3hUZ
 DAO3O2x4fgfy2jBryCpT72ES4R/Oba4xy/qf7bkQ4qycO73RRHvO6r/Kv
 upPvHhWqIS0JmjX7rix3LrqeKuDnA50GCbMLx0LnjuaO2zCrqDPkjyN6t
 VeC7DLTu/jP821HA9aw5TK672xQlzg2gJIIwNvUThedJOH+n0gxQ26oCs
 nWWMLNwdz6C9Sg9GgOOn5rQaLGZCuDxXSZnuQQyxOyP+73uxXswCSjHaO A==;
X-CSE-ConnectionGUID: cmIHlHVYT5G5kZWWOQ/C8w==
X-CSE-MsgGUID: UfwBMx2xSKCd67STc2s3CA==
X-IronPort-AV: E=McAfee;i="6700,10204,11288"; a="34640603"
X-IronPort-AV: E=Sophos;i="6.12,238,1728975600"; d="scan'208";a="34640603"
Received: from orviesa001.jf.intel.com ([10.64.159.141])
 by fmvoesa111.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 16 Dec 2024 04:47:12 -0800
X-CSE-ConnectionGUID: LxyejUDAQ8aN5/Zed0sY/Q==
X-CSE-MsgGUID: yShP7LLYQYy8Mhwlcq06bA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.12,224,1728975600"; d="scan'208";a="134521996"
Received: from rvodapal-desk.iind.intel.com ([10.145.162.163])
 by smtpauth.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 16 Dec 2024 04:47:10 -0800
From: Ravi Kumar Vodapalli <ravi.kumar.vodapalli@intel.com>
To: intel-gfx@lists.freedesktop.org
Cc: balasubramani.vivekanandan@intel.com, matthew.d.roper@intel.com,
 lucas.demarchi@intel.com, gustavo.sousa@intel.com,
 clinton.a.taylor@intel.com, matthew.s.atwood@intel.com,
 dnyaneshwar.bhadane@intel.com, haridhar.kalvala@intel.com,
 shekhar.chauhan@intel.com
Subject: [PATCH] drm/i915/display: program DBUF_CTL tracker state service to
 0x8
Date: Mon, 16 Dec 2024 18:15:07 +0530
Message-Id: <20241216124507.2695739-1-ravi.kumar.vodapalli@intel.com>
X-Mailer: git-send-email 2.25.1
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

Program Tracker state service(DBUF_CTL Register) for TGLLP, SVL,
RYF, DG1, ACM, ACMPLUS, RKLC, RKLGM, ADLS platforms to 0x8 which
is not the default value.

Bspec: 49213
Signed-off-by: Ravi Kumar Vodapalli <ravi.kumar.vodapalli@intel.com>
---
 drivers/gpu/drm/i915/display/intel_display_power.c | 4 +++-
 1 file changed, 3 insertions(+), 1 deletion(-)

diff --git a/drivers/gpu/drm/i915/display/intel_display_power.c b/drivers/gpu/drm/i915/display/intel_display_power.c
index 34465d56def0..d9ba48b68979 100644
--- a/drivers/gpu/drm/i915/display/intel_display_power.c
+++ b/drivers/gpu/drm/i915/display/intel_display_power.c
@@ -1126,7 +1126,9 @@ static void gen12_dbuf_slices_config(struct intel_display *display)
 {
 	enum dbuf_slice slice;
 
-	if (display->platform.alderlake_p)
+	if (display->platform.alderlake_p || display->platform.dg2 ||
+	    display->platform.alderlake_p_raptorlake_p ||
+	    DISPLAY_VER(display) >= 14)
 		return;
 
 	for_each_dbuf_slice(display, slice)
-- 
2.25.1

