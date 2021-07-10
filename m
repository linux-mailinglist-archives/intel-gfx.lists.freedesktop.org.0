Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 526E43C2CA6
	for <lists+intel-gfx@lfdr.de>; Sat, 10 Jul 2021 03:40:06 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 04C4A6EAB9;
	Sat, 10 Jul 2021 01:40:04 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTP id 471A66EAB6;
 Sat, 10 Jul 2021 01:40:03 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id 26CF0A7DFC;
 Sat, 10 Jul 2021 01:40:03 +0000 (UTC)
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Vinay Belgaumkar" <vinay.belgaumkar@intel.com>
Date: Sat, 10 Jul 2021 01:40:03 -0000
Message-ID: <162588120312.15858.1304625340867727740@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20210710012026.19705-1-vinay.belgaumkar@intel.com>
In-Reply-To: <20210710012026.19705-1-vinay.belgaumkar@intel.com>
Subject: [Intel-gfx] =?utf-8?b?4pyXIEZpLkNJLkNIRUNLUEFUQ0g6IHdhcm5pbmcg?=
 =?utf-8?q?for_Enable_GuC_based_power_management_features?=
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

Series: Enable GuC based power management features
URL   : https://patchwork.freedesktop.org/series/92391/
State : warning

== Summary ==

$ dim checkpatch origin/drm-tip
d9063ce26607 drm/i915/guc: Squashed patch - DO NOT REVIEW
-:21: WARNING:BAD_SIGN_OFF: Duplicate signature
#21: 
Signed-off-by: Matthew Brost <matthew.brost@intel.com>

-:32: WARNING:BAD_SIGN_OFF: Duplicate signature
#32: 
Signed-off-by: Matthew Brost <matthew.brost@intel.com>

-:33: WARNING:BAD_SIGN_OFF: Duplicate signature
#33: 
Reviewed-by: Michal Wajdeczko <michal.wajdeczko@intel.com>

-:63: WARNING:BAD_SIGN_OFF: Duplicate signature
#63: 
Signed-off-by: Matthew Brost <matthew.brost@intel.com>

-:82: WARNING:BAD_SIGN_OFF: Duplicate signature
#82: 
Signed-off-by: John Harrison <John.C.Harrison@Intel.com>

-:84: WARNING:BAD_SIGN_OFF: Duplicate signature
#84: 
Signed-off-by: Matthew Brost <matthew.brost@intel.com>

-:85: WARNING:BAD_SIGN_OFF: Duplicate signature
#85: 
Reviewed-by: John Harrison <John.C.Harrison@Intel.com>

-:113: WARNING:BAD_SIGN_OFF: Duplicate signature
#113: 
Signed-off-by: John Harrison <John.C.Harrison@Intel.com>

-:114: WARNING:BAD_SIGN_OFF: Duplicate signature
#114: 
Signed-off-by: Matthew Brost <matthew.brost@intel.com>

-:115: WARNING:BAD_SIGN_OFF: Duplicate signature
#115: 
Reviewed-by: Michal Wajdeczko <michal.wajdeczko@intel.com>

-:122: WARNING:BAD_SIGN_OFF: Duplicate signature
#122: 
Signed-off-by: John Harrison <John.C.Harrison@Intel.com>

-:123: WARNING:BAD_SIGN_OFF: Duplicate signature
#123: 
Signed-off-by: Matthew Brost <matthew.brost@intel.com>

-:124: WARNING:BAD_SIGN_OFF: Duplicate signature
#124: 
Reviewed-by: Michal Wajdeczko <michal.wajdeczko@intel.com>

-:131: WARNING:BAD_SIGN_OFF: Duplicate signature
#131: 
Cc: John Harrison <john.c.harrison@intel.com>

-:132: WARNING:BAD_SIGN_OFF: Duplicate signature
#132: 
Signed-off-by: Matthew Brost <matthew.brost@intel.com>

-:133: WARNING:BAD_SIGN_OFF: Duplicate signature
#133: 
Reviewed-by: John Harrison <John.C.Harrison@Intel.com>

-:144: WARNING:BAD_SIGN_OFF: Duplicate signature
#144: 
Cc: John Harrison <john.c.harrison@intel.com>

-:145: WARNING:BAD_SIGN_OFF: Duplicate signature
#145: 
Signed-off-by: Matthew Brost <matthew.brost@intel.com>

-:146: WARNING:BAD_SIGN_OFF: Duplicate signature
#146: 
Reviewed-by: John Harrison <John.C.Harrison@Intel.com>

-:161: WARNING:BAD_SIGN_OFF: Duplicate signature
#161: 
Cc: John Harrison <john.c.harrison@intel.com>

-:162: WARNING:BAD_SIGN_OFF: Duplicate signature
#162: 
Signed-off-by: Matthew Brost <matthew.brost@intel.com>

-:163: WARNING:BAD_SIGN_OFF: Duplicate signature
#163: 
Reviewed-by: John Harrison <John.C.Harrison@Intel.com>

-:182: WARNING:BAD_SIGN_OFF: Duplicate signature
#182: 
Cc: John Harrison <john.c.harrison@intel.com>

-:183: WARNING:BAD_SIGN_OFF: Duplicate signature
#183: 
Signed-off-by: Matthew Brost <matthew.brost@intel.com>

-:190: WARNING:BAD_SIGN_OFF: Duplicate signature
#190: 
Signed-off-by: Matthew Brost <matthew.brost@intel.com>

