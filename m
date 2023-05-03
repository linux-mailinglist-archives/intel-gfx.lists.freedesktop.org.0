Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 5490F6F61F8
	for <lists+intel-gfx@lfdr.de>; Thu,  4 May 2023 01:16:53 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 9A30510E374;
	Wed,  3 May 2023 23:16:51 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTP id A39DF10E36F;
 Wed,  3 May 2023 23:16:49 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id 9AF7BA66C9;
 Wed,  3 May 2023 23:16:49 +0000 (UTC)
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
From: Patchwork <patchwork@emeril.freedesktop.org>
To: fei.yang@intel.com
Date: Wed, 03 May 2023 23:16:49 -0000
Message-ID: <168315580963.9281.13169114954987782655@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20230503225100.2834222-1-fei.yang@intel.com>
In-Reply-To: <20230503225100.2834222-1-fei.yang@intel.com>
Subject: [Intel-gfx] =?utf-8?b?4pyXIEZpLkNJLkNIRUNLUEFUQ0g6IHdhcm5pbmcg?=
 =?utf-8?q?for_drm/i915=3A_use_pat=5Findex_instead_of_cache=5Flevel_=28rev?=
 =?utf-8?q?3=29?=
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

Series: drm/i915: use pat_index instead of cache_level (rev3)
URL   : https://patchwork.freedesktop.org/series/117082/
State : warning

== Summary ==

Error: dim checkpatch failed
e0adba081465 drm/i915: preparation for using PAT index
7b0702fb0a64 drm/i915: use pat_index instead of cache_level
-:1600: ERROR:TRAILING_STATEMENTS: trailing statements should be on next line
#1600: FILE: drivers/gpu/drm/i915/i915_debugfs.c:178:
+		case 1: return HAS_LLC(i915) ? " LLC" : " snooped";

total: 1 errors, 0 warnings, 0 checks, 1614 lines checked
e3f93d5867a5 drm/i915: make sure correct pte encode is used


