Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 310BD51DA41
	for <lists+intel-gfx@lfdr.de>; Fri,  6 May 2022 16:14:38 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 7BB0C10E6C9;
	Fri,  6 May 2022 14:14:36 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTP id E7C2D10E6C9;
 Fri,  6 May 2022 14:14:35 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id E5CE6A7DFB;
 Fri,  6 May 2022 14:14:35 +0000 (UTC)
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Juha-Pekka Heikkila" <juhapekka.heikkila@gmail.com>
Date: Fri, 06 May 2022 14:14:35 -0000
Message-ID: <165184647590.18818.4093426650291261553@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20220506131109.20942-1-juhapekka.heikkila@gmail.com>
In-Reply-To: <20220506131109.20942-1-juhapekka.heikkila@gmail.com>
Subject: [Intel-gfx] =?utf-8?b?4pyXIEZpLkNJLkNIRUNLUEFUQ0g6IHdhcm5pbmcg?=
 =?utf-8?q?for_series_starting_with_=5B1/2=5D_drm/i915/display=3A_Add_smem?=
 =?utf-8?q?_fallback_allocation_for_dpt?=
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

Series: series starting with [1/2] drm/i915/display: Add smem fallback allocation for dpt
URL   : https://patchwork.freedesktop.org/series/103678/
State : warning

== Summary ==

Error: dim checkpatch failed
cb0cd39c87aa drm/i915/display: Add smem fallback allocation for dpt
5fc338ca8432 drm/i915: Fix i915_vma_pin_iomap()
-:44: CHECK:BRACES: Unbalanced braces around else statement
#44: FILE: drivers/gpu/drm/i915/i915_vma.c:572:
+		else {

-:47: CHECK:PARENTHESIS_ALIGNMENT: Alignment should match open parenthesis
#47: FILE: drivers/gpu/drm/i915/i915_vma.c:575:
+				i915_gem_object_pin_map_unlocked(vma->obj,
+								I915_MAP_WC);

total: 0 errors, 0 warnings, 2 checks, 73 lines checked


