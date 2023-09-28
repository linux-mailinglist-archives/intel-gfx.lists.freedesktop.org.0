Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id C9BBE7B24ED
	for <lists+intel-gfx@lfdr.de>; Thu, 28 Sep 2023 20:10:12 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 0737310E6B1;
	Thu, 28 Sep 2023 18:10:11 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.55.52.93])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 0D78810E6B0
 for <intel-gfx@lists.freedesktop.org>; Thu, 28 Sep 2023 18:10:01 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1695924601; x=1727460601;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=9gRRe28ruR/O41vlF7YYTtnuV6WKI5KzWSsp6GO2bkU=;
 b=nyYT6JlgPUN7jcTJMbt2m6YP1VnWkmA/ofcRtRHGX7lBgg/eCiunrus5
 EUWribMuQmyEBlMTMCApFTNPihQZh/xhr8TLijKuCoGDsLgY1ZvTVw7Ki
 TcMmcyls3NVu2pd3ZJBJeudtLgyj2IvYI0uInLcIeVDoZZQv9oCfD31ww
 obSeSmOzll8GbyU908mGlHcXO2kaBB/D5C1iP1vuX/iMhvlXS/VGv3jNO
 rNKDzxDes6y04JRQR067cKBJu3+NaLXxf8McVDeTVZrn7wur6qyhprPtf
 J7vLMrzntt5+1Po8s/5IohR11UL3Jr9x5ch1Clf5b0C0BNQOd+cGFWHVC w==;
X-IronPort-AV: E=McAfee;i="6600,9927,10847"; a="379407291"
X-IronPort-AV: E=Sophos;i="6.03,184,1694761200"; d="scan'208";a="379407291"
Received: from fmsmga005.fm.intel.com ([10.253.24.32])
 by fmsmga102.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 28 Sep 2023 11:10:00 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10847"; a="1080659554"
X-IronPort-AV: E=Sophos;i="6.03,184,1694761200"; d="scan'208";a="1080659554"
Received: from danielba-mobl1.ger.corp.intel.com (HELO localhost)
 ([10.252.53.20])
 by fmsmga005-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 28 Sep 2023 11:09:59 -0700
From: Jani Nikula <jani.nikula@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Thu, 28 Sep 2023 21:08:59 +0300
Message-Id: <0b866dc6fbb45fcee8a88fa4972822416e72cef2.1695924021.git.jani.nikula@intel.com>
X-Mailer: git-send-email 2.39.2
In-Reply-To: <cover.1695924021.git.jani.nikula@intel.com>
References: <cover.1695924021.git.jani.nikula@intel.com>
MIME-Version: 1.0
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH 15/15] drm/i915: stop including
 gt/intel_workarounds.h from i915_drv.h
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
Cc: jani.nikula@intel.com
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

Not needed, and not included implicitly either.

Signed-off-by: Jani Nikula <jani.nikula@intel.com>
---
 drivers/gpu/drm/i915/i915_drv.h | 1 -
 1 file changed, 1 deletion(-)

diff --git a/drivers/gpu/drm/i915/i915_drv.h b/drivers/gpu/drm/i915/i915_drv.h
index fb7139514e18..76b2019dc44e 100644
--- a/drivers/gpu/drm/i915/i915_drv.h
+++ b/drivers/gpu/drm/i915/i915_drv.h
@@ -44,7 +44,6 @@
 #include "gem/i915_gem_stolen.h"
 
 #include "gt/intel_region_lmem.h"
-#include "gt/intel_workarounds.h"
 
 #include "soc/intel_pch.h"
 
-- 
2.39.2

