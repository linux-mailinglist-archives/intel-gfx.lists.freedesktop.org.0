Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 2797B616D4E
	for <lists+intel-gfx@lfdr.de>; Wed,  2 Nov 2022 20:01:06 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 7DAD610E569;
	Wed,  2 Nov 2022 19:01:00 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTP id 8DDD010E569;
 Wed,  2 Nov 2022 19:00:56 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id 85964AADD2;
 Wed,  2 Nov 2022 19:00:56 +0000 (UTC)
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Daniele Ceraolo Spurio" <daniele.ceraolospurio@intel.com>
Date: Wed, 02 Nov 2022 19:00:56 -0000
Message-ID: <166741565651.23606.12617704013981054182@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20221102171047.2787951-1-daniele.ceraolospurio@intel.com>
In-Reply-To: <20221102171047.2787951-1-daniele.ceraolospurio@intel.com>
Subject: [Intel-gfx] =?utf-8?b?4pyXIEZpLkNJLkNIRUNLUEFUQ0g6IHdhcm5pbmcg?=
 =?utf-8?q?for_drm/i915=3A_Introduce_the_GSC_CS?=
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

Series: drm/i915: Introduce the GSC CS
URL   : https://patchwork.freedesktop.org/series/110432/
State : warning

== Summary ==

Error: dim checkpatch failed
0cfd9bdf1be5 drm/i915/mtl: add initial definitions for GSC CS
31fe0d686c6a drm/i915/mtl: pass the GSC CS info to the GuC
-:81: WARNING:AVOID_BUG: Do not crash the kernel unless it is absolutely unavoidable--use WARN_ON_ONCE() plus recovery code (if feasible) instead of BUG() or variants
#81: FILE: drivers/gpu/drm/i915/gt/uc/intel_guc_fwif.h:189:
+	GEM_BUG_ON(class > MAX_ENGINE_CLASS);

total: 0 errors, 1 warnings, 0 checks, 59 lines checked
868116c95df8 drm/i915/mtl: add GSC CS interrupt support
-:44: WARNING:AVOID_BUG: Do not crash the kernel unless it is absolutely unavoidable--use WARN_ON_ONCE() plus recovery code (if feasible) instead of BUG() or variants
#44: FILE: drivers/gpu/drm/i915/gt/intel_gt_irq.c:89:
+	GEM_BUG_ON(gt == media_gt);

-:89: WARNING:LINE_SPACING: Missing a blank line after declarations
#89: FILE: drivers/gpu/drm/i915/gt/intel_gt_irq.c:125:
+		struct intel_engine_cs *engine = gt->engine_class[class][instance];
+		if (engine)

total: 0 errors, 2 warnings, 0 checks, 126 lines checked
603ebc899715 drm/i915/mtl: add GSC CS reset support
2beaa04d916b drm/i915/mtl: don't expose GSC command streamer to the user


