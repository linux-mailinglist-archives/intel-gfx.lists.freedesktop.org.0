Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 6A86F404DC9
	for <lists+intel-gfx@lfdr.de>; Thu,  9 Sep 2021 14:10:38 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id E5E5F6E85C;
	Thu,  9 Sep 2021 12:10:35 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTP id B53CA6E85C;
 Thu,  9 Sep 2021 12:10:34 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id AB18FA00C9;
 Thu,  9 Sep 2021 12:10:34 +0000 (UTC)
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Tvrtko Ursulin" <tvrtko.ursulin@linux.intel.com>
Cc: intel-gfx@lists.freedesktop.org
Date: Thu, 09 Sep 2021 12:10:34 -0000
Message-ID: <163118943466.16810.2496758773765942466@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20210909114448.508493-1-tvrtko.ursulin@linux.intel.com>
In-Reply-To: <20210909114448.508493-1-tvrtko.ursulin@linux.intel.com>
Subject: [Intel-gfx] =?utf-8?b?4pyXIEZpLkNJLkNIRUNLUEFUQ0g6IHdhcm5pbmcg?=
 =?utf-8?q?for_drm/i915=3A_Use_Transparent_Hugepages_when_IOMMU_is_enabled?=
 =?utf-8?q?_=28rev3=29?=
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
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

== Series Details ==

Series: drm/i915: Use Transparent Hugepages when IOMMU is enabled (rev3)
URL   : https://patchwork.freedesktop.org/series/93122/
State : warning

== Summary ==

$ dim checkpatch origin/drm-tip
50ce004fa7ce drm/i915: Use Transparent Hugepages when IOMMU is enabled
-:6: ERROR:GIT_COMMIT_ID: Please use git commit description style 'commit <12+ chars of sha1> ("<title line>")' - ie: 'commit 9987da4b5dcf ("drm/i915: Disable THP until we have a GPU read BW W/A")'
#6: 
Usage of Transparent Hugepages was disabled in 9987da4b5dcf

-:149: ERROR:GIT_COMMIT_ID: Please use git commit description style 'commit <12+ chars of sha1> ("<title line>")' - ie: 'commit b901bb89324a ("drm/i915/gemfs: enable THP")'
#149: 
References: b901bb89324a ("drm/i915/gemfs: enable THP")

-:150: WARNING:COMMIT_LOG_LONG_LINE: Possible unwrapped commit description (prefer a maximum 75 chars per line)
#150: 
References: 9987da4b5dcf ("drm/i915: Disable THP until we have a GPU read BW W/A")

-:150: ERROR:GIT_COMMIT_ID: Please use git commit description style 'commit <12+ chars of sha1> ("<title line>")' - ie: 'commit 9987da4b5dcf ("drm/i915: Disable THP until we have a GPU read BW W/A")'
#150: 
References: 9987da4b5dcf ("drm/i915: Disable THP until we have a GPU read BW W/A")

-:196: WARNING:STATIC_CONST_CHAR_ARRAY: static char array declaration should probably be static const char
#196: FILE: drivers/gpu/drm/i915/gem/i915_gemfs.c:36:
+			static char huge_opt[] = "huge=within_size"; /* r/w */

total: 3 errors, 2 warnings, 0 checks, 42 lines checked