-:191: WARNING:BAD_SIGN_OFF: Duplicate signature
#191: 
Reviewed-by: John Harrison <John.C.Harrison@Intel.com>

-:204: WARNING:BAD_SIGN_OFF: Duplicate signature
#204: 
Signed-off-by: John Harrison <John.C.Harrison@Intel.com>

-:205: WARNING:BAD_SIGN_OFF: Duplicate signature
#205: 
Signed-off-by: Matthew Brost <matthew.brost@intel.com>

-:216: WARNING:BAD_SIGN_OFF: Duplicate signature
#216: 
Cc: John Harrison <john.c.harrison@intel.com>

-:217: WARNING:BAD_SIGN_OFF: Duplicate signature
#217: 
Signed-off-by: Matthew Brost <matthew.brost@intel.com>

-:231: WARNING:BAD_SIGN_OFF: Duplicate signature
#231: 
Cc: John Harrison <john.c.harrison@intel.com>

-:232: WARNING:BAD_SIGN_OFF: Duplicate signature
#232: 
Signed-off-by: Matthew Brost <matthew.brost@intel.com>

-:242: WARNING:BAD_SIGN_OFF: Duplicate signature
#242: 
Cc: John Harrison <john.c.harrison@intel.com>

-:243: WARNING:BAD_SIGN_OFF: Duplicate signature
#243: 
Signed-off-by: Matthew Brost <matthew.brost@intel.com>

-:244: WARNING:BAD_SIGN_OFF: Duplicate signature
#244: 
Signed-off-by: Daniele Ceraolo Spurio <daniele.ceraolospurio@intel.com>

-:251: WARNING:BAD_SIGN_OFF: Duplicate signature
#251: 
Cc: John Harrison <john.c.harrison@intel.com>

-:252: WARNING:BAD_SIGN_OFF: Duplicate signature
#252: 
Signed-off-by: Matthew Brost <matthew.brost@intel.com>

-:259: WARNING:BAD_SIGN_OFF: Duplicate signature
#259: 
Cc: John Harrison <john.c.harrison@intel.com>

-:260: WARNING:BAD_SIGN_OFF: Duplicate signature
#260: 
Signed-off-by: Matthew Brost <matthew.brost@intel.com>

-:271: WARNING:BAD_SIGN_OFF: Duplicate signature
#271: 
Signed-off-by: John Harrison <John.C.Harrison@Intel.com>

-:272: WARNING:BAD_SIGN_OFF: Duplicate signature
#272: 
Signed-off-by: Matthew Brost <matthew.brost@intel.com>

-:284: WARNING:BAD_SIGN_OFF: Duplicate signature
#284: 
Cc: John Harrison <john.c.harrison@intel.com>

-:285: WARNING:BAD_SIGN_OFF: Duplicate signature
#285: 
Signed-off-by: Matthew Brost <matthew.brost@intel.com>

-:300: WARNING:BAD_SIGN_OFF: Duplicate signature
#300: 
Signed-off-by: John Harrison <John.C.Harrison@Intel.com>

-:301: WARNING:BAD_SIGN_OFF: Duplicate signature
#301: 
Signed-off-by: Matthew Brost <matthew.brost@intel.com>

-:312: WARNING:BAD_SIGN_OFF: Duplicate signature
#312: 
Cc: John Harrison <john.c.harrison@intel.com>

-:313: WARNING:BAD_SIGN_OFF: Duplicate signature
#313: 
Signed-off-by: Matthew Brost <matthew.brost@intel.com>

-:319: WARNING:BAD_SIGN_OFF: Duplicate signature
#319: 
Signed-off-by: John Harrison <John.C.Harrison@Intel.com>

-:320: WARNING:BAD_SIGN_OFF: Duplicate signature
#320: 
Signed-off-by: Matthew Brost <matthew.brost@intel.com>

-:328: WARNING:BAD_SIGN_OFF: Duplicate signature
#328: 
Cc: John Harrison <john.c.harrison@intel.com>

-:329: WARNING:BAD_SIGN_OFF: Duplicate signature
#329: 
Signed-off-by: Matthew Brost <matthew.brost@intel.com>

-:337: WARNING:BAD_SIGN_OFF: Duplicate signature
#337: 
Cc: John Harrison <john.c.harrison@intel.com>

-:338: WARNING:BAD_SIGN_OFF: Duplicate signature
#338: 
Signed-off-by: Matthew Brost <matthew.brost@intel.com>

-:350: WARNING:BAD_SIGN_OFF: Duplicate signature
#350: 
Signed-off-by: Matthew Brost <matthew.brost@intel.com>

-:369: WARNING:BAD_SIGN_OFF: Duplicate signature
#369: 
Signed-off-by: John Harrison <John.C.Harrison@Intel.com>

-:370: WARNING:BAD_SIGN_OFF: Duplicate signature
#370: 
Signed-off-by: Matthew Brost <matthew.brost@intel.com>

-:384: WARNING:BAD_SIGN_OFF: Duplicate signature
#384: 
Signed-off-by: Matthew Brost <matthew.brost@intel.com>

-:392: WARNING:BAD_SIGN_OFF: Duplicate signature
#392: 
Signed-off-by: Matthew Brost <matthew.brost@intel.com>

-:402: WARNING:BAD_SIGN_OFF: Duplicate signature
#402: 
Signed-off-by: Matthew Brost <matthew.brost@intel.com>

-:403: WARNING:BAD_SIGN_OFF: Duplicate signature
#403: 
CC: John Harrison <John.C.Harrison@Intel.com>

