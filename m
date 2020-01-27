Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 532F914AA02
	for <lists+intel-gfx@lfdr.de>; Mon, 27 Jan 2020 19:46:16 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id AC44D6E8D7;
	Mon, 27 Jan 2020 18:46:14 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga06.intel.com (mga06.intel.com [134.134.136.31])
 by gabe.freedesktop.org (Postfix) with ESMTPS id B29AE6E8D7
 for <intel-gfx@lists.freedesktop.org>; Mon, 27 Jan 2020 18:46:13 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga001.jf.intel.com ([10.7.209.18])
 by orsmga104.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 27 Jan 2020 10:26:55 -0800
X-IronPort-AV: E=Sophos;i="5.70,370,1574150400"; d="scan'208";a="308840842"
Received: from scharfhe-mobl1.ger.corp.intel.com (HELO localhost)
 ([10.252.52.61])
 by orsmga001-auth.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 27 Jan 2020 10:26:52 -0800
From: Jani Nikula <jani.nikula@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Mon, 27 Jan 2020 20:26:09 +0200
Message-Id: <a58f536d25d9cd6da510da49663508cd264eee0f.1580149467.git.jani.nikula@intel.com>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <cover.1580149467.git.jani.nikula@intel.com>
References: <cover.1580149467.git.jani.nikula@intel.com>
MIME-Version: 1.0
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
Subject: [Intel-gfx] [PATCH v2 7/8] drm/i915/hdcp: use intel_de_*()
 functions for register access
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
Cc: Jani Nikula <jani.nikula@intel.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

The implicit "dev_priv" local variable use has been a long-standing pain
point in the register access macros I915_READ(), I915_WRITE(),
POSTING_READ(), I915_READ_FW(), and I915_WRITE_FW().

Replace them with the corresponding new display engine register
accessors intel_de_read(), intel_de_write(), intel_de_posting_read(),
intel_de_read_fw(), and intel_de_write_fw().

No functional changes.

Generated using the following semantic patch:

@@
expression REG, OFFSET;
@@
- I915_READ(REG)
+ intel_de_read(dev_priv, REG)

@@
expression REG, OFFSET;
@@
- POSTING_READ(REG)
+ intel_de_posting_read(dev_priv, REG)

@@
expression REG, OFFSET;
@@
- I915_WRITE(REG, OFFSET)
+ intel_de_write(dev_priv, REG, OFFSET)

@@
expression REG;
@@
- I915_READ_FW(REG)
+ intel_de_read_fw(dev_priv, REG)

@@
expression REG, OFFSET;
@@
- I915_WRITE_FW(REG, OFFSET)
+ intel_de_write_fw(dev_priv, REG, OFFSET)

Acked-by: Chris Wilson <chris@chris-wilson.co.uk>
Acked-by: Rodrigo Vivi <rodrigo.vivi@intel.com>
Acked-by: Joonas Lahtinen <joonas.lahtinen@linux.intel.com>
Signed-off-by: Jani Nikula <jani.nikula@intel.com>
---
 drivers/gpu/drm/i915/display/intel_hdcp.c | 142 ++++++++++++----------
 1 file changed, 79 insertions(+), 63 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_hdcp.c b/drivers/gpu/drm/i915/display/intel_hdcp.c
index 33dc40a63fce..2d25244f38df 100644
--- a/drivers/gpu/drm/i915/display/intel_hdcp.c
+++ b/drivers/gpu/drm/i915/display/intel_hdcp.c
@@ -112,7 +112,8 @@ static inline
 bool intel_hdcp_in_use(struct drm_i915_private *dev_priv,
 		       enum transcoder cpu_transcoder, enum port port)
 {
-	return I915_READ(HDCP_STATUS(dev_priv, cpu_transcoder, port)) &
+	return intel_de_read(dev_priv,
+	                     HDCP_STATUS(dev_priv, cpu_transcoder, port)) &
 	       HDCP_STATUS_ENC;
 }
 
