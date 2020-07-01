Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 4DDEE2106A1
	for <lists+intel-gfx@lfdr.de>; Wed,  1 Jul 2020 10:45:28 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id B65B86E4AF;
	Wed,  1 Jul 2020 08:45:26 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTP id 7305F6E440;
 Wed,  1 Jul 2020 08:45:25 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id 6CA7BA0118;
 Wed,  1 Jul 2020 08:45:25 +0000 (UTC)
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Chris Wilson" <chris@chris-wilson.co.uk>
Date: Wed, 01 Jul 2020 08:45:25 -0000
Message-ID: <159359312544.16669.10566599773411652673@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20200701083936.28723-1-chris@chris-wilson.co.uk>
In-Reply-To: <20200701083936.28723-1-chris@chris-wilson.co.uk>
Subject: [Intel-gfx] =?utf-8?b?4pyXIEZpLkNJLkNIRUNLUEFUQ0g6IHdhcm5pbmcg?=
 =?utf-8?q?for_series_starting_with_=5B1/2=5D_drm/i915/gt=3A_Harden_the_he?=
 =?utf-8?q?artbeat_against_a_stuck_driver?=
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

== Series Details ==

Series: series starting with [1/2] drm/i915/gt: Harden the heartbeat against a stuck driver
URL   : https://patchwork.freedesktop.org/series/78986/
State : warning

== Summary ==

$ dim checkpatch origin/drm-tip
2185948b6b7c drm/i915/gt: Harden the heartbeat against a stuck driver
-:43: WARNING:EMBEDDED_FUNCTION_NAME: Prefer using '"%s...", __func__' to using 'heartbeat', this function's name, in a string
#43: FILE: drivers/gpu/drm/i915/gt/intel_engine_heartbeat.c:135:
+					      "stopped heartbeat on %s",

total: 0 errors, 1 warnings, 0 checks, 35 lines checked
3bc799bb6c5d drm/i915/gt: Move the heartbeat into the highprio system wq

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
