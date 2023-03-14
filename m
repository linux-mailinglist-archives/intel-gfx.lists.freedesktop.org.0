Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 39F5E6B952D
	for <lists+intel-gfx@lfdr.de>; Tue, 14 Mar 2023 14:03:25 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 90DF710E7DF;
	Tue, 14 Mar 2023 13:03:23 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
 by gabe.freedesktop.org (Postfix) with ESMTPS id D154B10E7DD
 for <intel-gfx@lists.freedesktop.org>; Tue, 14 Mar 2023 13:03:20 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1678799000; x=1710335000;
 h=from:to:subject:date:message-id:in-reply-to:references:
 mime-version:content-transfer-encoding;
 bh=k+vpbJn3Uj4njEr/soBC+4OGIT79mohfRgiW4YtkBsE=;
 b=PsaySYLGXNwviQkcW26KVal2ln2LV/KxSTmhnUoa1zp43Fqjx7GbWg0+
 L0Z/aRZZmweoyVMcRCHQ8RW9WMorlJRbZTcfPy0YPgEGAFjUNg0ZyiFz6
 wMwpICRyXLNg9nLbAzWE8FGwWRbEnq3fJxUih/U8xG9wraqaDH4A4zws9
 D5HAQdPJinXBO2kiSNJZ0HZAguNBpKHG68LH1CLMUhcMRQf/pvldbL300
 TGs5RuZ0R1plPM6r1RthIlll71cLP1/i0hPi4Lmwph2oHQ680MxKXQp3X
 XHy3He6pDKGMX0nG+apPDSJTQdujH2tzt+q8uADD4dCjMnH2bUicKSAGq w==;
X-IronPort-AV: E=McAfee;i="6500,9779,10648"; a="365079985"
X-IronPort-AV: E=Sophos;i="5.98,259,1673942400"; d="scan'208";a="365079985"
Received: from orsmga007.jf.intel.com ([10.7.209.58])
 by fmsmga101.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 14 Mar 2023 06:03:20 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6500,9779,10648"; a="672323866"
X-IronPort-AV: E=Sophos;i="5.98,259,1673942400"; d="scan'208";a="672323866"
Received: from stinkpipe.fi.intel.com (HELO stinkbox) ([10.237.72.70])
 by orsmga007.jf.intel.com with SMTP; 14 Mar 2023 06:03:18 -0700
Received: by stinkbox (sSMTP sendmail emulation);
 Tue, 14 Mar 2023 15:03:17 +0200
From: Ville Syrjala <ville.syrjala@linux.intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Tue, 14 Mar 2023 15:02:53 +0200
Message-Id: <20230314130255.23273-8-ville.syrjala@linux.intel.com>
X-Mailer: git-send-email 2.39.2
In-Reply-To: <20230314130255.23273-1-ville.syrjala@linux.intel.com>
References: <20230314130255.23273-1-ville.syrjala@linux.intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH 7/9] drm/i915: Clean up skl+ plane alpha bits
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

Convert a few more skl+ plane registers to REG_BIT() & co.
Somehow thse were missed during the earlier cleanup.

Signed-off-by: Ville Syrjälä <ville.syrjala@linux.intel.com>
---
 drivers/gpu/drm/i915/i915_reg.h | 5 +++--
 1 file changed, 3 insertions(+), 2 deletions(-)

diff --git a/drivers/gpu/drm/i915/i915_reg.h b/drivers/gpu/drm/i915/i915_reg.h
index e908959dba4a..334e96d45c8d 100644
--- a/drivers/gpu/drm/i915/i915_reg.h
+++ b/drivers/gpu/drm/i915/i915_reg.h
@@ -4591,10 +4591,11 @@
 #define _PLANE_KEYVAL_2_A			0x70294
 #define _PLANE_KEYMSK_1_A			0x70198
 #define _PLANE_KEYMSK_2_A			0x70298
-#define  PLANE_KEYMSK_ALPHA_ENABLE		(1 << 31)
+#define  PLANE_KEYMSK_ALPHA_ENABLE		REG_BIT(31)
 #define _PLANE_KEYMAX_1_A			0x701a0
 #define _PLANE_KEYMAX_2_A			0x702a0
-#define  PLANE_KEYMAX_ALPHA(a)			((a) << 24)
+#define  PLANE_KEYMAX_ALPHA_MASK		REG_GENMASK(31, 24)
+#define  PLANE_KEYMAX_ALPHA(a)			REG_FIELD_PREP(PLANE_KEYMAX_ALPHA_MASK, (a))
 #define _PLANE_SURFLIVE_1_A			0x701ac
 #define _PLANE_SURFLIVE_2_A			0x702ac
 #define _PLANE_CC_VAL_1_A			0x701b4
-- 
2.39.2

