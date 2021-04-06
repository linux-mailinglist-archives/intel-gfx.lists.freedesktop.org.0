Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 4FD523550E9
	for <lists+intel-gfx@lfdr.de>; Tue,  6 Apr 2021 12:31:47 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 553F66E3BB;
	Tue,  6 Apr 2021 10:31:44 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga04.intel.com (mga04.intel.com [192.55.52.120])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 9D1226E3BB
 for <intel-gfx@lists.freedesktop.org>; Tue,  6 Apr 2021 10:31:43 +0000 (UTC)
IronPort-SDR: 3kYG02ZEaPkIRv8HvGBtbY6D8SCSSFOY7iT2lc+uQ7g40zaasJl39tNU0+epM5o9XLFxcJJMsJ
 5EQhatYsTKFQ==
X-IronPort-AV: E=McAfee;i="6000,8403,9945"; a="190868228"
X-IronPort-AV: E=Sophos;i="5.81,309,1610438400"; d="scan'208";a="190868228"
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
 by fmsmga104.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 06 Apr 2021 03:31:41 -0700
IronPort-SDR: Zixxo62yIZhI8NqhWL056mJuO68zyBo6xaY0Xrvt+JOrrMjh235g3XYIWlOMsTyIhnBC4Bl5yz
 5MeCEtrLff9g==
X-IronPort-AV: E=Sophos;i="5.81,309,1610438400"; d="scan'208";a="518984526"
Received: from unknown (HELO genxfsim-desktop.iind.intel.com) ([10.223.74.179])
 by fmsmga001-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 06 Apr 2021 03:31:39 -0700
From: Anshuman Gupta <anshuman.gupta@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Tue,  6 Apr 2021 15:44:21 +0530
Message-Id: <20210406101421.723-1-anshuman.gupta@intel.com>
X-Mailer: git-send-email 2.26.2
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH] drm/i915/hdcp: Fix uninitialized symbol
 'msg_end'
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
Cc: Dan Carpenter <dan.carpenter@oracle.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

Fix static analysis tool uninitialized symbol error.

Reported-by: kernel test robot <lkp@intel.com>
Reported-by: Dan Carpenter <dan.carpenter@oracle.com>
Signed-off-by: Anshuman Gupta <anshuman.gupta@intel.com>
---
 drivers/gpu/drm/i915/display/intel_dp_hdcp.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/gpu/drm/i915/display/intel_dp_hdcp.c b/drivers/gpu/drm/i915/display/intel_dp_hdcp.c
index 90868e156c69..a4373fb2817b 100644
--- a/drivers/gpu/drm/i915/display/intel_dp_hdcp.c
+++ b/drivers/gpu/drm/i915/display/intel_dp_hdcp.c
@@ -532,7 +532,7 @@ int intel_dp_hdcp2_read_msg(struct intel_digital_port *dig_port,
 	u8 *byte = buf;
 	ssize_t ret, bytes_to_recv, len;
 	const struct hdcp2_dp_msg_data *hdcp2_msg_data;
-	ktime_t msg_end;
+	ktime_t msg_end = 0;
 	bool msg_expired;
 
 	hdcp2_msg_data = get_hdcp2_dp_msg_data(msg_id);
-- 
2.26.2

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
