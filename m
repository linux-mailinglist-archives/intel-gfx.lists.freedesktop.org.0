Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id AGsrI6bNt2kRVQEAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Mon, 16 Mar 2026 10:30:14 +0100
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 3BB34297040
	for <lists+intel-gfx@lfdr.de>; Mon, 16 Mar 2026 10:30:14 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id B346D10E2C4;
	Mon, 16 Mar 2026 09:30:10 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=fail reason="signature verification failed" (2048-bit key; unprotected) header.d=gmail.com header.i=@gmail.com header.b="OAMkIw0R";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-pf1-f173.google.com (mail-pf1-f173.google.com
 [209.85.210.173])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 97A3B10E23F
 for <intel-gfx@lists.freedesktop.org>; Mon, 16 Mar 2026 09:30:09 +0000 (UTC)
Received: by mail-pf1-f173.google.com with SMTP id
 d2e1a72fcca58-82989744ee0so4035696b3a.2
 for <intel-gfx@lists.freedesktop.org>; Mon, 16 Mar 2026 02:30:09 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=gmail.com; s=20230601; t=1773653409; x=1774258209; darn=lists.freedesktop.org;
 h=content-transfer-encoding:mime-version:message-id:date:subject:cc
 :to:from:sender:from:to:cc:subject:date:message-id:reply-to;
 bh=jMzVdfWmoxsbjdrwxTR344TWHoc2r0TzX142Ck3c4OM=;
 b=OAMkIw0R2botM49Wt3n86dtNwkfCAwHlHigBfAz9z0fwlJ9fR8oa6ytQP7AafxYSeS
 DxLL+a9UpTHa3q+wpStTHLS91q/0hqoV1CuoqNgjXf51DvqlgP8Q2IPbWwHmGE8hNQ3T
 2QJg/DVHwEO6JIjjc2fdJl6xw+jlbjG/agm3w4zvscNwG5rzEQr+TmTwHTVlOPCox904
 mB2g3d8olW7NLWhAI4u1AKidkKAYCmVW+1qvKYFdXEaeU5tE67TIyHgOQBHxemSNaXLK
 qt/GIYPGDGo/9XvPCxCwKLfN5gSSFg3w7H47wpbcK++Sl9L14YkAvGpfNM2aniIlQhtT
 tJ+g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20251104; t=1773653409; x=1774258209;
 h=content-transfer-encoding:mime-version:message-id:date:subject:cc
 :to:from:sender:x-gm-gg:x-gm-message-state:from:to:cc:subject:date
 :message-id:reply-to;
 bh=jMzVdfWmoxsbjdrwxTR344TWHoc2r0TzX142Ck3c4OM=;
 b=VMsCbtDjUqy4mAcxqhaH2XkvRDuzsNX/0BfHVnKQ9XCZ5rW8jqbGrbfLumzGV0RS8x
 Eibc6rZHS/CK+j/EsU/krY8c76kVD/3JJNcOzS4rBTT9V1FOeflTPq9xf2cYCC5VTtu/
 5pdGMr2G7lJk04QCI6m1i8f+WoWMD71xv+ADBqP+UCC3nSvUXYlul3696ARYrml8R/V+
 6rdwJ1YNgKWCWuJ2RaArcKmuj8sHxK+YEFPqXPuReeyzurHzRH9B9RFX35O/XkGDFBdx
 LLvduI/76D5SxZhtB9MKLJd3efwm7aH71wfrVkc1u/Hs6loE0HK3WKHnkIMi1qAmed82
 1P6Q==
X-Gm-Message-State: AOJu0Yx+GD+pJmDOf+t0EilJCpuejnFmSyJ4r1eJNWNpW1tAbEX6T2/g
 /HLt3aDG2ZP7soCjg7IzeAvTdRLpudeQk0KD5UNnCB6L7zP5zVpbji+e
