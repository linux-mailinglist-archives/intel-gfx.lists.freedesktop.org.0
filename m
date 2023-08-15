Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 68D9C77D08F
	for <lists+intel-gfx@lfdr.de>; Tue, 15 Aug 2023 19:06:44 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 0967C10E088;
	Tue, 15 Aug 2023 17:06:40 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.55.52.115])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 0C5B310E088
 for <intel-gfx@lists.freedesktop.org>; Tue, 15 Aug 2023 17:06:37 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1692119197; x=1723655197;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=C6G4XZW1FywbE0XTevZ1rTazgHejr7a3yImwF+23hNE=;
 b=L54c5NyknvDYIIvzAVSGalKUUFcm7HUE+0s8kfB2tJpTY5TmA1DJd3tJ
 Nf2Px/CHnmQdBVQI/hkNxw/wGiOXuW0P54upqjPKe60H15VzuY/L/RJRj
 4isO1bRmt3iAIvibOkO8ppPjLgmhA+MMTO7rmCltOCNBIJOvWGFXHZOq+
 rsbpK1d5f7pXRYAcv4p0uwJTATcYqdi+t3XEgzcRnhQfJylJDksMvghRC
 KoeZb0inmtH1xRsIjm4R/Xh0ShAJJTrtG4SDx5FwojNd6P9YpYWc8hEDW
 WPe4UOwEME5m8zKR5EyqvC5VwTdSdO2jVZah4/l6OSZMPTP96NIa4BRVy A==;
X-IronPort-AV: E=McAfee;i="6600,9927,10803"; a="372327569"
X-IronPort-AV: E=Sophos;i="6.01,175,1684825200"; d="scan'208";a="372327569"
Received: from fmsmga005.fm.intel.com ([10.253.24.32])
 by fmsmga103.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 15 Aug 2023 10:04:24 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10803"; a="1064531931"
X-IronPort-AV: E=Sophos;i="6.01,175,1684825200"; d="scan'208";a="1064531931"
Received: from dut-internal-9dd7.jf.intel.com ([10.165.21.194])
 by fmsmga005-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 15 Aug 2023 10:04:24 -0700
From: Jonathan Cavitt <jonathan.cavitt@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Tue, 15 Aug 2023 09:53:44 -0700
Message-Id: <20230815165345.964068-2-jonathan.cavitt@intel.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20230815165345.964068-1-jonathan.cavitt@intel.com>
References: <20230815165345.964068-1-jonathan.cavitt@intel.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH 1/2] drm/i915/selftests: Align
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

