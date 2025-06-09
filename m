Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 8B8D8AD20AA
	for <lists+intel-gfx@lfdr.de>; Mon,  9 Jun 2025 16:11:59 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 2A9B910E3EA;
	Mon,  9 Jun 2025 14:11:58 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="OXHzk8mh";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.14])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 01F1810E3EA;
 Mon,  9 Jun 2025 14:11:56 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1749478317; x=1781014317;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=1lhuQOfZl4wHQrIbeO24gs0U7lwwKmZh0Hlx349cCvw=;
 b=OXHzk8mhNYlJSOLK4QLrssDEq+YloIuhv6Sp/HR1Sq3HvRjkLP8QqpAX
 EM8y5IV4W7gcoTZTMyl2d1XRS5a4+YMqIqUqiD5ro881Z2hKR1YQ4ahPT
 O+p6VjV+t227EAXcuFCRpf9FjzJwBhnUtce8SlfZZVHlhJaIcChZAMXlw
 pfSlmlrN5cxHO8eQmB8U8pJrs1gIqYLP/yrrstZtxhsmqLRs81NsK3g7B
 QFEF+1WbUJ8jGkYGxEsA2cLpEfwwzjf+fZjaO9XLJftpGqpJZtbjcsRwd
 OOrEGMgPuMQriGxarsNnNDHqRyN+vLoB4O/psvyna871tNpqPXLTkm6v8 A==;
X-CSE-ConnectionGUID: h0eAKUuyRRu4daKlKLIlqA==
X-CSE-MsgGUID: +3MVph77S5S2YqMEKVKgHw==
X-IronPort-AV: E=McAfee;i="6800,10657,11459"; a="55360907"
X-IronPort-AV: E=Sophos;i="6.16,222,1744095600"; d="scan'208";a="55360907"
Received: from orviesa005.jf.intel.com ([10.64.159.145])
 by orvoesa106.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 09 Jun 2025 07:11:57 -0700
X-CSE-ConnectionGUID: 1mG+hCxDT3q+fZNxRzqTQw==
X-CSE-MsgGUID: 38DHr0NUSC+MYKzDj0CAEQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.16,222,1744095600"; d="scan'208";a="151765882"
Received: from mjarzebo-mobl1.ger.corp.intel.com (HELO stinkbox)
 ([10.245.244.99])
 by orviesa005.jf.intel.com with SMTP; 09 Jun 2025 07:11:54 -0700
Received: by stinkbox (sSMTP sendmail emulation);
 Mon, 09 Jun 2025 17:11:53 +0300
From: Ville Syrjala <ville.syrjala@linux.intel.com>
To: intel-gfx@lists.freedesktop.org
Cc: intel-xe@lists.freedesktop.org
Subject: [PATCH v4 20/21] drm/i915/flipq: Enable flipq by default for testing
Date: Mon,  9 Jun 2025 17:10:45 +0300
Message-ID: <20250609141046.6244-21-ville.syrjala@linux.intel.com>
X-Mailer: git-send-email 2.49.0
In-Reply-To: <20250609141046.6244-1-ville.syrjala@linux.intel.com>
References: <20250609141046.6244-1-ville.syrjala@linux.intel.com>
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

Flip on the enable_flipq modparam to see if CI blows up.

Signed-off-by: Ville Syrjälä <ville.syrjala@linux.intel.com>
---
 drivers/gpu/drm/i915/display/intel_display_params.c | 2 +-
 drivers/gpu/drm/i915/display/intel_display_params.h | 2 +-
 2 files changed, 2 insertions(+), 2 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_display_params.c b/drivers/gpu/drm/i915/display/intel_display_params.c
index 75316247ee8a..2883663e06ff 100644
--- a/drivers/gpu/drm/i915/display/intel_display_params.c
+++ b/drivers/gpu/drm/i915/display/intel_display_params.c
@@ -63,7 +63,7 @@ intel_display_param_named_unsafe(enable_dsb, bool, 0400,
 	"Enable display state buffer (DSB) (default: true)");
 
 intel_display_param_named_unsafe(enable_flipq, bool, 0400,
-	"Enable DMC flip queue (default: false)");
+	"Enable DMC flip queue (default: true)");
 
 intel_display_param_named_unsafe(enable_sagv, bool, 0400,
 	"Enable system agent voltage/frequency scaling (SAGV) (default: true)");
diff --git a/drivers/gpu/drm/i915/display/intel_display_params.h b/drivers/gpu/drm/i915/display/intel_display_params.h
index 784e6bae8615..600bff5cddda 100644
--- a/drivers/gpu/drm/i915/display/intel_display_params.h
+++ b/drivers/gpu/drm/i915/display/intel_display_params.h
@@ -31,7 +31,7 @@ struct drm_printer;
 	param(int, enable_dc, -1, 0400) \
 	param(bool, enable_dpt, true, 0400) \
 	param(bool, enable_dsb, true, 0600) \
-	param(bool, enable_flipq, false, 0600) \
+	param(bool, enable_flipq, true, 0600) \
 	param(bool, enable_sagv, true, 0600) \
 	param(int, disable_power_well, -1, 0400) \
 	param(bool, enable_ips, true, 0600) \
-- 
2.49.0