X-Gm-Gg: ATEYQzxpDiB5y74LoPik9jGkfkghgbdnPc/xbepCSsH/ToGnM7ka55tBi+FRMgGAvB8
 vMZFNWTYSl3gaI4IXqI+7/wjRrw5eGRWh6pdZDhYZhbWhR1JRJDy7rsgRVrnG337nxrl34y4kP8
 rFlh7Qgbq+Vj8DO41EkvE2kHVrQlnjejCW0jzbNM83pskGlk3lB47eX9cKKKOuatTXnb1MUH/SC
 UTKj5X/iv0kAmaIGgDZXfT6EqcWMoCiUaWKyUQ+OMVSo4kFsqx1Iw1i2ayokzF96tQM99egrAd+
 2/GP8vO/Uva8W0tomXmthHYQKv6ANkHglHUe+4fmz4rnwsOHjz5Q6pKfaXtOR+RjDHdT3aKf/kL
 bQvGe14nc9cbLsvrfzXFsZgBn5ct7UvNV9E3J49QcuPz/nkIGy3CaOULO7Gh5eVS5H7bD6TlIMJ
 MjnXJedYmpYrwikwdh
X-Received: by 2002:a05:6a21:a345:b0:398:9820:f6ed with SMTP id
 adf61e73a8af0-398ecd67b1cmr12899112637.56.1773653408677; 
 Mon, 16 Mar 2026 02:30:08 -0700 (PDT)
Received: from localhost ([2001:67c:1562:8007::aac:4468])
 by smtp.gmail.com with ESMTPSA id
 41be03b00d2f7-c7400000532sm3693942a12.27.2026.03.16.02.30.06
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Mon, 16 Mar 2026 02:30:07 -0700 (PDT)
From: "Chia-Lin Kao (AceLan)" <acelan.kao@canonical.com>
To: Jani Nikula <jani.nikula@linux.intel.com>,
 Rodrigo Vivi <rodrigo.vivi@intel.com>,
 Joonas Lahtinen <joonas.lahtinen@linux.intel.com>,
 Tvrtko Ursulin <tursulin@ursulin.net>, David Airlie <airlied@gmail.com>,
 Simona Vetter <simona@ffwll.ch>
Cc: intel-gfx@lists.freedesktop.org, intel-xe@lists.freedesktop.org,
 dri-devel@lists.freedesktop.org, linux-kernel@vger.kernel.org
Subject: [PATCH] drm/i915/xelpdp/tc: Convert TCSS power check WARN to a debug
 message
