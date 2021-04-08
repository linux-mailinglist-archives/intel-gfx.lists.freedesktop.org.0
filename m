Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 9DDF3357E52
	for <lists+intel-gfx@lfdr.de>; Thu,  8 Apr 2021 10:43:22 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id CDAC86EA2C;
	Thu,  8 Apr 2021 08:43:19 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 8F8266EA2C
 for <intel-gfx@lists.freedesktop.org>; Thu,  8 Apr 2021 08:43:18 +0000 (UTC)
IronPort-SDR: tscLvB3nD20AYMd6NSo2p768RD6/ToqzqR2ta+4nZf56U1+dHdKzJkdOnHXO9sXIeYz9ZRG07X
 K0HYlF7Q2qow==
X-IronPort-AV: E=McAfee;i="6000,8403,9947"; a="213896403"
X-IronPort-AV: E=Sophos;i="5.82,205,1613462400"; d="scan'208";a="213896403"
Received: from fmsmga007.fm.intel.com ([10.253.24.52])
 by fmsmga101.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 08 Apr 2021 01:43:17 -0700
IronPort-SDR: Fw83629suhAycwN4l1BjBtUxuBefC0gbA+DEbiv3jzGiB7bwzhZcKagFRHFBCxCYS3tfLVTmI/
 YGe2sR6wcXNw==
X-IronPort-AV: E=Sophos;i="5.82,205,1613462400"; d="scan'208";a="387309064"
Received: from unknown (HELO genxfsim-desktop.iind.intel.com) ([10.223.74.179])
 by fmsmga007-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 08 Apr 2021 01:43:15 -0700
From: Anshuman Gupta <anshuman.gupta@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Thu,  8 Apr 2021 13:56:42 +0530
Message-Id: <20210408082642.27066-1-anshuman.gupta@intel.com>
X-Mailer: git-send-email 2.26.2
In-Reply-To: <20210406101421.723-1-anshuman.gupta@intel.com>
References: <20210406101421.723-1-anshuman.gupta@intel.com>
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH v2] drm/i915/hdcp: Fix uninitialized symbol
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

v2:
- use ktime_set(0, 0) instead to initialize to zero. [Ankit]

Reported-by: kernel test robot <lkp@intel.com>
Reported-by: Dan Carpenter <dan.carpenter@oracle.com>
Signed-off-by: Anshuman Gupta <anshuman.gupta@intel.com>
---
 drivers/gpu/drm/i915/display/intel_dp_hdcp.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/gpu/drm/i915/display/intel_dp_hdcp.c b/drivers/gpu/drm/i915/display/intel_dp_hdcp.c
index 90868e156c69..2dd9360bdf9a 100644
--- a/drivers/gpu/drm/i915/display/intel_dp_hdcp.c
+++ b/drivers/gpu/drm/i915/display/intel_dp_hdcp.c
@@ -532,7 +532,7 @@ int intel_dp_hdcp2_read_msg(struct intel_digital_port *dig_port,
 	u8 *byte = buf;
 	ssize_t ret, bytes_to_recv, len;
 	const struct hdcp2_dp_msg_data *hdcp2_msg_data;
-	ktime_t msg_end;
+	ktime_t msg_end = ktime_set(0, 0);
 	bool msg_expired;
 
 	hdcp2_msg_data = get_hdcp2_dp_msg_data(msg_id);
-- 
2.26.2

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
