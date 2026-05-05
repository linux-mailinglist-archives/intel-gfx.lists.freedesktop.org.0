Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id oGG7JKpl+Wlt8QIAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Tue, 05 May 2026 05:36:10 +0200
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 04D224C62E9
	for <lists+intel-gfx@lfdr.de>; Tue, 05 May 2026 05:36:09 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 204B610E03E;
	Tue,  5 May 2026 03:36:08 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (4096-bit key; unprotected) header.d=canonical.com header.i=@canonical.com header.b="D/lqd835";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from smtp-relay-internal-0.canonical.com
 (smtp-relay-internal-0.canonical.com [185.125.188.122])
 by gabe.freedesktop.org (Postfix) with ESMTPS id DA0A110E03E
 for <intel-gfx@lists.freedesktop.org>; Tue,  5 May 2026 03:36:05 +0000 (UTC)
Received: from mail-pl1-f199.google.com (mail-pl1-f199.google.com
 [209.85.214.199])
 (using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
 key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
 (No client certificate requested)
 by smtp-relay-internal-0.canonical.com (Postfix) with ESMTPS id 347723FA63
 for <intel-gfx@lists.freedesktop.org>; Tue,  5 May 2026 03:36:04 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=canonical.com;
 s=20251003; t=1777952164;
 bh=5nXNXtq4bXqnzVo7coZe7ghW1MNIY/5OFZVdGYJv4uc=;
 h=From:To:Cc:Subject:Date:Message-Id:MIME-Version;
 b=D/lqd8354x5ssb5iU2+OyzxQMR2fgZwqVX1Y/lTd0K8uWE0JZ0sTXP2o8nqWBqjDw
 KJhN5oumt5uVUDiTkO97hFchfYq/MNUE3E0jdCHcrKpZtMYSD2eQ4sdw6FJzJEmdvw
 bsfNvDGescMCUhH4lhlkCGnKU5/vMIRwHHjKTrrnYuO0wlK+qRC7+KvS+skj+RZUIz
 G24ptRaD8+lSGXxmM3PNG6Gfi/7PRcDeVK0JGIBZZJno/A0lda28lWZHb6d/utVavv
 ntpOPhFOwt/knAwIkgK8S27tr4jf79Wpic8LEH8LvB1CkfzyIoD1TnrPs0sKTjQdgf
 /e6nUImnZRTq+NWrwLbujkyxpfPfGLCe8X3P7dw/WtvorPLYZq4u1hl6PAS9Z+b521
 bl3Jxe30hib1I0ukUqfWNzn5GW2gJ6/NGUXKzS4aiJRzY545bNno3JhNvnA8vJfDNb
 c5TFi8nMaHJxpNRKQ5IBuzEKAoo1yPzAV2onei2mN3GdNIgqYexZptSe5Hqfcfv53M
 mzma4B48Q8bqFy40BQjcEuS+pD9A/6ujcT2yI8Iom2m8kgzcXYUEoeLMALTZTbY0be
 nudaH3ndITgwXlyWFjNA4n0i9dOEqXKGY0EUYFKkkgriymA/Gi3hfh+ElivwaEwnvF
 WB88lRu1+CJfHUNu3lZy7oDA=
Received: by mail-pl1-f199.google.com with SMTP id
 d9443c01a7336-2b99ffef2a1so5816715ad.2
 for <intel-gfx@lists.freedesktop.org>; Mon, 04 May 2026 20:36:04 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20251104; t=1777952162; x=1778556962;
 h=content-transfer-encoding:mime-version:message-id:date:subject:cc
 :to:from:x-gm-gg:x-gm-message-state:from:to:cc:subject:date
 :message-id:reply-to;
 bh=5nXNXtq4bXqnzVo7coZe7ghW1MNIY/5OFZVdGYJv4uc=;
 b=AOO/VWMP7znmzBd9pMpEMr/Q8mCNrr5Fbxm4ho7lj7bXRPmtZjtvvTl81OESac+QAO
 yqV+mPur5CxO7NCiUmeOhF+hucerBTCpsFAzG0z9UInM/2ettvKklA4LNsD4DJkJJDm0
 D8TWaU6sJ5o8xBKv+eEvg3sNVCMKMtNTfAyY5FzY5HICjYt/O0LT9SvyQ16j9dXPN1qC
 Q8w6ZpkpwBFb8TN1wGr5ituG2Jd8/ZR2NcHhfhyKi7L24FSVOawCfQ6wl5XRJbKCI6KR
 J/laQLRs1DsjzEcAXc+pCNNGnX2fKUyycG+Q9sQwamf5Ely1W4YajlWNY8UuXwAqZ9nA
 MAKQ==
X-Gm-Message-State: AOJu0YwEDTYiTodfs9l4Qh3Wl7J3T0WTDvZjv/WDTG26lTMMSoAvrXBg
 +1ITpGfJCh8qJt9i25dY41pE1kZJ9c7ODyauz0Px43FG8RZozqQJTEcjwDxYAmIFyQBihVS+Qrb
 hZzol06gg3wXQCUGYlJ/IZpTEC9DTOb0wtuqT94CK11lvvuQYJjLNSqEKTF2Sn3+GbncXPScbMq
 MGGFg4Gd7taA==
X-Gm-Gg: AeBDiet7yZRRF9ZSZgNj0JNJejAsdD34hwC9dho1MGQVS3tn1XnlLFo3yNGpWLSgsUZ
 6OAFWElp51nwpWjwZI7dgpDWoGup19Brz6Jf1Am+W9Pn080mHmDiu5zX9nO+gx0i9JdNGVFz4vM
 XCgwXFQksFUxhSbR1QyOuct0ncYZA6JDi2SCQBPidWeE0T+U9XYhMFKheTS1U4ZS8KAG0CL7aaH
 NFzxUwvD5l8wJ9QvBZbDr045riFa9WKb+HTjA39IStAFgL96eEtP9c/T+2vlZ12Jti+XMg5SPnC
 fJa89i2uh4ju5g1MPT9CVTO3iihrrXckhle1hzskw150mcaR+39aV36+RBuCSTB01NPlUXJpkDL
 lBE0yuCAP6Pbn6sbqYUOiDQ9s7FB0ZWliVDxv06bIDxDA4OL8pEBSkdCyCEHYZIbdUzIex58Y0q
 amk1M14AeS+oZBxijHwKO9y1mNPdz9bfjwHVp43Jfe8h3ugHTPXaW+aaVYZJWfTahNJNX5rlEL9
 DQwuqiCeziY
X-Received: by 2002:a17:903:1b64:b0:2ba:1e94:d03b with SMTP id
 d9443c01a7336-2ba53e967b8mr6021895ad.6.1777952162420; 
 Mon, 04 May 2026 20:36:02 -0700 (PDT)
X-Received: by 2002:a17:903:1b64:b0:2ba:1e94:d03b with SMTP id
 d9443c01a7336-2ba53e967b8mr6021765ad.6.1777952162048; 
 Mon, 04 May 2026 20:36:02 -0700 (PDT)
Received: from an-XPS-15-9520..
 (2001-b011-2008-6553-c5e9-d4dc-67fd-a915.dynamic-ip6.hinet.net.
 [2001:b011:2008:6553:c5e9:d4dc:67fd:a915])
 by smtp.gmail.com with ESMTPSA id
 d9443c01a7336-2b9cae16a9esm114405985ad.50.2026.05.04.20.35.59
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Mon, 04 May 2026 20:36:01 -0700 (PDT)
From: ChunAn Wu <an.wu@canonical.com>
To: Jani Nikula <jani.nikula@linux.intel.com>,
 Rodrigo Vivi <rodrigo.vivi@intel.com>,
 Joonas Lahtinen <joonas.lahtinen@linux.intel.com>,
 Tvrtko Ursulin <tursulin@ursulin.net>, David Airlie <airlied@gmail.com>,
 Simona Vetter <simona@ffwll.ch>
Cc: intel-gfx@lists.freedesktop.org, intel-xe@lists.freedesktop.org,
 dri-devel@lists.freedesktop.org, linux-kernel@vger.kernel.org
Subject: [PATCH v2] drm/i915/tc: Recover AUX channel after external TC port
 mode change
Date: Tue,  5 May 2026 11:35:57 +0800
Message-Id: <20260505033558.157604-1-an.wu@canonical.com>
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
X-Rspamd-Queue-Id: 04D224C62E9
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [0.19 / 15.00];
	MID_CONTAINS_FROM(1.00)[];
	R_MISSING_CHARSET(0.50)[];
	DMARC_POLICY_ALLOW(-0.50)[canonical.com,reject];
	R_DKIM_ALLOW(-0.20)[canonical.com:s=20251003];
	R_SPF_ALLOW(-0.20)[+ip4:131.252.210.177:c];
	MAILLIST(-0.20)[mailman];
	MIME_GOOD(-0.10)[text/plain];
	RWL_MAILSPIKE_GOOD(-0.10)[131.252.210.177:from];
	HAS_LIST_UNSUB(-0.01)[];
	FORGED_SENDER(0.00)[an.wu@canonical.com,intel-gfx-bounces@lists.freedesktop.org];
	RCVD_TLS_LAST(0.00)[];
	TO_DN_SOME(0.00)[];
	MIME_TRACE(0.00)[0:+];
	FORGED_RECIPIENTS(0.00)[m:jani.nikula@linux.intel.com,m:rodrigo.vivi@intel.com,m:joonas.lahtinen@linux.intel.com,m:tursulin@ursulin.net,m:airlied@gmail.com,m:simona@ffwll.ch,m:intel-xe@lists.freedesktop.org,m:dri-devel@lists.freedesktop.org,m:linux-kernel@vger.kernel.org,s:lists@lfdr.de];
	FREEMAIL_TO(0.00)[linux.intel.com,intel.com,ursulin.net,gmail.com,ffwll.ch];
	FORWARDED(0.00)[intel-gfx@lists.freedesktop.org];
	ARC_NA(0.00)[];
	DKIM_TRACE(0.00)[canonical.com:+];
	ASN(0.00)[asn:6366, ipnet:131.252.0.0/16, country:US];
	FORGED_SENDER_MAILLIST(0.00)[];
	FORGED_SENDER_FORWARDING(0.00)[];
	RCVD_COUNT_FIVE(0.00)[5];
	FROM_NEQ_ENVFROM(0.00)[an.wu@canonical.com,intel-gfx-bounces@lists.freedesktop.org];
	FROM_HAS_DN(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	PREVIOUSLY_DELIVERED(0.00)[intel-gfx@lists.freedesktop.org];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	TAGGED_RCPT(0.00)[intel-gfx];
	RCPT_COUNT_SEVEN(0.00)[10];
	DBL_BLOCKED_OPENRESOLVER(0.00)[gabe.freedesktop.org:helo,gabe.freedesktop.org:rdns,canonical.com:email,canonical.com:dkim,canonical.com:mid]

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
index b20ec3e589fa..d496b2231656 100644
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
+						      rxbuf, rxsize, flags);
 		if (ret > 0) {
 			msg->reply = rxbuf[0] >> 4;
 
@@ -531,8 +564,8 @@ intel_dp_aux_transfer(struct drm_dp_aux *aux, struct drm_dp_aux_msg *msg)
 		if (drm_WARN_ON(display->drm, rxsize > 20))
 			return -E2BIG;
 
-		ret = intel_dp_aux_xfer(intel_dp, txbuf, txsize,
-					rxbuf, rxsize, flags);
+		ret = intel_dp_aux_xfer_with_recovery(intel_dp, txbuf, txsize,
+						      rxbuf, rxsize, flags);
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