-:410: WARNING:BAD_SIGN_OFF: Duplicate signature
#410: 
Signed-off-by: Matthew Brost <matthew.brost@intel.com>

-:428: WARNING:BAD_SIGN_OFF: Duplicate signature
#428: 
Cc: John Harrison <john.c.harrison@intel.com>

-:429: WARNING:BAD_SIGN_OFF: Duplicate signature
#429: 
Signed-off-by: Matthew Brost <matthew.brost@intel.com>

-:437: WARNING:BAD_SIGN_OFF: Duplicate signature
#437: 
Signed-off-by: Matthew Brost <matthew.brost@intel.com>

-:445: WARNING:BAD_SIGN_OFF: Duplicate signature
#445: 
Signed-off-by: Matthew Brost <matthew.brost@intel.com>

-:446: ERROR:BAD_SIGN_OFF: Unrecognized email address: 'Daniele Ceraolo Spurio <daniele.ceraolospurio@intel.com'
#446: 
Cc: Daniele Ceraolo Spurio <daniele.ceraolospurio@intel.com

-:463: WARNING:BAD_SIGN_OFF: Duplicate signature
#463: 
Cc: John Harrison <john.c.harrison@intel.com>

-:464: WARNING:BAD_SIGN_OFF: Duplicate signature
#464: 
Signed-off-by: Matthew Brost <matthew.brost@intel.com>

-:475: WARNING:BAD_SIGN_OFF: Duplicate signature
#475: 
Cc: John Harrison <John.C.Harrison@Intel.com>

-:476: WARNING:BAD_SIGN_OFF: Duplicate signature
#476: 
Signed-off-by: Matthew Brost <matthew.brost@intel.com>

-:484: WARNING:BAD_SIGN_OFF: Duplicate signature
#484: 
Signed-off-by: Matthew Brost <matthew.brost@intel.com>

-:492: WARNING:BAD_SIGN_OFF: Duplicate signature
#492: 
Signed-off-by: Matthew Brost <matthew.brost@intel.com>

-:493: WARNING:BAD_SIGN_OFF: Duplicate signature
#493: 
CC: John Harrison <John.C.Harrison@Intel.com>

-:507: WARNING:BAD_SIGN_OFF: Duplicate signature
#507: 
Signed-off-by: John Harrison <John.C.Harrison@Intel.com>

-:508: WARNING:BAD_SIGN_OFF: Duplicate signature
#508: 
Signed-off-by: Fernando Pacheco <fernando.pacheco@intel.com>

-:509: WARNING:BAD_SIGN_OFF: Duplicate signature
#509: 
Signed-off-by: Matthew Brost <matthew.brost@intel.com>

-:510: WARNING:BAD_SIGN_OFF: Duplicate signature
#510: 
Cc: Daniele Ceraolo Spurio <daniele.ceraolospurio@intel.com>

-:521: WARNING:BAD_SIGN_OFF: Duplicate signature
#521: 
Signed-off-by: John Harrison <John.C.Harrison@Intel.com>

-:522: WARNING:BAD_SIGN_OFF: Duplicate signature
#522: 
Signed-off-by: Matthew Brost <matthew.brost@intel.com>

-:530: WARNING:BAD_SIGN_OFF: Duplicate signature
#530: 
Signed-off-by: John Harrison <John.C.Harrison@Intel.com>

-:531: WARNING:BAD_SIGN_OFF: Duplicate signature
#531: 
Signed-off-by: Matthew Brost <matthew.brost@intel.com>

-:532: WARNING:BAD_SIGN_OFF: Duplicate signature
#532: 
Reviewed-by: Matthew Brost <matthew.brost@intel.com>

-:546: WARNING:BAD_SIGN_OFF: Duplicate signature
#546: 
Signed-off-by: Matthew Brost <matthew.brost@intel.com>

-:563: WARNING:BAD_SIGN_OFF: Duplicate signature
#563: 
Signed-off-by: John Harrison <john.c.harrison@intel.com>

-:564: WARNING:BAD_SIGN_OFF: Duplicate signature
#564: 
Signed-off-by: Matthew Brost <matthew.brost@intel.com>

-:571: WARNING:BAD_SIGN_OFF: Duplicate signature
#571: 
Signed-off-by: John Harrison <john.c.harrison@intel.com>

-:572: WARNING:BAD_SIGN_OFF: Duplicate signature
#572: 
Signed-off-by: Matthew Brost <matthew.brost@intel.com>

-:590: WARNING:BAD_SIGN_OFF: Duplicate signature
#590: 
Signed-off-by: John Harrison <john.c.harrison@intel.com>

-:591: WARNING:BAD_SIGN_OFF: Duplicate signature
#591: 
Signed-off-by: Matthew Brost <matthew.brost@intel.com>

-:598: WARNING:BAD_SIGN_OFF: Duplicate signature
#598: 
Signed-off-by: John Harrison <john.c.harrison@intel.com>

-:599: WARNING:BAD_SIGN_OFF: Duplicate signature
#599: 
Signed-off-by: Matthew Brost <matthew.brost@intel.com>

-:600: WARNING:BAD_SIGN_OFF: Duplicate signature
#600: 
Reviewed-by: Matthew Brost <matthew.brost@intel.com>

-:608: WARNING:BAD_SIGN_OFF: Duplicate signature
#608: 
Signed-off-by: John Harrison <John.C.Harrison@Intel.com>

-:609: WARNING:BAD_SIGN_OFF: Duplicate signature
#609: 
Signed-off-by: Matthew Brost <matthew.brost@intel.com>

