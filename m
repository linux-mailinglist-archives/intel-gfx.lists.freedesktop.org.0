Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id B8B2F3D17A2
	for <lists+intel-gfx@lfdr.de>; Wed, 21 Jul 2021 22:12:29 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 3AC576ED11;
	Wed, 21 Jul 2021 20:12:28 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTP id 58C046ED10;
 Wed, 21 Jul 2021 20:12:27 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id 51DF9A47E1;
 Wed, 21 Jul 2021 20:12:27 +0000 (UTC)
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Vinay Belgaumkar" <vinay.belgaumkar@intel.com>
Date: Wed, 21 Jul 2021 20:12:27 -0000
Message-ID: <162689834733.768.12799432366427902471@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20210721161120.24610-1-vinay.belgaumkar@intel.com>
In-Reply-To: <20210721161120.24610-1-vinay.belgaumkar@intel.com>
Subject: [Intel-gfx] =?utf-8?b?4pyXIEZpLkNJLkNIRUNLUEFUQ0g6IHdhcm5pbmcg?=
 =?utf-8?q?for_drm/i915/guc=3A_Enable_GuC_based_power_management_features?=
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

Series: drm/i915/guc: Enable GuC based power management features
URL   : https://patchwork.freedesktop.org/series/92831/
State : warning

== Summary ==

$ dim checkpatch origin/drm-tip
66527a3d83f9 drm/i915/guc: SQUASHED PATCH - DO NOT REVIEW
-:26: WARNING:BAD_SIGN_OFF: Duplicate signature
#26: 
Cc: John Harrison <john.c.harrison@intel.com>

-:27: WARNING:BAD_SIGN_OFF: Duplicate signature
#27: 
Signed-off-by: Matthew Brost <matthew.brost@intel.com>

-:28: WARNING:BAD_SIGN_OFF: Duplicate signature
#28: 
Reviewed-by: John Harrison <John.C.Harrison@Intel.com>

-:45: WARNING:BAD_SIGN_OFF: Duplicate signature
#45: 
Cc: John Harrison <john.c.harrison@intel.com>

-:46: WARNING:BAD_SIGN_OFF: Duplicate signature
#46: 
Signed-off-by: Matthew Brost <matthew.brost@intel.com>

-:47: WARNING:BAD_SIGN_OFF: Duplicate signature
#47: 
Reviewed-by: John Harrison <John.C.Harrison@Intel.com>

-:69: WARNING:BAD_SIGN_OFF: Duplicate signature
#69: 
Cc: John Harrison <john.c.harrison@intel.com>

-:70: WARNING:BAD_SIGN_OFF: Duplicate signature
#70: 
Signed-off-by: Matthew Brost <matthew.brost@intel.com>

-:71: WARNING:BAD_SIGN_OFF: Duplicate signature
#71: 
Reviewed-by: John Harrison <John.C.Harrison@Intel.com>

-:78: WARNING:BAD_SIGN_OFF: Duplicate signature
#78: 
Signed-off-by: Matthew Brost <matthew.brost@intel.com>

-:79: WARNING:BAD_SIGN_OFF: Duplicate signature
#79: 
Reviewed-by: John Harrison <John.C.Harrison@Intel.com>

-:109: WARNING:BAD_SIGN_OFF: Duplicate signature
#109: 
Signed-off-by: Matthew Brost <matthew.brost@intel.com>

-:124: WARNING:BAD_SIGN_OFF: Duplicate signature
#124: 
Cc: John Harrison <john.c.harrison@intel.com>

-:125: WARNING:BAD_SIGN_OFF: Duplicate signature
#125: 
Signed-off-by: Matthew Brost <matthew.brost@intel.com>

-:126: WARNING:BAD_SIGN_OFF: Duplicate signature
#126: 
Reviewed-by: John Harrison <john.c.harrison@intel.com>

-:146: WARNING:BAD_SIGN_OFF: Duplicate signature
#146: 
Cc: John Harrison <john.c.harrison@intel.com>

-:147: WARNING:BAD_SIGN_OFF: Duplicate signature
#147: 
Signed-off-by: Matthew Brost <matthew.brost@intel.com>

-:148: WARNING:BAD_SIGN_OFF: Duplicate signature
#148: 
Reviewed-by: John Harrison <John.C.Harrison@Intel.com>

-:158: WARNING:BAD_SIGN_OFF: Duplicate signature
#158: 
Cc: John Harrison <john.c.harrison@intel.com>

-:159: WARNING:BAD_SIGN_OFF: Duplicate signature
#159: 
Signed-off-by: Matthew Brost <matthew.brost@intel.com>

-:161: WARNING:BAD_SIGN_OFF: Duplicate signature
#161: 
Reviewed-by: John Harrison <John.C.Harrison@Intel.com>

-:172: WARNING:BAD_SIGN_OFF: Duplicate signature
#172: 
Cc: John Harrison <john.c.harrison@intel.com>

-:173: WARNING:BAD_SIGN_OFF: Duplicate signature
#173: 
Signed-off-by: Matthew Brost <matthew.brost@intel.com>

-:174: WARNING:BAD_SIGN_OFF: Duplicate signature
#174: 
Reviewed-by: John Harrison <john.c.harrison@intel.com>

-:185: WARNING:BAD_SIGN_OFF: Duplicate signature
#185: 
Cc: John Harrison <john.c.harrison@intel.com>

-:186: WARNING:BAD_SIGN_OFF: Duplicate signature
#186: 
Signed-off-by: Matthew Brost <matthew.brost@intel.com>

