Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id D07A11DF0AA
	for <lists+intel-gfx@lfdr.de>; Fri, 22 May 2020 22:33:22 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id F23FF6E107;
	Fri, 22 May 2020 20:33:20 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga11.intel.com (mga11.intel.com [192.55.52.93])
 by gabe.freedesktop.org (Postfix) with ESMTPS id BB1C36E107
 for <intel-gfx@lists.freedesktop.org>; Fri, 22 May 2020 20:33:19 +0000 (UTC)
IronPort-SDR: eNFRzf1hVVi2uSkG8TavFdb4hzBJAfhVok4qbolkPcw+Ez+WOKXI3GgcTpW9AYHBEtLmM6ogLQ
 bJOfgfhyrFww==
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga005.jf.intel.com ([10.7.209.41])
 by fmsmga102.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 22 May 2020 13:33:19 -0700
IronPort-SDR: X+jSMzB3x3Wp6F99iiXCp8mi4G0YrBo4wjjeZHkiYU8h1BvZkwqYmPD66yWVa+uyuZGZF5GteH
 6hEzYpjDbWVw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.73,423,1583222400"; d="scan'208";a="440980408"
Received: from orsmsx107.amr.corp.intel.com ([10.22.240.5])
 by orsmga005.jf.intel.com with ESMTP; 22 May 2020 13:33:19 -0700
Received: from orsmsx153.amr.corp.intel.com (10.22.226.247) by
 ORSMSX107.amr.corp.intel.com (10.22.240.5) with Microsoft SMTP Server (TLS)
 id 14.3.439.0; Fri, 22 May 2020 13:33:18 -0700
Received: from vkasired-desk2.fm.intel.com (10.22.254.138) by
 ORSMSX153.amr.corp.intel.com (10.22.226.247) with Microsoft SMTP Server (TLS)
 id 14.3.439.0; Fri, 22 May 2020 13:33:18 -0700
From: Vivek Kasireddy <vivek.kasireddy@intel.com>
To: <intel-gfx@lists.freedesktop.org>
Date: Fri, 22 May 2020 13:26:30 -0700
Message-ID: <20200522202630.7604-1-vivek.kasireddy@intel.com>
X-Mailer: git-send-email 2.21.1
In-Reply-To: <20200507010103.16040-1-vivek.kasireddy@intel.com>
References: <20200507010103.16040-1-vivek.kasireddy@intel.com>
MIME-Version: 1.0
X-Originating-IP: [10.22.254.138]
Subject: [Intel-gfx] [PATCH] drm/i915/dsi: Dont forget to clean up the
 connector on error (v2)
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
Cc: Jani Nikula <jani.nikula@intel.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

If an error is encountered during the DSI initialization setup, the
drm connector object also needs to be cleaned up along with the encoder.
The error can happen due to a missing mode in the VBT or for other
reasons.

v2: Rephrase the commit message to make it more clear.

Cc: Jani Nikula <jani.nikula@intel.com>
Cc: Vandita Kulkarni <vandita.kulkarni@intel.com>
Signed-off-by: Vivek Kasireddy <vivek.kasireddy@intel.com>
---
 drivers/gpu/drm/i915/display/icl_dsi.c | 1 +
 1 file changed, 1 insertion(+)

diff --git a/drivers/gpu/drm/i915/display/icl_dsi.c b/drivers/gpu/drm/i915/display/icl_dsi.c
index 4fec5bd64920..f93f72463df5 100644
--- a/drivers/gpu/drm/i915/display/icl_dsi.c
+++ b/drivers/gpu/drm/i915/display/icl_dsi.c
@@ -1954,6 +1954,7 @@ void icl_dsi_init(struct drm_i915_private *dev_priv)
 	return;
 
 err:
+	drm_connector_cleanup(connector);
 	drm_encoder_cleanup(&encoder->base);
 	kfree(intel_dsi);
 	kfree(intel_connector);
-- 
2.21.1

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
