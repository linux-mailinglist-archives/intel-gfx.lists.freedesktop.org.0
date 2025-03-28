Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 59F39A74831
	for <lists+intel-gfx@lfdr.de>; Fri, 28 Mar 2025 11:26:24 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 7B6BB10E9CC;
	Fri, 28 Mar 2025 10:26:22 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from e6b6f09ec485 (emeril.freedesktop.org [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTPS id BFAE310E9CB;
 Fri, 28 Mar 2025 10:26:20 +0000 (UTC)
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Subject: =?utf-8?q?=E2=9C=97_Fi=2ECI=2ECHECKPATCH=3A_warning_for_Expose_modifiers/for?=
 =?utf-8?q?mats_supported_by_async_flips_=28rev10=29?=
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Arun R Murthy" <arun.r.murthy@intel.com>
Cc: intel-gfx@lists.freedesktop.org
Date: Fri, 28 Mar 2025 10:26:20 -0000
Message-ID: <174315758077.14706.15471092305061142752@e6b6f09ec485>
X-Patchwork-Hint: ignore
References: <20250328-asyn-v10-0-8b8ad12cfc97@intel.com>
In-Reply-To: <20250328-asyn-v10-0-8b8ad12cfc97@intel.com>
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

Series: Expose modifiers/formats supported by async flips (rev10)
URL   : https://patchwork.freedesktop.org/series/140935/
State : warning

== Summary ==

Error: dim checkpatch failed
f7133a7c112e drm/plane: Add new plane property IN_FORMATS_ASYNC
1778d0106429 drm/plane: modify create_in_formats to acommodate async
9b50d6a1736a drm/i915/display: Acomodate format check in can_async_flip()
-:46: CHECK:LOGICAL_CONTINUATIONS: Logical continuations should be on the previous line
#46: FILE: drivers/gpu/drm/i915/display/intel_atomic_plane.c:181:
+	if (intel_format_info_is_yuv_semiplanar(drm_format_info(format), modifier)
+	    || format == DRM_FORMAT_C8) {

total: 0 errors, 0 warnings, 1 checks, 77 lines checked
a11dd36d47e0 drm/i915/display: Add i915 hook for format_mod_supported_async


