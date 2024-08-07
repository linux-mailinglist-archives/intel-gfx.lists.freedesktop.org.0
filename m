Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 6D8FE949FD5
	for <lists+intel-gfx@lfdr.de>; Wed,  7 Aug 2024 08:32:36 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 1479F10E036;
	Wed,  7 Aug 2024 06:32:34 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="VZdKEBYn";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.14])
 by gabe.freedesktop.org (Postfix) with ESMTPS id AFE0A10E036;
 Wed,  7 Aug 2024 06:32:32 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1723012353; x=1754548353;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=VVcQf7t40PXCoixwJWoFwhw8ItzgWTw9eBsxidzVFOE=;
 b=VZdKEBYnPIxq+2uKpwf9nTrJece1uuN+m2V9ej0oQyQmduK0FWbebHBi
 Jg9GxZzzNArMedPSRLd+rpOE6dhmj7TjKLmq9eui8H1MZ2FG7s/Jf9ZvY
 jTztMDIod9TBLiSVoqdZfJ9Fa5Wets+TwMbYcpqutVGwFk45rq/lUgqO2
 CQVzjIarhuOqyQbOofDoLR3S5iAQ+h7y2QRvTXkTEhBlVq+NWapH46Iq+
 C43b9XBhTy/2hnqKYeF52UNV+4mDNB81V2PUOlcTvywt5gOvqwwDSOUtD
 pmzCrr57wKsHo1BTzTgErHyASyu2YGVD0KavRLRd6n9mMZ/Jp6LEYzgFk A==;
X-CSE-ConnectionGUID: Jmu+3ZqARiSPoAPl8uXNYA==
X-CSE-MsgGUID: /dbVQ4OHRUC5OIS0fOYuwQ==
X-IronPort-AV: E=McAfee;i="6700,10204,11156"; a="21237018"
X-IronPort-AV: E=Sophos;i="6.09,269,1716274800"; d="scan'208";a="21237018"
Received: from fmviesa007.fm.intel.com ([10.60.135.147])
 by fmvoesa108.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 06 Aug 2024 23:32:32 -0700
X-CSE-ConnectionGUID: uMSTuno9QwiC4lqxoNZozA==
X-CSE-MsgGUID: jJ4ihRbFRzCBQw/yCV/zuw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.09,269,1716274800"; d="scan'208";a="56437025"
Received: from dut-2a59.iind.intel.com ([10.190.239.113])
 by fmviesa007.fm.intel.com with ESMTP; 06 Aug 2024 23:32:30 -0700
From: Chaitanya Kumar Borah <chaitanya.kumar.borah@intel.com>
To: intel-xe@lists.freedesktop.org,
	intel-gfx@lists.freedesktop.org
Cc: luciano.coelho@intel.com, jani.saarinen@intel.com,
 chaitanya.kumar.borah@intel.com
Subject: [core-for-CI PATCH] usb: typec: ucsi: Fix a potential deadlock in
 ucsi_send_command_common()
Date: Wed,  7 Aug 2024 11:57:29 +0530
Message-Id: <20240807062729.3159701-1-chaitanya.kumar.borah@intel.com>
X-Mailer: git-send-email 2.25.1
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

From: Heikki Krogerus <heikki.krogerus@linux.intel.com>

The function returns with the ppm_lock held if there's an
error or the PPM reports BUSY condition.

This is a core-for-ci patch for [1]

[1] https://lore.kernel.org/linux-usb/20240806112029.2984319-1-heikki.krogerus@linux.intel.com/

Reported-by: Luciano Coelho <luciano.coelho@intel.com>
Fixes: 5e9c1662a89b ("usb: typec: ucsi: rework command execution functions")
References: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/11849
Signed-off-by: Heikki Krogerus <heikki.krogerus@linux.intel.com>
---
 drivers/usb/typec/ucsi/ucsi.c | 11 ++++-------
 1 file changed, 4 insertions(+), 7 deletions(-)

diff --git a/drivers/usb/typec/ucsi/ucsi.c b/drivers/usb/typec/ucsi/ucsi.c
index dcd3765cc1f5..432a2d6266d7 100644
--- a/drivers/usb/typec/ucsi/ucsi.c
+++ b/drivers/usb/typec/ucsi/ucsi.c
@@ -238,13 +238,10 @@ static int ucsi_send_command_common(struct ucsi *ucsi, u64 cmd,
 	mutex_lock(&ucsi->ppm_lock);
 
 	ret = ucsi_run_command(ucsi, cmd, &cci, data, size, conn_ack);
-	if (cci & UCSI_CCI_BUSY) {
-		ret = ucsi_run_command(ucsi, UCSI_CANCEL, &cci, NULL, 0, false);
-		return ret ? ret : -EBUSY;
-	}
-
-	if (cci & UCSI_CCI_ERROR)
-		return ucsi_read_error(ucsi, connector_num);
+	if (cci & UCSI_CCI_BUSY)
+		ret = ucsi_run_command(ucsi, UCSI_CANCEL, &cci, NULL, 0, false) ?: -EBUSY;
+	else if (cci & UCSI_CCI_ERROR)
+		ret = ucsi_read_error(ucsi, connector_num);
 
 	mutex_unlock(&ucsi->ppm_lock);
 	return ret;
-- 
2.25.1

