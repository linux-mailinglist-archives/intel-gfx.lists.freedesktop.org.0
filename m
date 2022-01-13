Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id EFF8B48DB38
	for <lists+intel-gfx@lfdr.de>; Thu, 13 Jan 2022 17:04:46 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 69ABB10E370;
	Thu, 13 Jan 2022 16:04:44 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
 by gabe.freedesktop.org (Postfix) with ESMTPS id C5D0710E370
 for <intel-gfx@lists.freedesktop.org>; Thu, 13 Jan 2022 16:04:42 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1642089882; x=1673625882;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=JYLxOu8UJY9KCOSNSJPfotM/qwqoMuH6QF7OTowhWC8=;
 b=jPFctgiA1apgXgqwvj4MZLbdsoOuZIa9zZtf7sxyteju89XLiHYMsYKL
 YIKIwCGftt9e5rp6JHF2Hu1pTLD0YS+yYNtxWWPUfzwX66JmMqCVhTSow
 xXIEFiNkSWiKKfcZQ4zoYEtdux9iEo8ojlppzjlFkRTNQ0kbBfxi7bkAm
 s/pSkUDdCLYHYikhaK3HGejAcq0fn4QHfOS48FyhK//cCVH992WciCUDA
 TvDveVDRbLHEi5jJWZyr954QHYHSketoYDO8bCUsvr419Tk2Fypg2VII3
 AgZ250VN5iax76TpToo8xuTFYl2d55EsjDBvE+M3rs4d07kMQtCOUgZtz A==;
X-IronPort-AV: E=McAfee;i="6200,9189,10225"; a="268394831"
X-IronPort-AV: E=Sophos;i="5.88,286,1635231600"; d="scan'208";a="268394831"
Received: from orsmga008.jf.intel.com ([10.7.209.65])
 by fmsmga101.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 13 Jan 2022 08:03:11 -0800
X-IronPort-AV: E=Sophos;i="5.88,286,1635231600"; d="scan'208";a="529711680"
Received: from unknown (HELO josouza-mobl2.intel.com) ([10.230.19.131])
 by orsmga008-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 13 Jan 2022 08:03:09 -0800
From: =?UTF-8?q?Jos=C3=A9=20Roberto=20de=20Souza?= <jose.souza@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Thu, 13 Jan 2022 08:04:37 -0800
Message-Id: <20220113160437.49059-1-jose.souza@intel.com>
X-Mailer: git-send-email 2.34.1
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH] drm/i915/display/ehl: Update voltage swing table
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

EHL table was recently updated with some minor fixes.

BSpec: 21257
Cc: Clint Taylor <clinton.a.taylor@intel.com>
Signed-off-by: José Roberto de Souza <jose.souza@intel.com>
---
 drivers/gpu/drm/i915/display/intel_ddi_buf_trans.c | 10 +++++-----
 1 file changed, 5 insertions(+), 5 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_ddi_buf_trans.c b/drivers/gpu/drm/i915/display/intel_ddi_buf_trans.c
index 09d6ab13536cc..0c32210bf5031 100644
--- a/drivers/gpu/drm/i915/display/intel_ddi_buf_trans.c
+++ b/drivers/gpu/drm/i915/display/intel_ddi_buf_trans.c
@@ -477,14 +477,14 @@ static const struct intel_ddi_buf_trans icl_combo_phy_trans_hdmi = {
 static const union intel_ddi_buf_trans_entry _ehl_combo_phy_trans_dp[] = {
 							/* NT mV Trans mV db    */
 	{ .icl = { 0xA, 0x33, 0x3F, 0x00, 0x00 } },	/* 350   350      0.0   */
-	{ .icl = { 0xA, 0x47, 0x36, 0x00, 0x09 } },	/* 350   500      3.1   */
-	{ .icl = { 0xC, 0x64, 0x34, 0x00, 0x0B } },	/* 350   700      6.0   */
-	{ .icl = { 0x6, 0x7F, 0x30, 0x00, 0x0F } },	/* 350   900      8.2   */
+	{ .icl = { 0xA, 0x47, 0x38, 0x00, 0x07 } },	/* 350   500      3.1   */
+	{ .icl = { 0xC, 0x64, 0x33, 0x00, 0x0C } },	/* 350   700      6.0   */
+	{ .icl = { 0x6, 0x7F, 0x2F, 0x00, 0x10 } },	/* 350   900      8.2   */
 	{ .icl = { 0xA, 0x46, 0x3F, 0x00, 0x00 } },	/* 500   500      0.0   */
-	{ .icl = { 0xC, 0x64, 0x38, 0x00, 0x07 } },	/* 500   700      2.9   */
+	{ .icl = { 0xC, 0x64, 0x37, 0x00, 0x08 } },	/* 500   700      2.9   */
 	{ .icl = { 0x6, 0x7F, 0x32, 0x00, 0x0D } },	/* 500   900      5.1   */
 	{ .icl = { 0xC, 0x61, 0x3F, 0x00, 0x00 } },	/* 650   700      0.6   */
-	{ .icl = { 0x6, 0x7F, 0x38, 0x00, 0x07 } },	/* 600   900      3.5   */
+	{ .icl = { 0x6, 0x7F, 0x37, 0x00, 0x08 } },	/* 600   900      3.5   */
 	{ .icl = { 0x6, 0x7F, 0x3F, 0x00, 0x00 } },	/* 900   900      0.0   */
 };
 
-- 
2.34.1

