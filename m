Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 6C9FAA32EDA
	for <lists+intel-gfx@lfdr.de>; Wed, 12 Feb 2025 19:47:54 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 596BF10E95C;
	Wed, 12 Feb 2025 18:47:52 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from b555e5b46a47 (emeril.freedesktop.org [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTPS id C8A8B10E95C;
 Wed, 12 Feb 2025 18:47:50 +0000 (UTC)
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Subject: =?utf-8?q?=E2=9C=97_Fi=2ECI=2ECHECKPATCH=3A_warning_for_series_starting_with?=
 =?utf-8?q?_=5Bv2=2C1/3=5D_drm/i915/selftests=3A_use_prandom_in_selftest?=
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Markus Theil" <theil.markus@gmail.com>
Cc: intel-gfx@lists.freedesktop.org
Date: Wed, 12 Feb 2025 18:47:50 -0000
Message-ID: <173938607081.1385175.15625677487245516525@b555e5b46a47>
X-Patchwork-Hint: ignore
References: <CAHmME9oqvWp_Nd1Gwgyw52qy8wxztMyCpNsjByH=VnRaXqczww@mail.gmail.com>
In-Reply-To: <CAHmME9oqvWp_Nd1Gwgyw52qy8wxztMyCpNsjByH=VnRaXqczww@mail.gmail.com>
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

Series: series starting with [v2,1/3] drm/i915/selftests: use prandom in selftest
URL   : https://patchwork.freedesktop.org/series/144730/
State : warning

== Summary ==

Error: dim checkpatch failed
80e43911b42c drm/i915/selftests: use prandom in selftest
bd0e312b6b02 media: vivid: use prandom
-:20: WARNING:LINE_SPACING: Missing a blank line after declarations
#20: FILE: drivers/media/test-drivers/vivid/vivid-vid-cap.c:304:
+		struct rnd_state prng;
+		prandom_seed_state(&prng, dev->tv_freq ^ 0x55);

total: 0 errors, 1 warnings, 0 checks, 11 lines checked
9f728ec76476 prandom: remove next_pseudo_random32