-:187: WARNING:BAD_SIGN_OFF: Duplicate signature
#187: 
Reviewed-by: John Harrison <John.C.Harrison@Intel.com>

-:202: WARNING:BAD_SIGN_OFF: Duplicate signature
#202: 
Signed-off-by: John Harrison <John.C.Harrison@Intel.com>

-:203: WARNING:BAD_SIGN_OFF: Duplicate signature
#203: 
Signed-off-by: Matthew Brost <matthew.brost@intel.com>

-:224: WARNING:BAD_SIGN_OFF: Duplicate signature
#224: 
Cc: John Harrison <john.c.harrison@intel.com>

-:225: WARNING:BAD_SIGN_OFF: Duplicate signature
#225: 
Signed-off-by: Matthew Brost <matthew.brost@intel.com>

-:226: WARNING:BAD_SIGN_OFF: Duplicate signature
#226: 
Reviewed-by: John Harrison <John.C.Harrison@Intel.com>

-:243: WARNING:BAD_SIGN_OFF: Duplicate signature
#243: 
Signed-off-by: John Harrison <John.C.Harrison@Intel.com>

-:244: WARNING:BAD_SIGN_OFF: Duplicate signature
#244: 
Signed-off-by: Matthew Brost <matthew.brost@intel.com>

-:245: WARNING:BAD_SIGN_OFF: Duplicate signature
#245: 
Reviewed-by: John Harrison <John.C.Harrison@Intel.com>

-:261: WARNING:BAD_SIGN_OFF: Duplicate signature
#261: 
Cc: John Harrison <john.c.harrison@intel.com>

-:262: WARNING:BAD_SIGN_OFF: Duplicate signature
#262: 
Signed-off-by: Matthew Brost <matthew.brost@intel.com>

-:263: WARNING:BAD_SIGN_OFF: Duplicate signature
#263: 
Reviewed-by: John Harrison <John.C.Harrison@Intel.com>

-:275: WARNING:BAD_SIGN_OFF: Duplicate signature
#275: 
Signed-off-by: John Harrison <John.C.Harrison@Intel.com>

-:276: WARNING:BAD_SIGN_OFF: Duplicate signature
#276: 
Signed-off-by: Matthew Brost <matthew.brost@intel.com>

-:277: WARNING:BAD_SIGN_OFF: Duplicate signature
#277: 
Reviewed-by: John Harrison <John.C.Harrison@Intel.com>

-:287: WARNING:BAD_SIGN_OFF: Duplicate signature
#287: 
Cc: John Harrison <john.c.harrison@intel.com>

-:288: WARNING:BAD_SIGN_OFF: Duplicate signature
#288: 
Signed-off-by: Matthew Brost <matthew.brost@intel.com>

-:289: WARNING:BAD_SIGN_OFF: Duplicate signature
#289: 
Reviewed-by: John Harrison <John.C.Harrison@Intel.com>

-:297: WARNING:BAD_SIGN_OFF: Duplicate signature
#297: 
Cc: John Harrison <john.c.harrison@intel.com>

-:298: WARNING:BAD_SIGN_OFF: Duplicate signature
#298: 
Signed-off-by: Matthew Brost <matthew.brost@intel.com>

-:299: WARNING:BAD_SIGN_OFF: Duplicate signature
#299: 
Reviewed-by: John Harrison <John.C.Harrison@Intel.com>

-:314: WARNING:BAD_SIGN_OFF: Duplicate signature
#314: 
Signed-off-by: Matthew Brost <matthew.brost@intel.com>

-:346: WARNING:BAD_SIGN_OFF: Duplicate signature
#346: 
Signed-off-by: John Harrison <John.C.Harrison@Intel.com>

-:347: WARNING:BAD_SIGN_OFF: Duplicate signature
#347: 
Signed-off-by: Matthew Brost <matthew.brost@intel.com>

-:367: WARNING:BAD_SIGN_OFF: Duplicate signature
#367: 
Signed-off-by: Matthew Brost <matthew.brost@intel.com>

-:368: WARNING:BAD_SIGN_OFF: Duplicate signature
#368: 
Reviewed-by: John Harrison <John.C.Harrison@Intel.com>

-:376: WARNING:BAD_SIGN_OFF: Duplicate signature
#376: 
Signed-off-by: Matthew Brost <matthew.brost@intel.com>

-:377: WARNING:BAD_SIGN_OFF: Duplicate signature
#377: 
Reviewed-by: John Harrison <John.C.Harrison@Intel.com>

-:392: WARNING:BAD_SIGN_OFF: Duplicate signature
#392: 
Signed-off-by: Matthew Brost <matthew.brost@intel.com>

-:393: WARNING:BAD_SIGN_OFF: Duplicate signature
#393: 
CC: John Harrison <John.C.Harrison@Intel.com>

-:394: WARNING:BAD_SIGN_OFF: Duplicate signature
#394: 
Reviewed-by: John Harrison <John.C.Harrison@Intel.com>

-:404: WARNING:BAD_SIGN_OFF: Duplicate signature
#404: 
Signed-off-by: Matthew Brost <matthew.brost@intel.com>

-:405: WARNING:BAD_SIGN_OFF: Duplicate signature
#405: 
Reviewed-by: John Harrison <John.C.Harrison@Intel.com>

-:414: WARNING:BAD_SIGN_OFF: Duplicate signature
#414: 
Signed-off-by: Matthew Brost <matthew.brost@intel.com>

-:415: WARNING:BAD_SIGN_OFF: Duplicate signature
#415: 
Reviewed-by: John Harrison <John.C.Harrison@Intel.com>

