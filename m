Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id D50B53DA273
	for <lists+intel-gfx@lfdr.de>; Thu, 29 Jul 2021 13:48:38 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 515B56E1A8;
	Thu, 29 Jul 2021 11:48:37 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTP id A24436E1A8;
 Thu, 29 Jul 2021 11:48:35 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id 9BBE5AA915;
 Thu, 29 Jul 2021 11:48:35 +0000 (UTC)
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Tvrtko Ursulin" <tvrtko.ursulin@linux.intel.com>
Date: Thu, 29 Jul 2021 11:48:35 -0000
Message-ID: <162755931563.27324.11268197814645098181@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20210729111848.729888-1-tvrtko.ursulin@linux.intel.com>
In-Reply-To: <20210729111848.729888-1-tvrtko.ursulin@linux.intel.com>
Subject: [Intel-gfx] =?utf-8?b?4pyXIEZpLkNJLkNIRUNLUEFUQ0g6IHdhcm5pbmcg?=
 =?utf-8?q?for_series_starting_with_=5B1/2=5D_drm/i915/selftests=3A_fixup_?=
 =?utf-8?q?igt=5Fshrink=5Fthp?=
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

Series: series starting with [1/2] drm/i915/selftests: fixup igt_shrink_thp
URL   : https://patchwork.freedesktop.org/series/93176/
State : warning

== Summary ==

$ dim checkpatch origin/drm-tip
2870e3292b14 drm/i915/selftests: fixup igt_shrink_thp
2b2db1afa93b drm/i915: Use Transparent Hugepages when IOMMU is enabled
-:6: ERROR:GIT_COMMIT_ID: Please use git commit description style 'commit <12+ chars of sha1> ("<title line>")' - ie: 'commit 9987da4b5dcf ("drm/i915: Disable THP until we have a GPU read BW W/A")'
#6: 
Usage of Transparent Hugepages was disabled in 9987da4b5dcf

-:25: ERROR:GIT_COMMIT_ID: Please use git commit description style 'commit <12+ chars of sha1> ("<title line>")' - ie: 'commit b901bb89324a ("drm/i915/gemfs: enable THP")'
#25: 
References: b901bb89324a ("drm/i915/gemfs: enable THP")

-:26: WARNING:COMMIT_LOG_LONG_LINE: Possible unwrapped commit description (prefer a maximum 75 chars per line)
#26: 
References: 9987da4b5dcf ("drm/i915: Disable THP until we have a GPU read BW W/A")

-:26: ERROR:GIT_COMMIT_ID: Please use git commit description style 'commit <12+ chars of sha1> ("<title line>")' - ie: 'commit 9987da4b5dcf ("drm/i915: Disable THP until we have a GPU read BW W/A")'
#26: 
References: 9987da4b5dcf ("drm/i915: Disable THP until we have a GPU read BW W/A")

-:130: WARNING:STATIC_CONST_CHAR_ARRAY: static char array declaration should probably be static const char
#130: FILE: drivers/gpu/drm/i915/gem/i915_gemfs.c:17:
+	static char thp_native[] = "huge=" CONFIG_DRM_I915_THP_NATIVE;

-:131: WARNING:STATIC_CONST_CHAR_ARRAY: static char array declaration should probably be static const char
#131: FILE: drivers/gpu/drm/i915/gem/i915_gemfs.c:18:
+	static char thp_iommu[] = "huge=" CONFIG_DRM_I915_THP_IOMMU;

-:146: CHECK:LINE_SPACING: Please don't use multiple blank lines
#146: FILE: drivers/gpu/drm/i915/gem/i915_gemfs.c:33:
+
+

total: 3 errors, 3 warnings, 1 checks, 116 lines checked


_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
