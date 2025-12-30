Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 124D1CFE3E1
	for <lists+intel-gfx@lfdr.de>; Wed, 07 Jan 2026 15:20:00 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 3E6BE10E60E;
	Wed,  7 Jan 2026 14:19:58 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=permerror (0-bit key) header.d=gmail.com header.i=@gmail.com header.b="ICppRZMH";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-wr1-f42.google.com (mail-wr1-f42.google.com
 [209.85.221.42])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 1373110E880
 for <intel-gfx@lists.freedesktop.org>; Tue, 30 Dec 2025 09:10:40 +0000 (UTC)
Received: by mail-wr1-f42.google.com with SMTP id
 ffacd0b85a97d-432777da980so1932855f8f.0
 for <intel-gfx@lists.freedesktop.org>; Tue, 30 Dec 2025 01:10:39 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=gmail.com; s=20230601; t=1767085838; x=1767690638; darn=lists.freedesktop.org;
 h=content-transfer-encoding:mime-version:message-id:date:subject:cc
 :to:from:from:to:cc:subject:date:message-id:reply-to;
 bh=J5NFsipfMK9XBVYfroy27ggD+k/SBP7vWAnNBtEfHSU=;
 b=ICppRZMHgwmWdQE4f669mu1xIAoyyzDISSMh5KGxhU0pct9E8x/S/czRFXilyDLuRW
 eMF3z8EzkbHp0D3mCd1UH8Euio5h72MdJosGKfHaKQKhvlTSWln13dv5SIShjuFBq0ot
 fEBKCi7o7GzZMyqg57R3aNCgnmxm0N4N/npv0oVdE0shJ3Y+jTXYzaue5wsBRKS7Nfkt
 jVJv4GyC0rmlsyg9PU1+EZ6NHz5U84oMjoP8Qb/MZxc1kxDAQwCQK7AvSnQzSBX1QDWG
 mkBdqjBVpMIISIW+3m/v+f7eIw6tJOgaiifEAIWRMXo62RRZj7TaGw6/QAlgPMv85vJV
 iLbw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20230601; t=1767085838; x=1767690638;
 h=content-transfer-encoding:mime-version:message-id:date:subject:cc
 :to:from:x-gm-gg:x-gm-message-state:from:to:cc:subject:date
 :message-id:reply-to;
 bh=J5NFsipfMK9XBVYfroy27ggD+k/SBP7vWAnNBtEfHSU=;
 b=e7Uv74Jefo62Wtq3aN6d9iqFOIw706rZkkMKsG+6pp+UzPap5MBB6UnxdIDhb1Lq7Q
 jNecOk5pvi/p3enDLn4nfmJydeiAAyTJrOFPSro//yhC7lMFQ+1ihrwx/u5Dj2JiIud/
 uWeVi77bMnFFw99Wo0ZE5NF5cfh/r6R7JTIWlUtm2eAj0CmPsmrDKgpg7+n/jCwxif/k
 pq4I4MJ2Izfn8Ms3xcsdy3qsvGHPsBu5W7lyxrYO4qKiduaO2L9XKqLYYWv5RynY1pj+
 UR//tneJJCPEmUtMyQ8k5eEgHZCr1kfQeduoqW1/NIVZwKUeR1nVWHnCLHC0yUrgXSOj
 QWyA==
X-Gm-Message-State: AOJu0YwPBZqDfwEXjy0DshQcPCUeu2ApzQhMg5U4vTP1eofv1Cbi0gvS
 777yANfNgfZoCtQs6inUChQzN75DasS5x2Dd7nOA2e/F1QQ+GgEFTQgvzNB+oA==
X-Gm-Gg: AY/fxX4nkMnCtoKuvdJOkfrcbHBfFExaSMOWdOzQhSurofS2z7KRXTjebQYu+/sX8M2
 OMy31RT5i5QmpVRfgK7TJXvPCTEC41MWkrQR3X860A4+ZQ4ouvs22OHaLk6nbooQ+HAQhtd/hUe
 pRkoBpA32ziKn5gfc1vKvWDPHnYH6ycgGDShzbCMJoPfSpk2gAfj/5Ow6SiyDYSjiJ/7F9L1UU7
 vQvn5e+DSIrPbmcZM509lVP0t4uxAykyMz9pzuG55IRlVmDtneX0xPE5Gj35J1CVdXLCQ2JmUlr
 F0qCGby+Zbhm1+vHIMIwzTKMbCLGq0kviQnOc9HOubTKygEEoT7yOaeZjnpUv5zLOEZhAyvX9x4
 7165WpJXvMAxX5Mp2Xa7YriP9+ATzIsQDytHt8WnmaG77ejGkBbnzJjh5sclQkszt0uav6loa5q
 BY7rp3+XkxeVlyfpy8gwv8OC05N6w=
