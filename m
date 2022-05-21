Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id F3419532383
	for <lists+intel-gfx@lfdr.de>; Tue, 24 May 2022 08:54:14 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 701FE10E15D;
	Tue, 24 May 2022 06:54:13 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga17.intel.com (mga17.intel.com [192.55.52.151])
 by gabe.freedesktop.org (Postfix) with ESMTPS id EACA810E119
 for <intel-gfx@lists.freedesktop.org>; Tue, 24 May 2022 06:54:11 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6400,9594,10356"; a="253948915"
X-IronPort-AV: E=Sophos;i="5.91,248,1647327600"; d="scan'208";a="253948915"
Received: from orsmga007.jf.intel.com ([10.7.209.58])
 by fmsmga107.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 23 May 2022 23:54:11 -0700
X-IronPort-AV: E=Sophos;i="5.91,248,1647327600"; d="scan'208";a="572486963"
Received: from mduda-mobl1.ger.corp.intel.com (HELO localhost)
 ([10.249.148.185])
 by orsmga007-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 23 May 2022 23:54:09 -0700
Resent-Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7,
 02160 Espoo
Resent-To: intel-gfx@lists.freedesktop.org
Resent-From: Jani Nikula <jani.nikula@intel.com>
Resent-Date: Tue, 24 May 2022 09:54:07 +0300
Resent-Message-ID: <87mtf7a0a8.fsf@intel.com>
X-Original-To: jani.nikula@linux.intel.com
Received: from linux.intel.com [10.54.29.200]
 by jnikula-mobl4.ger.corp.intel.com with IMAP (fetchmail-6.4.29)
 for <jani@localhost> (single-drop); Mon, 23 May 2022 10:35:03 +0300 (EEST)
Received: from fmsmga007.fm.intel.com (fmsmga007.fm.intel.com [10.253.24.52])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256
 bits)) (No client certificate requested)
 by linux.intel.com (Postfix) with ESMTPS id A58EE5802E4;
 Sat, 21 May 2022 04:12:12 -0700 (PDT)
X-IronPort-AV: E=McAfee;i="6400,9594,10353"; a="576599229"
X-IronPort-AV: E=Sophos;i="5.91,242,1647327600"; d="scan'208";a="576599229"
Received: from fmsmga102.fm.intel.com ([10.1.193.69])
 by fmsmga007-1.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 21
 May 2022 04:12:12 -0700
Authentication-Results: mtab.intel.com; spf=None
 smtp.pra=Julia.Lawall@inria.fr; spf=Pass
 smtp.mailfrom=Julia.Lawall@inria.fr; spf=None
 smtp.helo=postmaster@mail3-relais-sop.national.inria.fr; dkim=pass
 (signature verified) header.i=@inria.fr; dmarc=pass (p=none dis=none)
 d=inria.fr
IronPort-SDR: XofapJcTAZyyk2XPAR9jAVdsBEmjeajvWrpQu06j8X3v1qXaYMkJwCNoLHirfreAyqgu3TVLEN
 SqIs+JmkbjAZPI/Alwq3gniFweYedDzJQ=
X-IPAS-Result: =?us-ascii?q?A0FjATM7yIhih2ikhsBagiQ0gXwoAYFSLQQLQ5VcnmMLA?=
 =?us-ascii?q?QEBAQEBAQEBCUACBAEBAwSEe1EJhGgCHQcBBDMGDgECAQIBAQEBAQMCAQIBA?=
 =?us-ascii?q?QEBAQEDAQEBAgIBAQECAQECBAIBAQEBAhABAQEBDQsJBQgMBRAOBUFkWIFPg?=
 =?us-ascii?q?gQGAwEwDYI1KQF0gQgBAQEBAQEBAQEBAQEBAQEBAQEBFgINUoEUCwENAQERJ?=
 =?us-ascii?q?gGBPROCJViDGAWsUzKBAYIIAQEGBAIBA4V/gVwJgTyEeIRPhCKBIRCBVUSBF?=
 =?us-ascii?q?YE8giyEJoZZjwgjhE+CMwMJBgcFaBKBIXEBCAYGBwoFMgYCDBgUBAITElMLE?=
 =?us-ascii?q?gITDAocDg5GGQwPAxIDEQEHAgsSCBUsCAMCAwgDAgMjCwIDGAkHCgMdCAocE?=
 =?us-ascii?q?hAUAgQTHwsIAxofLQkCBA4DQwgLCgMRBAMTGAsWCBAEBgMJLw0oCwMUDwEGA?=
 =?us-ascii?q?wYCBQUBAyADFAMFJwcDIQcLJg0NBCMdAwMFJgMCAhsHAgIDAgYXBgICQDEKK?=
 =?us-ascii?q?A0IBAgEHB4lDgUFAgcxBQQvAh4EBQYRCQIWAgYEBQIEBBYCAhIIAggnGwcWN?=
 =?us-ascii?q?hkBBV0GCwkiHCwRBQYWAyR4BQckBiIdl04QPRY8gR+BD5J9gxyOTJxMNAeBf?=
 =?us-ascii?q?oFSgUMMniQaBC2oWAGWZ6cwgXeCADMaJ4M0TgECAQIBDAECAgECAQIBAQEJA?=
 =?us-ascii?q?QEBAY4pDQmFDokiPzQ7AgYLAQEDCYVhikZdAQE?=
