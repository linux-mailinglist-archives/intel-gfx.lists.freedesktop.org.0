Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 89446A3988D
	for <lists+intel-gfx@lfdr.de>; Tue, 18 Feb 2025 11:18:53 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 2E35510E662;
	Tue, 18 Feb 2025 10:18:52 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from b555e5b46a47 (emeril.freedesktop.org [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 2B2C710E662;
 Tue, 18 Feb 2025 10:18:51 +0000 (UTC)
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Subject: =?utf-8?q?=E2=9C=97_Fi=2ECI=2ECHECKPATCH=3A_warning_for_Expose_modifiers/for?=
 =?utf-8?q?mats_supported_by_async_flips_=28rev5=29?=
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Arun R Murthy" <arun.r.murthy@intel.com>
Cc: intel-gfx@lists.freedesktop.org
Date: Tue, 18 Feb 2025 10:18:51 -0000
Message-ID: <173987393117.3531112.10096824586635993529@b555e5b46a47>
X-Patchwork-Hint: ignore
References: <20250218-asyn-v5-0-7ac5ac4abd4a@intel.com>
In-Reply-To: <20250218-asyn-v5-0-7ac5ac4abd4a@intel.com>
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
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

== Series Details ==

Series: Expose modifiers/formats supported by async flips (rev5)
URL   : https://patchwork.freedesktop.org/series/140935/
State : warning

== Summary ==

Error: dim checkpatch failed
ae683fed9cd1 drm/plane: Add new plane property IN_FORMATS_ASYNC
-:102: CHECK:PREFER_KERNEL_TYPES: Prefer kernel type 'u32' over 'uint32_t'
#102: FILE: include/drm/drm_plane.h:567:
+					   uint32_t format, uint64_t modifier);

total: 0 errors, 0 warnings, 1 checks, 62 lines checked
b49c99fd68e5 drm/plane: modify create_in_formats to accommodate async
-:32: CHECK:PREFER_KERNEL_TYPES: Prefer kernel type 'u32' over 'uint32_t'
#32: FILE: drivers/gpu/drm/drm_plane.c:199:
+						 uint32_t format,

total: 0 errors, 0 warnings, 1 checks, 72 lines checked
41b712fbda8c drm/i915/display: Add i915 hook for format_mod_supported_async
-:25: CHECK:LINE_SPACING: Please use a blank line after function/struct/union/enum declarations
#25: FILE: drivers/gpu/drm/i915/display/skl_universal_plane.c:512:
 }
+static bool intel_plane_async_formats(struct intel_plane *plane, uint32_t format)

-:44: CHECK:PREFER_KERNEL_TYPES: Prefer kernel type 'u32' over 'uint32_t'
#44: FILE: drivers/gpu/drm/i915/display/skl_universal_plane.c:531:
+						   uint32_t format,

total: 0 errors, 0 warnings, 2 checks, 77 lines checked


