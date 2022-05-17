Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id A6ACD52AB71
	for <lists+intel-gfx@lfdr.de>; Tue, 17 May 2022 21:03:37 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 7FA3010E2AB;
	Tue, 17 May 2022 19:03:26 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTP id 8230889650;
 Tue, 17 May 2022 19:03:25 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id 7975FA00A0;
 Tue, 17 May 2022 19:03:25 +0000 (UTC)
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Hans de Goede" <hdegoede@redhat.com>
Date: Tue, 17 May 2022 19:03:25 -0000
Message-ID: <165281420549.31034.5030710349041879359@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20220517152331.16217-1-hdegoede@redhat.com>
In-Reply-To: <20220517152331.16217-1-hdegoede@redhat.com>
Subject: [Intel-gfx] =?utf-8?b?4pyXIEZpLkNJLkJVSUxEOiBmYWlsdXJlIGZvciBk?=
 =?utf-8?q?rm/kms=3A_Stop_registering_multiple_/sys/class/backlight_devs_f?=
 =?utf-8?q?or_a_single_display?=
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
URL   : https://patchwork.freedesktop.org/series/104084/
State : failure

== Summary ==

Error: patch https://patchwork.freedesktop.org/api/1.0/series/104084/revisions/1/mbox/ not applied
Applying: ACPI: video: Add a native function parameter to acpi_video_get_backlight_type()
Applying: drm/i915: Don't register backlight when another backlight should be used
Using index info to reconstruct a base tree...
M	drivers/gpu/drm/i915/display/intel_backlight.c
Falling back to patching base and 3-way merge...
Auto-merging drivers/gpu/drm/i915/display/intel_backlight.c
Applying: drm/amdgpu: Don't register backlight when another backlight should be used
Using index info to reconstruct a base tree...
M	drivers/gpu/drm/Kconfig
M	drivers/gpu/drm/amd/amdgpu/atombios_encoders.c
M	drivers/gpu/drm/amd/display/amdgpu_dm/amdgpu_dm.c
Falling back to patching base and 3-way merge...
Auto-merging drivers/gpu/drm/amd/display/amdgpu_dm/amdgpu_dm.c
Auto-merging drivers/gpu/drm/amd/amdgpu/atombios_encoders.c
Auto-merging drivers/gpu/drm/Kconfig
CONFLICT (content): Merge conflict in drivers/gpu/drm/Kconfig
error: Failed to merge in the changes.
hint: Use 'git am --show-current-patch=diff' to see the failed patch
Patch failed at 0003 drm/amdgpu: Don't register backlight when another backlight should be used
When you have resolved this problem, run "git am --continue".
If you prefer to skip this patch, run "git am --skip" instead.
To restore the original branch and stop patching, run "git am --abort".


