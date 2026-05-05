Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id 6NAsLs1V+Wn07wIAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Tue, 05 May 2026 04:28:29 +0200
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id A4B814C5FD8
	for <lists+intel-gfx@lfdr.de>; Tue, 05 May 2026 04:28:28 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 0D9EA10E035;
	Tue,  5 May 2026 02:28:26 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (4096-bit key; unprotected) header.d=canonical.com header.i=@canonical.com header.b="dNqJNLCs";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
X-Greylist: delayed 387 seconds by postgrey-1.36 at gabe;
 Tue, 05 May 2026 02:28:23 UTC
Received: from smtp-relay-internal-0.canonical.com
 (smtp-relay-internal-0.canonical.com [185.125.188.122])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 8FEF310E035
 for <intel-gfx@lists.freedesktop.org>; Tue,  5 May 2026 02:28:23 +0000 (UTC)
Received: from mail-pf1-f200.google.com (mail-pf1-f200.google.com
 [209.85.210.200])
 (using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
 key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
 (No client certificate requested)
 by smtp-relay-internal-0.canonical.com (Postfix) with ESMTPS id DAE9B3F7F8
 for <intel-gfx@lists.freedesktop.org>; Tue,  5 May 2026 02:21:52 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=canonical.com;
 s=20251003; t=1777947712;
 bh=fipO6vqfRoZis0+jHmhTzyb6fRYmQ12VZvhmcWa3dQ4=;
 h=From:To:Cc:Subject:Date:Message-Id:MIME-Version;
 b=dNqJNLCseOBhl4ddJi4w7v/NXkg3Mf2QJQUAnqEMrmm1hI4LxE5AMVw9xM7XYnn6d
 eUR2Fu1lI4lQHKJHXmD4OY/Usln/4veUqEBSIEgHyOA37nfxu68aIRoWXCazdctWsr
 tiJhxMr03M6FWP8FbZkO3mKFl+1qkNLc/C0l1gCkeK8r+D5qypqnEZjj1wDf1gopch
 WHRR4zfHE1w1BU/eYpVC3xtHzihIA4yUa78bgbWFsafv7zVX2RT86nzAxClJcjBAmM
 6wF3QEy9j5usGIGkFfQJ3+DROOOkTyo70s5e9ubumLSxOiNzV81SxwOd4rYcrd7eMP
 L2CBt196TyYJSFQqxjA5ghXvC4GBMx4NpWVupzLdbx+qTR6e0t5n1Olf+Q4oUi/wXI
 JJ1D+FMu4fuRIV8eyiTT/mIgjX1Z6L+RAgmYMAeRtcogAg7bsAywPFeivDSn3/DhbS
 chIbqCno4KVsKeLRzzmgHcE7SuGf2Za97uxnL55zdGdSY+SYvqVcy21evRobDHDja3
 7GN8NttUOM8MkYFVtID2TODud8hkP9o9tAGdWBGBoX9Jd1/2pQTD+9n+poeh0cCJCb
 oywfloryXbwQxZZ1cr17a4gNuxucv48UYJZTbcxG2aMzkZ3KWQVAiFCFDv5f2L/qAL
 9SuCwuQbBKpuPc950//rizNg=
Received: by mail-pf1-f200.google.com with SMTP id
 d2e1a72fcca58-8385953d8e9so274035b3a.1
 for <intel-gfx@lists.freedesktop.org>; Mon, 04 May 2026 19:21:52 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20251104; t=1777947711; x=1778552511;
 h=content-transfer-encoding:mime-version:message-id:date:subject:cc
 :to:from:x-gm-gg:x-gm-message-state:from:to:cc:subject:date
 :message-id:reply-to;
 bh=fipO6vqfRoZis0+jHmhTzyb6fRYmQ12VZvhmcWa3dQ4=;
 b=oC4FL5I+ud6Abz+HF3PiDeZFQ+KfwyAw2RpR8acgkyqxUtfSGgJhkZOMauhjohnVhm
 tRRqWdiBJkcIM5EVw/9rXaQgz3sStQ3yn5JM5WU4cQ4mvbTuV/AC1ytgd74jSq3Ba5RK
 o1k/Iko2dGVhxFz5OZmBzjcrdY8uOTOBptkxNqrf1oJAtftyMatt6tFzqJAy9jCLtrJm
 gmV7R1q8OTKY5V5BZ5ix8eKRqPsNvRWuSJ1O3znXorla3yUuaLKfXVJzy4Ra1CehltrJ
 yjKTL5sZvdcBYlCc+DKdi8n3rArhcbGpilTrlyPGpwxaIXuPEQ8q5z02KxTMJpvEeOXA
 FFsA==
X-Gm-Message-State: AOJu0Yzvf+jYyVNzY8TQt0y0HKmGH4bqm8ZYA4iTvzpJevZ5EiyKNZb7
 cewprAj3l3e459nnL+RaUtYJl7vz+ZxM71jqhLBmKGRPmXdprE4zgyEYcYg9bPurxLtgLs3Em5s
 omlb7OIUhTikOMtVeaxZPx1fPA1ahtGq531JmEx4Y1ggiG5u1XrxqbDKSGDvXSpdD8glf2dCeEO
 u5rlfOe1oKgQ==
X-Gm-Gg: AeBDiet8cBUJ3Kf1C7uI4anC3lzwYA1SG9lc1MTrJhuPCczym45eyuA5MIJ97S8EsIX
 HiR1IXWJbMXwCz2hWzlA8dOI/ybexVvp1zkaLt1EgX1KR2Lu6s5LSAKyx8QLziq9ICriPfX80la
 h//w7rowoTlkvVVi09fRRru7rHlSmtdim7bCKtNJkBiazy9iq0NDaX1v+V8+mzlt12wi0BElLlx
 nHuh2wfHnlYgC4I4/KgXfS2wBpNgkBtBuL6GFzk09uTbmHrxvTJpB+UgomBJ22YZX0Gs84Gfrq8
 8ktOeTEV4XpmpqEC3rb9CVQvwKM8TN+lq6MoOpj5Q/0oQvzs6l9o29Vk+meoCg58+WThVimXilT
 4Evc0xjURy/Prl61qAVohFFbGz4IlFozie2+SBNE7L5Y7zG3P2CCzGXhTiWN1jjDGUck/4COcDd
 +t07rQegKlDOy4TSEpQMvALLZUO5Wi+MQwJWSKBeY2qwGXpK0ztwqeWWyEudRVi4+kC5bMSeOnd
 uyM+j66nyZj
X-Received: by 2002:a17:902:f54c:b0:2b4:60cf:c94a with SMTP id
 d9443c01a7336-2b9f25e88c6mr62872915ad.4.1777947710973; 
 Mon, 04 May 2026 19:21:50 -0700 (PDT)
X-Received: by 2002:a17:902:f54c:b0:2b4:60cf:c94a with SMTP id
 d9443c01a7336-2b9f25e88c6mr62872725ad.4.1777947710551; 
 Mon, 04 May 2026 19:21:50 -0700 (PDT)
Received: from an-XPS-15-9520..
 (2001-b011-2008-6553-c5e9-d4dc-67fd-a915.dynamic-ip6.hinet.net.
 [2001:b011:2008:6553:c5e9:d4dc:67fd:a915])
 by smtp.gmail.com with ESMTPSA id
 d9443c01a7336-2b9caa7e855sm113352105ad.10.2026.05.04.19.21.49
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Mon, 04 May 2026 19:21:50 -0700 (PDT)
From: ChunAn Wu <an.wu@canonical.com>
To: jani.nikula@linux.intel.com,
	rodrigo.vivi@intel.com
Cc: intel-gfx@lists.freedesktop.org
Subject: [PATCH] drm/i915/tc: Recover AUX channel after external TC port mode
 change
Date: Tue,  5 May 2026 10:21:47 +0800
Message-Id: <20260505022147.153193-1-an.wu@canonical.com>
X-Mailer: git-send-email 2.34.1
MIME-Version: 1.0
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
X-Rspamd-Queue-Id: A4B814C5FD8
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [0.19 / 15.00];
	MID_CONTAINS_FROM(1.00)[];
	R_MISSING_CHARSET(0.50)[];
	DMARC_POLICY_ALLOW(-0.50)[canonical.com,reject];
	R_DKIM_ALLOW(-0.20)[canonical.com:s=20251003];
	MAILLIST(-0.20)[mailman];
	R_SPF_ALLOW(-0.20)[+ip4:131.252.210.177:c];
	MIME_GOOD(-0.10)[text/plain];
	RWL_MAILSPIKE_GOOD(-0.10)[131.252.210.177:from];
	HAS_LIST_UNSUB(-0.01)[];
	FORWARDED(0.00)[intel-gfx@lists.freedesktop.org];
	MIME_TRACE(0.00)[0:+];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	ARC_NA(0.00)[];
	FORGED_RECIPIENTS(0.00)[m:jani.nikula@linux.intel.com,m:rodrigo.vivi@intel.com,s:lists@lfdr.de];
	FORGED_SENDER(0.00)[an.wu@canonical.com,intel-gfx-bounces@lists.freedesktop.org];
	DKIM_TRACE(0.00)[canonical.com:+];
	ASN(0.00)[asn:6366, ipnet:131.252.0.0/16, country:US];
	FORGED_SENDER_MAILLIST(0.00)[];
	FORGED_SENDER_FORWARDING(0.00)[];
	RCVD_COUNT_FIVE(0.00)[5];
	FROM_NEQ_ENVFROM(0.00)[an.wu@canonical.com,intel-gfx-bounces@lists.freedesktop.org];
	FROM_HAS_DN(0.00)[];
	RCPT_COUNT_THREE(0.00)[3];
	TO_DN_NONE(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	PREVIOUSLY_DELIVERED(0.00)[intel-gfx@lists.freedesktop.org];
	TAGGED_RCPT(0.00)[intel-gfx];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[gabe.freedesktop.org:helo,gabe.freedesktop.org:rdns]

When Fn+F4 triggers mirror mode, the BIOS/EC reconfigures a TC port
mode (e.g. DP-Alt to TBT-Alt via UCSI) without generating HPD. The
driver's cached TC mode becomes stale, so intel_dp_aux_xfer() uses
the wrong power domain and IO routing, and AUX transactions fail.

This occurs when the USB-C-to-HDMI dongle does not support TBT, so
the mode switch creates a mismatch. It also occurs with slow monitors
whose delayed HPD/DDC/EDID recovery causes the Type-C layer to settle
on a stale tbt-alt state before the dongle finishes re-negotiation.

Add intel_tc_port_aux_recover() to detect hardware/cached TC mode
divergence and reset the PHY. Wrap it with
intel_dp_aux_xfer_with_recovery() to retry with corrected settings.

Tested on Panther Lake and Lunar Lake with a BenQ HDMI monitor via
USB-C-to-HDMI dongle.

Signed-off-by: ChunAn Wu <an.wu@canonical.com>
---
 drivers/gpu/drm/i915/display/intel_dp_aux.c | 41 +++++++++--
 drivers/gpu/drm/i915/display/intel_tc.c     | 75 +++++++++++++++++++++
 drivers/gpu/drm/i915/display/intel_tc.h     |  1 +
 3 files changed, 113 insertions(+), 4 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_dp_aux.c b/drivers/gpu/drm/i915/display/intel_dp_aux.c
index b20ec3e589fa..8412bad8c7af 100644
--- a/drivers/gpu/drm/i915/display/intel_dp_aux.c
+++ b/drivers/gpu/drm/i915/display/intel_dp_aux.c
@@ -481,6 +481,39 @@ static u32 intel_dp_aux_xfer_flags(const struct drm_dp_aux_msg *msg)
 	return 0;
 }
 
+/**
+ * intel_dp_aux_xfer_with_recovery - AUX transfer with TC port recovery
+ * @intel_dp: the DP port
+ * @send: buffer of bytes to send
+ * @send_bytes: number of bytes to send
+ * @recv: buffer to store received reply
+ * @recv_size: maximum number of bytes to receive
+ * @aux_send_ctl_flags: extra flags for the AUX send control register
+ *
+ * Wrapper around intel_dp_aux_xfer() that attempts to recover from an
+ * external TC port mode change (e.g., dp-alt -> tbt-alt via hotkey BIOS
+ * action) when the initial AUX transfer fails. On failure, recovery is
+ * attempted once via intel_tc_port_aux_recover() before retrying.
+ *
+ * Returns: number of received bytes on success, negative error code on failure.
+ */
+static int
+intel_dp_aux_xfer_with_recovery(struct intel_dp *intel_dp,
+				const u8 *send, int send_bytes,
+				u8 *recv, int recv_size,
+				u32 aux_send_ctl_flags)
+{
+	struct intel_digital_port *dig_port = dp_to_dig_port(intel_dp);
+	int ret;
+
+	ret = intel_dp_aux_xfer(intel_dp, send, send_bytes, recv, recv_size,
+				aux_send_ctl_flags);
+	if (ret < 0 && intel_tc_port_aux_recover(dig_port))
+		ret = intel_dp_aux_xfer(intel_dp, send, send_bytes, recv,
+					recv_size, aux_send_ctl_flags);
+	return ret;
+}
+
 static ssize_t
 intel_dp_aux_transfer(struct drm_dp_aux *aux, struct drm_dp_aux_msg *msg)
 {
@@ -508,8 +541,8 @@ intel_dp_aux_transfer(struct drm_dp_aux *aux, struct drm_dp_aux_msg *msg)
 		if (msg->buffer)
 			memcpy(txbuf + HEADER_SIZE, msg->buffer, msg->size);
 
-		ret = intel_dp_aux_xfer(intel_dp, txbuf, txsize,
-					rxbuf, rxsize, flags);
+		ret = intel_dp_aux_xfer_with_recovery(intel_dp, txbuf, txsize,
+						       rxbuf, rxsize, flags);
 		if (ret > 0) {
 			msg->reply = rxbuf[0] >> 4;
 
@@ -531,8 +564,8 @@ intel_dp_aux_transfer(struct drm_dp_aux *aux, struct drm_dp_aux_msg *msg)
 		if (drm_WARN_ON(display->drm, rxsize > 20))
 			return -E2BIG;
 
-		ret = intel_dp_aux_xfer(intel_dp, txbuf, txsize,
-					rxbuf, rxsize, flags);
+		ret = intel_dp_aux_xfer_with_recovery(intel_dp, txbuf, txsize,
+						       rxbuf, rxsize, flags);
 		if (ret > 0) {
 			msg->reply = rxbuf[0] >> 4;
 			/*
diff --git a/drivers/gpu/drm/i915/display/intel_tc.c b/drivers/gpu/drm/i915/display/intel_tc.c
index a21dd4e3fe4c..1b23161e4eea 100644
--- a/drivers/gpu/drm/i915/display/intel_tc.c
+++ b/drivers/gpu/drm/i915/display/intel_tc.c
@@ -1861,6 +1861,81 @@ void intel_tc_port_link_cancel_reset_work(struct intel_digital_port *dig_port)
 	cancel_delayed_work(&tc->link_reset_work);
 }
 
+/**
+ * intel_tc_port_aux_recover - Recover AUX channel after external TC mode change
+ * @dig_port: digital port
+ *
+ * When firmware causes a TC port mode change (e.g., dp-alt -> disconnect ->
+ * tbt-alt) during a hotkey-triggered display mode switch, AUX transactions
+ * using the stale power domain and IO flags will fail with timeouts or errors.
+ * This happens because:
+ *
+ *   1. The display driver holds the TC link in dp-alt mode (link_refcount > 0)
+ *   2. Firmware (e.g., via HP WMI hotkey BIOS action) reconfigures the TC port
+ *      mode externally without notifying the display driver
+ *   3. tc->mode stays as TC_PORT_DP_ALT while HW transitions to a different
+ *      mode, invalidating the AUX power domain and IO flags used by
+ *      intel_dp_aux_xfer()
+ *
+ * This function detects the discrepancy between tc->mode and actual HW state,
+ * and re-synchronizes them via a TC PHY reset. After recovery, AUX retries
+ * will use the correct power domain and control flags.
+ *
+ * The link_refcount is temporarily cleared to allow intel_tc_port_reset_mode()
+ * to proceed without the PHY-ownership assertion that fires when link_refcount
+ * is non-zero and firmware has already released PHY ownership.
+ *
+ * Must be called outside the TC port lock (tc->lock).
+ *
+ * Returns: %true if recovery was performed and AUX can be retried,
+ *          %false if recovery was not needed or not possible.
+ */
+bool intel_tc_port_aux_recover(struct intel_digital_port *dig_port)
+{
+	struct intel_tc_port *tc;
+	struct intel_display *display;
+	bool recovered = false;
+
+	if (!intel_encoder_is_tc(&dig_port->base))
+		return false;
+
+	tc = to_tc_port(dig_port);
+	display = to_intel_display(dig_port);
+
+	mutex_lock(&tc->lock);
+
+	/*
+	 * Recovery is only needed when the link is actively held AND the HW
+	 * TC mode has diverged from the driver's cached state.
+	 */
+	if (!tc->link_refcount || !intel_tc_port_needs_reset(tc))
+		goto out;
+
+	drm_dbg_kms(display->drm,
+		    "Port %s: AUX recover: external TC mode change detected (%s -> HW), reconnecting TC PHY\n",
+		    tc->port_name, tc_port_mode_name(tc->mode));
+
+	/*
+	 * Temporarily clear link_refcount so intel_tc_port_reset_mode() can
+	 * run the PHY disconnect/connect cycle without the ownership assertion
+	 * that fires when link_refcount > 0 and firmware has already released
+	 * PHY ownership externally.
+	 */
+	tc->link_refcount = 0;
+	intel_tc_port_reset_mode(tc, 1, false);
+	tc->link_refcount = 1;
+
+	recovered = tc->mode != TC_PORT_DISCONNECTED;
+	if (!recovered)
+		drm_warn(display->drm,
+			 "Port %s: AUX recover: failed to restore TC port mode\n",
+			 tc->port_name);
+
+out:
+	mutex_unlock(&tc->lock);
+	return recovered;
+}
+
 static void __intel_tc_port_lock(struct intel_tc_port *tc,
 				 int required_lanes)
 {
diff --git a/drivers/gpu/drm/i915/display/intel_tc.h b/drivers/gpu/drm/i915/display/intel_tc.h
index 6719aea5bd58..d44998a3081a 100644
--- a/drivers/gpu/drm/i915/display/intel_tc.h
+++ b/drivers/gpu/drm/i915/display/intel_tc.h
@@ -108,6 +108,7 @@ bool intel_tc_port_ref_held(struct intel_digital_port *dig_port);
 bool intel_tc_port_link_needs_reset(struct intel_digital_port *dig_port);
 bool intel_tc_port_link_reset(struct intel_digital_port *dig_port);
 void intel_tc_port_link_cancel_reset_work(struct intel_digital_port *dig_port);
+bool intel_tc_port_aux_recover(struct intel_digital_port *dig_port);
 
 int intel_tc_port_init(struct intel_digital_port *dig_port, bool is_legacy);
 void intel_tc_port_cleanup(struct intel_digital_port *dig_port);
-- 
2.34.1

