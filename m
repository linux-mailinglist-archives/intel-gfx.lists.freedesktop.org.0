Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 8BEDB60EC50
	for <lists+intel-gfx@lfdr.de>; Thu, 27 Oct 2022 01:23:05 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id C9B4E10E11A;
	Wed, 26 Oct 2022 23:23:03 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 38F1310E0BE
 for <intel-gfx@lists.freedesktop.org>; Wed, 26 Oct 2022 23:22:46 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1666826566; x=1698362566;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=bDKYB6+xy0PdPUQt2ykTlfuZE/t3NEmLK5M8jRzjMKQ=;
 b=Wx/tv33I8PnYzK18W//+tck7qxjFUiengV14DJ0X+tfBaZs2oVkFfHa9
 XAM293l7zucdIrF4dUToBbYj2rBWK3b5EmtHEnMyfdGk5ojrXNn70KFar
 yiIBk5qlegUfljjpNKJ0ZNJ4SFqQZ1SRg0GBR3Kbjrnj11OwbCpnAbAZl
 Js/fUG8hLz0oTW9uxwKLG5pADkhoBhXGYGK/xxC7i3YpdBEqCZBvAUB+n
 XHgpov0Vqh+5IDhZvye1ndJCGRdzWRzbcF6ER6xTEtAgw1B5cwjcDeDq+
 57gjgAz//z6cBc/7fhXm+YMR7J/WCjMheh0FJm114zOalS1LAQckqaV5R Q==;
X-IronPort-AV: E=McAfee;i="6500,9779,10512"; a="295492769"
X-IronPort-AV: E=Sophos;i="5.95,215,1661842800"; d="scan'208";a="295492769"
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
 by orsmga101.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 26 Oct 2022 16:22:46 -0700
X-IronPort-AV: E=McAfee;i="6500,9779,10512"; a="774781534"
X-IronPort-AV: E=Sophos;i="5.95,215,1661842800"; d="scan'208";a="774781534"
Received: from anushasr-mobl7.jf.intel.com ([10.24.14.105])
 by fmsmga001-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 26 Oct 2022 16:22:45 -0700
From: Anusha Srivatsa <anusha.srivatsa@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Wed, 26 Oct 2022 16:22:57 -0700
Message-Id: <20221026232257.281240-2-anusha.srivatsa@intel.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20221026232257.281240-1-anusha.srivatsa@intel.com>
References: <20221026232257.281240-1-anusha.srivatsa@intel.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH 2/2] drm/i915/display: Add CDCLK Support for MTL
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

As per bSpec MTL has 38.4 MHz Reference clock.
MTL does support squasher like DG2 but only for lower
frequencies. Change the has_cdclk_squasher()
helper to reflect this.

v2: Revert to using bxt_get_cdclk()

BSpec: 65243

Cc: Clint Taylor <Clinton.A.Taylor@intel.com>
Signed-off-by: Anusha Srivatsa <anusha.srivatsa@intel.com>
---
 drivers/gpu/drm/i915/display/intel_cdclk.c | 22 +++++++++++++++++++++-
 1 file changed, 21 insertions(+), 1 deletion(-)

diff --git a/drivers/gpu/drm/i915/display/intel_cdclk.c b/drivers/gpu/drm/i915/display/intel_cdclk.c
index 6a775367f02a..28253cb310ca 100644
--- a/drivers/gpu/drm/i915/display/intel_cdclk.c
+++ b/drivers/gpu/drm/i915/display/intel_cdclk.c
@@ -1345,6 +1345,16 @@ static const struct intel_cdclk_vals dg2_cdclk_table[] = {
 	{}
 };
 
+static const struct intel_cdclk_vals mtl_cdclk_table[] = {
+	{ .refclk = 38400, .cdclk = 172800, .divider = 2, .ratio = 16, .waveform = 0xad5a },
+	{ .refclk = 38400, .cdclk = 192000, .divider = 2, .ratio = 16, .waveform = 0xb6b6 },
+	{ .refclk = 38400, .cdclk = 307200, .divider = 2, .ratio = 16, .waveform = 0x0000 },
+	{ .refclk = 38400, .cdclk = 480000, .divider = 2, .ratio = 25, .waveform = 0x0000 },
+	{ .refclk = 38400, .cdclk = 556800, .divider = 2, .ratio = 29, .waveform = 0x0000 },
+	{ .refclk = 38400, .cdclk = 652800, .divider = 2, .ratio = 34, .waveform = 0x0000 },
+	{}
+};
+
 static int bxt_calc_cdclk(struct drm_i915_private *dev_priv, int min_cdclk)
 {
 	const struct intel_cdclk_vals *table = dev_priv->display.cdclk.table;
@@ -3160,6 +3170,13 @@ u32 intel_read_rawclk(struct drm_i915_private *dev_priv)
 	return freq;
 }
 
+static const struct intel_cdclk_funcs mtl_cdclk_funcs = {
+	.get_cdclk = bxt_get_cdclk,
+	.set_cdclk = bxt_set_cdclk,
+	.modeset_calc_cdclk = bxt_modeset_calc_cdclk,
+	.calc_voltage_level = tgl_calc_voltage_level,
+};
+
 static const struct intel_cdclk_funcs tgl_cdclk_funcs = {
 	.get_cdclk = bxt_get_cdclk,
 	.set_cdclk = bxt_set_cdclk,
@@ -3295,7 +3312,10 @@ static const struct intel_cdclk_funcs i830_cdclk_funcs = {
  */
 void intel_init_cdclk_hooks(struct drm_i915_private *dev_priv)
 {
-	if (IS_DG2(dev_priv)) {
+	if (IS_METEORLAKE(dev_priv)) {
+		dev_priv->display.funcs.cdclk = &mtl_cdclk_funcs;
+		dev_priv->display.cdclk.table = mtl_cdclk_table;
+	} else if (IS_DG2(dev_priv)) {
 		dev_priv->display.funcs.cdclk = &tgl_cdclk_funcs;
 		dev_priv->display.cdclk.table = dg2_cdclk_table;
 	} else if (IS_ALDERLAKE_P(dev_priv)) {
-- 
2.25.1

