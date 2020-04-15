Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id D46571A8F6D
	for <lists+intel-gfx@lfdr.de>; Wed, 15 Apr 2020 02:02:16 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 2A16D6E196;
	Wed, 15 Apr 2020 00:02:15 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTP id 989926E196;
 Wed, 15 Apr 2020 00:02:13 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id 8AC15A432F;
 Wed, 15 Apr 2020 00:02:13 +0000 (UTC)
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Lionel Landwerlin" <lionel.g.landwerlin@intel.com>
Date: Wed, 15 Apr 2020 00:02:13 -0000
Message-ID: <158690893353.21015.14020905172514472523@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20200414131007.108377-1-lionel.g.landwerlin@intel.com>
In-Reply-To: <20200414131007.108377-1-lionel.g.landwerlin@intel.com>
Subject: [Intel-gfx] =?utf-8?b?4pyXIEZpLkNJLkNIRUNLUEFUQ0g6IHdhcm5pbmcg?=
 =?utf-8?q?for_series_starting_with_=5Bv6=2C1/4=5D_drm/i915/perf=3A_break_?=
 =?utf-8?q?OA_config_buffer_object_in_2?=
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

Series: series starting with [v6,1/4] drm/i915/perf: break OA config buffer object in 2
URL   : https://patchwork.freedesktop.org/series/75920/
State : warning

== Summary ==

$ dim checkpatch origin/drm-tip
29791c84c5a1 drm/i915/perf: break OA config buffer object in 2
bb4da53398c0 drm/i915/perf: stop using the kernel context
-:168: CHECK:LINE_SPACING: Please don't use multiple blank lines
#168: FILE: drivers/gpu/drm/i915/i915_perf.c:2524:
 
+

total: 0 errors, 0 warnings, 1 checks, 325 lines checked
9dc9a1aaf289 drm/i915/perf: prepare driver to receive multiple ctx handles
11441aa78074 drm/i915/perf: enable filtering on multiple contexts

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
