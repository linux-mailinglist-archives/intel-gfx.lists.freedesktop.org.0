Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id B4B0C7B7D2B
	for <lists+intel-gfx@lfdr.de>; Wed,  4 Oct 2023 12:31:10 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 40FCC10E138;
	Wed,  4 Oct 2023 10:31:09 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.55.52.120])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 42C2E10E0F4
 for <intel-gfx@lists.freedesktop.org>; Wed,  4 Oct 2023 10:31:07 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1696415467; x=1727951467;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=pkNvrslJLVAeYyYLE+3JcnvcWmFUjfwgvxZO8H+elGI=;
 b=UTaLKVQ9IJd1r9Iw8s9e4kfk7f2k1fcq9ZMLLi1bnoUPb4RW2jgvuy35
 be2BqVxQqR/OBhJLgWdXaqxPLLIUaOaaXDc8efDbQJU/q+s2HRIJ1gamS
 XCAeO7cXlzEVvu8U1HrWjHE/QslTq3Z78TWRsxmkpIJVsXA/HxyvuvXBZ
 9XBEK9+rvLdzsigfbmkL6mTaeeNPnEqK9ucciIKBygY5SJ2amcN7IZggx
 AGiClDeXfWsB23Yx7491h5IwEVMepYomiVqB84/VAZ7aPClQbKHP/vsvt
 36A3uJWrUmqMG0WCKMdJE0hggCOcLLCxVCp7/RHlKEQvWIshaiK2bUSkf A==;
X-IronPort-AV: E=McAfee;i="6600,9927,10852"; a="381991377"
X-IronPort-AV: E=Sophos;i="6.03,199,1694761200"; d="scan'208";a="381991377"
Received: from fmsmga005.fm.intel.com ([10.253.24.32])
 by fmsmga104.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 04 Oct 2023 03:31:06 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10852"; a="1082435487"
X-IronPort-AV: E=Sophos;i="6.03,199,1694761200"; d="scan'208";a="1082435487"
Received: from sorvi2.fi.intel.com ([10.237.72.194])
 by fmsmga005.fm.intel.com with ESMTP; 04 Oct 2023 03:31:05 -0700
From: Mika Kahola <mika.kahola@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Wed,  4 Oct 2023 13:25:04 +0300
Message-Id: <20231004102504.497023-1-mika.kahola@intel.com>
X-Mailer: git-send-email 2.34.1
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH] drm/i915/display: Reset message bus after each
 read/write operation
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

Every know and then we receive the following error when running
for example IGT test kms_flip.

[drm] *ERROR* PHY G Read 0d80 failed after 3 retries.
[drm] *ERROR* PHY G Write 0d81 failed after 3 retries.

Since the error is sporadic in nature, the patch proposes
to reset the message bus after every successful or unsuccessful
read or write operation. However, testing revealed that this
alone is not sufficient method an additiona delay is also
introduces anything from 200us to 300us. This delay is experimental
value and has no specification to back it up.

Signed-off-by: Mika Kahola <mika.kahola@intel.com>
---
 drivers/gpu/drm/i915/display/intel_cx0_phy.c | 6 ++++++
 1 file changed, 6 insertions(+)

diff --git a/drivers/gpu/drm/i915/display/intel_cx0_phy.c b/drivers/gpu/drm/i915/display/intel_cx0_phy.c
index abd607b564f1..a71b8a29d6b0 100644
--- a/drivers/gpu/drm/i915/display/intel_cx0_phy.c
+++ b/drivers/gpu/drm/i915/display/intel_cx0_phy.c
@@ -220,9 +220,12 @@ static u8 __intel_cx0_read(struct drm_i915_private *i915, enum port port,
 	/* 3 tries is assumed to be enough to read successfully */
 	for (i = 0; i < 3; i++) {
 		status = __intel_cx0_read_once(i915, port, lane, addr);
+		intel_cx0_bus_reset(i915, port, lane);
 
 		if (status >= 0)
 			return status;
+
+		usleep_range(200, 300);
 	}
 
 	drm_err_once(&i915->drm, "PHY %c Read %04x failed after %d retries.\n",
@@ -299,9 +302,12 @@ static void __intel_cx0_write(struct drm_i915_private *i915, enum port port,
 	/* 3 tries is assumed to be enough to write successfully */
 	for (i = 0; i < 3; i++) {
 		status = __intel_cx0_write_once(i915, port, lane, addr, data, committed);
+		intel_cx0_bus_reset(i915, port, lane);
 
 		if (status == 0)
 			return;
+
+		usleep_range(200, 300);
 	}
 
 	drm_err_once(&i915->drm,
-- 
2.34.1

