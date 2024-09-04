Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id D178F96BEFC
	for <lists+intel-gfx@lfdr.de>; Wed,  4 Sep 2024 15:46:05 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 0181C10E6A4;
	Wed,  4 Sep 2024 13:46:04 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from 2413ebb6fbb6 (emeril.freedesktop.org [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTPS id DDD9910E6A4;
 Wed,  4 Sep 2024 13:46:01 +0000 (UTC)
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Subject: =?utf-8?q?=E2=9C=97_Fi=2ECI=2ECHECKPATCH=3A_warning_for_drm/i915/display=3A_?=
 =?utf-8?q?use_to=5Fintel=5Fdisplay=28=29_global_state_macros?=
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Jani Nikula" <jani.nikula@intel.com>
Cc: intel-gfx@lists.freedesktop.org
Date: Wed, 04 Sep 2024 13:46:01 -0000
Message-ID: <172545756190.933211.11867871688886221952@2413ebb6fbb6>
X-Patchwork-Hint: ignore
References: <20240904125301.3813721-1-jani.nikula@intel.com>
In-Reply-To: <20240904125301.3813721-1-jani.nikula@intel.com>
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

Series: drm/i915/display: use to_intel_display() global state macros
URL   : https://patchwork.freedesktop.org/series/138207/
State : warning

== Summary ==

Error: dim checkpatch failed
b184c538f840 drm/i915/display: use to_intel_display() global state macros
-:21: WARNING:LONG_LINE: line length of 111 exceeds 100 columns
#21: FILE: drivers/gpu/drm/i915/display/intel_cdclk.h:91:
+	to_intel_cdclk_state(intel_atomic_get_old_global_obj_state(state, &to_intel_display(state)->cdclk.obj))

-:24: WARNING:LONG_LINE: line length of 111 exceeds 100 columns
#24: FILE: drivers/gpu/drm/i915/display/intel_cdclk.h:93:
+	to_intel_cdclk_state(intel_atomic_get_new_global_obj_state(state, &to_intel_display(state)->cdclk.obj))

-:37: WARNING:LONG_LINE: line length of 109 exceeds 100 columns
#37: FILE: drivers/gpu/drm/i915/display/skl_watermark.h:76:
+	to_intel_dbuf_state(intel_atomic_get_old_global_obj_state(state, &to_intel_display(state)->dbuf.obj))

-:40: WARNING:LONG_LINE: line length of 109 exceeds 100 columns
#40: FILE: drivers/gpu/drm/i915/display/skl_watermark.h:78:
+	to_intel_dbuf_state(intel_atomic_get_new_global_obj_state(state, &to_intel_display(state)->dbuf.obj))

total: 0 errors, 4 warnings, 0 checks, 22 lines checked


