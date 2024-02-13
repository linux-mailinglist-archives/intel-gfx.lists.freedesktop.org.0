Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 7FFC5853310
	for <lists+intel-gfx@lfdr.de>; Tue, 13 Feb 2024 15:28:49 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 3E96010E6DB;
	Tue, 13 Feb 2024 14:28:47 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from 5338d5abeb45 (emeril.freedesktop.org [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTPS id D02FC10E6DB;
 Tue, 13 Feb 2024 14:28:46 +0000 (UTC)
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Subject: =?utf-8?q?=E2=9C=97_Fi=2ECI=2ECHECKPATCH=3A_warning_for_drm/i915=3A_Support_?=
 =?utf-8?q?replaying_GPU_hangs_with_captured_context_image?=
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Tvrtko Ursulin" <tvrtko.ursulin@linux.intel.com>
Cc: intel-gfx@lists.freedesktop.org
Date: Tue, 13 Feb 2024 14:28:46 -0000
Message-ID: <170783452685.1201024.14401691198430062849@5338d5abeb45>
X-Patchwork-Hint: ignore
References: <20240213131434.1609720-1-tvrtko.ursulin@linux.intel.com>
In-Reply-To: <20240213131434.1609720-1-tvrtko.ursulin@linux.intel.com>
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

Series: drm/i915: Support replaying GPU hangs with captured context image
URL   : https://patchwork.freedesktop.org/series/129832/
State : warning

== Summary ==

Error: dim checkpatch failed
53cbd1a9087f drm/i915: Support replaying GPU hangs with captured context image
-:354: CHECK:PARENTHESIS_ALIGNMENT: Alignment should match open parenthesis
#354: FILE: drivers/gpu/drm/i915/i915_params.c:139:
+i915_param_named(enable_debug_only_api, bool, 0400,
+	"Enable support for unstable debug only userspace API. (default:false)");

-:370: WARNING:LONG_LINE: line length of 110 exceeds 100 columns
#370: FILE: drivers/gpu/drm/i915/i915_params.h:68:
+	param(bool, enable_debug_only_api, false, IS_ENABLED(CONFIG_DRM_I915_REPLAY_GPU_HANGS_API) ? 0400 : 0)

total: 0 errors, 1 warnings, 1 checks, 320 lines checked


