Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 404B8A38288
	for <lists+intel-gfx@lfdr.de>; Mon, 17 Feb 2025 12:59:56 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id D165110E42C;
	Mon, 17 Feb 2025 11:59:54 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from b555e5b46a47 (emeril.freedesktop.org [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTPS id DA15C10E42C;
 Mon, 17 Feb 2025 11:59:53 +0000 (UTC)
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Subject: =?utf-8?q?=E2=9C=97_Fi=2ECI=2ECHECKPATCH=3A_warning_for_drm/i915/display=3A_?=
 =?utf-8?q?Allow_display_PHYs_to_reset_power_state_=28rev4=29?=
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Mika Kahola" <mika.kahola@intel.com>
Cc: intel-gfx@lists.freedesktop.org
Date: Mon, 17 Feb 2025 11:59:53 -0000
Message-ID: <173979359388.3246514.2694054219356501059@b555e5b46a47>
X-Patchwork-Hint: ignore
References: <20250217111711.639619-1-mika.kahola@intel.com>
In-Reply-To: <20250217111711.639619-1-mika.kahola@intel.com>
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

Series: drm/i915/display: Allow display PHYs to reset power state (rev4)
URL   : https://patchwork.freedesktop.org/series/144102/
State : warning

== Summary ==

Error: dim checkpatch failed
39d8ced99928 drm/i915/display: Drop crtc_state from C10/C20 pll programming
-:290: CHECK:BRACES: Blank lines aren't necessary before a close brace '}'
#290: FILE: drivers/gpu/drm/i915/display/intel_cx0_phy.c:3097:
+
+}

total: 0 errors, 0 warnings, 1 checks, 256 lines checked
c71588a32a66 drm/i915/display: Allow display PHYs to reset power state


