Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id C9F86870999
	for <lists+intel-gfx@lfdr.de>; Mon,  4 Mar 2024 19:31:25 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 1E4C1112476;
	Mon,  4 Mar 2024 18:31:24 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="kd2H8GTj";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.19])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 79A9F112476;
 Mon,  4 Mar 2024 18:31:23 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1709577083; x=1741113083;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=FLUFSWJDyn4qVeszb24ZWfNXFGfzjZBimEhVjdt9G9w=;
 b=kd2H8GTjPXFC4DBx+jT4CKJZ/G/PDmtFR7asPPOh/RY86VSolWZ9LcE3
 TpJCWVfxbtHG0fKDOiVcl2DMWf4jB7LIgzhRWxbPsmFzmHSDvtwne3KIA
 YHByU7/hgOdhfaQol0a4J5dRbf8dGGbPuRUttvEnHwP+0V4DqC03I3Jl2
 sSP6YOwk7JX8dP+4xxBcg5PN4maiRn0n2MSHiqNWtJ9BxyF8tpqjyxq01
 swfyaluieL4J1Vyl5mfpKUzHgg7FuhURKvZImSWPdSqvqTsoBOfGCBcdE
 KilmDH8djMngE1wKjuE23nVdMSjowhC2ZunBhlRKLXG6/YfxRIJhp/Qjz Q==;
X-IronPort-AV: E=McAfee;i="6600,9927,11003"; a="3943542"
X-IronPort-AV: E=Sophos;i="6.06,204,1705392000"; 
   d="scan'208";a="3943542"
Received: from orviesa003.jf.intel.com ([10.64.159.143])
 by orvoesa111.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 04 Mar 2024 10:31:23 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.06,204,1705392000"; d="scan'208";a="13756515"
Received: from ticela-or-128.amr.corp.intel.com (HELO gjsousa-mobl2.intel.com)
 ([10.255.33.50])
 by ORVIESA003-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 04 Mar 2024 10:31:22 -0800
From: Gustavo Sousa <gustavo.sousa@intel.com>
To: intel-gfx@lists.freedesktop.org,
	intel-xe@lists.freedesktop.org
Cc: Lucas De Marchi <lucas.demarchi@intel.com>, vinod.govindapillai@intel.com,
 stanislav.lisovskiy@intel.com, Matt Roper <matthew.d.roper@intel.com>
Subject: [PATCH 8/8] drm/xe/lnl: Enable display support
Date: Mon,  4 Mar 2024 15:30:27 -0300
Message-ID: <20240304183028.195057-9-gustavo.sousa@intel.com>
X-Mailer: git-send-email 2.44.0
In-Reply-To: <20240304183028.195057-1-gustavo.sousa@intel.com>
References: <20240304183028.195057-1-gustavo.sousa@intel.com>
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

Enable display support for Lunar Lake.

Signed-off-by: Balasubramani Vivekanandan <balasubramani.vivekanandan@intel.com>
Signed-off-by: Lucas De Marchi <lucas.demarchi@intel.com>
Signed-off-by: Gustavo Sousa <gustavo.sousa@intel.com>
---
 drivers/gpu/drm/xe/xe_pci.c | 1 +
 1 file changed, 1 insertion(+)

diff --git a/drivers/gpu/drm/xe/xe_pci.c b/drivers/gpu/drm/xe/xe_pci.c
index 5b5c29761c5d..42ba2ea62c1e 100644
--- a/drivers/gpu/drm/xe/xe_pci.c
+++ b/drivers/gpu/drm/xe/xe_pci.c
@@ -333,6 +333,7 @@ static const struct xe_device_desc mtl_desc = {
 
 static const struct xe_device_desc lnl_desc = {
 	PLATFORM(XE_LUNARLAKE),
+	.has_display = true,
 	.require_force_probe = true,
 };
 
-- 
2.44.0

