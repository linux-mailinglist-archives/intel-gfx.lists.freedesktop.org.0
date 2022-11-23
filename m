Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 8F197636379
	for <lists+intel-gfx@lfdr.de>; Wed, 23 Nov 2022 16:27:14 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 458D210E576;
	Wed, 23 Nov 2022 15:27:10 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga04.intel.com (mga04.intel.com [192.55.52.120])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 46EC910E575
 for <intel-gfx@lists.freedesktop.org>; Wed, 23 Nov 2022 15:27:00 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1669217220; x=1700753220;
 h=from:to:subject:date:message-id:in-reply-to:references:
 mime-version:content-transfer-encoding;
 bh=NTWNfSwrHdr4o3hFH9IhYAhA8ylxhkWaDsOH6fhVnTk=;
 b=nI1BKYm2tWuruG89JOTIT+kp9UJgcPccEw/tTQjZ04iix2f4fLidxM/1
 Rm2hOhO6cs6moXw8SKjtOYfqThd+JfZ/uD5EJeWmuUyZQPE9gR7p3lGfi
 GhkL7HdSinIr/X1GcftqI2wbsO6b7g3mIafKT/aRwHGam3tEF2tqB3xCz
 E31TDooC5QsdRRmcxPy6T1CqTLBaX5MFqZRxYq6LbqVK4Y+/L4bZzdcws
 Jpe+cP1CRtXCmUOo0YPKi11IiteES9P4GDBGqSNuJDyNoWgUi4jIei/JS
 5UuxaYC78OUe+sKU+IaAZcOsBc7Gst9ICbWe/p/OoZWn1qCmLu/6zewpn w==;
X-IronPort-AV: E=McAfee;i="6500,9779,10540"; a="312789921"
X-IronPort-AV: E=Sophos;i="5.96,187,1665471600"; d="scan'208";a="312789921"
Received: from orsmga006.jf.intel.com ([10.7.209.51])
 by fmsmga104.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 23 Nov 2022 07:26:55 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6500,9779,10540"; a="619650979"
X-IronPort-AV: E=Sophos;i="5.96,187,1665471600"; d="scan'208";a="619650979"
Received: from stinkpipe.fi.intel.com (HELO stinkbox) ([10.237.72.191])
 by orsmga006.jf.intel.com with SMTP; 23 Nov 2022 07:26:53 -0800
Received: by stinkbox (sSMTP sendmail emulation);
 Wed, 23 Nov 2022 17:26:52 +0200
From: Ville Syrjala <ville.syrjala@linux.intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Wed, 23 Nov 2022 17:26:30 +0200
Message-Id: <20221123152638.20622-6-ville.syrjala@linux.intel.com>
X-Mailer: git-send-email 2.37.4
In-Reply-To: <20221123152638.20622-1-ville.syrjala@linux.intel.com>
References: <20221123152638.20622-1-ville.syrjala@linux.intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH 05/13] drm/i915: Standardize auto-increment LUT
 load procedure
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

Various gamma units on various platforms have some problems loading
the LUT index and auto-increment bit at the same time. We have to
do this in two steps. The first known case was the glk degamma LUT,
but at least ADL has another known case.

We're not going to suffer too badly from a couple of extra register
writes here, so let's just standardize on this practice for all
auto-increment LUT loads/reads. This way we never have to worry about
this specific issue again. And for good measure always reset the
index back to zero at the end (we already did this in a few places).

Signed-off-by: Ville Syrjälä <ville.syrjala@linux.intel.com>
---
 drivers/gpu/drm/i915/display/intel_color.c | 19 ++++++++++++++++++-
 1 file changed, 18 insertions(+), 1 deletion(-)

