Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 221667B14EC
	for <lists+intel-gfx@lfdr.de>; Thu, 28 Sep 2023 09:32:57 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id A3C8610E5DE;
	Thu, 28 Sep 2023 07:32:55 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [IPv6:2610:10:20:722:a800:ff:feee:56cf])
 by gabe.freedesktop.org (Postfix) with ESMTP id B93CC10E5DB;
 Thu, 28 Sep 2023 07:32:54 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id B6AFEAADDD;
 Thu, 28 Sep 2023 07:32:54 +0000 (UTC)
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Hogander, Jouni" <jouni.hogander@intel.com>
Date: Thu, 28 Sep 2023 07:32:54 -0000
Message-ID: <169588637474.21267.14114346061622553298@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20230928065210.103376-1-jouni.hogander@intel.com>
In-Reply-To: <20230928065210.103376-1-jouni.hogander@intel.com>
Subject: [Intel-gfx] =?utf-8?b?4pyXIEZpLkNJLkNIRUNLUEFUQ0g6IHdhcm5pbmcg?=
 =?utf-8?q?for_drm/i915=3A_Warn_on_if_set_frontbuffer_return_value_is_not_?=
 =?utf-8?q?NULL_on_release?=
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

Series: drm/i915: Warn on if set frontbuffer return value is not NULL on release
URL   : https://patchwork.freedesktop.org/series/124375/
State : warning

== Summary ==

Error: dim checkpatch failed
01ae0b3d36e2 drm/i915: Warn on if set frontbuffer return value is not NULL on release
-:30: CHECK:COMPARISON_TO_NULL: Comparison to NULL could be written "i915_gem_object_set_frontbuffer"
#30: FILE: drivers/gpu/drm/i915/display/intel_frontbuffer.c:263:
+		    i915_gem_object_set_frontbuffer(obj, NULL) != NULL);

total: 0 errors, 0 warnings, 1 checks, 9 lines checked