-:616: WARNING:BAD_SIGN_OFF: Duplicate signature
#616: 
Cc: John Harrison <John.C.Harrison@Intel.com>

-:617: WARNING:BAD_SIGN_OFF: Duplicate signature
#617: 
Signed-off-by: Matthew Brost <matthew.brost@intel.com>

-:624: WARNING:BAD_SIGN_OFF: Duplicate signature
#624: 
Signed-off-by: Matthew Brost <matthew.brost@intel.com>

-:625: WARNING:BAD_SIGN_OFF: Duplicate signature
#625: 
Cc: Tvrtko Ursulin <tvrtko.ursulin@intel.com>

-:633: WARNING:BAD_SIGN_OFF: Duplicate signature
#633: 
Signed-off-by: John Harrison <John.C.Harrison@Intel.com>

-:634: WARNING:BAD_SIGN_OFF: Duplicate signature
#634: 
Cc: Daniele Ceraolo Spurio <daniele.ceraolospurio@intel.com>

-:643: WARNING:BAD_SIGN_OFF: Duplicate signature
#643: 
Signed-off-by: John Harrison <John.C.Harrison@Intel.com>

-:644: WARNING:BAD_SIGN_OFF: Duplicate signature
#644: 
Cc: Daniele Ceraolo Spurio <daniele.ceraolospurio@intel.com>

-:645: WARNING:BAD_SIGN_OFF: Duplicate signature
#645: 
Cc: Matthew Brost <matthew.brost@intel.com>

-:653: WARNING:BAD_SIGN_OFF: Duplicate signature
#653: 
Signed-off-by: Rahul Kumar Singh <rahul.kumar.singh@intel.com>

-:654: WARNING:BAD_SIGN_OFF: Duplicate signature
#654: 
Signed-off-by: John Harrison <John.C.Harrison@Intel.com>

-:655: WARNING:BAD_SIGN_OFF: Duplicate signature
#655: 
Cc: Daniele Ceraolo Spurio <daniele.ceraolospurio@intel.com>

-:656: WARNING:BAD_SIGN_OFF: Duplicate signature
#656: 
Cc: Matthew Brost <matthew.brost@intel.com>

-:663: WARNING:BAD_SIGN_OFF: Duplicate signature
#663: 
Signed-off-by: Matthew Brost <matthew.brost@intel.com>

-:688: WARNING:BAD_SIGN_OFF: Duplicate signature
#688: 
Signed-off-by: John Harrison <John.C.Harrison@Intel.com>

-:689: WARNING:BAD_SIGN_OFF: Duplicate signature
#689: 
Cc: Daniele Ceraolo Spurio <daniele.ceraolospurio@intel.com>

-:690: WARNING:BAD_SIGN_OFF: Duplicate signature
#690: 
Cc: Matthew Brost <matthew.brost@intel.com>

-:710: WARNING:BAD_SIGN_OFF: Duplicate signature
#710: 
Signed-off-by: John Harrison <John.C.Harrison@Intel.com>

-:711: WARNING:BAD_SIGN_OFF: Duplicate signature
#711: 
Cc: Daniele Ceraolo Spurio <daniele.ceraolospurio@intel.com>

-:717: WARNING:BAD_SIGN_OFF: Duplicate signature
#717: 
Signed-off-by: Michal Wajdeczko <michal.wajdeczko@intel.com>

-:718: WARNING:BAD_SIGN_OFF: Duplicate signature
#718: 
Signed-off-by: Daniele Ceraolo Spurio <daniele.ceraolospurio@intel.com>

-:719: WARNING:BAD_SIGN_OFF: Duplicate signature
#719: 
Signed-off-by: Matthew Brost <matthew.brost@intel.com>

-:1381: WARNING:UNNECESSARY_ELSE: else is not generally useful after a break or return
#1381: FILE: drivers/gpu/drm/i915/gt/intel_engine.h:291:
+		return intel_guc_virtual_engine_has_heartbeat(engine);
+	else

-:1558: CHECK:BRACES: braces {} should be used on all arms of this statement
#1558: FILE: drivers/gpu/drm/i915/gt/intel_engine_cs.c:1702:
+	if (guc) {
[...]
+	} else
[...]

-:1562: CHECK:BRACES: Unbalanced braces around else statement
#1562: FILE: drivers/gpu/drm/i915/gt/intel_engine_cs.c:1706:
+	} else

-:1761: CHECK:BRACES: Blank lines aren't necessary before a close brace '}'
#1761: FILE: drivers/gpu/drm/i915/gt/intel_engine_heartbeat.c:231:
+
+}

-:2671: CHECK:LINE_SPACING: Please don't use multiple blank lines
#2671: FILE: drivers/gpu/drm/i915/gt/mock_engine.c:266:
+
+

-:2874: WARNING:LONG_LINE: line length of 103 exceeds 100 columns
#2874: FILE: drivers/gpu/drm/i915/gt/selftest_hangcheck.c:393:
+					pr_err("[%s] Create request failed: %d!\n", engine->name, err);

-:2986: WARNING:LONG_LINE: line length of 108 exceeds 100 columns
#2986: FILE: drivers/gpu/drm/i915/gt/selftest_hangcheck.c:754:
+					pr_err("[%s] Create hang request failed: %d!\n", engine->name, err);