Date: Mon, 16 Mar 2026 17:30:01 +0800
Message-ID: <20260316093001.689992-1-acelan.kao@canonical.com>
X-Mailer: git-send-email 2.53.0
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
X-Spamd-Result: default: False [3.89 / 15.00];
	DMARC_POLICY_REJECT(2.00)[canonical.com : SPF not aligned (relaxed),reject];
	R_DKIM_REJECT(1.00)[gmail.com:s=20230601];
	MID_CONTAINS_FROM(1.00)[];
	R_MISSING_CHARSET(0.50)[];
	R_SPF_ALLOW(-0.20)[+ip4:131.252.210.177:c];
	MAILLIST(-0.20)[mailman];
	MIME_GOOD(-0.10)[text/plain];
	RWL_MAILSPIKE_GOOD(-0.10)[131.252.210.177:from];
	HAS_LIST_UNSUB(-0.01)[];
	FORGED_RECIPIENTS(0.00)[m:jani.nikula@linux.intel.com,m:rodrigo.vivi@intel.com,m:joonas.lahtinen@linux.intel.com,m:tursulin@ursulin.net,m:airlied@gmail.com,m:simona@ffwll.ch,m:intel-xe@lists.freedesktop.org,m:dri-devel@lists.freedesktop.org,m:linux-kernel@vger.kernel.org,s:lists@lfdr.de];
	RCVD_COUNT_THREE(0.00)[4];
	FREEMAIL_TO(0.00)[linux.intel.com,intel.com,ursulin.net,gmail.com,ffwll.ch];
	DBL_BLOCKED_OPENRESOLVER(0.00)[gabe.freedesktop.org:helo,gabe.freedesktop.org:rdns,canonical.com:email,canonical.com:mid];
	FORGED_SENDER(0.00)[acelan.kao@canonical.com,intel-gfx-bounces@lists.freedesktop.org];
	RECEIVED_HELO_LOCALHOST(0.00)[];
	TO_DN_SOME(0.00)[];
	ARC_NA(0.00)[];
	MIME_TRACE(0.00)[0:+];
	FORWARDED(0.00)[intel-gfx@lists.freedesktop.org];
	RCVD_TLS_LAST(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[acelan.kao@canonical.com,intel-gfx-bounces@lists.freedesktop.org];
	FORGED_SENDER_FORWARDING(0.00)[];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	RCPT_COUNT_SEVEN(0.00)[10];
	NEURAL_HAM(-0.00)[-0.962];
	PREVIOUSLY_DELIVERED(0.00)[intel-gfx@lists.freedesktop.org];
	FROM_HAS_DN(0.00)[];
	TAGGED_RCPT(0.00)[intel-gfx];
	ASN(0.00)[asn:6366, ipnet:131.252.0.0/16, country:US];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	DKIM_TRACE(0.00)[gmail.com:-];
	FORGED_SENDER_MAILLIST(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[]
X-Rspamd-Queue-Id: 3BB34297040
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

The BIOS can leave the TypeC HPD live status bits set on an MTL/XeLPDP
port indicating a connected device, while TCSS (TypeC Subsystem) power
has not been enabled. This is a known BIOS handoff condition observed
during cold/warm boot on headless Meteorlake platforms.

When this happens, tc_phy_get_current_mode() returns TC_PORT_DP_ALT
(from HPD live status bits) but xelpdp_tc_phy_tcss_power_is_enabled()
returns false because TCSS power was never enabled by BIOS/GOP. This
causes the drm_WARN_ON in xelpdp_tc_phy_get_hw_state() to fire during
driver probe, even though the driver handles this state correctly
afterwards by calling intel_tc_port_update_mode() to reconcile the
PHY state.

Convert the drm_WARN_ON to a drm_dbg_kms() message, consistent with
the approach taken for the analogous AUX power check in
commit d7fa5754e83cd ("drm/i915/icl+/tc: Convert AUX powered WARN to a
debug message").

Signed-off-by: Chia-Lin Kao (AceLan) <acelan.kao@canonical.com>
---
 drivers/gpu/drm/i915/display/intel_tc.c | 7 ++++---
 1 file changed, 4 insertions(+), 3 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_tc.c b/drivers/gpu/drm/i915/display/intel_tc.c
index bd12148e42f70..18218e450b16c 100644
--- a/drivers/gpu/drm/i915/display/intel_tc.c
+++ b/drivers/gpu/drm/i915/display/intel_tc.c
@@ -1187,9 +1187,10 @@ static void xelpdp_tc_phy_get_hw_state(struct intel_tc_port *tc)
 			tc->max_lane_count = 4;
 	}
 
-	drm_WARN_ON(display->drm,
-		    (tc->mode == TC_PORT_DP_ALT || tc->mode == TC_PORT_LEGACY) &&
-		    !xelpdp_tc_phy_tcss_power_is_enabled(tc));
+	if ((tc->mode == TC_PORT_DP_ALT || tc->mode == TC_PORT_LEGACY) &&
+	    !xelpdp_tc_phy_tcss_power_is_enabled(tc))
+		drm_dbg_kms(display->drm, "Port %s: TCSS unexpectedly not powered\n",
+			    tc->port_name);
 
 	__tc_cold_unblock(tc, domain, tc_cold_wref);
 }
-- 
2.53.0

