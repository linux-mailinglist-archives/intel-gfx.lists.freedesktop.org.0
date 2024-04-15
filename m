Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id DE06C8A5E22
	for <lists+intel-gfx@lfdr.de>; Tue, 16 Apr 2024 01:18:40 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 6C0C81128A8;
	Mon, 15 Apr 2024 23:18:39 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="CsjixjO/";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.9])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 91EA01128A9
 for <intel-gfx@lists.freedesktop.org>; Mon, 15 Apr 2024 23:18:38 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1713223119; x=1744759119;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=vouhi6wA/nNRkrJT5hCSylgpjmc0xrpkgMcLT9uBelk=;
 b=CsjixjO/IVE04thgiJPlCqSPZ48c9XP2rvXKVE2wR7Uncqqr+ymIQJAf
 XPkJT0mFVpIaV7XxlOV9GNSIuUjZmsu8J2RSEqqQLDZv9XOEyKYpYc2eF
 7MPGeuN5XnRdD8Oym0u24F2dBZ0XnZlb5PSQidrNotAopcHOcDtbuChJA
 WAtmchAX+cwz/6WsyXn3dZ374RQnHiXGP8iocUvwzUq9fWxr3xQO3jMHw
 c/KEY68WDjXu5H0aFHvcY2CJpbaS5AOVcYUAHZMZhPvEpNMUDMazWZ+03
 7NXv/JdTqZ73/4ZFxAYAKDM3ysMBodPl1oGf8BaJgKazUYC/fey1cPGzO g==;
X-CSE-ConnectionGUID: 4/btpwKLRLaxzcKwCfaDzA==
X-CSE-MsgGUID: LQqERwf6S4ucQJgatYyARA==
X-IronPort-AV: E=McAfee;i="6600,9927,11045"; a="31115482"
X-IronPort-AV: E=Sophos;i="6.07,204,1708416000"; d="scan'208";a="31115482"
Received: from orviesa010.jf.intel.com ([10.64.159.150])
 by orvoesa101.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 15 Apr 2024 16:18:08 -0700
X-CSE-ConnectionGUID: pRVVfZQOSaWFNXYBOvteYA==
X-CSE-MsgGUID: uSfUvl9kRIaLNLfMC0udKw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.07,204,1708416000"; d="scan'208";a="21963794"
Received: from valcore-skull-1.fm.intel.com ([10.1.39.17])
 by orviesa010-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 15 Apr 2024 16:18:07 -0700
From: Daniele Ceraolo Spurio <daniele.ceraolospurio@intel.com>
To: intel-gfx@lists.freedesktop.org
Cc: Daniele Ceraolo Spurio <daniele.ceraolospurio@intel.com>
Subject: [PATCH 1/3] drm/xe/gsc: define GSCCS for LNL
Date: Mon, 15 Apr 2024 16:17:44 -0700
Message-ID: <20240415231746.1230684-2-daniele.ceraolospurio@intel.com>
X-Mailer: git-send-email 2.43.0
In-Reply-To: <20240415231746.1230684-1-daniele.ceraolospurio@intel.com>
References: <20240415231746.1230684-1-daniele.ceraolospurio@intel.com>
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

LNL has 1 GSCCS, same as MTL. Note that the GSCCS will be disabled until
we have a GSC FW defined, but having it in the list of engine is a
requirement to add such definition.

Signed-off-by: Daniele Ceraolo Spurio <daniele.ceraolospurio@intel.com>
---
 drivers/gpu/drm/xe/xe_pci.c | 3 ++-
 1 file changed, 2 insertions(+), 1 deletion(-)

diff --git a/drivers/gpu/drm/xe/xe_pci.c b/drivers/gpu/drm/xe/xe_pci.c
index c47ab4b67467..45ed1be584c5 100644
--- a/drivers/gpu/drm/xe/xe_pci.c
+++ b/drivers/gpu/drm/xe/xe_pci.c
@@ -209,7 +209,8 @@ static const struct xe_media_desc media_xelpmp = {
 static const struct xe_media_desc media_xe2 = {
 	.name = "Xe2_LPM",
 	.hw_engine_mask =
-		BIT(XE_HW_ENGINE_VCS0) | BIT(XE_HW_ENGINE_VECS0), /* TODO: GSC0 */
+		BIT(XE_HW_ENGINE_VCS0) | BIT(XE_HW_ENGINE_VECS0) |
+		BIT(XE_HW_ENGINE_GSCCS0)
 };
 
 static const struct xe_device_desc tgl_desc = {
-- 
2.43.0