IronPort-PHdr: A9a23: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
IronPort-Data: A9a23:B1ZdN6y9nkqUvcC5Kip6t+dDwyrEfRIJ4+MujC+fZmUNrF6WrkVRz
 WQeXz2Ga/bbNzGhe4p/Poni/UwF75DVztFkHFdlry00HyNBpOP7XuiUfxz6V8+wwmwvb67FA
 +E2M4GYRCzhZiaE/n9BFJC/8SEkvU2vbuOkU7OfUsxJbVY4Dn9n0HqPosZj6mJSqYHR7zil5
 JWj+qUzBHf/g2Quaj9OsvrZwP9SlK2aVA0w7wRWic9j4Qe2e0k9VPrz8onqdxMU6qENdgKLb
 76rIIORpws1zD90Yj+RqYsXR2VRKlLkFVPX1icJAfjKbi9q/UTe2o5jXBYVhNw+Zz+hx7idw
 /0U3XC8pJxA0gQhV43xXjEBexySM5Gq95eAJD+Rqf6p1nHjLWm3gK50UF0Yeochr7Mf7WFmr
 ZT0KRgIZxGH3KeszbayS/IpncM7as/iIIIYvHhkizDfF/cvB57ZK0nIzYYJhnFp3ZwIRKiCI
 ZNBNVKDbzyYC/FLEnUKDJM32sOhmXD7dxVZrkiUrOw5+QA/ySQrj+CxaoCOK4fiqcN9oWu6t
 22B5DTFCBBHZeS8jgaPo1WPmbqa9c/8cNtOReznpqECbEeo7m4aDhxQU1q4vP2wokq/Xc9Pb
 U0S5icq66M18SSDTN76WRSj5nqNvgIdXddWO+k77hydjKvS/wudQGMDS1ZpdMI8qMwxAyEwz
 UKNntXBAT1pra3TSHSB+7PSpjS3URX5NkcHbC4AFk4f7t3qoZp2lRXXCNBqDK+yiNTxXzD22
 TGD6iYk71kOsSIV/+K+un7fsQi1mr2XXFV2vR+LQkzi5DosMeZJeLeUwVTc6P9BKqOQQV+Ao
 GUIlqCiAAYmUcHleMulHLplIV252xqWGGGM0QM/RfHN4xz3oCXzIui89RkjfB8BDyoSRdP+S
 GHp0T69CbdWNXquNuptboa4Ct9v1q/4U9LsSvHTaNNKJJl3bg6Oui90DaJx44wPuBZ2+U3cE
 c3HGSpJMZr8Ifg9pNZRb7tFuYLHPghkmQvuqWnTlnxLK4a2an+PUqsiO1CTdO0/567siFyLr
 o0HaJLWkEoECLeWjszrHWg7cwtiwZ8TW8ueliCrXrXYfmKK5Ul9WqaAnO57E2Cbt/0MzLiYl
 p1CZqOo4AOj1CyYeVrihoFLcr7pVIpytxoG0d8EYz6VN4wYSd/3ts83LsJvFZF+rbwL5aMqE
 5EtJpvRatwSGmWv02lMNvHV8d0yHDz1317mF3T+OlAXIcU/LzElD/e/I2MDAgFVUnHo3Sb/y
 pX8vj7mrW0rHFw5VpqIM632kTtcfxE1wYpPYqcBGfEKEG3E8Y5wKiW3gOVfHi3GAU6rKuKy2
 1nEDBEGi/PKpoNpotDFibrU/YavCep3WERARjGJ4bGzPCjc32yi3Y4fALbZJGyNDDv5qPe4e
 OFY7/DgK/lbzlxEhJVxTuRwxqUk6tqx+7IDllZ4HG/GZkiAA697JiXUxtFGs6BAn+cLuQa/V
 k+V1MNdPLGFZJHsHFILdFgkaP6C3LcagGCKv/gyJUz74g5x/aaGDhUCbkDQ2HQFIeIsYo0/w
 OontMoH0CCFi0InYoSckyRZ12WQNXhcAa8pgY4XXd3wgQ0xx1AcPZGFUn3q4IuCYslnO1UxJ
 mPGn7LLgrlRyxaQc3c3EnSRj+NRiY5V5EJPxV4GfBGTl97Mh+RyxxpJtzI+UgVSyBxDleN1I
 GlicUNvfP3c8zBtjclFfmatBwAeVE3IoxChkwMExD/DUk2ldm3RN2lsa++C8XcQ/39YYjUGr
 qqTz3zoUGqyccytjDE+X1Vp967qQdBrrVGQncmmG5/ABZQ+aDv+x7SpfSwOogfmBsU4gAvGo
 /Nr9aB+c/SjZyIXpqQ6Daic1KgRF0DUdTUeEak58fNbB3zYdRGzxSOKehK4dc56LvDX9VO1V
 p51LcVVWhXijCuDo1j330LXz2OYSBLo2DYDRl8vDWsPsr/E6yBktJvR7W3lg3dtRdxykME7I
 4eXdjSYE2XWi2E8d6ohaiVbEjLQXDXGTFSUMCOJHCEhFpQZsegqf1taPn6coSCOKAU+l/6Ll
 FqrWkIVptCODaxtmZHtG+NNHW1Y7D81uPugqGiOjjiFUT8D3Qoiee/YRpkL8jm65YcsZuk=
