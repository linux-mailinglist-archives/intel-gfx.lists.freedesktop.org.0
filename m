Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id ADF0C172883
	for <lists+intel-gfx@lfdr.de>; Thu, 27 Feb 2020 20:22:54 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 4D37D6E85E;
	Thu, 27 Feb 2020 19:22:52 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [IPv6:2610:10:20:722:a800:ff:feee:56cf])
 by gabe.freedesktop.org (Postfix) with ESMTP id 19F496E85E;
 Thu, 27 Feb 2020 19:22:51 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id 11BB2A7DFA;
 Thu, 27 Feb 2020 19:22:51 +0000 (UTC)
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Jani Nikula" <jani.nikula@intel.com>
Date: Thu, 27 Feb 2020 19:22:51 -0000
Message-ID: <158283137104.29657.6935444847815967058@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20200227161253.15741-1-jani.nikula@intel.com>
In-Reply-To: <20200227161253.15741-1-jani.nikula@intel.com>
Subject: [Intel-gfx] =?utf-8?b?4pyXIEZpLkNJLkNIRUNLUEFUQ0g6IHdhcm5pbmcg?=
 =?utf-8?q?for_drm/i915/crc=3A_move_pipe=5Fcrc_from_drm=5Fi915=5Fprivate_t?=
 =?utf-8?q?o_intel=5Fcrtc?=
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

Series: drm/i915/crc: move pipe_crc from drm_i915_private to intel_crtc
URL   : https://patchwork.freedesktop.org/series/74031/
State : warning

== Summary ==

$ dim checkpatch origin/drm-tip
4a7fff1e2426 drm/i915/crc: move pipe_crc from drm_i915_private to intel_crtc
-:64: CHECK:UNCOMMENTED_DEFINITION: spinlock_t definition without comment
#64: FILE: drivers/gpu/drm/i915/display/intel_display_types.h:1069:
+	spinlock_t lock;

total: 0 errors, 0 warnings, 1 checks, 167 lines checked

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
