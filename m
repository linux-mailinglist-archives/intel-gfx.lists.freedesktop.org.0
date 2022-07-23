Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 576C957EAA3
	for <lists+intel-gfx@lfdr.de>; Sat, 23 Jul 2022 02:33:39 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 678E68AEBA;
	Sat, 23 Jul 2022 00:33:37 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [IPv6:2610:10:20:722:a800:ff:feee:56cf])
 by gabe.freedesktop.org (Postfix) with ESMTP id 236B28AD4A;
 Sat, 23 Jul 2022 00:33:36 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id 1B2CBA00E8;
 Sat, 23 Jul 2022 00:33:36 +0000 (UTC)
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Taylor, Clinton A" <clinton.a.taylor@intel.com>
Date: Sat, 23 Jul 2022 00:33:36 -0000
Message-ID: <165853641607.27982.12980134858673092197@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20220723001859.3883378-1-clinton.a.taylor@intel.com>
In-Reply-To: <20220723001859.3883378-1-clinton.a.taylor@intel.com>
Subject: [Intel-gfx] =?utf-8?b?4pyXIEZpLkNJLkNIRUNLUEFUQ0g6IHdhcm5pbmcg?=
 =?utf-8?q?for_drm/i915/display=3A_Audio_keep_alive_timestamp_cdclk_diviso?=
 =?utf-8?q?rs?=
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
Reply-To: intel-gfx@lists.freedesktop.org
Cc: intel-gfx@lists.freedesktop.org
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

== Series Details ==

Series: drm/i915/display: Audio keep alive timestamp cdclk divisors
URL   : https://patchwork.freedesktop.org/series/106630/
State : warning

== Summary ==

Error: dim checkpatch failed
d163202db0cc drm/i915/display: Audio keep alive timestamp cdclk divisors
-:103: WARNING:LONG_LINE: line length of 103 exceeds 100 columns
#103: FILE: drivers/gpu/drm/i915/display/intel_cdclk.c:1319:
+	{ .refclk = 19200, .cdclk = 172800, .divider = 3, .ratio = 27, .aud_m = 0x3C, .aud_n = 0x140 },

-:104: WARNING:LONG_LINE: line length of 103 exceeds 100 columns
#104: FILE: drivers/gpu/drm/i915/display/intel_cdclk.c:1320:
+	{ .refclk = 19200, .cdclk = 192000, .divider = 2, .ratio = 20, .aud_m = 0x3C, .aud_n = 0x1E0 },

-:105: WARNING:LONG_LINE: line length of 103 exceeds 100 columns
#105: FILE: drivers/gpu/drm/i915/display/intel_cdclk.c:1321:
+	{ .refclk = 19200, .cdclk = 307200, .divider = 2, .ratio = 32, .aud_m = 0x3C, .aud_n = 0x300 },

-:106: WARNING:LONG_LINE: line length of 103 exceeds 100 columns
#106: FILE: drivers/gpu/drm/i915/display/intel_cdclk.c:1322:
+	{ .refclk = 19200, .cdclk = 556800, .divider = 2, .ratio = 58, .aud_m = 0x3C, .aud_n = 0x570 },

-:107: WARNING:LONG_LINE: line length of 103 exceeds 100 columns
#107: FILE: drivers/gpu/drm/i915/display/intel_cdclk.c:1323:
+	{ .refclk = 19200, .cdclk = 652800, .divider = 2, .ratio = 68, .aud_m = 0x3C, .aud_n = 0x660 },

-:109: WARNING:LONG_LINE: line length of 103 exceeds 100 columns
#109: FILE: drivers/gpu/drm/i915/display/intel_cdclk.c:1325:
+	{ .refclk = 24000, .cdclk = 176000, .divider = 3, .ratio = 22, .aud_m = 0x3C, .aud_n = 0x1B8 },

-:110: WARNING:LONG_LINE: line length of 104 exceeds 100 columns
#110: FILE: drivers/gpu/drm/i915/display/intel_cdclk.c:1326:
+	{ .refclk = 24000, .cdclk = 192000, .divider = 2, .ratio = 16, .aud_m = 0x3C, .aud_n = 0x1E0  },

