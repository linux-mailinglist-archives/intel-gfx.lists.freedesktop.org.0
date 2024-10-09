Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id C303F997682
	for <lists+intel-gfx@lfdr.de>; Wed,  9 Oct 2024 22:36:53 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 6B56610E0CE;
	Wed,  9 Oct 2024 20:36:52 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from 2413ebb6fbb6 (emeril.freedesktop.org [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTPS id CE86110E0CE;
 Wed,  9 Oct 2024 20:36:50 +0000 (UTC)
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Subject: =?utf-8?q?=E2=9C=97_Fi=2ECI=2ECHECKPATCH=3A_warning_for_drm/i915=3A_Async_fl?=
 =?utf-8?q?ip_+_compression=2C_and_some_plane_cleanups?=
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Ville Syrjala" <ville.syrjala@linux.intel.com>
Cc: intel-gfx@lists.freedesktop.org
Date: Wed, 09 Oct 2024 20:36:50 -0000
Message-ID: <172850621084.1212215.16150833967267333846@2413ebb6fbb6>
X-Patchwork-Hint: ignore
References: <20241009182207.22900-1-ville.syrjala@linux.intel.com>
In-Reply-To: <20241009182207.22900-1-ville.syrjala@linux.intel.com>
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

Series: drm/i915: Async flip + compression, and some plane cleanups
URL   : https://patchwork.freedesktop.org/series/139807/
State : warning

== Summary ==

Error: dim checkpatch failed
0842b69545cf drm/i915: Allow async flips with render compression on TGL+
5dc9b779514e drm/i915: Allow async flips with compression on ICL
0b89b832d426 drm/i915: Introduce plane->can_async_flip()
54729e3f8070 drm/i915: Use plane->can_async_flip() for alignment exceptions
926c6b388150 drm/i915: Reuse vlv_primary_min_alignment() for sprites as well
1ed25eb7e91a drm/i915: Disable scanout VT-d workaround for TGL+
31cfac31d4b2 drm/i915: Nuke ADL pre-production Wa_22011186057
3aaf53acbde0 drm/i915: Relocate xe AUX hack
-:47: WARNING:IS_ENABLED_CONFIG: IS_ENABLED(I915) is normally used as IS_ENABLED(CONFIG_I915)
#47: FILE: drivers/gpu/drm/i915/display/skl_universal_plane.c:2720:
+	if (!IS_ENABLED(I915) && !HAS_FLAT_CCS(dev_priv))

total: 0 errors, 1 warnings, 0 checks, 33 lines checked
34ce87b13379 drm/i915: Carve up skl_get_plane_caps()