-:3020: WARNING:LONG_LINE: line length of 123 exceeds 100 columns
#3020: FILE: drivers/gpu/drm/i915/gt/selftest_hangcheck.c:789:
+					       engine->name, rq->fence.context, rq->fence.seqno, rq->context->guc_id, err);

-:3167: CHECK:PARENTHESIS_ALIGNMENT: Alignment should match open parenthesis
#3167: FILE: drivers/gpu/drm/i915/gt/selftest_hangcheck.c:1049:
+			err = intel_selftest_modify_policy(engine, &saved,
+							  SELFTEST_SCHEDULER_MODIFY_FAST_RESET);

-:3178: WARNING:LONG_LINE: line length of 108 exceeds 100 columns
#3178: FILE: drivers/gpu/drm/i915/gt/selftest_hangcheck.c:1059:
+					pr_err("[%s] Create hang request failed: %d!\n", engine->name, err);

-:3213: WARNING:LONG_LINE: line length of 123 exceeds 100 columns
#3213: FILE: drivers/gpu/drm/i915/gt/selftest_hangcheck.c:1096:
+					       engine->name, rq->fence.context, rq->fence.seqno, rq->context->guc_id, err);

-:3434: CHECK:PARENTHESIS_ALIGNMENT: Alignment should match open parenthesis
#3434: FILE: drivers/gpu/drm/i915/gt/selftest_hangcheck.c:1660:
+			err = intel_selftest_modify_policy(engine, &saved,
+							  SELFTEST_SCHEDULER_MODIFY_NO_HANGCHECK);

-:3513: WARNING:LINE_SPACING: Missing a blank line after declarations
#3513: FILE: drivers/gpu/drm/i915/gt/selftest_hangcheck.c:1775:
+			int err2 = intel_selftest_restore_policy(engine, &saved);
+			if (err2)

-:3514: WARNING:LONG_LINE: line length of 123 exceeds 100 columns
#3514: FILE: drivers/gpu/drm/i915/gt/selftest_hangcheck.c:1776:
+				pr_err("%s:%d> [%s] Restore policy failed: %d!\n", __func__, __LINE__, engine->name, err2);

-:3769: WARNING:LONG_LINE: line length of 105 exceeds 100 columns
#3769: FILE: drivers/gpu/drm/i915/gt/selftest_workarounds.c:814:
+								   SELFTEST_SCHEDULER_MODIFY_FAST_RESET);

-:3770: ERROR:SPACING: space required before the open parenthesis '('
#3770: FILE: drivers/gpu/drm/i915/gt/selftest_workarounds.c:815:
+				if(err)

-:3780: CHECK:BRACES: Unbalanced braces around else statement
#3780: FILE: drivers/gpu/drm/i915/gt/selftest_workarounds.c:825:
+			} else

-:3803: CHECK:LINE_SPACING: Please don't use multiple blank lines
#3803: FILE: drivers/gpu/drm/i915/gt/selftest_workarounds.c:1277:
+
+

-:4142: ERROR:POINTER_LOCATION: "foo* bar" should be "foo *bar"
#4142: FILE: drivers/gpu/drm/i915/gt/uc/intel_guc.h:119:
+static inline int intel_guc_send_busy_loop(struct intel_guc* guc,

-:4150: ERROR:IN_ATOMIC: do not use in_atomic in drivers
#4150: FILE: drivers/gpu/drm/i915/gt/uc/intel_guc.h:127:
+	bool not_atomic = !in_atomic() && !irqs_disabled();

-:4372: WARNING:ENOTSUPP: ENOTSUPP is not a SUSV4 error code, prefer EOPNOTSUPP
#4372: FILE: drivers/gpu/drm/i915/gt/uc/intel_guc_ads.c:147:
+		return -ENOTSUPP;

-:4500: CHECK:PARENTHESIS_ALIGNMENT: Alignment should match open parenthesis
#4500: FILE: drivers/gpu/drm/i915/gt/uc/intel_guc_ads.c:285:
+	temp_set.registers = kmalloc_array(temp_set.size,
+					  sizeof(*temp_set.registers),

-:4529: CHECK:SPACING: No space is necessary after a cast
#4529: FILE: drivers/gpu/drm/i915/gt/uc/intel_guc_ads.c:314:
+	temp_set.registers = (struct guc_mmio_reg *) (((u8 *) blob) + offset);

-:4678: CHECK:SPACING: No space is necessary after a cast
#4678: FILE: drivers/gpu/drm/i915/gt/uc/intel_guc_ads.c:453:
+	ptr = ((u8 *) blob) + offset;

-:4704: WARNING:LONG_LINE: line length of 106 exceeds 100 columns
#4704: FILE: drivers/gpu/drm/i915/gt/uc/intel_guc_ads.c:470:
+			drm_err(&gt->i915->drm, "No engine state recorded for class %d!\n", engine_class);

-:5165: ERROR:COMPLEX_MACRO: Macros with complex values should be enclosed in parentheses
#5165: FILE: drivers/gpu/drm/i915/gt/uc/intel_guc_ct.c:620:
+#define G2H_LEN_DW(f) \
+	FIELD_GET(INTEL_GUC_CT_SEND_G2H_DW_MASK, f) ? \
+	FIELD_GET(INTEL_GUC_CT_SEND_G2H_DW_MASK, f) + GUC_CTB_HXG_MSG_MIN_LEN : 0

-:5165: CHECK:MACRO_ARG_REUSE: Macro argument reuse 'f' - possible side-effects?
#5165: FILE: drivers/gpu/drm/i915/gt/uc/intel_guc_ct.c:620:
+#define G2H_LEN_DW(f) \
+	FIELD_GET(INTEL_GUC_CT_SEND_G2H_DW_MASK, f) ? \
+	FIELD_GET(INTEL_GUC_CT_SEND_G2H_DW_MASK, f) + GUC_CTB_HXG_MSG_MIN_LEN : 0

-:5511: CHECK:MACRO_ARG_REUSE: Macro argument reuse 'len' - possible side-effects?
#5511: FILE: drivers/gpu/drm/i915/gt/uc/intel_guc_ct.h:109:
+#define MAKE_SEND_FLAGS(len) \
+	({GEM_BUG_ON(!FIELD_FIT(INTEL_GUC_CT_SEND_G2H_DW_MASK, len)); \
+	(FIELD_PREP(INTEL_GUC_CT_SEND_G2H_DW_MASK, len) | INTEL_GUC_CT_SEND_NB);})

-:5513: ERROR:SPACING: space required after that ';' (ctx:VxV)
#5513: FILE: drivers/gpu/drm/i915/gt/uc/intel_guc_ct.h:111:
+	(FIELD_PREP(INTEL_GUC_CT_SEND_G2H_DW_MASK, len) | INTEL_GUC_CT_SEND_NB);})
 	                                                                       ^

