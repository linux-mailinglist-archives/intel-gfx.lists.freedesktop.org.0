Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 63240343992
	for <lists+intel-gfx@lfdr.de>; Mon, 22 Mar 2021 07:38:37 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 3CDE46E2EF;
	Mon, 22 Mar 2021 06:38:35 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga03.intel.com (mga03.intel.com [134.134.136.65])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 5A83F6E0F8
 for <intel-gfx@lists.freedesktop.org>; Mon, 22 Mar 2021 06:38:34 +0000 (UTC)
IronPort-SDR: 9H1ZQM/6ZKq8HkaACfYIQtEibKEvBAf7y/E1VBfE0XVXOrosWqGrYiNzqXYE3EAqkQm/zHvX/d
 dXE6UNl8dwlg==
X-IronPort-AV: E=McAfee;i="6000,8403,9930"; a="190238756"
X-IronPort-AV: E=Sophos;i="5.81,268,1610438400"; d="scan'208";a="190238756"
Received: from orsmga001.jf.intel.com ([10.7.209.18])
 by orsmga103.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 21 Mar 2021 23:38:31 -0700
IronPort-SDR: OD88QqwoZVEa69k1AtT6AhruSHhxpD4pat7cIKEk+zPkeIMNgFKhpFuWOHNr1Mad45TEgT3idO
 fUJszY7nELhg==
X-IronPort-AV: E=Sophos;i="5.81,268,1610438400"; d="scan'208";a="451627132"
Received: from bhanu-nuclab.iind.intel.com ([10.145.162.173])
 by orsmga001-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 21 Mar 2021 23:38:30 -0700
From: Bhanuprakash Modem <bhanuprakash.modem@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Mon, 22 Mar 2021 20:00:08 +0530
Message-Id: <20210322143008.29250-8-bhanuprakash.modem@intel.com>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20210322143008.29250-1-bhanuprakash.modem@intel.com>
References: <20210322143008.29250-1-bhanuprakash.modem@intel.com>
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH 7/7] FOR_TESTING_ONLY: Print coeffs of hw and sw
 CTM
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

Signed-off-by: Bhanuprakash Modem <bhanuprakash.modem@intel.com>
---
 drivers/gpu/drm/i915/display/intel_color.c | 5 +++++
 1 file changed, 5 insertions(+)

diff --git a/drivers/gpu/drm/i915/display/intel_color.c b/drivers/gpu/drm/i915/display/intel_color.c
index 8f9727553c45..caf4c3442b9e 100644
--- a/drivers/gpu/drm/i915/display/intel_color.c
+++ b/drivers/gpu/drm/i915/display/intel_color.c
@@ -1909,6 +1909,8 @@ bool intel_csc_equal(const struct intel_crtc_state *current_config,
 	u16 coeffs[9];
 	int i;
 
+	DRM_DEBUG_KMS("Bhanu debug--> sw_ctm[%s] hw_ctm[%s]", yesno(!!blob1), yesno(!!blob2));
+
 	if (!blob1 != !blob2)
 		return false;
 
@@ -1923,6 +1925,9 @@ bool intel_csc_equal(const struct intel_crtc_state *current_config,
 	else
 		ilk_csc_convert_ctm(current_config, coeffs);
 
+	for (i = 0; i < 9; i++)
+		DRM_DEBUG_KMS("Bhanu debug--> sw_ctm[%d]=0x%x hw_ctm[%d]=0x%llx", i, coeffs[i], i, ctm2->matrix[i]);
+
 	for (i = 0; i < 9; i++) {
 		if (abs(coeffs[i] - ctm2->matrix[i]))
 			return false;
-- 
2.20.1

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