IronPort-HdrOrdr: A9a23:wp7KjarxZHzzV2q8DznnhykaV5omeYIsimQD101hICG9Evbzqy
 lhppUmPHjP+VEssRQb8uxoV5PwIk80maQb3WBzB8bHYOCZghrLEGgK1+KLrwEIcBefygcy78
 ldmq5FZeEYdWIK6PrH3A==
X-IronPort-Anti-Spam-Filtered: true
X-IronPort-AV: E=McAfee;i="6400,9594,10353"; a="270422393"
X-IronPort-AV: E=Sophos;i="5.91,242,1647327600"; d="scan'208";a="270422393"
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from mail3-relais-sop.national.inria.fr ([192.134.164.104])
 by mtab.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 21 May 2022
 04:12:09 -0700
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=inria.fr; s=dc;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=Md9/6NzAv0jrHFbIgTAsd+38B+aN7Go6jo2y146vOSs=;
 b=nEkZMStRD5LCP/VtnJZ2rb7SbzoSoQmd6Y7PlbrHS+OlZZVHojupzuFz
 wOJVUYAhRgiCdK5R0aiA9Sd5V9CdCvgiG97CfVa0Vy7lKiwrgN7152Nui
 2oq2VhsyrUmBopkMe4/ki4O4qkCTRa2rN1aX8HQNyyqXmnh/yttadOjeD k=;
X-IronPort-AV: E=Sophos;i="5.91,242,1647298800"; d="scan'208";a="14727998"
Received: from i80.paris.inria.fr (HELO i80.paris.inria.fr.) ([128.93.90.48])
 by mail3-relais-sop.national.inria.fr with
 ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 21 May 2022 13:12:08 +0200
