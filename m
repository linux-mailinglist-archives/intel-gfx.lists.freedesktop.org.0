Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 908066C0CBE
	for <lists+intel-gfx@lfdr.de>; Mon, 20 Mar 2023 10:05:41 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id D390510E2B2;
	Mon, 20 Mar 2023 09:05:39 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga14.intel.com (mga14.intel.com [192.55.52.115])
 by gabe.freedesktop.org (Postfix) with ESMTPS id F110C10E2A3
 for <intel-gfx@lists.freedesktop.org>; Mon, 20 Mar 2023 09:05:36 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1679303136; x=1710839136;
 h=from:to:subject:date:message-id:in-reply-to:references:
 mime-version:content-transfer-encoding;
 bh=7TJL4TF+hUjBEmUpejJzCbOMY4884wMR8zyc7oeH4Z0=;
 b=FAR1Nve3OWMkxokZ+eD5/X6q0H+wxN6cvvTmRPtSZoV7FlX02B9TV6qH
 cPrmeuyVBNMSw3GyfJWksyVbFzPeBxFr4xMfEsFtU0tSjanm3LASbhtcX
 7pFDM4iiE0X+v7wn0tejNErwReKBfSIfqfBwPvIbfa+C3YbSIqKm4LPYR
 TGmfIXSrN7qmjIDflH8Evn+Qg9Z7LohgpYViB4oHNZZyZ+CYL468tD1lB
 iUCmLgkF/F/A0abVT+ryziSdqPrTP/uyEUUcU4DpFa3Xa6TenGLEKzXHz
 GtlVQhFfvnyGWOzaJBnUZhZArJRtegu2+iHeN0DYkHi/YYoDH6N5wOznD w==;
X-IronPort-AV: E=McAfee;i="6600,9927,10654"; a="338637090"
X-IronPort-AV: E=Sophos;i="5.98,274,1673942400"; d="scan'208";a="338637090"
Received: from fmsmga008.fm.intel.com ([10.253.24.58])
 by fmsmga103.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 20 Mar 2023 02:05:36 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10654"; a="745289450"
X-IronPort-AV: E=Sophos;i="5.98,274,1673942400"; d="scan'208";a="745289450"
Received: from stinkpipe.fi.intel.com (HELO stinkbox) ([10.237.72.70])
 by fmsmga008.fm.intel.com with SMTP; 20 Mar 2023 02:05:35 -0700
Received: by stinkbox (sSMTP sendmail emulation);
 Mon, 20 Mar 2023 11:05:34 +0200
From: Ville Syrjala <ville.syrjala@linux.intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Mon, 20 Mar 2023 11:05:20 +0200
Message-Id: <20230320090522.9909-5-ville.syrjala@linux.intel.com>
X-Mailer: git-send-email 2.39.2
In-Reply-To: <20230320090522.9909-1-ville.syrjala@linux.intel.com>
References: <20230320090522.9909-1-ville.syrjala@linux.intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH 4/6] drm/i915: Add PLANE_CHICKEN registers
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

Define the PLANE_CHICKEN register offsets.

Signed-off-by: Ville Syrjälä <ville.syrjala@linux.intel.com>
---
 drivers/gpu/drm/i915/i915_reg.h | 9 +++++++++
 1 file changed, 9 insertions(+)

diff --git a/drivers/gpu/drm/i915/i915_reg.h b/drivers/gpu/drm/i915/i915_reg.h
index d22ffd7a32dc..4ad36b637f82 100644
--- a/drivers/gpu/drm/i915/i915_reg.h
+++ b/drivers/gpu/drm/i915/i915_reg.h
@@ -4644,6 +4644,8 @@
 #define   PLANE_COLOR_ALPHA_DISABLE			REG_FIELD_PREP(PLANE_COLOR_ALPHA_MASK, 0)
 #define   PLANE_COLOR_ALPHA_SW_PREMULTIPLY		REG_FIELD_PREP(PLANE_COLOR_ALPHA_MASK, 2)
 #define   PLANE_COLOR_ALPHA_HW_PREMULTIPLY		REG_FIELD_PREP(PLANE_COLOR_ALPHA_MASK, 3)
+#define _PLANE_CHICKEN_1_A			0x7026C
+#define _PLANE_CHICKEN_2_A			0x7036C
 #define _PLANE_BUF_CFG_1_A			0x7027c
 #define _PLANE_BUF_CFG_2_A			0x7037c
 #define _PLANE_NV12_BUF_CFG_1_A		0x70278
@@ -4789,6 +4791,13 @@
 #define PLANE_SURFLIVE(pipe, plane)	\
 	_MMIO_PLANE(plane, _PLANE_SURFLIVE_1(pipe), _PLANE_SURFLIVE_2(pipe))
 
+#define _PLANE_CHICKEN_1_B			0x7126c
+#define _PLANE_CHICKEN_2_B			0x7136c
+#define _PLANE_CHICKEN_1(pipe)	_PIPE(pipe, _PLANE_CHICKEN_1_A, _PLANE_CHICKEN_1_B)
+#define _PLANE_CHICKEN_2(pipe)	_PIPE(pipe, _PLANE_CHICKEN_2_A, _PLANE_CHICKEN_2_B)
+#define PLANE_CHICKEN(pipe, plane) \
+	_MMIO_PLANE(plane, _PLANE_CHICKEN_1(pipe), _PLANE_CHICKEN_2(pipe))
+
 #define _PLANE_BUF_CFG_1_B			0x7127c
 #define _PLANE_BUF_CFG_2_B			0x7137c
 /* skl+: 10 bits, icl+ 11 bits, adlp+ 12 bits */
-- 
2.39.2

