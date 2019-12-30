Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 4420612D256
	for <lists+intel-gfx@lfdr.de>; Mon, 30 Dec 2019 17:57:03 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 52B6B89FAD;
	Mon, 30 Dec 2019 16:57:01 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [IPv6:2610:10:20:722:a800:ff:feee:56cf])
 by gabe.freedesktop.org (Postfix) with ESMTP id 696D589FAD;
 Mon, 30 Dec 2019 16:57:00 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id 5F622A0134;
 Mon, 30 Dec 2019 16:57:00 +0000 (UTC)
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Manna, Animesh" <animesh.manna@intel.com>
Date: Mon, 30 Dec 2019 16:57:00 -0000
Message-ID: <157772502036.15516.1226301471693631191@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20191230161523.32222-1-animesh.manna@intel.com>
In-Reply-To: <20191230161523.32222-1-animesh.manna@intel.com>
Subject: [Intel-gfx] =?utf-8?b?4pyXIEZpLkNJLkNIRUNLUEFUQ0g6IHdhcm5pbmcg?=
 =?utf-8?q?for_DP_Phy_compliance_auto_test_=28rev5=29?=
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
Reply-To: intel-gfx@lists.freedesktop.org
Cc: intel-gfx@lists.freedesktop.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

== Series Details ==

Series: DP Phy compliance auto test (rev5)
URL   : https://patchwork.freedesktop.org/series/71121/
State : warning

== Summary ==

$ dim checkpatch origin/drm-tip
8a55c99e987a drm/amd/display: Align macro name as per DP spec
b46d414a1888 drm/dp: get/set phy compliance pattern
eaa338c1dc20 drm/i915/dp: Move vswing/pre-emphasis adjustment calculation
d7fed7271de6 drm/i915/dp: Preparation for DP phy compliance auto test
24a9becfee75 drm/i915/dsb: Send uevent to testapp.
82604acfc432 drm/i915/dp: Add debugfs entry for DP phy compliance.
379c984a0e16 drm/i915/dp: Register definition for DP compliance register
8b30e6e85d43 drm/i915/dp: Update the pattern as per request
ebbce9a8cc0e drm/i915/dp: [FIXME] Program vswing, pre-emphasis, test-pattern
-:11: WARNING:COMMIT_LOG_LONG_LINE: Possible unwrapped commit description (prefer a maximum 75 chars per line)
#11: 
series. Some temporary fix added and the patch is under-development, not for

-:40: ERROR:SPACING: space required before the open parenthesis '('
#40: FILE: drivers/gpu/drm/i915/display/intel_display.c:15219:
+	if(dev_priv->dp_phy_comp) {

-:66: WARNING:SUSPECT_CODE_INDENT: suspect code indent for conditional statements (8, 8)
#66: FILE: drivers/gpu/drm/i915/display/intel_display.c:15456:
+	if (!dev_priv->dp_phy_comp) {
 	i915_sw_fence_init(&state->commit_ready,

-:80: WARNING:SUSPECT_CODE_INDENT: suspect code indent for conditional statements (8, 8)
#80: FILE: drivers/gpu/drm/i915/display/intel_display.c:15501:
+	if (!dev_priv->dp_phy_comp) {
 	if (ret) {

-:97: WARNING:SUSPECT_CODE_INDENT: suspect code indent for conditional statements (8, 8)
#97: FILE: drivers/gpu/drm/i915/display/intel_display.c:15529:
+	if (!dev_priv->dp_phy_comp) {
 	i915_sw_fence_commit(&state->commit_ready);

-:97: WARNING:BRACES: braces {} are not necessary for single statement blocks
#97: FILE: drivers/gpu/drm/i915/display/intel_display.c:15529:
+	if (!dev_priv->dp_phy_comp) {
 	i915_sw_fence_commit(&state->commit_ready);
+	}

total: 1 errors, 5 warnings, 0 checks, 181 lines checked

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
