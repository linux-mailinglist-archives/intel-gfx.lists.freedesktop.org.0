Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 8A1AA832086
	for <lists+intel-gfx@lfdr.de>; Thu, 18 Jan 2024 21:41:45 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 2598D10E90B;
	Thu, 18 Jan 2024 20:41:43 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from 5338d5abeb45 (emeril.freedesktop.org [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 4E75A10E90B;
 Thu, 18 Jan 2024 20:41:42 +0000 (UTC)
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Subject: =?utf-8?q?=E2=9C=97_Fi=2ECI=2ECHECKPATCH=3A_warning_for_Bigjoiner_refactorin?=
 =?utf-8?q?g_=28rev3=29?=
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Lisovskiy, Stanislav" <stanislav.lisovskiy@intel.com>
Date: Thu, 18 Jan 2024 20:41:42 -0000
Message-ID: <170561050232.558566.15837718205342677194@5338d5abeb45>
X-Patchwork-Hint: ignore
References: <20240108120725.20057-1-stanislav.lisovskiy@intel.com>
In-Reply-To: <20240108120725.20057-1-stanislav.lisovskiy@intel.com>
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

Series: Bigjoiner refactoring (rev3)
URL   : https://patchwork.freedesktop.org/series/128311/
State : warning

== Summary ==

Error: dim checkpatch failed
82e637e50454 drm/i915: Add bigjoiner force enable option to debugfs
-:70: CHECK:PARENTHESIS_ALIGNMENT: Alignment should match open parenthesis
#70: FILE: drivers/gpu/drm/i915/display/intel_display_debugfs.c:1430:
+static ssize_t i915_bigjoiner_enable_write(struct file *file,
+						const char __user *ubuf,

total: 0 errors, 0 warnings, 1 checks, 93 lines checked
3c9aa25ec924 drm/i915/bigjoiner: Refactor bigjoiner state readout
91d511b061d7 Start separating pipe vs transcoder set logic for bigjoiner during modeset
-:9: WARNING:COMMIT_LOG_LONG_LINE: Prefer a maximum 75 chars per line (possible unwrapped commit description?)
#9: 
That way we can also remove a bunch of checks like intel_crtc_is_bigjoiner_slave.

-:110: WARNING:BLOCK_COMMENT_STYLE: Block comments use a trailing */ on a separate line
#110: FILE: drivers/gpu/drm/i915/display/intel_display.c:1709:
+	 * to change the workaround. */

total: 0 errors, 2 warnings, 0 checks, 233 lines checked


