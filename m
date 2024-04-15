Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 8C6818A4A19
	for <lists+intel-gfx@lfdr.de>; Mon, 15 Apr 2024 10:14:48 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id A67541122F8;
	Mon, 15 Apr 2024 08:14:46 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="ivHf2tdb";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.16])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 955951122D3;
 Mon, 15 Apr 2024 08:14:44 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1713168884; x=1744704884;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=uqhOJvVoznXMAtZ+uI9/2zb6M5pwqi02HkXEsg7rDNg=;
 b=ivHf2tdbUBXtsH/bcha87pLzQeqlcW3aa/knm9BKN2dlR4YSZea5QCFC
 RWElJHM4C9485AuGOe0NhpRU5BLv+CqsR+Ssrf9mDBYUUo15ez/+NKkBb
 K3rlhyFYmqQiQNIKO1EF6v2lc9RBhQQvGN0SfIzEQVEUGBSrEOjHmdSDS
 guf06u2bwW05v45LmH7QAMPS1azXKR7JF8jF2ZJO+5Xitlx6O9X5fxHvg
 pe0aK3lWQbmkF8+j22tweiO41Kv4rmCKR7x2D5ow5ZW6ENv0EqKtaQ4ZT
 BVMxXiZhPqn6jWW32eTcgFpPpFdb031JH8hxQxArvoKAFTDgArcTfuTOo g==;
X-CSE-ConnectionGUID: CL4hCZ+ISdO0p4kJrKE36A==
X-CSE-MsgGUID: MwdQ2dxDTZarRs31kaeMXw==
X-IronPort-AV: E=McAfee;i="6600,9927,11044"; a="9096444"
X-IronPort-AV: E=Sophos;i="6.07,202,1708416000"; 
   d="scan'208";a="9096444"
Received: from fmviesa003.fm.intel.com ([10.60.135.143])
 by fmvoesa110.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 15 Apr 2024 01:14:44 -0700
X-CSE-ConnectionGUID: QrYZJbiNTXiOXm3839+RqA==
X-CSE-MsgGUID: 6m0xkbXsSEmWdqnSZ31bNA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.07,202,1708416000"; d="scan'208";a="26400533"
Received: from bvivekan-desk.iind.intel.com ([10.190.238.63])
 by fmviesa003-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 15 Apr 2024 01:14:43 -0700
From: Balasubramani Vivekanandan <balasubramani.vivekanandan@intel.com>
To: intel-xe@lists.freedesktop.org,
	intel-gfx@lists.freedesktop.org
Cc: Lucas De Marchi <lucas.demarchi@intel.com>,
 Matt Roper <matthew.d.roper@intel.com>,
 Balasubramani Vivekanandan <balasubramani.vivekanandan@intel.com>,
 Shekhar Chauhan <shekhar.chauhan@intel.com>
Subject: [PATCH v3 21/21] drm/xe/bmg: Enable the display support
Date: Mon, 15 Apr 2024 13:44:23 +0530
Message-Id: <20240415081423.495834-22-balasubramani.vivekanandan@intel.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20240415081423.495834-1-balasubramani.vivekanandan@intel.com>
References: <20240415081423.495834-1-balasubramani.vivekanandan@intel.com>
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

Enable the display support for Battlemage

Signed-off-by: Balasubramani Vivekanandan <balasubramani.vivekanandan@intel.com>
Reviewed-by: Shekhar Chauhan <shekhar.chauhan@intel.com>
---
 drivers/gpu/drm/xe/xe_pci.c | 1 +
 1 file changed, 1 insertion(+)

diff --git a/drivers/gpu/drm/xe/xe_pci.c b/drivers/gpu/drm/xe/xe_pci.c
index 3b30353dbc09..5289cc651c8b 100644
--- a/drivers/gpu/drm/xe/xe_pci.c
+++ b/drivers/gpu/drm/xe/xe_pci.c
@@ -340,6 +340,7 @@ static const struct xe_device_desc lnl_desc = {
 static const struct xe_device_desc bmg_desc __maybe_unused = {
 	DGFX_FEATURES,
 	PLATFORM(XE_BATTLEMAGE),
+	.has_display = true,
 	.require_force_probe = true,
 };
 
-- 
2.25.1

