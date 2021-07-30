Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 708573DB8A8
	for <lists+intel-gfx@lfdr.de>; Fri, 30 Jul 2021 14:32:40 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id DE1816F42E;
	Fri, 30 Jul 2021 12:32:38 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTP id 5D6CF6F42E;
 Fri, 30 Jul 2021 12:32:38 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id 5A124A8832;
 Fri, 30 Jul 2021 12:32:38 +0000 (UTC)
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Daniel Vetter" <daniel.vetter@ffwll.ch>
Date: Fri, 30 Jul 2021 12:32:38 -0000
Message-ID: <162764835836.590.16467460209277924789@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20210730095251.4343-1-daniel.vetter@ffwll.ch>
In-Reply-To: <20210730095251.4343-1-daniel.vetter@ffwll.ch>
Subject: [Intel-gfx] =?utf-8?b?4pyXIEZpLkNJLlNQQVJTRTogd2FybmluZyBmb3Ig?=
 =?utf-8?q?drm=3A_Fix_oops_in_damage_self-tests_by_mocking_damage_property?=
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

$ dim sparse --fast origin/drm-tip
Sparse version: v0.6.2
Fast mode used, each commit won't be checked separately.
-O:drivers/gpu/drm/selftests/test-drm_damage_helper.c:244:25: warning: Using plain integer as NULL pointer
-O:drivers/gpu/drm/selftests/test-drm_damage_helper.c:268:23: warning: Using plain integer as NULL pointer
+drivers/gpu/drm/selftests/test-drm_damage_helper.c:101:30: warning: symbol 'fb' was not declared. Should it be static?
+drivers/gpu/drm/selftests/test-drm_damage_helper.c:14:19: warning: symbol 'mock_driver' was not declared. Should it be static?
+drivers/gpu/drm/selftests/test-drm_damage_helper.c:15:19: warning: symbol 'mock_device' was not declared. Should it be static?
+drivers/gpu/drm/selftests/test-drm_damage_helper.c:16:30: warning: symbol 'mock_obj_props' was not declared. Should it be static?
+drivers/gpu/drm/selftests/test-drm_damage_helper.c:17:18: warning: symbol 'mock_plane' was not declared. Should it be static?
+drivers/gpu/drm/selftests/test-drm_damage_helper.c:18:21: warning: symbol 'mock_prop' was not declared. Should it be static?
+drivers/gpu/drm/selftests/test-drm_damage_helper.c:259:23: warning: Using plain integer as NULL pointer


