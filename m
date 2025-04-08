Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 49A91A812A8
	for <lists+intel-gfx@lfdr.de>; Tue,  8 Apr 2025 18:43:46 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id CB54910E70D;
	Tue,  8 Apr 2025 16:43:44 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from e6b6f09ec485 (emeril.freedesktop.org [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTPS id A63E010E24F;
 Tue,  8 Apr 2025 16:43:43 +0000 (UTC)
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Subject: =?utf-8?q?=E2=9C=97_Fi=2ECI=2ECHECKPATCH=3A_warning_for_drm/i915/plane=3A_fi?=
 =?utf-8?q?le_and_function_renames?=
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Jani Nikula" <jani.nikula@intel.com>
Cc: intel-gfx@lists.freedesktop.org
Date: Tue, 08 Apr 2025 16:43:43 -0000
Message-ID: <174413062367.48725.11081654475419881813@e6b6f09ec485>
X-Patchwork-Hint: ignore
References: <cover.1744129283.git.jani.nikula@intel.com>
In-Reply-To: <cover.1744129283.git.jani.nikula@intel.com>
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

Series: drm/i915/plane: file and function renames
URL   : https://patchwork.freedesktop.org/series/147416/
State : warning

== Summary ==

Error: dim checkpatch failed
9eab2aa61624 drm/i915/plane: rename intel_atomic_plane.[ch] to intel_plane.[ch]
-:220: WARNING:FILE_PATH_CHANGES: added, moved or deleted file(s), does MAINTAINERS need updating?
#220: 
rename from drivers/gpu/drm/i915/display/intel_atomic_plane.c

total: 0 errors, 1 warnings, 0 checks, 269 lines checked
a3087afbfeff drm/i915/plane: drop atomic from intel_atomic_plane_check_clipping()
0b3dc20fc54a drm/i915/plane: make intel_plane_atomic_check() static and rename
19c04bd5895b drm/i915/plane: rename intel_atomic_check_planes() to intel_plane_atomic_check()
4ad89af0676c drm/i915/plane: rename intel_atomic_add_affected_planes() to intel_plane_add_affected()


