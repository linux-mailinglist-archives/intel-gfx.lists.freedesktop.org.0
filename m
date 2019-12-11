Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 35B1911A3F1
	for <lists+intel-gfx@lfdr.de>; Wed, 11 Dec 2019 06:25:24 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id C6F726E171;
	Wed, 11 Dec 2019 05:25:21 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [IPv6:2610:10:20:722:a800:ff:feee:56cf])
 by gabe.freedesktop.org (Postfix) with ESMTP id C9EAB6E171;
 Wed, 11 Dec 2019 05:25:20 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id C186EA00FD;
 Wed, 11 Dec 2019 05:25:20 +0000 (UTC)
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Daniele Ceraolo Spurio" <daniele.ceraolospurio@intel.com>
Date: Wed, 11 Dec 2019 05:25:20 -0000
Message-ID: <157604192076.30693.6851262329941899411@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20191210210919.30846-1-daniele.ceraolospurio@intel.com>
In-Reply-To: <20191210210919.30846-1-daniele.ceraolospurio@intel.com>
Subject: [Intel-gfx] =?utf-8?b?4pyXIEZpLkNJLkNIRUNLUEFUQ0g6IHdhcm5pbmcg?=
 =?utf-8?q?for_Simplify_GuC_communication_handling?=
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

Series: Simplify GuC communication handling
URL   : https://patchwork.freedesktop.org/series/70717/
State : warning

== Summary ==

$ dim checkpatch origin/drm-tip
3f4d1cd323a6 drm/i915/guc: Merge communication_stop and communication_disable
6a2cdf54548f drm/i915/guc/ct: stop expecting multiple CT channels
-:133: CHECK:SPACING: spaces preferred around that '/' (ctx:VxV)
#133: FILE: drivers/gpu/drm/i915/gt/uc/intel_guc_ct.c:173:
+		ct->ctbs[i].desc = blob + PAGE_SIZE/4 * i;
 		                                   ^

-:134: CHECK:SPACING: spaces preferred around that '/' (ctx:VxV)
#134: FILE: drivers/gpu/drm/i915/gt/uc/intel_guc_ct.c:174:
+		ct->ctbs[i].cmds = blob + PAGE_SIZE/4 * i + PAGE_SIZE/2;
 		                                   ^

-:134: CHECK:SPACING: spaces preferred around that '/' (ctx:VxV)
#134: FILE: drivers/gpu/drm/i915/gt/uc/intel_guc_ct.c:174:
+		ct->ctbs[i].cmds = blob + PAGE_SIZE/4 * i + PAGE_SIZE/2;
 		                                                     ^

-:195: CHECK:SPACING: spaces preferred around that '/' (ctx:VxV)
#195: FILE: drivers/gpu/drm/i915/gt/uc/intel_guc_ct.c:221:
+					PAGE_SIZE/4);
 					         ^

-:515: CHECK:LINE_SPACING: Please don't use multiple blank lines
#515: FILE: drivers/gpu/drm/i915/gt/uc/intel_guc_ct.h:38:
 
+

total: 0 errors, 0 warnings, 5 checks, 440 lines checked
396ef783e1de drm/i915/guc: remove function pointers for send/receive calls
5ad83c593530 drm/i915/guc: unify notify() functions
b60deedca8ec HAX: force enable_guc=2 and WA i915#571

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
