Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 0471D5B0F8A
	for <lists+intel-gfx@lfdr.de>; Wed,  7 Sep 2022 23:52:27 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id A55C710E8DB;
	Wed,  7 Sep 2022 21:52:24 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga06.intel.com (mga06b.intel.com [134.134.136.31])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 443C410E8DE
 for <intel-gfx@lists.freedesktop.org>; Wed,  7 Sep 2022 21:52:12 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1662587532; x=1694123532;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=KBsG7ppneVMzQMeXF0dx5cWmvIENucelny52hbNLWdE=;
 b=D1tQZpw6b4VWkatKEunxeNeW/W0CxCFKIVZe60otWHBWUsxoKNPr7QFH
 hVgydnkAd6yZmBiSoAklg+MH5hecFwmKwN935p+MqxVZCjmuyeB8OGoE4
 VvZLLYz8g0JrSM6MNZjl/BNhfRnK5vcdTS0g7C7GVX4L01uA2pB3eW4P7
 fUQaieK2WxgMyqtvcMxikvoGHbZefugVJX8B5HfDEod+ledBlwZjCuvBl
 ToTYXULyZxD5fzleCcVND6nmFRrviQxZyLpDE00xh0im0U3RA0RiV3Lor
 q+y8UEm1gqpcg8rzZ3HmAOlhD6Hw1dYO8aqQ1tJO/E5Rh3UZtNCoInxHC A==;
X-IronPort-AV: E=McAfee;i="6500,9779,10463"; a="358738925"
X-IronPort-AV: E=Sophos;i="5.93,298,1654585200"; d="scan'208";a="358738925"
Received: from orsmga005.jf.intel.com ([10.7.209.41])
 by orsmga104.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 07 Sep 2022 14:52:11 -0700
X-IronPort-AV: E=Sophos;i="5.93,298,1654585200"; d="scan'208";a="790207996"
Received: from twinkler-lnx.jer.intel.com ([10.12.87.143])
 by orsmga005-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 07 Sep 2022 14:52:05 -0700
From: Tomas Winkler <tomas.winkler@intel.com>
To: Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 David Airlie <airlied@linux.ie>, Daniel Vetter <daniel@ffwll.ch>
Date: Thu,  8 Sep 2022 00:51:07 +0300
Message-Id: <20220907215113.1596567-11-tomas.winkler@intel.com>
X-Mailer: git-send-email 2.37.2
In-Reply-To: <20220907215113.1596567-1-tomas.winkler@intel.com>
References: <20220907215113.1596567-1-tomas.winkler@intel.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH v9 10/16] mei: mkhi: add memory ready command
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
V9: Fix duplicated defines caused by wrong --amend

 drivers/misc/mei/mkhi.h | 12 ++++++++++++
 1 file changed, 12 insertions(+)

diff --git a/drivers/misc/mei/mkhi.h b/drivers/misc/mei/mkhi.h
index c3fa3c5d5cb6..1473ea489666 100644
--- a/drivers/misc/mei/mkhi.h
+++ b/drivers/misc/mei/mkhi.h
@@ -16,6 +16,13 @@
 #define MKHI_GEN_GROUP_ID 0xFF
 #define MKHI_GEN_GET_FW_VERSION_CMD 0x2
 
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
@@ -40,4 +47,9 @@ struct mkhi_msg {
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

