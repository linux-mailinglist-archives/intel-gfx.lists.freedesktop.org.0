Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id B77304D3E72
	for <lists+intel-gfx@lfdr.de>; Thu, 10 Mar 2022 01:52:41 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 382D310E520;
	Thu, 10 Mar 2022 00:52:38 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [IPv6:2610:10:20:722:a800:ff:feee:56cf])
 by gabe.freedesktop.org (Postfix) with ESMTP id 8325F10E518;
 Thu, 10 Mar 2022 00:52:37 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id 7C3D2AA917;
 Thu, 10 Mar 2022 00:52:37 +0000 (UTC)
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Matt Atwood" <matthew.s.atwood@intel.com>
Date: Thu, 10 Mar 2022 00:52:37 -0000
Message-ID: <164687355747.17006.11885159872087178322@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20220310003404.27499-1-matthew.s.atwood@intel.com>
In-Reply-To: <20220310003404.27499-1-matthew.s.atwood@intel.com>
Subject: [Intel-gfx] =?utf-8?b?4pyXIEZpLkNJLkNIRUNLUEFUQ0g6IHdhcm5pbmcg?=
 =?utf-8?q?for_drm/i915/uapi=3A_Add_DRM=5FI915=5FQUERY=5FGEOMETRY=5FSUBSLI?=
 =?utf-8?q?CES?=
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

Series: drm/i915/uapi: Add DRM_I915_QUERY_GEOMETRY_SUBSLICES
URL   : https://patchwork.freedesktop.org/series/101219/
State : warning

== Summary ==

$ dim checkpatch origin/drm-tip
cd66c422f46c drm/i915/uapi: Add DRM_I915_QUERY_GEOMETRY_SUBSLICES
-:106: ERROR:SPACING: space prohibited before that close parenthesis ')'
#106: FILE: drivers/gpu/drm/i915/i915_query.c:91:
+	const struct sseu_dev_info *sseu = &to_gt(dev_priv )->info.sseu;

-:125: CHECK:SPACING: spaces preferred around that '>>' (ctx:WxV)
#125: FILE: drivers/gpu/drm/i915/i915_query.c:110:
+	engine_instance = (query_item->flags >>8) & 0xFF;
 	                                     ^

-:129: ERROR:SPACING: space required before the open parenthesis '('
#129: FILE: drivers/gpu/drm/i915/i915_query.c:114:
+	if(!engine)

-:160: WARNING:SPACE_BEFORE_TAB: please, no space before tabs
#160: FILE: include/uapi/drm/i915_drm.h:2690:
+#define DRM_I915_QUERY_TOPOLOGY_INFO    ^I1$

-:162: WARNING:SPACE_BEFORE_TAB: please, no space before tabs
#162: FILE: include/uapi/drm/i915_drm.h:2692:
+#define DRM_I915_QUERY_PERF_CONFIG      ^I3$

-:163: WARNING:SPACE_BEFORE_TAB: please, no space before tabs
#163: FILE: include/uapi/drm/i915_drm.h:2693:
+#define DRM_I915_QUERY_MEMORY_REGIONS   ^I4$

total: 2 errors, 3 warnings, 1 checks, 172 lines checked


