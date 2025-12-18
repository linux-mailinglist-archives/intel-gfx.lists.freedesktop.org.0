Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 68B52CCC3C7
	for <lists+intel-gfx@lfdr.de>; Thu, 18 Dec 2025 15:18:21 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id BE37810E9F2;
	Thu, 18 Dec 2025 14:18:19 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="mUJymJ8x";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.18])
 by gabe.freedesktop.org (Postfix) with ESMTPS id DC2DF10E9F0;
 Thu, 18 Dec 2025 14:18:18 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1766067499; x=1797603499;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=LmbegCEUmTCgJt8OpMKtdZM6cj2E+jIJJMQT5MRnJ0U=;
 b=mUJymJ8xi2Pg4jjo3HRqrQzFd4No0Qy8k51a+26UvPHh0hpEZm2TJJjD
 QxpkmCSG6ThBDIZwEAJndlcoEc1Wu7O0Y6gDYkx6kV+umdZ8i98y2rwg+
 O0RXWwBaXcIX5WvBTAOF/Gt1M673t/E81tFdVOU/F8Mv0LcOXVqfAJ+49
 r0O9xeWOnzQSyAYbSY3RDQjYjbD+tQHfG7vdocS0s+SDq2oVfWb5hknOu
 z+dPeMk7bgk0WdV+/iTN4aC6u7OH16Eb1Dn4+OizFBGCUm+dn8E6X/TRJ
 ovMPKpWXT2FGkCZXk6tQbEqYVHC+/Boh4Npa25upratMAm9iYxDuexn5Q A==;
X-CSE-ConnectionGUID: 1WIXtMmST7SfSXDzdcjLzw==
X-CSE-MsgGUID: UHgVWb6USUuLdrZrNlXgQg==
X-IronPort-AV: E=McAfee;i="6800,10657,11646"; a="67216003"
X-IronPort-AV: E=Sophos;i="6.21,158,1763452800"; d="scan'208";a="67216003"
Received: from fmviesa008.fm.intel.com ([10.60.135.148])
 by fmvoesa112.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 18 Dec 2025 06:18:14 -0800
X-CSE-ConnectionGUID: TiyRwgHhQ7G4muri8E3tKg==
X-CSE-MsgGUID: 0m1MIlAtQp+iSv2a5S3wig==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.21,158,1763452800"; d="scan'208";a="198860056"
Received: from mjarzebo-mobl1.ger.corp.intel.com (HELO localhost)
 ([10.245.246.247])
 by fmviesa008-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 18 Dec 2025 06:18:11 -0800
From: Jani Nikula <jani.nikula@intel.com>
To: intel-gfx@lists.freedesktop.org,
	intel-xe@lists.freedesktop.org
Cc: jani.nikula@intel.com, Suraj Kandpal <suraj.kandpal@intel.com>,
 Chaitanya Kumar Borah <chaitanya.kumar.borah@intel.com>,
 Uma Shankar <uma.shankar@intel.com>
Subject: [PATCH] drm/i915/colorop: do not include headers from headers
Date: Thu, 18 Dec 2025 16:18:07 +0200
Message-ID: <20251218141807.409751-1-jani.nikula@intel.com>
X-Mailer: git-send-email 2.47.3
MIME-Version: 1.0
Organization: Intel Finland Oy - BIC 0357606-4 - c/o Alberga Business Park,
 6 krs Bertel Jungin Aukio 5, 02600 Espoo, Finland
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

drm_colorop.h doesn't need the intel_display_types.h include for
anything. Don't include headers from headers if it can be avoided.

Fixes: 3e9b06559aa1 ("drm/i915: Add intel_color_op")
Cc: Suraj Kandpal <suraj.kandpal@intel.com>
Cc: Chaitanya Kumar Borah <chaitanya.kumar.borah@intel.com>
Cc: Uma Shankar <uma.shankar@intel.com>
Signed-off-by: Jani Nikula <jani.nikula@intel.com>
---
 drivers/gpu/drm/i915/display/intel_colorop.c | 2 ++
 drivers/gpu/drm/i915/display/intel_colorop.h | 4 +++-
 2 files changed, 5 insertions(+), 1 deletion(-)

diff --git a/drivers/gpu/drm/i915/display/intel_colorop.c b/drivers/gpu/drm/i915/display/intel_colorop.c
index f2fc0d8780ce..1d84933f05aa 100644
--- a/drivers/gpu/drm/i915/display/intel_colorop.c
+++ b/drivers/gpu/drm/i915/display/intel_colorop.c
@@ -2,7 +2,9 @@
 /*
  * Copyright © 2025 Intel Corporation
  */
+
 #include "intel_colorop.h"
+#include "intel_display_types.h"
 
 struct intel_colorop *to_intel_colorop(struct drm_colorop *colorop)
 {
diff --git a/drivers/gpu/drm/i915/display/intel_colorop.h b/drivers/gpu/drm/i915/display/intel_colorop.h
index 21d58eb9f3d0..9276eee6e75a 100644
--- a/drivers/gpu/drm/i915/display/intel_colorop.h
+++ b/drivers/gpu/drm/i915/display/intel_colorop.h
@@ -6,7 +6,9 @@
 #ifndef __INTEL_COLOROP_H__
 #define __INTEL_COLOROP_H__
 
-#include "intel_display_types.h"
+enum intel_color_block;
+struct drm_colorop;
+struct intel_colorop;
 
 struct intel_colorop *to_intel_colorop(struct drm_colorop *colorop);
 struct intel_colorop *intel_colorop_alloc(void);
-- 
2.47.3

