Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 349857149C6
	for <lists+intel-gfx@lfdr.de>; Mon, 29 May 2023 15:00:48 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 805D310E0B8;
	Mon, 29 May 2023 13:00:45 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga04.intel.com (mga04.intel.com [192.55.52.120])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 2B18210E0B8
 for <intel-gfx@lists.freedesktop.org>; Mon, 29 May 2023 13:00:43 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1685365244; x=1716901244;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=uqkBSMOeIDva8jwGl0DqLNex6AanadoEId9x8wkmWhU=;
 b=kaSdJlxe9MtWcD3U3dwbZGUNBxtiw0owndSiSi5NvFHFaSpclWA56JCy
 PDmhUbswjxNJFqkacptVc8DqrTqZ9PX39yQOimggNvDI/KtFdivJhZn2O
 RLvCsPh5Lru1BTAlKrxMLX+qaUzCPhl90WZVcCqKhXYcrudvk0MHyu2Mu
 pY7/XlSr8edIeGE469BBAnd0Aatg+bjg6t+wM3wAvgFcX6lBmOFUTXvIf
 FaxCN0goW8oDTdqr2A8uslLm6xvb0g6Ke+PdTiUYtUU7oXfeht/ZMlij9
 WOxR8CloJWo/K5ahBY6h1n734HFH7glqiCwk4Q1hlT9hhqMb+HPfU3csP A==;
X-IronPort-AV: E=McAfee;i="6600,9927,10725"; a="353542549"
X-IronPort-AV: E=Sophos;i="6.00,201,1681196400"; d="scan'208";a="353542549"
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
 by fmsmga104.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 29 May 2023 06:00:43 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10725"; a="850397644"
X-IronPort-AV: E=Sophos;i="6.00,201,1681196400"; d="scan'208";a="850397644"
Received: from ilovin-mobl1.ger.corp.intel.com (HELO
 jhogande-mobl1.ger.corp.intel.com) ([10.251.208.33])
 by fmsmga001-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 29 May 2023 06:00:41 -0700
From: =?UTF-8?q?Jouni=20H=C3=B6gander?= <jouni.hogander@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Mon, 29 May 2023 16:00:28 +0300
Message-Id: <20230529130028.2193945-1-jouni.hogander@intel.com>
X-Mailer: git-send-email 2.34.1
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH] drm/i915: Use 18 fast wake fast wake AUX sync
 len
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

HW default for wake sync pulses is 18. 10 precarge and 8 preamble. There is
no reason to change this especially as it is causing problems with certain
eDP panels.

Signed-off-by: Jouni Högander <jouni.hogander@intel.com>
Fixes: 605f7c731333 ("drm/i915: Fix fast wake AUX sync len")
Closes: https://gitlab.freedesktop.org/drm/intel/-/issues/8475
---
 drivers/gpu/drm/i915/display/intel_dp_aux.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/gpu/drm/i915/display/intel_dp_aux.c b/drivers/gpu/drm/i915/display/intel_dp_aux.c
index 0c27db8ae4f1..197c6e81db14 100644
--- a/drivers/gpu/drm/i915/display/intel_dp_aux.c
+++ b/drivers/gpu/drm/i915/display/intel_dp_aux.c
@@ -129,7 +129,7 @@ static int intel_dp_aux_sync_len(void)
 
 static int intel_dp_aux_fw_sync_len(void)
 {
-	int precharge = 16; /* 10-16 */
+	int precharge = 10; /* 10-16 */
 	int preamble = 8;
 
 	return precharge + preamble;
-- 
2.34.1

