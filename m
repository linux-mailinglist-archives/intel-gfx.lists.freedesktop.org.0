Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id EE507714CED
	for <lists+intel-gfx@lfdr.de>; Mon, 29 May 2023 17:24:46 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 573F210E02A;
	Mon, 29 May 2023 15:24:45 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
 by gabe.freedesktop.org (Postfix) with ESMTPS id E211E10E02A
 for <intel-gfx@lists.freedesktop.org>; Mon, 29 May 2023 15:24:42 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1685373882; x=1716909882;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=I6t+eQrh7MuID/W6i+oP8i2FOtxSlxy4vUvSL/4M+Hg=;
 b=leVqG1eY4d89Jsa6MRtxrfCR4h8BCyDeAiC0wqiPIHMJndgrYmGtwRmy
 1wh4tfHH3LHEHk6k4PAMrBYtskwvFCO64LKN6zAWs9LsMZMlLZSmVX+IP
 cjcgwU3V1CXqmBW86QJjwTiHwaf3U23IE40tPcdJ3E0EaqibgGCIco77C
 03SIyHF0F3gDYhmHyrIruQ5Ed8bId9lQGNCJCFPAeiySSY0WhNoma3rgA
 D5alCEPIcR4GF7ClF3+0sw2cTVcyqMFL4aRhvt0GNbOdn22/jjY2xHO2S
 JVr5xLjrFQXkE2a8CBvR0Wc8yoH4d3cxDBcwKOLmrZEiAASXnjqG4opXW g==;
X-IronPort-AV: E=McAfee;i="6600,9927,10725"; a="382982974"
X-IronPort-AV: E=Sophos;i="6.00,201,1681196400"; d="scan'208";a="382982974"
Received: from fmsmga008.fm.intel.com ([10.253.24.58])
 by fmsmga101.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 29 May 2023 08:24:41 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10725"; a="771199337"
X-IronPort-AV: E=Sophos;i="6.00,201,1681196400"; d="scan'208";a="771199337"
Received: from ilovin-mobl1.ger.corp.intel.com (HELO
 jhogande-mobl1.ger.corp.intel.com) ([10.251.208.33])
 by fmsmga008-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 29 May 2023 08:24:40 -0700
From: =?UTF-8?q?Jouni=20H=C3=B6gander?= <jouni.hogander@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Mon, 29 May 2023 18:24:29 +0300
Message-Id: <20230529152429.2294177-1-jouni.hogander@intel.com>
X-Mailer: git-send-email 2.34.1
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH v2] drm/i915: Use 18 fast wake AUX sync len
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

v2: Remove "fast wake" repeat from subject

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

