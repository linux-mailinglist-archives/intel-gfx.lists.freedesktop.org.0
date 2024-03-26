Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 3968188BE2C
	for <lists+intel-gfx@lfdr.de>; Tue, 26 Mar 2024 10:44:58 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id A975B10E483;
	Tue, 26 Mar 2024 09:44:56 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="F11CJbyF";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.16])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 8549D10E483
 for <intel-gfx@lists.freedesktop.org>; Tue, 26 Mar 2024 09:44:55 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1711446295; x=1742982295;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=BYujtu14eiwiXtGQr4tFp64WPVSYDryzS7xzQTghp4I=;
 b=F11CJbyF2mpe3vKVHqeHZ5ym5UF0s+YUoTN1gPOulPGMvRSskb7QsApq
 Gmhc7o4HcFBJ2DB2pcJSjuhG/SEQ8DtROLjt/dU0XToaQhhUfJWTHzDy8
 O+Z3ahN14Li5+JalKrzw23BiHUlobnb5hCiYhhDiZqWdaLMs0VQUa4Elf
 DEBNi0pny/y4ijtmCzVdu63FsfKOZr3OBpP9GprFnYCXo/+VtgLr8KRSo
 wCAXZbWT3XbWwAA5rfGq/W6LVlE059U5BzYO8hiC1mDkoT0FP7fu7HqOY
 aoC8grUm5Qg7TAaHRCK1UGPfXWaUpDk7/cO2lnRYa98gxyGkCuaDE2r7I w==;
X-IronPort-AV: E=McAfee;i="6600,9927,11024"; a="7086934"
X-IronPort-AV: E=Sophos;i="6.07,155,1708416000"; 
   d="scan'208";a="7086934"
Received: from orviesa008.jf.intel.com ([10.64.159.148])
 by fmvoesa110.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 26 Mar 2024 02:44:55 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.07,155,1708416000"; d="scan'208";a="16569317"
Received: from rvodapal-desk.iind.intel.com ([10.145.162.163])
 by orviesa008-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 26 Mar 2024 02:44:51 -0700
From: Ravi Kumar Vodapalli <ravi.kumar.vodapalli@intel.com>
To: intel-gfx@lists.freedesktop.org
Cc: balasubramani.vivekanandan@intel.com, matthew.d.roper@intel.com,
 lucas.demarchi@intel.com, gustavo.sousa@intel.com,
 radhakrishna.sripada@intel.com, clinton.a.taylor@intel.com,
 matthew.s.atwood@intel.com, dnyaneshwar.bhadane@intel.com,
 haridhar.kalvala@intel.com, shekhar.chauhan@intel.com
Subject: [PATCH] drm/i915: Add new pciid's to DG2 platform
Date: Tue, 26 Mar 2024 15:18:20 +0530
Message-Id: <20240326094820.3828528-1-ravi.kumar.vodapalli@intel.com>
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

New pciid's are added in Bspec for DG2 platform

Bspec: 44477
Signed-off-by: Ravi Kumar Vodapalli <ravi.kumar.vodapalli@intel.com>
---
 include/drm/xe_pciids.h | 4 +++-
 1 file changed, 3 insertions(+), 1 deletion(-)

diff --git a/include/drm/xe_pciids.h b/include/drm/xe_pciids.h
index ab4a8987ac65..c7fc288dacee 100644
--- a/include/drm/xe_pciids.h
+++ b/include/drm/xe_pciids.h
@@ -134,7 +134,9 @@
 	MACRO__(0x5692, ## __VA_ARGS__),	\
 	MACRO__(0x56A0, ## __VA_ARGS__),	\
 	MACRO__(0x56A1, ## __VA_ARGS__),	\
-	MACRO__(0x56A2, ## __VA_ARGS__)
+	MACRO__(0x56A2, ## __VA_ARGS__),	\
+	MACRO__(0x56BE, ## __VA_ARGS__),	\
+	MACRO__(0x56BF, ## __VA_ARGS__)
 
 #define XE_DG2_G11_IDS(MACRO__, ...)		\
 	MACRO__(0x5693, ## __VA_ARGS__),	\
-- 
2.25.1

