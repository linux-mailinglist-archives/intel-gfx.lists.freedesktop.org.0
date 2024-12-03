Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 0A1FD9E23D0
	for <lists+intel-gfx@lfdr.de>; Tue,  3 Dec 2024 16:43:28 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id A468F10EA6A;
	Tue,  3 Dec 2024 15:43:26 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from b555e5b46a47 (emeril.freedesktop.org [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTPS id BAD8C10EA6A;
 Tue,  3 Dec 2024 15:43:25 +0000 (UTC)
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Subject: =?utf-8?q?=E2=9C=97_Fi=2ECI=2ECHECKPATCH=3A_warning_for_drm/i915=3A_Fix_NULL?=
 =?utf-8?q?_pointer_dereference_in_capture=5Fengine_=28rev3=29?=
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Eugene Kobyak" <eugene.kobyak@intel.com>
Cc: intel-gfx@lists.freedesktop.org
Date: Tue, 03 Dec 2024 15:43:25 -0000
Message-ID: <173324060575.2060734.13367376409163276688@b555e5b46a47>
X-Patchwork-Hint: ignore
References: <xmsgfynkhycw3cf56akp4he2ffg44vuratocsysaowbsnhutzi@augnqbm777at>
In-Reply-To: <xmsgfynkhycw3cf56akp4he2ffg44vuratocsysaowbsnhutzi@augnqbm777at>
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

Series: drm/i915: Fix NULL pointer dereference in capture_engine (rev3)
URL   : https://patchwork.freedesktop.org/series/141903/
State : warning

== Summary ==

Error: dim checkpatch failed
1c375594aaab drm/i915: Fix NULL pointer dereference in capture_engine
-:29: WARNING:BLOCK_COMMENT_STYLE: Block comments should align the * on each line
#29: FILE: drivers/gpu/drm/i915/i915_gpu_error.c:1648:
+		/*
+		* We want to know also what is the gcu_id of the context,

-:35: CHECK:PARENTHESIS_ALIGNMENT: Alignment should match open parenthesis
#35: FILE: drivers/gpu/drm/i915/i915_gpu_error.c:1654:
+			drm_info(&engine->gt->i915->drm,
+				"Got hung context on %s with active request %lld:%lld [0x%04X] not yet started\n",

-:39: CHECK:PARENTHESIS_ALIGNMENT: Alignment should match open parenthesis
#39: FILE: drivers/gpu/drm/i915/i915_gpu_error.c:1658:
+			drm_info(&engine->gt->i915->drm,
+				"Got hung context on %s with active request %lld:%lld not yet started\n",

total: 0 errors, 1 warnings, 2 checks, 24 lines checked


