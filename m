Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 4EC4F5B096F
	for <lists+intel-gfx@lfdr.de>; Wed,  7 Sep 2022 18:00:10 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id EE73A10E7C4;
	Wed,  7 Sep 2022 16:00:06 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
 by gabe.freedesktop.org (Postfix) with ESMTPS id AE75410E7D3
 for <intel-gfx@lists.freedesktop.org>; Wed,  7 Sep 2022 15:59:55 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1662566395; x=1694102395;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=hO/ygtyyqutcViUvWsaXsvt/Qi8P3M4tyR8fhZGvumg=;
 b=cOQL85ZLhuqAoSqkI6yBu/kjARemosYCYpcJA+SiNioVfizlrvQHGRqP
 sl4MTsBq7SSInK6jMxkGYrZ8yn8AS7x+po8kJFFxghzbZVdf05QCSoJcG
 VURnBMgwJk9kEYPFgpoUDf16kxvoEUByRGWafEuNfE5sdd8laA68RIbQm
 7W2CAAGPdiTFeFPJ6Y/KsD6CcM/Aa1/T4GDdvRr9v/L2hmrCn4fNILJSD
 zs2kAdH22QO8trDKA/7N13t5NvKQEdNqd6VSisZNXxf8gtUdLc4SavCpO
 7zX4NxfHXN0PACR19uyGxcYa5hhb7g0i/RZmABoN9EfGGp6RizHcPaHvk Q==;
X-IronPort-AV: E=McAfee;i="6500,9779,10463"; a="297701571"
X-IronPort-AV: E=Sophos;i="5.93,297,1654585200"; d="scan'208";a="297701571"
Received: from fmsmga008.fm.intel.com ([10.253.24.58])
 by orsmga102.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 07 Sep 2022 08:59:34 -0700
X-IronPort-AV: E=Sophos;i="5.93,297,1654585200"; d="scan'208";a="676248208"
Received: from twinkler-lnx.jer.intel.com ([10.12.87.143])
 by fmsmga008-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 07 Sep 2022 08:59:30 -0700
From: Tomas Winkler <tomas.winkler@intel.com>
To: Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 David Airlie <airlied@linux.ie>, Daniel Vetter <daniel@ffwll.ch>
Date: Wed,  7 Sep 2022 18:58:10 +0300
Message-Id: <20220907155813.1427526-14-tomas.winkler@intel.com>
X-Mailer: git-send-email 2.37.2
In-Reply-To: <20220907155813.1427526-1-tomas.winkler@intel.com>
References: <20220907155813.1427526-1-tomas.winkler@intel.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH v8 13/16] mei: drop ready bits check after start
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

From: Alexander Usyskin <alexander.usyskin@intel.com>

The check that hardware and host ready bits are set after start
is redundant and may fail and disable driver if there is
back-to-back link reset issued right after start.
This happens during pxp mode transitions when firmware
undergo reset. Remove these checks to eliminate such failures.

Signed-off-by: Alexander Usyskin <alexander.usyskin@intel.com>
Signed-off-by: Tomas Winkler <tomas.winkler@intel.com>
---
 drivers/misc/mei/init.c | 10 ----------
 1 file changed, 10 deletions(-)

diff --git a/drivers/misc/mei/init.c b/drivers/misc/mei/init.c
index 1b4d5d7870b9..bac8852aad51 100644
--- a/drivers/misc/mei/init.c
+++ b/drivers/misc/mei/init.c
@@ -218,16 +218,6 @@ int mei_start(struct mei_device *dev)
 		goto err;
 	}
 
-	if (!mei_host_is_ready(dev)) {
-		dev_err(dev->dev, "host is not ready.\n");
-		goto err;
-	}
-
-	if (!mei_hw_is_ready(dev)) {
-		dev_err(dev->dev, "ME is not ready.\n");
-		goto err;
-	}
-
 	if (!mei_hbm_version_is_supported(dev)) {
 		dev_dbg(dev->dev, "MEI start failed.\n");
 		goto err;
-- 
2.37.2

