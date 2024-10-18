Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id A9EDC9A4879
	for <lists+intel-gfx@lfdr.de>; Fri, 18 Oct 2024 22:49:58 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 1659C10E9A9;
	Fri, 18 Oct 2024 20:49:57 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="A4Z6GZOo";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.7])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 21DB010E9AB;
 Fri, 18 Oct 2024 20:49:55 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1729284595; x=1760820595;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=szZ3U7ynkULTdsyHsKYiu2AXfli+xslgTSXw9E1mI0c=;
 b=A4Z6GZOop0KwD7cWdA6cjpDZcBoOAEXwibvaVW/jYhOHf8FkGQWhB/T9
 YBfecO0zxFC3y5cJvm7RB8yrKdZM+blVkn8Wpkw65UQHt7cBx2EQZHsom
 LUPQJKY6nU5+qrxkqBEaxERVicgArOWihuU2bB+lhj7BrR32qign5G5cL
 kUW9NTyO/X2PqHGYjUEnOK9Zxrwjwv2zr6oCB5y5Ju2fWHrG0fQyfSMAM
 I6hPN2KJcFZqOyhKgaafvKDpO6wd+xS7/EhfU7G4jq8THhXKW7dcOpW5T
 k+N2TY2eQ+zb0vIY0mZLD+mmL5Y632wwO+XQtL5dqZItOM3paKzqPCssf A==;
X-CSE-ConnectionGUID: BcZSQRqVQ1CpXJeGboG11w==
X-CSE-MsgGUID: 1RII0b9oQA+pfXgWlJ2zwQ==
X-IronPort-AV: E=McAfee;i="6700,10204,11229"; a="54240194"
X-IronPort-AV: E=Sophos;i="6.11,214,1725346800"; d="scan'208";a="54240194"
Received: from orviesa002.jf.intel.com ([10.64.159.142])
 by fmvoesa101.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 18 Oct 2024 13:49:54 -0700
X-CSE-ConnectionGUID: pKdUpqdzTISqEjPcH4t8mw==
X-CSE-MsgGUID: vNQ5HktuQwCicpKWZ9t9mQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.11,214,1725346800"; d="scan'208";a="109798969"
Received: from msatwood-mobl.jf.intel.com ([10.24.12.145])
 by orviesa002-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 18 Oct 2024 13:49:53 -0700
From: Matt Atwood <matthew.s.atwood@intel.com>
To: intel-gfx@lists.freedesktop.org,
	intel-xe@lists.freedesktop.org
Cc: Suraj Kandpal <suraj.kandpal@intel.com>,
 Matt Atwood <matthew.s.atwood@intel.com>
Subject: [PATCH 09/12] drm/i915/xe3lpd: Increase max_h max_v for PSR
Date: Fri, 18 Oct 2024 13:49:38 -0700
Message-ID: <20241018204941.73473-10-matthew.s.atwood@intel.com>
X-Mailer: git-send-email 2.45.0
In-Reply-To: <20241018204941.73473-1-matthew.s.atwood@intel.com>
References: <20241018204941.73473-1-matthew.s.atwood@intel.com>
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

From: Suraj Kandpal <suraj.kandpal@intel.com>

Spec states that PSR max active is same as max pipe active values.
Now that each pipe supports 6k resolution increasing max_h and
max_v for PSR too.

Signed-off-by: Suraj Kandpal <suraj.kandpal@intel.com>
Signed-off-by: Matt Atwood <matthew.s.atwood@intel.com>
---
 drivers/gpu/drm/i915/display/intel_psr.c | 6 +++++-
 1 file changed, 5 insertions(+), 1 deletion(-)

diff --git a/drivers/gpu/drm/i915/display/intel_psr.c b/drivers/gpu/drm/i915/display/intel_psr.c
index 3b20325b3f6a..16dbc8caef5f 100644
--- a/drivers/gpu/drm/i915/display/intel_psr.c
+++ b/drivers/gpu/drm/i915/display/intel_psr.c
@@ -1451,7 +1451,11 @@ static bool intel_psr2_config_valid(struct intel_dp *intel_dp,
 		return false;
 	}
 
-	if (DISPLAY_VER(display) >= 12) {
+	if (DISPLAY_VER(display) >= 30) {
+		psr_max_h = 6144;
+		psr_max_v = 4096;
+		max_bpp = 30;
+	} else if (DISPLAY_VER(display) >= 12) {
 		psr_max_h = 5120;
 		psr_max_v = 3200;
 		max_bpp = 30;
-- 
2.45.0

