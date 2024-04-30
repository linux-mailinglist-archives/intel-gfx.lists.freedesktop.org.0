Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id DD9F58B7E8F
	for <lists+intel-gfx@lfdr.de>; Tue, 30 Apr 2024 19:31:16 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 1939F112D8F;
	Tue, 30 Apr 2024 17:31:15 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="HI9PnTH4";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.8])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 6FD33112D77;
 Tue, 30 Apr 2024 17:30:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1714498222; x=1746034222;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=izPNDR7v+lJkFTynysUpQF+1Ohpci8BHgvNGTGywdQk=;
 b=HI9PnTH40Ta4sERfLXgMDeP91QJ32Jkxcje1i09UsqSMcEIDScrGNi+b
 A450aUN6nJKpvC0CRqasbFxpm9BryfdY0G6Gjg2ZD4Te2jRkhKkN5+S6k
 qzJk+Z8qePaXOT1BPKxTo8xZImlSmk1SRe3lIdzzcfH2dIziFnm83+jes
 PlzV2G61Puc6Rv/BeFYuwdxsGGTMHOYpQRsi8rbE1CMzx+DQ8FOowx6n5
 MUetylPwGdkoQFd/DBFxR30en09Btvt0q9mHhNYFMyIVihFP/v4tc2q72
 S2uqmcISJDVwsR5QNBRb+8jGnqf0mVJyjkEqAeh22sFCuBWvaR/9hKxHG g==;
X-CSE-ConnectionGUID: KiNDz9B5SUC3VHp24xK0OQ==
X-CSE-MsgGUID: Pi8IPGp4RmKCFVPlcoaqpA==
X-IronPort-AV: E=McAfee;i="6600,9927,11060"; a="27742006"
X-IronPort-AV: E=Sophos;i="6.07,242,1708416000"; d="scan'208";a="27742006"
Received: from fmviesa006.fm.intel.com ([10.60.135.146])
 by fmvoesa102.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 30 Apr 2024 10:30:22 -0700
X-CSE-ConnectionGUID: UufrL4CNQu+D0sJKpFx0aw==
X-CSE-MsgGUID: 7ufgrPE9QE6Y5mOwxuTx2g==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.07,242,1708416000"; d="scan'208";a="26617868"
Received: from invictus.jf.intel.com ([10.165.21.201])
 by fmviesa006-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 30 Apr 2024 10:30:22 -0700
From: Radhakrishna Sripada <radhakrishna.sripada@intel.com>
To: intel-gfx@lists.freedesktop.org
Cc: intel-xe@lists.freedesktop.org,
 Balasubramani Vivekanandan <balasubramani.vivekanandan@intel.com>,
 Shekhar Chauhan <shekhar.chauhan@intel.com>,
 Radhakrishna Sripada <radhakrishna.sripada@intel.com>
Subject: [PATCH v3 19/19] drm/xe/bmg: Enable the display support
Date: Tue, 30 Apr 2024 10:28:50 -0700
Message-Id: <20240430172850.1881525-20-radhakrishna.sripada@intel.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20240430172850.1881525-1-radhakrishna.sripada@intel.com>
References: <20240430172850.1881525-1-radhakrishna.sripada@intel.com>
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

From: Balasubramani Vivekanandan <balasubramani.vivekanandan@intel.com>

Enable the display support for Battlemage

Signed-off-by: Balasubramani Vivekanandan <balasubramani.vivekanandan@intel.com>
Reviewed-by: Shekhar Chauhan <shekhar.chauhan@intel.com>
Signed-off-by: Radhakrishna Sripada <radhakrishna.sripada@intel.com>
---
 drivers/gpu/drm/xe/xe_pci.c | 1 +
 1 file changed, 1 insertion(+)

diff --git a/drivers/gpu/drm/xe/xe_pci.c b/drivers/gpu/drm/xe/xe_pci.c
index a0cf5dd803c2..b01b1d30976a 100644
--- a/drivers/gpu/drm/xe/xe_pci.c
+++ b/drivers/gpu/drm/xe/xe_pci.c
@@ -342,6 +342,7 @@ static const struct xe_device_desc lnl_desc = {
 static const struct xe_device_desc bmg_desc __maybe_unused = {
 	DGFX_FEATURES,
 	PLATFORM(XE_BATTLEMAGE),
+	.has_display = true,
 	.require_force_probe = true,
 };
 
-- 
2.34.1

