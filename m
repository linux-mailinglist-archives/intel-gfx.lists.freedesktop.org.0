Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 63C5AA2F6A2
	for <lists+intel-gfx@lfdr.de>; Mon, 10 Feb 2025 19:16:39 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 4185A10E1F7;
	Mon, 10 Feb 2025 18:16:37 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from b555e5b46a47 (emeril.freedesktop.org [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 7A3A910E1F7;
 Mon, 10 Feb 2025 18:16:36 +0000 (UTC)
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Subject: =?utf-8?q?=E2=9C=97_Fi=2ECI=2ECHECKPATCH=3A_warning_for_prandom=3A_remove_ne?=
 =?utf-8?q?xt=5Fpseudo=5Frandom32?=
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Markus Theil" <theil.markus@gmail.com>
Cc: intel-gfx@lists.freedesktop.org
Date: Mon, 10 Feb 2025 18:16:36 -0000
Message-ID: <173921139649.436326.16929236091491904513@b555e5b46a47>
X-Patchwork-Hint: ignore
References: <20250210133556.66431-1-theil.markus@gmail.com>
In-Reply-To: <20250210133556.66431-1-theil.markus@gmail.com>
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

Series: prandom: remove next_pseudo_random32
URL   : https://patchwork.freedesktop.org/series/144613/
State : warning

== Summary ==

Error: dim checkpatch failed
5d8c46c50567 prandom: remove next_pseudo_random32
-:62: WARNING:LINE_SPACING: Missing a blank line after declarations
#62: FILE: drivers/media/test-drivers/vivid/vivid-vid-cap.c:304:
+		struct rnd_state prng;
+		prandom_seed_state(&prng, dev->tv_freq ^ 0x55);

total: 0 errors, 1 warnings, 0 checks, 46 lines checked


