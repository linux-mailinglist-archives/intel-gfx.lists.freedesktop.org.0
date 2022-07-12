Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id D0D3157271D
	for <lists+intel-gfx@lfdr.de>; Tue, 12 Jul 2022 22:18:38 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id ED2D111219F;
	Tue, 12 Jul 2022 20:18:36 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [IPv6:2610:10:20:722:a800:ff:feee:56cf])
 by gabe.freedesktop.org (Postfix) with ESMTP id 9041E11A5AE;
 Tue, 12 Jul 2022 20:18:35 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id 47B9CA47DF;
 Tue, 12 Jul 2022 20:18:35 +0000 (UTC)
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Hans de Goede" <hdegoede@redhat.com>
Date: Tue, 12 Jul 2022 20:18:35 -0000
Message-ID: <165765711529.12860.9739980842215703759@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20220712193910.439171-1-hdegoede@redhat.com>
In-Reply-To: <20220712193910.439171-1-hdegoede@redhat.com>
Subject: [Intel-gfx] =?utf-8?b?4pyXIEZpLkNJLkNIRUNLUEFUQ0g6IHdhcm5pbmcg?=
 =?utf-8?q?for_drm/kms=3A_Stop_registering_multiple_/sys/class/backlight_d?=
 =?utf-8?q?evs_for_a_single_display_=28rev2=29?=
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

Series: drm/kms: Stop registering multiple /sys/class/backlight devs for a single display (rev2)
URL   : https://patchwork.freedesktop.org/series/104084/
State : warning

== Summary ==

Error: dim checkpatch failed
710cf204aa62 ACPI: video: Add acpi_video_backlight_use_native() helper
-:111: CHECK:AVOID_EXTERNS: extern prototypes should be avoided in .h files
#111: FILE: include/acpi/video.h:59:
+extern bool acpi_video_backlight_use_native(void);

-:119: CHECK:LINE_SPACING: Please use a blank line after function/struct/union/enum declarations
#119: FILE: include/acpi/video.h:81:
 }
+static inline bool acpi_video_backlight_use_native(void)

total: 0 errors, 0 warnings, 2 checks, 73 lines checked
e7a1a926e336 drm/i915: Don't register backlight when another backlight should be used
980e856057cb drm/amdgpu: Don't register backlight when another backlight should be used
b07f79a5aa15 drm/radeon: Don't register backlight when another backlight should be used
5e70758b7298 drm/nouveau: Don't register backlight when another backlight should be used
c9854adf15f5 ACPI: video: Drop backlight_device_get_by_type() call from acpi_video_get_backlight_type()
f5158d0c56a5 ACPI: video: Remove acpi_video_bus from list before tearing it down
29b7b1ea9679 ACPI: video: Simplify acpi_video_unregister_backlight()
5e1985e1f45a ACPI: video: Make backlight class device registration a separate step
-:145: CHECK:AVOID_EXTERNS: extern prototypes should be avoided in .h files
#145: FILE: include/acpi/video.h:56:
+extern void acpi_video_register_backlight(void);

total: 0 errors, 0 warnings, 1 checks, 107 lines checked
25403f5ca65c ACPI: video: Remove code to unregister acpi_video backlight when a native backlight registers
b2ddadcb193b drm/i915: Call acpi_video_register_backlight() (v2)
f21b5f44670a drm/nouveau: Register ACPI video backlight when nv_backlight registration fails
0278135a665f drm/amdgpu: Register ACPI video backlight when skipping amdgpu backlight registration
57c3339e329d drm/radeon: Register ACPI video backlight when skipping radeon backlight registration
1f0c416e5c24 ACPI: video: Refactor acpi_video_get_backlight_type() a bit
352e4b4b7dff ACPI: video: Add Nvidia WMI EC brightness control detection
3a2ac5a7b4cc ACPI: video: Add Apple GMUX brightness control detection
97c4e3ad1ce1 platform/x86: apple-gmux: Stop calling acpi/video.h functions
0a648aeb5da7 platform/x86: toshiba_acpi: Stop using acpi_video_set_dmi_backlight_type()
ad8c3dc4a172 platform/x86: acer-wmi: Move backlight DMI quirks to acpi/video_detect.c
f382260bc810 platform/x86: asus-wmi: Drop DMI chassis-type check from backlight handling
b7c4b6238030 platform/x86: asus-wmi: Move acpi_backlight=vendor quirks to ACPI video_detect.c
92e8130497da platform/x86: asus-wmi: Move acpi_backlight=native quirks to ACPI video_detect.c
b4c1cc8702e5 platform/x86: samsung-laptop: Move acpi_backlight=[vendor|native] quirks to ACPI video_detect.c
ae4ff416dcdb ACPI: video: Remove acpi_video_set_dmi_backlight_type()
e4ad5e0a120c ACPI: video: Drop "Samsung X360" acpi_backlight=native quirk
2bdc6f713c0e ACPI: video: Drop Clevo/TUXEDO NL5xRU and NL5xNU acpi_backlight=native quirks
660af7c6e2ad ACPI: video: Fix indentation of video_detect_dmi_table[] entries
067013a25cca drm/todo: Add entry about dealing with brightness control on devices with > 1 panel
-:11: WARNING:COMMIT_LOG_LONG_LINE: Possible unwrapped commit description (prefer a maximum 75 chars per line)
#11: 
https://lore.kernel.org/dri-devel/20220517152331.16217-1-hdegoede@redhat.com/

total: 0 errors, 1 warnings, 0 checks, 74 lines checked


