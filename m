Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 2DEA748A3DB
	for <lists+intel-gfx@lfdr.de>; Tue, 11 Jan 2022 00:45:37 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 2B2F110E430;
	Mon, 10 Jan 2022 23:45:35 +0000 (UTC)
X-Original-To: Intel-gfx@lists.freedesktop.org
Delivered-To: Intel-gfx@lists.freedesktop.org
Received: from mga06.intel.com (mga06.intel.com [134.134.136.31])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 468F710E430
 for <Intel-gfx@lists.freedesktop.org>; Mon, 10 Jan 2022 23:45:34 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1641858334; x=1673394334;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=0LNMlvbDOn6T0JlP+ZrbzgnBB56lanV+zE8rKAb9DJ4=;
 b=EEp/RvkTE/BO1TlAx5eXnY+d5BTjJToQuzr5tYM6J0YUEx0xubdAE2G8
 cbzLRMPmtqUO/aBfEjqEtfUbVqq9t5nN68pY5fUMsxLMC7OzFrr4jaLoX
 Wt7pPcvrnq0sfDfW2v9C4GfgVJ2z6eLQz8Ox86UEQ2MZdGaFJiWQxLVQq
 SA27cdrXozudIGr2lmmGFQSegovUYk7EysGUQscS5Z+6WuH1fnDYmipi7
 FgoYK0utcjsbzoVZrM7ns9leDss8g4+/GWQnNdQIoNc1yIsoXNc5Tz9R7
 7WNBzdkDx3YLCvdwy053+tuo3OGqgztaqhWgTL5soHHKHwLnRIPMn7XSF w==;
X-IronPort-AV: E=McAfee;i="6200,9189,10223"; a="304100400"
X-IronPort-AV: E=Sophos;i="5.88,278,1635231600"; d="scan'208";a="304100400"
Received: from orsmga005.jf.intel.com ([10.7.209.41])
 by orsmga104.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 10 Jan 2022 15:45:31 -0800
X-IronPort-AV: E=Sophos;i="5.88,278,1635231600"; d="scan'208";a="690772676"
Received: from wchew-mobl.amr.corp.intel.com (HELO cataylo2-mobl1.intel.com)
 ([10.255.78.106])
 by orsmga005-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 10 Jan 2022 15:45:29 -0800
From: clinton.a.taylor@intel.com
To: Intel-gfx@lists.freedesktop.org
Date: Mon, 10 Jan 2022 15:45:20 -0800
Message-Id: <20220110234520.6836-1-clinton.a.taylor@intel.com>
X-Mailer: git-send-email 2.34.1
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH] drm/i915/snps: vswing value refined for SNPS
 phys
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
Cc: Jani Nikula <jani.nikula@intel.com>
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

From: Clint Taylor <clinton.a.taylor@intel.com>

Updated new values from BSPEC.

BSPEC: 53920

Cc: Jani Nikula <jani.nikula@intel.com>
Cc: José Roberto de Souza <jose.souza@intel.com>
Cc: Imre Deak <imre.deak@intel.com>
Signed-off-by: Clint Taylor <clinton.a.taylor@intel.com>
---
 .../drm/i915/display/intel_ddi_buf_trans.c    | 42 +++++++++----------
 1 file changed, 21 insertions(+), 21 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_ddi_buf_trans.c b/drivers/gpu/drm/i915/display/intel_ddi_buf_trans.c
