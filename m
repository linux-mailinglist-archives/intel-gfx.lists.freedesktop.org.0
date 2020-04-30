Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 380A91BFD9D
	for <lists+intel-gfx@lfdr.de>; Thu, 30 Apr 2020 16:15:17 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id D81836E90D;
	Thu, 30 Apr 2020 14:15:14 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [IPv6:2610:10:20:722:a800:ff:feee:56cf])
 by gabe.freedesktop.org (Postfix) with ESMTP id 6F7B96E90D;
 Thu, 30 Apr 2020 14:15:13 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id 6A81FA47EE;
 Thu, 30 Apr 2020 14:15:13 +0000 (UTC)
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Lionel Landwerlin" <lionel.g.landwerlin@intel.com>
Date: Thu, 30 Apr 2020 14:15:13 -0000
Message-ID: <158825611341.31920.2072751452981750190@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20200430135536.1141443-1-lionel.g.landwerlin@intel.com>
In-Reply-To: <20200430135536.1141443-1-lionel.g.landwerlin@intel.com>
Subject: [Intel-gfx] =?utf-8?b?4pyXIEZpLkNJLkNIRUNLUEFUQ0g6IHdhcm5pbmcg?=
 =?utf-8?q?for_drm/i915/perf=3A_Add_support_for_multi_context_perf_queries?=
 =?utf-8?q?_=28rev4=29?=
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

Series: drm/i915/perf: Add support for multi context perf queries (rev4)
URL   : https://patchwork.freedesktop.org/series/76588/
State : warning

== Summary ==

$ dim checkpatch origin/drm-tip
a350ade77f42 drm/i915/perf: break OA config buffer object in 2
5845f5921ffd drm/i915/perf: stop using the kernel context
-:190: CHECK:LINE_SPACING: Please don't use multiple blank lines
#190: FILE: drivers/gpu/drm/i915/i915_perf.c:2534:
 
+

total: 0 errors, 0 warnings, 1 checks, 343 lines checked
23a516e1e12a drm/i915/perf: prepare driver to receive multiple ctx handles
097f8748f71f drm/i915/perf: enable filtering on multiple contexts

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
