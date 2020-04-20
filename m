Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 406B61B0DD7
	for <lists+intel-gfx@lfdr.de>; Mon, 20 Apr 2020 16:04:47 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 88F516E58E;
	Mon, 20 Apr 2020 14:04:45 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga12.intel.com (mga12.intel.com [192.55.52.136])
 by gabe.freedesktop.org (Postfix) with ESMTPS id C90736E58E
 for <intel-gfx@lists.freedesktop.org>; Mon, 20 Apr 2020 14:04:43 +0000 (UTC)
IronPort-SDR: 2BiFY+UODrjbfcQJYbbmEuLOrmckUWQ5h3iyPIobKZ+cSHaDi/QQ1ML3taEyaJ9BOVUcad9oyh
 wK6/JE3Ei7tQ==
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga005.jf.intel.com ([10.7.209.41])
 by fmsmga106.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 20 Apr 2020 07:04:43 -0700
IronPort-SDR: /49YWqJQ0/Yl2VMUml1LGByeWRk0r1dXngsCShyBlYpKwJp8473XyCbmhHAfb6jm5IHl91apFo
 /ALQcV+bx+HA==
X-IronPort-AV: E=Sophos;i="5.72,406,1580803200"; d="scan'208";a="429136102"
Received: from iastakh-mobl.ccr.corp.intel.com (HELO localhost)
 ([10.252.63.229])
 by orsmga005-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 20 Apr 2020 07:04:41 -0700
From: Jani Nikula <jani.nikula@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Mon, 20 Apr 2020 17:04:37 +0300
Message-Id: <20200420140438.14672-1-jani.nikula@intel.com>
X-Mailer: git-send-email 2.20.1
MIME-Version: 1.0
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
Subject: [Intel-gfx] [PATCH 1/2] drm/i915/hdmi: remove unused
 intel_hdmi_hdcp2_protocol()
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
Cc: jani.nikula@intel.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

Unused, hiding from the compiler warnings behind the inline keyword.

Signed-off-by: Jani Nikula <jani.nikula@intel.com>
---
 drivers/gpu/drm/i915/display/intel_hdmi.c | 6 ------
 1 file changed, 6 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_hdmi.c b/drivers/gpu/drm/i915/display/intel_hdmi.c
index 9c058f7aa185..54412f79f0c5 100644
--- a/drivers/gpu/drm/i915/display/intel_hdmi.c
+++ b/drivers/gpu/drm/i915/display/intel_hdmi.c
@@ -1750,12 +1750,6 @@ int intel_hdmi_hdcp2_capable(struct intel_digital_port *intel_dig_port,
 	return ret;
 }
 
-static inline
-enum hdcp_wired_protocol intel_hdmi_hdcp2_protocol(void)
-{
-	return HDCP_PROTOCOL_HDMI;
-}
-
 static const struct intel_hdcp_shim intel_hdmi_hdcp_shim = {
 	.write_an_aksv = intel_hdmi_hdcp_write_an_aksv,
 	.read_bksv = intel_hdmi_hdcp_read_bksv,
-- 
2.20.1

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
