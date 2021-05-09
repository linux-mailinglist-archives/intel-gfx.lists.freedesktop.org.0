Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id BE566377F9B
	for <lists+intel-gfx@lfdr.de>; Mon, 10 May 2021 11:41:18 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id A0F9889E0E;
	Mon, 10 May 2021 09:41:15 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-pj1-x102e.google.com (mail-pj1-x102e.google.com
 [IPv6:2607:f8b0:4864:20::102e])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 0A9046E0E6
 for <intel-gfx@lists.freedesktop.org>; Sun,  9 May 2021 04:44:14 +0000 (UTC)
Received: by mail-pj1-x102e.google.com with SMTP id gj14so7976933pjb.5
 for <intel-gfx@lists.freedesktop.org>; Sat, 08 May 2021 21:44:14 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=CvN1CouMzyTWsYKzaSa7mKtsYD6y6GzyToDIlVuFPAI=;
 b=OU37zzDljrjiVkyY33jHn7W5e4VWHD+OD0Ih1lG40CqXjzBrjDtw1GMFoE56LIgC7W
 PVSiEv3lhj5bGTN/48Q2Ciw5eH3ajV6U5XReH/OAjSdngT1+J5ARqosqQRCN908z1YIo
 YCwZBRdHuCwnSZf5RJCxUArdXtzQxLJV6cl31JYq3yuNvtOs+L1ZtmxBA+T/ghF0iK4M
 tzbMdczooaqXfBOKJccpW4a/+t7ARSYUOnyb3BLJTaZM0tgTcRB7GFeL/eq/ATmnvy0Q
 rnxaxlRI/CeR1vfHfzu9uSQMhlgJfxuhxZH2LLre4p6dAAlcj65fQbzQXCqEG0zU1co6
 FqxQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=CvN1CouMzyTWsYKzaSa7mKtsYD6y6GzyToDIlVuFPAI=;
 b=TQxqSIy5MzJa/J2jaK2OcDF0T0P1RxNWptvXOPNWU75UJf1e674MAtRok79hQOMTYp
 6hNYyImyYGUZazFjCKo2hgeb+ytsKlrN+Ug2lLsDAgshcxfv3DdDi7U7S/Ge0mS4OGDR
 3Kt7Gzd9fPtX0Lov0cJbV0bJpAsAVAc5sdT1bt9t/R2SOT7mPYTGvk0ob5rDnwfkjMes
 d2MYHtgKFxNLMbZZyyunHtp/qa1pZI543OVbknB5B0QMwAhFHsORJ4/0PCxbtYR6a8Wd
 rPt4ZTi4n0ApgyWKPB/EbPb8AFVaU0ngTHaP56uRjzzdiTPljnUI5pGJLUY2ItwPrPTn
 Asow==
X-Gm-Message-State: AOAM533gf6pr5jwg9q4ajx6jUr+wM2T9kLMxCUNrc+c/K8oaopTj3hA0
 ua1eMyJowb4GqtAAs5xJPjOrTjfN0NLfnA==
X-Google-Smtp-Source: ABdhPJznC+jHlBqu+vFX0SqQxT6mY49cVpRklQ7ibr3I6yKqzDw5ysSTHIuWx4EvTGEMVjpHguIfXA==
X-Received: by 2002:a17:902:7081:b029:ed:5f:20af with SMTP id
 z1-20020a1709027081b02900ed005f20afmr18220228plk.60.1620535452878; 
 Sat, 08 May 2021 21:44:12 -0700 (PDT)
Received: from localhost.localdomain ([75.167.176.234])
 by smtp.gmail.com with ESMTPSA id m2sm7821912pgv.87.2021.05.08.21.44.11
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Sat, 08 May 2021 21:44:12 -0700 (PDT)
From: Paul Zimmerman <pauldzim@gmail.com>
To: Jani Nikula <jani.nikula@linux.intel.com>,
 Joonas Lahtinen <joonas.lahtinen@linux.intel.com>,
 Rodrigo Vivi <rodrigo.vivi@intel.com>
Date: Sat,  8 May 2021 21:43:30 -0700
Message-Id: <20210509044330.4655-1-pauldzim@gmail.com>
X-Mailer: git-send-email 2.25.1
MIME-Version: 1.0
X-Mailman-Approved-At: Mon, 10 May 2021 09:41:14 +0000
Subject: [Intel-gfx] [PATCH RFC] Revert "drm/i915: Try to use fast+narrow
 link on eDP again and fall back to the old max strategy on failure"
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
Cc: intel-gfx@lists.freedesktop.org, linux-kernel@vger.kernel.org,
 Paul Zimmerman <pauldzim@gmail.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

This reverts commit 2bbd6dba84d44219387df051a1c799b7bac46099.

Since 5.12-rc2, my Dell XPS-15 laptop has had a blank screen on boot.
The system seems to run fine other than having no display, I am able
to ssh into the machine. I don't see anything interesting in the dmesg
log. I bisected the problem down to this commit, and reverting it fixes
the problem.

Signed-off-by: Paul Zimmerman <pauldzim@gmail.com>
---
I am attaching the dmesg log from 5.12.0 when the problem occurs. Any
other debugging info you want me to provide?

 .../drm/i915/display/intel_display_types.h    |  1 -
 drivers/gpu/drm/i915/display/intel_dp.c       | 75 +++----------------
 2 files changed, 9 insertions(+), 67 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_display_types.h b/drivers/gpu/drm/i915/display/intel_display_types.h
