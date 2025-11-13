Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 92150C57B54
	for <lists+intel-gfx@lfdr.de>; Thu, 13 Nov 2025 14:37:59 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 23DE210E807;
	Thu, 13 Nov 2025 13:37:58 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="Lw6U0Wj4";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.19])
 by gabe.freedesktop.org (Postfix) with ESMTPS id AD1E910E81B;
 Thu, 13 Nov 2025 13:37:56 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1763041076; x=1794577076;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=jWy6ADGVUdjNFlQMevTaaYx8UTQXtpIJ6uSEbKoFuSc=;
 b=Lw6U0Wj4qKNmhXhxI72Zfo5gG8CkISYEl7dNpI8BKeIJUpSKt5GOKYZc
 qrs691JfGDiBSBb5lP8+ugze4STEWZwZqEbGBEZ66Hyg9GSsQD+HlhEVv
 A42KFaFxrOGzRT37I53swpx42LI05QVmoO16ASu8pp1f7HKFg2GBlyLx7
 gr1A8MPzLOK8tLQblMvYwSjjY2D0qH9MpkDnytfVdxvcCY122tvnMhcBy
 GLt95j3sAjDlV7FqsVUNYiaOUOTKeYDPovJt9aZzkkxh6pLJ0LreyPM2l
 CQ4YnKkwWTgHo42NtSGCNCagV0cEcTF1p9eilgvc3c9DTCSEy80aQSTfD A==;
X-CSE-ConnectionGUID: oz9XGjE/T12VvAgJ9KUqag==
X-CSE-MsgGUID: eb8WY+s/SziTNISOuzkDJw==
X-IronPort-AV: E=McAfee;i="6800,10657,11612"; a="65004454"
X-IronPort-AV: E=Sophos;i="6.19,302,1754982000"; d="scan'208";a="65004454"
Received: from fmviesa002.fm.intel.com ([10.60.135.142])
 by orvoesa111.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 13 Nov 2025 05:37:56 -0800
X-CSE-ConnectionGUID: pLN6hyQiQvOnn9C7o28uDg==
X-CSE-MsgGUID: eZmWRvRcTh2lLpCLSTC92g==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.19,302,1754982000"; d="scan'208";a="212901761"
Received: from aotchere-mobl1.ger.corp.intel.com (HELO localhost)
 ([10.245.246.135])
 by fmviesa002-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 13 Nov 2025 05:37:54 -0800
From: Jani Nikula <jani.nikula@intel.com>
To: Jani Nikula <jani.nikula@intel.com>, intel-gfx@lists.freedesktop.org,
 intel-xe@lists.freedesktop.org
Cc: ville.syrjala@linux.intel.com,
	uma.shankar@intel.com
Subject: [PATCH] drm/i915: move intel_gmch.[ch] from soc/ to display/
Date: Thu, 13 Nov 2025 15:37:50 +0200
Message-ID: <20251113133751.696625-1-jani.nikula@intel.com>
X-Mailer: git-send-email 2.47.3
In-Reply-To: <cover.1763027774.git.jani.nikula@intel.com>
References: <cover.1763027774.git.jani.nikula@intel.com>
MIME-Version: 1.0
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
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

The sole user of the remaining functions in intel_gmch.[ch] is in
display. Move them under display.

This allows us to remove the compat soc/intel_gmch.h from xe.

Signed-off-by: Jani Nikula <jani.nikula@intel.com>
---
 drivers/gpu/drm/i915/Makefile                           | 5 +----
 drivers/gpu/drm/i915/{soc => display}/intel_gmch.c      | 3 +--
 drivers/gpu/drm/i915/{soc => display}/intel_gmch.h      | 0
 drivers/gpu/drm/i915/display/intel_vga.c                | 3 +--
 drivers/gpu/drm/xe/compat-i915-headers/soc/intel_gmch.h | 6 ------
 5 files changed, 3 insertions(+), 14 deletions(-)
 rename drivers/gpu/drm/i915/{soc => display}/intel_gmch.c (95%)
 rename drivers/gpu/drm/i915/{soc => display}/intel_gmch.h (100%)
 delete mode 100644 drivers/gpu/drm/xe/compat-i915-headers/soc/intel_gmch.h

diff --git a/drivers/gpu/drm/i915/Makefile b/drivers/gpu/drm/i915/Makefile
index 90588d5bb908..98822c98d960 100644
--- a/drivers/gpu/drm/i915/Makefile
+++ b/drivers/gpu/drm/i915/Makefile
@@ -57,10 +57,6 @@ i915-y += \
 	vlv_iosf_sb.o \
 	vlv_suspend.o
 
-# core peripheral code
-i915-y += \
-	soc/intel_gmch.o
-
 # core library code
 i915-y += \
 	i915_memcpy.o \
@@ -280,6 +276,7 @@ i915-y += \
 	display/intel_flipq.o \
 	display/intel_frontbuffer.o \
 	display/intel_global_state.o \
+	display/intel_gmch.o \
 	display/intel_hdcp.o \
 	display/intel_hdcp_gsc.o \
 	display/intel_hdcp_gsc_message.o \
diff --git a/drivers/gpu/drm/i915/soc/intel_gmch.c b/drivers/gpu/drm/i915/display/intel_gmch.c
similarity index 95%
rename from drivers/gpu/drm/i915/soc/intel_gmch.c
rename to drivers/gpu/drm/i915/display/intel_gmch.c
index 30f489417064..7797c7341047 100644
--- a/drivers/gpu/drm/i915/soc/intel_gmch.c
+++ b/drivers/gpu/drm/i915/display/intel_gmch.c
@@ -9,9 +9,8 @@
 #include <drm/drm_print.h>
 #include <drm/intel/i915_drm.h>
 
-#include "../display/intel_display_core.h" /* FIXME */
-
 #include "i915_drv.h"
+#include "intel_display_core.h"
 #include "intel_gmch.h"
 #include "intel_pci_config.h"
 
diff --git a/drivers/gpu/drm/i915/soc/intel_gmch.h b/drivers/gpu/drm/i915/display/intel_gmch.h
similarity index 100%
rename from drivers/gpu/drm/i915/soc/intel_gmch.h
rename to drivers/gpu/drm/i915/display/intel_gmch.h
diff --git a/drivers/gpu/drm/i915/display/intel_vga.c b/drivers/gpu/drm/i915/display/intel_vga.c
index 6e125564db34..91ba17965ee3 100644
--- a/drivers/gpu/drm/i915/display/intel_vga.c
+++ b/drivers/gpu/drm/i915/display/intel_vga.c
@@ -11,10 +11,9 @@
 #include <drm/drm_print.h>
 #include <video/vga.h>
 
-#include "soc/intel_gmch.h"
-
 #include "intel_de.h"
 #include "intel_display.h"
+#include "intel_gmch.h"
 #include "intel_vga.h"
 #include "intel_vga_regs.h"
 
diff --git a/drivers/gpu/drm/xe/compat-i915-headers/soc/intel_gmch.h b/drivers/gpu/drm/xe/compat-i915-headers/soc/intel_gmch.h
deleted file mode 100644
index 33c5257b3a71..000000000000
--- a/drivers/gpu/drm/xe/compat-i915-headers/soc/intel_gmch.h
+++ /dev/null
@@ -1,6 +0,0 @@
-/* SPDX-License-Identifier: MIT */
-/*
- * Copyright © 2023 Intel Corporation
- */
-
-#include "../../../i915/soc/intel_gmch.h"
-- 
2.47.3

