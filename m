Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 8C1AB29A9B4
	for <lists+intel-gfx@lfdr.de>; Tue, 27 Oct 2020 11:33:46 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 01CC66E21B;
	Tue, 27 Oct 2020 10:33:45 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga05.intel.com (mga05.intel.com [192.55.52.43])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 0BB266E21B
 for <intel-gfx@lists.freedesktop.org>; Tue, 27 Oct 2020 10:33:44 +0000 (UTC)
IronPort-SDR: rkSLEJ8vG+673j/yQSzHhpQLkn4r1lQ6dxx54WmRQRnRXWZc8F7WuaA0IllH0ugrXSOQpUWCxu
 GCv3cD/lClvA==
X-IronPort-AV: E=McAfee;i="6000,8403,9786"; a="252757046"
X-IronPort-AV: E=Sophos;i="5.77,423,1596524400"; d="scan'208";a="252757046"
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga001.jf.intel.com ([10.7.209.18])
 by fmsmga105.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 27 Oct 2020 03:33:42 -0700
IronPort-SDR: pnamfQ0CCOvMB9+FmzBpj/DfmBQkNiQ14GQe+jo3tLaKUJINoBEwL/roHWtBSa99ujMWh2hLv5
 5GeSINlTPaAQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.77,423,1596524400"; d="scan'208";a="394420973"
Received: from rkl2-rocket-lake-client-platform.iind.intel.com
 ([10.145.162.199])
 by orsmga001.jf.intel.com with ESMTP; 27 Oct 2020 03:33:36 -0700
From: Kamati Srinivas <srinivasx.k@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Tue, 27 Oct 2020 16:03:35 +0530
Message-Id: <20201027103335.3725-1-srinivasx.k@intel.com>
X-Mailer: git-send-email 2.25.1
MIME-Version: 1.0
Subject: [Intel-gfx] drm/i915: Acquire connector reference before prop_work
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
Cc: seanpaul@chromium.org, hariom.pandey@intel.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

From: Srinivas Kamati <srinivasx.k@intel.com>

"Content protection type change" igt test results in kernel
taint. Everytime after prop_work is done we are also
giving up connector reference, which is resulting in ref
count underrun.

Before scheduling prop_work acquire connector reference.

Cc: Sean Paul <seanpaul@chromium.org>
Cc: Ramalingam C <ramalingam.c@intel.com>
Signed-off-by: Srinivas Kamati <srinivasx.k@intel.com>
---
 drivers/gpu/drm/i915/display/intel_hdcp.c | 1 +
 1 file changed, 1 insertion(+)

diff --git a/drivers/gpu/drm/i915/display/intel_hdcp.c b/drivers/gpu/drm/i915/display/intel_hdcp.c
index b2a4bbcfdcd2..beedd672b21e 100644
--- a/drivers/gpu/drm/i915/display/intel_hdcp.c
+++ b/drivers/gpu/drm/i915/display/intel_hdcp.c
@@ -2210,6 +2210,7 @@ void intel_hdcp_update_pipe(struct intel_atomic_state *state,
 	if (content_protection_type_changed) {
 		mutex_lock(&hdcp->mutex);
 		hdcp->value = DRM_MODE_CONTENT_PROTECTION_DESIRED;
+		drm_connector_get(&connector->base);
 		schedule_work(&hdcp->prop_work);
 		mutex_unlock(&hdcp->mutex);
 	}
-- 
2.25.1

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
