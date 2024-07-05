Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 9AAD7928AE9
	for <lists+intel-gfx@lfdr.de>; Fri,  5 Jul 2024 16:53:08 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 4317110EBD4;
	Fri,  5 Jul 2024 14:53:07 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="bzb+TRpH";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.19])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 6407010EBCD;
 Fri,  5 Jul 2024 14:53:06 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1720191186; x=1751727186;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=FN6wnEsK/r6+Dhsa98/RknQPLHBrohFxPO0oJxYiSrY=;
 b=bzb+TRpHPDNmxdK8j6j74NJTh0a92KTzD5hs/ncjr/0ep76Ut1eKIbij
 U42Ms+aGbIwGKrbvdfcPY5H9KeD9cAyUfBBoH2K7hkPqVPqVV82LndVf+
 /vaf/Tb66291fnz8hb9xROd/MLWU7esCjqeYNn30ivEgJhuxWLJX5zYJj
 OqhiytEkdSm/W0CeaBSAZdBXtL4pm0qUvJ2/THf4JX2wuuz8gonoqk3qU
 ePKQgJzreBkHU1L9bPh+VE8o58TKUG/4vcOiqkz2LmEC5y8Axa+ijfXIw
 kmL93j05EAcZRS10044wnBUG7lirfLjV1bPoIxwujNxwskbN1WmpimTyC Q==;
X-CSE-ConnectionGUID: NI7yt3wLRdOV8UAIZYM2vw==
X-CSE-MsgGUID: 41eNUUBNROOjw1uMAIt0ZQ==
X-IronPort-AV: E=McAfee;i="6700,10204,11123"; a="17204730"
X-IronPort-AV: E=Sophos;i="6.09,185,1716274800"; d="scan'208";a="17204730"
Received: from fmviesa008.fm.intel.com ([10.60.135.148])
 by fmvoesa113.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 05 Jul 2024 07:53:06 -0700
X-CSE-ConnectionGUID: bue+CimsSz+kU06aZNzcPg==
X-CSE-MsgGUID: d4cwshsHRrGiizfptQ7OoQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.09,185,1716274800"; d="scan'208";a="46864365"
Received: from stinkpipe.fi.intel.com (HELO stinkbox) ([10.237.72.74])
 by fmviesa008.fm.intel.com with SMTP; 05 Jul 2024 07:53:04 -0700
Received: by stinkbox (sSMTP sendmail emulation);
 Fri, 05 Jul 2024 17:53:03 +0300
From: Ville Syrjala <ville.syrjala@linux.intel.com>
To: intel-gfx@lists.freedesktop.org
Cc: intel-xe@lists.freedesktop.org
Subject: [PATCH 03/20] drm/i915/fbc:
 s/_intel_fbc_cfb_stride()/intel_fbc_plane_cfb_stride()/
Date: Fri,  5 Jul 2024 17:52:37 +0300
Message-ID: <20240705145254.3355-4-ville.syrjala@linux.intel.com>
X-Mailer: git-send-email 2.44.2
In-Reply-To: <20240705145254.3355-1-ville.syrjala@linux.intel.com>
References: <20240705145254.3355-1-ville.syrjala@linux.intel.com>
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

_intel_fbc_cfb_stride() calculates the CFB stride the hardware would
automagically generate from the plane's stride. Rename the function
to intel_fbc_plane_cfb_stride() to better reflect its purpose.

Signed-off-by: Ville Syrjälä <ville.syrjala@linux.intel.com>
---
 drivers/gpu/drm/i915/display/intel_fbc.c | 6 +++---
 1 file changed, 3 insertions(+), 3 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_fbc.c b/drivers/gpu/drm/i915/display/intel_fbc.c
index de8caa69a0dd..8f3b8f2cbf7b 100644
--- a/drivers/gpu/drm/i915/display/intel_fbc.c
+++ b/drivers/gpu/drm/i915/display/intel_fbc.c
@@ -141,7 +141,7 @@ static unsigned int intel_fbc_plane_stride(const struct intel_plane_state *plane
 }
 
 /* plane stride based cfb stride in bytes, assuming 1:1 compression limit */
-static unsigned int _intel_fbc_cfb_stride(const struct intel_plane_state *plane_state)
+static unsigned int intel_fbc_plane_cfb_stride(const struct intel_plane_state *plane_state)
 {
 	unsigned int cpp = 4; /* FBC always 4 bytes per pixel */
 
@@ -182,7 +182,7 @@ static unsigned int skl_fbc_min_cfb_stride(const struct intel_plane_state *plane
 static unsigned int intel_fbc_cfb_stride(const struct intel_plane_state *plane_state)
 {
 	struct intel_display *display = to_intel_display(plane_state->uapi.plane->dev);
-	unsigned int stride = _intel_fbc_cfb_stride(plane_state);
+	unsigned int stride = intel_fbc_plane_cfb_stride(plane_state);
 
 	/*
 	 * At least some of the platforms require each 4 line segment to
@@ -212,7 +212,7 @@ static u16 intel_fbc_override_cfb_stride(const struct intel_plane_state *plane_s
 {
 	struct intel_display *display = to_intel_display(plane_state->uapi.plane->dev);
 	unsigned int stride_aligned = intel_fbc_cfb_stride(plane_state);
-	unsigned int stride = _intel_fbc_cfb_stride(plane_state);
+	unsigned int stride = intel_fbc_plane_cfb_stride(plane_state);
 	const struct drm_framebuffer *fb = plane_state->hw.fb;
 
 	/*
-- 
2.44.2

