Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 68D0B2A6DBD
	for <lists+intel-gfx@lfdr.de>; Wed,  4 Nov 2020 20:21:47 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id BBF4D6E247;
	Wed,  4 Nov 2020 19:21:45 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga14.intel.com (mga14.intel.com [192.55.52.115])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 26B496E247
 for <intel-gfx@lists.freedesktop.org>; Wed,  4 Nov 2020 19:21:45 +0000 (UTC)
IronPort-SDR: lnOWlGGxlYZBXLAd+JFtZMMcNYQ8PNmZinpQKDrJl03RMDlEqvMA8kSgn3u3d9aXZKRz6ucM2B
 zJeBspB+v87w==
X-IronPort-AV: E=McAfee;i="6000,8403,9795"; a="168491317"
X-IronPort-AV: E=Sophos;i="5.77,451,1596524400"; d="scan'208";a="168491317"
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga005.fm.intel.com ([10.253.24.32])
 by fmsmga103.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 04 Nov 2020 11:21:45 -0800
IronPort-SDR: FkUG3/zm7YpgYdvqiH9YhxCEn2P9CakZZbgbnp4gv2bo9x/8OUkNbRrc4/w8B1N7CmJ0Pshe3Z
 N4hAEXMAvzuw==
X-IronPort-AV: E=Sophos;i="5.77,451,1596524400"; d="scan'208";a="529045129"
Received: from linux-desktop.iind.intel.com ([10.223.34.173])
 by fmsmga005-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 04 Nov 2020 11:21:43 -0800
From: Uma Shankar <uma.shankar@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Thu,  5 Nov 2020 01:26:03 +0530
Message-Id: <20201104195604.3334-2-uma.shankar@intel.com>
X-Mailer: git-send-email 2.26.2
In-Reply-To: <20201104195604.3334-1-uma.shankar@intel.com>
References: <20201104195604.3334-1-uma.shankar@intel.com>
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH 1/2] drm/i915/display/tgl: Disable FBC with PSR2
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

There are some corner cases wrt underrun when we enable
FBC with PSR2 on TGL. Recommendation from hardware is to
keep this combination disabled.

Signed-off-by: Uma Shankar <uma.shankar@intel.com>
---
 drivers/gpu/drm/i915/display/intel_fbc.c | 6 ++++++
 1 file changed, 6 insertions(+)

diff --git a/drivers/gpu/drm/i915/display/intel_fbc.c b/drivers/gpu/drm/i915/display/intel_fbc.c
index a5b072816a7b..32c411414908 100644
--- a/drivers/gpu/drm/i915/display/intel_fbc.c
+++ b/drivers/gpu/drm/i915/display/intel_fbc.c
@@ -799,6 +799,12 @@ static bool intel_fbc_can_activate(struct intel_crtc *crtc)
 	struct intel_fbc *fbc = &dev_priv->fbc;
 	struct intel_fbc_state_cache *cache = &fbc->state_cache;
 
+	if (dev_priv->psr.sink_psr2_support &&
+	    IS_TIGERLAKE(dev_priv)) {
+		fbc->no_fbc_reason = "not supported with PSR2";
+		return false;
+	}
+
 	if (!intel_fbc_can_enable(dev_priv))
 		return false;
 
-- 
2.26.2

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
