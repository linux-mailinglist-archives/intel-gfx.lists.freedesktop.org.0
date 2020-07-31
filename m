Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id B60D223479B
	for <lists+intel-gfx@lfdr.de>; Fri, 31 Jul 2020 16:17:51 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id BC7C66EAC1;
	Fri, 31 Jul 2020 14:17:49 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTP id CD0CD6EABE;
 Fri, 31 Jul 2020 14:17:47 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id C07F8A363D;
 Fri, 31 Jul 2020 14:17:47 +0000 (UTC)
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Lionel Landwerlin" <lionel.g.landwerlin@intel.com>
Date: Fri, 31 Jul 2020 14:17:47 -0000
Message-ID: <159620506775.10472.12400611464449558876@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20200731134553.156492-1-lionel.g.landwerlin@intel.com>
In-Reply-To: <20200731134553.156492-1-lionel.g.landwerlin@intel.com>
Subject: [Intel-gfx] =?utf-8?b?4pyXIEZpLkNJLkNIRUNLUEFUQ0g6IHdhcm5pbmcg?=
 =?utf-8?q?for_drm/i915=3A_timeline_semaphore_support?=
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

Series: drm/i915: timeline semaphore support
URL   : https://patchwork.freedesktop.org/series/80146/
State : warning

== Summary ==

$ dim checkpatch origin/drm-tip
1d1036f097fd drm/i915: introduce a mechanism to extend execbuf2
-:377: CHECK:SPACING: spaces preferred around that '<<' (ctx:VxV)
#377: FILE: include/uapi/drm/i915_drm.h:1204:
+#define __I915_EXEC_UNKNOWN_FLAGS (-(I915_EXEC_USE_EXTENSIONS<<1))
                                                              ^

total: 0 errors, 0 warnings, 1 checks, 333 lines checked
6ce048ef3ae9 drm/i915: add syncobj timeline support
-:25: WARNING:COMMIT_LOG_LONG_LINE: Possible unwrapped commit description (prefer a maximum 75 chars per line)
#25: 
    https://lists.freedesktop.org/archives/dri-devel/2019-August/229287.html

-:308: CHECK:LINE_SPACING: Please don't use multiple blank lines
#308: FILE: include/uapi/drm/i915_drm.h:628:
+
+

total: 0 errors, 1 warnings, 1 checks, 291 lines checked
13d5e473be67 drm/i915: peel dma-fence-chains wait fences


_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
