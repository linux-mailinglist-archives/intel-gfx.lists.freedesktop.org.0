Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 9118F733B47
	for <lists+intel-gfx@lfdr.de>; Fri, 16 Jun 2023 23:02:12 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 17B2110E685;
	Fri, 16 Jun 2023 21:02:09 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga05.intel.com (mga05.intel.com [192.55.52.43])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 664BE10E685
 for <intel-gfx@lists.freedesktop.org>; Fri, 16 Jun 2023 21:02:07 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1686949327; x=1718485327;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=Phxt2rZM3U+NvUB7EVBOKrjFW4b12Z0GGWxExskN4Zg=;
 b=CYIqFGlINHBAA1tp2M4HaTzd6e+d1Xe8AidbLd1sItrgdLg885nwwsW8
 nFGCduBu2OOsknKdCgkRbiDEqC4Py5lq4QoAWmMtAocefsojRxbrQ5uhB
 /b34CeGjatb4Gky5Wl5Y42bIbct78Lsn075TsusGA7mqfS2ocuaA9VH/w
 fQSvuQMbnOVehaGTuGGyexoWXPMCmrDc4PZwk8CWeuJ2UOrBProeLvSyl
 YbofqDSMmZnIiO2y8YIjkNtcSgILdDbn3YQCbnbdLlwychZQ7EZkf8pNB
 lTUVPcZcqWqtn0GhMzEpsb1dNJigXaOMpD7iwTF7I4SZzTvKuTZeW1gWd Q==;
X-IronPort-AV: E=McAfee;i="6600,9927,10743"; a="445692559"
X-IronPort-AV: E=Sophos;i="6.00,248,1681196400"; d="scan'208";a="445692559"
Received: from orsmga007.jf.intel.com ([10.7.209.58])
 by fmsmga105.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 16 Jun 2023 14:02:05 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10743"; a="707231170"
X-IronPort-AV: E=Sophos;i="6.00,248,1681196400"; d="scan'208";a="707231170"
Received: from invictus.jf.intel.com ([10.165.21.201])
 by orsmga007-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 16 Jun 2023 14:02:04 -0700
From: Radhakrishna Sripada <radhakrishna.sripada@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Fri, 16 Jun 2023 14:00:28 -0700
Message-Id: <20230616210028.1601533-1-radhakrishna.sripada@intel.com>
X-Mailer: git-send-email 2.34.1
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH] drm/i915/mtl: Skip using vbt hdmi_level_shifter
 selection on MTL
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

The hdmi_level_shifter part of General Bytes definition in VBT, which was
used for choosing different levels on earlier platforms is now a hidden
optin and shows the default value of 0. The level shifter is now to be
deduced from hdmi_default_entry in  intel_ddi_buf_trans for each phy.

Skip providing the default hw provided value to force driver to choose hdmi
default entry.

Bspec: 20124
Cc: Khaled Almahallawy <khaled.almahallawy@intel.com>
Cc: Lee Shawn C <shawn.c.lee@intel.com>
Cc: Clint Taylor <Clinton.A.Taylor@intel.com>
Signed-off-by: Radhakrishna Sripada <radhakrishna.sripada@intel.com>
---
 drivers/gpu/drm/i915/display/intel_bios.c | 3 ++-
 1 file changed, 2 insertions(+), 1 deletion(-)

diff --git a/drivers/gpu/drm/i915/display/intel_bios.c b/drivers/gpu/drm/i915/display/intel_bios.c
index 34a397adbd6b..4b9bf76e137d 100644
--- a/drivers/gpu/drm/i915/display/intel_bios.c
+++ b/drivers/gpu/drm/i915/display/intel_bios.c
@@ -2615,7 +2615,8 @@ intel_bios_encoder_is_lspcon(const struct intel_bios_encoder_data *devdata)
 /* This is an index in the HDMI/DVI DDI buffer translation table, or -1 */
 int intel_bios_hdmi_level_shift(const struct intel_bios_encoder_data *devdata)
 {
-	if (!devdata || devdata->i915->display.vbt.version < 158)
+	if (!devdata || devdata->i915->display.vbt.version < 158 ||
+	    DISPLAY_VER(devdata->i915) >= 14)
 		return -1;
 
 	return devdata->child.hdmi_level_shifter_value;
-- 
2.34.1

