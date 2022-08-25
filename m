Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 4D75F5A1660
	for <lists+intel-gfx@lfdr.de>; Thu, 25 Aug 2022 18:09:43 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 16E1610E3F6;
	Thu, 25 Aug 2022 16:09:40 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTP id 123C910E3AD;
 Thu, 25 Aug 2022 16:09:37 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id 0AC2BAADD6;
 Thu, 25 Aug 2022 16:09:37 +0000 (UTC)
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Hans de Goede" <hdegoede@redhat.com>
Date: Thu, 25 Aug 2022 16:09:37 -0000
Message-ID: <166144377700.24645.9132075287470320423@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20220825143726.269890-1-hdegoede@redhat.com>
In-Reply-To: <20220825143726.269890-1-hdegoede@redhat.com>
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
URL   : https://patchwork.freedesktop.org/series/107755/
State : warning

== Summary ==

Error: dim checkpatch failed
9770bde2adbd ACPI: video: Add acpi_video_backlight_use_native() helper
-:112: CHECK:AVOID_EXTERNS: extern prototypes should be avoided in .h files
#112: FILE: include/acpi/video.h:59:
+extern bool acpi_video_backlight_use_native(void);

-:120: CHECK:LINE_SPACING: Please use a blank line after function/struct/union/enum declarations
#120: FILE: include/acpi/video.h:81:
 }
+static inline bool acpi_video_backlight_use_native(void)

total: 0 errors, 0 warnings, 2 checks, 73 lines checked
7bbb7b4364f8 drm/i915: Don't register backlight when another backlight should be used (v2)
21ff8de3d743 drm/amdgpu: Don't register backlight when another backlight should be used (v3)
4660f062ab74 drm/radeon: Don't register backlight when another backlight should be used (v3)
8f0a985ccd2d drm/nouveau: Don't register backlight when another backlight should be used (v2)
a9d8a2239032 ACPI: video: Drop backlight_device_get_by_type() call from acpi_video_get_backlight_type()
827cedc90abe ACPI: video: Remove acpi_video_bus from list before tearing it down
c46374a7c084 ACPI: video: Simplify acpi_video_unregister_backlight()
2c0dca45608a ACPI: video: Make backlight class device registration a separate step (v2)
-:52: CHECK:PARENTHESIS_ALIGNMENT: Alignment should match open parenthesis
#52: FILE: drivers/acpi/acpi_video.c:83:
+MODULE_PARM_DESC(register_backlight_delay,
+	"Delay in seconds before doing fallback (non GPU driver triggered) "

-:155: CHECK:AVOID_EXTERNS: extern prototypes should be avoided in .h files
#155: FILE: include/acpi/video.h:56:
+extern void acpi_video_register_backlight(void);

total: 0 errors, 0 warnings, 2 checks, 112 lines checked
ba74631acf23 ACPI: video: Remove code to unregister acpi_video backlight when a native backlight registers
0442c6a6fbfa drm/i915: Call acpi_video_register_backlight() (v3)
89fc23bf53df drm/nouveau: Register ACPI video backlight when nv_backlight registration fails (v2)
2098c614c444 drm/amdgpu: Register ACPI video backlight when skipping amdgpu backlight registration
012baaa975af drm/radeon: Register ACPI video backlight when skipping radeon backlight registration
9a316e427d90 platform/x86: nvidia-wmi-ec-backlight: Move fw interface definitions to a header (v2)
Traceback (most recent call last):
  File "scripts/spdxcheck.py", line 6, in <module>
    from ply import lex, yacc
ModuleNotFoundError: No module named 'ply'
-:119: WARNING:FILE_PATH_CHANGES: added, moved or deleted file(s), does MAINTAINERS need updating?
#119: 
new file mode 100644

total: 0 errors, 1 warnings, 0 checks, 166 lines checked
db397e31e959 ACPI: video: Refactor acpi_video_get_backlight_type() a bit
0746f167fbf6 ACPI: video: Add Nvidia WMI EC brightness control detection (v3)
8ded49115792 ACPI: video: Add Apple GMUX brightness control detection
e7b522538f54 platform/x86: nvidia-wmi-ec-backlight: Use acpi_video_get_backlight_type()
da5dc93cfd1d platform/x86: apple-gmux: Stop calling acpi/video.h functions
359a75cc8d2f platform/x86: toshiba_acpi: Stop using acpi_video_set_dmi_backlight_type()
ab7d1912a362 platform/x86: acer-wmi: Move backlight DMI quirks to acpi/video_detect.c
99c3efe84b91 platform/x86: asus-wmi: Drop DMI chassis-type check from backlight handling
f95c29c199a2 platform/x86: asus-wmi: Move acpi_backlight=vendor quirks to ACPI video_detect.c
5acb614534dc platform/x86: asus-wmi: Move acpi_backlight=native quirks to ACPI video_detect.c
17d1c19d714c platform/x86: samsung-laptop: Move acpi_backlight=[vendor|native] quirks to ACPI video_detect.c
7803178f9be6 ACPI: video: Remove acpi_video_set_dmi_backlight_type()
debf21872658 ACPI: video: Drop "Samsung X360" acpi_backlight=native quirk
db35244fef1b ACPI: video: Drop NL5x?U, PF4NU1F and PF5?U?? acpi_backlight=native quirks
1ab23762426c ACPI: video: Fix indentation of video_detect_dmi_table[] entries
3d4776063cd8 drm/todo: Add entry about dealing with brightness control on devices with > 1 panel
-:11: WARNING:COMMIT_LOG_LONG_LINE: Possible unwrapped commit description (prefer a maximum 75 chars per line)
#11: 
https://lore.kernel.org/dri-devel/20220517152331.16217-1-hdegoede@redhat.com/

total: 0 errors, 1 warnings, 0 checks, 74 lines checked