-:5687: WARNING:BLOCK_COMMENT_STYLE: Block comments use a trailing */ on a separate line
#5687: FILE: drivers/gpu/drm/i915/gt/uc/intel_guc_fwif.h:214:
+	 * reset. (in micro seconds). */

-:6002: CHECK:COMPARISON_TO_NULL: Comparison to NULL could be written "guc->lrc_desc_pool_vaddr"
#6002: FILE: drivers/gpu/drm/i915/gt/uc/intel_guc_submission.c:295:
+	return guc->lrc_desc_pool_vaddr != NULL;

-:6048: ERROR:POINTER_LOCATION: "foo* bar" should be "foo *bar"
#6048: FILE: drivers/gpu/drm/i915/gt/uc/intel_guc_submission.c:335:
+static int guc_submission_busy_loop(struct intel_guc* guc,

-:6273: CHECK:BRACES: braces {} should be used on all arms of this statement
#6273: FILE: drivers/gpu/drm/i915/gt/uc/intel_guc_submission.c:522:
+		if (unlikely(ret == -EPIPE))
[...]
+		else if (ret == -EBUSY) {
[...]

-:6368: ERROR:SPACING: spaces required around that '||' (ctx:VxW)
#6368: FILE: drivers/gpu/drm/i915/gt/uc/intel_guc_submission.c:603:
+			if (pending_enable|| deregister)
 			                  ^

-:6424: WARNING:MEMORY_BARRIER: memory barrier without comment
#6424: FILE: drivers/gpu/drm/i915/gt/uc/intel_guc_submission.c:652:
+	wmb();

-:6478: ERROR:CODE_INDENT: code indent should use tabs where possible
#6478: FILE: drivers/gpu/drm/i915/gt/uc/intel_guc_submission.c:695:
+ ^I */$

-:6478: WARNING:SPACE_BEFORE_TAB: please, no space before tabs
#6478: FILE: drivers/gpu/drm/i915/gt/uc/intel_guc_submission.c:695:
+ ^I */$

-:7079: WARNING:REPEATED_WORD: Possible repeated word: 'from'
#7079: FILE: drivers/gpu/drm/i915/gt/uc/intel_guc_submission.c:1287:
+	 * could be regisgered either the guc_id has been stole from from

-:7113: CHECK:BRACES: braces {} should be used on all arms of this statement
#7113: FILE: drivers/gpu/drm/i915/gt/uc/intel_guc_submission.c:1321:
+		if (unlikely(ret == -EBUSY)) {
[...]
+		} else if (unlikely(ret == -ENODEV))
[...]

-:7336: ERROR:BRACKET_SPACE: space prohibited before open square bracket '['
#7336: FILE: drivers/gpu/drm/i915/gt/uc/intel_guc_submission.c:1544:
+	u32 action [] = {

-:7359: CHECK:PARENTHESIS_ALIGNMENT: Alignment should match open parenthesis
#7359: FILE: drivers/gpu/drm/i915/gt/uc/intel_guc_submission.c:1567:
+	if (submission_disabled(guc) || (!context_enabled(ce) &&
+	    !context_pending_disable(ce))) {

-:7708: WARNING:ONE_SEMICOLON: Statements terminations use 1 semicolon
#7708: FILE: drivers/gpu/drm/i915/gt/uc/intel_guc_submission.c:1893:
+		return ret;;

-:7864: ERROR:CODE_INDENT: code indent should use tabs where possible
#7864: FILE: drivers/gpu/drm/i915/gt/uc/intel_guc_submission.c:2032:
+        * In GuC submission mode we do not know which physical engine a request$

-:7865: ERROR:CODE_INDENT: code indent should use tabs where possible
#7865: FILE: drivers/gpu/drm/i915/gt/uc/intel_guc_submission.c:2033:
+        * will be scheduled on, this creates a problem because the breadcrumb$

-:7866: ERROR:CODE_INDENT: code indent should use tabs where possible
#7866: FILE: drivers/gpu/drm/i915/gt/uc/intel_guc_submission.c:2034:
+        * interrupt is per physical engine. To work around this we attach$

-:7867: ERROR:CODE_INDENT: code indent should use tabs where possible
#7867: FILE: drivers/gpu/drm/i915/gt/uc/intel_guc_submission.c:2035:
+        * requests and direct all breadcrumb interrupts to the first instance$

-:7868: ERROR:CODE_INDENT: code indent should use tabs where possible
#7868: FILE: drivers/gpu/drm/i915/gt/uc/intel_guc_submission.c:2036:
+        * of an engine per class. In addition all breadcrumb interrupts are$

-:7870: ERROR:CODE_INDENT: code indent should use tabs where possible
#7870: FILE: drivers/gpu/drm/i915/gt/uc/intel_guc_submission.c:2038:
+        */$

-:8532: CHECK:LINE_SPACING: Please don't use multiple blank lines
#8532: FILE: drivers/gpu/drm/i915/gt/uc/intel_guc_submission.c:2796:
+
+

-:8837: WARNING:LONG_LINE: line length of 107 exceeds 100 columns
#8837: FILE: drivers/gpu/drm/i915/i915_debugfs_params.c:14:
+#define MATCH_DEBUGFS_NODE_NAME(_file, _name)	(strcmp((_file)->f_path.dentry->d_name.name, (_name)) == 0)

-:8839: CHECK:MACRO_ARG_REUSE: Macro argument reuse 'i915' - possible side-effects?
#8839: FILE: drivers/gpu/drm/i915/i915_debugfs_params.c:16:
+#define GET_I915(i915, name, ptr)	\
+	do {	\
+		struct i915_params *params;	\
+		params = container_of(((void *) (ptr)), typeof(*params), name);	\
+		(i915) = container_of(params, typeof(*(i915)), params);	\
+	} while(0)

-:8842: CHECK:SPACING: No space is necessary after a cast
#8842: FILE: drivers/gpu/drm/i915/i915_debugfs_params.c:19:
+		params = container_of(((void *) (ptr)), typeof(*params), name);	\

-:8844: ERROR:SPACING: space required before the open parenthesis '('
#8844: FILE: drivers/gpu/drm/i915/i915_debugfs_params.c:21:
+	} while(0)

-:9213: WARNING:LONG_LINE: line length of 101 exceeds 100 columns
#9213: FILE: drivers/gpu/drm/i915/i915_request.c:1596:
+		if ((!uses_guc && is_power_of_2(READ_ONCE(prev->engine)->mask | rq->engine->mask)) ||

-:9292: ERROR:OPEN_BRACE: open brace '{' following enum go on the same line
#9292: FILE: drivers/gpu/drm/i915/i915_request.h:653:
+enum i915_request_state
+{

-:9455: CHECK:PARENTHESIS_ALIGNMENT: Alignment should match open parenthesis
#9455: FILE: drivers/gpu/drm/i915/i915_trace.h:909:
+DECLARE_EVENT_CLASS(intel_context,
+	    TP_PROTO(struct intel_context *ce),

-:9458: CHECK:OPEN_ENDED_LINE: Lines should not end with a '('
#9458: FILE: drivers/gpu/drm/i915/i915_trace.h:912:
+	    TP_STRUCT__entry(

-:9465: CHECK:OPEN_ENDED_LINE: Lines should not end with a '('
#9465: FILE: drivers/gpu/drm/i915/i915_trace.h:919:
+	    TP_fast_assign(

-:9694: WARNING:FILE_PATH_CHANGES: added, moved or deleted file(s), does MAINTAINERS need updating?
#9694: 
new file mode 100644

-:9699: WARNING:SPDX_LICENSE_TAG: Missing or malformed SPDX-License-Identifier tag in line 1
#9699: FILE: drivers/gpu/drm/i915/selftests/intel_scheduler_helpers.c:1:
+/*

-:9700: WARNING:SPDX_LICENSE_TAG: Misplaced SPDX-License-Identifier tag - use line 1 instead
#9700: FILE: drivers/gpu/drm/i915/selftests/intel_scheduler_helpers.c:2:
+ * SPDX-License-Identifier: MIT

-:9808: ERROR:OPEN_BRACE: open brace '{' following struct go on the same line
#9808: FILE: drivers/gpu/drm/i915/selftests/intel_scheduler_helpers.h:15:
+struct intel_selftest_saved_policy
+{

-:9816: ERROR:OPEN_BRACE: open brace '{' following enum go on the same line
#9816: FILE: drivers/gpu/drm/i915/selftests/intel_scheduler_helpers.h:23:
+enum selftest_scheduler_modify
+{

-:9826: ERROR:SPACING: space prohibited after that open parenthesis '('
#9826: FILE: drivers/gpu/drm/i915/selftests/intel_scheduler_helpers.h:33:
+int intel_selftest_wait_for_rq( struct i915_request *rq);

total: 21 errors, 136 warnings, 23 checks, 8531 lines checked
25589f2d8bfd drm/i915/guc/slpc: Initial definitions for slpc
2790990fc2e6 drm/i915/guc/slpc: Gate Host RPS when slpc is enabled
980d855c5c5a drm/i915/guc/slpc: Lay out slpc init/enable/disable/fini
-:45: WARNING:FILE_PATH_CHANGES: added, moved or deleted file(s), does MAINTAINERS need updating?
#45: 
new file mode 100644

-:50: WARNING:SPDX_LICENSE_TAG: Missing or malformed SPDX-License-Identifier tag in line 1
#50: FILE: drivers/gpu/drm/i915/gt/uc/intel_guc_slpc.c:1:
+/*

-:51: WARNING:SPDX_LICENSE_TAG: Misplaced SPDX-License-Identifier tag - use line 1 instead
#51: FILE: drivers/gpu/drm/i915/gt/uc/intel_guc_slpc.c:2:
+ * SPDX-License-Identifier: MIT

-:90: WARNING:SPDX_LICENSE_TAG: Missing or malformed SPDX-License-Identifier tag in line 1
#90: FILE: drivers/gpu/drm/i915/gt/uc/intel_guc_slpc.h:1:
+/*

-:91: WARNING:SPDX_LICENSE_TAG: Misplaced SPDX-License-Identifier tag - use line 1 instead
#91: FILE: drivers/gpu/drm/i915/gt/uc/intel_guc_slpc.h:2:
+ * SPDX-License-Identifier: MIT

total: 0 errors, 5 warnings, 0 checks, 71 lines checked
b076b1d0bbf4 drm/i915/guc/slpc: Adding slpc communication interfaces
-:60: WARNING:FILE_PATH_CHANGES: added, moved or deleted file(s), does MAINTAINERS need updating?
#60: 
new file mode 100644

-:65: WARNING:SPDX_LICENSE_TAG: Missing or malformed SPDX-License-Identifier tag in line 1
#65: FILE: drivers/gpu/drm/i915/gt/uc/intel_guc_slpc_fwif.h:1:
+/*

-:66: WARNING:SPDX_LICENSE_TAG: Misplaced SPDX-License-Identifier tag - use line 1 instead
#66: FILE: drivers/gpu/drm/i915/gt/uc/intel_guc_slpc_fwif.h:2:
+ * SPDX-License-Identifier: MIT

-:106: WARNING:LONG_LINE: line length of 104 exceeds 100 columns
#106: FILE: drivers/gpu/drm/i915/gt/uc/intel_guc_slpc_fwif.h:42:
+		+ (SLPC_CACHELINE_SIZE_BYTES-1)) / SLPC_CACHELINE_SIZE_BYTES)*SLPC_CACHELINE_SIZE_BYTES)

-:106: CHECK:SPACING: spaces preferred around that '-' (ctx:VxV)
#106: FILE: drivers/gpu/drm/i915/gt/uc/intel_guc_slpc_fwif.h:42:
+		+ (SLPC_CACHELINE_SIZE_BYTES-1)) / SLPC_CACHELINE_SIZE_BYTES)*SLPC_CACHELINE_SIZE_BYTES)
 		                            ^

-:106: CHECK:SPACING: spaces preferred around that '*' (ctx:VxV)
#106: FILE: drivers/gpu/drm/i915/gt/uc/intel_guc_slpc_fwif.h:42:
+		+ (SLPC_CACHELINE_SIZE_BYTES-1)) / SLPC_CACHELINE_SIZE_BYTES)*SLPC_CACHELINE_SIZE_BYTES)
 		                                                             ^

-:221: ERROR:CODE_INDENT: code indent should use tabs where possible
#221: FILE: drivers/gpu/drm/i915/gt/uc/intel_guc_slpc_fwif.h:157:
+        union$

-:221: WARNING:LEADING_SPACE: please, no spaces at the start of a line
#221: FILE: drivers/gpu/drm/i915/gt/uc/intel_guc_slpc_fwif.h:157:
+        union$

-:222: ERROR:OPEN_BRACE: open brace '{' following union go on the same line
#222: FILE: drivers/gpu/drm/i915/gt/uc/intel_guc_slpc_fwif.h:158:
+        union
+	{

total: 2 errors, 5 warnings, 2 checks, 286 lines checked
f3e07ff23e21 drm/i915/guc/slpc: Allocate, initialize and release slpc
675158b5dd9c drm/i915/guc/slpc: Enable slpc and add related H2G events
-:35: CHECK:PARENTHESIS_ALIGNMENT: Alignment should match open parenthesis
#35: FILE: drivers/gpu/drm/i915/gt/uc/intel_guc_slpc.c:32:
+static void slpc_mem_set_param(struct slpc_shared_data *data,
+				u32 id, u32 value)

-:57: CHECK:PARENTHESIS_ALIGNMENT: Alignment should match open parenthesis
#57: FILE: drivers/gpu/drm/i915/gt/uc/intel_guc_slpc.c:54:
+static void slpc_mem_task_control(struct slpc_shared_data *data,
+				 u64 val, u32 enable_id, u32 disable_id)

-:91: CHECK:PARENTHESIS_ALIGNMENT: Alignment should match open parenthesis
#91: FILE: drivers/gpu/drm/i915/gt/uc/intel_guc_slpc.c:97:
+static int slpc_send(struct intel_guc_slpc *slpc,
+			struct slpc_event_input *input,

-:228: CHECK:PARENTHESIS_ALIGNMENT: Alignment should match open parenthesis
#228: FILE: drivers/gpu/drm/i915/gt/uc/intel_guc_slpc.c:249:
+	slpc_mem_task_control(data, SLPC_PARAM_TASK_ENABLED,
+				SLPC_PARAM_TASK_ENABLE_GTPERF,

-:232: CHECK:PARENTHESIS_ALIGNMENT: Alignment should match open parenthesis
#232: FILE: drivers/gpu/drm/i915/gt/uc/intel_guc_slpc.c:253:
+	slpc_mem_task_control(data, SLPC_PARAM_TASK_DISABLED,
+				SLPC_PARAM_TASK_ENABLE_BALANCER,

-:236: CHECK:PARENTHESIS_ALIGNMENT: Alignment should match open parenthesis
#236: FILE: drivers/gpu/drm/i915/


_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