-:440: WARNING:BAD_SIGN_OFF: Duplicate signature
#440: 
Cc: John Harrison <john.c.harrison@intel.com>

-:441: WARNING:BAD_SIGN_OFF: Duplicate signature
#441: 
Signed-off-by: Matthew Brost <matthew.brost@intel.com>

-:449: WARNING:BAD_SIGN_OFF: Duplicate signature
#449: 
Signed-off-by: Matthew Brost <matthew.brost@intel.com>

-:450: WARNING:BAD_SIGN_OFF: Duplicate signature
#450: 
Reviewed-by: John Harrison <John.C.Harrison@Intel.com>

-:458: WARNING:BAD_SIGN_OFF: Duplicate signature
#458: 
Signed-off-by: Matthew Brost <matthew.brost@intel.com>

-:459: WARNING:BAD_SIGN_OFF: Duplicate signature
#459: 
Cc: Daniele Ceraolo Spurio <daniele.ceraolospurio@intel.com>

-:460: WARNING:BAD_SIGN_OFF: Duplicate signature
#460: 
Reviewed-by: John Harrison <John.C.Harrison@Intel.com>

-:481: WARNING:BAD_SIGN_OFF: Duplicate signature
#481: 
Cc: John Harrison <john.c.harrison@intel.com>

-:482: WARNING:BAD_SIGN_OFF: Duplicate signature
#482: 
Signed-off-by: Matthew Brost <matthew.brost@intel.com>

-:484: WARNING:BAD_SIGN_OFF: Duplicate signature
#484: 
Reviewed-by: John Harrison <John.C.Harrison@Intel.com>

-:501: WARNING:BAD_SIGN_OFF: Duplicate signature
#501: 
Cc: John Harrison <John.C.Harrison@Intel.com>

-:502: WARNING:BAD_SIGN_OFF: Duplicate signature
#502: 
Signed-off-by: Matthew Brost <matthew.brost@intel.com>

-:503: WARNING:BAD_SIGN_OFF: Duplicate signature
#503: 
Reviewed-by: John Harrison <John.C.Harrison@Intel.com>

-:515: WARNING:BAD_SIGN_OFF: Duplicate signature
#515: 
Signed-off-by: Matthew Brost <matthew.brost@intel.com>

-:517: WARNING:BAD_SIGN_OFF: Duplicate signature
#517: 
Reviewed-by: John Harrison <John.C.Harrison@Intel.com>

-:524: WARNING:BAD_SIGN_OFF: Duplicate signature
#524: 
Signed-off-by: Matthew Brost <matthew.brost@intel.com>

-:525: WARNING:BAD_SIGN_OFF: Duplicate signature
#525: 
CC: John Harrison <John.C.Harrison@Intel.com>

-:526: WARNING:BAD_SIGN_OFF: Duplicate signature
#526: 
Reviewed-by: John Harrison <John.C.Harrison@Intel.com>

-:540: WARNING:BAD_SIGN_OFF: Duplicate signature
#540: 
Signed-off-by: John Harrison <John.C.Harrison@Intel.com>

-:541: WARNING:BAD_SIGN_OFF: Duplicate signature
#541: 
Signed-off-by: Fernando Pacheco <fernando.pacheco@intel.com>

-:542: WARNING:BAD_SIGN_OFF: Duplicate signature
#542: 
Signed-off-by: Matthew Brost <matthew.brost@intel.com>

-:552: WARNING:BAD_SIGN_OFF: Duplicate signature
#552: 
Signed-off-by: John Harrison <John.C.Harrison@Intel.com>

-:553: WARNING:BAD_SIGN_OFF: Duplicate signature
#553: 
Signed-off-by: Matthew Brost <matthew.brost@intel.com>

-:554: WARNING:BAD_SIGN_OFF: Duplicate signature
#554: 
Reviewed-by: Matthew Brost <matthew.brost@intel.com>

-:561: WARNING:BAD_SIGN_OFF: Duplicate signature
#561: 
Signed-off-by: John Harrison <John.C.Harrison@Intel.com>

-:562: WARNING:BAD_SIGN_OFF: Duplicate signature
#562: 
Signed-off-by: Matthew Brost <matthew.brost@intel.com>

-:563: WARNING:BAD_SIGN_OFF: Duplicate signature
#563: 
Reviewed-by: Matthew Brost <matthew.brost@intel.com>

-:577: WARNING:BAD_SIGN_OFF: Duplicate signature
#577: 
Signed-off-by: Matthew Brost <matthew.brost@intel.com>

-:578: WARNING:BAD_SIGN_OFF: Duplicate signature
#578: 
Reviewed-by: John Harrison <John.C.Harrison@Intel.com>

-:595: WARNING:BAD_SIGN_OFF: Duplicate signature
#595: 
Signed-off-by: John Harrison <John.C.Harrison@Intel.com>

-:596: WARNING:BAD_SIGN_OFF: Duplicate signature
#596: 
Signed-off-by: Matthew Brost <matthew.brost@intel.com>

-:597: WARNING:BAD_SIGN_OFF: Duplicate signature
#597: 
Reviewed-by: Matthew Brost <matthew.brost@intel.com>

-:608: WARNING:BAD_SIGN_OFF: Duplicate signature
#608: 
Signed-off-by: John Harrison <John.C.Harrison@Intel.com>

-:609: WARNING:BAD_SIGN_OFF: Duplicate signature
#609: 
Signed-off-by: Matthew Brost <matthew.brost@intel.com>

-:610: WARNING:BAD_SIGN_OFF: Duplicate signature
#610: 
Reviewed-by: Matthew Brost <matthew.brost@intel.com>