@@ -120,7 +121,8 @@ static inline
 bool intel_hdcp2_in_use(struct drm_i915_private *dev_priv,
 			enum transcoder cpu_transcoder, enum port port)
 {
-	return I915_READ(HDCP2_STATUS(dev_priv, cpu_transcoder, port)) &
+	return intel_de_read(dev_priv,
+	                     HDCP2_STATUS(dev_priv, cpu_transcoder, port)) &
 	       LINK_ENCRYPTION_STATUS;
 }
 
@@ -184,9 +186,9 @@ static bool hdcp_key_loadable(struct drm_i915_private *dev_priv)
 
 static void intel_hdcp_clear_keys(struct drm_i915_private *dev_priv)
 {
-	I915_WRITE(HDCP_KEY_CONF, HDCP_CLEAR_KEYS_TRIGGER);
-	I915_WRITE(HDCP_KEY_STATUS, HDCP_KEY_LOAD_DONE | HDCP_KEY_LOAD_STATUS |
-		   HDCP_FUSE_IN_PROGRESS | HDCP_FUSE_ERROR | HDCP_FUSE_DONE);
+	intel_de_write(dev_priv, HDCP_KEY_CONF, HDCP_CLEAR_KEYS_TRIGGER);
+	intel_de_write(dev_priv, HDCP_KEY_STATUS,
+		       HDCP_KEY_LOAD_DONE | HDCP_KEY_LOAD_STATUS | HDCP_FUSE_IN_PROGRESS | HDCP_FUSE_ERROR | HDCP_FUSE_DONE);
 }
 
 static int intel_hdcp_load_keys(struct drm_i915_private *dev_priv)
@@ -194,7 +196,7 @@ static int intel_hdcp_load_keys(struct drm_i915_private *dev_priv)
 	int ret;
 	u32 val;
 
-	val = I915_READ(HDCP_KEY_STATUS);
+	val = intel_de_read(dev_priv, HDCP_KEY_STATUS);
 	if ((val & HDCP_KEY_LOAD_DONE) && (val & HDCP_KEY_LOAD_STATUS))
 		return 0;
 
@@ -203,7 +205,7 @@ static int intel_hdcp_load_keys(struct drm_i915_private *dev_priv)
 	 * out of reset. So if Key is not already loaded, its an error state.
 	 */
 	if (IS_HASWELL(dev_priv) || IS_BROADWELL(dev_priv))
-		if (!(I915_READ(HDCP_KEY_STATUS) & HDCP_KEY_LOAD_DONE))
+		if (!(intel_de_read(dev_priv, HDCP_KEY_STATUS) & HDCP_KEY_LOAD_DONE))
 			return -ENXIO;
 
 	/*
@@ -223,7 +225,7 @@ static int intel_hdcp_load_keys(struct drm_i915_private *dev_priv)
 			return ret;
 		}
 	} else {
-		I915_WRITE(HDCP_KEY_CONF, HDCP_KEY_LOAD_TRIGGER);
+		intel_de_write(dev_priv, HDCP_KEY_CONF, HDCP_KEY_LOAD_TRIGGER);
 	}
 
 	/* Wait for the keys to load (500us) */
@@ -236,7 +238,7 @@ static int intel_hdcp_load_keys(struct drm_i915_private *dev_priv)
 		return -ENXIO;
 
 	/* Send Aksv over to PCH display for use in authentication */
-	I915_WRITE(HDCP_KEY_CONF, HDCP_AKSV_SEND_TRIGGER);
+	intel_de_write(dev_priv, HDCP_KEY_CONF, HDCP_AKSV_SEND_TRIGGER);
 
 	return 0;
 }
