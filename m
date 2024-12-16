Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id C63C89F37D9
	for <lists+intel-gfx@lfdr.de>; Mon, 16 Dec 2024 18:50:38 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 7094510E741;
	Mon, 16 Dec 2024 17:50:37 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from b555e5b46a47 (emeril.freedesktop.org [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 0186410E741;
 Mon, 16 Dec 2024 17:50:36 +0000 (UTC)
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Subject: =?utf-8?q?=E2=9C=97_Fi=2ECI=2ECHECKPATCH=3A_warning_for_drm/i915=3A_Async_fl?=
 =?utf-8?q?ip_+_compression=2C_and_some_plane_cleanups_=28rev6=29?=
From: Patchwork <patchwork@emeril.freedesktop.org>
To: =?utf-8?b?VmlsbGUgU3lyasOkbMOk?= <ville.syrjala@linux.intel.com>
Cc: intel-gfx@lists.freedesktop.org
Date: Mon, 16 Dec 2024 17:50:36 -0000
Message-ID: <173437143600.3368266.3167775506365702925@b555e5b46a47>
X-Patchwork-Hint: ignore
References: <20241202141424.21446-1-ville.syrjala@linux.intel.com>
In-Reply-To: <20241202141424.21446-1-ville.syrjala@linux.intel.com>
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

Series: drm/i915: Async flip + compression, and some plane cleanups (rev6)
URL   : https://patchwork.freedesktop.org/series/139807/
State : warning

== Summary ==

Error: dim checkpatch failed
8a6b085226c9 drm/i915: Allow async flips with render compression on TGL+
4a5ebb88d7f4 drm/i915: Allow async flips with compression on ICL
70f845c0ee3a drm/i915: Introduce plane->can_async_flip()
79db771fc927 drm/i915: Use plane->can_async_flip() for alignment exceptions
bc89c7d5a947 drm/i915: Reuse vlv_primary_min_alignment() for sprites as well
2916fbb56c00 drm/i915: Disable scanout VT-d workaround for TGL+
f9319665369b drm/i915: Nuke ADL pre-production Wa_22011186057
48e1a358fd83 drm/i915: Relocate xe AUX hack
-:48: WARNING:IS_ENABLED_CONFIG: IS_ENABLED(I915) is normally used as IS_ENABLED(CONFIG_I915)
#48: FILE: drivers/gpu/drm/i915/display/skl_universal_plane.c:2778:
+	if (!IS_ENABLED(I915) && !HAS_FLAT_CCS(dev_priv))

total: 0 errors, 1 warnings, 0 checks, 33 lines checked
fcc23245808c drm/i915: Carve up skl_get_plane_caps()


