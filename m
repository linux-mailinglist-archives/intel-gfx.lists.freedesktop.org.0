Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 27F4D3DB8A6
	for <lists+intel-gfx@lfdr.de>; Fri, 30 Jul 2021 14:32:13 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 8907C6F42A;
	Fri, 30 Jul 2021 12:32:11 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTP id E5E7C6F42A;
 Fri, 30 Jul 2021 12:32:10 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id DE66BA8832;
 Fri, 30 Jul 2021 12:32:10 +0000 (UTC)
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Daniel Vetter" <daniel.vetter@ffwll.ch>
Date: Fri, 30 Jul 2021 12:32:10 -0000
Message-ID: <162764833090.582.6320613014043501374@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20210730095251.4343-1-daniel.vetter@ffwll.ch>
In-Reply-To: <20210730095251.4343-1-daniel.vetter@ffwll.ch>
Subject: [Intel-gfx] =?utf-8?b?4pyXIEZpLkNJLkNIRUNLUEFUQ0g6IHdhcm5pbmcg?=
 =?utf-8?q?for_drm=3A_Fix_oops_in_damage_self-tests_by_mocking_damage_prop?=
 =?utf-8?q?erty?=
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

Series: drm: Fix oops in damage self-tests by mocking damage property
URL   : https://patchwork.freedesktop.org/series/93233/
State : warning

== Summary ==

$ dim checkpatch origin/drm-tip
3efd59452f81 drm: Fix oops in damage self-tests by mocking damage property
-:52: ERROR:INITIALISED_STATIC: do not initialise statics to false
#52: FILE: drivers/gpu/drm/selftests/test-drm_damage_helper.c:22:
+	static bool setup_done = false;

-:83: WARNING:TRAILING_SEMICOLON: macros should not use a trailing semicolon
#83: FILE: drivers/gpu/drm/selftests/test-drm_damage_helper.c:107:
+#define MOCK_VARIABLES() \
+	struct drm_plane_state old_state; \
+	struct drm_plane_state state = { \
+		.crtc = ZERO_SIZE_PTR, \
+		.fb = (struct drm_framebuffer *) &fb, \
+		.visible = true, \
+	}; \
+	mock_setup(&old_state); \
+	mock_setup(&state);

-:87: CHECK:SPACING: No space is necessary after a cast
#87: FILE: drivers/gpu/drm/selftests/test-drm_damage_helper.c:111:
+		.fb = (struct drm_framebuffer *) &fb, \

-:572: WARNING:FROM_SIGN_OFF_MISMATCH: From:/Signed-off-by: email address mismatch: 'From: Daniel Vetter <daniel.vetter@ffwll.ch>' != 'Signed-off-by: Daniel Vetter <daniel.vetter@intel.com>'

total: 1 errors, 2 warnings, 1 checks, 516 lines checked


