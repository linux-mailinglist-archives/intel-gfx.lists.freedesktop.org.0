Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 1EBB52561F4
	for <lists+intel-gfx@lfdr.de>; Fri, 28 Aug 2020 22:25:59 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 8BE386E0D5;
	Fri, 28 Aug 2020 20:25:56 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
 by gabe.freedesktop.org (Postfix) with ESMTPS id E05976E0D5
 for <intel-gfx@lists.freedesktop.org>; Fri, 28 Aug 2020 20:25:54 +0000 (UTC)
IronPort-SDR: rlV2JAWvCzK85xkuWMTuUFVEHLPJRXIXIPtd90O+sWsuGV67MDt1H2RVVtdA5Csg9YH5+/zKgl
 Neb+5vXiwGTQ==
X-IronPort-AV: E=McAfee;i="6000,8403,9727"; a="174790738"
X-IronPort-AV: E=Sophos;i="5.76,365,1592895600"; d="scan'208";a="174790738"
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga005.fm.intel.com ([10.253.24.32])
 by fmsmga101.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 28 Aug 2020 13:25:54 -0700
IronPort-SDR: Eo1u4U/2X+dc/SjC5lj1+wV+KlrgEvpZpJzi7oiZGGRfDScQjXNUsQkhd4Y+gqW9eY/DVEQvU3
 t7m4qox1xfAg==
X-IronPort-AV: E=Sophos;i="5.76,365,1592895600"; d="scan'208";a="501156189"
Received: from unknown (HELO josouza-MOBL2.intel.com) ([10.24.14.51])
 by fmsmga005-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 28 Aug 2020 13:25:54 -0700
From: =?UTF-8?q?Jos=C3=A9=20Roberto=20de=20Souza?= <jose.souza@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Fri, 28 Aug 2020 13:28:30 -0700
Message-Id: <20200828202830.7165-1-jose.souza@intel.com>
X-Mailer: git-send-email 2.28.0
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH CI] drm/i915/display: Ensure that ret is always
 initialized in icl_combo_phy_verify_state
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

From: Nathan Chancellor <natechancellor@gmail.com>

Clang warns:

drivers/gpu/drm/i915/display/intel_combo_phy.c:268:3: warning: variable
'ret' is uninitialized when used here [-Wuninitialized]
                ret &= check_phy_reg(dev_priv, phy, ICL_PORT_TX_DW8_LN0(phy),
                ^~~
drivers/gpu/drm/i915/display/intel_combo_phy.c:261:10: note: initialize
the variable 'ret' to silence this warning
        bool ret;
                ^
                 = 0
1 warning generated.

In practice, the bug this warning appears to be concerned with would not
actually matter because ret gets initialized to the return value of
cnl_verify_procmon_ref_values. However, that does appear to be a bug
since it means the first hunk of the patch this fixes won't actually do
anything (since the values of check_phy_reg won't factor into the final
ret value). Initialize ret to true then make all of the assignments a
bitwise AND with itself so that the function always does what it should
do.

Fixes: 239bef676d8e ("drm/i915/display: Implement new combo phy initialization step")
Link: https://github.com/ClangBuiltLinux/linux/issues/1094
Signed-off-by: Nathan Chancellor <natechancellor@gmail.com>
Reviewed-by: Matt Roper <matthew.d.roper@intel.com>
---
 drivers/gpu/drm/i915/display/intel_combo_phy.c | 4 ++--
 1 file changed, 2 insertions(+), 2 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_combo_phy.c b/drivers/gpu/drm/i915/display/intel_combo_phy.c
index eccaa79cb4a9..a4b8aa6d0a9e 100644
--- a/drivers/gpu/drm/i915/display/intel_combo_phy.c
+++ b/drivers/gpu/drm/i915/display/intel_combo_phy.c
@@ -258,7 +258,7 @@ static bool phy_is_master(struct drm_i915_private *dev_priv, enum phy phy)
 static bool icl_combo_phy_verify_state(struct drm_i915_private *dev_priv,
 				       enum phy phy)
 {
-	bool ret;
+	bool ret = true;
 	u32 expected_val = 0;
 
 	if (!icl_combo_phy_enabled(dev_priv, phy))
@@ -276,7 +276,7 @@ static bool icl_combo_phy_verify_state(struct drm_i915_private *dev_priv,
 				     DCC_MODE_SELECT_CONTINUOSLY);
 	}
 
-	ret = cnl_verify_procmon_ref_values(dev_priv, phy);
+	ret &= cnl_verify_procmon_ref_values(dev_priv, phy);
 
 	if (phy_is_master(dev_priv, phy)) {
 		ret &= check_phy_reg(dev_priv, phy, ICL_PORT_COMP_DW8(phy),
-- 
2.28.0

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
