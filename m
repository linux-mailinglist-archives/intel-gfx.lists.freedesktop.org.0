Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id E5F9823A28E
	for <lists+intel-gfx@lfdr.de>; Mon,  3 Aug 2020 12:11:21 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 14AD16E22D;
	Mon,  3 Aug 2020 10:11:20 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTP id 838B26E22C;
 Mon,  3 Aug 2020 10:11:19 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id 7B3E5A47DB;
 Mon,  3 Aug 2020 10:11:19 +0000 (UTC)
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Lionel Landwerlin" <lionel.g.landwerlin@intel.com>
Date: Mon, 03 Aug 2020 10:11:19 -0000
Message-ID: <159644947947.19295.14719903557814820929@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20200803090506.260325-1-lionel.g.landwerlin@intel.com>
In-Reply-To: <20200803090506.260325-1-lionel.g.landwerlin@intel.com>
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
URL   : https://patchwork.freedesktop.org/series/80201/
State : warning

== Summary ==

$ dim checkpatch origin/drm-tip
d38db3114f74 drm/i915: introduce a mechanism to extend execbuf2
-:377: CHECK:SPACING: spaces preferred around that '<<' (ctx:VxV)
#377: FILE: include/uapi/drm/i915_drm.h:1204:
+#define __I915_EXEC_UNKNOWN_FLAGS (-(I915_EXEC_USE_EXTENSIONS<<1))
                                                              ^

total: 0 errors, 0 warnings, 1 checks, 333 lines checked
c93fd82a57f8 drm/i915: add syncobj timeline support
-:25: WARNING:COMMIT_LOG_LONG_LINE: Possible unwrapped commit description (prefer a maximum 75 chars per line)
#25: 
    https://lists.freedesktop.org/archives/dri-devel/2019-August/229287.html

-:308: CHECK:LINE_SPACING: Please don't use multiple blank lines
#308: FILE: include/uapi/drm/i915_drm.h:628:
+
+

total: 0 errors, 1 warnings, 1 checks, 291 lines checked
c245506d0af1 drm/i915: peel dma-fence-chains wait fences


_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