diff --git a/drivers/gpu/drm/i915/display/intel_color.c b/drivers/gpu/drm/i915/display/intel_color.c
index c960c2aaf328..bd7e781d9d07 100644
--- a/drivers/gpu/drm/i915/display/intel_color.c
+++ b/drivers/gpu/drm/i915/display/intel_color.c
@@ -934,6 +934,8 @@ static void bdw_load_lut_10(struct intel_crtc *crtc,
 	int i, lut_size = drm_color_lut_size(blob);
 	enum pipe pipe = crtc->pipe;
 
+	intel_de_write_fw(i915, PREC_PAL_INDEX(pipe),
+			  prec_index);
 	intel_de_write_fw(i915, PREC_PAL_INDEX(pipe),
 			  PAL_PREC_AUTO_INCREMENT |
 			  prec_index);
@@ -1138,7 +1140,10 @@ icl_program_gamma_superfine_segment(const struct intel_crtc_state *crtc_state)
 	 * 2/(8 * 128 * 256) ... 8/(8 * 128 * 256).
 	 */
 	intel_dsb_reg_write(crtc_state, PREC_PAL_MULTI_SEG_INDEX(pipe),
-			    PAL_PREC_AUTO_INCREMENT);
+			    PAL_PREC_MULTI_SEG_INDEX_VALUE(0));
+	intel_dsb_reg_write(crtc_state, PREC_PAL_MULTI_SEG_INDEX(pipe),
+			    PAL_PREC_AUTO_INCREMENT |
+			    PAL_PREC_MULTI_SEG_INDEX_VALUE(0));
 
 	for (i = 0; i < 9; i++) {
 		const struct drm_color_lut *entry = &lut[i];
@@ -1148,6 +1153,9 @@ icl_program_gamma_superfine_segment(const struct intel_crtc_state *crtc_state)
 		intel_dsb_indexed_reg_write(crtc_state, PREC_PAL_MULTI_SEG_DATA(pipe),
 					    ilk_lut_12p4_udw(entry));
 	}
+
+	intel_dsb_reg_write(crtc_state, PREC_PAL_MULTI_SEG_INDEX(pipe),
+			    PAL_PREC_MULTI_SEG_INDEX_VALUE(0));
 }
 
 static void
@@ -1170,6 +1178,8 @@ icl_program_gamma_multi_segment(const struct intel_crtc_state *crtc_state)
 	 * PAL_PREC_INDEX[0] and PAL_PREC_INDEX[1] map to seg2[1],
 	 * seg2[0] being unused by the hardware.
 	 */
+	intel_dsb_reg_write(crtc_state, PREC_PAL_INDEX(pipe),
+			    PAL_PREC_INDEX_VALUE(0));
 	intel_dsb_reg_write(crtc_state, PREC_PAL_INDEX(pipe),
 			    PAL_PREC_AUTO_INCREMENT |
 			    PAL_PREC_INDEX_VALUE(0));
@@ -1202,6 +1212,9 @@ icl_program_gamma_multi_segment(const struct intel_crtc_state *crtc_state)
 					    ilk_lut_12p4_udw(entry));
 	}
 
+	intel_dsb_reg_write(crtc_state, PREC_PAL_INDEX(pipe),
+			    PAL_PREC_INDEX_VALUE(0));
+
 	/* The last entry in the LUT is to be programmed in GCMAX */
 	entry = &lut[256 * 8 * 128];
 	ivb_load_lut_max(crtc_state, entry);
@@ -2819,6 +2832,8 @@ static struct drm_property_blob *bdw_read_lut_10(struct intel_crtc *crtc,
 
 	lut = blob->data;
 
+	intel_de_write_fw(i915, PREC_PAL_INDEX(pipe),
+			  prec_index);
 	intel_de_write_fw(i915, PREC_PAL_INDEX(pipe),
 			  PAL_PREC_AUTO_INCREMENT |
 			  prec_index);
@@ -2947,6 +2962,8 @@ icl_read_lut_multi_segment(struct intel_crtc *crtc)
 
 	lut = blob->data;
 
+	intel_de_write_fw(i915, PREC_PAL_MULTI_SEG_INDEX(pipe),
+			  PAL_PREC_MULTI_SEG_INDEX_VALUE(0));
 	intel_de_write_fw(i915, PREC_PAL_MULTI_SEG_INDEX(pipe),
 			  PAL_PREC_MULTI_SEG_AUTO_INCREMENT |
 			  PAL_PREC_MULTI_SEG_INDEX_VALUE(0));
-- 
2.37.4

