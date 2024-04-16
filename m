Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 4C4198A777B
	for <lists+intel-gfx@lfdr.de>; Wed, 17 Apr 2024 00:09:50 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 00EFF112EB4;
	Tue, 16 Apr 2024 22:09:45 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="O0IoRVlt";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.10])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 9C9D1112EA9
 for <intel-gfx@lists.freedesktop.org>; Tue, 16 Apr 2024 22:09:41 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1713305382; x=1744841382;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=BFZG4IL8coiMgG9X3CGVtmXqR0lCAL7wCbuRfWjlToU=;
 b=O0IoRVltgFGjxobbZmmdnRmyp4EXA9jiBDNOmPulupTIR/I11Uwxf1ID
 PLzc2XYVpkPkK45PYMRplyWzVh/2WP9TUqCegEAKkuhXjGAzflihDkiNY
 PkE3jQuvktdkRf125Gc97sGPWOHZJaufMqEwLnuT6Cj0APjOZcLVzCDk4
 N6rw0QzohUHlfYhBqx8pdasGIKkJr7WS3QxZ89zsJA30qxBApES8Vvo26
 DmuHFEisaFce0tAjowgEK7aZAS+0oa0/VzIaKHek8SUoCjF8YCw7u5DsU
 WPEJwBhEockQPFFBjKKg5Ai4qXJ1Yl1YEt0QzOnUYlyDma59h7PamPTGN A==;
X-CSE-ConnectionGUID: sEx8YhPdSHCaEAUFQ7tQ2Q==
X-CSE-MsgGUID: scpEJB1gQF6Ec6SjLcPQjA==
X-IronPort-AV: E=McAfee;i="6600,9927,11046"; a="20165152"
X-IronPort-AV: E=Sophos;i="6.07,207,1708416000"; d="scan'208";a="20165152"
Received: from fmviesa003.fm.intel.com ([10.60.135.143])
 by fmvoesa104.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 16 Apr 2024 15:09:41 -0700
X-CSE-ConnectionGUID: /j7zNSjxTmin1k+GCWbtOw==
X-CSE-MsgGUID: XtA+oNRtSXavI/fQtxRlhA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.07,207,1708416000"; d="scan'208";a="26965479"
Received: from ideak-desk.fi.intel.com ([10.237.72.78])
 by fmviesa003-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 16 Apr 2024 15:09:41 -0700
From: Imre Deak <imre.deak@intel.com>
To: intel-gfx@lists.freedesktop.org
Cc: Ankit Nautiyal <ankit.k.nautiyal@intel.com>
Subject: [PATCH v2 03/11] drm/i915/dp_mst: Fix BW limit check when calculating
 DSC DPT bpp
Date: Wed, 17 Apr 2024 01:10:02 +0300
Message-ID: <20240416221010.376865-4-imre.deak@intel.com>
X-Mailer: git-send-email 2.43.3
In-Reply-To: <20240416221010.376865-1-imre.deak@intel.com>
References: <20240416221010.376865-1-imre.deak@intel.com>
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

The DSC DPT bpp limit check should only fail if the available DPT BW is
less than the required BW, fix the check accordingly.

Reviewed-by: Ankit Nautiyal <ankit.k.nautiyal@intel.com>
Signed-off-by: Imre Deak <imre.deak@intel.com>
---
 drivers/gpu/drm/i915/display/intel_dp_mst.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/gpu/drm/i915/display/intel_dp_mst.c b/drivers/gpu/drm/i915/display/intel_dp_mst.c
index 196eeead8cf02..58eb6bf33c92e 100644
--- a/drivers/gpu/drm/i915/display/intel_dp_mst.c
+++ b/drivers/gpu/drm/i915/display/intel_dp_mst.c
@@ -60,7 +60,7 @@ static int intel_dp_mst_check_constraints(struct drm_i915_private *i915, int bpp
 		int output_bpp = bpp;
 		int symbol_clock = intel_dp_link_symbol_clock(crtc_state->port_clock);
 
-		if (output_bpp * adjusted_mode->crtc_clock >=
+		if (output_bpp * adjusted_mode->crtc_clock >
 		    symbol_clock * 72) {
 			drm_dbg_kms(&i915->drm, "UHBR check failed(required bw %d available %d)\n",
 				    output_bpp * adjusted_mode->crtc_clock, symbol_clock * 72);
-- 
2.43.3

