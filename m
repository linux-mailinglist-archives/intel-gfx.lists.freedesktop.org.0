Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id ECF888C27A1
	for <lists+intel-gfx@lfdr.de>; Fri, 10 May 2024 17:24:14 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 25D3610EDC3;
	Fri, 10 May 2024 15:24:13 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="NlZDfNPg";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.16])
 by gabe.freedesktop.org (Postfix) with ESMTPS id DA64B10EDC0
 for <intel-gfx@lists.freedesktop.org>; Fri, 10 May 2024 15:24:10 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1715354651; x=1746890651;
 h=from:to:subject:date:message-id:in-reply-to:references:
 mime-version:content-transfer-encoding;
 bh=BrsPbmC73JMWlT9l9s1eGFeG8FOM/BfbaHduopAOCV0=;
 b=NlZDfNPgS+THIkvYzG5rE+yO7+haS42rFYsRN9qaRb1vzVZWo2gm+fXv
 4Zr3PSJCpxX9iI/MRsXe90zYsMXl8qrhIJLaDEiWlzwQw02+I8vDvojNe
 eVWoc1/VoLUpOWEbLC6yY/yfFb/maM+teQX9nPmfrUW/Q/3s/igFvzzls
 sT1vcLsvRN0fHY5GmFMwwGOoEYXox4fvzjDI43WzQTrc3E6oI2UjsQ+m5
 6Vn7uG902vvoQ1bvpiSBoRk2Fb/Ltr02kkpaEZ1RpmQuTq6vfIZkS7aLH
 ugdLuxi4he6VdQhofTXtutdGCXeLCoQFrl0CzqMe0CkVBv0h90KsbC4VD g==;
X-CSE-ConnectionGUID: /zBP94P/SZK+UTOHR7irsg==
X-CSE-MsgGUID: qFZUS6tYR/i7LQVJfHC13Q==
X-IronPort-AV: E=McAfee;i="6600,9927,11068"; a="11468872"
X-IronPort-AV: E=Sophos;i="6.08,151,1712646000"; d="scan'208";a="11468872"
Received: from fmviesa008.fm.intel.com ([10.60.135.148])
 by fmvoesa110.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 10 May 2024 08:24:10 -0700
X-CSE-ConnectionGUID: CJk/DBZ3RxqYg/FAqkqNOQ==
X-CSE-MsgGUID: ObQttF5AR426hLWGV/i8WA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.08,151,1712646000"; d="scan'208";a="29595027"
Received: from stinkpipe.fi.intel.com (HELO stinkbox) ([10.237.72.74])
 by fmviesa008.fm.intel.com with SMTP; 10 May 2024 08:24:09 -0700
Received: by stinkbox (sSMTP sendmail emulation);
 Fri, 10 May 2024 18:24:08 +0300
From: Ville Syrjala <ville.syrjala@linux.intel.com>
To: intel-gfx@lists.freedesktop.org
Subject: [PATCH 12/16] drm/i915: Drop a few unwanted tabs from skl+ plane reg
 defines
Date: Fri, 10 May 2024 18:23:25 +0300
Message-ID: <20240510152329.24098-13-ville.syrjala@linux.intel.com>
X-Mailer: git-send-email 2.43.2
In-Reply-To: <20240510152329.24098-1-ville.syrjala@linux.intel.com>
References: <20240510152329.24098-1-ville.syrjala@linux.intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
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

From: Ville Syrjälä <ville.syrjala@linux.intel.com>

A few extra tabs have snuck into the skl+ plane register bit
definitions. Remove them.

Signed-off-by: Ville Syrjälä <ville.syrjala@linux.intel.com>
---
 drivers/gpu/drm/i915/display/skl_universal_plane_regs.h | 6 +++---
 1 file changed, 3 insertions(+), 3 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/skl_universal_plane_regs.h b/drivers/gpu/drm/i915/display/skl_universal_plane_regs.h
index 8ef9bd50d021..18dbe717ea21 100644
--- a/drivers/gpu/drm/i915/display/skl_universal_plane_regs.h
+++ b/drivers/gpu/drm/i915/display/skl_universal_plane_regs.h
@@ -199,17 +199,17 @@
 
 #define _PLANE_CUS_CTL_1_A			0x701c8
 #define   PLANE_CUS_ENABLE			REG_BIT(31)
-#define   PLANE_CUS_Y_PLANE_MASK			REG_BIT(30)
+#define   PLANE_CUS_Y_PLANE_MASK		REG_BIT(30)
 #define   PLANE_CUS_Y_PLANE_4_RKL		REG_FIELD_PREP(PLANE_CUS_Y_PLANE_MASK, 0)
 #define   PLANE_CUS_Y_PLANE_5_RKL		REG_FIELD_PREP(PLANE_CUS_Y_PLANE_MASK, 1)
 #define   PLANE_CUS_Y_PLANE_6_ICL		REG_FIELD_PREP(PLANE_CUS_Y_PLANE_MASK, 0)
 #define   PLANE_CUS_Y_PLANE_7_ICL		REG_FIELD_PREP(PLANE_CUS_Y_PLANE_MASK, 1)
-#define   PLANE_CUS_HPHASE_SIGN_NEGATIVE		REG_BIT(19)
+#define   PLANE_CUS_HPHASE_SIGN_NEGATIVE	REG_BIT(19)
 #define   PLANE_CUS_HPHASE_MASK			REG_GENMASK(17, 16)
 #define   PLANE_CUS_HPHASE_0			REG_FIELD_PREP(PLANE_CUS_HPHASE_MASK, 0)
 #define   PLANE_CUS_HPHASE_0_25			REG_FIELD_PREP(PLANE_CUS_HPHASE_MASK, 1)
 #define   PLANE_CUS_HPHASE_0_5			REG_FIELD_PREP(PLANE_CUS_HPHASE_MASK, 2)
-#define   PLANE_CUS_VPHASE_SIGN_NEGATIVE		REG_BIT(15)
+#define   PLANE_CUS_VPHASE_SIGN_NEGATIVE	REG_BIT(15)
 #define   PLANE_CUS_VPHASE_MASK			REG_GENMASK(13, 12)
 #define   PLANE_CUS_VPHASE_0			REG_FIELD_PREP(PLANE_CUS_VPHASE_MASK, 0)
 #define   PLANE_CUS_VPHASE_0_25			REG_FIELD_PREP(PLANE_CUS_VPHASE_MASK, 1)
-- 
2.43.2

