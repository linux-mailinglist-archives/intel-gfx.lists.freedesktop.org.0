Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 2CA0323F2CA
	for <lists+intel-gfx@lfdr.de>; Fri,  7 Aug 2020 20:33:34 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 1EFDB6E165;
	Fri,  7 Aug 2020 18:33:32 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTP id B18156E124;
 Fri,  7 Aug 2020 18:33:30 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id AC347A66C9;
 Fri,  7 Aug 2020 18:33:30 +0000 (UTC)
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: John.C.Harrison@Intel.com
Date: Fri, 07 Aug 2020 18:33:30 -0000
Message-ID: <159682521067.26557.3857595405102492065@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20200807174637.375324-1-John.C.Harrison@Intel.com>
In-Reply-To: <20200807174637.375324-1-John.C.Harrison@Intel.com>
Subject: [Intel-gfx] =?utf-8?b?4pyXIEZpLkNJLkNIRUNLUEFUQ0g6IHdhcm5pbmcg?=
 =?utf-8?q?for_drm/i915/guc=3A_Update_to_GuC_v45?=
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

Series: drm/i915/guc: Update to GuC v45
URL   : https://patchwork.freedesktop.org/series/80402/
State : warning

== Summary ==

$ dim checkpatch origin/drm-tip
711a49fe9138 drm/i915/guc: Update to GuC v45.0.0
-:228: WARNING:FILE_PATH_CHANGES: added, moved or deleted file(s), does MAINTAINERS need updating?
#228: 
new file mode 100644

-:461: WARNING:TYPO_SPELLING: 'entires' may be misspelled - perhaps 'entries'?
#461: FILE: drivers/gpu/drm/i915/gt/uc/intel_guc_ads.c:14:
+ * all the extra buffers indirectly linked via the ADS struct's entires.

-:530: CHECK:ASSIGNMENT_CONTINUATIONS: Assignment operator '=' should be on the previous line
#530: FILE: drivers/gpu/drm/i915/gt/uc/intel_guc_ads.c:109:
+		system_info->mapping_table[guc_class][engine->instance]
+			= engine->instance;

-:653: WARNING:SUSPECT_CODE_INDENT: suspect code indent for conditional statements (8, 8)
#653: FILE: drivers/gpu/drm/i915/gt/uc/intel_guc_fw.c:97:
+	} else
 	if ((status & GS_UKERNEL_MASK) == GS_UKERNEL_EXCEPTION) {

-:653: CHECK:BRACES: Unbalanced braces around else statement
#653: FILE: drivers/gpu/drm/i915/gt/uc/intel_guc_fw.c:97:
+	} else

-:658: WARNING:SUSPECT_CODE_INDENT: suspect code indent for conditional statements (8, 8)
#658: FILE: drivers/gpu/drm/i915/gt/uc/intel_guc_fw.c:102:
+	} else
+	if (ret) {

-:658: CHECK:BRACES: Unbalanced braces around else statement
#658: FILE: drivers/gpu/drm/i915/gt/uc/intel_guc_fw.c:102:
+	} else

total: 0 errors, 4 warnings, 3 checks, 877 lines checked
5a3a8dce1672 drm/i915/uc: turn on GuC/HuC auto mode by default


_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
