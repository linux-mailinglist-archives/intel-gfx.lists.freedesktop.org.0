Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 5546C896D48
	for <lists+intel-gfx@lfdr.de>; Wed,  3 Apr 2024 12:52:45 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id C990710FF4B;
	Wed,  3 Apr 2024 10:52:43 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="cZ97jh1G";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.18])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 413A110FF4B;
 Wed,  3 Apr 2024 10:52:40 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1712141562; x=1743677562;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=X5psOW3+DG3J+Z8E/fTdepp0ymRcfHHCHtwseMR06to=;
 b=cZ97jh1GV7PF3CsuNF9JmTQudLvq5Gcq2kiNtT+tJqKODm7Y1Y+QM7Ni
 ZEN/7b2etC6vV4AHxMMkiz3Gg1w767OSKgJCr4E9Wf3dFGAkUEpldSCl5
 7XBq6GcQ//L/i9doqH94diTjZGRjA2nfR8wuGDFQemmBtLB0uMXXpEAlK
 R8VuLFtmSB7ri8hpZz668nbwbgZm1sKKCa4FxgNYFyn2SETXp1dc54hxx
 P3KsRrByWvl9fzOpPIbJe5c81u/f+UyXYmOS9bmsSkuvtmL2hNRlRJsrA
 6N5V4PlO8pXlsFA1eyeucvAl/SVtqBXA2vX+0Hb1qa1cPg1ynCvN84VcR w==;
X-CSE-ConnectionGUID: 7S2fum7hSrmcv7mEhVDIIg==
X-CSE-MsgGUID: uWe0jHYuTv6SqWQK1YTDUQ==
X-IronPort-AV: E=McAfee;i="6600,9927,11032"; a="7212290"
X-IronPort-AV: E=Sophos;i="6.07,177,1708416000"; 
   d="scan'208";a="7212290"
Received: from fmviesa007.fm.intel.com ([10.60.135.147])
 by fmvoesa112.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 03 Apr 2024 03:52:07 -0700
X-CSE-ConnectionGUID: goyAjFD6TOGdmRBVfoBmQA==
X-CSE-MsgGUID: jNj3QROzQ9ugc2OMN302nA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.07,177,1708416000"; d="scan'208";a="18493466"
Received: from bvivekan-desk.iind.intel.com ([10.190.238.63])
 by fmviesa007-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 03 Apr 2024 03:52:04 -0700
From: Balasubramani Vivekanandan <balasubramani.vivekanandan@intel.com>
To: intel-gfx@lists.freedesktop.org,
	intel-xe@lists.freedesktop.org
Cc: Matt Roper <matthew.d.roper@intel.com>,
 Lucas De Marchi <lucas.demarchi@intel.com>,
 Balasubramani Vivekanandan <balasubramani.vivekanandan@intel.com>
Subject: [PATCH 25/25] drm/xe/bmg: Enable the display support
Date: Wed,  3 Apr 2024 16:21:23 +0530
Message-Id: <20240403105123.1327669-26-balasubramani.vivekanandan@intel.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20240403105123.1327669-1-balasubramani.vivekanandan@intel.com>
References: <20240403105123.1327669-1-balasubramani.vivekanandan@intel.com>
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
---
 drivers/gpu/drm/xe/xe_pci.c | 1 +
 1 file changed, 1 insertion(+)

diff --git a/drivers/gpu/drm/xe/xe_pci.c b/drivers/gpu/drm/xe/xe_pci.c
index b3158053baee..835c18ec8fb9 100644
--- a/drivers/gpu/drm/xe/xe_pci.c
+++ b/drivers/gpu/drm/xe/xe_pci.c
@@ -340,6 +340,7 @@ static const struct xe_device_desc lnl_desc = {
 static const struct xe_device_desc bmg_desc = {
 	DGFX_FEATURES,
 	PLATFORM(XE_BATTLEMAGE),
+	.has_display = true,
 	.require_force_probe = true,
 };
 
-- 
2.25.1

