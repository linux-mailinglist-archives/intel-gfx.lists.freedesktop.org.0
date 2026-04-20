Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id iHrfE0ef5mmyywEAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Mon, 20 Apr 2026 23:48:55 +0200
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id F3A644345DD
	for <lists+intel-gfx@lfdr.de>; Mon, 20 Apr 2026 23:48:54 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 87A0610E755;
	Mon, 20 Apr 2026 21:48:53 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="CKJaZvhB";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.12])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 1134D10E751;
 Mon, 20 Apr 2026 21:48:52 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1776721732; x=1808257732;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=T266vt6cjiZev7FgDsXdVFAMhMdkMs8FvuLLMo56t1Y=;
 b=CKJaZvhB9Qe8+StnLvp1zgyxj3QremMG8bLqQ+3HpMgrxv+t0ABMz87w
 iNGmMyXQYDLdExsq4atNGF6CX2+psv34KXqv6fGtnNCPCrQrGiGpSuWcN
 KS57KkAEc0DxeSp2Bayp22YsF5yNigC3rah75lr/b1p+gR3RdQ98NVcpd
 02oZVkFMb1+zOK9n/YvcnO9HwkAHfXUSLKpXlBCmBx0YWKL2RDoXvybkL
 +SguK4ew4kxahJ2iQ3AOjgDyMa1OludvQBtin1jUDEBepK2OARsuaDeOx
 AVS3W6a0NOOwcUALEuZANkHA2aGbJUd73HIRS7eHpY/6WtHcijEg/HLEy g==;
X-CSE-ConnectionGUID: DJrBrEi/R/mA2bxduUzhkw==
X-CSE-MsgGUID: 8/X9dMvARHGbiOrZh3fe1g==
X-IronPort-AV: E=McAfee;i="6800,10657,11762"; a="81521017"
X-IronPort-AV: E=Sophos;i="6.23,190,1770624000"; d="scan'208";a="81521017"
Received: from fmviesa004.fm.intel.com ([10.60.135.144])
 by fmvoesa106.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 20 Apr 2026 14:48:52 -0700
X-CSE-ConnectionGUID: 9jUw5XWGTI6bFLDsArMhjw==
X-CSE-MsgGUID: iMnDxgJaT6iNjcbhC6IatA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.23,190,1770624000"; d="scan'208";a="233609832"
Received: from amilburn-desk.amilburn-desk (HELO localhost) ([10.245.244.159])
 by fmviesa004-auth.fm.intel.com with
 ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 20 Apr 2026 14:48:51 -0700
