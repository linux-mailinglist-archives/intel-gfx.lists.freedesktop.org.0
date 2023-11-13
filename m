Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id C6AD57E9E7E
	for <lists+intel-gfx@lfdr.de>; Mon, 13 Nov 2023 15:20:59 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id E864010E379;
	Mon, 13 Nov 2023 14:20:55 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.55.52.151])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 0C24710E379
 for <intel-gfx@lists.freedesktop.org>; Mon, 13 Nov 2023 14:20:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1699885254; x=1731421254;
 h=from:to:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=0E+wTtGezluU7wAItl1rBh4ahKTGRr5gKNMOYQ9y0zI=;
 b=CtOTiqxVqtZRe/ww05UfpHoyPZDd8fwNxQ/9Mj3FhH5h/mepvwnPK0G2
 B/9wha8B6OX6WGArGsviZXF/iefKi9OZn0bdtEEZjL6dPNK1nUfHrYZcJ
 rIt7W9+9sFKj5F7twK+f29fdbSriWiYqYSs7j7DcKESeWCvDX7qlaG2hf
 BASbqc+oSdswQ0XvRc6fcJ6jIaA+UJg3ycdSgPndeLJp+cAcG8f0Dpj3T
 L5AS2b7PB/OlXYCMYp/xLxTwFDmL8zlgtBUpQ/JmPFfN4pR2thrdBE/wP
 D3gWMeG2yO3lFVcSFfHMhRuB9V9vJBOmOsdA8dmzN60TpEEEfq530yzle A==;
X-IronPort-AV: E=McAfee;i="6600,9927,10893"; a="370640588"
X-IronPort-AV: E=Sophos;i="6.03,299,1694761200"; d="scan'208";a="370640588"
Received: from orsmga001.jf.intel.com ([10.7.209.18])
 by fmsmga107.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 13 Nov 2023 06:20:53 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10893"; a="799202266"
X-IronPort-AV: E=Sophos;i="6.03,299,1694761200"; d="scan'208";a="799202266"
Received: from ideak-desk.fi.intel.com ([10.237.72.78])
 by orsmga001-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 13 Nov 2023 06:20:51 -0800
From: Imre Deak <imre.deak@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Mon, 13 Nov 2023 16:20:51 +0200
Message-Id: <20231113142051.258864-1-imre.deak@intel.com>
X-Mailer: git-send-email 2.39.2
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH] drm/i915/dp: Tune down FEC detection timeout
 error message
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

At least a Realtek DP branch device with the

OUI 00-e0-4c dev-ID Dp1.4 HW-rev 1.0 SW-rev 131.1

device identification doesn't report detecting the FEC decoding start
symbol. Tune down the corresponding error to a debug message.

Signed-off-by: Imre Deak <imre.deak@intel.com>
---
 drivers/gpu/drm/i915/display/intel_ddi.c | 4 ++--
 1 file changed, 2 insertions(+), 2 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_ddi.c b/drivers/gpu/drm/i915/display/intel_ddi.c
index 0712a5200ad35..f70af660dfcfa 100644
--- a/drivers/gpu/drm/i915/display/intel_ddi.c
+++ b/drivers/gpu/drm/i915/display/intel_ddi.c
@@ -2257,8 +2257,8 @@ static void wait_for_fec_detected(struct drm_dp_aux *aux, bool enabled)
 		return;
 
 	if (err == -ETIMEDOUT)
-		drm_err(&i915->drm, "Timeout waiting for FEC %s to get detected\n",
-			str_enabled_disabled(enabled));
+		drm_dbg_kms(&i915->drm, "Timeout waiting for FEC %s to get detected\n",
+			    str_enabled_disabled(enabled));
 	else
 		drm_dbg_kms(&i915->drm, "FEC detected status read error: %d\n", status);
 }
-- 
2.39.2

