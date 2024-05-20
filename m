Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 536A68CA1E7
	for <lists+intel-gfx@lfdr.de>; Mon, 20 May 2024 20:18:30 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 8097B10E81B;
	Mon, 20 May 2024 18:18:28 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="RmXYqNfd";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.9])
 by gabe.freedesktop.org (Postfix) with ESMTPS id AED7410E81B;
 Mon, 20 May 2024 18:18:26 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1716229107; x=1747765107;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=bqS+PewAw9QHJJZ9fGvHVfkspTLUQGZS+nT/m/bEIV8=;
 b=RmXYqNfdMvwjyLTxJZQzhjK3YpTyYR8VQ10svs+leTBQkZ1o136+gynR
 rSLWC5rcbDKXodfBvNl9HfaYcOyyVQ06cAeyxTQjiy4dKSW8bzTleRUqX
 6sCOKospMj8R41kAN0QbvxOPoprpIhZBV0clMIbdmUD4H/OZg3UwG+txr
 n10UwlgOvDw58i+JjRtiwqaItuzaaUR7iMH76qdaPGXKfpDUQr35oOm+h
 WrkDve7yfD/qnFQuJCnhnUWZdZYT1mUBoW1ac4RwVSL4BDJDfZioYQqQx
 zCImZK99qM27askjvhmhhT98esYjdf8c7QpsqgZbpWfPWVTdCorE/7KeG A==;
X-CSE-ConnectionGUID: o8TIXTwoSF6JvJXtpD6MEw==
X-CSE-MsgGUID: 1ey+03EjQaS888OhdkEbEg==
X-IronPort-AV: E=McAfee;i="6600,9927,11078"; a="34894565"
X-IronPort-AV: E=Sophos;i="6.08,175,1712646000"; d="scan'208";a="34894565"
Received: from orviesa005.jf.intel.com ([10.64.159.145])
 by orvoesa101.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 20 May 2024 11:18:27 -0700
X-CSE-ConnectionGUID: gfk0zTq3T2iGe9C6IB57Og==
X-CSE-MsgGUID: 3RK7YQimTOuJX/KZwIls4w==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.08,175,1712646000"; d="scan'208";a="37466519"
Received: from mwajdecz-mobl.ger.corp.intel.com ([10.246.25.139])
 by orviesa005-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 20 May 2024 11:18:25 -0700
From: Michal Wajdeczko <michal.wajdeczko@intel.com>
To: intel-xe@lists.freedesktop.org,
	intel-gfx@lists.freedesktop.org
Cc: Michal Wajdeczko <michal.wajdeczko@intel.com>,
 Jani Nikula <jani.nikula@intel.com>
Subject: [PATCH 1/3] drm/i915/display: Add missing include to intel_vga.c
Date: Mon, 20 May 2024 20:18:12 +0200
Message-Id: <20240520181814.2392-2-michal.wajdeczko@intel.com>
X-Mailer: git-send-email 2.21.0
In-Reply-To: <20240520181814.2392-1-michal.wajdeczko@intel.com>
References: <20240520181814.2392-1-michal.wajdeczko@intel.com>
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

This compilation unit uses udelay() function without including
it's header file. Fix that to break dependency on other code.

Signed-off-by: Michal Wajdeczko <michal.wajdeczko@intel.com>
Cc: Jani Nikula <jani.nikula@intel.com>
---
 drivers/gpu/drm/i915/display/intel_vga.c | 1 +
 1 file changed, 1 insertion(+)

diff --git a/drivers/gpu/drm/i915/display/intel_vga.c b/drivers/gpu/drm/i915/display/intel_vga.c
index 4b98833bfa8c..0b5916c15307 100644
--- a/drivers/gpu/drm/i915/display/intel_vga.c
+++ b/drivers/gpu/drm/i915/display/intel_vga.c
@@ -3,6 +3,7 @@
  * Copyright © 2019 Intel Corporation
  */
 
+#include <linux/delay.h>
 #include <linux/vgaarb.h>
 
 #include <video/vga.h>
-- 
2.43.0

