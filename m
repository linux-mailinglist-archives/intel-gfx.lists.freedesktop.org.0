Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 6743136408A
	for <lists+intel-gfx@lfdr.de>; Mon, 19 Apr 2021 13:28:00 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 07F1D6E214;
	Mon, 19 Apr 2021 11:27:58 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga04.intel.com (mga04.intel.com [192.55.52.120])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 52E546E214
 for <intel-gfx@lists.freedesktop.org>; Mon, 19 Apr 2021 11:27:57 +0000 (UTC)
IronPort-SDR: mdiWddnI3qj1cO6D3N0CRufIYR3SeZoYHlh9XXzdIHGkuUAyEaBAEIztvKRO+P0MRNIrjXTzwW
 pqxVjEFV84Ww==
X-IronPort-AV: E=McAfee;i="6200,9189,9958"; a="193186418"
X-IronPort-AV: E=Sophos;i="5.82,234,1613462400"; d="scan'208";a="193186418"
Received: from orsmga001.jf.intel.com ([10.7.209.18])
 by fmsmga104.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 19 Apr 2021 04:27:56 -0700
IronPort-SDR: 97rxDP+cpFpoBEBf6qBszczpuwHT5GztUi9s+Pl/2gNcS/bomSIDgGU9Ta+eAB42bFqKZ9+TJR
 LmYqJD6e3O2Q==
X-IronPort-AV: E=Sophos;i="5.82,234,1613462400"; d="scan'208";a="462708801"
Received: from bhanu-nuclab.iind.intel.com ([10.145.162.173])
 by orsmga001-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 19 Apr 2021 04:27:54 -0700
From: Bhanuprakash Modem <bhanuprakash.modem@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Tue, 20 Apr 2021 00:48:34 +0530
Message-Id: <20210419191834.7574-1-bhanuprakash.modem@intel.com>
X-Mailer: git-send-email 2.20.1
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH] drm/i915/display: Fix state mismatch in drm
 infoframe
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

While reading the SDP infoframe, we are getting filtered with
the encoder type INTEL_OUTPUT_DDI which causes the infoframe
mismatch. This patch will extend the support to read the SDP
infoframes for eDP.

[1025.606556] i915 0000:00:02.0: [drm] *ERROR* mismatch in drm infoframe
[1025.607865] i915 0000:00:02.0: [drm] *ERROR* expected:
[1025.607879] i915 0000:00:02.0: HDMI infoframe: Dynamic Range and Mastering, version 1, length 26
[1025.607889] i915 0000:00:02.0: length: 26
[1025.607898] i915 0000:00:02.0: metadata type: 0
[1025.608292] i915 0000:00:02.0: eotf: 2
[1025.608302] i915 0000:00:02.0: x[0]: 35400
[1025.608312] i915 0000:00:02.0: y[0]: 14599
[1025.609115] i915 0000:00:02.0: x[1]: 8500
[1025.609947] i915 0000:00:02.0: y[1]: 39850
[1025.609959] i915 0000:00:02.0: x[2]: 6550
[1025.609970] i915 0000:00:02.0: y[2]: 2300
[1025.609980] i915 0000:00:02.0: white point x: 15634
[1025.609989] i915 0000:00:02.0: white point y: 16450
[1025.610381] i915 0000:00:02.0: max_display_mastering_luminance: 1000
[1025.610392] i915 0000:00:02.0: min_display_mastering_luminance: 500
[1025.610401] i915 0000:00:02.0: max_cll: 500
[1025.610816] i915 0000:00:02.0: max_fall: 1000
[1025.612457] i915 0000:00:02.0: [drm] *ERROR* found:
[1025.614354] ------------[ cut here ]------------
[1025.616244] pipe state doesn't match!
[1025.617640] WARNING: CPU: 6 PID: 2114 at drivers/gpu/drm/i915/display/intel_display.c:9332 intel_atomic_commit_tail+0x14d4/0x17c0 [i915]

Cc: Uma Shankar <uma.shankar@intel.com>
Signed-off-by: Bhanuprakash Modem <bhanuprakash.modem@intel.com>
Reviewed-by: Uma Shankar <uma.shankar@intel.com>
---
 drivers/gpu/drm/i915/display/intel_dp.c | 3 ++-
 1 file changed, 2 insertions(+), 1 deletion(-)

diff --git a/drivers/gpu/drm/i915/display/intel_dp.c b/drivers/gpu/drm/i915/display/intel_dp.c
index 5ee953aaa00c..91e67735a45c 100644
--- a/drivers/gpu/drm/i915/display/intel_dp.c
+++ b/drivers/gpu/drm/i915/display/intel_dp.c
@@ -3063,7 +3063,8 @@ void intel_read_dp_sdp(struct intel_encoder *encoder,
 		       struct intel_crtc_state *crtc_state,
 		       unsigned int type)
 {
-	if (encoder->type != INTEL_OUTPUT_DDI)
+	if (encoder->type != INTEL_OUTPUT_DDI &&
+	    encoder->type != INTEL_OUTPUT_EDP)
 		return;
 
 	switch (type) {
-- 
2.20.1

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
