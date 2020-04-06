Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 9B9CA1A00A9
	for <lists+intel-gfx@lfdr.de>; Tue,  7 Apr 2020 00:13:08 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id EA3D36E042;
	Mon,  6 Apr 2020 22:13:06 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [IPv6:2610:10:20:722:a800:ff:feee:56cf])
 by gabe.freedesktop.org (Postfix) with ESMTP id E81B289DBD;
 Mon,  6 Apr 2020 22:13:05 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id E0822A00E7;
 Mon,  6 Apr 2020 22:13:05 +0000 (UTC)
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Venkata Sandeep Dhanalakota" <venkata.s.dhanalakota@intel.com>
Date: Mon, 06 Apr 2020 22:13:05 -0000
Message-ID: <158621118591.4191.10615823528631284943@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20200406200710.2056-1-venkata.s.dhanalakota@intel.com>
In-Reply-To: <20200406200710.2056-1-venkata.s.dhanalakota@intel.com>
Subject: [Intel-gfx] =?utf-8?b?4pyXIEZpLkNJLkNIRUNLUEFUQ0g6IHdhcm5pbmcg?=
 =?utf-8?q?for_series_starting_with_=5B1/3=5D_drm/i915=3A_introduce_a_mech?=
 =?utf-8?q?anism_to_extend_execbuf2?=
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

Series: series starting with [1/3] drm/i915: introduce a mechanism to extend execbuf2
URL   : https://patchwork.freedesktop.org/series/75570/
State : warning

== Summary ==

$ dim checkpatch origin/drm-tip
296bd5133612 drm/i915: introduce a mechanism to extend execbuf2
-:141: CHECK:SPACING: spaces preferred around that '<<' (ctx:VxV)
#141: FILE: include/uapi/drm/i915_drm.h:1204:
+#define __I915_EXEC_UNKNOWN_FLAGS (-(I915_EXEC_USE_EXTENSIONS<<1))
                                                              ^

total: 0 errors, 0 warnings, 1 checks, 113 lines checked
26b10e8e5551 drm/i915: add syncobj timeline support
-:26: WARNING:COMMIT_LOG_LONG_LINE: Possible unwrapped commit description (prefer a maximum 75 chars per line)
#26: 
    https://lists.freedesktop.org/archives/dri-devel/2019-August/229287.html

-:34: ERROR:BAD_SIGN_OFF: Unrecognized email address: 'Venkata Sandeep Dhanalakota <venkata.s.dhanalakota at intel.com>'
#34: 
Signed-off-by: Venkata Sandeep Dhanalakota <venkata.s.dhanalakota at intel.com>

-:622: WARNING:NO_AUTHOR_SIGN_OFF: Missing Signed-off-by: line by nominal patch author 'Venkata Sandeep Dhanalakota <venkata.s.dhanalakota@intel.com>'

total: 1 errors, 2 warnings, 0 checks, 551 lines checked
afdb9ac918ac drm/i915: peel dma-fence-chains wait fences

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