-:628: WARNING:BAD_SIGN_OFF: Duplicate signature
#628: 
Signed-off-by: John Harrison <John.C.Harrison@Intel.com>

-:629: WARNING:BAD_SIGN_OFF: Duplicate signature
#629: 
Signed-off-by: Matthew Brost <matthew.brost@intel.com>

-:630: WARNING:BAD_SIGN_OFF: Duplicate signature
#630: 
Reviewed-by: Matthew Brost <matthew.brost@intel.com>

-:637: WARNING:BAD_SIGN_OFF: Duplicate signature
#637: 
Signed-off-by: John Harrison <John.C.Harrison@Intel.com>

-:638: WARNING:BAD_SIGN_OFF: Duplicate signature
#638: 
Signed-off-by: Matthew Brost <matthew.brost@intel.com>

-:639: WARNING:BAD_SIGN_OFF: Duplicate signature
#639: 
Reviewed-by: Matthew Brost <matthew.brost@intel.com>

-:653: WARNING:BAD_SIGN_OFF: Duplicate signature
#653: 
Signed-off-by: John Harrison <John.C.Harrison@Intel.com>

-:654: WARNING:BAD_SIGN_OFF: Duplicate signature
#654: 
Signed-off-by: Matthew Brost <matthew.brost@intel.com>

-:655: WARNING:BAD_SIGN_OFF: Duplicate signature
#655: 
Reviewed-by: Matthew Brost <matthew.brost@intel.com>

-:662: WARNING:BAD_SIGN_OFF: Duplicate signature
#662: 
Cc: John Harrison <John.C.Harrison@Intel.com>

-:663: WARNING:BAD_SIGN_OFF: Duplicate signature
#663: 
Signed-off-by: Matthew Brost <matthew.brost@intel.com>

-:664: WARNING:BAD_SIGN_OFF: Duplicate signature
#664: 
Reviewed-by: John Harrison <John.C.Harrison@Intel.com>

-:671: WARNING:BAD_SIGN_OFF: Duplicate signature
#671: 
Signed-off-by: Matthew Brost <matthew.brost@intel.com>

-:680: WARNING:BAD_SIGN_OFF: Duplicate signature
#680: 
Signed-off-by: John Harrison <John.C.Harrison@Intel.com>

-:681: WARNING:BAD_SIGN_OFF: Duplicate signature
#681: 
Signed-off-by: Matthew Brost <matthew.brost@intel.com>

-:682: WARNING:BAD_SIGN_OFF: Duplicate signature
#682: 
Reviewed-by: Matthew Brost <matthew.brost@intel.com>

-:683: WARNING:BAD_SIGN_OFF: Duplicate signature
#683: 
Cc: Daniele Ceraolo Spurio <daniele.ceraolospurio@intel.com>

-:692: WARNING:BAD_SIGN_OFF: Duplicate signature
#692: 
Signed-off-by: John Harrison <John.C.Harrison@Intel.com>

-:693: WARNING:BAD_SIGN_OFF: Duplicate signature
#693: 
Signed-off-by: Matthew Brost <matthew.brost@intel.com>

-:694: WARNING:BAD_SIGN_OFF: Duplicate signature
#694: 
Cc: Daniele Ceraolo Spurio <daniele.ceraolospurio@intel.com>

-:695: WARNING:BAD_SIGN_OFF: Duplicate signature
#695: 
Cc: Matthew Brost <matthew.brost@intel.com>

-:696: WARNING:BAD_SIGN_OFF: Duplicate signature
#696: 
Reviewed-by: Matthew Brost <matthew.brost@intel.com>

-:704: WARNING:BAD_SIGN_OFF: Duplicate signature
#704: 
Signed-off-by: Rahul Kumar Singh <rahul.kumar.singh@intel.com>

-:705: WARNING:BAD_SIGN_OFF: Duplicate signature
#705: 
Signed-off-by: John Harrison <John.C.Harrison@Intel.com>

-:706: WARNING:BAD_SIGN_OFF: Duplicate signature
#706: 
Signed-off-by: Matthew Brost <matthew.brost@intel.com>

-:707: WARNING:BAD_SIGN_OFF: Duplicate signature
#707: 
Cc: Daniele Ceraolo Spurio <daniele.ceraolospurio@intel.com>

-:708: WARNING:BAD_SIGN_OFF: Duplicate signature
#708: 
Cc: Matthew Brost <matthew.brost@intel.com>

-:709: WARNING:BAD_SIGN_OFF: Duplicate signature
#709: 
Reviewed-by: Matthew Brost <matthew.brost@intel.com>

-:716: WARNING:BAD_SIGN_OFF: Duplicate signature
#716: 
Signed-off-by: Matthew Brost <matthew.brost@intel.com>

-:743: WARNING:BAD_SIGN_OFF: Duplicate signature
#743: 
Signed-off-by: John Harrison <John.C.Harrison@Intel.com>

-:744: WARNING:BAD_SIGN_OFF: Duplicate signature
#744: 
Signed-off-by: Matthew Brost <matthew.brost@intel.com>

-:745: WARNING:BAD_SIGN_OFF: Duplicate signature
#745: 
Reviewed-by: Matthew Brost <matthew.brost@intel.com>

-:746: WARNING:BAD_SIGN_OFF: Duplicate signature
#746: 
Cc: Daniele Ceraolo Spurio <daniele.ceraolospurio@intel.com>

-:747: WARNING:BAD_SIGN_OFF: Duplicate signature
#747: 
Cc: Matthew Brost <matthew.brost@intel.com>

-:769: WARNING:BAD_SIGN_OFF: Duplicate signature
#769: 
Signed-off-by: John Harrison <John.C.Harrison@Intel.com>

