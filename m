Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 1E13B3EC92D
	for <lists+intel-gfx@lfdr.de>; Sun, 15 Aug 2021 14:55:52 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 15E2A89913;
	Sun, 15 Aug 2021 12:55:50 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 72BF189913
 for <intel-gfx@lists.freedesktop.org>; Sun, 15 Aug 2021 12:55:48 +0000 (UTC)
Received: by mail.kernel.org (Postfix) with ESMTPSA id A7A4B61106;
 Sun, 15 Aug 2021 12:55:47 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=linuxfoundation.org;
 s=korg; t=1629032148;
 bh=71KEQdKkfYbDzg5gNPEo6UUgjvoUS8dvaK2AHlR5E/o=;
 h=Subject:To:Cc:From:Date:From;
 b=N5Amq22URVcRMpQmLV20m4eiyWKjJvz+34bQrCJ8dSkCpKVaNbz2eVmUMNWYMZqbR
 5NGoqxo9GqGcpVX/b1cAZHFSI7fQPTfAo6tm8Db5JTiGFHhq/j+Slam8P/Q592I6VP
 i+37imOyBohBOZALmDWqaicI4gXIFWHHQkTI1X9o=
To: ankit.k.nautiyal@intel.com, daniel.vetter@ffwll.ch,
 gregkh@linuxfoundation.org, intel-gfx@lists.freedesktop.org,
 jani.nikula@linux.intel.com, joonas.lahtinen@linux.intel.com,
 paulo.r.zanoni@intel.com, rodrigo.vivi@intel.com, uma.shankar@intel.com,
 ville.syrjala@linux.intel.com
Cc: <stable-commits@vger.kernel.org>
From: <gregkh@linuxfoundation.org>
Date: Sun, 15 Aug 2021 14:54:25 +0200
Message-ID: <16290320653125@kroah.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
X-stable: commit
X-Patchwork-Hint: ignore 
Subject: [Intel-gfx] Patch "drm/i915/display: Fix the 12 BPC bits for
 PIPE_MISC reg" has been added to the 5.13-stable tree
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


This is a note to let you know that I've just added the patch titled

    drm/i915/display: Fix the 12 BPC bits for PIPE_MISC reg

to the 5.13-stable tree which can be found at:
    http://www.kernel.org/git/?p=linux/kernel/git/stable/stable-queue.git;a=summary

The filename of the patch is:
     drm-i915-display-fix-the-12-bpc-bits-for-pipe_misc-reg.patch
and it can be found in the queue-5.13 subdirectory.

If you, or anyone else, feels it should not be added to the stable tree,
please let <stable@vger.kernel.org> know about it.


From abd9d66a055722393d33685214c08386694871d7 Mon Sep 17 00:00:00 2001
From: Ankit Nautiyal <ankit.k.nautiyal@intel.com>
Date: Wed, 11 Aug 2021 10:48:57 +0530
Subject: drm/i915/display: Fix the 12 BPC bits for PIPE_MISC reg
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit

From: Ankit Nautiyal <ankit.k.nautiyal@intel.com>

commit abd9d66a055722393d33685214c08386694871d7 upstream.

Till DISPLAY12 the PIPE_MISC bits 5-7 are used to set the
Dithering BPC, with valid values of 6, 8, 10 BPC.
For ADLP+ these bits are used to set the PORT OUTPUT BPC, with valid
values of: 6, 8, 10, 12 BPC, and need to be programmed whether
dithering is enabled or not.

This patch:
-corrects the bits 5-7 for PIPE MISC register for 12 BPC.
-renames the bits and mask to have generic names for these bits for
dithering bpc and port output bpc.

v3: Added a note for MIPI DSI which uses the PIPE_MISC for readout
for pipe_bpp. (Uma Shankar)

v2: Added 'display' to the subject and fixes tag. (Uma Shankar)

Fixes: 756f85cffef2 ("drm/i915/bdw: Broadwell has PIPEMISC")
Cc: Paulo Zanoni <paulo.r.zanoni@intel.com> (v1)
Cc: Ville Syrjälä <ville.syrjala@linux.intel.com>
Cc: Daniel Vetter <daniel.vetter@ffwll.ch>
Cc: Jani Nikula <jani.nikula@linux.intel.com>
Cc: Joonas Lahtinen <joonas.lahtinen@linux.intel.com>
Cc: Rodrigo Vivi <rodrigo.vivi@intel.com>
Cc: intel-gfx@lists.freedesktop.org
Cc: <stable@vger.kernel.org> # v3.13+

Signed-off-by: Ankit Nautiyal <ankit.k.nautiyal@intel.com>
Reviewed-by: Uma Shankar <uma.shankar@intel.com>
Signed-off-by: Uma Shankar <uma.shankar@intel.com>
Link: https://patchwork.freedesktop.org/patch/msgid/20210811051857.109723-1-ankit.k.nautiyal@intel.com
(cherry picked from commit 70418a68713c13da3f36c388087d0220b456a430)
Signed-off-by: Rodrigo Vivi <rodrigo.vivi@intel.com>
Signed-off-by: Greg Kroah-Hartman <gregkh@linuxfoundation.org>
---
 drivers/gpu/drm/i915/display/intel_display.c |   34 +++++++++++++++++++--------
 drivers/gpu/drm/i915/i915_reg.h              |   16 ++++++++----
 2 files changed, 35 insertions(+), 15 deletions(-)