-:111: WARNING:LONG_LINE: line length of 103 exceeds 100 columns
#111: FILE: drivers/gpu/drm/i915/display/intel_cdclk.c:1327:
+	{ .refclk = 24000, .cdclk = 312000, .divider = 2, .ratio = 26, .aud_m = 0x3C, .aud_n = 0x30C },

-:112: WARNING:LONG_LINE: line length of 103 exceeds 100 columns
#112: FILE: drivers/gpu/drm/i915/display/intel_cdclk.c:1328:
+	{ .refclk = 24000, .cdclk = 552000, .divider = 2, .ratio = 46, .aud_m = 0x3C, .aud_n = 0x564 },

-:113: WARNING:LONG_LINE: line length of 103 exceeds 100 columns
#113: FILE: drivers/gpu/drm/i915/display/intel_cdclk.c:1329:
+	{ .refclk = 24400, .cdclk = 648000, .divider = 2, .ratio = 54, .aud_m = 0x3C, .aud_n = 0x654 },

-:115: WARNING:LONG_LINE: line length of 103 exceeds 100 columns
#115: FILE: drivers/gpu/drm/i915/display/intel_cdclk.c:1331:
+	{ .refclk = 38400, .cdclk = 179200, .divider = 3, .ratio = 14, .aud_m = 0x3C, .aud_n = 0x1C0 },

-:116: WARNING:LONG_LINE: line length of 103 exceeds 100 columns
#116: FILE: drivers/gpu/drm/i915/display/intel_cdclk.c:1332:
+	{ .refclk = 38400, .cdclk = 192000, .divider = 2, .ratio = 10, .aud_m = 0x3C, .aud_n = 0x1E0 },

-:117: WARNING:LONG_LINE: line length of 103 exceeds 100 columns
#117: FILE: drivers/gpu/drm/i915/display/intel_cdclk.c:1333:
+	{ .refclk = 38400, .cdclk = 307200, .divider = 2, .ratio = 16, .aud_m = 0x3C, .aud_n = 0x300 },

-:118: WARNING:LONG_LINE: line length of 103 exceeds 100 columns
#118: FILE: drivers/gpu/drm/i915/display/intel_cdclk.c:1334:
+	{ .refclk = 38400, .cdclk = 556800, .divider = 2, .ratio = 29, .aud_m = 0x3C, .aud_n = 0x570 },

-:119: WARNING:LONG_LINE: line length of 103 exceeds 100 columns
#119: FILE: drivers/gpu/drm/i915/display/intel_cdclk.c:1335:
+	{ .refclk = 38400, .cdclk = 652800, .divider = 2, .ratio = 34, .aud_m = 0x3C, .aud_n = 0x660 },

-:137: WARNING:LONG_LINE: line length of 123 exceeds 100 columns
#137: FILE: drivers/gpu/drm/i915/display/intel_cdclk.c:1340:
+	{ .refclk = 38400, .cdclk = 163200, .divider = 2, .ratio = 34, .waveform = 0x8888, .aud_m = 0x3C, .aud_n = 0x198 },

-:138: WARNING:LONG_LINE: line length of 123 exceeds 100 columns
#138: FILE: drivers/gpu/drm/i915/display/intel_cdclk.c:1341:
+	{ .refclk = 38400, .cdclk = 204000, .divider = 2, .ratio = 34, .waveform = 0x9248, .aud_m = 0x3C, .aud_n = 0x1FE },

-:139: WARNING:LONG_LINE: line length of 123 exceeds 100 columns
#139: FILE: drivers/gpu/drm/i915/display/intel_cdclk.c:1342:
+	{ .refclk = 38400, .cdclk = 244800, .divider = 2, .ratio = 34, .waveform = 0xa4a4, .aud_m = 0x3C, .aud_n = 0x264 },

