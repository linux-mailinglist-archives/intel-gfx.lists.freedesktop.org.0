Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 5BF05ACC8CE
	for <lists+intel-gfx@lfdr.de>; Tue,  3 Jun 2025 16:09:20 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id F064510E915;
	Tue,  3 Jun 2025 14:09:18 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="P4GqxWWp";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.11])
 by gabe.freedesktop.org (Postfix) with ESMTPS id E913310E913;
 Tue,  3 Jun 2025 14:09:17 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1748959759; x=1780495759;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=1lhuQOfZl4wHQrIbeO24gs0U7lwwKmZh0Hlx349cCvw=;
 b=P4GqxWWphP+ykjLSqaWx87eaIaiXgTKH32IrfNcPlnRGbsiAUyccFAWz
 ZDe6tWUo1Oa1TEcjtuNChmc8JL23WE99tmsneC6QQWD7EvTwes8O1Y2LB
 I0NmlIyWuRKDgVp6xZma0cH0zkrwH7qAzD29XBoy4R8kgEt/gC09t28KK
 S9RmglF5b/gkLXjCATbgEDV60ECddnxvrm3D76t3mej1azgPXQ0BCakoq
 v0CKZMExTq8JG1MnQltVk1/MsfRcI8XfbfE66SIZNTF9zq1Hg4lmQsJB1
 qUEGM5X2miOcIhudoAUU+o0HRn5oZjhHe2scSG14O2MZxIRoNNbkIJw0C w==;
X-CSE-ConnectionGUID: +ZeBgw6QTReTnMzFehtioA==
X-CSE-MsgGUID: m8fPROf9SfiiI98viEaT7Q==
X-IronPort-AV: E=McAfee;i="6700,10204,11453"; a="61265893"
X-IronPort-AV: E=Sophos;i="6.16,206,1744095600"; d="scan'208";a="61265893"
Received: from orviesa005.jf.intel.com ([10.64.159.145])
 by orvoesa103.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 03 Jun 2025 07:09:18 -0700
X-CSE-ConnectionGUID: D4/j2TtvQSyoNaTyFbz2Xg==
X-CSE-MsgGUID: /Xxa4+CYQM2x/s8x4khCGQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.16,206,1744095600"; d="scan'208";a="150155739"
Received: from bergbenj-mobl1.ger.corp.intel.com (HELO stinkbox)
 ([10.245.244.220])
 by orviesa005.jf.intel.com with SMTP; 03 Jun 2025 07:09:15 -0700
Received: by stinkbox (sSMTP sendmail emulation);
 Tue, 03 Jun 2025 17:09:14 +0300
From: Ville Syrjala <ville.syrjala@linux.intel.com>
To: intel-gfx@lists.freedesktop.org
Cc: intel-xe@lists.freedesktop.org
Subject: [PATCH v3 12/12] drm/i915/flipq: Enable flipq by default for testing
Date: Tue,  3 Jun 2025 17:08:36 +0300
Message-ID: <20250603140836.21432-13-ville.syrjala@linux.intel.com>
X-Mailer: git-send-email 2.49.0
In-Reply-To: <20250603140836.21432-1-ville.syrjala@linux.intel.com>
References: <20250603140836.21432-1-ville.syrjala@linux.intel.com>
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

