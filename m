Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 3F9017A2DD2
	for <lists+intel-gfx@lfdr.de>; Sat, 16 Sep 2023 05:42:42 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id B65BD10E0B5;
	Sat, 16 Sep 2023 03:42:38 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTP id F2F8D10E0B5;
 Sat, 16 Sep 2023 03:42:27 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id D6AF8AADDC;
 Sat, 16 Sep 2023 03:42:27 +0000 (UTC)
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
From: Patchwork <patchwork@emeril.freedesktop.org>
To: john.c.harrison@intel.com
Date: Sat, 16 Sep 2023 03:42:27 -0000
Message-ID: <169483574784.10847.15300822152919811172@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20230915215537.220331-1-John.C.Harrison@Intel.com>
In-Reply-To: <20230915215537.220331-1-John.C.Harrison@Intel.com>
Subject: [Intel-gfx] =?utf-8?b?4pyXIEZpLkNJLkNIRUNLUEFUQ0g6IHdhcm5pbmcg?=
 =?utf-8?q?for_Enable_Wa=5F14019159160_and_Wa=5F16019325821_for_MTL?=
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

Series: Enable Wa_14019159160 and Wa_16019325821 for MTL
URL   : https://patchwork.freedesktop.org/series/123813/
State : warning

== Summary ==

Error: dim checkpatch failed
41e13ed5cde2 drm/i915/guc: Update 'recommended' version to 70.11.0 for DG2/ADL-P/MTL
c2d869434453 drm/i915: Enable Wa_16019325821
384a9227b91e drm/i915/guc: Add support for w/a KLVs
-:112: WARNING:AVOID_BUG: Do not crash the kernel unless it is absolutely unavoidable--use WARN_ON_ONCE() plus recovery code (if feasible) instead of BUG() or variants
#112: FILE: drivers/gpu/drm/i915/gt/uc/intel_guc_ads.c:824:
+	GEM_BUG_ON(iosys_map_is_null(&guc->ads_map));

total: 0 errors, 1 warnings, 0 checks, 157 lines checked
fecca61e0f14 drm/i915/guc: Enable Wa_14019159160
-:100: WARNING:AVOID_BUG: Do not crash the kernel unless it is absolutely unavoidable--use WARN_ON_ONCE() plus recovery code (if feasible) instead of BUG() or variants
#100: FILE: drivers/gpu/drm/i915/gt/uc/intel_guc_ads.c:825:
+	GEM_BUG_ON(remain < size);

total: 0 errors, 1 warnings, 0 checks, 91 lines checked


