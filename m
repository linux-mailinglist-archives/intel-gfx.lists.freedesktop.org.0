Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 928FC7A623B
	for <lists+intel-gfx@lfdr.de>; Tue, 19 Sep 2023 14:12:24 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id DB98210E0FE;
	Tue, 19 Sep 2023 12:12:21 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTP id 9AC4B10E0FE;
 Tue, 19 Sep 2023 12:12:20 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id 9AFB1AA01E;
 Tue, 19 Sep 2023 12:12:20 +0000 (UTC)
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Nirmoy Das" <nirmoy.das@intel.com>
Date: Tue, 19 Sep 2023 12:12:20 -0000
Message-ID: <169512554063.3667.14229832881235198938@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20230919114716.19378-1-nirmoy.das@intel.com>
In-Reply-To: <20230919114716.19378-1-nirmoy.das@intel.com>
Subject: [Intel-gfx] =?utf-8?b?4pyXIEZpLkNJLkNIRUNLUEFUQ0g6IHdhcm5pbmcg?=
 =?utf-8?q?for_drm/i915=3A_Fix_aux_invalidation_with_proper_pipe=5Fcontrol?=
 =?utf-8?q?_flag?=
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

Series: drm/i915: Fix aux invalidation with proper pipe_control flag
URL   : https://patchwork.freedesktop.org/series/123907/
State : warning

== Summary ==

Error: dim checkpatch failed
6b401a9262b1 drm/i915: Fix aux invalidation with proper pipe_control flag
-:8: WARNING:BAD_FIXES_TAG: Please use correct Fixes: style 'Fixes: <12 chars of sha1> ("<title line>")' - ie: 'Fixes: 6b401a9262b1 ("drm/i915: Fix aux invalidation with proper pipe_control flag")'
#8: 
Fixes: 78a6ccd65fa3 ("drm/i915/gt: Ensure memory quiesced before

-:47: CHECK:SPACING: spaces preferred around that '<<' (ctx:VxV)
#47: FILE: drivers/gpu/drm/i915/gt/intel_gpu_commands.h:287:
+#define   PIPE_CONTROL_L3_FABRIC_FLUSH			(1<<30)
                                       			  ^

total: 0 errors, 1 warnings, 1 checks, 19 lines checked


