Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 0E89FB1C2E9
	for <lists+intel-gfx@lfdr.de>; Wed,  6 Aug 2025 11:08:58 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id E40FC10E735;
	Wed,  6 Aug 2025 09:08:42 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="eW2AURlH";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.20])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 99EDD10E735
 for <intel-gfx@lists.freedesktop.org>; Wed,  6 Aug 2025 09:08:41 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1754471321; x=1786007321;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=1PaXfcrLWZxMkBJFCOnmogsuQj0X6vrp2qMtGs+kC4Y=;
 b=eW2AURlHjuWBY18OSsdDpudk8Hvc9gn1a/JEDinJO4skRJK5E/EV76ZD
 0CaOw0Z42y21My97uVk34t7wqxkBLmMnufp6RZ9r9qaH4bwqLCeodwHYE
 BDHljZ91SIElFhDpseJVnj8dJiTJdhJsOZX0IxQf8FnpN6IapL6U3cZQV
 RQhZaRHgcxvqAetn+6uXk17coodK8hSyoIQx/f/Ed7QHPp8VD0aGjJkSt
 TJvnCAKIEbxYU+7BldXCEsDNduxKJJeqUD5qKI/2ggpdcXdfbwnovmguY
 pScq64ShMDT9HoJmm3ge/kiRL8Tik6sNcE9RuTlcqsBCrVSLu9FULHfm8 g==;
X-CSE-ConnectionGUID: tBAy64YPRoClRN7U/sYCfw==
X-CSE-MsgGUID: G9g8EyqdTouIoheJAioDCg==
X-IronPort-AV: E=McAfee;i="6800,10657,11513"; a="56495254"
X-IronPort-AV: E=Sophos;i="6.17,268,1747724400"; d="scan'208";a="56495254"
Received: from fmviesa001.fm.intel.com ([10.60.135.141])
 by orvoesa112.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 06 Aug 2025 02:08:41 -0700
X-CSE-ConnectionGUID: lb8NS39FRhmpLWJsr9p+Ag==
X-CSE-MsgGUID: ORwMk58ZQka2zZ+lmY+Qqg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.17,268,1747724400"; d="scan'208";a="195561853"
Received: from nemesa.iind.intel.com ([10.190.239.22])
 by fmviesa001.fm.intel.com with ESMTP; 06 Aug 2025 02:08:40 -0700
From: Nemesa Garg <nemesa.garg@intel.com>
To: intel-gfx@lists.freedesktop.org
Cc: Nemesa Garg <nemesa.garg@intel.com>
Subject: [PATCH] drm/i915/scaler: Fix for WA_14011503117
Date: Wed,  6 Aug 2025 14:33:34 +0530
Message-Id: <20250806090334.2950066-1-nemesa.garg@intel.com>
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

Remove the redundant check statement.

Fixes: 73309ed9d598 ("drm/i915/display: WA_14011503117")
Signed-off-by: Nemesa Garg <nemesa.garg@intel.com>
---
 drivers/gpu/drm/i915/display/skl_scaler.c | 3 ---
 1 file changed, 3 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/skl_scaler.c b/drivers/gpu/drm/i915/display/skl_scaler.c
index cd7ebbeb9508..602198798174 100644
--- a/drivers/gpu/drm/i915/display/skl_scaler.c
+++ b/drivers/gpu/drm/i915/display/skl_scaler.c
@@ -960,9 +960,6 @@ void adl_scaler_ecc_unmask(const struct intel_crtc_state *crtc_state)
 	const struct intel_crtc_scaler_state *scaler_state =
 		&crtc_state->scaler_state;
 
-	if (!scaler_state && scaler_state->scaler_id == -1)
-		return;
-
 	intel_de_write_fw(display,
 			  SKL_PS_ECC_STAT(crtc->pipe, scaler_state->scaler_id),
 			  1);
-- 
2.25.1

