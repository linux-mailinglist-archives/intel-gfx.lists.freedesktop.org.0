Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 6A5E18FCFEF
	for <lists+intel-gfx@lfdr.de>; Wed,  5 Jun 2024 15:48:20 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 6853210E69E;
	Wed,  5 Jun 2024 13:48:17 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="gsxB4Ohr";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.7])
 by gabe.freedesktop.org (Postfix) with ESMTPS id BA30910E4F0
 for <intel-gfx@lists.freedesktop.org>; Wed,  5 Jun 2024 13:48:14 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1717595295; x=1749131295;
 h=from:to:subject:date:message-id:in-reply-to:references:
 mime-version:content-transfer-encoding;
 bh=raoNF3iysIixTlSMsONE18nVKluaHZDzPFny85hlEB0=;
 b=gsxB4Ohr99l7ainhyrFEWKBiqoy+4YGZZsiuug/J7lbeaVZFFkvmM33w
 niGjOvJWWEijzzvA2D/e4gZNUn119FkLCexivJDA5Luu3SS2qXjMcD/68
 anpd5rjoonQdjLzvwbull9saPg7nN7HoQL7wpA8NEka2QqDWK54jifeAR
 E1/bSGiv6x/WistWwXCzpN26nV12lpbrdsHkHtbUC0W2ddbaA690H7IbT
 Xaf9MhvuDViyDIdDOhBo72+ckGFXOpS9qpIdYUEBnIQDnIoyrQlV8dz/z
 kGQOQO8ftyW0TYiHztz/kuk6GwQUbCjSY9A70fzeNXzOm3xTHYHhlKNxm Q==;
X-CSE-ConnectionGUID: V0IvczV7R9iqIDj6FlTiuw==
X-CSE-MsgGUID: vH7JRyKTRjGlJAKWCgpBzA==
X-IronPort-AV: E=McAfee;i="6600,9927,11093"; a="39608300"
X-IronPort-AV: E=Sophos;i="6.08,216,1712646000"; d="scan'208";a="39608300"
Received: from fmviesa008.fm.intel.com ([10.60.135.148])
 by fmvoesa101.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 05 Jun 2024 06:48:02 -0700
X-CSE-ConnectionGUID: /vaLaLqLSqaSbhKvaIh0gQ==
X-CSE-MsgGUID: lSXnG8W1QKODn/GI/bQAng==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.08,216,1712646000"; d="scan'208";a="37605045"
Received: from stinkpipe.fi.intel.com (HELO stinkbox) ([10.237.72.74])
 by fmviesa008.fm.intel.com with SMTP; 05 Jun 2024 06:48:00 -0700
Received: by stinkbox (sSMTP sendmail emulation);
 Wed, 05 Jun 2024 16:47:59 +0300
From: Ville Syrjala <ville.syrjala@linux.intel.com>
To: intel-gfx@lists.freedesktop.org
Subject: [PATCH 2/2] drm/i915/bios: Define the "luminance and gamma"
 sub-struct of block 46
Date: Wed,  5 Jun 2024 16:47:56 +0300
Message-ID: <20240605134756.17099-2-ville.syrjala@linux.intel.com>
X-Mailer: git-send-email 2.44.1
In-Reply-To: <20240605134756.17099-1-ville.syrjala@linux.intel.com>
References: <20240605134756.17099-1-ville.syrjala@linux.intel.com>
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

Since BDB version 211 block 46 has included more luminance and
gamma related information. Define it fully. The data is semi-based
on DisplayID v2.0 apparently.

Signed-off-by: Ville Syrjälä <ville.syrjala@linux.intel.com>
---
 drivers/gpu/drm/i915/display/intel_vbt_defs.h | 12 ++++++++++++
 1 file changed, 12 insertions(+)

diff --git a/drivers/gpu/drm/i915/display/intel_vbt_defs.h b/drivers/gpu/drm/i915/display/intel_vbt_defs.h
index da8694771f69..1af8407e2081 100644
--- a/drivers/gpu/drm/i915/display/intel_vbt_defs.h
+++ b/drivers/gpu/drm/i915/display/intel_vbt_defs.h
@@ -1395,8 +1395,20 @@ struct chromaticity {
 	u8 white_y_hi;
 } __packed;
 
+struct luminance_and_gamma {
+	u8 luminance_enable:1;						/* 211+ */
+	u8 gamma_enable:1;						/* 211+ */
+	u8 rsvd:6;
+
+	u16 min_luminance;						/* 211+ */
+	u16 max_luminance;						/* 211+ */
+	u16 one_percent_max_luminance;					/* 211+ */
+	u8 gamma;							/* 211+ */
+} __packed;
+
 struct bdb_chromaticity {
 	struct chromaticity chromaticity[16];
+	struct luminance_and_gamma luminance_and_gamma[16];		/* 211+ */
 } __packed;
 
 /*
-- 
2.44.1

