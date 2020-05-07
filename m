Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id EE0961C7FB4
	for <lists+intel-gfx@lfdr.de>; Thu,  7 May 2020 03:07:11 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 1E5AB6E037;
	Thu,  7 May 2020 01:07:10 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga17.intel.com (mga17.intel.com [192.55.52.151])
 by gabe.freedesktop.org (Postfix) with ESMTPS id B49086E037
 for <intel-gfx@lists.freedesktop.org>; Thu,  7 May 2020 01:07:08 +0000 (UTC)
IronPort-SDR: 4JCu5zdWuST4pN/LE1ZrK6sW4H2xajmOpmgnnqU/wdKmOEsEcnm7KzTZyVcKefJ7D4YnjSqATy
 184lpUIfQmuQ==
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga007.jf.intel.com ([10.7.209.58])
 by fmsmga107.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 06 May 2020 18:07:08 -0700
IronPort-SDR: eOiUZjCbbVCU8SPJ86F/IrCXMcN2la+2T/1KQWDmqLwdBu83JdWr8gU3SwMSTEGnvg+rmHYaI1
 RVQXAh7OmOrA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.73,361,1583222400"; d="scan'208";a="249120083"
Received: from orsmsx110.amr.corp.intel.com ([10.22.240.8])
 by orsmga007.jf.intel.com with ESMTP; 06 May 2020 18:07:08 -0700
Received: from vkasired-desk2.fm.intel.com (10.22.254.140) by
 ORSMSX110.amr.corp.intel.com (10.22.240.8) with Microsoft SMTP Server (TLS)
 id 14.3.439.0; Wed, 6 May 2020 18:07:07 -0700
From: Vivek Kasireddy <vivek.kasireddy@intel.com>
To: <intel-gfx@lists.freedesktop.org>
Date: Wed, 6 May 2020 18:01:03 -0700
Message-ID: <20200507010103.16040-1-vivek.kasireddy@intel.com>
X-Mailer: git-send-email 2.21.1
MIME-Version: 1.0
X-Originating-IP: [10.22.254.140]
Subject: [Intel-gfx] [PATCH] drm/i915/dsi: Dont forget to clean up the
 connector on error
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

During the DSI initialization setup, after instantiating the relevant
drm connector and encoder objects, the connector also needs to be
cleaned up along with the encoder if an error is encountered. The error
can happen due to a missing mode in the VBT or for other reasons.

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