-:140: WARNING:LONG_LINE: line length of 123 exceeds 100 columns
#140: FILE: drivers/gpu/drm/i915/display/intel_cdclk.c:1343:
+	{ .refclk = 38400, .cdclk = 285600, .divider = 2, .ratio = 34, .waveform = 0xa54a, .aud_m = 0x3C, .aud_n = 0x2CA },

-:141: WARNING:LONG_LINE: line length of 123 exceeds 100 columns
#141: FILE: drivers/gpu/drm/i915/display/intel_cdclk.c:1344:
+	{ .refclk = 38400, .cdclk = 326400, .divider = 2, .ratio = 34, .waveform = 0xaaaa, .aud_m = 0x3C, .aud_n = 0x330 },

-:142: WARNING:LONG_LINE: line length of 123 exceeds 100 columns
#142: FILE: drivers/gpu/drm/i915/display/intel_cdclk.c:1345:
+	{ .refclk = 38400, .cdclk = 367200, .divider = 2, .ratio = 34, .waveform = 0xad5a, .aud_m = 0x3C, .aud_n = 0x396 },

-:143: WARNING:LONG_LINE: line length of 123 exceeds 100 columns
#143: FILE: drivers/gpu/drm/i915/display/intel_cdclk.c:1346:
+	{ .refclk = 38400, .cdclk = 408000, .divider = 2, .ratio = 34, .waveform = 0xb6b6, .aud_m = 0x3C, .aud_n = 0x3FC },

-:144: WARNING:LONG_LINE: line length of 123 exceeds 100 columns
#144: FILE: drivers/gpu/drm/i915/display/intel_cdclk.c:1347:
+	{ .refclk = 38400, .cdclk = 448800, .divider = 2, .ratio = 34, .waveform = 0xdbb6, .aud_m = 0x3C, .aud_n = 0x462 },

-:145: WARNING:LONG_LINE: line length of 123 exceeds 100 columns
#145: FILE: drivers/gpu/drm/i915/display/intel_cdclk.c:1348:
+	{ .refclk = 38400, .cdclk = 489600, .divider = 2, .ratio = 34, .waveform = 0xeeee, .aud_m = 0x3C, .aud_n = 0x4C8 },

-:146: WARNING:LONG_LINE: line length of 123 exceeds 100 columns
#146: FILE: drivers/gpu/drm/i915/display/intel_cdclk.c:1349:
+	{ .refclk = 38400, .cdclk = 530400, .divider = 2, .ratio = 34, .waveform = 0xf7de, .aud_m = 0x3C, .aud_n = 0x52E },

-:147: WARNING:LONG_LINE: line length of 123 exceeds 100 columns
#147: FILE: drivers/gpu/drm/i915/display/intel_cdclk.c:1350:
+	{ .refclk = 38400, .cdclk = 571200, .divider = 2, .ratio = 34, .waveform = 0xfefe, .aud_m = 0x3C, .aud_n = 0x594 },

-:148: WARNING:LONG_LINE: line length of 123 exceeds 100 columns
#148: FILE: drivers/gpu/drm/i915/display/intel_cdclk.c:1351:
+	{ .refclk = 38400, .cdclk = 612000, .divider = 2, .ratio = 34, .waveform = 0xfffe, .aud_m = 0x3C, .aud_n = 0x5FA },

-:149: WARNING:LONG_LINE: line length of 123 exceeds 100 columns
#149: FILE: drivers/gpu/drm/i915/display/intel_cdclk.c:1352:
+	{ .refclk = 38400, .cdclk = 652800, .divider = 2, .ratio = 34, .waveform = 0xffff, .aud_m = 0x3C, .aud_n = 0x660 },

-:166: WARNING:LONG_LINE: line length of 116 exceeds 100 columns
#166: FILE: drivers/gpu/drm/i915/display/intel_cdclk.c:2204:
+			drm_dbg_kms(&i915->drm, "aud_ts_cdclk set to M=%u, N=%u\n", table[i].aud_m, table[i].aud_n);

total: 0 errors, 29 warnings, 0 checks, 151 lines checked