From: Julia Lawall <Julia.Lawall@inria.fr>
To: Jani Nikula <jani.nikula@linux.intel.com>
Date: Sat, 21 May 2022 13:11:40 +0200
Message-Id: <20220521111145.81697-90-Julia.Lawall@inria.fr>
X-Mailer: git-send-email 2.20.1
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH] drm/i915: fix typos in comments
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
Cc: David Airlie <airlied@linux.ie>, intel-gfx@lists.freedesktop.org,
 kernel-janitors@vger.kernel.org, linux-kernel@vger.kernel.org,
 dri-devel@lists.freedesktop.org, Rodrigo Vivi <rodrigo.vivi@intel.com>
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

Spelling mistakes (triple letters) in comments.
Detected with the help of Coccinelle.

Signed-off-by: Julia Lawall <Julia.Lawall@inria.fr>

---
 drivers/gpu/drm/i915/display/intel_color.c           |    2 +-
 drivers/gpu/drm/i915/display/intel_pps.c             |    2 +-
 drivers/gpu/drm/i915/gt/intel_execlists_submission.c |    2 +-
 drivers/gpu/drm/i915/gt/uc/intel_guc_log.c           |    2 +-
 4 files changed, 4 insertions(+), 4 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_color.c b/drivers/gpu/drm/i915/display/intel_color.c
index 34128c9c635c..a27ce874a9e8 100644
--- a/drivers/gpu/drm/i915/display/intel_color.c
+++ b/drivers/gpu/drm/i915/display/intel_color.c
@@ -1638,7 +1638,7 @@ static u32 icl_gamma_mode(const struct intel_crtc_state *crtc_state)
 	/*
 	 * Enable 10bit gamma for D13
 	 * ToDo: Extend to Logarithmic Gamma once the new UAPI
-	 * is acccepted and implemented by a userspace consumer
+	 * is accepted and implemented by a userspace consumer
 	 */
 	else if (DISPLAY_VER(i915) >= 13)
 		gamma_mode |= GAMMA_MODE_MODE_10BIT;
diff --git a/drivers/gpu/drm/i915/display/intel_pps.c b/drivers/gpu/drm/i915/display/intel_pps.c
index 5a598dd06039..4bc0563dde92 100644
--- a/drivers/gpu/drm/i915/display/intel_pps.c
+++ b/drivers/gpu/drm/i915/display/intel_pps.c
@@ -509,7 +509,7 @@ static void wait_panel_power_cycle(struct intel_dp *intel_dp)
 
 	drm_dbg_kms(&i915->drm, "Wait for panel power cycle\n");
 
-	/* take the difference of currrent time and panel power off time
+	/* take the difference of current time and panel power off time
 	 * and then make panel wait for t11_t12 if needed. */
 	panel_power_on_time = ktime_get_boottime();
 	panel_power_off_duration = ktime_ms_delta(panel_power_on_time, intel_dp->pps.panel_power_off_time);
diff --git a/drivers/gpu/drm/i915/gt/intel_execlists_submission.c b/drivers/gpu/drm/i915/gt/intel_execlists_submission.c
index 86f7a9ac1c39..aa0d2bbbbcc4 100644
--- a/drivers/gpu/drm/i915/gt/intel_execlists_submission.c
+++ b/drivers/gpu/drm/i915/gt/intel_execlists_submission.c
@@ -1350,7 +1350,7 @@ static void execlists_dequeue(struct intel_engine_cs *engine)
 			 * submission. If we don't cancel the timer now,
 			 * we will see that the timer has expired and
 			 * reschedule the tasklet; continually until the
-			 * next context switch or other preeemption event.
+			 * next context switch or other preemption event.
 			 *
 			 * Since we have decided to reschedule based on
 			 * consumption of this timeslice, if we submit the
diff --git a/drivers/gpu/drm/i915/gt/uc/intel_guc_log.c b/drivers/gpu/drm/i915/gt/uc/intel_guc_log.c
index 78d2989fe917..02311ad90264 100644
--- a/drivers/gpu/drm/i915/gt/uc/intel_guc_log.c
+++ b/drivers/gpu/drm/i915/gt/uc/intel_guc_log.c
@@ -588,7 +588,7 @@ int intel_guc_log_relay_open(struct intel_guc_log *log)
 	/*
 	 * We require SSE 4.1 for fast reads from the GuC log buffer and
 	 * it should be present on the chipsets supporting GuC based
-	 * submisssions.
+	 * submissions.
 	 */
 	if (!i915_has_memcpy_from_wc()) {
 		ret = -ENXIO;

