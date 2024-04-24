Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 5A5E58B0356
	for <lists+intel-gfx@lfdr.de>; Wed, 24 Apr 2024 09:41:10 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id E6E2A10FDBC;
	Wed, 24 Apr 2024 07:41:08 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="Tk5s7+ky";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.14])
 by gabe.freedesktop.org (Postfix) with ESMTPS id C6CB91138C0
 for <intel-gfx@lists.freedesktop.org>; Wed, 24 Apr 2024 07:41:07 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1713944468; x=1745480468;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=mY5rBkUv5dKIfGL26WrEIu238qwamV4aGnHGoc3Jhs4=;
 b=Tk5s7+kyYLuMHLV3bUunAvMieJY1IzWQgQXUASo4ss2hxx2p5SdP3Q5Z
 0fP2IRxNRxmnqVV9hFjIToCJqypq3gEn5O8hxyjK/GorrJe8g8bFW37uZ
 2AqhqyY6I0z2NoEEjLAj/EQzKgbKcESFBjWXEtLrb+zB4ZrmQedFXN4ix
 LJ8DUHBVaxJspTBzkyLAiOQu5wANRuffkZHLElgqejRhkrMkGFE0OJ1DB
 Ce92LqHuSAvYueaCkK2oNNyoh4LqRRk1088Nl0lZCCSCaqgQJ6rrR6zEM
 KlyZYRarmO55zexpPfaAwl8rezX5PFJzr8N5qLhGqz8rMGpZ7SdM42tMN g==;
X-CSE-ConnectionGUID: y5tsf/pXSYm2r1CuNE0cIg==
X-CSE-MsgGUID: W9gJNYVQTTywrh70FTfkXw==
X-IronPort-AV: E=McAfee;i="6600,9927,11053"; a="13391761"
X-IronPort-AV: E=Sophos;i="6.07,225,1708416000"; d="scan'208";a="13391761"
Received: from fmviesa003.fm.intel.com ([10.60.135.143])
 by orvoesa106.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 24 Apr 2024 00:41:08 -0700
X-CSE-ConnectionGUID: j5AAyvP5RIulN9Vky73GSQ==
X-CSE-MsgGUID: mW3uu2IISwyxrmEh0EIhhg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.07,225,1708416000"; d="scan'208";a="29108324"
Received: from kandpal-x299-ud4-pro.iind.intel.com ([10.190.239.32])
 by fmviesa003.fm.intel.com with ESMTP; 24 Apr 2024 00:41:05 -0700
From: Suraj Kandpal <suraj.kandpal@intel.com>
To: intel-gfx@lists.freedesktop.org
Cc: arun.r.murthy@intel.com,
	Suraj Kandpal <suraj.kandpal@intel.com>
Subject: [RFC 3/3] drm/i915: Schedule darkscreen detection work
Date: Wed, 24 Apr 2024 13:08:19 +0530
Message-ID: <20240424073829.824312-5-suraj.kandpal@intel.com>
X-Mailer: git-send-email 2.43.2
In-Reply-To: <20240424073829.824312-2-suraj.kandpal@intel.com>
References: <20240424073829.824312-2-suraj.kandpal@intel.com>
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

Schedule darkscreen detection work whenever we hit FIFO
underrun.

Signed-off-by: Suraj Kandpal <suraj.kandpal@intel.com>
---
 drivers/gpu/drm/i915/display/intel_fifo_underrun.c | 2 ++
 1 file changed, 2 insertions(+)

diff --git a/drivers/gpu/drm/i915/display/intel_fifo_underrun.c b/drivers/gpu/drm/i915/display/intel_fifo_underrun.c
index 09a7fa6c0c37..a6acd086d924 100644
--- a/drivers/gpu/drm/i915/display/intel_fifo_underrun.c
+++ b/drivers/gpu/drm/i915/display/intel_fifo_underrun.c
@@ -27,6 +27,7 @@
 
 #include "i915_drv.h"
 #include "i915_reg.h"
+#include "intel_darkscreen.h"
 #include "intel_de.h"
 #include "intel_display_irq.h"
 #include "intel_display_trace.h"
@@ -438,6 +439,7 @@ void intel_cpu_fifo_underrun_irq_handler(struct drm_i915_private *dev_priv,
 	}
 
 	intel_fbc_handle_fifo_underrun_irq(dev_priv);
+	intel_darkscreen_schedule_work(crtc);
 }
 
 /**
-- 
2.43.2

