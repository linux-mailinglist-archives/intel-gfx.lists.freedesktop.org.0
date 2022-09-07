Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 95C5A5B0F7C
	for <lists+intel-gfx@lfdr.de>; Wed,  7 Sep 2022 23:51:53 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id B3CF810E8D1;
	Wed,  7 Sep 2022 21:51:47 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 307DD10E8D1
 for <intel-gfx@lists.freedesktop.org>; Wed,  7 Sep 2022 21:51:43 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1662587503; x=1694123503;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=H3KUXVJQNNP110a+603fcMPCmYPYLmydZeLg2k8GqE4=;
 b=cviyXhDoNW9la0fpCikqoxf/XmZ1fa0H+v7HY53SSmr165zfaN43gg/5
 BlbQUd7vajc+j8NhjzurktPrPZZZDxuKM+LyitFYiItf7u6J3Ka7AbQHm
 o3S21ltk+w34JwEKZqhVIYEtmJlu+AvZMBMsKgbW8HySgLtKqAxp0L2R9
 TEqdiKF934QajvxyQYxFDtKlYEiYjqse6zIMB1AjBXrB3By4M0W6klat8
 gbIJjpX+SfaQTdqpuB1Uwv+7+H/1up00HmD3SNqbCpICSI1TwsUyNNWyk
 dZ6uSCqXZhJDClAMcxQIzvM4d6Iir9HLbmJt+6QZPCF6KjbnxaEljT9C3 g==;
X-IronPort-AV: E=McAfee;i="6500,9779,10463"; a="323193626"
X-IronPort-AV: E=Sophos;i="5.93,298,1654585200"; d="scan'208";a="323193626"
Received: from orsmga005.jf.intel.com ([10.7.209.41])
 by fmsmga101.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 07 Sep 2022 14:51:43 -0700
X-IronPort-AV: E=Sophos;i="5.93,298,1654585200"; d="scan'208";a="790207852"
Received: from twinkler-lnx.jer.intel.com ([10.12.87.143])
 by orsmga005-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 07 Sep 2022 14:51:39 -0700
From: Tomas Winkler <tomas.winkler@intel.com>
To: Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 David Airlie <airlied@linux.ie>, Daniel Vetter <daniel@ffwll.ch>
Date: Thu,  8 Sep 2022 00:51:00 +0300
Message-Id: <20220907215113.1596567-4-tomas.winkler@intel.com>
X-Mailer: git-send-email 2.37.2
In-Reply-To: <20220907215113.1596567-1-tomas.winkler@intel.com>
References: <20220907215113.1596567-1-tomas.winkler@intel.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH v9 03/16] mei: add slow_firmware flag to the mei
 auxiliary device
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

Add slow_firmware flag to the mei auxiliary device info
to inform the mei driver about slow underlying firmware.
Such firmware will require to use larger operation timeouts.

Signed-off-by: Alexander Usyskin <alexander.usyskin@intel.com>
Signed-off-by: Tomas Winkler <tomas.winkler@intel.com>
Reviewed-by: Daniele Ceraolo Spurio <daniele.ceraolospurio@intel.com>
---
V9: Rebase

 include/linux/mei_aux.h | 3 +++
 1 file changed, 3 insertions(+)

diff --git a/include/linux/mei_aux.h b/include/linux/mei_aux.h
index a0cb587006d5..4894d8bf4159 100644
--- a/include/linux/mei_aux.h
+++ b/include/linux/mei_aux.h
@@ -12,11 +12,14 @@
  * @aux_dev: - auxiliary device object
  * @irq: interrupt driving the mei auxiliary device
  * @bar: mmio resource bar reserved to mei auxiliary device
+ * @slow_firmware: The device has slow underlying firmware.
+ *                 Such firmware will require to use larger operation timeouts.
  */
 struct mei_aux_device {
 	struct auxiliary_device aux_dev;
 	int irq;
 	struct resource bar;
+	bool slow_firmware;
 };
 
 #define auxiliary_dev_to_mei_aux_dev(auxiliary_dev) \
-- 
2.37.2

