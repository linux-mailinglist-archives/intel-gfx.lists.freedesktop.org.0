Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 0C1C812240A
	for <lists+intel-gfx@lfdr.de>; Tue, 17 Dec 2019 06:49:54 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 9000D6E93F;
	Tue, 17 Dec 2019 05:49:50 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [IPv6:2610:10:20:722:a800:ff:feee:56cf])
 by gabe.freedesktop.org (Postfix) with ESMTP id 4CEBC6E93F;
 Tue, 17 Dec 2019 05:49:49 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id 451FCA47DB;
 Tue, 17 Dec 2019 05:49:49 +0000 (UTC)
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Daniele Ceraolo Spurio" <daniele.ceraolospurio@intel.com>
Date: Tue, 17 Dec 2019 05:49:49 -0000
Message-ID: <157656178925.21848.10772890987124301775@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20191217012316.13271-1-daniele.ceraolospurio@intel.com>
In-Reply-To: <20191217012316.13271-1-daniele.ceraolospurio@intel.com>
Subject: [Intel-gfx] =?utf-8?b?4pyXIEZpLkNJLkNIRUNLUEFUQ0g6IHdhcm5pbmcg?=
 =?utf-8?q?for_series_starting_with_=5Bv2=2C1/7=5D_drm/i915/guc=3A_Merge_c?=
 =?utf-8?q?ommunication=5Fstop_and_communication=5Fdisable?=
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

Series: series starting with [v2,1/7] drm/i915/guc: Merge communication_stop and communication_disable
URL   : https://patchwork.freedesktop.org/series/71020/
State : warning

== Summary ==

$ dim checkpatch origin/drm-tip
b1167fe23f5a drm/i915/guc: Merge communication_stop and communication_disable
d8b5ef3911bc drm/i915/guc/ct: Drop guards in enable/disable calls
0f240dde5bd9 drm/i915/guc/ct: Stop expecting multiple CT channels
-:125: CHECK:SPACING: spaces preferred around that '/' (ctx:VxV)
#125: FILE: drivers/gpu/drm/i915/gt/uc/intel_guc_ct.c:171:
+		ct->ctbs[i].desc = blob + PAGE_SIZE/4 * i;
 		                                   ^

-:126: CHECK:SPACING: spaces preferred around that '/' (ctx:VxV)
#126: FILE: drivers/gpu/drm/i915/gt/uc/intel_guc_ct.c:172:
+		ct->ctbs[i].cmds = blob + PAGE_SIZE/4 * i + PAGE_SIZE/2;
 		                                   ^

-:126: CHECK:SPACING: spaces preferred around that '/' (ctx:VxV)
#126: FILE: drivers/gpu/drm/i915/gt/uc/intel_guc_ct.c:172:
+		ct->ctbs[i].cmds = blob + PAGE_SIZE/4 * i + PAGE_SIZE/2;
 		                                                     ^

-:185: CHECK:SPACING: spaces preferred around that '/' (ctx:VxV)
#185: FILE: drivers/gpu/drm/i915/gt/uc/intel_guc_ct.c:217:
+					PAGE_SIZE/4);
 					         ^

total: 0 errors, 0 warnings, 4 checks, 343 lines checked
fc2ab66c04c1 drm/i915/guc/ct: Group request-related variables in a sub-structure
fb103861ef07 drm/i915/guc: Remove function pointers for send/receive calls
bd8a56cf311b drm/i915/guc: Unify notify() functions
ea5f8a3163af HAX: force enable_guc=2 and WA i915#571

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
