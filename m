Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id B56B271556B
	for <lists+intel-gfx@lfdr.de>; Tue, 30 May 2023 08:14:58 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 0DD7F10E344;
	Tue, 30 May 2023 06:14:57 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga07.intel.com (mga07.intel.com [134.134.136.100])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 97D5A10E341
 for <intel-gfx@lists.freedesktop.org>; Tue, 30 May 2023 06:14:49 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1685427289; x=1716963289;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=yIFro2OixaipKPUBDiH9ufEe7FkQSLIiKfKL8soGkMI=;
 b=MYbl8KY1lskAR9+1MzvH8lgi6nXzIApaFEt0zhKlD0P6Uv6QJQ8Lg0aF
 z7yCD0xACXejuCQMXGfRDmGcWES28uUoThL/6uH4MIjEcD3oNA53Prqu+
 aPezazhAMnRCdRBGgA9piTPrmoJdpxlCTNpeAKvy21eRi9FePhIQbNeQJ
 YG3+EbtR0f74UlTGg7QBt18RScQbN7lWJWGt/ZE22MjgFi1yXreRvMxxM
 3hoveUKrO8eUKEe8uA9sDfx9nl7w3YZUuPQlgA9h/NshVAIt5JP+AUGdr
 lGVuhMHp0zT/+EnViVuBbzuJf0pA58B04Jnk9smQfMzWk8O8onhJfgWp8 g==;
X-IronPort-AV: E=McAfee;i="6600,9927,10725"; a="420585474"
X-IronPort-AV: E=Sophos;i="6.00,203,1681196400"; d="scan'208";a="420585474"
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
 by orsmga105.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 29 May 2023 23:14:48 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10725"; a="818651208"
X-IronPort-AV: E=Sophos;i="6.00,203,1681196400"; d="scan'208";a="818651208"
Received: from aravind2-mobl3.ger.corp.intel.com (HELO
 jhogande-mobl1.ger.corp.intel.com) ([10.252.46.36])
 by fmsmga002-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 29 May 2023 23:14:36 -0700
From: =?UTF-8?q?Jouni=20H=C3=B6gander?= <jouni.hogander@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Tue, 30 May 2023 09:14:16 +0300
Message-Id: <20230530061417.2384188-4-jouni.hogander@intel.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20230530061417.2384188-1-jouni.hogander@intel.com>
References: <20230530061417.2384188-1-jouni.hogander@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH v2 3/4] drm/i915/display: Remove
 i915_gem_object_types.h from intel_frontbuffer.h
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

Now as we have removed all the references to internals of i915_gem_object
from the frontbuffer header we can also remove including
i915_gem_object_types.h.

Signed-off-by: Jouni Högander <jouni.hogander@intel.com>
---
 drivers/gpu/drm/i915/display/intel_frontbuffer.h | 1 -
 1 file changed, 1 deletion(-)

diff --git a/drivers/gpu/drm/i915/display/intel_frontbuffer.h b/drivers/gpu/drm/i915/display/intel_frontbuffer.h
index eeccc847331d..72d89be3284b 100644
--- a/drivers/gpu/drm/i915/display/intel_frontbuffer.h
+++ b/drivers/gpu/drm/i915/display/intel_frontbuffer.h
@@ -28,7 +28,6 @@
 #include <linux/bits.h>
 #include <linux/kref.h>
 
-#include "gem/i915_gem_object_types.h"
 #include "i915_active_types.h"
 
 struct drm_i915_private;
-- 
2.34.1