X-Google-Smtp-Source: AGHT+IGQ+SnzoC1jTjOiDUQ3LhBdC1Uts8CjtNNVnC1uIZF/cVYe4TlTZ/sojdIeUqEHAKkaBJ8zgw==
X-Received: by 2002:a05:6000:25c6:b0:430:f9c2:84ec with SMTP id
 ffacd0b85a97d-4324e4d0f5dmr43870414f8f.26.1767085838188; 
 Tue, 30 Dec 2025 01:10:38 -0800 (PST)
Received: from oscar.. (83.67.3.89.rev.sfr.net. [89.3.67.83])
 by smtp.gmail.com with ESMTPSA id
 ffacd0b85a97d-4324ea22674sm68645194f8f.10.2025.12.30.01.10.37
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Tue, 30 Dec 2025 01:10:37 -0800 (PST)
From: Jerome Tollet <jerome.tollet@gmail.com>
To: intel-gfx@lists.freedesktop.org
Cc: dri-devel@lists.freedesktop.org, jani.nikula@linux.intel.com,
 rodrigo.vivi@intel.com, Jerome Tollet <jerome.tollet@gmail.com>
Subject: [PATCH] drm/i915/hdmi: Fix 4K@60Hz HDMI display with SCDC timing
 delays
Date: Tue, 30 Dec 2025 10:10:37 +0100
Message-ID: <20251230091037.5603-1-jerome.tollet@gmail.com>
X-Mailer: git-send-email 2.43.0
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Mailman-Approved-At: Wed, 07 Jan 2026 14:19:56 +0000
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

Some HDMI 2.0 monitors fail to decode the signal at 4K@60Hz (594 MHz)
when SCDC scrambling is configured too quickly. The monitor displays
"format detection" error and never recovers, despite SCDC I2C
transactions succeeding.

Root cause: The SCDC disable/enable sequence happens too fast (~16ms),
causing the monitor to lose sync during the transition. HDMI 2.0 spec
section 10.4.1.7 states that the sink can disable scrambling if it
doesn't detect a scrambled clock within 100ms.

Solution: Add timing delays to allow the monitor to properly handle
the SCDC configuration:
- 100ms before SCDC configuration (let monitor stabilize)
- 150ms after DDI enable (let monitor lock onto scrambled signal)

Testing performed on:
- Hardware: Intel Alder Lake-N N100 (Gen12.0, PCI ID 8086:46d1)
- Monitor: Cisco Desk Pro (HDMI 2.0 capable)
- Resolution: 3840x2160@60Hz via HDMI 2.0
- Kernel: Linux 6.18.1
- Test scenarios:
  * Multiple reboots (stable across all tests)
  * DPMS ON/OFF cycles (suspend/resume works correctly)

Impact: Adds 250ms delay during boot, only when hdmi_scrambling is
active (resolutions > 340 MHz). No impact on lower resolutions or
runtime performance.

Fixes display initialization on monitors sensitive to SCDC timing.

Signed-off-by: Jerome Tollet <jerome.tollet@gmail.com>
---
 drivers/gpu/drm/i915/display/intel_ddi.c | 8 ++++++++
 1 file changed, 8 insertions(+)

diff --git a/drivers/gpu/drm/i915/display/intel_ddi.c b/drivers/gpu/drm/i915/display/intel_ddi.c
index abcdef123456..fedcba654321 100644
--- a/drivers/gpu/drm/i915/display/intel_ddi.c
+++ b/drivers/gpu/drm/i915/display/intel_ddi.c
@@ -3414,6 +3414,10 @@ static void intel_ddi_enable_hdmi(struct intel_atomic_state *state,
 	enum port port = encoder->port;
 	u32 buf_ctl = 0;
 
+	/* Give monitor time to be ready before SCDC configuration */
+	if (crtc_state->hdmi_scrambling)
+		msleep(100);
+
 	if (!intel_hdmi_handle_sink_scrambling(encoder, connector,
 					       crtc_state->hdmi_high_tmds_clock_ratio,
 					       crtc_state->hdmi_scrambling))
@@ -3502,6 +3506,10 @@ static void intel_ddi_enable_hdmi(struct intel_atomic_state *state,
 	}
 
 	intel_ddi_buf_enable(encoder, buf_ctl);
+
+	/* Give monitor time to lock onto scrambled signal after DDI enable */
+	if (crtc_state->hdmi_scrambling)
+		msleep(150);
 }
 
 static void intel_ddi_enable(struct intel_atomic_state *state,
--
2.43.0