index 1e689d573512..09d6ab13536c 100644
--- a/drivers/gpu/drm/i915/display/intel_ddi_buf_trans.c
+++ b/drivers/gpu/drm/i915/display/intel_ddi_buf_trans.c
@@ -985,15 +985,15 @@ static const struct intel_ddi_buf_trans adlp_dkl_phy_trans_dp_hbr2_hbr3 = {
 };
 
 static const union intel_ddi_buf_trans_entry _dg2_snps_trans[] = {
-	{ .snps = { 26, 0, 0 } },	/* VS 0, pre-emph 0 */
-	{ .snps = { 33, 0, 6 } },	/* VS 0, pre-emph 1 */
-	{ .snps = { 38, 0, 12 } },	/* VS 0, pre-emph 2 */
-	{ .snps = { 43, 0, 19 } },	/* VS 0, pre-emph 3 */
-	{ .snps = { 39, 0, 0 } },	/* VS 1, pre-emph 0 */
-	{ .snps = { 44, 0, 8 } },	/* VS 1, pre-emph 1 */
-	{ .snps = { 47, 0, 15 } },	/* VS 1, pre-emph 2 */
-	{ .snps = { 52, 0, 0 } },	/* VS 2, pre-emph 0 */
-	{ .snps = { 51, 0, 10 } },	/* VS 2, pre-emph 1 */
+	{ .snps = { 25, 0, 0 } },	/* VS 0, pre-emph 0 */
+	{ .snps = { 32, 0, 6 } },	/* VS 0, pre-emph 1 */
+	{ .snps = { 35, 0, 10 } },	/* VS 0, pre-emph 2 */
+	{ .snps = { 43, 0, 17 } },	/* VS 0, pre-emph 3 */
+	{ .snps = { 35, 0, 0 } },	/* VS 1, pre-emph 0 */
+	{ .snps = { 45, 0, 8 } },	/* VS 1, pre-emph 1 */
+	{ .snps = { 48, 0, 14 } },	/* VS 1, pre-emph 2 */
+	{ .snps = { 47, 0, 0 } },	/* VS 2, pre-emph 0 */
+	{ .snps = { 55, 0, 7 } },	/* VS 2, pre-emph 1 */
 	{ .snps = { 62, 0, 0 } },	/* VS 3, pre-emph 0 */
 };
 
@@ -1005,21 +1005,21 @@ static const struct intel_ddi_buf_trans dg2_snps_trans = {
 
 static const union intel_ddi_buf_trans_entry _dg2_snps_trans_uhbr[] = {
 	{ .snps = { 62, 0, 0 } },	/* preset 0 */
-	{ .snps = { 56, 0, 6 } },	/* preset 1 */
-	{ .snps = { 51, 0, 11 } },	/* preset 2 */
-	{ .snps = { 48, 0, 14 } },	/* preset 3 */
-	{ .snps = { 43, 0, 19 } },	/* preset 4 */
+	{ .snps = { 55, 0, 7 } },	/* preset 1 */
+	{ .snps = { 50, 0, 12 } },	/* preset 2 */
+	{ .snps = { 44, 0, 18 } },	/* preset 3 */
+	{ .snps = { 35, 0, 21 } },	/* preset 4 */
 	{ .snps = { 59, 3, 0 } },	/* preset 5 */
 	{ .snps = { 53, 3, 6 } },	/* preset 6 */
-	{ .snps = { 49, 3, 10 } },	/* preset 7 */
-	{ .snps = { 45, 3, 14 } },	/* preset 8 */
-	{ .snps = { 42, 3, 17 } },	/* preset 9 */
+	{ .snps = { 48, 3, 11 } },	/* preset 7 */
+	{ .snps = { 42, 5, 15 } },	/* preset 8 */
+	{ .snps = { 37, 5, 20 } },	/* preset 9 */
 	{ .snps = { 56, 6, 0 } },	/* preset 10 */
-	{ .snps = { 50, 6, 6 } },	/* preset 11 */
-	{ .snps = { 47, 6, 9 } },	/* preset 12 */
-	{ .snps = { 42, 6, 14 } },	/* preset 13 */
-	{ .snps = { 46, 8, 8 } },	/* preset 14 */
-	{ .snps = { 56, 3, 3 } },	/* preset 15 */
+	{ .snps = { 48, 7, 7 } },	/* preset 11 */
+	{ .snps = { 45, 7, 10 } },	/* preset 12 */
+	{ .snps = { 39, 8, 15 } },	/* preset 13 */
+	{ .snps = { 48, 14, 0 } },	/* preset 14 */
+	{ .snps = { 45, 4, 4 } },	/* preset 15 */
 };
 
 static const struct intel_ddi_buf_trans dg2_snps_trans_uhbr = {
-- 
2.34.1

