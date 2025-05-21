Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 8DB2BABFCC2
	for <lists+intel-gfx@lfdr.de>; Wed, 21 May 2025 20:24:29 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 76EB210E886;
	Wed, 21 May 2025 18:18:30 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="VG6WZHnS";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.7])
 by gabe.freedesktop.org (Postfix) with ESMTPS id D95A910E83A;
 Wed, 21 May 2025 18:17:29 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1747851451; x=1779387451;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=1lhuQOfZl4wHQrIbeO24gs0U7lwwKmZh0Hlx349cCvw=;
 b=VG6WZHnSYGgjAEUvDbnWogmy+umahBCS0PM9IS8xM3IWvtksA+Rqw8s2
 xD2d48e0h2uxT0MZWoBexIAS9tkPtAfyLNRNwm67g28Q6Qu66fsHxx933
 et2/nN+S3f4++R+1uOL0rUBU1foeJzj3rG8KLuIpBMfnKKTJbpBn210pv
 2OiL/2WJuP5BJJhANV553OxBl68dR7s45lqGOVxaPIVcuXClBIZutJCVc
 7JRb68kr79Gum/mNx2eWfuxVKI9yEltuEDt3OViLM4lfwovUWSMvQ/P59
 x58Ie8dBKK95L+2toTZtCEsKYlCNzmEYLLewW1Gsk4MtCGk7zSogP/xuJ g==;
X-CSE-ConnectionGUID: t4xaVfHbQ9qC8lYOTf4clg==
X-CSE-MsgGUID: GMTr9+vgSj+nlV4vFp0AkA==
X-IronPort-AV: E=McAfee;i="6700,10204,11440"; a="75244785"
X-IronPort-AV: E=Sophos;i="6.15,304,1739865600"; d="scan'208";a="75244785"
Received: from orviesa005.jf.intel.com ([10.64.159.145])
 by fmvoesa101.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 21 May 2025 11:17:30 -0700
X-CSE-ConnectionGUID: WvquNGCQSnavpNSsvKwuGg==
X-CSE-MsgGUID: lewZXq6rTSK7u/3V00Wr9Q==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.15,304,1739865600"; d="scan'208";a="145322302"
Received: from oandoniu-mobl3.ger.corp.intel.com (HELO stinkbox)
 ([10.245.244.255])
 by orviesa005.jf.intel.com with SMTP; 21 May 2025 11:17:27 -0700
Received: by stinkbox (sSMTP sendmail emulation);
 Wed, 21 May 2025 21:17:26 +0300
From: Ville Syrjala <ville.syrjala@linux.intel.com>
To: intel-gfx@lists.freedesktop.org
Cc: intel-xe@lists.freedesktop.org
Subject: [PATCH v2 13/13] drm/i915/flipq: Enable flipq by default for testing
Date: Wed, 21 May 2025 21:16:45 +0300
Message-ID: <20250521181645.32737-14-ville.syrjala@linux.intel.com>
X-Mailer: git-send-email 2.49.0
In-Reply-To: <20250521181645.32737-1-ville.syrjala@linux.intel.com>
References: <20250521181645.32737-1-ville.syrjala@linux.intel.com>
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

