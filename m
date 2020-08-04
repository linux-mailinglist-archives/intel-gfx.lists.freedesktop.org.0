Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 620BB23B919
	for <lists+intel-gfx@lfdr.de>; Tue,  4 Aug 2020 12:51:31 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id D1D7B6E090;
	Tue,  4 Aug 2020 10:51:29 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [IPv6:2610:10:20:722:a800:ff:feee:56cf])
 by gabe.freedesktop.org (Postfix) with ESMTP id 087786E090;
 Tue,  4 Aug 2020 10:51:29 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id 01C43A0BCB;
 Tue,  4 Aug 2020 10:51:29 +0000 (UTC)
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Lionel Landwerlin" <lionel.g.landwerlin@intel.com>
Date: Tue, 04 Aug 2020 10:51:29 -0000
Message-ID: <159653828900.12580.5413575082098086675@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20200804085954.350343-1-lionel.g.landwerlin@intel.com>
In-Reply-To: <20200804085954.350343-1-lionel.g.landwerlin@intel.com>
Subject: [Intel-gfx] =?utf-8?b?4pyXIEZpLkNJLkNIRUNLUEFUQ0g6IHdhcm5pbmcg?=
 =?utf-8?q?for_drm/i915=3A_add_syncobj_timeline_support?=
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

Series: drm/i915: add syncobj timeline support
URL   : https://patchwork.freedesktop.org/series/80245/
State : warning

== Summary ==

$ dim checkpatch origin/drm-tip
3effdabf8574 drm/i915: introduce a mechanism to extend execbuf2
-:377: CHECK:SPACING: spaces preferred around that '<<' (ctx:VxV)
#377: FILE: include/uapi/drm/i915_drm.h:1204:
+#define __I915_EXEC_UNKNOWN_FLAGS (-(I915_EXEC_USE_EXTENSIONS<<1))
                                                              ^

total: 0 errors, 0 warnings, 1 checks, 333 lines checked
73f06b6f331d drm/i915: add syncobj timeline support
-:25: WARNING:COMMIT_LOG_LONG_LINE: Possible unwrapped commit description (prefer a maximum 75 chars per line)
#25: 
    https://lists.freedesktop.org/archives/dri-devel/2019-August/229287.html

-:35: WARNING:BAD_SIGN_OFF: Non-standard signature: Co-authored-by:
#35: 
Co-authored-by: Chris Wilson <chris@chris-wilson.co.uk>

total: 0 errors, 2 warnings, 0 checks, 524 lines checked


_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
