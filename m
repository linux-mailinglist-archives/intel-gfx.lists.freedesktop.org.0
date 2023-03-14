Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id CA0246B9529
	for <lists+intel-gfx@lfdr.de>; Tue, 14 Mar 2023 14:03:13 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 8785A10E7DB;
	Tue, 14 Mar 2023 13:03:11 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 6A92F10E7D7
 for <intel-gfx@lists.freedesktop.org>; Tue, 14 Mar 2023 13:03:09 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1678798989; x=1710334989;
 h=from:to:subject:date:message-id:in-reply-to:references:
 mime-version:content-transfer-encoding;
 bh=5PMaOnd57UYJqLklKaoNOpieEi3LMCRHZZYd3m7N238=;
 b=Etk9ER23HaU5VOeacnrcKo6N9sF2wTxhDA0+YTztoJSKe6xhwHI1DQQV
 SJW39yjBMPt/trx6Dgeg/w3bDmEHbSf1Is6vEg4w8myKgLgvQKO0i32ob
 V7F2ndPxtttVscE6UVCyXkadpsxfis4xoiJDzjBIOctss0nkZGW8+ek0H
 M34lHIJ8R41QA7Nquw7PdTdFWoKs1hJIEGV8UcQIDyYlzZWm1/s2m51ke
 tTaTZu4i8iM9C55/QNYn8U1kNa10nGDKIhjqvkXzqwIzmSh7V0+TbD9Na
 1D3Uu8SMtWVSj7iFwAifEWV9bo3zjm08nMAsZoc0T0YK3YXSGzrQ9QMPJ w==;
X-IronPort-AV: E=McAfee;i="6500,9779,10648"; a="365079928"
X-IronPort-AV: E=Sophos;i="5.98,259,1673942400"; d="scan'208";a="365079928"
Received: from orsmga007.jf.intel.com ([10.7.209.58])
 by fmsmga101.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 14 Mar 2023 06:03:07 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6500,9779,10648"; a="672323739"
X-IronPort-AV: E=Sophos;i="5.98,259,1673942400"; d="scan'208";a="672323739"
Received: from stinkpipe.fi.intel.com (HELO stinkbox) ([10.237.72.70])
 by orsmga007.jf.intel.com with SMTP; 14 Mar 2023 06:03:05 -0700
Received: by stinkbox (sSMTP sendmail emulation);
 Tue, 14 Mar 2023 15:03:05 +0200
From: Ville Syrjala <ville.syrjala@linux.intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Tue, 14 Mar 2023 15:02:49 +0200
Message-Id: <20230314130255.23273-4-ville.syrjala@linux.intel.com>
X-Mailer: git-send-email 2.39.2
In-Reply-To: <20230314130255.23273-1-ville.syrjala@linux.intel.com>
References: <20230314130255.23273-1-ville.syrjala@linux.intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH 3/9] drm/i915: Define more pipe timestamp
 registers
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

Add definitions for various pipe timestamp registers:
- frame timestamp (last start of vblank) (g4x+), already had this defined
- flip timestamp (when SURF was last written) (g4x+)
- flipdone timestamp (when last flipdone was signalled) (tgl+)

Note that on pre-tgl the flip related timestamps are only updated
for primary plane flips, but on tgl+ we can select which plane
updates them (via PIPE_MISC2). Let's define those related bits
as well.

Curiously VLV/CHV do not have the frame/flip timestamp registers,
despite all the other related registers being inherited from g4x.
This means we can get rid of the pipe_offsets[] usage for these,
and thus the implicit dev_priv is gone as well.

Signed-off-by: Ville Syrjälä <ville.syrjala@linux.intel.com>
---
 drivers/gpu/drm/i915/i915_reg.h | 18 +++++++++++++++++-
 1 file changed, 17 insertions(+), 1 deletion(-)

diff --git a/drivers/gpu/drm/i915/i915_reg.h b/drivers/gpu/drm/i915/i915_reg.h
index a383397ebeca..66b6f451b80a 100644
--- a/drivers/gpu/drm/i915/i915_reg.h
+++ b/drivers/gpu/drm/i915/i915_reg.h
@@ -3526,6 +3526,8 @@
 #define   PIPE_MISC2_BUBBLE_COUNTER_MASK	REG_GENMASK(31, 24)
 #define   PIPE_MISC2_BUBBLE_COUNTER_SCALER_EN	REG_FIELD_PREP(PIPE_MISC2_BUBBLE_COUNTER_MASK, 80)
 #define   PIPE_MISC2_BUBBLE_COUNTER_SCALER_DIS	REG_FIELD_PREP(PIPE_MISC2_BUBBLE_COUNTER_MASK, 20)
+#define   PIPE_MISC2_FLIP_INFO_PLANE_SEL_MASK		REG_GENMASK(2, 0) /* tgl+ */
+#define   PIPE_MISC2_FLIP_INFO_PLANE_SEL(plane_id)	REG_FIELD_PREP(PIPE_MISC2_FLIP_INFO_PLANE_SEL_MASK, (plane_id))
 #define PIPE_MISC2(pipe)		_MMIO_PIPE(pipe, _PIPE_MISC2_A, _PIPE_MISC2_B)
 
 /* Skylake+ pipe bottom (background) color */
@@ -7545,9 +7547,23 @@ enum skl_power_gate {
 #define  GEN9_TIMESTAMP_OVERRIDE_US_COUNTER_DENOMINATOR_SHIFT	12
 #define  GEN9_TIMESTAMP_OVERRIDE_US_COUNTER_DENOMINATOR_MASK	(0xf << 12)
 
+/* g4x+, except vlv/chv! */
 #define _PIPE_FRMTMSTMP_A		0x70048
+#define _PIPE_FRMTMSTMP_B		0x71048
 #define PIPE_FRMTMSTMP(pipe)		\
-			_MMIO_PIPE2(pipe, _PIPE_FRMTMSTMP_A)
+	_MMIO_PIPE(pipe, _PIPE_FRMTMSTMP_A, _PIPE_FRMTMSTMP_B)
+
+/* g4x+, except vlv/chv! */
+#define _PIPE_FLIPTMSTMP_A		0x7004C
+#define _PIPE_FLIPTMSTMP_B		0x7104C
+#define PIPE_FLIPTMSTMP(pipe)		\
+	_MMIO_PIPE(pipe, _PIPE_FLIPTMSTMP_A, _PIPE_FLIPTMSTMP_B)
+
+/* tgl+ */
+#define _PIPE_FLIPDONETMSTMP_A		0x70054
+#define _PIPE_FLIPDONETMSTMP_B		0x71054
+#define PIPE_FLIPDONETIMSTMP(pipe)	\
+	_MMIO_PIPE(pipe, _PIPE_FLIPDONETMSTMP_A, _PIPE_FLIPDONETMSTMP_B)
 
 #define GGC				_MMIO(0x108040)
 #define   GMS_MASK			REG_GENMASK(15, 8)
-- 
2.39.2