-:770: WARNING:BAD_SIGN_OFF: Duplicate signature
#770: 
Signed-off-by: Matthew Brost <matthew.brost@intel.com>

-:771: WARNING:BAD_SIGN_OFF: Duplicate signature
#771: 
Cc: Daniele Ceraolo Spurio <daniele.ceraolospurio@intel.com>

-:772: WARNING:BAD_SIGN_OFF: Duplicate signature
#772: 
Reviewed-by: Matthew Brost <matthew.brost@intel.com>

-:793: WARNING:BAD_SIGN_OFF: Duplicate signature
#793: 
Signed-off-by: Matthew Brost <matthew.brost@intel.com>

-:794: WARNING:BAD_SIGN_OFF: Duplicate signature
#794: 
Cc: Daniele Ceraolo Spurio <daniele.ceraolospurio@intel.com>

-:805: WARNING:BAD_SIGN_OFF: Duplicate signature
#805: 
Signed-off-by: Michal Wajdeczko <michal.wajdeczko@intel.com>

-:806: WARNING:BAD_SIGN_OFF: Duplicate signature
#806: 
Signed-off-by: Daniele Ceraolo Spurio <daniele.ceraolospurio@intel.com>

-:807: WARNING:BAD_SIGN_OFF: Duplicate signature
#807: 
Signed-off-by: Matthew Brost <matthew.brost@intel.com>

-:808: WARNING:BAD_SIGN_OFF: Duplicate signature
#808: 
Reviewed-by: Matthew Brost <matthew.brost@intel.com>

-:1671: CHECK:BRACES: braces {} should be used on all arms of this statement
#1671: FILE: drivers/gpu/drm/i915/gt/intel_engine_cs.c:1702:
+	if (guc) {
[...]
+	} else
[...]

-:1675: CHECK:BRACES: Unbalanced braces around else statement
#1675: FILE: drivers/gpu/drm/i915/gt/intel_engine_cs.c:1706:
+	} else

-:1874: CHECK:BRACES: Blank lines aren't necessary before a close brace '}'
#1874: FILE: drivers/gpu/drm/i915/gt/intel_engine_heartbeat.c:231:
+
+}

-:3266: CHECK:PARENTHESIS_ALIGNMENT: Alignment should match open parenthesis
#3266: FILE: drivers/gpu/drm/i915/gt/selftest_hangcheck.c:1052:
+			err = intel_selftest_modify_policy(engine, &saved,
+							  SELFTEST_SCHEDULER_MODIFY_FAST_RESET);

-:3535: CHECK:PARENTHESIS_ALIGNMENT: Alignment should match open parenthesis
#3535: FILE: drivers/gpu/drm/i915/gt/selftest_hangcheck.c:1664:
+			err = intel_selftest_modify_policy(engine, &saved,
+							  SELFTEST_SCHEDULER_MODIFY_NO_HANGCHECK);

-:3872: WARNING:LONG_LINE: line length of 105 exceeds 100 columns
#3872: FILE: drivers/gpu/drm/i915/gt/selftest_workarounds.c:814:
+								   SELFTEST_SCHEDULER_MODIFY_FAST_RESET);

-:3883: CHECK:BRACES: Unbalanced braces around else statement
#3883: FILE: drivers/gpu/drm/i915/gt/selftest_workarounds.c:825:
+			} else

-:3906: CHECK:LINE_SPACING: Please don't use multiple blank lines
#3906: FILE: drivers/gpu/drm/i915/gt/selftest_workarounds.c:1277:
+
+

-:4232: ERROR:IN_ATOMIC: do not use in_atomic in drivers
#4232: FILE: drivers/gpu/drm/i915/gt/uc/intel_guc.h:127:
+	bool not_atomic = !in_atomic() && !irqs_disabled();

