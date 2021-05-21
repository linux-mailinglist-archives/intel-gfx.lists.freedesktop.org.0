Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id AE06038BB0B
	for <lists+intel-gfx@lfdr.de>; Fri, 21 May 2021 02:52:23 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 30C2B6E459;
	Fri, 21 May 2021 00:52:20 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga07.intel.com (mga07.intel.com [134.134.136.100])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 8684D6E459
 for <intel-gfx@lists.freedesktop.org>; Fri, 21 May 2021 00:52:19 +0000 (UTC)
IronPort-SDR: 14Zf3VH9TJEsSH7s7oTF/0/awf7nEOZ+bpajYXpEUX8nILnVkfjR+BlM+cOHeXf23TIOAh9bNf
 AEQmpZkrxHMg==
X-IronPort-AV: E=McAfee;i="6200,9189,9990"; a="265284975"
X-IronPort-AV: E=Sophos;i="5.82,313,1613462400"; d="scan'208";a="265284975"
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
 by orsmga105.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 20 May 2021 17:52:18 -0700
IronPort-SDR: wqsLw28kE/PRFEDDDkse9TsYkqmFZMR+BDyV65HoRGYaHJ7hOthKfAQEc1BwJWRlea5w6dxTCh
 s0VNrnWB5RwA==
X-IronPort-AV: E=Sophos;i="5.82,313,1613462400"; d="scan'208";a="475462037"
Received: from lucas-s2600cw.jf.intel.com ([10.165.21.202])
 by fmsmga002-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 20 May 2021 17:52:18 -0700
From: Lucas De Marchi <lucas.demarchi@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Thu, 20 May 2021 17:52:09 -0700
Message-Id: <20210521005209.4058702-1-lucas.demarchi@intel.com>
X-Mailer: git-send-email 2.31.1
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH] drm/i915/display: fix typo when returning table
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

Fix table returned when port_clock > 270000:

	drivers/gpu/drm/i915/display/intel_ddi_buf_trans.c:752:47: error: variable 'adlp_dkl_phy_dp_ddi_trans_hbr2_hbr3' is not needed and will not be emitted [-Werror,-Wunneeded-internal-declaration]
	static const struct tgl_dkl_phy_ddi_buf_trans adlp_dkl_phy_dp_ddi_trans_hbr2_hbr3[] = {

Initial version of the patch had it in a single table, but on second
version the table got split, but we continued to reference just one of
them.

Fixes: ca962882268a ("drm/i915/adl_p: Define and use ADL-P specific DP translation tables")
Reported-by: kernel test robot <lkp@intel.com>
Signed-off-by: Lucas De Marchi <lucas.demarchi@intel.com>
---
 drivers/gpu/drm/i915/display/intel_ddi_buf_trans.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/gpu/drm/i915/display/intel_ddi_buf_trans.c b/drivers/gpu/drm/i915/display/intel_ddi_buf_trans.c
index ce5d5d13b7c1..8bfd00f49f2a 100644
--- a/drivers/gpu/drm/i915/display/intel_ddi_buf_trans.c
+++ b/drivers/gpu/drm/i915/display/intel_ddi_buf_trans.c
@@ -1383,7 +1383,7 @@ adlp_get_dkl_buf_trans_dp(struct intel_encoder *encoder,
 {
 	if (crtc_state->port_clock > 270000) {
 		*n_entries = ARRAY_SIZE(adlp_dkl_phy_dp_ddi_trans_hbr2_hbr3);
-		return adlp_dkl_phy_dp_ddi_trans_hbr;
+		return adlp_dkl_phy_dp_ddi_trans_hbr2_hbr3;
 	}
 
 	*n_entries = ARRAY_SIZE(adlp_dkl_phy_dp_ddi_trans_hbr);
-- 
2.31.1

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
