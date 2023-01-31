Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 53DC268366B
	for <lists+intel-gfx@lfdr.de>; Tue, 31 Jan 2023 20:23:16 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 3728510E38B;
	Tue, 31 Jan 2023 19:23:12 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga03.intel.com (mga03.intel.com [134.134.136.65])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 515F010E389
 for <intel-gfx@lists.freedesktop.org>; Tue, 31 Jan 2023 19:23:10 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1675192990; x=1706728990;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=LEBZV74OJ8nsjqniaDhBBAWNoyAdKNLpxG1Ej/yrHAw=;
 b=fqk+TLlC7NI2XwcsfIekJsgZO+b9tzgy9G0AqMz/qaALe7iSLZL3tGcP
 6uyO3Q24IciNMEs8RJuq3kih95XFE8o9KVfs6H9Y6SgIvKI7zRKNoDNSa
 1ZJNf8qRhDYSjC7TBEV9441cZyfe0lrElGAgCcuSPOSEG/EtZ01shuHht
 OC6zqvihAiGcHYN3goVEdIM7bkzO8g0RLIyPeNwosBy/lwHMQIg7finRN
 Nclt9LdAvZmXsR2NdShZ00qP+zBiFy+yEzYXZ0TiO6mtoCq6YE5/qiGYn
 Lj/Wtepg/KsK0mrEIyCqt83Kiq4luKISBtvz3ntB5ssTaj9FYzsLN2aiP A==;
X-IronPort-AV: E=McAfee;i="6500,9779,10607"; a="330039380"
X-IronPort-AV: E=Sophos;i="5.97,261,1669104000"; d="scan'208";a="330039380"
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
 by orsmga103.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 31 Jan 2023 11:22:56 -0800
X-IronPort-AV: E=McAfee;i="6500,9779,10607"; a="773113399"
X-IronPort-AV: E=Sophos;i="5.97,261,1669104000"; d="scan'208";a="773113399"
Received: from lucas-s2600cw.jf.intel.com ([10.165.21.196])
 by fmsmga002-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 31 Jan 2023 11:22:56 -0800
From: Lucas De Marchi <lucas.demarchi@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Tue, 31 Jan 2023 11:15:41 -0800
Message-Id: <20230131191542.1695398-1-lucas.demarchi@intel.com>
X-Mailer: git-send-email 2.39.0
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH 1/2] drm/i915: Split _MMIO() for
 _PORT3()/_PIPE3()
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
Cc: Lucas De Marchi <lucas.demarchi@intel.com>,
 Rodrigo Vivi <rodrigo.vivi@intel.com>
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

In some cases it might be preferred to use _MMIO() and _PORT3()/_PIPE3()
separately, so a common mmio base can be added to all cases. In order to
help removing the implicit dev_priv from some macros, this can be used
in future patches to pass for example DISPLAY_MMIO_BASE().

Declare _MMIO_PIPE3() and _MMIO_PORT3() like then non-3 variants.

Signed-off-by: Lucas De Marchi <lucas.demarchi@intel.com>
---
 drivers/gpu/drm/i915/display/intel_display_reg_defs.h | 7 ++++---
 1 file changed, 4 insertions(+), 3 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_display_reg_defs.h b/drivers/gpu/drm/i915/display/intel_display_reg_defs.h
index 755c1ea8225c..477704eeea0f 100644
--- a/drivers/gpu/drm/i915/display/intel_display_reg_defs.h
+++ b/drivers/gpu/drm/i915/display/intel_display_reg_defs.h
@@ -16,22 +16,23 @@
  * Named helper wrappers around _PICK_EVEN() and _PICK_EVEN_2RANGES().
  */
 #define _PIPE(pipe, a, b)		_PICK_EVEN(pipe, a, b)
+#define _PIPE3(pipe, a, b, c)		_PICK_EVEN_2RANGES(pipe, 1, a, a, b, c)
 #define _PLANE(plane, a, b)		_PICK_EVEN(plane, a, b)
 #define _TRANS(tran, a, b)		_PICK_EVEN(tran, a, b)
 #define _PORT(port, a, b)		_PICK_EVEN(port, a, b)
+#define _PORT3(port, a, b, c)		_PICK_EVEN_2RANGES(port, 1, a, a, b, c)
 #define _PLL(pll, a, b)			_PICK_EVEN(pll, a, b)
 #define _PHY(phy, a, b)			_PICK_EVEN(phy, a, b)
 
 #define _MMIO_PIPE(pipe, a, b)		_MMIO(_PIPE(pipe, a, b))
+#define _MMIO_PIPE3(pipe, a, b, c)	_MMIO(_PIPE3(pipe, a, b, c))
 #define _MMIO_PLANE(plane, a, b)	_MMIO(_PLANE(plane, a, b))
 #define _MMIO_TRANS(tran, a, b)		_MMIO(_TRANS(tran, a, b))
 #define _MMIO_PORT(port, a, b)		_MMIO(_PORT(port, a, b))
+#define _MMIO_PORT3(port, a, b, c)	_MMIO(_PORT3(port, a, b, c))
 #define _MMIO_PLL(pll, a, b)		_MMIO(_PLL(pll, a, b))
 #define _MMIO_PHY(phy, a, b)		_MMIO(_PHY(phy, a, b))
 
-#define _MMIO_PIPE3(pipe, a, b, c)	_MMIO(_PICK_EVEN_2RANGES(pipe, 1, a, a, b, c))
-#define _MMIO_PORT3(pipe, a, b, c)	_MMIO(_PICK_EVEN_2RANGES(pipe, 1, a, a, b, c))
-
 /*
  * Device info offset array based helpers for groups of registers with unevenly
  * spaced base offsets.
-- 
2.39.0

