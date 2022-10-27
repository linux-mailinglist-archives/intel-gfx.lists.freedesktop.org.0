Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 85C8B610635
	for <lists+intel-gfx@lfdr.de>; Fri, 28 Oct 2022 01:11:42 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 210E110E731;
	Thu, 27 Oct 2022 23:11:34 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [IPv6:2610:10:20:722:a800:ff:feee:56cf])
 by gabe.freedesktop.org (Postfix) with ESMTP id 60BEF10E72D;
 Thu, 27 Oct 2022 23:11:29 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id 59F63AADD8;
 Thu, 27 Oct 2022 23:11:29 +0000 (UTC)
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Daniele Ceraolo Spurio" <daniele.ceraolospurio@intel.com>
Date: Thu, 27 Oct 2022 23:11:29 -0000
Message-ID: <166691228933.4251.4129613723920721943@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20221027221554.2638087-1-daniele.ceraolospurio@intel.com>
In-Reply-To: <20221027221554.2638087-1-daniele.ceraolospurio@intel.com>
Subject: [Intel-gfx] =?utf-8?b?4pyXIEZpLkNJLkNIRUNLUEFUQ0g6IHdhcm5pbmcg?=
 =?utf-8?q?for_Introduce_the_GSC_CS?=
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

Series: Introduce the GSC CS
URL   : https://patchwork.freedesktop.org/series/110237/
State : warning

== Summary ==

Error: dim checkpatch failed
9a055873a680 drm/i915/mtl: add initial definitions for GSC CS
ddb719782376 drm/i915/mtl: pass the GSC CS info to the GuC
-:81: WARNING:AVOID_BUG: Do not crash the kernel unless it is absolutely unavoidable--use WARN_ON_ONCE() plus recovery code (if feasible) instead of BUG() or variants
#81: FILE: drivers/gpu/drm/i915/gt/uc/intel_guc_fwif.h:189:
+	GEM_BUG_ON(class > MAX_ENGINE_CLASS);

total: 0 errors, 1 warnings, 0 checks, 59 lines checked
e62d625db085 drm/i915/mtl: add GSC CS interrupt support
-:40: WARNING:AVOID_BUG: Do not crash the kernel unless it is absolutely unavoidable--use WARN_ON_ONCE() plus recovery code (if feasible) instead of BUG() or variants
#40: FILE: drivers/gpu/drm/i915/gt/intel_gt_irq.c:89:
+	GEM_BUG_ON(gt == media_gt);

total: 0 errors, 1 warnings, 0 checks, 133 lines checked
4f9506c1fa4d drm/i915/mtl: add GSC CS reset support
237e5c9277d0 drm/i915/mtl: don't expose GSC command streamer to the user