index 184ecbbcec99..196900100689 100644
--- a/drivers/gpu/drm/i915/display/intel_display_types.h
+++ b/drivers/gpu/drm/i915/display/intel_display_types.h
@@ -1424,7 +1424,6 @@ struct intel_dp {
 	bool has_hdmi_sink;
 	bool has_audio;
 	bool reset_link_params;
-	bool use_max_params;
 	u8 dpcd[DP_RECEIVER_CAP_SIZE];
 	u8 psr_dpcd[EDP_PSR_RECEIVER_CAP_SIZE];
 	u8 downstream_ports[DP_MAX_DOWNSTREAM_PORTS];
diff --git a/drivers/gpu/drm/i915/display/intel_dp.c b/drivers/gpu/drm/i915/display/intel_dp.c
index 775d89b6c3fc..238ae1099132 100644
--- a/drivers/gpu/drm/i915/display/intel_dp.c
+++ b/drivers/gpu/drm/i915/display/intel_dp.c
@@ -480,13 +480,6 @@ int intel_dp_get_link_train_fallback_values(struct intel_dp *intel_dp,
 		return -1;
 	}
 
-	if (intel_dp_is_edp(intel_dp) && !intel_dp->use_max_params) {
-		drm_dbg_kms(&i915->drm,
-			    "Retrying Link training for eDP with max parameters\n");
-		intel_dp->use_max_params = true;
-		return 0;
-	}
-
 	index = intel_dp_rate_index(intel_dp->common_rates,
 				    intel_dp->num_common_rates,
 				    link_rate);
@@ -1174,44 +1167,6 @@ intel_dp_compute_link_config_wide(struct intel_dp *intel_dp,
 	return -EINVAL;
 }
 
-/* Optimize link config in order: max bpp, min lanes, min clock */
-static int
-intel_dp_compute_link_config_fast(struct intel_dp *intel_dp,
-				  struct intel_crtc_state *pipe_config,
-				  const struct link_config_limits *limits)
-{
-	const struct drm_display_mode *adjusted_mode = &pipe_config->hw.adjusted_mode;
-	int bpp, clock, lane_count;
-	int mode_rate, link_clock, link_avail;
-
-	for (bpp = limits->max_bpp; bpp >= limits->min_bpp; bpp -= 2 * 3) {
-		int output_bpp = intel_dp_output_bpp(pipe_config->output_format, bpp);
-
-		mode_rate = intel_dp_link_required(adjusted_mode->crtc_clock,
-						   output_bpp);
-
-		for (lane_count = limits->min_lane_count;
-		     lane_count <= limits->max_lane_count;
-		     lane_count <<= 1) {
-			for (clock = limits->min_clock; clock <= limits->max_clock; clock++) {
-				link_clock = intel_dp->common_rates[clock];
-				link_avail = intel_dp_max_data_rate(link_clock,
-								    lane_count);
-
-				if (mode_rate <= link_avail) {
-					pipe_config->lane_count = lane_count;
-					pipe_config->pipe_bpp = bpp;
-					pipe_config->port_clock = link_clock;
-
-					return 0;
-				}
-			}
-		}
-	}
-
-	return -EINVAL;
-}
-
 static int intel_dp_dsc_compute_bpp(struct intel_dp *intel_dp, u8 dsc_max_bpc)
 {
 	int i, num_bpc;
@@ -1435,14 +1390,13 @@ intel_dp_compute_link_config(struct intel_encoder *encoder,
 	limits.min_bpp = intel_dp_min_bpp(pipe_config->output_format);
 	limits.max_bpp = intel_dp_max_bpp(intel_dp, pipe_config);
 
-	if (intel_dp->use_max_params) {
+	if (intel_dp_is_edp(intel_dp)) {
 		/*
 		 * Use the maximum clock and number of lanes the eDP panel
-		 * advertizes being capable of in case the initial fast
-		 * optimal params failed us. The panels are generally
+		 * advertizes being capable of. The panels are generally
 		 * designed to support only a single clock and lane
-		 * configuration, and typically on older panels these
-		 * values correspond to the native resolution of the panel.
+		 * configuration, and typically these values correspond to the
+		 * native resolution of the panel.
 		 */
 		limits.min_lane_count = limits.max_lane_count;
 		limits.min_clock = limits.max_clock;
@@ -1461,22 +1415,11 @@ intel_dp_compute_link_config(struct intel_encoder *encoder,
 	    intel_dp_can_bigjoiner(intel_dp))
 		pipe_config->bigjoiner = true;
 
-	if (intel_dp_is_edp(intel_dp))
-		/*
-		 * Optimize for fast and narrow. eDP 1.3 section 3.3 and eDP 1.4
-		 * section A.1: "It is recommended that the minimum number of
-		 * lanes be used, using the minimum link rate allowed for that
-		 * lane configuration."
-		 *
-		 * Note that we fall back to the max clock and lane count for eDP
-		 * panels that fail with the fast optimal settings (see
-		 * intel_dp->use_max_params), in which case the fast vs. wide
-		 * choice doesn't matter.
-		 */
-		ret = intel_dp_compute_link_config_fast(intel_dp, pipe_config, &limits);
-	else
-		/* Optimize for slow and wide. */
-		ret = intel_dp_compute_link_config_wide(intel_dp, pipe_config, &limits);
+	/*
+	 * Optimize for slow and wide. This is the place to add alternative
+	 * optimization policy.
+	 */
+	ret = intel_dp_compute_link_config_wide(intel_dp, pipe_config, &limits);
 
 	/* enable compression if the mode doesn't fit available BW */
 	drm_dbg_kms(&i915->drm, "Force DSC en = %d\n", intel_dp->force_dsc_en);
-- 
2.25.1

[    0.000000] Linux version 5.12.0 (paulz@paulz-xps-15) (gcc (Ubuntu 9.3.0-17ubuntu1~20.04) 9.3.0, GNU ld (GNU Binutils for Ubuntu) 2.34) #47 SMP Sat May 8 16:34:06 MST 2021
[    0.000000] Command line: BOOT_IMAGE=/boot/vmlinuz-5.12.0 root=UUID=51950d8a-7502-4733-a399-d36120d70c8d ro quiet splash vt.handoff=7
[    0.000000] KERNEL supported cpus:
[    0.000000]   Intel GenuineIntel
[    0.000000]   AMD AuthenticAMD
[    0.000000]   Hygon HygonGenuine
[    0.000000]   Centaur CentaurHauls
[    0.000000]   zhaoxin   Shanghai  
[    0.000000] x86/fpu: Supporting XSAVE feature 0x001: 'x87 floating point registers'
[    0.000000] x86/fpu: Supporting XSAVE feature 0x002: 'SSE registers'
[    0.000000] x86/fpu: Supporting XSAVE feature 0x004: 'AVX registers'
[    0.000000] x86/fpu: Supporting XSAVE feature 0x008: 'MPX bounds registers'
[    0.000000] x86/fpu: Supporting XSAVE feature 0x010: 'MPX CSR'
[    0.000000] x86/fpu: xstate_offset[2]:  576, xstate_sizes[2]:  256
[    0.000000] x86/fpu: xstate_offset[3]:  832, xstate_sizes[3]:   64
[    0.000000] x86/fpu: xstate_offset[4]:  896, xstate_sizes[4]:   64
[    0.000000] x86/fpu: Enabled xstate features 0x1f, context size is 960 bytes, using 'compacted' format.
[    0.000000] BIOS-provided physical RAM map:
[    0.000000] BIOS-e820: [mem 0x0000000000000000-0x000000000009dfff] usable
[    0.000000] BIOS-e820: [mem 0x000000000009e000-0x000000000009efff] reserved
[    0.000000] BIOS-e820: [mem 0x000000000009f000-0x000000000009ffff] usable
[    0.000000] BIOS-e820: [mem 0x00000000000a0000-0x00000000000fffff] reserved
[    0.000000] BIOS-e820: [mem 0x0000000000100000-0x000000003fffffff] usable
[    0.000000] BIOS-e820: [mem 0x0000000040000000-0x00000000403fffff] reserved
[    0.000000] BIOS-e820: [mem 0x0000000040400000-0x000000005c5b0fff] usable
[    0.000000] BIOS-e820: [mem 0x000000005c5b1000-0x000000005c5b1fff] ACPI NVS
[    0.000000] BIOS-e820: [mem 0x000000005c5b2000-0x000000005c5b2fff] reserved
[    0.000000] BIOS-e820: [mem 0x000000005c5b3000-0x000000006c037fff] usable
[    0.000000] BIOS-e820: [mem 0x000000006c038000-0x000000006d7affff] reserved
[    0.000000] BIOS-e820: [mem 0x000000006d7b0000-0x000000006d82cfff] ACPI data
[    0.000000] BIOS-e820: [mem 0x000000006d82d000-0x000000006e1a1fff] ACPI NVS
[    0.000000] BIOS-e820: [mem 0x000000006e1a2000-0x000000006fffefff] reserved
[    0.000000] BIOS-e820: [mem 0x000000006ffff000-0x000000006fffffff] usable
[    0.000000] BIOS-e820: [mem 0x0000000070000000-0x0000000077ffffff] reserved
[    0.000000] BIOS-e820: [mem 0x0000000078000000-0x0000000078dfffff] usable
[    0.000000] BIOS-e820: [mem 0x0000000078e00000-0x000000007f7fffff] reserved
[    0.000000] BIOS-e820: [mem 0x00000000f0000000-0x00000000f7ffffff] reserved
[    0.000000] BIOS-e820: [mem 0x00000000fe000000-0x00000000fe010fff] reserved
[    0.000000] BIOS-e820: [mem 0x00000000fec00000-0x00000000fec00fff] reserved
[    0.000000] BIOS-e820: [mem 0x00000000fee00000-0x00000000fee00fff] reserved
[    0.000000] BIOS-e820: [mem 0x00000000ff000000-0x00000000ffffffff] reserved
[    0.000000] BIOS-e820: [mem 0x0000000100000000-0x000000087c7fffff] usable
[    0.000000] NX (Execute Disable) protection: active
[    0.000000] e820: update [mem 0x58feb018-0x58ff9657] usable ==> usable
[    0.000000] e820: update [mem 0x58feb018-0x58ff9657] usable ==> usable
[    0.000000] extended physical RAM map:
[    0.000000] reserve setup_data: [mem 0x0000000000000000-0x000000000009dfff] usable
[    0.000000] reserve setup_data: [mem 0x000000000009e000-0x000000000009efff] reserved
[    0.000000] reserve setup_data: [mem 0x000000000009f000-0x000000000009ffff] usable
[    0.000000] reserve setup_data: [mem 0x00000000000a0000-0x00000000000fffff] reserved
[    0.000000] reserve setup_data: [mem 0x0000000000100000-0x000000003fffffff] usable
[    0.000000] reserve setup_data: [mem 0x0000000040000000-0x00000000403fffff] reserved
[    0.000000] reserve setup_data: [mem 0x0000000040400000-0x0000000058feb017] usable
[    0.000000] reserve setup_data: [mem 0x0000000058feb018-0x0000000058ff9657] usable
[    0.000000] reserve setup_data: [mem 0x0000000058ff9658-0x000000005c5b0fff] usable
[    0.000000] reserve setup_data: [mem 0x000000005c5b1000-0x000000005c5b1fff] ACPI NVS
[    0.000000] reserve setup_data: [mem 0x000000005c5b2000-0x000000005c5b2fff] reserved
[    0.000000] reserve setup_data: [mem 0x000000005c5b3000-0x000000006c037fff] usable
[    0.000000] reserve setup_data: [mem 0x000000006c038000-0x000000006d7affff] reserved
[    0.000000] reserve setup_data: [mem 0x000000006d7b0000-0x000000006d82cfff] ACPI data
[    0.000000] reserve setup_data: [mem 0x000000006d82d000-0x000000006e1a1fff] ACPI NVS
[    0.000000] reserve setup_data: [mem 0x000000006e1a2000-0x000000006fffefff] reserved
[    0.000000] reserve setup_data: [mem 0x000000006ffff000-0x000000006fffffff] usable
[    0.000000] reserve setup_data: [mem 0x0000000070000000-0x0000000077ffffff] reserved
[    0.000000] reserve setup_data: [mem 0x0000000078000000-0x0000000078dfffff] usable
[    0.000000] reserve setup_data: [mem 0x0000000078e00000-0x000000007f7fffff] reserved
[    0.000000] reserve setup_data: [mem 0x00000000f0000000-0x00000000f7ffffff] reserved
[    0.000000] reserve setup_data: [mem 0x00000000fe000000-0x00000000fe010fff] reserved
[    0.000000] reserve setup_data: [mem 0x00000000fec00000-0x00000000fec00fff] reserved
[    0.000000] reserve setup_data: [mem 0x00000000fee00000-0x00000000fee00fff] reserved
[    0.000000] reserve setup_data: [mem 0x00000000ff000000-0x00000000ffffffff] reserved
[    0.000000] reserve setup_data: [mem 0x0000000100000000-0x000000087c7fffff] usable
[    0.000000] efi: EFI v2.70 by American Megatrends
[    0.000000] efi: ACPI 2.0=0x6d7c9000 ACPI=0x6d7c9000 SMBIOS=0xf0000 SMBIOS 3.0=0xf0020 TPMFinalLog=0x6e0e0000 ESRT=0x6fa51298 MEMATTR=0x697d6098 RNG=0x6fad2f98 TPMEventLog=0x58ffa018 
[    0.000000] efi: seeding entropy pool
[    0.000000] random: fast init done
[    0.000000] SMBIOS 3.2.0 present.
[    0.000000] DMI: Dell Inc. XPS 15 7590/0VYV0G, BIOS 1.9.1 12/14/2020
[    0.000000] tsc: Detected 2600.000 MHz processor
[    0.000000] tsc: Detected 2599.992 MHz TSC
[    0.001349] e820: update [mem 0x00000000-0x00000fff] usable ==> reserved
[    0.001351] e820: remove [mem 0x000a0000-0x000fffff] usable
[    0.001356] last_pfn = 0x87c800 max_arch_pfn = 0x400000000
[    0.001460] x86/PAT: Configuration [0-7]: WB  WC  UC- UC  WB  WP  UC- WT  
[    0.002156] last_pfn = 0x78e00 max_arch_pfn = 0x400000000
[    0.007058] esrt: Reserving ESRT space from 0x000000006fa51298 to 0x000000006fa512d0.
[    0.007065] check: Scanning 1 areas for low memory corruption
[    0.007069] Using GB pages for direct mapping
[    0.007472] Secure boot disabled
[    0.007472] RAMDISK: [mem 0x284db000-0x298cffff]
[    0.007477] ACPI: Early table checksum verification disabled
[    0.007479] ACPI: RSDP 0x000000006D7C9000 000024 (v02 DELL  )
[    0.007481] ACPI: XSDT 0x000000006D7C90C8 000114 (v01 DELL   CBX3     01072009 AMI  00010013)
[    0.007485] ACPI: FACP 0x000000006D80A0A8 000114 (v06 DELL   CBX3     01072009 AMI  00010013)
[    0.007489] ACPI: DSDT 0x000000006D7C9270 040E36 (v02 DELL   CBX3     01072009 INTL 20160527)
[    0.007492] ACPI: FACS 0x000000006E1A0C00 000040
[    0.007493] ACPI: APIC 0x000000006D80A1C0 0000F4 (v04 DELL   CBX3     01072009 AMI  00010013)
[    0.007496] ACPI: FPDT 0x000000006D80A2B8 000044 (v01 DELL   CBX3     01072009 AMI  00010013)
[    0.007497] ACPI: FIDT 0x000000006D80A300 00009C (v01 DELL   CBX3     01072009 AMI  00010013)
[    0.007499] ACPI: MCFG 0x000000006D80A3A0 00003C (v01 DELL   CBX3     01072009 MSFT 00000097)
[    0.007501] ACPI: SSDT 0x000000006D80A3E0 001B26 (v02 CpuRef CpuSsdt  00003000 INTL 20160527)
[    0.007503] ACPI: BOOT 0x000000006D80BF08 000028 (v01 DELL   CBX3     01072009 AMI  00010013)
[    0.007505] ACPI: SSDT 0x000000006D80BF30 001663 (v02 SaSsdt SaSsdt   00003000 INTL 20160527)
[    0.007507] ACPI: SSDT 0x000000006D80D598 002644 (v02 PegSsd PegSsdt  00001000 INTL 20160527)
[    0.007510] ACPI: HPET 0x000000006D80FBE0 000038 (v01 DELL\x CBX3     00000002      01000013)
[    0.007512] ACPI: SSDT 0x000000006D80FC18 001441 (v02 DELL\x CflH_Tbt 00001000 INTL 20160527)
[    0.007514] ACPI: UEFI 0x000000006D811060 000042 (v01 DELL\x CBX3     00000002      01000013)
[    0.007515] ACPI: LPIT 0x000000006D8110A8 000094 (v01 DELL\x CBX3     00000002      01000013)
[    0.007517] ACPI: WSMT 0x000000006D811140 000028 (v01 DELL   CBX3     00000002      01000013)
[    0.007519] ACPI: SSDT 0x000000006D811168 0027DE (v02 DELL\x PtidDevc 00001000 INTL 20160527)
[    0.007521] ACPI: SSDT 0x000000006D813948 00037A (v02 DELL\x TbtTypeC 00000000 INTL 20160527)
[    0.007523] ACPI: DBGP 0x000000006D813CC8 000034 (v01 DELL\x CBX3     00000002      01000013)
[    0.007525] ACPI: DBG2 0x000000006D813D00 000054 (v00 DELL\x CBX3     00000002      01000013)
[    0.007527] ACPI: SSDT 0x000000006D813D58 0007DC (v02 DELL\x UsbCTabl 00001000 INTL 20160527)
[    0.007529] ACPI: SSDT 0x000000006D814538 00BE4B (v02 DptfTa DptfTabl 00001000 INTL 20160527)
[    0.007531] ACPI: MSDM 0x000000006D820388 000055 (v03 DELL   CBX3     06222004 AMI  00010013)
[    0.007533] ACPI: SLIC 0x000000006D8203E0 000176 (v03 DELL   CBX3     01072009 MSFT 00010013)
[    0.007535] ACPI: DMAR 0x000000006D820558 0000C8 (v01 INTEL  EDK2     00000002      01000013)
[    0.007537] ACPI: SSDT 0x000000006D820620 000144 (v02 Intel  ADebTabl 00001000 INTL 20160527)
[    0.007539] ACPI: SSDT 0x000000006D820768 0000AE (v02 SgRef  SgPeg    00001000 INTL 20160527)
[    0.007541] ACPI: NHLT 0x000000006D820818 00002D (v00 INTEL  EDK2     00000002      01000013)
[    0.007543] ACPI: BGRT 0x000000006D820848 000038 (v00 DELL   CBX3     01072009 AMI  00010013)
[    0.007545] ACPI: TPM2 0x000000006D820880 000034 (v04 DELL\x CBX3     00000001 AMI  00000000)
[    0.007547] ACPI: ASF! 0x000000006D8208B8 0000A0 (v32 DELL\x CBX3     00000002      01000013)
[    0.007549] ACPI: SSDT 0x000000006D820958 001E51 (v01 OptRef OptTabl  00001000 INTL 20160527)
[    0.007551] ACPI: Reserving FACP table memory at [mem 0x6d80a0a8-0x6d80a1bb]
[    0.007552] ACPI: Reserving DSDT table memory at [mem 0x6d7c9270-0x6d80a0a5]
[    0.007553] ACPI: Reserving FACS table memory at [mem 0x6e1a0c00-0x6e1a0c3f]
[    0.007553] ACPI: Reserving APIC table memory at [mem 0x6d80a1c0-0x6d80a2b3]
[    0.007554] ACPI: Reserving FPDT table memory at [mem 0x6d80a2b8-0x6d80a2fb]
[    0.007555] ACPI: Reserving FIDT table memory at [mem 0x6d80a300-0x6d80a39b]
[    0.007555] ACPI: Reserving MCFG table memory at [mem 0x6d80a3a0-0x6d80a3db]
[    0.007556] ACPI: Reserving SSDT table memory at [mem 0x6d80a3e0-0x6d80bf05]
[    0.007557] ACPI: Reserving BOOT table memory at [mem 0x6d80bf08-0x6d80bf2f]
[    0.007557] ACPI: Reserving SSDT table memory at [mem 0x6d80bf30-0x6d80d592]
[    0.007558] ACPI: Reserving SSDT table memory at [mem 0x6d80d598-0x6d80fbdb]
[    0.007559] ACPI: Reserving HPET table memory at [mem 0x6d80fbe0-0x6d80fc17]
[    0.007559] ACPI: Reserving SSDT table memory at [mem 0x6d80fc18-0x6d811058]
[    0.007560] ACPI: Reserving UEFI table memory at [mem 0x6d811060-0x6d8110a1]
[    0.007561] ACPI: Reserving LPIT table memory at [mem 0x6d8110a8-0x6d81113b]
[    0.007561] ACPI: Reserving WSMT table memory at [mem 0x6d811140-0x6d811167]
[    0.007562] ACPI: Reserving SSDT table memory at [mem 0x6d811168-0x6d813945]
[    0.007563] ACPI: Reserving SSDT table memory at [mem 0x6d813948-0x6d813cc1]
[    0.007563] ACPI: Reserving DBGP table memory at [mem 0x6d813cc8-0x6d813cfb]
[    0.007564] ACPI: Reserving DBG2 table memory at [mem 0x6d813d00-0x6d813d53]
[    0.007565] ACPI: Reserving SSDT table memory at [mem 0x6d813d58-0x6d814533]
[    0.007566] ACPI: Reserving SSDT table memory at [mem 0x6d814538-0x6d820382]
[    0.007566] ACPI: Reserving MSDM table memory at [mem 0x6d820388-0x6d8203dc]
[    0.007567] ACPI: Reserving SLIC table memory at [mem 0x6d8203e0-0x6d820555]
[    0.007568] ACPI: Reserving DMAR table memory at [mem 0x6d820558-0x6d82061f]
[    0.007568] ACPI: Reserving SSDT table memory at [mem 0x6d820620-0x6d820763]
[    0.007569] ACPI: Reserving SSDT table memory at [mem 0x6d820768-0x6d820815]
[    0.007570] ACPI: Reserving NHLT table memory at [mem 0x6d820818-0x6d820844]
[    0.007571] ACPI: Reserving BGRT table memory at [mem 0x6d820848-0x6d82087f]
[    0.007571] ACPI: Reserving TPM2 table memory at [mem 0x6d820880-0x6d8208b3]
[    0.007572] ACPI: Reserving ASF! table memory at [mem 0x6d8208b8-0x6d820957]
[    0.007573] ACPI: Reserving SSDT table memory at [mem 0x6d820958-0x6d8227a8]
[    0.007581] ACPI: Local APIC address 0xfee00000
[    0.007965] No NUMA configuration found
[    0.007965] Faking a node at [mem 0x0000000000000000-0x000000087c7fffff]
[    0.007972] NODE_DATA(0) allocated [mem 0x87c7d5000-0x87c7fffff]
[    0.008179] Zone ranges:
[    0.008179]   DMA      [mem 0x0000000000001000-0x0000000000ffffff]
[    0.008181]   DMA32    [mem 0x0000000001000000-0x00000000ffffffff]
[    0.008182]   Normal   [mem 0x0000000100000000-0x000000087c7fffff]
[    0.008183]   Device   empty
[    0.008184] Movable zone start for each node
[    0.008186] Early memory node ranges
[    0.008186]   node   0: [mem 0x0000000000001000-0x000000000009dfff]
[    0.008187]   node   0: [mem 0x000000000009f000-0x000000000009ffff]
[    0.008188]   node   0: [mem 0x0000000000100000-0x000000003fffffff]
[    0.008189]   node   0: [mem 0x0000000040400000-0x000000005c5b0fff]
[    0.008190]   node   0: [mem 0x000000005c5b3000-0x000000006c037fff]
[    0.008190]   node   0: [mem 0x000000006ffff000-0x000000006fffffff]
[    0.008191]   node   0: [mem 0x0000000078000000-0x0000000078dfffff]
[    0.008191]   node   0: [mem 0x0000000100000000-0x000000087c7fffff]
[    0.008193] Initmem setup node 0 [mem 0x0000000000001000-0x000000087c7fffff]
[    0.008195] On node 0 totalpages: 8294869
[    0.008196]   DMA zone: 64 pages used for memmap
[    0.008196]   DMA zone: 22 pages reserved
[    0.008197]   DMA zone: 3998 pages, LIFO batch:0
[    0.008381]   DMA zone: 28770 pages in unavailable ranges
[    0.008382]   DMA32 zone: 6889 pages used for memmap
[    0.008383]   DMA32 zone: 440887 pages, LIFO batch:63
[    0.010711]   DMA32 zone: 46537 pages in unavailable ranges
[    0.010712]   Normal zone: 122656 pages used for memmap
[    0.010712]   Normal zone: 7849984 pages, LIFO batch:63
[    0.042858]   Normal zone: 14336 pages in unavailable ranges
[    0.042860] x86/hpet: Will disable the HPET for this platform because it's not reliable
[    0.042886] Reserving Intel graphics memory at [mem 0x7b800000-0x7f7fffff]
[    0.044564] ACPI: PM-Timer IO Port: 0x1808
[    0.044565] ACPI: Local APIC address 0xfee00000
[    0.044569] ACPI: LAPIC_NMI (acpi_id[0x01] high edge lint[0x1])
[    0.044570] ACPI: LAPIC_NMI (acpi_id[0x02] high edge lint[0x1])
[    0.044571] ACPI: LAPIC_NMI (acpi_id[0x03] high edge lint[0x1])
[    0.044572] ACPI: LAPIC_NMI (acpi_id[0x04] high edge lint[0x1])
[    0.044572] ACPI: LAPIC_NMI (acpi_id[0x05] high edge lint[0x1])
[    0.044573] ACPI: LAPIC_NMI (acpi_id[0x06] high edge lint[0x1])
[    0.044573] ACPI: LAPIC_NMI (acpi_id[0x07] high edge lint[0x1])
[    0.044574] ACPI: LAPIC_NMI (acpi_id[0x08] high edge lint[0x1])
[    0.044574] ACPI: LAPIC_NMI (acpi_id[0x09] high edge lint[0x1])
[    0.044575] ACPI: LAPIC_NMI (acpi_id[0x0a] high edge lint[0x1])
[    0.044575] ACPI: LAPIC_NMI (acpi_id[0x0b] high edge lint[0x1])
[    0.044576] ACPI: LAPIC_NMI (acpi_id[0x0c] high edge lint[0x1])
[    0.044635] IOAPIC[0]: apic_id 2, version 32, address 0xfec00000, GSI 0-119
[    0.044637] ACPI: INT_SRC_OVR (bus 0 bus_irq 0 global_irq 2 dfl dfl)
[    0.044638] ACPI: INT_SRC_OVR (bus 0 bus_irq 9 global_irq 9 high level)
[    0.044640] ACPI: IRQ0 used by override.
[    0.044641] ACPI: IRQ9 used by override.
[    0.044642] Using ACPI (MADT) for SMP configuration information
[    0.044642] ACPI: HPET id: 0x8086a201 base: 0xfed00000
[    0.044647] e820: update [mem 0x67250000-0x6726afff] usable ==> reserved
[    0.044654] TSC deadline timer available
[    0.044655] smpboot: Allowing 12 CPUs, 0 hotplug CPUs
[    0.044672] PM: hibernation: Registered nosave memory: [mem 0x00000000-0x00000fff]
[    0.044674] PM: hibernation: Registered nosave memory: [mem 0x0009e000-0x0009efff]
[    0.044675] PM: hibernation: Registered nosave memory: [mem 0x000a0000-0x000fffff]
[    0.044677] PM: hibernation: Registered nosave memory: [mem 0x40000000-0x403fffff]
[    0.044678] PM: hibernation: Registered nosave memory: [mem 0x58feb000-0x58febfff]
[    0.044679] PM: hibernation: Registered nosave memory: [mem 0x58ff9000-0x58ff9fff]
[    0.044681] PM: hibernation: Registered nosave memory: [mem 0x5c5b1000-0x5c5b1fff]
[    0.044681] PM: hibernation: Registered nosave memory: [mem 0x5c5b2000-0x5c5b2fff]
[    0.044682] PM: hibernation: Registered nosave memory: [mem 0x67250000-0x6726afff]
[    0.044684] PM: hibernation: Registered nosave memory: [mem 0x6c038000-0x6d7affff]
[    0.044684] PM: hibernation: Registered nosave memory: [mem 0x6d7b0000-0x6d82cfff]
[    0.044685] PM: hibernation: Registered nosave memory: [mem 0x6d82d000-0x6e1a1fff]
[    0.044685] PM: hibernation: Registered nosave memory: [mem 0x6e1a2000-0x6fffefff]
[    0.044687] PM: hibernation: Registered nosave memory: [mem 0x70000000-0x77ffffff]
[    0.044688] PM: hibernation: Registered nosave memory: [mem 0x78e00000-0x7f7fffff]
[    0.044688] PM: hibernation: Registered nosave memory: [mem 0x7f800000-0xefffffff]
[    0.044689] PM: hibernation: Registered nosave memory: [mem 0xf0000000-0xf7ffffff]
[    0.044689] PM: hibernation: Registered nosave memory: [mem 0xf8000000-0xfdffffff]
[    0.044690] PM: hibernation: Registered nosave memory: [mem 0xfe000000-0xfe010fff]
[    0.044690] PM: hibernation: Registered nosave memory: [mem 0xfe011000-0xfebfffff]
[    0.044691] PM: hibernation: Registered nosave memory: [mem 0xfec00000-0xfec00fff]
[    0.044691] PM: hibernation: Registered nosave memory: [mem 0xfec01000-0xfedfffff]
[    0.044692] PM: hibernation: Registered nosave memory: [mem 0xfee00000-0xfee00fff]
[    0.044692] PM: hibernation: Registered nosave memory: [mem 0xfee01000-0xfeffffff]
[    0.044693] PM: hibernation: Registered nosave memory: [mem 0xff000000-0xffffffff]
[    0.044694] [mem 0x7f800000-0xefffffff] available for PCI devices
[    0.044696] clocksource: refined-jiffies: mask: 0xffffffff max_cycles: 0xffffffff, max_idle_ns: 7645519600211568 ns
[    0.044700] setup_percpu: NR_CPUS:8192 nr_cpumask_bits:12 nr_cpu_ids:12 nr_node_ids:1
[    0.044897] percpu: Embedded 54 pages/cpu s184320 r8192 d28672 u262144
[    0.044903] pcpu-alloc: s184320 r8192 d28672 u262144 alloc=1*2097152
[    0.044904] pcpu-alloc: [0] 00 01 02 03 04 05 06 07 [0] 08 09 10 11 -- -- -- -- 
[    0.044928] Built 1 zonelists, mobility grouping on.  Total pages: 8165238
[    0.044929] Policy zone: Normal
[    0.044930] Kernel command line: BOOT_IMAGE=/boot/vmlinuz-5.12.0 root=UUID=51950d8a-7502-4733-a399-d36120d70c8d ro quiet splash vt.handoff=7
[    0.046030] Dentry cache hash table entries: 4194304 (order: 13, 33554432 bytes, linear)
[    0.046553] Inode-cache hash table entries: 2097152 (order: 12, 16777216 bytes, linear)
[    0.046623] mem auto-init: stack:off, heap alloc:on, heap free:off
[    0.094397] Memory: 32385848K/33179476K available (14346K kernel code, 3279K rwdata, 4992K rodata, 2336K init, 39304K bss, 793368K reserved, 0K cma-reserved)
[    0.094402] random: get_random_u64 called from __kmem_cache_create+0x2d/0x430 with crng_init=1
[    0.094493] SLUB: HWalign=64, Order=0-3, MinObjects=0, CPUs=12, Nodes=1
[    0.094502] Kernel/User page tables isolation: enabled
[    0.094514] ftrace: allocating 44810 entries in 176 pages
[    0.104840] ftrace: allocated 176 pages with 3 groups
[    0.104914] rcu: Hierarchical RCU implementation.
[    0.104915] rcu: 	RCU restricting CPUs from NR_CPUS=8192 to nr_cpu_ids=12.
[    0.104916] 	Rude variant of Tasks RCU enabled.
[    0.104916] 	Tracing variant of Tasks RCU enabled.
[    0.104917] rcu: RCU calculated value of scheduler-enlistment delay is 25 jiffies.
[    0.104917] rcu: Adjusting geometry for rcu_fanout_leaf=16, nr_cpu_ids=12
[    0.107279] NR_IRQS: 524544, nr_irqs: 2152, preallocated irqs: 16
[    0.107846] random: crng done (trusting CPU's manufacturer)
[    0.107864] Console: colour dummy device 80x25
[    0.107876] printk: console [tty0] enabled
[    0.107890] ACPI: Core revision 20210105
[    0.108101] APIC: Switch to symmetric I/O mode setup
[    0.108103] DMAR: Host address width 39
[    0.108104] DMAR: DRHD base: 0x000000fed90000 flags: 0x0
[    0.108107] DMAR: dmar0: reg_base_addr fed90000 ver 1:0 cap 1c0000c40660462 ecap 19e2ff0505e
[    0.108109] DMAR: DRHD base: 0x000000fed91000 flags: 0x1
[    0.108111] DMAR: dmar1: reg_base_addr fed91000 ver 1:0 cap d2008c40660462 ecap f050da
[    0.108113] DMAR: RMRR base: 0x0000006d684000 end: 0x0000006d6a3fff
[    0.108114] DMAR: RMRR base: 0x0000007b000000 end: 0x0000007f7fffff
[    0.108114] DMAR: RMRR base: 0x0000006d730000 end: 0x0000006d7affff
[    0.108116] DMAR-IR: IOAPIC id 2 under DRHD base  0xfed91000 IOMMU 1
[    0.108117] DMAR-IR: HPET id 0 under DRHD base 0xfed91000
[    0.108117] DMAR-IR: Queued invalidation will be enabled to support x2apic and Intr-remapping.
[    0.111436] DMAR-IR: Enabled IRQ remapping in x2apic mode
[    0.111437] x2apic enabled
[    0.111468] Switched APIC routing to cluster x2apic.
[    0.120519] clocksource: tsc-early: mask: 0xffffffffffffffff max_cycles: 0x257a34a6eea, max_idle_ns: 440795264358 ns
[    0.120523] Calibrating delay loop (skipped), value calculated using timer frequency.. 5199.98 BogoMIPS (lpj=10399968)
[    0.120525] pid_max: default: 32768 minimum: 301
[    0.122629] LSM: Security Framework initializing
[    0.122645] AppArmor: AppArmor initialized
[    0.122700] Mount-cache hash table entries: 65536 (order: 7, 524288 bytes, linear)
[    0.122732] Mountpoint-cache hash table entries: 65536 (order: 7, 524288 bytes, linear)
[    0.122892] CPU0: Thermal monitoring enabled (TM1)
[    0.122934] process: using mwait in idle threads
[    0.122935] Last level iTLB entries: 4KB 64, 2MB 8, 4MB 8
[    0.122936] Last level dTLB entries: 4KB 64, 2MB 0, 4MB 0, 1GB 4
[    0.122938] Spectre V1 : Mitigation: usercopy/swapgs barriers and __user pointer sanitization
[    0.122939] Spectre V2 : Mitigation: Full generic retpoline
[    0.122940] Spectre V2 : Spectre v2 / SpectreRSB mitigation: Filling RSB on context switch
[    0.122940] Spectre V2 : Enabling Restricted Speculation for firmware calls
[    0.122941] Spectre V2 : mitigation: Enabling conditional Indirect Branch Prediction Barrier
[    0.122942] Spectre V2 : User space: Mitigation: STIBP via seccomp and prctl
[    0.122942] Speculative Store Bypass: Mitigation: Speculative Store Bypass disabled via prctl and seccomp
[    0.122946] SRBDS: Mitigation: Microcode
[    0.122946] MDS: Mitigation: Clear CPU buffers
[    0.123051] Freeing SMP alternatives memory: 40K
[    0.124430] smpboot: Estimated ratio of average max frequency by base frequency (times 1024): 1654
[    0.124433] smpboot: CPU0: Intel(R) Core(TM) i7-9750H CPU @ 2.60GHz (family: 0x6, model: 0x9e, stepping: 0xa)
[    0.124522] Performance Events: PEBS fmt3+, Skylake events, 32-deep LBR, full-width counters, Intel PMU driver.
[    0.124522] ... version:                4
[    0.124522] ... bit width:              48
[    0.124522] ... generic registers:      4
[    0.124522] ... value mask:             0000ffffffffffff
[    0.124522] ... max period:             00007fffffffffff
[    0.124522] ... fixed-purpose events:   3
[    0.124522] ... event mask:             000000070000000f
[    0.124522] rcu: Hierarchical SRCU implementation.
[    0.124522] NMI watchdog: Enabled. Permanently consumes one hw-PMU counter.
[    0.124522] smp: Bringing up secondary CPUs ...
[    0.124522] x86: Booting SMP configuration:
[    0.124522] .... node  #0, CPUs:        #1  #2  #3  #4  #5  #6
[    0.125893] MDS CPU bug present and SMT on, data leak possible. See https://www.kernel.org/doc/html/latest/admin-guide/hw-vuln/mds.html for more details.
[    0.125893]   #7  #8  #9 #10 #11
[    0.132765] smp: Brought up 1 node, 12 CPUs
[    0.132765] smpboot: Max logical packages: 1
[    0.132765] smpboot: Total of 12 processors activated (62399.80 BogoMIPS)
[    0.134871] devtmpfs: initialized
[    0.134871] x86/mm: Memory block size: 128MB
[    0.137250] PM: Registering ACPI NVS region [mem 0x5c5b1000-0x5c5b1fff] (4096 bytes)
[    0.137250] PM: Registering ACPI NVS region [mem 0x6d82d000-0x6e1a1fff] (9916416 bytes)
[    0.137250] clocksource: jiffies: mask: 0xffffffff max_cycles: 0xffffffff, max_idle_ns: 7645041785100000 ns
[    0.137250] futex hash table entries: 4096 (order: 6, 262144 bytes, linear)
[    0.137250] pinctrl core: initialized pinctrl subsystem
[    0.137250] PM: RTC time: 04:15:46, date: 2021-05-09
[    0.137250] NET: Registered protocol family 16
[    0.137377] DMA: preallocated 4096 KiB GFP_KERNEL pool for atomic allocations
[    0.137541] DMA: preallocated 4096 KiB GFP_KERNEL|GFP_DMA pool for atomic allocations
[    0.137719] DMA: preallocated 4096 KiB GFP_KERNEL|GFP_DMA32 pool for atomic allocations
[    0.137726] audit: initializing netlink subsys (disabled)
[    0.137734] audit: type=2000 audit(1620533746.016:1): state=initialized audit_enabled=0 res=1
[    0.137734] thermal_sys: Registered thermal governor 'fair_share'
[    0.137734] thermal_sys: Registered thermal governor 'bang_bang'
[    0.137734] thermal_sys: Registered thermal governor 'step_wise'
[    0.137734] thermal_sys: Registered thermal governor 'user_space'
[    0.137734] EISA bus registered
[    0.137734] cpuidle: using governor ladder
[    0.137734] cpuidle: using governor menu
[    0.137734] Simple Boot Flag at 0x47 set to 0x80
[    0.137734] ACPI: bus type PCI registered
[    0.137734] acpiphp: ACPI Hot Plug PCI Controller Driver version: 0.5
[    0.137734] PCI: MMCONFIG for domain 0000 [bus 00-7f] at [mem 0xf0000000-0xf7ffffff] (base 0xf0000000)
[    0.137734] PCI: MMCONFIG at [mem 0xf0000000-0xf7ffffff] reserved in E820
[    0.137734] PCI: Using configuration type 1 for base access
[    0.137734] ENERGY_PERF_BIAS: Set to 'normal', was 'performance'
[    0.137734] Kprobes globally optimized
[    0.137734] HugeTLB registered 1.00 GiB page size, pre-allocated 0 pages
[    0.137734] HugeTLB registered 2.00 MiB page size, pre-allocated 0 pages
[    0.140576] ACPI: Added _OSI(Module Device)
[    0.140577] ACPI: Added _OSI(Processor Device)
[    0.140578] ACPI: Added _OSI(3.0 _SCP Extensions)
[    0.140578] ACPI: Added _OSI(Processor Aggregator Device)
[    0.140579] ACPI: Added _OSI(Linux-Dell-Video)
[    0.140580] ACPI: Added _OSI(Linux-Lenovo-NV-HDMI-Audio)
[    0.140580] ACPI: Added _OSI(Linux-HPI-Hybrid-Graphics)
[    0.180618] ACPI: 12 ACPI AML tables successfully acquired and loaded
[    0.247223] ACPI: [Firmware Bug]: BIOS _OSI(Linux) query ignored
[    0.260636] ACPI: Dynamic OEM Table Load:
[    0.260644] ACPI: SSDT 0xFFFF8E1C815DEB00 0000F4 (v02 PmRef  Cpu0Psd  00003000 INTL 20160527)
[    0.261964] ACPI: \_SB_.PR00: _OSC native thermal LVT Acked
[    0.263010] ACPI: Dynamic OEM Table Load:
[    0.263016] ACPI: SSDT 0xFFFF8E1C815E7800 000400 (v02 PmRef  Cpu0Cst  00003001 INTL 20160527)
[    0.264364] ACPI: Dynamic OEM Table Load:
[    0.264371] ACPI: SSDT 0xFFFF8E1C81769800 000581 (v02 PmRef  Cpu0Ist  00003000 INTL 20160527)
[    0.265803] ACPI: Dynamic OEM Table Load:
[    0.265808] ACPI: SSDT 0xFFFF8E1C815DB600 000149 (v02 PmRef  Cpu0Hwp  00003000 INTL 20160527)
[    0.266967] ACPI: Dynamic OEM Table Load:
[    0.266973] ACPI: SSDT 0xFFFF8E1C8176C800 000724 (v02 PmRef  HwpLvt   00003000 INTL 20160527)
[    0.268336] ACPI: Dynamic OEM Table Load:
[    0.268340] ACPI: SSDT 0xFFFF8E1C8176A000 0005FC (v02 PmRef  ApIst    00003000 INTL 20160527)
[    0.269590] ACPI: Dynamic OEM Table Load:
[    0.269594] ACPI: SSDT 0xFFFF8E1C815E1000 000317 (v02 PmRef  ApHwp    00003000 INTL 20160527)
[    0.270869] ACPI: Dynamic OEM Table Load:
[    0.270874] ACPI: SSDT 0xFFFF8E1C80D9A000 000AB0 (v02 PmRef  ApPsd    00003000 INTL 20160527)
[    0.272525] ACPI: Dynamic OEM Table Load:
[    0.272529] ACPI: SSDT 0xFFFF8E1C815E5C00 00030A (v02 PmRef  ApCst    00003000 INTL 20160527)
[    0.277242] ACPI: EC: EC started
[    0.277243] ACPI: EC: interrupt blocked
[    0.286709] ACPI: EC: EC_CMD/EC_SC=0x934, EC_DATA=0x930
[    0.286712] ACPI: \_SB_.PCI0.LPCB.ECDV: Boot DSDT EC used to handle transactions
[    0.286714] ACPI: Interpreter enabled
[    0.286749] ACPI: (supports S0 S3 S4 S5)
[    0.286750] ACPI: Using IOAPIC for interrupt routing
[    0.286793] PCI: Using host bridge windows from ACPI; if necessary, use "pci=nocrs" and report a bug
[    0.287303] ACPI: Enabled 10 GPEs in block 00 to 7F
[    0.289821] ACPI: PM: Power Resource [PG00] (on)
[    0.292009] ACPI: PM: Power Resource [WRST] (on)
[    0.292045] ACPI: PM: Power Resource [DRST] (on)
[    0.292522] ACPI: PM: Power Resource [PXP] (on)
[    0.295845] ACPI: PM: Power Resource [USBC] (on)
[    0.298285] ACPI: PM: Power Resource [V0PR] (on)
[    0.298425] ACPI: PM: Power Resource [V1PR] (on)
[    0.298562] ACPI: PM: Power Resource [V2PR] (on)
[    0.303073] ACPI: PM: Power Resource [WRST] (on)
[    0.314641] ACPI: PM: Power Resource [PIN] (off)
[    0.314988] ACPI: PCI Root Bridge [PCI0] (domain 0000 [bus 00-7e])
[    0.314993] acpi PNP0A08:00: _OSC: OS supports [ExtendedConfig ASPM ClockPM Segments MSI HPX-Type3]
[    0.316624] acpi PNP0A08:00: _OSC: platform does not support [AER]
[    0.319709] acpi PNP0A08:00: _OSC: OS now controls [PCIeHotplug SHPCHotplug PME PCIeCapability LTR]
[    0.320512] PCI host bridge to bus 0000:00
[    0.320513] pci_bus 0000:00: root bus resource [io  0x0000-0x0cf7 window]
[    0.320515] pci_bus 0000:00: root bus resource [io  0x0d00-0xffff window]
[    0.320516] pci_bus 0000:00: root bus resource [mem 0x000a0000-0x000bffff window]
[    0.320517] pci_bus 0000:00: root bus resource [mem 0x000c0000-0x000c3fff window]
[    0.320518] pci_bus 0000:00: root bus resource [mem 0x000c4000-0x000c7fff window]
[    0.320518] pci_bus 0000:00: root bus resource [mem 0x000c8000-0x000cbfff window]
[    0.320519] pci_bus 0000:00: root bus resource [mem 0x000cc000-0x000cffff window]
[    0.320520] pci_bus 0000:00: root bus resource [mem 0x000d0000-0x000d3fff window]
[    0.320521] pci_bus 0000:00: root bus resource [mem 0x000d4000-0x000d7fff window]
[    0.320521] pci_bus 0000:00: root bus resource [mem 0x000d8000-0x000dbfff window]
[    0.320522] pci_bus 0000:00: root bus resource [mem 0x000dc000-0x000dffff window]
[    0.320523] pci_bus 0000:00: root bus resource [mem 0x7f800000-0xefffffff window]
[    0.320525] pci_bus 0000:00: root bus resource [mem 0xfc800000-0xfe7fffff window]
[    0.320525] pci_bus 0000:00: root bus resource [bus 00-7e]
[    0.320544] pci 0000:00:00.0: [8086:3ec4] type 00 class 0x060000
[    0.320630] pci 0000:00:01.0: [8086:1901] type 01 class 0x060400
[    0.320660] pci 0000:00:01.0: PME# supported from D0 D3hot D3cold
[    0.320869] pci 0000:00:02.0: [8086:3e9b] type 00 class 0x030000
[    0.320875] pci 0000:00:02.0: reg 0x10: [mem 0xeb000000-0xebffffff 64bit]
[    0.320879] pci 0000:00:02.0: reg 0x18: [mem 0x80000000-0x8fffffff 64bit pref]
[    0.320882] pci 0000:00:02.0: reg 0x20: [io  0x4000-0x403f]
[    0.320894] pci 0000:00:02.0: BAR 2: assigned to efifb
[    0.320999] pci 0000:00:04.0: [8086:1903] type 00 class 0x118000
[    0.321006] pci 0000:00:04.0: reg 0x10: [mem 0xed510000-0xed517fff 64bit]
[    0.321155] pci 0000:00:08.0: [8086:1911] type 00 class 0x088000
[    0.321162] pci 0000:00:08.0: reg 0x10: [mem 0xed528000-0xed528fff 64bit]
[    0.321355] pci 0000:00:12.0: [8086:a379] type 00 class 0x118000
[    0.321388] pci 0000:00:12.0: reg 0x10: [mem 0xed527000-0xed527fff 64bit]
[    0.321691] pci 0000:00:14.0: [8086:a36d] type 00 class 0x0c0330
[    0.321725] pci 0000:00:14.0: reg 0x10: [mem 0xed500000-0xed50ffff 64bit]
[    0.321855] pci 0000:00:14.0: PME# supported from D3hot D3cold
[    0.322013] pci 0000:00:14.2: [8086:a36f] type 00 class 0x050000
[    0.322041] pci 0000:00:14.2: reg 0x10: [mem 0xed51e000-0xed51ffff 64bit]
[    0.322059] pci 0000:00:14.2: reg 0x18: [mem 0xed526000-0xed526fff 64bit]
[    0.322660] pci 0000:00:15.0: [8086:a368] type 00 class 0x0c8000
[    0.323199] pci 0000:00:15.0: reg 0x10: [mem 0x00000000-0x00000fff 64bit]
[    0.326025] pci 0000:00:15.1: [8086:a369] type 00 class 0x0c8000
[    0.326563] pci 0000:00:15.1: reg 0x10: [mem 0x00000000-0x00000fff 64bit]
[    0.329042] pci 0000:00:16.0: [8086:a360] type 00 class 0x078000
[    0.329072] pci 0000:00:16.0: reg 0x10: [mem 0xed523000-0xed523fff 64bit]
[    0.329185] pci 0000:00:16.0: PME# supported from D3hot
[    0.329429] pci 0000:00:17.0: [8086:a353] type 00 class 0x010601
[    0.329474] pci 0000:00:17.0: reg 0x10: [mem 0xed51c000-0xed51dfff]
[    0.329497] pci 0000:00:17.0: reg 0x14: [mem 0xed522000-0xed5220ff]
[    0.329520] pci 0000:00:17.0: reg 0x18: [io  0x4090-0x4097]
[    0.329543] pci 0000:00:17.0: reg 0x1c: [io  0x4080-0x4083]
[    0.329566] pci 0000:00:17.0: reg 0x20: [io  0x4060-0x407f]
[    0.329589] pci 0000:00:17.0: reg 0x24: [mem 0xed521000-0xed5217ff]
[    0.329723] pci 0000:00:17.0: PME# supported from D3hot
[    0.329933] pci 0000:00:1b.0: [8086:a340] type 01 class 0x060400
[    0.330152] pci 0000:00:1b.0: PME# supported from D0 D3hot D3cold
[    0.330196] pci 0000:00:1b.0: PTM enabled (root), 4ns granularity
[    0.330411] pci 0000:00:1c.0: [8086:a338] type 01 class 0x060400
[    0.330599] pci 0000:00:1c.0: PME# supported from D0 D3hot D3cold
[    0.330641] pci 0000:00:1c.0: PTM enabled (root), 4ns granularity
[    0.330852] pci 0000:00:1c.4: [8086:a33c] type 01 class 0x060400
[    0.331036] pci 0000:00:1c.4: PME# supported from D0 D3hot D3cold
[    0.331083] pci 0000:00:1c.4: PTM enabled (root), 4ns granularity
[    0.331291] pci 0000:00:1d.0: [8086:a330] type 01 class 0x060400
[    0.331473] pci 0000:00:1d.0: PME# supported from D0 D3hot D3cold
[    0.331519] pci 0000:00:1d.0: PTM enabled (root), 4ns granularity
[    0.331765] pci 0000:00:1f.0: [8086:a30e] type 00 class 0x060100
[    0.332053] pci 0000:00:1f.3: [8086:a348] type 00 class 0x040380
[    0.332111] pci 0000:00:1f.3: reg 0x10: [mem 0xed518000-0xed51bfff 64bit]
[    0.332185] pci 0000:00:1f.3: reg 0x20: [mem 0xed100000-0xed1fffff 64bit]
[    0.332330] pci 0000:00:1f.3: PME# supported from D3hot D3cold
[    0.332598] pci 0000:00:1f.4: [8086:a323] type 00 class 0x0c0500
[    0.332741] pci 0000:00:1f.4: reg 0x10: [mem 0xed520000-0xed5200ff 64bit]
[    0.332910] pci 0000:00:1f.4: reg 0x20: [io  0xefa0-0xefbf]
[    0.333218] pci 0000:00:1f.5: [8086:a324] type 00 class 0x0c8000
[    0.333242] pci 0000:00:1f.5: reg 0x10: [mem 0xfe010000-0xfe010fff]
[    0.333455] pci 0000:01:00.0: [10de:1f91] type 00 class 0x030200
[    0.333473] pci 0000:01:00.0: reg 0x10: [mem 0xec000000-0xecffffff]
[    0.333487] pci 0000:01:00.0: reg 0x14: [mem 0xc0000000-0xcfffffff 64bit pref]
[    0.333501] pci 0000:01:00.0: reg 0x1c: [mem 0xd0000000-0xd1ffffff 64bit pref]
[    0.333509] pci 0000:01:00.0: reg 0x24: [io  0x3000-0x307f]
[    0.333518] pci 0000:01:00.0: reg 0x30: [mem 0xed000000-0xed07ffff pref]
[    0.333593] pci 0000:01:00.0: PME# supported from D0 D3hot
[    0.333727] pci 0000:00:01.0: PCI bridge to [bus 01]
[    0.333729] pci 0000:00:01.0:   bridge window [io  0x3000-0x3fff]
[    0.333731] pci 0000:00:01.0:   bridge window [mem 0xec000000-0xed0fffff]
[    0.333733] pci 0000:00:01.0:   bridge window [mem 0xc0000000-0xd1ffffff 64bit pref]
[    0.333909] pci 0000:02:00.0: [8086:15da] type 01 class 0x060400
[    0.333995] pci 0000:02:00.0: enabling Extended Tags
[    0.334141] pci 0000:02:00.0: supports D1 D2
[    0.334141] pci 0000:02:00.0: PME# supported from D0 D1 D2 D3hot D3cold
[    0.334345] pci 0000:00:1b.0: PCI bridge to [bus 02-3a]
[    0.334353] pci 0000:00:1b.0:   bridge window [mem 0xd4000000-0xea0fffff]
[    0.334362] pci 0000:00:1b.0:   bridge window [mem 0x90000000-0xb1ffffff 64bit pref]
[    0.334465] pci 0000:03:00.0: [8086:15da] type 01 class 0x060400
[    0.334552] pci 0000:03:00.0: enabling Extended Tags
[    0.334699] pci 0000:03:00.0: supports D1 D2
[    0.334699] pci 0000:03:00.0: PME# supported from D0 D1 D2 D3hot D3cold
[    0.334880] pci 0000:03:01.0: [8086:15da] type 01 class 0x060400
[    0.334967] pci 0000:03:01.0: enabling Extended Tags
[    0.335114] pci 0000:03:01.0: supports D1 D2
[    0.335114] pci 0000:03:01.0: PME# supported from D0 D1 D2 D3hot D3cold
[    0.335291] pci 0000:03:02.0: [8086:15da] type 01 class 0x060400
[    0.335378] pci 0000:03:02.0: enabling Extended Tags
[    0.335519] pci 0000:03:02.0: supports D1 D2
[    0.335520] pci 0000:03:02.0: PME# supported from D0 D1 D2 D3hot D3cold
[    0.335727] pci 0000:02:00.0: PCI bridge to [bus 03-3a]
[    0.335739] pci 0000:02:00.0:   bridge window [mem 0xd4000000-0xea0fffff]
[    0.335748] pci 0000:02:00.0:   bridge window [mem 0x90000000-0xb1ffffff 64bit pref]
[    0.335837] pci 0000:04:00.0: [8086:15d9] type 00 class 0x088000
[    0.335863] pci 0000:04:00.0: reg 0x10: [mem 0xea000000-0xea03ffff]
[    0.335877] pci 0000:04:00.0: reg 0x14: [mem 0xea040000-0xea040fff]
[    0.335960] pci 0000:04:00.0: enabling Extended Tags
[    0.336109] pci 0000:04:00.0: supports D1 D2
[    0.336109] pci 0000:04:00.0: PME# supported from D0 D1 D2 D3hot D3cold
[    0.336292] pci 0000:03:00.0: PCI bridge to [bus 04]
[    0.336304] pci 0000:03:00.0:   bridge window [mem 0xea000000-0xea0fffff]
[    0.336367] pci 0000:03:01.0: PCI bridge to [bus 05-39]
[    0.336379] pci 0000:03:01.0:   bridge window [mem 0xd4000000-0xe9efffff]
[    0.336387] pci 0000:03:01.0:   bridge window [mem 0x90000000-0xb1ffffff 64bit pref]
[    0.336492] pci 0000:3a:00.0: [8086:15db] type 00 class 0x0c0330
[    0.336520] pci 0000:3a:00.0: reg 0x10: [mem 0xe9f00000-0xe9f0ffff]
[    0.336620] pci 0000:3a:00.0: enabling Extended Tags
[    0.336776] pci 0000:3a:00.0: supports D1 D2
[    0.336777] pci 0000:3a:00.0: PME# supported from D0 D1 D2 D3hot D3cold
[    0.336907] pci 0000:3a:00.0: 8.000 Gb/s available PCIe bandwidth, limited by 2.5 GT/s PCIe x4 link at 0000:03:02.0 (capable of 31.504 Gb/s with 8.0 GT/s PCIe x4 link)
[    0.336987] pci 0000:03:02.0: PCI bridge to [bus 3a]
[    0.337000] pci 0000:03:02.0:   bridge window [mem 0xe9f00000-0xe9ffffff]
[    0.337874] pci 0000:3b:00.0: [8086:2723] type 00 class 0x028000
[    0.338529] pci 0000:3b:00.0: reg 0x10: [mem 0xed400000-0xed403fff 64bit]
[    0.341885] pci 0000:3b:00.0: PME# supported from D0 D3hot D3cold
[    0.344322] pci 0000:00:1c.0: PCI bridge to [bus 3b]
[    0.344331] pci 0000:00:1c.0:   bridge window [mem 0xed400000-0xed4fffff]
[    0.344511] pci 0000:3c:00.0: [10ec:525a] type 00 class 0xff0000
[    0.344543] pci 0000:3c:00.0: reg 0x14: [mem 0xed300000-0xed300fff]
[    0.344706] pci 0000:3c:00.0: supports D1 D2
[    0.344706] pci 0000:3c:00.0: PME# supported from D1 D2 D3hot D3cold
[    0.344897] pci 0000:00:1c.4: PCI bridge to [bus 3c]
[    0.344906] pci 0000:00:1c.4:   bridge window [mem 0xed300000-0xed3fffff]
[    0.345092] pci 0000:3d:00.0: [15b7:5006] type 00 class 0x010802
[    0.345126] pci 0000:3d:00.0: reg 0x10: [mem 0xed200000-0xed203fff 64bit]
[    0.345175] pci 0000:3d:00.0: reg 0x20: [mem 0xed204000-0xed2040ff 64bit]
[    0.345493] pci 0000:00:1d.0: PCI bridge to [bus 3d]
[    0.345502] pci 0000:00:1d.0:   bridge window [mem 0xed200000-0xed2fffff]
[    0.347677] ACPI: PCI Interrupt Link [LNKA] (IRQs 3 4 5 6 10 11 12 14 15) *0
[    0.347750] ACPI: PCI Interrupt Link [LNKB] (IRQs 3 4 5 6 10 11 12 14 15) *1
[    0.347820] ACPI: PCI Interrupt Link [LNKC] (IRQs 3 4 5 6 10 11 12 14 15) *0
[    0.347890] ACPI: PCI Interrupt Link [LNKD] (IRQs 3 4 5 6 10 11 12 14 15) *0
[    0.347959] ACPI: PCI Interrupt Link [LNKE] (IRQs 3 4 5 6 10 11 12 14 15) *0
[    0.348028] ACPI: PCI Interrupt Link [LNKF] (IRQs 3 4 5 6 10 11 12 14 15) *0
[    0.348098] ACPI: PCI Interrupt Link [LNKG] (IRQs 3 4 5 6 10 11 12 14 15) *0
[    0.348167] ACPI: PCI Interrupt Link [LNKH] (IRQs 3 4 5 6 10 11 12 14 15) *0
[    0.355224] ACPI: EC: interrupt unblocked
[    0.355225] ACPI: EC: event unblocked
[    0.356523] ACPI: EC: EC_CMD/EC_SC=0x934, EC_DATA=0x930
[    0.356523] ACPI: EC: GPE=0x6e
[    0.356523] ACPI: \_SB_.PCI0.LPCB.ECDV: Boot DSDT EC initialization complete
[    0.356523] ACPI: \_SB_.PCI0.LPCB.ECDV: EC: Used to handle transactions and events
[    0.356538] iommu: Default domain type: Translated 
[    0.356538] pci 0000:00:02.0: vgaarb: setting as boot VGA device
[    0.356538] pci 0000:00:02.0: vgaarb: VGA device added: decodes=io+mem,owns=io+mem,locks=none
[    0.356538] pci 0000:00:02.0: vgaarb: bridge control possible
[    0.356538] vgaarb: loaded
[    0.356632] SCSI subsystem initialized
[    0.356827] libata version 3.00 loaded.
[    0.356827] ACPI: bus type USB registered
[    0.356827] usbcore: registered new interface driver usbfs
[    0.356827] usbcore: registered new interface driver hub
[    0.356827] usbcore: registered new device driver usb
[    0.356827] pps_core: LinuxPPS API ver. 1 registered
[    0.356827] pps_core: Software ver. 5.3.6 - Copyright 2005-2007 Rodolfo Giometti <giometti@linux.it>
[    0.356827] PTP clock support registered
[    0.356834] EDAC MC: Ver: 3.0.0
[    0.357104] Registered efivars operations
[    0.360607] NetLabel: Initializing
[    0.360608] NetLabel:  domain hash size = 128
[    0.360609] NetLabel:  protocols = UNLABELED CIPSOv4 CALIPSO
[    0.360618] NetLabel:  unlabeled traffic allowed by default
[    0.360625] PCI: Using ACPI for IRQ routing
[    0.388692] PCI: pci_cache_line_size set to 64 bytes
[    0.389202] e820: reserve RAM buffer [mem 0x0009e000-0x0009ffff]
[    0.389203] e820: reserve RAM buffer [mem 0x58feb018-0x5bffffff]
[    0.389204] e820: reserve RAM buffer [mem 0x5c5b1000-0x5fffffff]
[    0.389205] e820: reserve RAM buffer [mem 0x67250000-0x67ffffff]
[    0.389205] e820: reserve RAM buffer [mem 0x6c038000-0x6fffffff]
[    0.389206] e820: reserve RAM buffer [mem 0x78e00000-0x7bffffff]
[    0.389207] e820: reserve RAM buffer [mem 0x87c800000-0x87fffffff]
[    0.389209] clocksource: Switched to clocksource tsc-early
[    0.393440] VFS: Disk quotas dquot_6.6.0
[    0.393451] VFS: Dquot-cache hash table entries: 512 (order 0, 4096 bytes)
[    0.393513] AppArmor: AppArmor Filesystem Enabled
[    0.393537] pnp: PnP ACPI init
[    0.393603] system 00:00: [mem 0x40000000-0x403fffff] has been reserved
[    0.393607] system 00:00: Plug and Play ACPI device, IDs PNP0c02 (active)
[    0.393744] system 00:01: [io  0x0680-0x069f] has been reserved
[    0.393746] system 00:01: [io  0x164e-0x164f] has been reserved
[    0.393748] system 00:01: Plug and Play ACPI device, IDs PNP0c02 (active)
[    0.393783] pnp 00:02: Plug and Play ACPI device, IDs PNP0b00 (active)
[    0.393857] system 00:03: [io  0x1854-0x1857] has been reserved
[    0.393859] system 00:03: Plug and Play ACPI device, IDs INT3f0d PNP0c02 (active)
[    0.393964] pnp 00:04: Plug and Play ACPI device, IDs PNP0303 (active)
[    0.393974] pnp 00:05: Plug and Play ACPI device, IDs DLL0905 PNP0f13 (active)
[    0.394115] system 00:06: [mem 0xfed10000-0xfed17fff] has been reserved
[    0.394116] system 00:06: [mem 0xfed18000-0xfed18fff] has been reserved
[    0.394117] system 00:06: [mem 0xfed19000-0xfed19fff] has been reserved
[    0.394118] system 00:06: [mem 0xf0000000-0xf7ffffff] has been reserved
[    0.394119] system 00:06: [mem 0xfed20000-0xfed3ffff] has been reserved
[    0.394120] system 00:06: [mem 0xfed90000-0xfed93fff] could not be reserved
[    0.394121] system 00:06: [mem 0xfed45000-0xfed8ffff] has been reserved
[    0.394123] system 00:06: [mem 0xfee00000-0xfeefffff] could not be reserved
[    0.394125] system 00:06: Plug and Play ACPI device, IDs PNP0c02 (active)
[    0.394309] system 00:07: [io  0x1800-0x18fe] could not be reserved
[    0.394311] system 00:07: [mem 0xfd000000-0xfd69ffff] has been reserved
[    0.394312] system 00:07: [mem 0xfd6c0000-0xfd6cffff] has been reserved
[    0.394313] system 00:07: [mem 0xfd6f0000-0xfdffffff] has been reserved
[    0.394314] system 00:07: [mem 0xfe000000-0xfe01ffff] could not be reserved
[    0.394315] system 00:07: [mem 0xfe200000-0xfe7fffff] has been reserved
[    0.394316] system 00:07: [mem 0xff000000-0xffffffff] has been reserved
[    0.394318] system 00:07: Plug and Play ACPI device, IDs PNP0c02 (active)
[    0.394564] system 00:08: [io  0x2000-0x20fe] has been reserved
[    0.394567] system 00:08: Plug and Play ACPI device, IDs PNP0c02 (active)
[    0.395265] system 00:09: Plug and Play ACPI device, IDs PNP0c02 (active)
[    0.402079] pnp: PnP ACPI: found 10 devices
[    0.407235] clocksource: acpi_pm: mask: 0xffffff max_cycles: 0xffffff, max_idle_ns: 2085701024 ns
[    0.407279] NET: Registered protocol family 2
[    0.407348] tcp_listen_portaddr_hash hash table entries: 16384 (order: 6, 262144 bytes, linear)
[    0.407444] TCP established hash table entries: 262144 (order: 9, 2097152 bytes, linear)
[    0.407618] TCP bind hash table entries: 65536 (order: 8, 1048576 bytes, linear)
[    0.407662] TCP: Hash tables configured (established 262144 bind 65536)
[    0.407738] MPTCP token hash table entries: 32768 (order: 7, 786432 bytes, linear)
[    0.407807] UDP hash table entries: 16384 (order: 7, 524288 bytes, linear)
[    0.407861] UDP-Lite hash table entries: 16384 (order: 7, 524288 bytes, linear)
[    0.407918] NET: Registered protocol family 1
[    0.407921] NET: Registered protocol family 44
[    0.407926] pci 0000:03:01.0: bridge window [io  0x1000-0x0fff] to [bus 05-39] add_size 1000
[    0.407928] pci 0000:02:00.0: bridge window [io  0x1000-0x0fff] to [bus 03-3a] add_size 1000
[    0.407930] pci 0000:00:1b.0: bridge window [io  0x1000-0x0fff] to [bus 02-3a] add_size 2000
[    0.407938] pci 0000:00:15.0: BAR 0: assigned [mem 0x7f800000-0x7f800fff 64bit]
[    0.408209] pci 0000:00:15.1: BAR 0: assigned [mem 0x7f801000-0x7f801fff 64bit]
[    0.408475] pci 0000:00:1b.0: BAR 13: assigned [io  0x5000-0x6fff]
[    0.408477] pci 0000:00:01.0: PCI bridge to [bus 01]
[    0.408478] pci 0000:00:01.0:   bridge window [io  0x3000-0x3fff]
[    0.408480] pci 0000:00:01.0:   bridge window [mem 0xec000000-0xed0fffff]
[    0.408481] pci 0000:00:01.0:   bridge window [mem 0xc0000000-0xd1ffffff 64bit pref]
[    0.408484] pci 0000:02:00.0: BAR 13: assigned [io  0x5000-0x5fff]
[    0.408486] pci 0000:03:01.0: BAR 13: assigned [io  0x5000-0x5fff]
[    0.408487] pci 0000:03:00.0: PCI bridge to [bus 04]
[    0.408497] pci 0000:03:00.0:   bridge window [mem 0xea000000-0xea0fffff]
[    0.408509] pci 0000:03:01.0: PCI bridge to [bus 05-39]
[    0.408512] pci 0000:03:01.0:   bridge window [io  0x5000-0x5fff]
[    0.408518] pci 0000:03:01.0:   bridge window [mem 0xd4000000-0xe9efffff]
[    0.408529] pci 0000:03:01.0:   bridge window [mem 0x90000000-0xb1ffffff 64bit pref]
[    0.408537] pci 0000:03:02.0: PCI bridge to [bus 3a]
[    0.408544] pci 0000:03:02.0:   bridge window [mem 0xe9f00000-0xe9ffffff]
[    0.408556] pci 0000:02:00.0: PCI bridge to [bus 03-3a]
[    0.408559] pci 0000:02:00.0:   bridge window [io  0x5000-0x5fff]
[    0.408565] pci 0000:02:00.0:   bridge window [mem 0xd4000000-0xea0fffff]
[    0.408569] pci 0000:02:00.0:   bridge window [mem 0x90000000-0xb1ffffff 64bit pref]
[    0.408577] pci 0000:00:1b.0: PCI bridge to [bus 02-3a]
[    0.408580] pci 0000:00:1b.0:   bridge window [io  0x5000-0x6fff]
[    0.408586] pci 0000:00:1b.0:   bridge window [mem 0xd4000000-0xea0fffff]
[    0.408591] pci 0000:00:1b.0:   bridge window [mem 0x90000000-0xb1ffffff 64bit pref]
[    0.408600] pci 0000:00:1c.0: PCI bridge to [bus 3b]
[    0.408608] pci 0000:00:1c.0:   bridge window [mem 0xed400000-0xed4fffff]
[    0.408620] pci 0000:00:1c.4: PCI bridge to [bus 3c]
[    0.408627] pci 0000:00:1c.4:   bridge window [mem 0xed300000-0xed3fffff]
[    0.408639] pci 0000:00:1d.0: PCI bridge to [bus 3d]
[    0.408645] pci 0000:00:1d.0:   bridge window [mem 0xed200000-0xed2fffff]
[    0.408658] pci_bus 0000:00: resource 4 [io  0x0000-0x0cf7 window]
[    0.408659] pci_bus 0000:00: resource 5 [io  0x0d00-0xffff window]
[    0.408660] pci_bus 0000:00: resource 6 [mem 0x000a0000-0x000bffff window]
[    0.408661] pci_bus 0000:00: resource 7 [mem 0x000c0000-0x000c3fff window]
[    0.408662] pci_bus 0000:00: resource 8 [mem 0x000c4000-0x000c7fff window]
[    0.408663] pci_bus 0000:00: resource 9 [mem 0x000c8000-0x000cbfff window]
[    0.408663] pci_bus 0000:00: resource 10 [mem 0x000cc000-0x000cffff window]
[    0.408664] pci_bus 0000:00: resource 11 [mem 0x000d0000-0x000d3fff window]
[    0.408665] pci_bus 0000:00: resource 12 [mem 0x000d4000-0x000d7fff window]
[    0.408666] pci_bus 0000:00: resource 13 [mem 0x000d8000-0x000dbfff window]
[    0.408667] pci_bus 0000:00: resource 14 [mem 0x000dc000-0x000dffff window]
[    0.408667] pci_bus 0000:00: resource 15 [mem 0x7f800000-0xefffffff window]
[    0.408668] pci_bus 0000:00: resource 16 [mem 0xfc800000-0xfe7fffff window]
[    0.408669] pci_bus 0000:01: resource 0 [io  0x3000-0x3fff]
[    0.408670] pci_bus 0000:01: resource 1 [mem 0xec000000-0xed0fffff]
[    0.408671] pci_bus 0000:01: resource 2 [mem 0xc0000000-0xd1ffffff 64bit pref]
[    0.408672] pci_bus 0000:02: resource 0 [io  0x5000-0x6fff]
[    0.408672] pci_bus 0000:02: resource 1 [mem 0xd4000000-0xea0fffff]
[    0.408673] pci_bus 0000:02: resource 2 [mem 0x90000000-0xb1ffffff 64bit pref]
[    0.408674] pci_bus 0000:03: resource 0 [io  0x5000-0x5fff]
[    0.408675] pci_bus 0000:03: resource 1 [mem 0xd4000000-0xea0fffff]
[    0.408676] pci_bus 0000:03: resource 2 [mem 0x90000000-0xb1ffffff 64bit pref]
[    0.408676] pci_bus 0000:04: resource 1 [mem 0xea000000-0xea0fffff]
[    0.408677] pci_bus 0000:05: resource 0 [io  0x5000-0x5fff]
[    0.408678] pci_bus 0000:05: resource 1 [mem 0xd4000000-0xe9efffff]
[    0.408679] pci_bus 0000:05: resource 2 [mem 0x90000000-0xb1ffffff 64bit pref]
[    0.408680] pci_bus 0000:3a: resource 1 [mem 0xe9f00000-0xe9ffffff]
[    0.408681] pci_bus 0000:3b: resource 1 [mem 0xed400000-0xed4fffff]
[    0.408681] pci_bus 0000:3c: resource 1 [mem 0xed300000-0xed3fffff]
[    0.408682] pci_bus 0000:3d: resource 1 [mem 0xed200000-0xed2fffff]
[    0.408809] pci 0000:00:02.0: Video device with shadowed ROM at [mem 0x000c0000-0x000dffff]
[    0.409147] pci 0000:02:00.0: CLS mismatch (64 != 128), using 64 bytes
[    0.409234] pci 0000:02:00.0: enabling device (0006 -> 0007)
[    0.409449] Trying to unpack rootfs image as initramfs...
[    0.432203] rootfs image is not initramfs (Decoding failed); looks like an initrd
[    0.437120] Freeing initrd memory: 20436K
[    0.437207] PCI-DMA: Using software bounce buffering for IO (SWIOTLB)
[    0.437208] software IO TLB: mapped [mem 0x0000000063250000-0x0000000067250000] (64MB)
[    0.437460] check: Scanning for low memory corruption every 60 seconds
[    0.437763] Initialise system trusted keyrings
[    0.437770] Key type blacklist registered
[    0.437787] workingset: timestamp_bits=36 max_order=23 bucket_order=0
[    0.438427] zbud: loaded
[    0.438584] squashfs: version 4.0 (2009/01/31) Phillip Lougher
[    0.438652] fuse: init (API version 7.33)
[    0.444386] Key type asymmetric registered
[    0.444388] Asymmetric key parser 'x509' registered
[    0.444392] Block layer SCSI generic (bsg) driver version 0.4 loaded (major 245)
[    0.444409] io scheduler mq-deadline registered
[    0.444663] pcieport 0000:00:01.0: PME: Signaling with IRQ 122
[    0.444761] pcieport 0000:00:1b.0: PME: Signaling with IRQ 123
[    0.444790] pcieport 0000:00:1b.0: pciehp: Slot #20 AttnBtn- PwrCtrl- MRL- AttnInd- PwrInd- HotPlug+ Surprise+ Interlock- NoCompl+ IbPresDis- LLActRep+
[    0.445050] pcieport 0000:00:1c.0: PME: Signaling with IRQ 124
[    0.445273] pcieport 0000:00:1c.4: PME: Signaling with IRQ 125
[    0.445495] pcieport 0000:00:1d.0: PME: Signaling with IRQ 126
[    0.445973] pcieport 0000:03:01.0: enabling device (0006 -> 0007)
[    0.446089] pcieport 0000:03:01.0: pciehp: Slot #1 AttnBtn- PwrCtrl- MRL- AttnInd- PwrInd- HotPlug+ Surprise+ Interlock- NoCompl+ IbPresDis- LLActRep+
[    0.446467] shpchp: Standard Hot Plug PCI Controller Driver version: 0.4
[    0.446501] efifb: probing for efifb
[    0.446516] efifb: showing boot graphics
[    0.446968] efifb: framebuffer at 0x80000000, using 8100k, total 8100k
[    0.446969] efifb: mode is 1920x1080x32, linelength=7680, pages=1
[    0.446970] efifb: scrolling: redraw
[    0.446970] efifb: Truecolor: size=8:8:8:8, shift=24:16:8:0
[    0.446991] fbcon: Deferring console take-over
[    0.446992] fb0: EFI VGA frame buffer device
[    0.449363] ACPI: AC: AC Adapter [AC] (on-line)
[    0.449404] input: Lid Switch as /devices/LNXSYSTM:00/LNXSYBUS:00/PNP0C0D:00/input/input0
[    0.449423] ACPI: button: Lid Switch [LID0]
[    0.449438] input: Power Button as /devices/LNXSYSTM:00/LNXSYBUS:00/PNP0C0C:00/input/input1
[    0.449450] ACPI: button: Power Button [PBTN]
[    0.449464] input: Sleep Button as /devices/LNXSYSTM:00/LNXSYBUS:00/PNP0C0E:00/input/input2
[    0.449472] ACPI: button: Sleep Button [SBTN]
[    0.449577] smpboot: Estimated ratio of average max frequency by base frequency (times 1024): 1654
[    0.452386] thermal LNXTHERM:00: registered as thermal_zone0
[    0.452387] ACPI: thermal: Thermal Zone [THM] (25 C)
[    0.452494] Serial: 8250/16550 driver, 32 ports, IRQ sharing enabled
[    0.453806] hpet_acpi_add: no address or irqs in _CRS
[    0.453832] Linux agpgart interface v0.103
[    0.484897] tpm_tis MSFT0101:00: 2.0 TPM (device-id 0xFC, rev-id 1)
[    0.500436] ACPI: battery: Slot [BAT0] (battery present)
[    0.535454] brd: module loaded
[    0.536892] loop: module loaded
[    0.537102] libphy: Fixed MDIO Bus: probed
[    0.537103] tun: Universal TUN/TAP device driver, 1.6
[    0.537160] PPP generic driver version 2.4.2
[    0.537219] VFIO - User Level meta-driver version: 0.3
[    0.537322] ehci_hcd: USB 2.0 'Enhanced' Host Controller (EHCI) Driver
[    0.537324] ehci-pci: EHCI PCI platform driver
[    0.537332] ehci-platform: EHCI generic platform driver
[    0.537343] ohci_hcd: USB 1.1 'Open' Host Controller (OHCI) Driver
[    0.537344] ohci-pci: OHCI PCI platform driver
[    0.537350] ohci-platform: OHCI generic platform driver
[    0.537355] uhci_hcd: USB Universal Host Controller Interface driver
[    0.537552] xhci_hcd 0000:00:14.0: xHCI Host Controller
[    0.537558] xhci_hcd 0000:00:14.0: new USB bus registered, assigned bus number 1
[    0.538646] xhci_hcd 0000:00:14.0: hcc params 0x200077c1 hci version 0x110 quirks 0x0000000000009810
[    0.538821] usb usb1: New USB device found, idVendor=1d6b, idProduct=0002, bcdDevice= 5.12
[    0.538823] usb usb1: New USB device strings: Mfr=3, Product=2, SerialNumber=1
[    0.538824] usb usb1: Product: xHCI Host Controller
[    0.538825] usb usb1: Manufacturer: Linux 5.12.0 xhci-hcd
[    0.538826] usb usb1: SerialNumber: 0000:00:14.0
[    0.538919] hub 1-0:1.0: USB hub found
[    0.538935] hub 1-0:1.0: 16 ports detected
[    0.540265] xhci_hcd 0000:00:14.0: xHCI Host Controller
[    0.540268] xhci_hcd 0000:00:14.0: new USB bus registered, assigned bus number 2
[    0.540270] xhci_hcd 0000:00:14.0: Host supports USB 3.1 Enhanced SuperSpeed
[    0.540296] usb usb2: New USB device found, idVendor=1d6b, idProduct=0003, bcdDevice= 5.12
[    0.540298] usb usb2: New USB device strings: Mfr=3, Product=2, SerialNumber=1
[    0.540299] usb usb2: Product: xHCI Host Controller
[    0.540300] usb usb2: Manufacturer: Linux 5.12.0 xhci-hcd
[    0.540301] usb usb2: SerialNumber: 0000:00:14.0
[    0.540374] hub 2-0:1.0: USB hub found
[    0.540391] hub 2-0:1.0: 10 ports detected
[    0.540702] usb: port power management may be unreliable
[    0.541301] xhci_hcd 0000:3a:00.0: xHCI Host Controller
[    0.541304] xhci_hcd 0000:3a:00.0: new USB bus registered, assigned bus number 3
[    0.542469] xhci_hcd 0000:3a:00.0: hcc params 0x200077c1 hci version 0x110 quirks 0x0000000200009810
[    0.542711] usb usb3: New USB device found, idVendor=1d6b, idProduct=0002, bcdDevice= 5.12
[    0.542713] usb usb3: New USB device strings: Mfr=3, Product=2, SerialNumber=1
[    0.542714] usb usb3: Product: xHCI Host Controller
[    0.542715] usb usb3: Manufacturer: Linux 5.12.0 xhci-hcd
[    0.542716] usb usb3: SerialNumber: 0000:3a:00.0
[    0.542811] hub 3-0:1.0: USB hub found
[    0.542822] hub 3-0:1.0: 2 ports detected
[    0.543195] xhci_hcd 0000:3a:00.0: xHCI Host Controller
[    0.543198] xhci_hcd 0000:3a:00.0: new USB bus registered, assigned bus number 4
[    0.543199] xhci_hcd 0000:3a:00.0: Host supports USB 3.1 Enhanced SuperSpeed
[    0.543226] usb usb4: New USB device found, idVendor=1d6b, idProduct=0003, bcdDevice= 5.12
[    0.543227] usb usb4: New USB device strings: Mfr=3, Product=2, SerialNumber=1
[    0.543229] usb usb4: Product: xHCI Host Controller
[    0.543230] usb usb4: Manufacturer: Linux 5.12.0 xhci-hcd
[    0.543230] usb usb4: SerialNumber: 0000:3a:00.0
[    0.543320] hub 4-0:1.0: USB hub found
[    0.543332] hub 4-0:1.0: 2 ports detected
[    0.543586] i8042: PNP: PS/2 Controller [PNP0303:PS2K,PNP0f13:PS2M] at 0x60,0x64 irq 1,12
[    0.543922] i8042: Warning: Keylock active
[    0.545776] serio: i8042 KBD port at 0x60,0x64 irq 1
[    0.545780] serio: i8042 AUX port at 0x60,0x64 irq 12
[    0.545954] mousedev: PS/2 mouse device common for all mice
[    0.546295] rtc_cmos 00:02: RTC can wake from S4
[    0.547838] rtc_cmos 00:02: registered as rtc0
[    0.548229] rtc_cmos 00:02: setting system clock to 2021-05-09T04:15:47 UTC (1620533747)
[    0.548242] rtc_cmos 00:02: alarms up to one month, y3k, 242 bytes nvram
[    0.548247] i2c /dev entries driver
[    0.548561] device-mapper: uevent: version 1.0.3
[    0.548644] device-mapper: ioctl: 4.44.0-ioctl (2021-02-01) initialised: dm-devel@redhat.com
[    0.548659] platform eisa.0: Probing EISA bus 0
[    0.548661] platform eisa.0: EISA: Cannot allocate resource for mainboard
[    0.548662] platform eisa.0: Cannot allocate resource for EISA slot 1
[    0.548663] platform eisa.0: Cannot allocate resource for EISA slot 2
[    0.548664] platform eisa.0: Cannot allocate resource for EISA slot 3
[    0.548665] platform eisa.0: Cannot allocate resource for EISA slot 4
[    0.548666] platform eisa.0: Cannot allocate resource for EISA slot 5
[    0.548667] platform eisa.0: Cannot allocate resource for EISA slot 6
[    0.548668] platform eisa.0: Cannot allocate resource for EISA slot 7
[    0.548669] platform eisa.0: Cannot allocate resource for EISA slot 8
[    0.548670] platform eisa.0: EISA: Detected 0 cards
[    0.548672] intel_pstate: Intel P-state driver initializing
[    0.549773] intel_pstate: Disabling energy efficiency optimization
[    0.549774] intel_pstate: HWP enabled
[    0.549896] ledtrig-cpu: registered to indicate activity on CPUs
[    0.549899] EFI Variables Facility v0.08 2004-May-17
[    0.614278] intel_pmc_core INT33A1:00:  initialized
[    0.614325] drop_monitor: Initializing network drop monitor service
[    0.614403] NET: Registered protocol family 10
[    0.618405] Segment Routing with IPv6
[    0.618406] RPL Segment Routing with IPv6
[    0.618417] NET: Registered protocol family 17
[    0.618516] Key type dns_resolver registered
[    0.619314] microcode: sig=0x906ea, pf=0x20, revision=0xde
[    0.619680] microcode: Microcode Update Driver: v2.2.
[    0.619683] IPI shorthand broadcast: enabled
[    0.619690] sched_clock: Marking stable (606878691, 12800179)->(632470741, -12791871)
[    0.619912] registered taskstats version 1
[    0.619919] Loading compiled-in X.509 certificates
[    0.622306] Loaded X.509 cert 'Build time autogenerated kernel key: f7f21c9e67e25627b3a92fffce278fc65d915c68'
[    0.622498] zswap: loaded using pool lzo/zbud
[    0.622795] Key type ._fscrypt registered
[    0.622796] Key type .fscrypt registered
[    0.622797] Key type fscrypt-provisioning registered
[    0.622829] Key type trusted registered
[    0.624473] Key type encrypted registered
[    0.624474] AppArmor: AppArmor sha1 policy hashing enabled
[    0.625489] PM:   Magic number: 5:809:261
[    0.625530] acpi device:6d: hash matches
[    0.625554] memory memory131: hash matches
[    0.625702] RAS: Correctable Errors collector initialized.
[    0.626623] Freeing unused decrypted memory: 2044K
[    0.626935] Freeing unused kernel image (initmem) memory: 2336K
[    0.744936] Write protecting the kernel read-only data: 22528k
[    0.745468] Freeing unused kernel image (text/rodata gap) memory: 2036K
[    0.745761] Freeing unused kernel image (rodata/data gap) memory: 1152K
[    0.781752] x86/mm: Checked W+X mappings: passed, no W+X pages found.
[    0.781753] x86/mm: Checking user space page tables
[    0.815595] x86/mm: Checked W+X mappings: passed, no W+X pages found.
[    0.815598] Run /init as init process
[    0.815599]   with arguments:
[    0.815600]     /init
[    0.815600]     splash
[    0.815601]   with environment:
[    0.815601]     HOME=/
[    0.815602]     TERM=linux
[    0.815602]     BOOT_IMAGE=/boot/vmlinuz-5.12.0
[    0.876593] usb 1-4: new full-speed USB device number 2 using xhci_hcd
[    0.898783] ahci 0000:00:17.0: version 3.0
[    0.899447] ahci 0000:00:17.0: AHCI 0001.0301 32 slots 1 ports 6 Gbps 0x4 impl SATA mode
[    0.899451] ahci 0000:00:17.0: flags: 64bit ncq sntf pm clo only pio slum part ems deso sadm sds apst 
[    0.899783] intel-lpss 0000:00:15.0: enabling device (0000 -> 0002)
[    0.900102] idma64 idma64.0: Found Intel integrated DMA 64-bit
[    0.900113] rtsx_pci 0000:3c:00.0: enabling device (0000 -> 0002)
[    0.900161] scsi host0: ahci
[    0.900297] scsi host1: ahci
[    0.900368] scsi host2: ahci
[    0.900397] ata1: DUMMY
[    0.900398] ata2: DUMMY
[    0.900404] ata3: SATA max UDMA/133 abar m2048@0xed521000 port 0xed521200 irq 132
[    0.901530] i801_smbus 0000:00:1f.4: SPD Write Disable is set
[    0.901607] i801_smbus 0000:00:1f.4: SMBus using PCI interrupt
[    0.902152] nvme nvme0: pci function 0000:3d:00.0
[    0.911314] rtsx_pci 0000:3c:00.0: Unbalanced pm_runtime_enable!
[    0.914683] nvme nvme0: 12/0/0 default/read/poll queues
[    0.917341]  nvme0n1: p1 p2 p3 p4 p5 p6 p7 p8
[    0.929758] intel-lpss 0000:00:15.1: enabling device (0000 -> 0002)
[    0.930024] idma64 idma64.1: Found Intel integrated DMA 64-bit
[    0.936787] i801_smbus 0000:00:1f.4: Accelerometer lis3lv02d is present on SMBus but its address is unknown, skipping registration
[    0.936789] i2c i2c-0: 2/2 memory slots populated (from DMI)
[    0.937272] i2c i2c-0: Successfully instantiated SPD at 0x50
[    0.956749] atkbd serio0: Failed to enable keyboard on isa0060/serio0
[    0.956770] fbcon: Taking over console
[    0.956795] input: AT Translated Set 2 keyboard as /devices/platform/i8042/serio0/input/input3
[    0.957131] Console: switching to colour frame buffer device 240x67
[    1.028431] usb 1-4: New USB device found, idVendor=8087, idProduct=0029, bcdDevice= 0.01
[    1.028434] usb 1-4: New USB device strings: Mfr=0, Product=0, SerialNumber=0
[    1.156925] usb 1-7: new full-speed USB device number 3 using xhci_hcd
[    1.223555] ata3: SATA link down (SStatus 4 SControl 300)
[    1.308688] usb 1-7: New USB device found, idVendor=27c6, idProduct=5395, bcdDevice= 1.00
[    1.308691] usb 1-7: New USB device strings: Mfr=1, Product=2, SerialNumber=3
[    1.308692] usb 1-7: Product: Goodix Fingerprint Device 
[    1.308693] usb 1-7: Manufacturer: HTMicroelectronics
[    1.308694] usb 1-7: SerialNumber: HTK32
[    1.437017] usb 1-12: new high-speed USB device number 4 using xhci_hcd
[    1.465019] tsc: Refined TSC clocksource calibration: 2592.000 MHz
[    1.465025] clocksource: tsc: mask: 0xffffffffffffffff max_cycles: 0x255cb6cc5db, max_idle_ns: 440795203504 ns
[    1.465073] clocksource: Switched to clocksource tsc
[    1.603082] usb 1-12: New USB device found, idVendor=0c45, idProduct=6d13, bcdDevice=92.19
[    1.603085] usb 1-12: New USB device strings: Mfr=2, Product=1, SerialNumber=0
[    1.603086] usb 1-12: Product: Integrated_Webcam_HD
[    1.603087] usb 1-12: Manufacturer: Sonix Technology Co., Ltd.
[    1.683520] EXT4-fs (nvme0n1p7): mounted filesystem with ordered data mode. Opts: (null). Quota mode: none.
[    1.760662] systemd[1]: Inserted module 'autofs4'
[    1.774968] psmouse serio1: synaptics: queried max coordinates: x [..5664], y [..4646]
[    1.807967] psmouse serio1: synaptics: queried min coordinates: x [1278..], y [1206..]
[    1.807969] psmouse serio1: synaptics: The touchpad can support a better bus than the too old PS/2 protocol. Make sure MOUSE_PS2_SYNAPTICS_SMBUS and RMI4_SMB are enabled to get a better touchpad experience.
[    1.871440] psmouse serio1: synaptics: Touchpad model: 1, fw: 8.2, id: 0x1e2b1, caps: 0xf00123/0x840300/0x12e800/0x0, board id: 3125, fw id: 2378871
[    1.906847] systemd[1]: systemd 245.4-4ubuntu3.6 running in system mode. (+PAM +AUDIT +SELINUX +IMA +APPARMOR +SMACK +SYSVINIT +UTMP +LIBCRYPTSETUP +GCRYPT +GNUTLS +ACL +XZ +LZ4 +SECCOMP +BLKID +ELFUTILS +KMOD +IDN2 -IDN +PCRE2 default-hierarchy=hybrid)
[    1.910124] input: SynPS/2 Synaptics TouchPad as /devices/platform/i8042/serio1/input/input6
[    1.924956] systemd[1]: Detected architecture x86-64.
[    1.941609] systemd[1]: Set hostname to <paulz-xps-15>.
[    2.066149] systemd[1]: Created slice Virtual Machine and Container Slice.
[    2.066395] systemd[1]: Created slice system-modprobe.slice.
[    2.066515] systemd[1]: Created slice system-systemd\x2dfsck.slice.
[    2.066650] systemd[1]: Created slice User and Session Slice.
[    2.066689] systemd[1]: Started Forward Password Requests to Wall Directory Watch.
[    2.066711] systemd[1]: Condition check resulted in Arbitrary Executable File Formats File System Automount Point being skipped.
[    2.066738] systemd[1]: Reached target User and Group Name Lookups.
[    2.066754] systemd[1]: Reached target Slices.
[    2.066768] systemd[1]: Reached target Libvirt guests shutdown.
[    2.066812] systemd[1]: Listening on Device-mapper event daemon FIFOs.
[    2.066870] systemd[1]: Listening on LVM2 poll daemon socket.
[    2.067253] systemd[1]: Listening on multipathd control socket.
[    2.069441] systemd[1]: Listening on RPCbind Server Activation Socket.
[    2.069532] systemd[1]: Listening on Syslog Socket.
[    2.069596] systemd[1]: Listening on fsck to fsckd communication Socket.
[    2.069640] systemd[1]: Listening on initctl Compatibility Named Pipe.
[    2.069753] systemd[1]: Listening on Journal Audit Socket.
[    2.069806] systemd[1]: Listening on Journal Socket (/dev/log).
[    2.069870] systemd[1]: Listening on Journal Socket.
[    2.069934] systemd[1]: Listening on udev Control Socket.
[    2.069976] systemd[1]: Listening on udev Kernel Socket.
[    2.070480] systemd[1]: Mounting Huge Pages File System...
[    2.071004] systemd[1]: Mounting POSIX Message Queue File System...
[    2.071479] systemd[1]: Mounting RPC Pipe File System...
[    2.072071] systemd[1]: Mounting Kernel Debug File System...
[    2.072680] systemd[1]: Mounting Kernel Trace File System...
[    2.073844] systemd[1]: Starting Journal Service...
[    2.074711] systemd[1]: Starting Set the console keyboard layout...
[    2.075298] systemd[1]: Starting Create list of static device nodes for the current kernel...
[    2.075848] systemd[1]: Starting Monitoring of LVM2 mirrors, snapshots etc. using dmeventd or progress polling...
[    2.076447] systemd[1]: Starting Load Kernel Module drm...
[    2.076878] systemd[1]: Condition check resulted in Set Up Additional Binary Formats being skipped.
[    2.076914] systemd[1]: Condition check resulted in File System Check on Root Device being skipped.
[    2.077997] systemd[1]: Starting Load Kernel Modules...
[    2.078596] systemd[1]: Starting Remount Root and Kernel File Systems...
[    2.079240] systemd[1]: Starting udev Coldplug all Devices...
[    2.080053] systemd[1]: Starting Uncomplicated firewall...
[    2.081464] systemd[1]: Mounted Huge Pages File System.
[    2.081570] systemd[1]: Mounted POSIX Message Queue File System.
[    2.082345] systemd[1]: Mounted Kernel Debug File System.
[    2.082444] systemd[1]: Mounted Kernel Trace File System.
[    2.084693] systemd[1]: Finished Create list of static device nodes for the current kernel.
[    2.086665] systemd[1]: Finished Uncomplicated firewall.
[    2.091120] EXT4-fs (nvme0n1p7): re-mounted. Opts: errors=remount-ro. Quota mode: none.
[    2.092096] systemd[1]: Finished Remount Root and Kernel File Systems.
[    2.092409] systemd[1]: Condition check resulted in Rebuild Hardware Database being skipped.
[    2.092435] systemd[1]: Condition check resulted in Platform Persistent Storage Archival being skipped.
[    2.092782] RPC: Registered named UNIX socket transport module.
[    2.092783] RPC: Registered udp transport module.
[    2.092784] RPC: Registered tcp transport module.
[    2.092785] RPC: Registered tcp NFSv4.1 backchannel transport module.
[    2.093118] systemd[1]: Starting Load/Save Random Seed...
[    2.093710] systemd[1]: Starting Create System Users...
[    2.094637] systemd[1]: Mounted RPC Pipe File System.
[    2.094868] systemd[1]: modprobe@drm.service: Succeeded.
[    2.095196] systemd[1]: Finished Load Kernel Module drm.
[    2.095240] lp: driver loaded but no devices found
[    2.099821] ppdev: user-space parallel port driver
[    2.108230] systemd[1]: Finished Create System Users.
[    2.108601] systemd[1]: Finished Load/Save Random Seed.
[    2.109276] systemd[1]: Starting Create Static Device Nodes in /dev...
[    2.119755] systemd[1]: Finished Create Static Device Nodes in /dev.
[    2.120912] systemd[1]: Starting udev Kernel Device Manager...
[    2.133729] systemd[1]: Finished Load Kernel Modules.
[    2.134359] systemd[1]: Mounting FUSE Control File System...
[    2.134981] systemd[1]: Mounting Kernel Configuration File System...
[    2.135774] systemd[1]: Starting Apply Kernel Variables...
[    2.136925] systemd[1]: Mounted FUSE Control File System.
[    2.136996] systemd[1]: Mounted Kernel Configuration File System.
[    2.143520] systemd[1]: Finished Set the console keyboard layout.
[    2.144547] systemd[1]: Finished Apply Kernel Variables.
[    2.152283] systemd[1]: Started Journal Service.
[    2.157751] systemd-journald[379]: Received client request to flush runtime journal.
[    2.244740] acpi PNP0C14:04: duplicate WMI GUID 05901221-D566-11D1-B2F0-00A0C9062910 (first instance was on PNP0C14:03)
[    2.244896] input: Intel HID events as /devices/platform/INT33D5:00/input/input7
[    2.244904] wmi_bus wmi_bus-PNP0C14:05: WQBC data block query control method not found
[    2.244906] acpi PNP0C14:05: duplicate WMI GUID 05901221-D566-11D1-B2F0-00A0C9062910 (first instance was on PNP0C14:03)
[    2.245008] intel-hid INT33D5:00: platform supports 5 button array
[    2.245029] input: Intel HID 5 button array as /devices/platform/INT33D5:00/input/input8
[    2.250019] acpi PNP0C14:06: duplicate WMI GUID 05901221-D566-11D1-B2F0-00A0C9062910 (first instance was on PNP0C14:03)
[    2.253014] acpi PNP0C14:07: duplicate WMI GUID 05901221-D566-11D1-B2F0-00A0C9062910 (first instance was on PNP0C14:03)
[    2.288820] mei_me 0000:00:16.0: enabling device (0000 -> 0002)
[    2.297238] proc_thermal 0000:00:04.0: enabling device (0000 -> 0002)
[    2.308828] mc: Linux media interface: v0.10
[    2.310137] usbcore: registered new interface driver cdc_acm
[    2.310139] cdc_acm: USB Abstract Control Model driver for USB modems and ISDN adapters
[    2.315729] videodev: Linux video capture interface: v2.00
[    2.321176] Bluetooth: Core ver 2.22
[    2.321190] NET: Registered protocol family 31
[    2.321192] Bluetooth: HCI device and connection manager initialized
[    2.321194] Bluetooth: HCI socket layer initialized
[    2.321196] Bluetooth: L2CAP socket layer initialized
[    2.321199] Bluetooth: SCO socket layer initialized
[    2.327843] cfg80211: Loading compiled-in X.509 certificates for regulatory database
[    2.333856] cfg80211: Loaded X.509 cert 'sforshee: 00b28ddf47aef9cea7'
[    2.338341] proc_thermal 0000:00:04.0: Creating sysfs group for PROC_THERMAL_PCI
[    2.338389] intel_rapl_common: Found RAPL domain package
[    2.338391] intel_rapl_common: Found RAPL domain dram
[    2.338704] usb 1-12: Found UVC 1.00 device Integrated_Webcam_HD (0c45:6d13)
[    2.341659] usbcore: registered new interface driver btusb
[    2.345567] Bluetooth: hci0: Firmware revision 0.0 build 121 week 36 2020
[    2.346423] Intel(R) Wireless WiFi driver for Linux
[    2.346634] iwlwifi 0000:3b:00.0: enabling device (0000 -> 0002)
[    2.350456] input: Integrated_Webcam_HD: Integrate as /devices/pci0000:00/0000:00:14.0/usb1/1-12/1-12:1.0/input/input9
[    2.350531] usbcore: registered new interface driver uvcvideo
[    2.355587] iwlwifi 0000:3b:00.0: Direct firmware load for iwlwifi-cc-a0-62.ucode failed with error -2
[    2.355712] iwlwifi 0000:3b:00.0: Direct firmware load for iwlwifi-cc-a0-61.ucode failed with error -2
[    2.355723] iwlwifi 0000:3b:00.0: Direct firmware load for iwlwifi-cc-a0-60.ucode failed with error -2
[    2.355732] iwlwifi 0000:3b:00.0: Direct firmware load for iwlwifi-cc-a0-59.ucode failed with error -2
[    2.355740] iwlwifi 0000:3b:00.0: Direct firmware load for iwlwifi-cc-a0-58.ucode failed with error -2
[    2.355748] iwlwifi 0000:3b:00.0: Direct firmware load for iwlwifi-cc-a0-57.ucode failed with error -2
[    2.355801] iwlwifi 0000:3b:00.0: Direct firmware load for iwlwifi-cc-a0-56.ucode failed with error -2
[    2.357327] iwlwifi 0000:3b:00.0: api flags index 2 larger than supported by driver
[    2.357343] iwlwifi 0000:3b:00.0: TLV_FW_FSEQ_VERSION: FSEQ Version: 89.3.35.22
[    2.357347] iwlwifi 0000:3b:00.0: Found debug destination: EXTERNAL_DRAM
[    2.357349] iwlwifi 0000:3b:00.0: Found debug configuration: 0
[    2.357565] iwlwifi 0000:3b:00.0: loaded firmware version 55.d9698065.0 cc-a0-55.ucode op_mode iwlmvm
[    2.370196] checking generic (80000000 7e9000) vs hw (eb000000 1000000)
[    2.370200] checking generic (80000000 7e9000) vs hw (80000000 10000000)
[    2.370202] fb0: switching to inteldrmfb from EFI VGA
[    2.370269] Console: switching to colour dummy device 80x25
[    2.370310] i915 0000:00:02.0: vgaarb: deactivate vga console
[    2.370458] MXM: GUID detected in BIOS
[    2.370523] ACPI Warning: \_SB.PCI0.GFX0._DSM: Argument #4 type mismatch - Found [Buffer], ACPI requires [Package] (20210105/nsarguments-61)
[    2.370663] ACPI Warning: \_SB.PCI0.PEG0.PEGP._DSM: Argument #4 type mismatch - Found [Buffer], ACPI requires [Package] (20210105/nsarguments-61)
[    2.371301] pci 0000:01:00.0: optimus capabilities: enabled, status dynamic power, hda bios codec supported
[    2.371361] VGA switcheroo: detected Optimus DSM method \_SB_.PCI0.PEG0.PEGP handle
[    2.371362] nouveau: detected PR support, will not use DSM
[    2.371392] nouveau 0000:01:00.0: enabling device (0000 -> 0003)
[    2.371568] nouveau 0000:01:00.0: NVIDIA TU117 (167000a1)
[    2.374345] RAPL PMU: API unit is 2^-32 Joules, 5 fixed counters, 655360 ms ovfl timer
[    2.374347] RAPL PMU: hw unit of domain pp0-core 2^-14 Joules
[    2.374347] RAPL PMU: hw unit of domain package 2^-14 Joules
[    2.374348] RAPL PMU: hw unit of domain dram 2^-14 Joules
[    2.374348] RAPL PMU: hw unit of domain pp1-gpu 2^-14 Joules
[    2.374349] RAPL PMU: hw unit of domain psys 2^-14 Joules
[    2.376391] i915 0000:00:02.0: vgaarb: changed VGA decodes: olddecodes=io+mem,decodes=io+mem:owns=io+mem
[    2.380286] i915 0000:00:02.0: [drm] Finished loading DMC firmware i915/kbl_dmc_ver1_04.bin (v1.4)
[    2.380818] cryptd: max_cpu_qlen set to 1000
[    2.388252] AVX2 version of gcm_enc/dec engaged.
[    2.388293] AES CTR mode by8 optimization enabled
[    2.390718] iwlwifi 0000:3b:00.0: Detected Intel(R) Wi-Fi 6 AX200 160MHz, REV=0x340
[    2.392948] snd_hda_intel 0000:00:1f.3: DSP detected with PCI class/subclass/prog-if info 0x040380
[    2.392988] snd_hda_intel 0000:00:1f.3: enabling device (0000 -> 0002)
[    2.400960] thermal thermal_zone12: failed to read out thermal zone (-61)
[    2.422558] Bluetooth: hci0: MSFT filter_enable is already on
[    2.490630] input: Dell WMI hotkeys as /devices/platform/PNP0C14:05/wmi_bus/wmi_bus-PNP0C14:05/9DBB5994-A997-11DA-B012-B622A1EF5492/input/input10
[    2.506819] intel_rapl_common: Found RAPL domain package
[    2.506822] intel_rapl_common: Found RAPL domain core
[    2.506822] intel_rapl_common: Found RAPL domain uncore
[    2.506823] intel_rapl_common: Found RAPL domain dram
[    2.506824] intel_rapl_common: Found RAPL domain psys
[    2.512864] nouveau 0000:01:00.0: bios: version 90.17.1c.40.4b
[    2.525384] mei_hdcp 0000:00:16.0-b638ab7e-94e2-4ea2-a552-d1c54b627f04: bound 0000:00:02.0 (ops i915_hdcp_component_ops [i915])
[    2.539087] nouveau 0000:01:00.0: pmu: firmware unavailable
[    2.542724] nouveau 0000:01:00.0: fb: 4096 MiB GDDR5
[    2.590724] iwlwifi 0000:3b:00.0: base HW address: 34:c9:3d:da:8f:db
[    2.601949] [TTM] Zone  kernel: Available graphics memory: 16239356 KiB
[    2.601951] [TTM] Zone   dma32: Available graphics memory: 2097152 KiB
[    2.601958] nouveau 0000:01:00.0: DRM: VRAM: 4096 MiB
[    2.601960] nouveau 0000:01:00.0: DRM: GART: 536870912 MiB
[    2.601962] nouveau 0000:01:00.0: DRM: BIT table 'A' not found
[    2.601963] nouveau 0000:01:00.0: DRM: BIT table 'L' not found
[    2.601963] nouveau 0000:01:00.0: DRM: Pointer to TMDS table not found
[    2.601964] nouveau 0000:01:00.0: DRM: DCB version 4.1
[    2.607058] nouveau 0000:01:00.0: DRM: MM: using COPY for buffer copies
[    2.607927] [drm] Initialized nouveau 1.3.1 20120801 for 0000:01:00.0 on minor 1
[    2.607930] nouveau 0000:01:00.0: DRM: Disabling PCI power management to avoid bug
[    2.613956] iwlwifi 0000:3b:00.0 wlp59s0: renamed from wlan0
[    2.632612] Adding 31250428k swap on /dev/nvme0n1p8.  Priority:-2 extents:1 across:31250428k SSFS
[    3.560180] [drm] Initialized i915 1.6.0 20201103 for 0000:00:02.0 on minor 0
[    3.570287] ACPI: video: Video Device [GFX0] (multi-head: yes  rom: no  post: no)
[    3.615494] input: Video Bus as /devices/LNXSYSTM:00/LNXSYBUS:00/PNP0A08:00/LNXVIDEO:00/input/input11
[    3.615634] ACPI: video: Video Device [PEGP] (multi-head: no  rom: yes  post: no)
[    3.615670] input: Video Bus as /devices/LNXSYSTM:00/LNXSYBUS:00/PNP0A08:00/device:0b/LNXVIDEO:01/input/input12
[    3.615896] snd_hda_intel 0000:00:1f.3: bound 0000:00:02.0 (ops i915_audio_component_bind_ops [i915])
[    3.616096] vga_switcheroo: enabled
[    3.623457] fbcon: i915drmfb (fb0) is primary device
[    3.636710] Console: switching to colour frame buffer device 240x67
[    3.655891] i915 0000:00:02.0: [drm] fb0: i915drmfb frame buffer device
[    3.715647] snd_hda_codec_realtek hdaudioC0D0: autoconfig for ALC3266: line_outs=1 (0x17/0x0/0x0/0x0/0x0) type:speaker
[    3.715650] snd_hda_codec_realtek hdaudioC0D0:    speaker_outs=0 (0x0/0x0/0x0/0x0/0x0)
[    3.715651] snd_hda_codec_realtek hdaudioC0D0:    hp_outs=1 (0x21/0x0/0x0/0x0/0x0)
[    3.715652] snd_hda_codec_realtek hdaudioC0D0:    mono: mono_out=0x0
[    3.715653] snd_hda_codec_realtek hdaudioC0D0:    inputs:
[    3.715654] snd_hda_codec_realtek hdaudioC0D0:      Headset Mic=0x18
[    3.715654] snd_hda_codec_realtek hdaudioC0D0:      Headphone Mic=0x1a
[    3.715655] snd_hda_codec_realtek hdaudioC0D0:      Internal Mic=0x12
[    3.779414] input: HDA Intel PCH Headphone Mic as /devices/pci0000:00/0000:00:1f.3/sound/card0/input13
[    3.779495] input: HDA Intel PCH HDMI/DP,pcm=3 as /devices/pci0000:00/0000:00:1f.3/sound/card0/input14
[    3.779544] input: HDA Intel PCH HDMI/DP,pcm=7 as /devices/pci0000:00/0000:00:1f.3/sound/card0/input15
[    3.779601] input: HDA Intel PCH HDMI/DP,pcm=8 as /devices/pci0000:00/0000:00:1f.3/sound/card0/input16
[    3.779665] input: HDA Intel PCH HDMI/DP,pcm=9 as /devices/pci0000:00/0000:00:1f.3/sound/card0/input17
[    3.779717] input: HDA Intel PCH HDMI/DP,pcm=10 as /devices/pci0000:00/0000:00:1f.3/sound/card0/input18
[    6.074285] loop0: detected capacity change from 0 to 284488
[    6.104885] loop1: detected capacity change from 0 to 284488
[    6.141248] loop2: detected capacity change from 0 to 113592
[    6.189155] loop3: detected capacity change from 0 to 333552
[    6.217225] loop4: detected capacity change from 0 to 448496
[    6.245149] loop5: detected capacity change from 0 to 133320
[    6.273164] loop6: detected capacity change from 0 to 104536
[    6.321217] loop7: detected capacity change from 0 to 66096
[    6.389618] loop8: detected capacity change from 0 to 132648
[    6.437450] loop9: detected capacity change from 0 to 227144
[    6.513650] loop10: detected capacity change from 0 to 66096
[    6.556971] loop11: detected capacity change from 0 to 104496
[    6.625218] loop12: detected capacity change from 0 to 113560
[    6.689500] loop13: detected capacity change from 0 to 446248
[    6.741991] audit: type=1400 audit(1620533753.688:2): apparmor="STATUS" operation="profile_load" profile="unconfined" name="ippusbxd" pid=836 comm="apparmor_parser"
[    6.741995] audit: type=1400 audit(1620533753.688:3): apparmor="STATUS" operation="profile_load" profile="unconfined" name="libreoffice-xpdfimport" pid=830 comm="apparmor_parser"
[    6.741996] audit: type=1400 audit(1620533753.688:4): apparmor="STATUS" operation="profile_load" profile="unconfined" name="lsb_release" pid=827 comm="apparmor_parser"
[    6.741998] audit: type=1400 audit(1620533753.688:5): apparmor="STATUS" operation="profile_load" profile="unconfined" name="nvidia_modprobe" pid=829 comm="apparmor_parser"
[    6.741999] audit: type=1400 audit(1620533753.688:6): apparmor="STATUS" operation="profile_load" profile="unconfined" name="nvidia_modprobe//kmod" pid=829 comm="apparmor_parser"
[    6.742001] audit: type=1400 audit(1620533753.688:7): apparmor="STATUS" operation="profile_load" profile="unconfined" name="libvirtd" pid=840 comm="apparmor_parser"
[    6.742002] audit: type=1400 audit(1620533753.688:8): apparmor="STATUS" operation="profile_load" profile="unconfined" name="libvirtd//qemu_bridge_helper" pid=840 comm="apparmor_parser"
[    6.742033] audit: type=1400 audit(1620533753.688:9): apparmor="STATUS" operation="profile_load" profile="unconfined" name="/usr/sbin/cups-browsed" pid=835 comm="apparmor_parser"
[    6.743786] audit: type=1400 audit(1620533753.688:10): apparmor="STATUS" operation="profile_load" profile="unconfined" name="libreoffice-senddoc" pid=844 comm="apparmor_parser"
[    6.743949] audit: type=1400 audit(1620533753.688:11): apparmor="STATUS" operation="profile_load" profile="unconfined" name="libreoffice-oopslash" pid=843 comm="apparmor_parser"
[    6.936671] Bluetooth: BNEP (Ethernet Emulation) ver 1.3
[    6.936674] Bluetooth: BNEP filters: protocol multicast
[    6.936677] Bluetooth: BNEP socket layer initialized
[    6.941258] NET: Registered protocol family 38
[    7.138590] Bluetooth: hci0: MSFT filter_enable is already on
[    7.457069] loop14: detected capacity change from 0 to 8
[   10.545482] wlp59s0: authenticate with 10:0c:6b:f4:fe:d8
[   10.548708] wlp59s0: send auth to 10:0c:6b:f4:fe:d8 (try 1/3)
[   10.578436] wlp59s0: authenticated
[   10.581706] wlp59s0: associate with 10:0c:6b:f4:fe:d8 (try 1/3)
[   10.587647] wlp59s0: RX AssocResp from 10:0c:6b:f4:fe:d8 (capab=0x11 status=0 aid=2)
[   10.603058] wlp59s0: associated
[   10.697657] wlp59s0: Limiting TX power to 30 (30 - 0) dBm as advertised by 10:0c:6b:f4:fe:d8
[   10.697713] IPv6: ADDRCONF(NETDEV_CHANGE): wlp59s0: link becomes ready
[   12.140475] rfkill: input handler disabled
[   27.502336] Bluetooth: RFCOMM TTY layer initialized
[   27.502342] Bluetooth: RFCOMM socket layer initialized
[   27.502346] Bluetooth: RFCOMM ver 1.11
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
