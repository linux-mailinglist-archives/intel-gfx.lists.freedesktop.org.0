Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id ED0506F6232
	for <lists+intel-gfx@lfdr.de>; Thu,  4 May 2023 01:46:09 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id BD7F310E355;
	Wed,  3 May 2023 23:46:07 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTP id 154CB10E102;
 Wed,  3 May 2023 23:46:07 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id 0F232A0BA8;
 Wed,  3 May 2023 23:46:07 +0000 (UTC)
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
From: Patchwork <patchwork@emeril.freedesktop.org>
To: fei.yang@intel.com
Date: Wed, 03 May 2023 23:46:07 -0000
Message-ID: <168315756703.9282.15605022689776219105@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20230503230211.2834340-1-fei.yang@intel.com>
In-Reply-To: <20230503230211.2834340-1-fei.yang@intel.com>
Subject: [Intel-gfx] =?utf-8?b?4pyXIEZpLkNJLkNIRUNLUEFUQ0g6IHdhcm5pbmcg?=
 =?utf-8?q?for_drm/i915=3A_Allow_user_to_set_cache_at_BO_creation_=28rev5?=
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

Series: drm/i915: Allow user to set cache at BO creation (rev5)
URL   : https://patchwork.freedesktop.org/series/116870/
State : warning

== Summary ==

Error: dim checkpatch failed
8d4bca57da62 drm/i915: preparation for using PAT index
632ff256c617 drm/i915: use pat_index instead of cache_level
-:1600: ERROR:TRAILING_STATEMENTS: trailing statements should be on next line
#1600: FILE: drivers/gpu/drm/i915/i915_debugfs.c:178:
+		case 1: return HAS_LLC(i915) ? " LLC" : " snooped";

total: 1 errors, 0 warnings, 0 checks, 1614 lines checked
77e7509b2b2f drm/i915: make sure correct pte encode is used
e7bf3d2d0bbe drm/i915/mtl: end support for set caching ioctl
9abbc7aed087 drm/i915: Allow user to set cache at BO creation


