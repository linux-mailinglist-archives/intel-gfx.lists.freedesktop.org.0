Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 5C5974C203D
	for <lists+intel-gfx@lfdr.de>; Thu, 24 Feb 2022 00:50:14 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 88D1410E121;
	Wed, 23 Feb 2022 23:50:12 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [IPv6:2610:10:20:722:a800:ff:feee:56cf])
 by gabe.freedesktop.org (Postfix) with ESMTP id 5F0BB10E276;
 Wed, 23 Feb 2022 23:50:11 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id 59B52AADD4;
 Wed, 23 Feb 2022 23:50:11 +0000 (UTC)
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Imre Deak" <imre.deak@intel.com>
Date: Wed, 23 Feb 2022 23:50:11 -0000
Message-ID: <164566021136.25288.13882372580072650411@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20220222165137.1004194-1-imre.deak@intel.com>
In-Reply-To: <20220222165137.1004194-1-imre.deak@intel.com>
Subject: [Intel-gfx] =?utf-8?b?4pyXIEZpLkNJLkNIRUNLUEFUQ0g6IHdhcm5pbmcg?=
 =?utf-8?q?for_drm/i915=3A_Move_power_well_code_to_a_separate_file_=28rev2?=
 =?utf-8?q?=29?=
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

Series: drm/i915: Move power well code to a separate file (rev2)
URL   : https://patchwork.freedesktop.org/series/100591/
State : warning

== Summary ==

$ dim checkpatch origin/drm-tip
27d38490b3c1 drm/i915: Fix the VDSC_PW2 power domain enum value
5c755c694d9d drm/i915: Sanitize open-coded power well enable()/disable() calls
c7ba874e9ab2 drm/i915: Remove redundant state verification during TypeC AUX power well disabling
0e55a7f760fd drm/i915: Move i915_power_well_regs struct into i915_power_well_ops
081e436efd29 drm/i915: Move power well get/put/enable/disable functions to a new file
-:188: WARNING:FILE_PATH_CHANGES: added, moved or deleted file(s), does MAINTAINERS need updating?
#188: 
new file mode 100644

total: 0 errors, 1 warnings, 0 checks, 308 lines checked
c16a7406900a drm/i915: Add function to call a power well's sync_hw() hook
8fa77d53732a drm/i915: Add functions to get a power well's state/name/domains/mask/refcount
9c9e390deab3 drm/i915: Move intel_display_power_well_is_enabled() to intel_display_power_well.c


