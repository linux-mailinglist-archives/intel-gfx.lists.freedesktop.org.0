Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 092761B0E2E
	for <lists+intel-gfx@lfdr.de>; Mon, 20 Apr 2020 16:20:34 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 1571C6E595;
	Mon, 20 Apr 2020 14:20:32 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga12.intel.com (mga12.intel.com [192.55.52.136])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 1F29C6E595
 for <intel-gfx@lists.freedesktop.org>; Mon, 20 Apr 2020 14:20:31 +0000 (UTC)
IronPort-SDR: TmVejimAxByZsgROwDCeqQRDAiuvNG8SIju1m7Zok4rqWmtOE8tKFPUdmAw/mNtiLYsa0bV/sj
 yZeaz4aVllWA==
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga005.jf.intel.com ([10.7.209.41])
 by fmsmga106.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 20 Apr 2020 07:20:26 -0700
IronPort-SDR: JlJiCnw/u+EwXfkF1TD/toMkdZ4hhR7BXlyDAxJliq+a/HS/QnrfSfQEITb0B3on7M3DgAWvm2
 sPxGk7XcK34w==
X-IronPort-AV: E=Sophos;i="5.72,406,1580803200"; d="scan'208";a="429142138"
Received: from iastakh-mobl.ccr.corp.intel.com (HELO localhost)
 ([10.252.63.229])
 by orsmga005-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 20 Apr 2020 07:20:24 -0700
From: Jani Nikula <jani.nikula@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Mon, 20 Apr 2020 17:20:19 +0300
Message-Id: <20200420142020.27340-1-jani.nikula@intel.com>
X-Mailer: git-send-email 2.20.1
MIME-Version: 1.0
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
Subject: [Intel-gfx] [CI 1/2] drm/dsc: use rc_model_size from DSC config for
 PPS
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
Cc: jani.nikula@intel.com, Alex Deucher <alexdeucher@gmail.com>,
 Harry Wentland <hwentlan@amd.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

The PPS is supposed to reflect the DSC config instead of hard coding the
rc_model_size. Make it so.

Currently all users of drm_dsc_pps_payload_pack() hard code the size to
8192 also in the DSC config, so this change should have no impact, other
than allowing the drivers to use other sizes as needed.

Cc: Alex Deucher <alexdeucher@gmail.com>
Cc: Harry Wentland <hwentlan@amd.com>
Cc: Manasi Navare <manasi.d.navare@intel.com>
Cc: Vandita Kulkarni <vandita.kulkarni@intel.com>
Reviewed-by: Vandita Kulkarni <vandita.kulkarni@intel.com>
Signed-off-by: Jani Nikula <jani.nikula@intel.com>
---
 drivers/gpu/drm/drm_dsc.c | 3 +--
 1 file changed, 1 insertion(+), 2 deletions(-)

diff --git a/drivers/gpu/drm/drm_dsc.c b/drivers/gpu/drm/drm_dsc.c
index 4a475d9696ff..09afbc01ea94 100644
--- a/drivers/gpu/drm/drm_dsc.c
+++ b/drivers/gpu/drm/drm_dsc.c
@@ -186,8 +186,7 @@ void drm_dsc_pps_payload_pack(struct drm_dsc_picture_parameter_set *pps_payload,
 	pps_payload->flatness_max_qp = dsc_cfg->flatness_max_qp;
 
 	/* PPS 38, 39 */
-	pps_payload->rc_model_size =
-		cpu_to_be16(DSC_RC_MODEL_SIZE_CONST);
+	pps_payload->rc_model_size = cpu_to_be16(dsc_cfg->rc_model_size);
 
 	/* PPS 40 */
 	pps_payload->rc_edge_factor = DSC_RC_EDGE_FACTOR_CONST;
-- 
2.20.1

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
