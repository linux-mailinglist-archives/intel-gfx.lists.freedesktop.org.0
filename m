Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id D12325B096C
	for <lists+intel-gfx@lfdr.de>; Wed,  7 Sep 2022 18:00:00 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 4283C10E7DD;
	Wed,  7 Sep 2022 15:59:57 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 6FC9010E347
 for <intel-gfx@lists.freedesktop.org>; Wed,  7 Sep 2022 15:59:44 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1662566384; x=1694102384;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=k8WXuqM2Btnztwxu+hZDAOvoXEutBVbE7ajm9wvLA1E=;
 b=WLj9P4G2pigsX2LTMfpISqXarm7sHbCUGn/P2mYWNX/WoyhQ89UPef5C
 VGrp3ffkX9vI3RNaNYkt3qi26Iku+kEBSMM45a++AWsEIpg4gmUbfNPCQ
 L3ghdL/vGRfEafNY8kZTfE2fStKN5OfHsIjAmCivtWTyn4LzR/LQzl4pK
 /YLOlTw5jZxCsS8z+xfpdJ/lmnJ++T3Kpvdr/hxtzI9R+pifd546BajAo
 SZJ/U42SZSIYz/P5EqUpXwCi5+5m8dk9rWxxOmIoZSB11GLnjZjFYv+w1
 KflVC2kjWP3y2RPDbr+e8LpQyw8qgfS+tnA2Q1Bu+uPBhYvTX2ybt892+ g==;
X-IronPort-AV: E=McAfee;i="6500,9779,10463"; a="297701445"
X-IronPort-AV: E=Sophos;i="5.93,297,1654585200"; d="scan'208";a="297701445"
Received: from fmsmga008.fm.intel.com ([10.253.24.58])
 by orsmga102.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 07 Sep 2022 08:59:22 -0700
X-IronPort-AV: E=Sophos;i="5.93,297,1654585200"; d="scan'208";a="676248078"
Received: from twinkler-lnx.jer.intel.com ([10.12.87.143])
 by fmsmga008-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 07 Sep 2022 08:59:18 -0700
From: Tomas Winkler <tomas.winkler@intel.com>
To: Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 David Airlie <airlied@linux.ie>, Daniel Vetter <daniel@ffwll.ch>
Date: Wed,  7 Sep 2022 18:58:07 +0300
Message-Id: <20220907155813.1427526-11-tomas.winkler@intel.com>
X-Mailer: git-send-email 2.37.2
In-Reply-To: <20220907155813.1427526-1-tomas.winkler@intel.com>
References: <20220907155813.1427526-1-tomas.winkler@intel.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH v8 10/16] mei: mkhi: add memory ready command
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
Cc: intel-gfx@lists.freedesktop.org,
 Alexander Usyskin <alexander.usyskin@intel.com>, linux-kernel@vger.kernel.org,
 Rodrigo Vivi <rodrigo.vivi@intel.com>, Tomas Winkler <tomas.winkler@intel.com>,
 Vitaly Lubart <vitaly.lubart@intel.com>
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

Add GSC memory ready command.
The command indicates to the firmware that extend operation
memory was setup and the firmware may enter PXP mode.

CC: Daniele Ceraolo Spurio <daniele.ceraolospurio@intel.com>
Signed-off-by: Tomas Winkler <tomas.winkler@intel.com>
Signed-off-by: Alexander Usyskin <alexander.usyskin@intel.com>
---
 drivers/misc/mei/mkhi.h | 12 ++++++++++++
 1 file changed, 12 insertions(+)

diff --git a/drivers/misc/mei/mkhi.h b/drivers/misc/mei/mkhi.h
index 43cadfb1b990..c9d0b2b9dfa0 100644
--- a/drivers/misc/mei/mkhi.h
+++ b/drivers/misc/mei/mkhi.h
@@ -30,6 +30,13 @@
 /* Allow transition to PXP mode without approval */
 #define MKHI_GFX_MEM_READY_PXP_ALLOWED  0x1
 
+#define MKHI_GROUP_ID_GFX              0x30
+#define MKHI_GFX_RESET_WARN_CMD_REQ    0x0
+#define MKHI_GFX_MEMORY_READY_CMD_REQ  0x1
+
+/* Allow transition to PXP mode without approval */
+#define MKHI_GFX_MEM_READY_PXP_ALLOWED  0x1
+
 struct mkhi_rule_id {
 	__le16 rule_type;
 	u8 feature_id;
@@ -54,4 +61,9 @@ struct mkhi_msg {
 	u8 data[];
 } __packed;
 
+struct mkhi_gfx_mem_ready {
+	struct mkhi_msg_hdr hdr;
+	u32    flags;
+} __packed;
+
 #endif /* _MEI_MKHI_H_ */
-- 
2.37.2

