Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 7259E6532E3
	for <lists+intel-gfx@lfdr.de>; Wed, 21 Dec 2022 16:07:35 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id E429010E455;
	Wed, 21 Dec 2022 15:07:00 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga03.intel.com (mga03.intel.com [134.134.136.65])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 71D4810E455
 for <intel-gfx@lists.freedesktop.org>; Wed, 21 Dec 2022 15:06:58 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1671635218; x=1703171218;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=6jvSzup54BLX4+9bLHdyQRcGiMEOmnAxKqgLOGl0I6Y=;
 b=Sa0ltVSrpt6rzUkaHnwhJhHOPeEf4rgSKo2IaMqiQp7beraMBKjUqjip
 wn324iJl5RaQ68ZoFfuveQVblBUHTXkxgymjkxKkSDmIPFB5UjcH3WluL
 7eMnyIC+DXeECUuWm0OIMUl5vE3SMpQQbSOKEedbW8LyY2t8O9suiri1z
 azom1qjorPIC9i6MlS4qUb0n2jFDIx2wHExNkjxrdht3/6+KHwGubtVOD
 y1yeyBhcpeHv5W1ldmtmpKtK3tDlHH8FYgwmM/1mPKXUtxzqz7bMLWh1e
 EuJy2uHyt/NhQ5W5jQ/cX/3JRxYvsAFxovz1C/8nce23xgcbEA4aPpjWN w==;
X-IronPort-AV: E=McAfee;i="6500,9779,10567"; a="321802427"
X-IronPort-AV: E=Sophos;i="5.96,262,1665471600"; d="scan'208";a="321802427"
Received: from orsmga004.jf.intel.com ([10.7.209.38])
 by orsmga103.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 21 Dec 2022 07:06:57 -0800
X-IronPort-AV: E=McAfee;i="6500,9779,10567"; a="775697919"
X-IronPort-AV: E=Sophos;i="5.96,262,1665471600"; d="scan'208";a="775697919"
Received: from eolivagx-mobl.amr.corp.intel.com (HELO gjsousa-mobl2.intel.com)
 ([10.212.58.4])
 by orsmga004-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 21 Dec 2022 07:06:56 -0800
From: Gustavo Sousa <gustavo.sousa@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Wed, 21 Dec 2022 12:06:22 -0300
Message-Id: <20221221150624.402325-1-gustavo.sousa@intel.com>
X-Mailer: git-send-email 2.38.1
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH v2 0/2] drm/i915/dmc: Make firmware loading
 backwards-compatible
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
Cc: Jani Nikula <jani.nikula@intel.com>, Rodrigo Vivi <rodrigo.vivi@intel.com>
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

This patch series changes DMC loading to be backwards-compatible by removing
version checking and loading blobs from unversioned filenames.

Should this be accepted, the next step would be to update linux-firmware to
start using the unversioned filenames. That said, this change still allows to
use the previously versioned paths as fallback, allowing DMC loading to still
work with the current state of linux-firmware.

Signed-off-by: Gustavo Sousa <gustavo.sousa@intel.com>

Gustavo Sousa (2):
  drm/i915/dmc: Do not require specific versions
  drm/i915/dmc: Use unversioned firmware paths

 drivers/gpu/drm/i915/display/intel_dmc.c | 133 ++++++++++++++---------
 drivers/gpu/drm/i915/display/intel_dmc.h |   1 -
 2 files changed, 82 insertions(+), 52 deletions(-)

Interdiff against v1:
diff --git a/drivers/gpu/drm/i915/display/intel_dmc.c b/drivers/gpu/drm/i915/display/intel_dmc.c
index b11f0f451dd7..1e4cd58671d7 100644
--- a/drivers/gpu/drm/i915/display/intel_dmc.c
+++ b/drivers/gpu/drm/i915/display/intel_dmc.c
@@ -882,7 +882,7 @@ static void dmc_load_work_fn(struct work_struct *work)
 	dev_priv = container_of(work, typeof(*dev_priv), display.dmc.work);
 	dmc = &dev_priv->display.dmc;
 
-	err = firmware_request_nowarn(&fw, dev_priv->display.dmc.fw_path, dev_priv->drm.dev);
+	err = request_firmware(&fw, dev_priv->display.dmc.fw_path, dev_priv->drm.dev);
 
 	if (err == -ENOENT && !dev_priv->params.dmc_firmware_path) {
 		legacy_path = dmc_legacy_path(dev_priv);
@@ -891,7 +891,7 @@ static void dmc_load_work_fn(struct work_struct *work)
 				    "%s not found, falling back to %s\n",
 				    dmc->fw_path,
 				    legacy_path);
-			err = firmware_request_nowarn(&fw, legacy_path, dev_priv->drm.dev);
+			err = request_firmware(&fw, legacy_path, dev_priv->drm.dev);
 			if (err == 0)
 				dev_priv->display.dmc.fw_path = legacy_path;
 		}
-- 
2.38.1

