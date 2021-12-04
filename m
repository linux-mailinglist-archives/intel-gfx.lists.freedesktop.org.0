Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 6DA724681A6
	for <lists+intel-gfx@lfdr.de>; Sat,  4 Dec 2021 02:01:36 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 916CAABBE7;
	Sat,  4 Dec 2021 01:01:34 +0000 (UTC)
X-Original-To: Intel-gfx@lists.freedesktop.org
Delivered-To: Intel-gfx@lists.freedesktop.org
Received: from mga11.intel.com (mga11.intel.com [192.55.52.93])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 90C4BABBE7
 for <Intel-gfx@lists.freedesktop.org>; Sat,  4 Dec 2021 01:01:33 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6200,9189,10187"; a="234591025"
X-IronPort-AV: E=Sophos;i="5.87,286,1631602800"; d="scan'208";a="234591025"
Received: from orsmga005.jf.intel.com ([10.7.209.41])
 by fmsmga102.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 03 Dec 2021 17:01:32 -0800
X-IronPort-AV: E=Sophos;i="5.87,286,1631602800"; d="scan'208";a="678297442"
Received: from amwaterm-mobl1.amr.corp.intel.com (HELO
 cataylo2-mobl1.intel.com) ([10.255.65.88])
 by orsmga005-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 03 Dec 2021 17:01:31 -0800
From: clinton.a.taylor@intel.com
To: Intel-gfx@lists.freedesktop.org
Date: Fri,  3 Dec 2021 17:01:40 -0800
Message-Id: <20211204010140.22839-1-clinton.a.taylor@intel.com>
X-Mailer: git-send-email 2.33.1
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH v2] drm/i915/adlp: Remove require_force_probe
 protection
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

From: Clint Taylor <clinton.a.taylor@intel.com>

Remove force probe protection from ADL_P platform. Did not obsevre
warnings, errors, flickering or any visual defects while doing ordinary
tasks like browsing and editing documents in a two monitor setup.

For more info drm-tip idle run results :
https://intel-gfx-ci.01.org/tree/drm-tip/drmtip.html?

Cc: Rodrigo Vivi <rodrigo.vivi@intel.com>
Acked-by: Jon Bloomfield <jon.bloomfield@intel.com>
Signed-off-by: Clint Taylor <clinton.a.taylor@intel.com>
---
 drivers/gpu/drm/i915/i915_pci.c | 1 -
 1 file changed, 1 deletion(-)

diff --git a/drivers/gpu/drm/i915/i915_pci.c b/drivers/gpu/drm/i915/i915_pci.c
index f01cba4ec283..0ba516838b02 100644
--- a/drivers/gpu/drm/i915/i915_pci.c
+++ b/drivers/gpu/drm/i915/i915_pci.c
@@ -977,7 +977,6 @@ static const struct intel_device_info adl_p_info = {
 	GEN12_FEATURES,
 	XE_LPD_FEATURES,
 	PLATFORM(INTEL_ALDERLAKE_P),
-	.require_force_probe = 1,
 	.cpu_transcoder_mask = BIT(TRANSCODER_A) | BIT(TRANSCODER_B) |
 			       BIT(TRANSCODER_C) | BIT(TRANSCODER_D) |
 			       BIT(TRANSCODER_DSI_0) | BIT(TRANSCODER_DSI_1),
-- 
2.33.1

