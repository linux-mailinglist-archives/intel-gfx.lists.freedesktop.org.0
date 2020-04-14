Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id BA4F51A8EB4
	for <lists+intel-gfx@lfdr.de>; Wed, 15 Apr 2020 00:39:19 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 0F4956E5BD;
	Tue, 14 Apr 2020 22:39:18 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [IPv6:2610:10:20:722:a800:ff:feee:56cf])
 by gabe.freedesktop.org (Postfix) with ESMTP id 516296E5B6;
 Tue, 14 Apr 2020 22:39:16 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id 4A897A432F;
 Tue, 14 Apr 2020 22:39:16 +0000 (UTC)
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Manasi Navare" <manasi.d.navare@intel.com>
Date: Tue, 14 Apr 2020 22:39:16 -0000
Message-ID: <158690395630.30377.3454755456715026204@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20200414050807.13531-1-manasi.d.navare@intel.com>
In-Reply-To: <20200414050807.13531-1-manasi.d.navare@intel.com>
Subject: [Intel-gfx] =?utf-8?b?4pyXIEZpLkNJLkNIRUNLUEFUQ0g6IHdhcm5pbmcg?=
 =?utf-8?q?for_series_starting_with_=5Bv4=2C1/3=5D_drm/dp=3A_DRM_DP_helper?=
 =?utf-8?q?_for_reading_Ignore_MSA_from_DPCD?=
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

Series: series starting with [v4,1/3] drm/dp: DRM DP helper for reading Ignore MSA from DPCD
URL   : https://patchwork.freedesktop.org/series/75899/
State : warning

== Summary ==

$ dim checkpatch origin/drm-tip
e720179743cc drm/dp: DRM DP helper for reading Ignore MSA from DPCD
2cbf52b03156 drm/i915/dp: Attach and set drm connector VRR property
8f0b035d39de drm/i915/dp: Expose connector VRR info via debugfs
-:69: WARNING:SYMBOLIC_PERMS: Symbolic permissions 'S_IRUGO' are not preferred. Consider using octal permissions '0444'.
#69: FILE: drivers/gpu/drm/i915/display/intel_display_debugfs.c:2153:
+			debugfs_create_file("i915_vrr_info", S_IRUGO,

total: 0 errors, 1 warnings, 0 checks, 36 lines checked

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
