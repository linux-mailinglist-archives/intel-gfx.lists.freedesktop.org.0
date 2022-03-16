Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 7D14E4DBB22
	for <lists+intel-gfx@lfdr.de>; Thu, 17 Mar 2022 00:35:26 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id D950210EA72;
	Wed, 16 Mar 2022 23:35:24 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTP id EB6AF10EA72;
 Wed, 16 Mar 2022 23:35:23 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id E7BC3AA0EB;
 Wed, 16 Mar 2022 23:35:23 +0000 (UTC)
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Matt Atwood" <matthew.s.atwood@intel.com>
Date: Wed, 16 Mar 2022 23:35:23 -0000
Message-ID: <164747372392.29207.2894168430755852593@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20220316224943.27679-1-matthew.s.atwood@intel.com>
In-Reply-To: <20220316224943.27679-1-matthew.s.atwood@intel.com>
Subject: [Intel-gfx] =?utf-8?b?4pyXIEZpLkNJLkNIRUNLUEFUQ0g6IHdhcm5pbmcg?=
 =?utf-8?q?for_drm/i915/uapi=3A_Add_DRM=5FI915=5FQUERY=5FGEOMETRY=5FSUBSLI?=
 =?utf-8?q?CES_=28rev3=29?=
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

Series: drm/i915/uapi: Add DRM_I915_QUERY_GEOMETRY_SUBSLICES (rev3)
URL   : https://patchwork.freedesktop.org/series/101219/
State : warning

== Summary ==

$ dim checkpatch origin/drm-tip
6da9e3d1f502 drm/i915/uapi: Add DRM_I915_QUERY_GEOMETRY_SUBSLICES
-:131: CHECK:SPACING: No space is necessary after a cast
#131: FILE: drivers/gpu/drm/i915/i915_query.c:111:
+	engine = intel_engine_lookup_user(i915, (u8) classinstance.engine_class,

-:132: CHECK:SPACING: No space is necessary after a cast
#132: FILE: drivers/gpu/drm/i915/i915_query.c:112:
+					  (u8) classinstance.engine_instance);

total: 0 errors, 0 warnings, 2 checks, 172 lines checked


