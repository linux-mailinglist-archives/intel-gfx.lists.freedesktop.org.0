Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id BA6DC77824D
	for <lists+intel-gfx@lfdr.de>; Thu, 10 Aug 2023 22:47:03 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 0A26310E601;
	Thu, 10 Aug 2023 20:47:02 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.55.52.151])
 by gabe.freedesktop.org (Postfix) with ESMTPS id C9C6410E606
 for <intel-gfx@lists.freedesktop.org>; Thu, 10 Aug 2023 20:46:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1691700419; x=1723236419;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=C6G4XZW1FywbE0XTevZ1rTazgHejr7a3yImwF+23hNE=;
 b=TQY/n2r3ph3tXjKXLpnwGvD0Y2mcikX7wd+Grmg3MRx9u48dDnZvm9/E
 UAz4U+ET10ChL+dd3xqvc8odC35GPeg81uY4DBKCyxLpYC8SYniBq1ISK
 wXCB1XRlumGr8GP1hZEXD2diNNL9OPX0KQU2p3xpWTsm3PwLEGlVSI8j9
 D+fhrvL5i69v/ho5lm0p/1gono+a30QWGHoSLkfLB0eTtzv1yoUXnfZev
 X7dqut2TPSATmXHAm7FCZN13IXD3lO6kwggBDcxEuDm0+0V7FLSq0JvAs
 /UkzgX0esZcnV0kE1NW9AMXoj/LpLBzl6OUG5lDKxSjDuHZE4EWNRQc1f w==;
X-IronPort-AV: E=McAfee;i="6600,9927,10798"; a="351840162"
X-IronPort-AV: E=Sophos;i="6.01,163,1684825200"; d="scan'208";a="351840162"
Received: from orsmga003.jf.intel.com ([10.7.209.27])
 by fmsmga107.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 10 Aug 2023 13:46:59 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10798"; a="682251937"
X-IronPort-AV: E=Sophos;i="6.01,163,1684825200"; d="scan'208";a="682251937"
Received: from dut-internal-9dd7.jf.intel.com ([10.165.21.194])
 by orsmga003-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 10 Aug 2023 13:46:57 -0700
From: Jonathan Cavitt <jonathan.cavitt@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Thu, 10 Aug 2023 13:36:20 -0700
Message-Id: <20230810203620.388827-2-jonathan.cavitt@intel.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20230810203620.388827-1-jonathan.cavitt@intel.com>
References: <20230810203620.388827-1-jonathan.cavitt@intel.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH 1/1] drm/i915/selftests: Align
 igt_spinner_create_request with hangcheck
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
Cc: andi.shyti@intel.com, michal.winiarski@intel.com, matthew.d.roper@intel.com,
 jonathan.cavitt@intel.com, saurabhg.gupta@intel.com,
 chris.p.wilson@linux.intel.com, nirmoy.das@intel.com
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

Align igt_spinner_create_request with the hang_create_request
implementation in selftest_hangcheck.c.

Signed-off-by: Jonathan Cavitt <jonathan.cavitt@intel.com>
---
 drivers/gpu/drm/i915/selftests/igt_spinner.c | 3 +++
 1 file changed, 3 insertions(+)

diff --git a/drivers/gpu/drm/i915/selftests/igt_spinner.c b/drivers/gpu/drm/i915/selftests/igt_spinner.c
index 0f064930ef11..8c3e1f20e5a1 100644
--- a/drivers/gpu/drm/i915/selftests/igt_spinner.c
+++ b/drivers/gpu/drm/i915/selftests/igt_spinner.c
@@ -179,6 +179,9 @@ igt_spinner_create_request(struct igt_spinner *spin,
 
 	*batch++ = arbitration_command;
 
+	memset32(batch, MI_NOOP, 128);
+	batch += 128;
+
 	if (GRAPHICS_VER(rq->i915) >= 8)
 		*batch++ = MI_BATCH_BUFFER_START | BIT(8) | 1;
 	else if (IS_HASWELL(rq->i915))
-- 
2.25.1

