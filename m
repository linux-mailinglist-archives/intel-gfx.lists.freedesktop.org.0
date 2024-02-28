Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id E86E786B7EB
	for <lists+intel-gfx@lfdr.de>; Wed, 28 Feb 2024 20:14:09 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 2C8D510E07C;
	Wed, 28 Feb 2024 19:14:08 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from 8e613ede5ea5 (emeril.freedesktop.org [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 9303A10E07C;
 Wed, 28 Feb 2024 19:14:07 +0000 (UTC)
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Subject: =?utf-8?q?=E2=9C=97_Fi=2ECI=2ECHECKPATCH=3A_warning_for_drm/i915/display=3A_?=
 =?utf-8?q?Disable_AuxCCS_framebuffers_if_built_for_Xe_=28rev3=29?=
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Juha-Pekka Heikkila" <juhapekka.heikkila@gmail.com>
Cc: intel-gfx@lists.freedesktop.org
Date: Wed, 28 Feb 2024 19:14:07 -0000
Message-ID: <170914764760.375736.11574929293925656114@8e613ede5ea5>
X-Patchwork-Hint: ignore
References: <20240228140225.858145-1-juhapekka.heikkila@gmail.com>
In-Reply-To: <20240228140225.858145-1-juhapekka.heikkila@gmail.com>
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

Series: drm/i915/display: Disable AuxCCS framebuffers if built for Xe (rev3)
URL   : https://patchwork.freedesktop.org/series/129166/
State : warning

== Summary ==

Error: dim checkpatch failed
9f5f0f63f1e8 drm/i915/display: Disable AuxCCS framebuffers if built for Xe
-:26: WARNING:IS_ENABLED_CONFIG: IS_ENABLED(I915) is normally used as IS_ENABLED(CONFIG_I915)
#26: FILE: drivers/gpu/drm/i915/display/skl_universal_plane.c:2298:
+	if (!IS_ENABLED(I915) && !HAS_FLAT_CCS(i915))

total: 0 errors, 1 warnings, 0 checks, 9 lines checked


