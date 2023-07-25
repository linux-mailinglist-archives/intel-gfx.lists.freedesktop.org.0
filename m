Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 3F7F07603AC
	for <lists+intel-gfx@lfdr.de>; Tue, 25 Jul 2023 02:13:45 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 438B710E10C;
	Tue, 25 Jul 2023 00:13:43 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga11.intel.com (mga11.intel.com [192.55.52.93])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 44CED10E010
 for <intel-gfx@lists.freedesktop.org>; Tue, 25 Jul 2023 00:13:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1690244007; x=1721780007;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=pdGJ8pv8PAZ1YmW6oUJLV6sG+6MxJH/tydOgVwdcPF4=;
 b=Kkxa22t2Wzr2A0/ZfDNlS5lKUOpA7twsxNs2u3ey9sLU2r/o4GmPYFli
 9cbD3yCMopPWN+JvfOPOY4yObR1s+eP4rhw8BP7eobbFYzKDHeniiXpke
 PygUbewcX9C9ibgqJ/fRaqb/ino4KeBGlgIV1L7sPskCO8cwDFd6a40H1
 bVoT2fCBXru5FiQUV50sIpraujGx+3BqnxPYFq7DqkeNpngihBTNmzjc1
 uwi9kZPAVwnCXz7ZwdrQMCD8ocm/8j/nkLU+5dt61+LTLiNNdCuXqBaBZ
 oQdkoZVsogRgPDiXXd5h7ClPMarGxIWnAxxq00emvamAO7VBwYAEX8YPd A==;
X-IronPort-AV: E=McAfee;i="6600,9927,10781"; a="365042910"
X-IronPort-AV: E=Sophos;i="6.01,229,1684825200"; d="scan'208";a="365042910"
Received: from fmsmga008.fm.intel.com ([10.253.24.58])
 by fmsmga102.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 24 Jul 2023 17:13:26 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10781"; a="791157001"
X-IronPort-AV: E=Sophos;i="6.01,229,1684825200"; d="scan'208";a="791157001"
Received: from mdroper-desk1.fm.intel.com ([10.1.27.147])
 by fmsmga008-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 24 Jul 2023 17:13:26 -0700
From: Matt Roper <matthew.d.roper@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Mon, 24 Jul 2023 17:13:15 -0700
Message-ID: <20230725001312.1907319-13-matthew.d.roper@intel.com>
X-Mailer: git-send-email 2.41.0
In-Reply-To: <20230725001312.1907319-11-matthew.d.roper@intel.com>
References: <20230725001312.1907319-11-matthew.d.roper@intel.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH v2 2/9] drm/i915/xelpmp: Don't assume
 workarounds extend to future platforms
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
Cc: matthew.d.roper@intel.com
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

The currently implemented Xe_LPM+ workarounds are specific to media
version 13.00.  When new IP versions show up in the future, they'll need
their own workaround lists.

Signed-off-by: Matt Roper <matthew.d.roper@intel.com>
---
 drivers/gpu/drm/i915/gt/intel_workarounds.c | 4 ++--
 1 file changed, 2 insertions(+), 2 deletions(-)

diff --git a/drivers/gpu/drm/i915/gt/intel_workarounds.c b/drivers/gpu/drm/i915/gt/intel_workarounds.c
index 589d009032fc..d8a1eaa44e69 100644
--- a/drivers/gpu/drm/i915/gt/intel_workarounds.c
+++ b/drivers/gpu/drm/i915/gt/intel_workarounds.c
@@ -1817,10 +1817,10 @@ gt_init_workarounds(struct intel_gt *gt, struct i915_wa_list *wal)
 	gt_tuning_settings(gt, wal);
 
 	if (gt->type == GT_MEDIA) {
-		if (MEDIA_VER(i915) >= 13)
+		if (MEDIA_VER_FULL(i915) == IP_VER(13, 0))
 			xelpmp_gt_workarounds_init(gt, wal);
 		else
-			MISSING_CASE(MEDIA_VER(i915));
+			MISSING_CASE(MEDIA_VER_FULL(i915));
 
 		return;
 	}
-- 
2.41.0