From: Ville Syrjala <ville.syrjala@linux.intel.com>
To: intel-gfx@lists.freedesktop.org
Cc: intel-xe@lists.freedesktop.org
Subject: [PATCH 1/2] drm/i915/gmbus: Lock AUX CH during GMBUS transfers
Date: Tue, 21 Apr 2026 00:48:42 +0300
Message-ID: <20260420214843.17514-2-ville.syrjala@linux.intel.com>
X-Mailer: git-send-email 2.52.0
In-Reply-To: <20260420214843.17514-1-ville.syrjala@linux.intel.com>
References: <20260420214843.17514-1-ville.syrjala@linux.intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Organization: Intel Finland Oy - BIC 0357606-4 - c/o Alberga Business Park,
 6 krs Bertel Jungin Aukio 5, 02600 Espoo, Finland
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
X-Spamd-Result: default: False [-0.31 / 15.00];
	MID_CONTAINS_FROM(1.00)[];
	DMARC_POLICY_ALLOW(-0.50)[intel.com,none];
	MAILLIST(-0.20)[mailman];
	R_SPF_ALLOW(-0.20)[+ip4:131.252.210.177:c];
	R_DKIM_ALLOW(-0.20)[intel.com:s=Intel];
	MIME_GOOD(-0.10)[text/plain];
	RWL_MAILSPIKE_GOOD(-0.10)[131.252.210.177:from];
	HAS_LIST_UNSUB(-0.01)[];
	HAS_ORG_HEADER(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	FUZZY_RATELIMITED(0.00)[rspamd.com];
	RCVD_COUNT_THREE(0.00)[4];
	RCPT_COUNT_TWO(0.00)[2];
	ARC_NA(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	DKIM_TRACE(0.00)[intel.com:+];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[ville.syrjala@linux.intel.com,intel-gfx-bounces@lists.freedesktop.org];
	FROM_HAS_DN(0.00)[];
	MIME_TRACE(0.00)[0:+];
	TO_DN_NONE(0.00)[];
	TAGGED_RCPT(0.00)[intel-gfx];
	NEURAL_HAM(-0.00)[-1.000];
	ASN(0.00)[asn:6366, ipnet:131.252.0.0/16, country:US];
	DBL_BLOCKED_OPENRESOLVER(0.00)[linux.intel.com:mid,gabe.freedesktop.org:helo,gabe.freedesktop.org:rdns,intel.com:dkim,intel.com:email]
X-Rspamd-Queue-Id: F3A644345DD
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

From: Ville Syrjälä <ville.syrjala@linux.intel.com>

It looks like that (at last on some platforms) GMBUS can interfere
with AUX transfers using the same pins. The symptom is that the AUX
transfer never gets the timeout interrupt from the hardware, and we
eventually reach the wait_event_timeout() timeout.

Prevent parallel GMBUS and AUX actitivity by locking the AUX mutexes
along with gmbus.mutex. We already use the same nested locking order
during CDCLK changes, so it's fine. Ideally we'd just lock the single
AUX mutex that corresponds to the pins being used by GMBUS, but
figuring out that mapping needs a bit more work.

shard-dg1 seems very good at hitting this but IIRC we've see this
on tgl as well at some point, possibly other machines as well:
<7> [197.185322] i915 0000:03:00.0: [drm:intel_dp_aux_xfer [i915]] AUX USBC2/DDI TC2/PHY D: timeout (status 0x7d40023f)
<7> [197.206471] i915 0000:03:00.0: [drm:intel_dp_aux_xfer [i915]] AUX USBC2/DDI TC2/PHY D: timeout (status 0x7d40023f)
<7> [197.206654] i915 0000:03:00.0: [drm:drm_dp_dpcd_access [drm_display_helper]] AUX USBC2/DDI TC2/PHY D: Too many retries, giving up. First error: -110
<7> [197.206704] i915 0000:03:00.0: [drm:drm_helper_probe_single_connector_modes] [CONNECTOR:623:DP-3] disconnected
<7> [197.206733] i915 0000:03:00.0: [drm:drm_helper_probe_single_connector_modes] [CONNECTOR:631:HDMI-A-4]
<7> [197.206739] i915 0000:03:00.0: [drm:intel_hdmi_detect [i915]] [CONNECTOR:631:HDMI-A-4]
<3> [197.217425] i915 0000:03:00.0: [drm] *ERROR* AUX USBC2/DDI TC2/PHY D: did not complete or timeout within 10ms (status 0xad40023f)
<3> [197.230328] i915 0000:03:00.0: [drm] *ERROR* AUX USBC2/DDI TC2/PHY D: did not complete or timeout within 10ms (status 0xad40023f)
<7> [197.231108] i915 0000:03:00.0: [drm:update_display_info.part.0] [CONNECTOR:631:HDMI-A-4] ELD monitor FH-DP4K
...
<7> [197.243982] i915 0000:03:00.0: [drm:drm_client_dev_restore] fbdev: ret=0
<7> [197.244143] i915 0000:03:00.0: [drm:intel_dp_aux_xfer [i915]] AUX USBC2/DDI TC2/PHY D: timeout (status 0x7d40023f)
<6> [197.260566] Console: switching to colour frame buffer device 240x67
<7> [197.265263] i915 0000:03:00.0: [drm:intel_dp_aux_xfer [i915]] AUX USBC2/DDI TC2/PHY D: timeout (status 0x7d40023f)

Signed-off-by: Ville Syrjälä <ville.syrjala@linux.intel.com>
---
 drivers/gpu/drm/i915/display/intel_gmbus.c | 53 ++++++++++++++++++++--
 1 file changed, 50 insertions(+), 3 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_gmbus.c b/drivers/gpu/drm/i915/display/intel_gmbus.c
index ea5cf8f51b31..4d0b8c82f6ff 100644
--- a/drivers/gpu/drm/i915/display/intel_gmbus.c
+++ b/drivers/gpu/drm/i915/display/intel_gmbus.c
@@ -834,7 +834,8 @@ int intel_gmbus_output_aksv(struct i2c_adapter *adapter)
 	int ret;
 
 	wakeref = intel_display_power_get(display, POWER_DOMAIN_GMBUS);
-	mutex_lock(&display->gmbus.mutex);
+
+	adapter->lock_ops->lock_bus(adapter, 0);
 
 	/*
 	 * In order to output Aksv to the receiver, use an indexed write to
@@ -843,7 +844,8 @@ int intel_gmbus_output_aksv(struct i2c_adapter *adapter)
 	 */
 	ret = do_gmbus_xfer(adapter, msgs, ARRAY_SIZE(msgs), GMBUS_AKSV_SELECT);
 
-	mutex_unlock(&display->gmbus.mutex);
+	adapter->lock_ops->unlock_bus(adapter, 0);
+
 	intel_display_power_put(display, POWER_DOMAIN_GMBUS, wakeref);
 
 	return ret;
@@ -863,6 +865,36 @@ static const struct i2c_algorithm gmbus_algorithm = {
 	.functionality	= gmbus_func
 };
 
+static void gmbus_lock_aux(struct intel_display *display)
+{
+	struct intel_encoder *encoder;
+
+	/*
+	 * GMBUS can interfere with AUX CH on the same pins, causing
+	 * the AUX hardware to not raise the timeout interrupt.
+	 *
+	 * TODO: only lock the AUX CH using the same pins as
+	 *       GMBUS is currently using...
+	 */
+	for_each_intel_dp(display->drm, encoder) {
+		struct intel_dp *intel_dp = enc_to_intel_dp(encoder);
+
+		mutex_lock_nest_lock(&intel_dp->aux.hw_mutex,
+				     &display->gmbus.mutex);
+	}
+}
+
+static void gmbus_unlock_aux(struct intel_display *display)
+{
+	struct intel_encoder *encoder;
+
+	for_each_intel_dp(display->drm, encoder) {
+		struct intel_dp *intel_dp = enc_to_intel_dp(encoder);
+
+		mutex_unlock(&intel_dp->aux.hw_mutex);
+	}
+}
+
 static void gmbus_lock_bus(struct i2c_adapter *adapter,
 			   unsigned int flags)
 {
@@ -870,6 +902,8 @@ static void gmbus_lock_bus(struct i2c_adapter *adapter,
 	struct intel_display *display = bus->display;
 
 	mutex_lock(&display->gmbus.mutex);
+
+	gmbus_lock_aux(display);
 }
 
 static int gmbus_trylock_bus(struct i2c_adapter *adapter,
@@ -877,8 +911,19 @@ static int gmbus_trylock_bus(struct i2c_adapter *adapter,
 {
 	struct intel_gmbus *bus = to_intel_gmbus(adapter);
 	struct intel_display *display = bus->display;
+	int locked;
 
-	return mutex_trylock(&display->gmbus.mutex);
+	locked = mutex_trylock(&display->gmbus.mutex);
+	if (!locked)
+		return 0;
+
+	/*
+	 * TODO use mutex_trylock_next_lock() here? Would need
+	 * to track which mutexes to unlocks on failure...
+	 */
+	gmbus_lock_aux(display);
+
+	return 1;
 }
 
 static void gmbus_unlock_bus(struct i2c_adapter *adapter,
@@ -887,6 +932,8 @@ static void gmbus_unlock_bus(struct i2c_adapter *adapter,
 	struct intel_gmbus *bus = to_intel_gmbus(adapter);
 	struct intel_display *display = bus->display;
 
+	gmbus_unlock_aux(display);
+
 	mutex_unlock(&display->gmbus.mutex);
 }
 
-- 
2.52.0

