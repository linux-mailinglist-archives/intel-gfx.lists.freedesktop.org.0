Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 03E6960B1DE
	for <lists+intel-gfx@lfdr.de>; Mon, 24 Oct 2022 18:39:35 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 1EA7A10E3C8;
	Mon, 24 Oct 2022 16:39:33 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [IPv6:2610:10:20:722:a800:ff:feee:56cf])
 by gabe.freedesktop.org (Postfix) with ESMTP id 02C8110E3C8;
 Mon, 24 Oct 2022 16:39:29 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id EE7DBA0169;
 Mon, 24 Oct 2022 16:39:28 +0000 (UTC)
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Akihiko Odaki" <akihiko.odaki@daynix.com>
Date: Mon, 24 Oct 2022 16:39:28 -0000
Message-ID: <166662956897.3424.18223298761000198824@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20221024113513.5205-1-akihiko.odaki@daynix.com>
In-Reply-To: <20221024113513.5205-1-akihiko.odaki@daynix.com>
Subject: [Intel-gfx] =?utf-8?b?4pyXIEZpLkNJLkNIRUNLUEFUQ0g6IHdhcm5pbmcg?=
 =?utf-8?q?for_Fallback_to_native_backlight?=
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

Series: Fallback to native backlight
URL   : https://patchwork.freedesktop.org/series/110054/
State : warning

== Summary ==

Error: dim checkpatch failed
2f7142a8164b drm/i915/opregion: Improve backlight request condition
d16e5a739419 ACPI: video: Introduce acpi_video_get_backlight_types()
d644d37525e7 LoongArch: Use acpi_video_get_backlight_types()
e3e20931e95a platform/x86: acer-wmi: Use acpi_video_get_backlight_types()
c9c3c25dba21 platform/x86: asus-laptop: Use acpi_video_get_backlight_types()
1e9d9b4d7d4c platform/x86: asus-wmi: Use acpi_video_get_backlight_types()
0d2686ce57d7 platform/x86: compal-laptop: Use acpi_video_get_backlight_types()
dc3eaed7ee17 platform/x86: eeepc-laptop: Use acpi_video_get_backlight_types()
265acce43efe platform/x86: fujitsu-laptop: Use acpi_video_get_backlight_types()
d8b1792d01a5 platform/x86: ideapad-laptop: Use acpi_video_get_backlight_types()
25df6527cf43 platform/x86: msi-laptop: Use acpi_video_get_backlight_types()
8b3e34763ef4 platform/x86: msi-wmi: Use acpi_video_get_backlight_types()
df40131b9e84 platform/x86: nvidia-wmi-ec-backlight: Use acpi_video_get_backlight_types()
9228aacee6ac platform/x86: panasonic-laptop: Use acpi_video_get_backlight_types()
25221c43ac90 platform/x86: samsung-laptop: Use acpi_video_get_backlight_types()
d9b975def1de platform/x86: sony-laptop: Use acpi_video_get_backlight_types()
1956bdceda31 platform/x86: thinkpad_acpi: Use acpi_video_get_backlight_types()
0ebc66d5e5ef platform/x86: toshiba_acpi: Use acpi_video_get_backlight_types()
4db441b6fbca platform/x86: dell-laptop: Use acpi_video_get_backlight_types()
0f67aba575b8 platform/x86: intel_oaktrail: Use acpi_video_get_backlight_types()
52b8a863b52e ACPI: video: Remove acpi_video_get_backlight_type()
-:209: CHECK:AVOID_EXTERNS: extern prototypes should be avoided in .h files
#209: FILE: include/acpi/video.h:58:
+extern int acpi_video_get_backlight_types(void);

-:218: CHECK:LINE_SPACING: Please use a blank line after function/struct/union/enum declarations
#218: FILE: include/acpi/video.h:77:
 }
+static inline int acpi_video_get_backlight_types(void)

total: 0 errors, 0 warnings, 2 checks, 200 lines checked
c51d24576ccf ACPI: video: Fallback to native backlight


