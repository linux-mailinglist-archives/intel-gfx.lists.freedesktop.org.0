Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id EA000148609
	for <lists+intel-gfx@lfdr.de>; Fri, 24 Jan 2020 14:26:26 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 4F93072A83;
	Fri, 24 Jan 2020 13:26:25 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga04.intel.com (mga04.intel.com [192.55.52.120])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 48EBB72A89
 for <intel-gfx@lists.freedesktop.org>; Fri, 24 Jan 2020 13:26:24 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga004.jf.intel.com ([10.7.209.38])
 by fmsmga104.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 24 Jan 2020 05:26:23 -0800
X-IronPort-AV: E=Sophos;i="5.70,357,1574150400"; d="scan'208";a="375510305"
Received: from omarkovx-mobl.ger.corp.intel.com (HELO localhost)
 ([10.249.37.60])
 by orsmga004-auth.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 24 Jan 2020 05:26:21 -0800
From: Jani Nikula <jani.nikula@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Fri, 24 Jan 2020 15:25:40 +0200
Message-Id: <c95b0dcc6817e76f0ae38fe9a0b55a47eca12b6f.1579871655.git.jani.nikula@intel.com>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <cover.1579871655.git.jani.nikula@intel.com>
References: <cover.1579871655.git.jani.nikula@intel.com>
MIME-Version: 1.0
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
Subject: [Intel-gfx] [RFC 19/33] drm/i915/hdcp: use intel_de_*() functions
 for register access
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

Signed-off-by: Jani Nikula <jani.nikula@intel.com>
---
 drivers/gpu/drm/i915/display/intel_hdcp.c | 142 ++++++++++++----------
 1 file changed, 79 insertions(+), 63 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_hdcp.c b/drivers/gpu/drm/i915/display/intel_hdcp.c
index 3454a913dca8..00805dcd601b 100644
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
@@ -222,7 +224,7 @@ static int intel_hdcp_load_keys(struct drm_i915_private *dev_priv)
 			return ret;
 		}
 	} else {
-		I915_WRITE(HDCP_KEY_CONF, HDCP_KEY_LOAD_TRIGGER);
+		intel_de_write(dev_priv, HDCP_KEY_CONF, HDCP_KEY_LOAD_TRIGGER);
 	}
 
 	/* Wait for the keys to load (500us) */
@@ -235,7 +237,7 @@ static int intel_hdcp_load_keys(struct drm_i915_private *dev_priv)
 		return -ENXIO;
 
 	/* Send Aksv over to PCH display for use in authentication */
-	I915_WRITE(HDCP_KEY_CONF, HDCP_AKSV_SEND_TRIGGER);
+	intel_de_write(dev_priv, HDCP_KEY_CONF, HDCP_AKSV_SEND_TRIGGER);
 
 	return 0;
 }
