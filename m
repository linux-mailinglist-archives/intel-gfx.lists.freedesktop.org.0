Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 5B5459BCC66
	for <lists+intel-gfx@lfdr.de>; Tue,  5 Nov 2024 13:10:42 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id B7CBE10E3F9;
	Tue,  5 Nov 2024 12:10:40 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from 2413ebb6fbb6 (emeril.freedesktop.org [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 6474110E579;
 Tue,  5 Nov 2024 12:10:39 +0000 (UTC)
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Subject: =?utf-8?q?=E2=9C=97_Fi=2ECI=2ECHECKPATCH=3A_warning_for_Expose_modifiers/for?=
 =?utf-8?q?mats_supported_by_async_flips?=
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Arun R Murthy" <arun.r.murthy@intel.com>
Cc: intel-gfx@lists.freedesktop.org
Date: Tue, 05 Nov 2024 12:10:39 -0000
Message-ID: <173080863940.1411787.13700456405354622884@2413ebb6fbb6>
X-Patchwork-Hint: ignore
References: <20241105102608.3912133-1-arun.r.murthy@intel.com>
In-Reply-To: <20241105102608.3912133-1-arun.r.murthy@intel.com>
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

Series: Expose modifiers/formats supported by async flips
URL   : https://patchwork.freedesktop.org/series/140935/
State : warning

== Summary ==

Error: dim checkpatch failed
7d835ef6b236 drm/plane: Add new plane property IN_FORMATS_ASYNC
-:158: CHECK:PREFER_KERNEL_TYPES: Prefer kernel type 'u32' over 'uint32_t'
#158: FILE: include/drm/drm_plane.h:662:
+	uint32_t *async_format_types;

-:168: CHECK:PREFER_KERNEL_TYPES: Prefer kernel type 'u64' over 'uint64_t'
#168: FILE: include/drm/drm_plane.h:672:
+	uint64_t *async_modifiers;

total: 0 errors, 0 warnings, 2 checks, 137 lines checked
4e8bf91fe858 drm/i915/fb: Add async field to the modifiers description
abe5736d332f drm/i915/display: Add async_flip flag in get_modifiers
dc0ca9af7913 drm/i915/display: Add async supported formats/modifiers
-:49: WARNING:LONG_LINE: line length of 123 exceeds 100 columns
#49: FILE: drivers/gpu/drm/i915/display/skl_universal_plane.c:2691:
+									      skl_get_plane_caps(dev_priv, pipe, plane_id),

-:52: WARNING:LONG_LINE: line length of 112 exceeds 100 columns
#52: FILE: drivers/gpu/drm/i915/display/skl_universal_plane.c:2694:
+								   skl_get_plane_caps(dev_priv, pipe, plane_id),

total: 0 errors, 2 warnings, 0 checks, 40 lines checked