@@ -244,7 +246,7 @@ static int intel_hdcp_load_keys(struct drm_i915_private *dev_priv)
 /* Returns updated SHA-1 index */
 static int intel_write_sha_text(struct drm_i915_private *dev_priv, u32 sha_text)
 {
-	I915_WRITE(HDCP_SHA_TEXT, sha_text);
+	intel_de_write(dev_priv, HDCP_SHA_TEXT, sha_text);
 	if (intel_de_wait_for_set(dev_priv, HDCP_REP_CTL, HDCP_SHA1_READY, 1)) {
 		drm_err(&dev_priv->drm, "Timed out waiting for SHA1 ready\n");
 		return -ETIMEDOUT;
@@ -311,7 +313,7 @@ int intel_hdcp_validate_v_prime(struct intel_connector *connector,
 		ret = shim->read_v_prime_part(intel_dig_port, i, &vprime);
 		if (ret)
 			return ret;
-		I915_WRITE(HDCP_SHA_V_PRIME(i), vprime);
+		intel_de_write(dev_priv, HDCP_SHA_V_PRIME(i), vprime);
 	}
 
 	/*
@@ -328,7 +330,7 @@ int intel_hdcp_validate_v_prime(struct intel_connector *connector,
 	sha_text = 0;
 	sha_leftovers = 0;
 	rep_ctl = intel_hdcp_get_repeater_ctl(dev_priv, cpu_transcoder, port);
-	I915_WRITE(HDCP_REP_CTL, rep_ctl | HDCP_SHA1_TEXT_32);
+	intel_de_write(dev_priv, HDCP_REP_CTL, rep_ctl | HDCP_SHA1_TEXT_32);
 	for (i = 0; i < num_downstream; i++) {
 		unsigned int sha_empty;
 		u8 *ksv = &ksv_fifo[i * DRM_HDCP_KSV_LEN];
@@ -345,7 +347,8 @@ int intel_hdcp_validate_v_prime(struct intel_connector *connector,
 		/* Programming guide writes this every 64 bytes */
 		sha_idx += sizeof(sha_text);
 		if (!(sha_idx % 64))
-			I915_WRITE(HDCP_REP_CTL, rep_ctl | HDCP_SHA1_TEXT_32);
+			intel_de_write(dev_priv, HDCP_REP_CTL,
+				       rep_ctl | HDCP_SHA1_TEXT_32);
 
 		/* Store the leftover bytes from the ksv in sha_text */
 		sha_leftovers = DRM_HDCP_KSV_LEN - sha_empty;
@@ -377,7 +380,8 @@ int intel_hdcp_validate_v_prime(struct intel_connector *connector,
 	 */
 	if (sha_leftovers == 0) {
 		/* Write 16 bits of text, 16 bits of M0 */
-		I915_WRITE(HDCP_REP_CTL, rep_ctl | HDCP_SHA1_TEXT_16);
+		intel_de_write(dev_priv, HDCP_REP_CTL,
+			       rep_ctl | HDCP_SHA1_TEXT_16);
 		ret = intel_write_sha_text(dev_priv,
 					   bstatus[0] << 8 | bstatus[1]);
 		if (ret < 0)
@@ -385,14 +389,16 @@ int intel_hdcp_validate_v_prime(struct intel_connector *connector,
 		sha_idx += sizeof(sha_text);
 
 		/* Write 32 bits of M0 */
-		I915_WRITE(HDCP_REP_CTL, rep_ctl | HDCP_SHA1_TEXT_0);
+		intel_de_write(dev_priv, HDCP_REP_CTL,
+			       rep_ctl | HDCP_SHA1_TEXT_0);
 		ret = intel_write_sha_text(dev_priv, 0);
 		if (ret < 0)
 			return ret;
 		sha_idx += sizeof(sha_text);
 
 		/* Write 16 bits of M0 */
-		I915_WRITE(HDCP_REP_CTL, rep_ctl | HDCP_SHA1_TEXT_16);
+		intel_de_write(dev_priv, HDCP_REP_CTL,
+			       rep_ctl | HDCP_SHA1_TEXT_16);
 		ret = intel_write_sha_text(dev_priv, 0);
 		if (ret < 0)
 			return ret;
@@ -400,7 +406,8 @@ int intel_hdcp_validate_v_prime(struct intel_connector *connector,
 
 	} else if (sha_leftovers == 1) {
 		/* Write 24 bits of text, 8 bits of M0 */
-		I915_WRITE(HDCP_REP_CTL, rep_ctl | HDCP_SHA1_TEXT_24);
+		intel_de_write(dev_priv, HDCP_REP_CTL,
+			       rep_ctl | HDCP_SHA1_TEXT_24);
 		sha_text |= bstatus[0] << 16 | bstatus[1] << 8;
 		/* Only 24-bits of data, must be in the LSB */
 		sha_text = (sha_text & 0xffffff00) >> 8;
@@ -410,14 +417,16 @@ int intel_hdcp_validate_v_prime(struct intel_connector *connector,
 		sha_idx += sizeof(sha_text);
 
 		/* Write 32 bits of M0 */
-		I915_WRITE(HDCP_REP_CTL, rep_ctl | HDCP_SHA1_TEXT_0);
+		intel_de_write(dev_priv, HDCP_REP_CTL,
+			       rep_ctl | HDCP_SHA1_TEXT_0);
 		ret = intel_write_sha_text(dev_priv, 0);
 		if (ret < 0)
 			return ret;
 		sha_idx += sizeof(sha_text);
 
 		/* Write 24 bits of M0 */
-		I915_WRITE(HDCP_REP_CTL, rep_ctl | HDCP_SHA1_TEXT_8);
+		intel_de_write(dev_priv, HDCP_REP_CTL,
+			       rep_ctl | HDCP_SHA1_TEXT_8);
 		ret = intel_write_sha_text(dev_priv, 0);
 		if (ret < 0)
 			return ret;
@@ -425,7 +434,8 @@ int intel_hdcp_validate_v_prime(struct intel_connector *connector,
 
 	} else if (sha_leftovers == 2) {
 		/* Write 32 bits of text */
-		I915_WRITE(HDCP_REP_CTL, rep_ctl | HDCP_SHA1_TEXT_32);
+		intel_de_write(dev_priv, HDCP_REP_CTL,
+			       rep_ctl | HDCP_SHA1_TEXT_32);
 		sha_text |= bstatus[0] << 24 | bstatus[1] << 16;
 		ret = intel_write_sha_text(dev_priv, sha_text);
 		if (ret < 0)
@@ -433,7 +443,8 @@ int intel_hdcp_validate_v_prime(struct intel_connector *connector,
 		sha_idx += sizeof(sha_text);
 
 		/* Write 64 bits of M0 */
-		I915_WRITE(HDCP_REP_CTL, rep_ctl | HDCP_SHA1_TEXT_0);
+		intel_de_write(dev_priv, HDCP_REP_CTL,
+			       rep_ctl | HDCP_SHA1_TEXT_0);
 		for (i = 0; i < 2; i++) {
 			ret = intel_write_sha_text(dev_priv, 0);
 			if (ret < 0)
@@ -442,7 +453,8 @@ int intel_hdcp_validate_v_prime(struct intel_connector *connector,
 		}
 	} else if (sha_leftovers == 3) {
 		/* Write 32 bits of text */
-		I915_WRITE(HDCP_REP_CTL, rep_ctl | HDCP_SHA1_TEXT_32);
+		intel_de_write(dev_priv, HDCP_REP_CTL,
+			       rep_ctl | HDCP_SHA1_TEXT_32);
 		sha_text |= bstatus[0] << 24;
 		ret = intel_write_sha_text(dev_priv, sha_text);
 		if (ret < 0)
@@ -450,21 +462,24 @@ int intel_hdcp_validate_v_prime(struct intel_connector *connector,
 		sha_idx += sizeof(sha_text);
 
 		/* Write 8 bits of text, 24 bits of M0 */
-		I915_WRITE(HDCP_REP_CTL, rep_ctl | HDCP_SHA1_TEXT_8);
+		intel_de_write(dev_priv, HDCP_REP_CTL,
+			       rep_ctl | HDCP_SHA1_TEXT_8);
 		ret = intel_write_sha_text(dev_priv, bstatus[1]);
 		if (ret < 0)
 			return ret;
 		sha_idx += sizeof(sha_text);
 
 		/* Write 32 bits of M0 */
-		I915_WRITE(HDCP_REP_CTL, rep_ctl | HDCP_SHA1_TEXT_0);
+		intel_de_write(dev_priv, HDCP_REP_CTL,
+			       rep_ctl | HDCP_SHA1_TEXT_0);
 		ret = intel_write_sha_text(dev_priv, 0);
 		if (ret < 0)
 			return ret;
 		sha_idx += sizeof(sha_text);
 
 		/* Write 8 bits of M0 */
-		I915_WRITE(HDCP_REP_CTL, rep_ctl | HDCP_SHA1_TEXT_24);
+		intel_de_write(dev_priv, HDCP_REP_CTL,
+			       rep_ctl | HDCP_SHA1_TEXT_24);
 		ret = intel_write_sha_text(dev_priv, 0);
 		if (ret < 0)
 			return ret;
@@ -475,7 +490,7 @@ int intel_hdcp_validate_v_prime(struct intel_connector *connector,
 		return -EINVAL;
 	}
 
-	I915_WRITE(HDCP_REP_CTL, rep_ctl | HDCP_SHA1_TEXT_32);
+	intel_de_write(dev_priv, HDCP_REP_CTL, rep_ctl | HDCP_SHA1_TEXT_32);
 	/* Fill up to 64-4 bytes with zeros (leave the last write for length) */
 	while ((sha_idx % 64) < (64 - sizeof(sha_text))) {
 		ret = intel_write_sha_text(dev_priv, 0);
@@ -495,13 +510,14 @@ int intel_hdcp_validate_v_prime(struct intel_connector *connector,
 		return ret;
 
 	/* Tell the HW we're done with the hash and wait for it to ACK */
-	I915_WRITE(HDCP_REP_CTL, rep_ctl | HDCP_SHA1_COMPLETE_HASH);
+	intel_de_write(dev_priv, HDCP_REP_CTL,
+		       rep_ctl | HDCP_SHA1_COMPLETE_HASH);
 	if (intel_de_wait_for_set(dev_priv, HDCP_REP_CTL,
 				  HDCP_SHA1_COMPLETE, 1)) {
 		DRM_ERROR("Timed out waiting for SHA1 complete\n");
 		return -ETIMEDOUT;
 	}
-	if (!(I915_READ(HDCP_REP_CTL) & HDCP_SHA1_V_MATCH)) {
+	if (!(intel_de_read(dev_priv, HDCP_REP_CTL) & HDCP_SHA1_V_MATCH)) {
 		DRM_DEBUG_KMS("SHA-1 mismatch, HDCP failed\n");
 		return -ENXIO;
 	}
@@ -633,10 +649,11 @@ static int intel_hdcp_auth(struct intel_connector *connector)
 
 	/* Initialize An with 2 random values and acquire it */
 	for (i = 0; i < 2; i++)
-		I915_WRITE(HDCP_ANINIT(dev_priv, cpu_transcoder, port),
-			   get_random_u32());
-	I915_WRITE(HDCP_CONF(dev_priv, cpu_transcoder, port),
-		   HDCP_CONF_CAPTURE_AN);
+		intel_de_write(dev_priv,
+			       HDCP_ANINIT(dev_priv, cpu_transcoder, port),
+			       get_random_u32());
+	intel_de_write(dev_priv, HDCP_CONF(dev_priv, cpu_transcoder, port),
+		       HDCP_CONF_CAPTURE_AN);
 
 	/* Wait for An to be acquired */
 	if (intel_de_wait_for_set(dev_priv,
@@ -646,8 +663,10 @@ static int intel_hdcp_auth(struct intel_connector *connector)
 		return -ETIMEDOUT;
 	}
 
-	an.reg[0] = I915_READ(HDCP_ANLO(dev_priv, cpu_transcoder, port));
-	an.reg[1] = I915_READ(HDCP_ANHI(dev_priv, cpu_transcoder, port));
+	an.reg[0] = intel_de_read(dev_priv,
+				  HDCP_ANLO(dev_priv, cpu_transcoder, port));
+	an.reg[1] = intel_de_read(dev_priv,
+				  HDCP_ANHI(dev_priv, cpu_transcoder, port));
 	ret = shim->write_an_aksv(intel_dig_port, an.shim);
 	if (ret)
 		return ret;
@@ -665,26 +684,27 @@ static int intel_hdcp_auth(struct intel_connector *connector)
 		return -EPERM;
 	}
 
-	I915_WRITE(HDCP_BKSVLO(dev_priv, cpu_transcoder, port), bksv.reg[0]);
-	I915_WRITE(HDCP_BKSVHI(dev_priv, cpu_transcoder, port), bksv.reg[1]);
+	intel_de_write(dev_priv, HDCP_BKSVLO(dev_priv, cpu_transcoder, port),
+		       bksv.reg[0]);
+	intel_de_write(dev_priv, HDCP_BKSVHI(dev_priv, cpu_transcoder, port),
+		       bksv.reg[1]);
 
 	ret = shim->repeater_present(intel_dig_port, &repeater_present);
 	if (ret)
 		return ret;
 	if (repeater_present)
-		I915_WRITE(HDCP_REP_CTL,
-			   intel_hdcp_get_repeater_ctl(dev_priv, cpu_transcoder,
-						       port));
+		intel_de_write(dev_priv, HDCP_REP_CTL,
+			       intel_hdcp_get_repeater_ctl(dev_priv, cpu_transcoder, port));
 
 	ret = shim->toggle_signalling(intel_dig_port, true);
 	if (ret)
 		return ret;
 
-	I915_WRITE(HDCP_CONF(dev_priv, cpu_transcoder, port),
-		   HDCP_CONF_AUTH_AND_ENC);
+	intel_de_write(dev_priv, HDCP_CONF(dev_priv, cpu_transcoder, port),
+		       HDCP_CONF_AUTH_AND_ENC);
 
 	/* Wait for R0 ready */
-	if (wait_for(I915_READ(HDCP_STATUS(dev_priv, cpu_transcoder, port)) &
+	if (wait_for(intel_de_read(dev_priv, HDCP_STATUS(dev_priv, cpu_transcoder, port)) &
 		     (HDCP_STATUS_R0_READY | HDCP_STATUS_ENC), 1)) {
 		DRM_ERROR("Timed out waiting for R0 ready\n");
 		return -ETIMEDOUT;
@@ -712,19 +732,19 @@ static int intel_hdcp_auth(struct intel_connector *connector)
 		ret = shim->read_ri_prime(intel_dig_port, ri.shim);
 		if (ret)
 			return ret;
-		I915_WRITE(HDCP_RPRIME(dev_priv, cpu_transcoder, port), ri.reg);
+		intel_de_write(dev_priv,
+			       HDCP_RPRIME(dev_priv, cpu_transcoder, port),
+			       ri.reg);
 
 		/* Wait for Ri prime match */
-		if (!wait_for(I915_READ(HDCP_STATUS(dev_priv, cpu_transcoder,
-						    port)) &
-		    (HDCP_STATUS_RI_MATCH | HDCP_STATUS_ENC), 1))
+		if (!wait_for(intel_de_read(dev_priv, HDCP_STATUS(dev_priv, cpu_transcoder, port)) &
+			      (HDCP_STATUS_RI_MATCH | HDCP_STATUS_ENC), 1))
 			break;
 	}
 
 	if (i == tries) {
 		DRM_DEBUG_KMS("Timed out waiting for Ri prime match (%x)\n",
-			      I915_READ(HDCP_STATUS(dev_priv, cpu_transcoder,
-						    port)));
+			      intel_de_read(dev_priv, HDCP_STATUS(dev_priv, cpu_transcoder, port)));
 		return -ETIMEDOUT;
 	}
 
@@ -762,7 +782,7 @@ static int _intel_hdcp_disable(struct intel_connector *connector)
 		    connector->base.name, connector->base.base.id);
 
 	hdcp->hdcp_encrypted = false;
-	I915_WRITE(HDCP_CONF(dev_priv, cpu_transcoder, port), 0);
+	intel_de_write(dev_priv, HDCP_CONF(dev_priv, cpu_transcoder, port), 0);
 	if (intel_de_wait_for_clear(dev_priv,
 				    HDCP_STATUS(dev_priv, cpu_transcoder, port),
 				    ~0, ENCRYPT_STATUS_CHANGE_TIMEOUT_MS)) {
@@ -856,8 +876,7 @@ static int intel_hdcp_check_link(struct intel_connector *connector)
 		drm_err(&dev_priv->drm,
 			"%s:%d HDCP link stopped encryption,%x\n",
 			connector->base.name, connector->base.base.id,
-			I915_READ(HDCP_STATUS(dev_priv, cpu_transcoder,
-					      port)));
+			intel_de_read(dev_priv, HDCP_STATUS(dev_priv, cpu_transcoder, port)));
 		ret = -ENXIO;
 		hdcp->value = DRM_MODE_CONTENT_PROTECTION_DESIRED;
 		schedule_work(&hdcp->prop_work);
@@ -1542,7 +1561,7 @@ static int hdcp2_enable_encryption(struct intel_connector *connector)
 	enum transcoder cpu_transcoder = hdcp->cpu_transcoder;
 	int ret;
 
-	WARN_ON(I915_READ(HDCP2_STATUS(dev_priv, cpu_transcoder, port)) &
+	WARN_ON(intel_de_read(dev_priv, HDCP2_STATUS(dev_priv, cpu_transcoder, port)) &
 		LINK_ENCRYPTION_STATUS);
 	if (hdcp->shim->toggle_signalling) {
 		ret = hdcp->shim->toggle_signalling(intel_dig_port, true);
@@ -1554,13 +1573,12 @@ static int hdcp2_enable_encryption(struct intel_connector *connector)
 		}
 	}
 
-	if (I915_READ(HDCP2_STATUS(dev_priv, cpu_transcoder, port)) &
+	if (intel_de_read(dev_priv, HDCP2_STATUS(dev_priv, cpu_transcoder, port)) &
 	    LINK_AUTH_STATUS) {
 		/* Link is Authenticated. Now set for Encryption */
-		I915_WRITE(HDCP2_CTL(dev_priv, cpu_transcoder, port),
-			   I915_READ(HDCP2_CTL(dev_priv, cpu_transcoder,
-					       port)) |
-			   CTL_LINK_ENCRYPTION_REQ);
+		intel_de_write(dev_priv,
+			       HDCP2_CTL(dev_priv, cpu_transcoder, port),
+			       intel_de_read(dev_priv, HDCP2_CTL(dev_priv, cpu_transcoder, port)) | CTL_LINK_ENCRYPTION_REQ);
 	}
 
 	ret = intel_de_wait_for_set(dev_priv,
@@ -1581,12 +1599,11 @@ static int hdcp2_disable_encryption(struct intel_connector *connector)
 	enum transcoder cpu_transcoder = hdcp->cpu_transcoder;
 	int ret;
 
-	WARN_ON(!(I915_READ(HDCP2_STATUS(dev_priv, cpu_transcoder, port)) &
+	WARN_ON(!(intel_de_read(dev_priv, HDCP2_STATUS(dev_priv, cpu_transcoder, port)) &
 			    LINK_ENCRYPTION_STATUS));
 
-	I915_WRITE(HDCP2_CTL(dev_priv, cpu_transcoder, port),
-		   I915_READ(HDCP2_CTL(dev_priv, cpu_transcoder, port)) &
-		   ~CTL_LINK_ENCRYPTION_REQ);
+	intel_de_write(dev_priv, HDCP2_CTL(dev_priv, cpu_transcoder, port),
+		       intel_de_read(dev_priv, HDCP2_CTL(dev_priv, cpu_transcoder, port)) & ~CTL_LINK_ENCRYPTION_REQ);
 
 	ret = intel_de_wait_for_clear(dev_priv,
 				      HDCP2_STATUS(dev_priv, cpu_transcoder,
@@ -1706,8 +1723,7 @@ static int intel_hdcp2_check_link(struct intel_connector *connector)
 	if (WARN_ON(!intel_hdcp2_in_use(dev_priv, cpu_transcoder, port))) {
 		drm_err(&dev_priv->drm,
 			"HDCP2.2 link stopped the encryption, %x\n",
-			I915_READ(HDCP2_STATUS(dev_priv, cpu_transcoder,
-					       port)));
+			intel_de_read(dev_priv, HDCP2_STATUS(dev_priv, cpu_transcoder, port)));
 		ret = -ENXIO;
 		hdcp->value = DRM_MODE_CONTENT_PROTECTION_DESIRED;
 		schedule_work(&hdcp->prop_work);
-- 
2.20.1

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