@@ -243,7 +245,7 @@ static int intel_hdcp_load_keys(struct drm_i915_private *dev_priv)
 /* Returns updated SHA-1 index */
 static int intel_write_sha_text(struct drm_i915_private *dev_priv, u32 sha_text)
 {
-	I915_WRITE(HDCP_SHA_TEXT, sha_text);
+	intel_de_write(dev_priv, HDCP_SHA_TEXT, sha_text);
 	if (intel_de_wait_for_set(dev_priv, HDCP_REP_CTL, HDCP_SHA1_READY, 1)) {
 		DRM_ERROR("Timed out waiting for SHA1 ready\n");
 		return -ETIMEDOUT;
@@ -309,7 +311,7 @@ int intel_hdcp_validate_v_prime(struct intel_connector *connector,
 		ret = shim->read_v_prime_part(intel_dig_port, i, &vprime);
 		if (ret)
 			return ret;
-		I915_WRITE(HDCP_SHA_V_PRIME(i), vprime);
+		intel_de_write(dev_priv, HDCP_SHA_V_PRIME(i), vprime);
 	}
 
 	/*
@@ -326,7 +328,7 @@ int intel_hdcp_validate_v_prime(struct intel_connector *connector,
 	sha_text = 0;
 	sha_leftovers = 0;
 	rep_ctl = intel_hdcp_get_repeater_ctl(dev_priv, cpu_transcoder, port);
-	I915_WRITE(HDCP_REP_CTL, rep_ctl | HDCP_SHA1_TEXT_32);
+	intel_de_write(dev_priv, HDCP_REP_CTL, rep_ctl | HDCP_SHA1_TEXT_32);
 	for (i = 0; i < num_downstream; i++) {
 		unsigned int sha_empty;
 		u8 *ksv = &ksv_fifo[i * DRM_HDCP_KSV_LEN];
@@ -343,7 +345,8 @@ int intel_hdcp_validate_v_prime(struct intel_connector *connector,
 		/* Programming guide writes this every 64 bytes */
 		sha_idx += sizeof(sha_text);
 		if (!(sha_idx % 64))
-			I915_WRITE(HDCP_REP_CTL, rep_ctl | HDCP_SHA1_TEXT_32);
+			intel_de_write(dev_priv, HDCP_REP_CTL,
+				       rep_ctl | HDCP_SHA1_TEXT_32);
 
 		/* Store the leftover bytes from the ksv in sha_text */
 		sha_leftovers = DRM_HDCP_KSV_LEN - sha_empty;
@@ -375,7 +378,8 @@ int intel_hdcp_validate_v_prime(struct intel_connector *connector,
 	 */
 	if (sha_leftovers == 0) {
 		/* Write 16 bits of text, 16 bits of M0 */
-		I915_WRITE(HDCP_REP_CTL, rep_ctl | HDCP_SHA1_TEXT_16);
+		intel_de_write(dev_priv, HDCP_REP_CTL,
+			       rep_ctl | HDCP_SHA1_TEXT_16);
 		ret = intel_write_sha_text(dev_priv,
 					   bstatus[0] << 8 | bstatus[1]);
 		if (ret < 0)
@@ -383,14 +387,16 @@ int intel_hdcp_validate_v_prime(struct intel_connector *connector,
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
@@ -398,7 +404,8 @@ int intel_hdcp_validate_v_prime(struct intel_connector *connector,
 
 	} else if (sha_leftovers == 1) {
 		/* Write 24 bits of text, 8 bits of M0 */
-		I915_WRITE(HDCP_REP_CTL, rep_ctl | HDCP_SHA1_TEXT_24);
+		intel_de_write(dev_priv, HDCP_REP_CTL,
+			       rep_ctl | HDCP_SHA1_TEXT_24);
 		sha_text |= bstatus[0] << 16 | bstatus[1] << 8;
 		/* Only 24-bits of data, must be in the LSB */
 		sha_text = (sha_text & 0xffffff00) >> 8;
@@ -408,14 +415,16 @@ int intel_hdcp_validate_v_prime(struct intel_connector *connector,
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
@@ -423,7 +432,8 @@ int intel_hdcp_validate_v_prime(struct intel_connector *connector,
 
 	} else if (sha_leftovers == 2) {
 		/* Write 32 bits of text */
-		I915_WRITE(HDCP_REP_CTL, rep_ctl | HDCP_SHA1_TEXT_32);
+		intel_de_write(dev_priv, HDCP_REP_CTL,
+			       rep_ctl | HDCP_SHA1_TEXT_32);
 		sha_text |= bstatus[0] << 24 | bstatus[1] << 16;
 		ret = intel_write_sha_text(dev_priv, sha_text);
 		if (ret < 0)
@@ -431,7 +441,8 @@ int intel_hdcp_validate_v_prime(struct intel_connector *connector,
 		sha_idx += sizeof(sha_text);
 
 		/* Write 64 bits of M0 */
-		I915_WRITE(HDCP_REP_CTL, rep_ctl | HDCP_SHA1_TEXT_0);
+		intel_de_write(dev_priv, HDCP_REP_CTL,
+			       rep_ctl | HDCP_SHA1_TEXT_0);
 		for (i = 0; i < 2; i++) {
 			ret = intel_write_sha_text(dev_priv, 0);
 			if (ret < 0)
@@ -440,7 +451,8 @@ int intel_hdcp_validate_v_prime(struct intel_connector *connector,
 		}
 	} else if (sha_leftovers == 3) {
 		/* Write 32 bits of text */
-		I915_WRITE(HDCP_REP_CTL, rep_ctl | HDCP_SHA1_TEXT_32);
+		intel_de_write(dev_priv, HDCP_REP_CTL,
+			       rep_ctl | HDCP_SHA1_TEXT_32);
 		sha_text |= bstatus[0] << 24;
 		ret = intel_write_sha_text(dev_priv, sha_text);
 		if (ret < 0)
@@ -448,21 +460,24 @@ int intel_hdcp_validate_v_prime(struct intel_connector *connector,
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
@@ -473,7 +488,7 @@ int intel_hdcp_validate_v_prime(struct intel_connector *connector,
 		return -EINVAL;
 	}
 
-	I915_WRITE(HDCP_REP_CTL, rep_ctl | HDCP_SHA1_TEXT_32);
+	intel_de_write(dev_priv, HDCP_REP_CTL, rep_ctl | HDCP_SHA1_TEXT_32);
 	/* Fill up to 64-4 bytes with zeros (leave the last write for length) */
 	while ((sha_idx % 64) < (64 - sizeof(sha_text))) {
 		ret = intel_write_sha_text(dev_priv, 0);
@@ -493,13 +508,14 @@ int intel_hdcp_validate_v_prime(struct intel_connector *connector,
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
@@ -631,10 +647,11 @@ static int intel_hdcp_auth(struct intel_connector *connector)
 
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
@@ -644,8 +661,10 @@ static int intel_hdcp_auth(struct intel_connector *connector)
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
@@ -663,26 +682,27 @@ static int intel_hdcp_auth(struct intel_connector *connector)
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
@@ -710,19 +730,19 @@ static int intel_hdcp_auth(struct intel_connector *connector)
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
 
@@ -760,7 +780,7 @@ static int _intel_hdcp_disable(struct intel_connector *connector)
 		      connector->base.name, connector->base.base.id);
 
 	hdcp->hdcp_encrypted = false;
-	I915_WRITE(HDCP_CONF(dev_priv, cpu_transcoder, port), 0);
+	intel_de_write(dev_priv, HDCP_CONF(dev_priv, cpu_transcoder, port), 0);
 	if (intel_de_wait_for_clear(dev_priv,
 				    HDCP_STATUS(dev_priv, cpu_transcoder, port),
 				    ~0, ENCRYPT_STATUS_CHANGE_TIMEOUT_MS)) {
@@ -850,8 +870,7 @@ static int intel_hdcp_check_link(struct intel_connector *connector)
 	if (WARN_ON(!intel_hdcp_in_use(dev_priv, cpu_transcoder, port))) {
 		DRM_ERROR("%s:%d HDCP link stopped encryption,%x\n",
 			  connector->base.name, connector->base.base.id,
-			  I915_READ(HDCP_STATUS(dev_priv, cpu_transcoder,
-						port)));
+			  intel_de_read(dev_priv, HDCP_STATUS(dev_priv, cpu_transcoder, port)));
 		ret = -ENXIO;
 		hdcp->value = DRM_MODE_CONTENT_PROTECTION_DESIRED;
 		schedule_work(&hdcp->prop_work);
@@ -1527,7 +1546,7 @@ static int hdcp2_enable_encryption(struct intel_connector *connector)
 	enum transcoder cpu_transcoder = hdcp->cpu_transcoder;
 	int ret;
 
-	WARN_ON(I915_READ(HDCP2_STATUS(dev_priv, cpu_transcoder, port)) &
+	WARN_ON(intel_de_read(dev_priv, HDCP2_STATUS(dev_priv, cpu_transcoder, port)) &
 		LINK_ENCRYPTION_STATUS);
 	if (hdcp->shim->toggle_signalling) {
 		ret = hdcp->shim->toggle_signalling(intel_dig_port, true);
@@ -1538,13 +1557,12 @@ static int hdcp2_enable_encryption(struct intel_connector *connector)
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
@@ -1565,12 +1583,11 @@ static int hdcp2_disable_encryption(struct intel_connector *connector)
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
@@ -1688,8 +1705,7 @@ static int intel_hdcp2_check_link(struct intel_connector *connector)
 
 	if (WARN_ON(!intel_hdcp2_in_use(dev_priv, cpu_transcoder, port))) {
 		DRM_ERROR("HDCP2.2 link stopped the encryption, %x\n",
-			  I915_READ(HDCP2_STATUS(dev_priv, cpu_transcoder,
-						 port)));
+			  intel_de_read(dev_priv, HDCP2_STATUS(dev_priv, cpu_transcoder, port)));
 		ret = -ENXIO;
 		hdcp->value = DRM_MODE_CONTENT_PROTECTION_DESIRED;
 		schedule_work(&hdcp->prop_work);
-- 
2.20.1

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
