Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id ECA966B952B
	for <lists+intel-gfx@lfdr.de>; Tue, 14 Mar 2023 14:03:18 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 3870D10E7D9;
	Tue, 14 Mar 2023 13:03:17 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 0E8E410E7D8
 for <intel-gfx@lists.freedesktop.org>; Tue, 14 Mar 2023 13:03:14 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1678798995; x=1710334995;
 h=from:to:subject:date:message-id:in-reply-to:references:
 mime-version:content-transfer-encoding;
 bh=xOPNLuy1xKaCFEEgCjzNwYi8U9bp48Bz3FJJZlZjOTM=;
 b=OfO3kVKD/1+Q7MfuoUQabTygStS4/ra7uHze81ZGI47acpHQG5lVp0zU
 Y9hlD8ZRnJi/+cSEmloIJ4rLabY+Pa7n2byp/r25ElhtBLWW734uL/ywi
 /1lDJpXT3SX6h6LOQYVOyE6FkIUcYEmj7ZSJGLesRL/0iY6VyhXn+R9VQ
 cfJSrqiagySwC0JsAXrNvahb0cFsGj3CPO3dlJV9/JcNCV1ntOpvi6Ou2
 4ZH7F7V5Yu0pBdRlii5UhICa23EuQdh9TRy59aPQVuraZE9G2mxfmK3CC
 XNGgs1gRkbiRCEtME9CPk+z/D0KTawsfzebNL2JjhUa6T2yHSaSz6ho3g Q==;
X-IronPort-AV: E=McAfee;i="6500,9779,10648"; a="365079963"
X-IronPort-AV: E=Sophos;i="5.98,259,1673942400"; d="scan'208";a="365079963"
Received: from orsmga007.jf.intel.com ([10.7.209.58])
 by fmsmga101.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 14 Mar 2023 06:03:14 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6500,9779,10648"; a="672323799"
X-IronPort-AV: E=Sophos;i="5.98,259,1673942400"; d="scan'208";a="672323799"
Received: from stinkpipe.fi.intel.com (HELO stinkbox) ([10.237.72.70])
 by orsmga007.jf.intel.com with SMTP; 14 Mar 2023 06:03:12 -0700
Received: by stinkbox (sSMTP sendmail emulation);
 Tue, 14 Mar 2023 15:03:11 +0200
From: Ville Syrjala <ville.syrjala@linux.intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Tue, 14 Mar 2023 15:02:51 +0200
Message-Id: <20230314130255.23273-6-ville.syrjala@linux.intel.com>
X-Mailer: git-send-email 2.39.2
In-Reply-To: <20230314130255.23273-1-ville.syrjala@linux.intel.com>
References: <20230314130255.23273-1-ville.syrjala@linux.intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH 5/9] drm/i915: Define skl+ universal plane
 SURFLIVE registers
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

Add the definitions for the skl+ univerals plane SURFLIVE
registers. Despite not being used for anything real
these came in suprisingly handy during some DSB debugging
recently, so having the defines around can be useful.

Signed-off-by: Ville Syrjälä <ville.syrjala@linux.intel.com>
---
 drivers/gpu/drm/i915/i915_reg.h | 9 +++++++++
 1 file changed, 9 insertions(+)

diff --git a/drivers/gpu/drm/i915/i915_reg.h b/drivers/gpu/drm/i915/i915_reg.h
index 8f301bf4e2b6..a2b4af711e6d 100644
--- a/drivers/gpu/drm/i915/i915_reg.h
+++ b/drivers/gpu/drm/i915/i915_reg.h
@@ -4592,6 +4592,8 @@
 #define _PLANE_KEYMAX_1_A			0x701a0
 #define _PLANE_KEYMAX_2_A			0x702a0
 #define  PLANE_KEYMAX_ALPHA(a)			((a) << 24)
+#define _PLANE_SURFLIVE_1_A			0x701ac
+#define _PLANE_SURFLIVE_2_A			0x702ac
 #define _PLANE_CC_VAL_1_A			0x701b4
 #define _PLANE_CC_VAL_2_A			0x702b4
 #define _PLANE_AUX_DIST_1_A			0x701c0
@@ -4776,6 +4778,13 @@
 #define PLANE_KEYMAX(pipe, plane)	\
 	_MMIO_PLANE(plane, _PLANE_KEYMAX_1(pipe), _PLANE_KEYMAX_2(pipe))
 
+#define _PLANE_SURFLIVE_1_B			0x711ac
+#define _PLANE_SURFLIVE_2_B			0x712ac
+#define _PLANE_SURFLIVE_1(pipe)	_PIPE(pipe, _PLANE_SURFLIVE_1_A, _PLANE_SURFLIVE_1_B)
+#define _PLANE_SURFLIVE_2(pipe)	_PIPE(pipe, _PLANE_SURFLIVE_2_A, _PLANE_SURFLIVE_2_B)
+#define PLANE_SURFLIVE(pipe, plane)	\
+	_MMIO_PLANE(plane, _PLANE_SURFLIVE_1(pipe), _PLANE_SURFLIVE_2(pipe))
+
 #define _PLANE_BUF_CFG_1_B			0x7127c
 #define _PLANE_BUF_CFG_2_B			0x7137c
 /* skl+: 10 bits, icl+ 11 bits, adlp+ 12 bits */
-- 
2.39.2

