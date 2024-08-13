Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id DCE3594FDFF
	for <lists+intel-gfx@lfdr.de>; Tue, 13 Aug 2024 08:39:13 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id DF0EB10E2C0;
	Tue, 13 Aug 2024 06:39:11 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from 2413ebb6fbb6 (emeril.freedesktop.org [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTPS id E632810E2C0;
 Tue, 13 Aug 2024 06:39:09 +0000 (UTC)
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Subject: =?utf-8?q?=E2=9C=97_Fi=2ECI=2ECHECKPATCH=3A_warning_for_drm/i915=3A_WA_conte?=
 =?utf-8?q?xt_support_for_L3flush?=
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Nitin Gote" <nitin.r.gote@intel.com>
Cc: intel-gfx@lists.freedesktop.org
Date: Tue, 13 Aug 2024 06:39:09 -0000
Message-ID: <172353114993.597283.9334231356057931946@2413ebb6fbb6>
X-Patchwork-Hint: ignore
References: <20240813061657.925443-1-nitin.r.gote@intel.com>
In-Reply-To: <20240813061657.925443-1-nitin.r.gote@intel.com>
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

Series: drm/i915: WA context support for L3flush
URL   : https://patchwork.freedesktop.org/series/137218/
State : warning

== Summary ==

Error: dim checkpatch failed
1be622b7664b drm/i915: WA context support for L3flush
-:229: WARNING:AVOID_BUG: Do not crash the kernel unless it is absolutely unavoidable--use WARN_ON_ONCE() plus recovery code (if feasible) instead of BUG() or variants
#229: FILE: drivers/gpu/drm/i915/gt/intel_lrc.c:1377:
+	GEM_BUG_ON(!IS_DG2_G10(ce->engine->i915) && !IS_DG2_G11(ce->engine->i915));

-:333: WARNING:AVOID_BUG: Do not crash the kernel unless it is absolutely unavoidable--use WARN_ON_ONCE() plus recovery code (if feasible) instead of BUG() or variants
#333: FILE: drivers/gpu/drm/i915/gt/uc/intel_guc_ads.c:850:
+	GEM_BUG_ON(iosys_map_is_null(&guc->ads_map));

-:337: WARNING:AVOID_BUG: Do not crash the kernel unless it is absolutely unavoidable--use WARN_ON_ONCE() plus recovery code (if feasible) instead of BUG() or variants
#337: FILE: drivers/gpu/drm/i915/gt/uc/intel_guc_ads.c:854:
+	GEM_BUG_ON(alloc_size < real_size);

total: 0 errors, 3 warnings, 0 checks, 294 lines checked


