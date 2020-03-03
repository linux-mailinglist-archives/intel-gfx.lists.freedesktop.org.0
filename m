Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 38B26177064
	for <lists+intel-gfx@lfdr.de>; Tue,  3 Mar 2020 08:50:04 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 3C3A16E9C2;
	Tue,  3 Mar 2020 07:50:02 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
 by gabe.freedesktop.org (Postfix) with ESMTPS id C59E06E9C1
 for <intel-gfx@lists.freedesktop.org>; Tue,  3 Mar 2020 07:50:00 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga007.fm.intel.com ([10.253.24.52])
 by orsmga101.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 02 Mar 2020 23:49:59 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.70,510,1574150400"; d="scan'208";a="232185934"
Received: from unknown (HELO genxfsim-desktop.iind.intel.com) ([10.223.74.178])
 by fmsmga007.fm.intel.com with ESMTP; 02 Mar 2020 23:49:57 -0800
From: Anshuman Gupta <anshuman.gupta@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Tue,  3 Mar 2020 13:08:38 +0530
Message-Id: <20200303073838.25871-1-anshuman.gupta@intel.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20200220123217.23635-3-anshuman.gupta@intel.com>
References: <20200220123217.23635-3-anshuman.gupta@intel.com>
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH v4 2/2] drm/i915/hdcp: Fix config_stream_type()
 ret value
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

DP shim's config_stream_type considered to be succeeded when
return value of intel_dp_hdcp2_write_msg() equals to size of
message to be written, it makes config_stream_type to return
a zero success value in order to succeed the HDCP auth.

v2:
- config_stream_type() returns 0 on success. [Ram]

CC: Ramalingam C <ramalingam.c@intel.com>
Signed-off-by: Anshuman Gupta <anshuman.gupta@intel.com>
---
 drivers/gpu/drm/i915/display/intel_dp.c | 6 +++++-
 1 file changed, 5 insertions(+), 1 deletion(-)

diff --git a/drivers/gpu/drm/i915/display/intel_dp.c b/drivers/gpu/drm/i915/display/intel_dp.c
index 2db8d46f61a1..588d0bf37349 100644
--- a/drivers/gpu/drm/i915/display/intel_dp.c
+++ b/drivers/gpu/drm/i915/display/intel_dp.c
@@ -6448,6 +6448,7 @@ static
 int intel_dp_hdcp2_config_stream_type(struct intel_digital_port *intel_dig_port,
 				      bool is_repeater, u8 content_type)
 {
+	int ret;
 	struct hdcp2_dp_errata_stream_type stream_type_msg;
 
 	if (is_repeater)
@@ -6463,8 +6464,11 @@ int intel_dp_hdcp2_config_stream_type(struct intel_digital_port *intel_dig_port,
 	stream_type_msg.msg_id = HDCP_2_2_ERRATA_DP_STREAM_TYPE;
 	stream_type_msg.stream_type = content_type;
 
-	return intel_dp_hdcp2_write_msg(intel_dig_port, &stream_type_msg,
+	ret =  intel_dp_hdcp2_write_msg(intel_dig_port, &stream_type_msg,
 					sizeof(stream_type_msg));
+
+	return ret < 0 ? ret : 0;
+
 }
 
 static
-- 
2.25.1

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