--- a/drivers/gpu/drm/i915/display/intel_display.c
+++ b/drivers/gpu/drm/i915/display/intel_display.c
@@ -5424,16 +5424,18 @@ static void bdw_set_pipemisc(const struc
 
 	switch (crtc_state->pipe_bpp) {
 	case 18:
-		val |= PIPEMISC_DITHER_6_BPC;
+		val |= PIPEMISC_6_BPC;
 		break;
 	case 24:
-		val |= PIPEMISC_DITHER_8_BPC;
+		val |= PIPEMISC_8_BPC;
 		break;
 	case 30:
-		val |= PIPEMISC_DITHER_10_BPC;
+		val |= PIPEMISC_10_BPC;
 		break;
 	case 36:
-		val |= PIPEMISC_DITHER_12_BPC;
+		/* Port output 12BPC defined for ADLP+ */
+		if (DISPLAY_VER(dev_priv) > 12)
+			val |= PIPEMISC_12_BPC_ADLP;
 		break;
 	default:
 		MISSING_CASE(crtc_state->pipe_bpp);
@@ -5469,15 +5471,27 @@ int bdw_get_pipemisc_bpp(struct intel_cr
 
 	tmp = intel_de_read(dev_priv, PIPEMISC(crtc->pipe));
 
-	switch (tmp & PIPEMISC_DITHER_BPC_MASK) {
-	case PIPEMISC_DITHER_6_BPC:
+	switch (tmp & PIPEMISC_BPC_MASK) {
+	case PIPEMISC_6_BPC:
 		return 18;
-	case PIPEMISC_DITHER_8_BPC:
+	case PIPEMISC_8_BPC:
 		return 24;
-	case PIPEMISC_DITHER_10_BPC:
+	case PIPEMISC_10_BPC:
 		return 30;
-	case PIPEMISC_DITHER_12_BPC:
-		return 36;
+	/*
+	 * PORT OUTPUT 12 BPC defined for ADLP+.
+	 *
+	 * TODO:
+	 * For previous platforms with DSI interface, bits 5:7
+	 * are used for storing pipe_bpp irrespective of dithering.
+	 * Since the value of 12 BPC is not defined for these bits
+	 * on older platforms, need to find a workaround for 12 BPC
+	 * MIPI DSI HW readout.
+	 */
+	case PIPEMISC_12_BPC_ADLP:
+		if (DISPLAY_VER(dev_priv) > 12)
+			return 36;
+		fallthrough;
 	default:
 		MISSING_CASE(tmp);
 		return 0;
--- a/drivers/gpu/drm/i915/i915_reg.h
+++ b/drivers/gpu/drm/i915/i915_reg.h
@@ -6134,11 +6134,17 @@ enum {
 #define   PIPEMISC_HDR_MODE_PRECISION	(1 << 23) /* icl+ */
 #define   PIPEMISC_OUTPUT_COLORSPACE_YUV  (1 << 11)
 #define   PIPEMISC_PIXEL_ROUNDING_TRUNC	REG_BIT(8) /* tgl+ */
-#define   PIPEMISC_DITHER_BPC_MASK	(7 << 5)
-#define   PIPEMISC_DITHER_8_BPC		(0 << 5)
-#define   PIPEMISC_DITHER_10_BPC	(1 << 5)
-#define   PIPEMISC_DITHER_6_BPC		(2 << 5)
-#define   PIPEMISC_DITHER_12_BPC	(3 << 5)
+/*
+ * For Display < 13, Bits 5-7 of PIPE MISC represent DITHER BPC with
+ * valid values of: 6, 8, 10 BPC.
+ * ADLP+, the bits 5-7 represent PORT OUTPUT BPC with valid values of:
+ * 6, 8, 10, 12 BPC.
+ */
+#define   PIPEMISC_BPC_MASK		(7 << 5)
+#define   PIPEMISC_8_BPC		(0 << 5)
+#define   PIPEMISC_10_BPC		(1 << 5)
+#define   PIPEMISC_6_BPC		(2 << 5)
+#define   PIPEMISC_12_BPC_ADLP		(4 << 5) /* adlp+ */
 #define   PIPEMISC_DITHER_ENABLE	(1 << 4)
 #define   PIPEMISC_DITHER_TYPE_MASK	(3 << 2)
 #define   PIPEMISC_DITHER_TYPE_SP	(0 << 2)


Patches currently in stable-queue which might be from ankit.k.nautiyal@intel.com are

queue-5.13/drm-i915-display-fix-the-12-bpc-bits-for-pipe_misc-reg.patch
