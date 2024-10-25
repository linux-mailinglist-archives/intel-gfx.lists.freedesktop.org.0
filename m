Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 381489B1078
	for <lists+intel-gfx@lfdr.de>; Fri, 25 Oct 2024 22:47:59 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 3924310EB96;
	Fri, 25 Oct 2024 20:47:50 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="a8AjHRVj";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.12])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 96EFB10EB82;
 Fri, 25 Oct 2024 20:47:48 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1729889269; x=1761425269;
 h=from:to:subject:date:message-id:in-reply-to:references:
 mime-version:content-transfer-encoding;
 bh=8Tm8t2kEZXAvSHGjZDgvrqrf38dXDVKpmO8qby0qQiw=;
 b=a8AjHRVjobCVHGarqObkvOol7CsTDJpalqfqdtd1YtC9rDBqsDBRD/v6
 BAqq8uRujqkybxaBHW82+cIFlHscpRwbKcAUX9sGG1aMRBZrVCx+HOHd/
 d3B49DkxQU4kEl8K55zxgC5ddZMipjuFhxPVJSEnS25sCyuOPLH8iR+CW
 13kkrAHwHPpZWcvREtI4v2EkzeK6jyHDUEewA9BxaKaQ4xGfbjCbfTiF7
 8FT18/AexGf1cfWPBSJReMhze9Nluy3u5RKjf2seKgdfvyPnl31VE3/8b
 QPZizgrEU8GgJmRdWEF+g86mbmKwajUDqrPNod57gXI421kMPr4VvQyy9 g==;
X-CSE-ConnectionGUID: K6ECFT4zTxa+WCstg0WB/g==
X-CSE-MsgGUID: uKtfiYgnTkahebTaaJSEXw==
X-IronPort-AV: E=McAfee;i="6700,10204,11236"; a="33484206"
X-IronPort-AV: E=Sophos;i="6.11,232,1725346800"; d="scan'208";a="33484206"
Received: from fmviesa009.fm.intel.com ([10.60.135.149])
 by fmvoesa106.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 25 Oct 2024 13:47:48 -0700
X-CSE-ConnectionGUID: KvNUE8zrQvW8wnqQQBBRSA==
X-CSE-MsgGUID: bhOZinsaQVKguJIVXmDdug==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.11,232,1725346800"; d="scan'208";a="81057189"
Received: from cataylo2-desk.jf.intel.com ([10.165.21.140])
 by fmviesa009-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 25 Oct 2024 13:47:48 -0700
From: Clint Taylor <clinton.a.taylor@intel.com>
To: intel-gfx@lists.freedesktop.org,
	intel-xe@lists.freedesktop.org
Subject: [PATCH v5 06/11] drm/i915/cx0: Remove bus reset after every c10
 transaction
Date: Fri, 25 Oct 2024 13:47:38 -0700
Message-Id: <20241025204743.211510-7-clinton.a.taylor@intel.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20241025204743.211510-1-clinton.a.taylor@intel.com>
References: <20241025204743.211510-1-clinton.a.taylor@intel.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
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
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

C10 phy timeouts occur on xe3lpd if the c10 bus is reset every
transaction. Starting with xe3lpd this is bus reset not necessary

Signed-off-by: Clint Taylor <clinton.a.taylor@intel.com>
---
 drivers/gpu/drm/i915/display/intel_cx0_phy.c | 6 ++++--
 1 file changed, 4 insertions(+), 2 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_cx0_phy.c b/drivers/gpu/drm/i915/display/intel_cx0_phy.c
index 4d6e1c135bdc..c6e0cbff5201 100644
--- a/drivers/gpu/drm/i915/display/intel_cx0_phy.c
+++ b/drivers/gpu/drm/i915/display/intel_cx0_phy.c
@@ -224,7 +224,8 @@ static int __intel_cx0_read_once(struct intel_encoder *encoder,
 	 * down and let the message bus to end up
 	 * in a known state
 	 */
-	intel_cx0_bus_reset(encoder, lane);
+	if (DISPLAY_VER(i915) < 30)
+		intel_cx0_bus_reset(encoder, lane);
 
 	return REG_FIELD_GET(XELPDP_PORT_P2M_DATA_MASK, val);
 }
@@ -313,7 +314,8 @@ static int __intel_cx0_write_once(struct intel_encoder *encoder,
 	 * down and let the message bus to end up
 	 * in a known state
 	 */
-	intel_cx0_bus_reset(encoder, lane);
+	if (DISPLAY_VER(i915) < 30)
+		intel_cx0_bus_reset(encoder, lane);
 
 	return 0;
 }
-- 
2.25.1