-:4585: CHECK:PARENTHESIS_ALIGNMENT: Alignment should match open parenthesis
#4585: FILE: drivers/gpu/drm/i915/gt/uc/intel_guc_ads.c:286:
+	temp_set.registers = kmalloc_array(temp_set.size,
+					  sizeof(*temp_set.registers),

-:4614: CHECK:SPACING: No space is necessary after a cast
#4614: FILE: drivers/gpu/drm/i915/gt/uc/intel_guc_ads.c:315:
+	temp_set.registers = (struct guc_mmio_reg *) (((u8 *) blob) + offset);

-:4764: CHECK:SPACING: No space is necessary after a cast
#4764: FILE: drivers/gpu/drm/i915/gt/uc/intel_guc_ads.c:455:
+	ptr = ((u8 *) blob) + offset;

-:5070: WARNING:SPACING: space prohibited between function name and open parenthesis '('
#5070: FILE: drivers/gpu/drm/i915/gt/uc/intel_guc_ct.c:620:
+#define G2H_LEN_DW(f) ({ typeof (f) f_ = (f); \

-:5268: WARNING:SPACING: space prohibited between function name and open parenthesis '('
#5268: FILE: drivers/gpu/drm/i915/gt/uc/intel_guc_ct.h:110:
+	({ typeof (len) len_ = (len); \

-:5778: CHECK:COMPARISON_TO_NULL: Comparison to NULL could be written "guc->lrc_desc_pool_vaddr"
#5778: FILE: drivers/gpu/drm/i915/gt/uc/intel_guc_submission.c:312:
+	return guc->lrc_desc_pool_vaddr != NULL;

-:6046: CHECK:BRACES: braces {} should be used on all arms of this statement
#6046: FILE: drivers/gpu/drm/i915/gt/uc/intel_guc_submission.c:538:
+		if (unlikely(ret == -EPIPE))
[...]
+		else if (ret == -EBUSY) {
[...]

-:6933: CHECK:BRACES: braces {} should be used on all arms of this statement
#6933: FILE: drivers/gpu/drm/i915/gt/uc/intel_guc_submission.c:1359:
+		if (unlikely(ret == -EBUSY)) {
[...]
+		} else if (unlikely(ret == -ENODEV))
[...]

-:7184: CHECK:PARENTHESIS_ALIGNMENT: Alignment should match open parenthesis
#7184: FILE: drivers/gpu/drm/i915/gt/uc/intel_guc_submission.c:1610:
+	if (submission_disabled(guc) || (!context_enabled(ce) &&
+	    !context_pending_disable(ce))) {

-:7866: CHECK:UNNECESSARY_PARENTHESES: Unnecessary parentheses around 'rq->guc_prio == GUC_PRIO_FINI'
#7866: FILE: drivers/gpu/drm/i915/gt/uc/intel_guc_submission.c:2226:
+	if (prio < I915_PRIORITY_NORMAL ||
+	    (rq->guc_prio == GUC_PRIO_FINI) ||
+	    (rq->guc_prio != GUC_PRIO_INIT &&
+	     !new_guc_prio_higher(rq->guc_prio, new_guc_prio)))

-:8548: CHECK:LINE_SPACING: Please don't use multiple blank lines
#8548: FILE: drivers/gpu/drm/i915/gt/uc/intel_guc_submission.c:3002:
+
+

-:8836: CHECK:MACRO_ARG_REUSE: Macro argument reuse 'i915' - possible side-effects?
#8836: FILE: drivers/gpu/drm/i915/i915_debugfs_params.c:17:
+#define GET_I915(i915, name, ptr)	\
+	do {	\
+		struct i915_params *params;	\
+		params = container_of(((void *) (ptr)), typeof(*params), name);	\
+		(i915) = container_of(params, typeof(*(i915)), params);	\
+	} while (0)

-:8839: CHECK:SPACING: No space is necessary after a cast
#8839: FILE: drivers/gpu/drm/i915/i915_debugfs_params.c:20:
+		params = container_of(((void *) (ptr)), typeof(*params), name);	\

-:9504: CHECK:OPEN_ENDED_LINE: Lines should not end with a '('
#9504: FILE: drivers/gpu/drm/i915/i915_trace.h:902:
+		    TP_STRUCT__entry(

-:9512: CHECK:OPEN_ENDED_LINE: Lines should not end with a '('
#9512: FILE: drivers/gpu/drm/i915/i915_trace.h:910:
+		    TP_fast_assign(

-:9744: WARNING:FILE_PATH_CHANGES: added, moved or deleted file(s), does MAINTAINERS need updating?
#9744: 
new file mode 100644

-:9749: WARNING:SPDX_LICENSE_TAG: Missing or malformed SPDX-License-Identifier tag in line 1
#9749: FILE: drivers/gpu/drm/i915/selftests/intel_scheduler_helpers.c:1:
+/*

-:9750: WARNING:SPDX_LICENSE_TAG: Misplaced SPDX-License-Identifier tag - use line 1 instead
#9750: FILE: drivers/gpu/drm/i915/selftests/intel_scheduler_helpers.c:2:
+ * SPDX-License-Identifier: MIT

-:9858: ERROR:OPEN_BRACE: open brace '{' following struct go on the same line
#9858: FILE: drivers/gpu/drm/i915/selftests/intel_scheduler_helpers.h:15:
+struct intel_selftest_saved_policy
+{

-:9866: ERROR:OPEN_BRACE: open brace '{' following enum go on the same line
#9866: FILE: drivers/gpu/drm/i915/selftests/intel_scheduler_helpers.h:23:
+enum selftest_scheduler_modify
+{

-:9876: ERROR:SPACING: space prohibited after that open parenthesis '('
#9876: FILE: drivers/gpu/drm/i915/selftests/intel_scheduler_helpers.h:33:
+int intel_selftest_wait_for_rq( struct i915_request *rq);

total: 4 errors, 146 warnings, 20 checks, 8526 lines checked
b98a3285cad6 drm/i915/guc/slpc: Initial definitions for SLPC
-:12: WARNING:COMMIT_LOG_LONG_LINE: Possible unwrapped commit description (prefer a maximum 75 chars per line)
#12: 
template for SLPC structure in intel_guc_slpc_types.h. Fix copyright (Michal W)

-:24: WARNING:BAD_SIGN_OFF: Duplicate signature
#24: 
Signed-off-by: Vinay Belgaumkar <vinay.belgaumkar@intel.com>

-:25: WARNING:BAD_SIGN_OFF: Duplicate signature
#25: 
Signed-off-by: Sundaresan Sujaritha <sujaritha.sundaresan@intel.com>

-:89: WARNING:FILE_PATH_CHANGES: added, moved or deleted file(s), does MAINTAINERS need updating?
#89: 
new file mode 100644

-:213: CHECK:BRACES: Blank lines aren't necessary after an open brace '{'
#213: FILE: drivers/gpu/drm/i915/gt/uc/intel_guc_slpc_types.h:12:
+struct intel_guc_slpc {
+

total: 0 errors, 4 warnings, 1 checks, 188 lines checked
98e6b218685d drm/i915/guc/slpc: Gate Host RPS when SLPC is enabled
3bfae09e3b51 drm/i915/guc/slpc: Adding SLPC communication interfaces
-:15: WARNING:FILE_PATH_CHANGES: added, moved or deleted file(s), does MAINTAINERS need updating?
#15: 
new file mode 100644

-:87: WARNING:LONG_LINE: line length of 104 exceeds 100 columns
#87: FILE: drivers/gpu/drm/i915/gt/uc/abi/guc_actions_slpc_abi.h:68:
+		+ (SLPC_CACHELINE_SIZE_BYTES-1)) / SLPC_CACHELINE_SIZE_BYTES)*SLPC_CACHELINE_SIZE_BYTES)

-:87: CHECK:SPACING: spaces preferred around that '-' (ctx:VxV)
#87: FILE: drivers/gpu/drm/i915/gt/uc/abi/guc_actions_slpc_abi.h:68:
+		+ (SLPC_CACHELINE_SIZE_BYTES-1)) / SLPC_CACHELINE_SIZE_BYTES)*SLPC_CACHELINE_SIZE_BYTES)
 		                            ^

-:87: CHECK:SPACING: spaces preferred around that '*' (ctx:VxV)
#87: FILE: drivers/gpu/drm/i915/gt/uc/abi/guc_actions_slpc_abi.h:68:
+		+ (SLPC_CACHELINE_SIZE_BYTES-1)) / SLPC_CACHELINE_SIZE_BYTES)*SLPC_CACHELINE_SIZE_BYTES)
 		                                                             ^

-:210: WARNING:SPACING: space prohibited before semicolon
#210: FILE: drivers/gpu/drm/i915/gt/uc/abi/guc_actions_slpc_abi.h:191:
+	struct slpc_override_params override_params ;

total: 0 errors, 3 warnings, 2 checks, 223 lines checked
16100ce5a83d drm/i915/guc/slpc: Allocate, initialize and release SLPC
db3c5ca40c59 drm/i915/guc/slpc: Enable SLPC and add related H2G events
-:34: CHECK:PARENTHESIS_ALIGNMENT: Alignment should match open parenthesis
#34: FILE: drivers/gpu/drm/i915/gt/uc/intel_guc_slpc.c:49:
+static void slpc_mem_set_param(struct slpc_shared_data *data,
+				u32 id, u32 value)

-:46: CHECK:PARENTHESIS_ALIGNMENT: Alignment should match open parenthesis
#46: FILE: drivers/gpu/drm/i915/gt/uc/intel_guc_slpc.c:61:
+static void slpc_mem_set_enabled(struct slpc_shared_data *data,
+				u8 enable_id, u8 disable_id)

-:57: CHECK:PARENTHESIS_ALIGNMENT: Alignment should match open parenthesis
#57: FILE: drivers/gpu/drm/i915/gt/uc/intel_guc_slpc.c:72:
+static void slpc_mem_set_disabled(struct slpc_shared_data *data,
+				u8 enable_id, u8 disable_id)

-:95: ERROR:CODE_INDENT: code indent should use tabs where possible
#95: FILE: drivers/gpu/drm/i915/gt/uc/intel_guc_slpc.c:121:
+ ^I^ISLPC_EVENT(SLPC_EVENT_QUERY_TASK_STATE, 2),$

-:95: WARNING:SPACE_BEFORE_TAB: please, no space before tabs
#95: FILE: drivers/gpu/drm/i915/gt/uc/intel_guc_slpc.c:121:
+ ^I^ISLPC_EVENT(SLPC_EVENT_QUERY_TASK_STATE, 2),$

-:95: WARNING:LEADING_SPACE: please, no spaces at the start of a line
#95: FILE: drivers/gpu/drm/i915/gt/uc/intel_guc_slpc.c:121:
+ ^I^ISLPC_EVENT(SLPC_EVENT_QUERY_TASK_STATE, 2),$

-:100: ERROR:CODE_INDENT: code indent should use tabs where possible
#100: FILE: drivers/gpu/drm/i915/gt/uc/intel_guc_slpc.c:126:
+ ^Ireturn intel_guc_send(guc, request, ARRAY_SIZE(request));$

-:100: WARNING:SPACE_BEFORE_TAB: please, no space before tabs
#100: FILE: drivers/gpu/drm/i915/gt/uc/intel_guc_slpc.c:126:
+ ^Ireturn intel_guc_send(guc, request, ARRAY_SIZE(request));$

-:100: WARNING:LEADING_SPACE: please, no spaces at the start of a line
#100: FILE: drivers/gpu/drm/i915/gt/uc/intel_guc_slpc.c:126:
+ ^Ireturn intel_guc_send(guc, request, ARRAY_SIZE(request));$

-:113: CHECK:PARENTHESIS_ALIGNMENT: Alignment should match open parenthesis
#113: FILE: drivers/gpu/drm/i915/gt/uc/intel_guc_slpc.c:139:
+		drm_err(&i915->drm, "Query task state data returned (%pe)\n",
+				ERR_PTR(ret));

-:161: ERROR:CODE_INDENT: code indent should use tabs where possible
#161: FILE: drivers/gpu/drm/i915/gt/uc/intel_guc_slpc.c:187:
+ ^Ireturn intel_guc_send(guc, request, ARRAY_SIZE(request));$

-:161: WARNING:SPACE_BEFORE_TAB: please, no space before tabs
#161: FILE: drivers/gpu/drm/i915/gt/uc/intel_guc_slpc.c:187:
+ ^Ireturn intel_guc_send(guc, request, ARRAY_SIZE(request));$

-:161: WARNING:LEADING_SPACE: please, no spaces at the start of a line
#161: FILE: drivers/gpu/drm/i915/gt/uc/intel_guc_slpc.c:187:
+ ^Ireturn intel_guc_send(guc, request, ARRAY_SIZE(request));$

-:176: CHECK:PARENTHESIS_ALIGNMENT: Alignment should match open parenthesis
#176: FILE: drivers/gpu/drm/i915/gt/uc/intel_guc_slpc.c:202:
+			drm_err(&i915->drm, "SLPC not enabled! State = %s\n",
+				  slpc_state_string(slpc));

-:197: CHECK:OPEN_ENDED_LINE: Lines should not end with a '('
#197: FILE: drivers/gpu/drm/i915/gt/uc/intel_guc_slpc.c:223:
+	return	DIV_ROUND_CLOSEST(

-:199: CHECK:PARENTHESIS_ALIGNMENT: Alignment should match open parenthesis
#199: FILE: drivers/gpu/drm/i915/gt/uc/intel_guc_slpc.c:225:
+		REG_FIELD_GET(SLPC_MIN_UNSLICE_FREQ_MASK,
+			data->task_state_data.freq) *

-:209: CHECK:OPEN_ENDED_LINE: Lines should not end with a '('
#209: FILE: drivers/gpu/drm/i915/gt/uc/intel_guc_slpc.c:235:
+	return	DIV_ROUND_CLOSEST(

-:211: CHECK:PARENTHESIS_ALIGNMENT: Alignment should match open parenthesis
#211: FILE: drivers/gpu/drm/i915/gt/uc/intel_guc_slpc.c:237:
+		REG_FIELD_GET(SLPC_MAX_UNSLICE_FREQ_MASK,
+			data->task_state_data.freq) *

-:235: CHECK:PARENTHESIS_ALIGNMENT: Alignment should match open parenthesis
#235: FILE: drivers/gpu/drm/i915/gt/uc/intel_guc_slpc.c:269:
+	slpc_mem_set_enabled(data, SLPC_PARAM_TASK_ENABLE_GTPERF,
+				SLPC_PARAM_TASK_DISABLE_GTPERF);

-:238: CHECK:PARENTHESIS_ALIGNMENT: Alignment should match open parenthesis
#238: FILE: drivers/gpu/drm/i915/gt/uc/intel_guc_slpc.c:272:
+	slpc_mem_set_disabled(data, SLPC_PARAM_TASK_ENABLE_BALANCER,
+				SLPC_PARAM_TASK_DISABLE_BALANCER);

-:241: CHECK:PARENTHESIS_ALIGNMENT: Alignment should match open parenthesis
#241: FILE: drivers/gpu/drm/i915/gt/uc/intel_guc_slpc.c:275:
+	slpc_mem_set_disabled(data, SLPC_PARAM_TASK_ENABLE_DCC,
+				SLPC_PARAM_TASK_DISABLE_DCC);

-:246: CHECK:PARENTHESIS_ALIGNMENT: Alignment should match open parenthesis
#246: FILE: drivers/gpu/drm/i915/gt/uc/intel_guc_slpc.c:280:
+		drm_err(&i915->drm, "SLPC Reset event returned (%pe)\n",
+				ERR_PTR(ret));

-:256: CHECK:PARENTHESIS_ALIGNMENT: Alignment should match open parenthesis
#256: FILE: drivers/gpu/drm/i915/gt/uc/intel_guc_slpc.c:290:
+	drm_info(&i915->drm, "SLPC min freq: %u Mhz, max is %u Mhz\n",
+			slpc_decode_min_freq(slpc),

-:259: CHECK:LINE_SPACING: Please don't use multiple blank lines
#259: FILE: drivers/gpu/drm/i915/gt/uc/intel_guc_slpc.c:293:
+
+

total: 3 errors, 6 warnings, 15 checks, 270 lines checked
299f2bc9111a drm/i915/guc/slpc: Add methods to set min/max frequency
-:26: ERROR:CODE_INDENT: code indent should use tabs where possible
#26: FILE: drivers/gpu/drm/i915/gt/uc/intel_guc_slpc.c:116:
+ ^I^ISLPC_EVENT(SLPC_EVENT_PARAMETER_SET, 2),$

-:26: WARNING:SPACE_BEFORE_TAB: please, no space before tabs
#26: FILE: drivers/gpu/drm/i915/gt/uc/intel_guc_slpc.c:116:
+ ^I^ISLPC_EVENT(SLPC_EVENT_PARAMETER_SET, 2),$

-:26: WARNING:LEADING_SPACE: please, no spaces at the start of a line
#26: FILE: drivers/gpu/drm/i915/gt/uc/intel_guc_slpc.c:116:
+ ^I^ISLPC_EVENT(SLPC_EVENT_PARAMETER_SET, 2),$

-:31: ERROR:CODE_INDENT: code indent should use tabs where possible
#31: FILE: drivers/gpu/drm/i915/gt/uc/intel_guc_slpc.c:121:
+ ^Ireturn intel_guc_send(guc, request, ARRAY_SIZE(request));$

-:31: WARNING:SPACE_BEFORE_TAB: please, no space before tabs
#31: FILE: drivers/gpu/drm/i915/gt/uc/intel_guc_slpc.c:121:
+ ^Ireturn intel_guc_send(guc, request, ARRAY_SIZE(request));$

-:31: WARNING:LEADING_SPACE: please, no spaces at the start of a line
#31: FILE: drivers/gpu/drm/i915/gt/uc/intel_guc_slpc.c:121:
+ ^Ireturn intel_guc_send(guc, request, ARRAY_SIZE(request));$

-:75: CHECK:PARENTHESIS_ALIGNMENT: Alignment should match open parenthesis
#75: FILE: drivers/gpu/dr


_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
