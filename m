Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id B178E5A0226
	for <lists+intel-gfx@lfdr.de>; Wed, 24 Aug 2022 21:34:40 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id E66FEC3A64;
	Wed, 24 Aug 2022 19:34:35 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [IPv6:2610:10:20:722:a800:ff:feee:56cf])
 by gabe.freedesktop.org (Postfix) with ESMTP id E5CEFC39DB;
 Wed, 24 Aug 2022 19:33:27 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id 7C59DA00E8;
 Wed, 24 Aug 2022 19:33:27 +0000 (UTC)
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Hans de Goede" <hdegoede@redhat.com>
Date: Wed, 24 Aug 2022 19:33:27 -0000
Message-ID: <166136960748.9870.8510428714292093940@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20220818184302.10051-1-hdegoede@redhat.com>
In-Reply-To: <20220818184302.10051-1-hdegoede@redhat.com>
Subject: [Intel-gfx] =?utf-8?b?4pyXIEZpLkNJLkNIRUNLUEFUQ0g6IHdhcm5pbmcg?=
 =?utf-8?q?for_drm/kms=3A_Stop_registering_multiple_/sys/class/backlight_d?=
 =?utf-8?q?evs_for_a_single_display?=
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

Series: drm/kms: Stop registering multiple /sys/class/backlight devs for a single display
URL   : https://patchwork.freedesktop.org/series/107458/
State : warning

== Summary ==

Error: dim checkpatch failed
cb80f3f59bd6 ACPI: video: Add acpi_video_backlight_use_native() helper
-:112: CHECK:AVOID_EXTERNS: extern prototypes should be avoided in .h files
#112: FILE: include/acpi/video.h:59:
+extern bool acpi_video_backlight_use_native(void);

-:120: CHECK:LINE_SPACING: Please use a blank line after function/struct/union/enum declarations
#120: FILE: include/acpi/video.h:81:
 }
+static inline bool acpi_video_backlight_use_native(void)

total: 0 errors, 0 warnings, 2 checks, 73 lines checked
ada7f6aa183e drm/i915: Don't register backlight when another backlight should be used
d2076d7fa7ea drm/amdgpu: Don't register backlight when another backlight should be used (v3)
6f1c805b0235 drm/radeon: Don't register backlight when another backlight should be used (v3)
02d2d61143b8 drm/nouveau: Don't register backlight when another backlight should be used
8bb870ec22b8 ACPI: video: Drop backlight_device_get_by_type() call from acpi_video_get_backlight_type()
154c7e4c73b9 ACPI: video: Remove acpi_video_bus from list before tearing it down
af8465ff79bc ACPI: video: Simplify acpi_video_unregister_backlight()
354bb16670b3 ACPI: video: Make backlight class device registration a separate step (v2)
-:52: CHECK:PARENTHESIS_ALIGNMENT: Alignment should match open parenthesis
#52: FILE: drivers/acpi/acpi_video.c:83:
+MODULE_PARM_DESC(register_backlight_delay,
+	"Delay in seconds before doing fallback (non GPU driver triggered) "

-:155: CHECK:AVOID_EXTERNS: extern prototypes should be avoided in .h files
#155: FILE: include/acpi/video.h:56:
+extern void acpi_video_register_backlight(void);

total: 0 errors, 0 warnings, 2 checks, 112 lines checked
e43d16d513b4 ACPI: video: Remove code to unregister acpi_video backlight when a native backlight registers
09766e6ec1a6 drm/i915: Call acpi_video_register_backlight() (v2)
2fa045cec44c drm/nouveau: Register ACPI video backlight when nv_backlight registration fails
ef75037ccf8f drm/amdgpu: Register ACPI video backlight when skipping amdgpu backlight registration
05643ebf860e drm/radeon: Register ACPI video backlight when skipping radeon backlight registration
dd0ba69514f3 platform/x86: nvidia-wmi-ec-backlight: Move fw interface definitions to a header
Traceback (most recent call last):
  File "scripts/spdxcheck.py", line 11, in <module>
    import git
ModuleNotFoundError: No module named 'git'
-:106: WARNING:FILE_PATH_CHANGES: added, moved or deleted file(s), does MAINTAINERS need updating?
#106: 
new file mode 100644

total: 0 errors, 1 warnings, 0 checks, 152 lines checked
e217beaed186 ACPI: video: Refactor acpi_video_get_backlight_type() a bit
b366d8080f7a ACPI: video: Add Nvidia WMI EC brightness control detection (v2)
3f9ceeb94d38 ACPI: video: Add Apple GMUX brightness control detection
db1305751296 platform/x86: nvidia-wmi-ec-backlight: Use acpi_video_get_backlight_type()
cf2e63785682 platform/x86: apple-gmux: Stop calling acpi/video.h functions
09b9c7436a7b platform/x86: toshiba_acpi: Stop using acpi_video_set_dmi_backlight_type()
8d44d8e0a9d7 platform/x86: acer-wmi: Move backlight DMI quirks to acpi/video_detect.c
6f9016e9f108 platform/x86: asus-wmi: Drop DMI chassis-type check from backlight handling
bd892357ead7 platform/x86: asus-wmi: Move acpi_backlight=vendor quirks to ACPI video_detect.c
cf8713ce7d3e platform/x86: asus-wmi: Move acpi_backlight=native quirks to ACPI video_detect.c
d6fae5b86e0b platform/x86: samsung-laptop: Move acpi_backlight=[vendor|native] quirks to ACPI video_detect.c
1b8ecc40baf3 ACPI: video: Remove acpi_video_set_dmi_backlight_type()
a532f7c59582 ACPI: video: Drop "Samsung X360" acpi_backlight=native quirk
aef8dc824671 ACPI: video: Drop NL5x?U, PF4NU1F and PF5?U?? acpi_backlight=native quirks
6af6d3d9f883 ACPI: video: Fix indentation of video_detect_dmi_table[] entries
17b93bb50c5c drm/todo: Add entry about dealing with brightness control on devices with > 1 panel
-:11: WARNING:COMMIT_LOG_LONG_LINE: Possible unwrapped commit description (prefer a maximum 75 chars per line)
#11: 
https://lore.kernel.org/dri-devel/20220517152331.16217-1-hdegoede@redhat.com/

total: 0 errors, 1 warnings, 0 checks, 74 lines checked


