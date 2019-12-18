Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id C6F201250DB
	for <lists+intel-gfx@lfdr.de>; Wed, 18 Dec 2019 19:42:41 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 18E2E89E7B;
	Wed, 18 Dec 2019 18:42:39 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTP id B126A89E7B;
 Wed, 18 Dec 2019 18:42:37 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id A912BA010F;
 Wed, 18 Dec 2019 18:42:37 +0000 (UTC)
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Manna, Animesh" <animesh.manna@intel.com>
Date: Wed, 18 Dec 2019 18:42:37 -0000
Message-ID: <157669455767.8356.13048450424786682651@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20191218151350.19579-1-animesh.manna@intel.com>
In-Reply-To: <20191218151350.19579-1-animesh.manna@intel.com>
Subject: [Intel-gfx] =?utf-8?b?4pyXIEZpLkNJLkNIRUNLUEFUQ0g6IHdhcm5pbmcg?=
 =?utf-8?q?for_DP_Phy_compliance_auto_test?=
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

Series: DP Phy compliance auto test
URL   : https://patchwork.freedesktop.org/series/71121/
State : warning

== Summary ==

$ dim checkpatch origin/drm-tip
b177259a3656 drm/dp: get/set phy compliance pattern
701d1cb86d03 drm/amd/display: Fix compilation issue.
b553ef602d04 drm/i915/dp: Move vswing/pre-emphasis adjustment calculation
0f5e33d5d6c0 drm/i915/dp: Preparation for DP phy compliance auto test
391d0f4e1225 drm/i915/dsb: Send uevent to testapp.
5ba33dc9aa02 drm/i915/dp: Add debugfs entry for DP phy compliance.
ee3972d67e5d drm/i915/dp: Register definition for DP compliance register
644f91780a71 drm/i915/dp: Update the pattern as per request
c81ef6762f12 drm/i915/dp: [FIXME] Program vswing, pre-emphasis, test-pattern
-:11: WARNING:COMMIT_LOG_LONG_LINE: Possible unwrapped commit description (prefer a maximum 75 chars per line)
#11: 
series. Some temporary fix added and the patch is under-development, not for

-:40: ERROR:SPACING: space required before the open parenthesis '('
#40: FILE: drivers/gpu/drm/i915/display/intel_display.c:14670:
+	if(dev_priv->dp_phy_comp) {

-:66: WARNING:SUSPECT_CODE_INDENT: suspect code indent for conditional statements (8, 8)
#66: FILE: drivers/gpu/drm/i915/display/intel_display.c:14907:
+	if (!dev_priv->dp_phy_comp) {
 	i915_sw_fence_init(&state->commit_ready,

-:80: WARNING:SUSPECT_CODE_INDENT: suspect code indent for conditional statements (8, 8)
#80: FILE: drivers/gpu/drm/i915/display/intel_display.c:14952:
+	if (!dev_priv->dp_phy_comp) {
 	if (ret) {

-:97: WARNING:SUSPECT_CODE_INDENT: suspect code indent for conditional statements (8, 8)
#97: FILE: drivers/gpu/drm/i915/display/intel_display.c:14980:
+	if (!dev_priv->dp_phy_comp) {
 	i915_sw_fence_commit(&state->commit_ready);

-:97: WARNING:BRACES: braces {} are not necessary for single statement blocks
#97: FILE: drivers/gpu/drm/i915/display/intel_display.c:14980:
+	if (!dev_priv->dp_phy_comp) {
 	i915_sw_fence_commit(&state->commit_ready);
+	}

total: 1 errors, 5 warnings, 0 checks, 181 lines checked

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
