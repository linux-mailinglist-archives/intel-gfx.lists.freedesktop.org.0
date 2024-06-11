Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 7F461903D7C
	for <lists+intel-gfx@lfdr.de>; Tue, 11 Jun 2024 15:34:13 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 8B2C410E64A;
	Tue, 11 Jun 2024 13:34:11 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="EZkwhZyY";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.16])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 0915710E64E
 for <intel-gfx@lists.freedesktop.org>; Tue, 11 Jun 2024 13:34:09 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1718112849; x=1749648849;
 h=from:to:subject:date:message-id:in-reply-to:references:
 mime-version:content-transfer-encoding;
 bh=uv7d6NIlyG/bZ1NWHLZM1p8ciHc654xqyKxHUbta82Y=;
 b=EZkwhZyYi6+enmTsXcHpZESQLJl7NrLE2ZAqoFmyTPAxYJCTU5Pu9IKs
 IEWj1pkEqVpO3M4avrb0+A9EoV2thZLmR/8N+PvxYN6O5fxjaC8e83QiO
 phiT5shKNPI0AGjv3W+H5t1Vl+QBykhlS8kujftiu0ZBy3O7Rj8UxsXua
 VcnHks9ZzqS0LhaRyAXAeJfwS1X51eqQ+pX5UetxasgN2a3hU4Y4v76Uu
 oP9Od07Le+v4BpReTuvQl+DFZ0e99EuxNcCAcxhoPKxE1zo2jPl6Fx8/N
 PrV2XfFvr4o7DtDU6goA1mRQD19hXknNbRN+zKKny7qpykNh3eZ0VXAsD A==;
X-CSE-ConnectionGUID: mgMYCpppTcCJX8bXuhL40w==
X-CSE-MsgGUID: bMwnXMkwToqP/hmTM86EZA==
X-IronPort-AV: E=McAfee;i="6600,9927,11099"; a="12018241"
X-IronPort-AV: E=Sophos;i="6.08,230,1712646000"; d="scan'208";a="12018241"
Received: from fmviesa008.fm.intel.com ([10.60.135.148])
 by fmvoesa110.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 11 Jun 2024 06:34:09 -0700
X-CSE-ConnectionGUID: WuBsZewIQSujsqbh0wkhUA==
X-CSE-MsgGUID: w2geA1x0TbyWSLc0beaBSg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.08,230,1712646000"; d="scan'208";a="39421441"
Received: from stinkpipe.fi.intel.com (HELO stinkbox) ([10.237.72.74])
 by fmviesa008.fm.intel.com with SMTP; 11 Jun 2024 06:34:07 -0700
Received: by stinkbox (sSMTP sendmail emulation);
 Tue, 11 Jun 2024 16:34:06 +0300
From: Ville Syrjala <ville.syrjala@linux.intel.com>
To: intel-gfx@lists.freedesktop.org
Subject: [PATCH 08/11] drm/i915/dsb: Add i915.enable_dsb module parameter
Date: Tue, 11 Jun 2024 16:33:41 +0300
Message-ID: <20240611133344.30673-9-ville.syrjala@linux.intel.com>
X-Mailer: git-send-email 2.44.2
In-Reply-To: <20240611133344.30673-1-ville.syrjala@linux.intel.com>
References: <20240611133344.30673-1-ville.syrjala@linux.intel.com>
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

As we extend the use of DSB for critical pipe/plane register
programming, it'll be nice to have an escape valve at hand,
in case things go very poorly. To that end, add a i915.enable_dsb
modparam by which we can force the driver to take the pure mmio
path instead.

Signed-off-by: Ville Syrjälä <ville.syrjala@linux.intel.com>
---
 drivers/gpu/drm/i915/display/intel_display_params.c | 3 +++
 drivers/gpu/drm/i915/display/intel_display_params.h | 1 +
 drivers/gpu/drm/i915/display/intel_dsb.c            | 3 +++
 3 files changed, 7 insertions(+)

diff --git a/drivers/gpu/drm/i915/display/intel_display_params.c b/drivers/gpu/drm/i915/display/intel_display_params.c
index aebdb7b59dbf..449a31767791 100644
--- a/drivers/gpu/drm/i915/display/intel_display_params.c
+++ b/drivers/gpu/drm/i915/display/intel_display_params.c
@@ -54,6 +54,9 @@ intel_display_param_named_unsafe(enable_dc, int, 0400,
 intel_display_param_named_unsafe(enable_dpt, bool, 0400,
 	"Enable display page table (DPT) (default: true)");
 
+intel_display_param_named_unsafe(enable_dsb, bool, 0600,
+	"Enable display state buffer (DSB) (default: true)");
+
 intel_display_param_named_unsafe(enable_sagv, bool, 0400,
 	"Enable system agent voltage/frequency scaling (SAGV) (default: true)");
 
diff --git a/drivers/gpu/drm/i915/display/intel_display_params.h b/drivers/gpu/drm/i915/display/intel_display_params.h
index 1208a62c16d2..48c29c55c939 100644
--- a/drivers/gpu/drm/i915/display/intel_display_params.h
+++ b/drivers/gpu/drm/i915/display/intel_display_params.h
@@ -31,6 +31,7 @@ struct drm_i915_private;
 	param(int, vbt_sdvo_panel_type, -1, 0400) \
 	param(int, enable_dc, -1, 0400) \
 	param(bool, enable_dpt, true, 0400) \
+	param(bool, enable_dsb, true, 0600) \
 	param(bool, enable_sagv, true, 0600) \
 	param(int, disable_power_well, -1, 0400) \
 	param(bool, enable_ips, true, 0600) \
diff --git a/drivers/gpu/drm/i915/display/intel_dsb.c b/drivers/gpu/drm/i915/display/intel_dsb.c
index bee48ac419ce..2ab3765f6c06 100644
--- a/drivers/gpu/drm/i915/display/intel_dsb.c
+++ b/drivers/gpu/drm/i915/display/intel_dsb.c
@@ -460,6 +460,9 @@ struct intel_dsb *intel_dsb_prepare(struct intel_atomic_state *state,
 	if (!HAS_DSB(i915))
 		return NULL;
 
+	if (!i915->display.params.enable_dsb)
+		return NULL;
+
 	/* TODO: DSB is broken in Xe KMD, so disabling it until fixed */
 	if (!IS_ENABLED(I915))
 		return NULL;
-- 
2.44.2

