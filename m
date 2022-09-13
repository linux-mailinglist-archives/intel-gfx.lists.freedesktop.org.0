Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 7C1585B7D29
	for <lists+intel-gfx@lfdr.de>; Wed, 14 Sep 2022 00:43:53 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 8FE0310E5E7;
	Tue, 13 Sep 2022 22:43:43 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [IPv6:2610:10:20:722:a800:ff:feee:56cf])
 by gabe.freedesktop.org (Postfix) with ESMTP id 86BDC10E5E7;
 Tue, 13 Sep 2022 22:43:41 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id 7EB32A66C9;
 Tue, 13 Sep 2022 22:43:41 +0000 (UTC)
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Radhakrishna Sripada" <radhakrishna.sripada@intel.com>
Date: Tue, 13 Sep 2022 22:43:41 -0000
Message-ID: <166310902148.21295.8914775375877686046@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20220913183341.908028-1-radhakrishna.sripada@intel.com>
In-Reply-To: <20220913183341.908028-1-radhakrishna.sripada@intel.com>
Subject: [Intel-gfx] =?utf-8?b?4pyXIEZpLkNJLkNIRUNLUEFUQ0g6IHdhcm5pbmcg?=
 =?utf-8?q?for_Initial_Meteorlake_Support_=28rev9=29?=
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

Series: Initial Meteorlake Support (rev9)
URL   : https://patchwork.freedesktop.org/series/106786/
State : warning

== Summary ==

Error: dim checkpatch failed
fc61afc703f2 drm/i915: Read graphics/media/display arch version from hw
b085eb9c9f88 drm/i915: Parse and set stepping for platforms with GMD
5148fe87abfa drm/i915/mtl: Define engine context layouts
-:77: WARNING:LEADING_SPACE: please, no spaces at the start of a line
#77: FILE: drivers/gpu/drm/i915/gt/intel_lrc.c:643:
+       NOP(1),$

-:78: WARNING:LEADING_SPACE: please, no spaces at the start of a line
#78: FILE: drivers/gpu/drm/i915/gt/intel_lrc.c:644:
+       LRI(13, POSTED),$

-:79: WARNING:LEADING_SPACE: please, no spaces at the start of a line
#79: FILE: drivers/gpu/drm/i915/gt/intel_lrc.c:645:
+       REG16(0x244),$

-:80: WARNING:LEADING_SPACE: please, no spaces at the start of a line
#80: FILE: drivers/gpu/drm/i915/gt/intel_lrc.c:646:
+       REG(0x034),$

-:81: WARNING:LEADING_SPACE: please, no spaces at the start of a line
#81: FILE: drivers/gpu/drm/i915/gt/intel_lrc.c:647:
+       REG(0x030),$

-:82: WARNING:LEADING_SPACE: please, no spaces at the start of a line
#82: FILE: drivers/gpu/drm/i915/gt/intel_lrc.c:648:
+       REG(0x038),$

-:83: WARNING:LEADING_SPACE: please, no spaces at the start of a line
#83: FILE: drivers/gpu/drm/i915/gt/intel_lrc.c:649:
+       REG(0x03c),$

-:84: WARNING:LEADING_SPACE: please, no spaces at the start of a line
#84: FILE: drivers/gpu/drm/i915/gt/intel_lrc.c:650:
+       REG(0x168),$

-:85: WARNING:LEADING_SPACE: please, no spaces at the start of a line
#85: FILE: drivers/gpu/drm/i915/gt/intel_lrc.c:651:
+       REG(0x140),$

-:86: WARNING:LEADING_SPACE: please, no spaces at the start of a line
#86: FILE: drivers/gpu/drm/i915/gt/intel_lrc.c:652:
+       REG(0x110),$

-:87: WARNING:LEADING_SPACE: please, no spaces at the start of a line
#87: FILE: drivers/gpu/drm/i915/gt/intel_lrc.c:653:
+       REG(0x1c0),$

-:88: WARNING:LEADING_SPACE: please, no spaces at the start of a line
#88: FILE: drivers/gpu/drm/i915/gt/intel_lrc.c:654:
+       REG(0x1c4),$

-:89: WARNING:LEADING_SPACE: please, no spaces at the start of a line
#89: FILE: drivers/gpu/drm/i915/gt/intel_lrc.c:655:
+       REG(0x1c8),$

-:90: WARNING:LEADING_SPACE: please, no spaces at the start of a line
#90: FILE: drivers/gpu/drm/i915/gt/intel_lrc.c:656:
+       REG(0x180),$

-:91: WARNING:LEADING_SPACE: please, no spaces at the start of a line
#91: FILE: drivers/gpu/drm/i915/gt/intel_lrc.c:657:
+       REG16(0x2b4),$

-:93: WARNING:LEADING_SPACE: please, no spaces at the start of a line
#93: FILE: drivers/gpu/drm/i915/gt/intel_lrc.c:659:
+       NOP(1),$

-:94: WARNING:LEADING_SPACE: please, no spaces at the start of a line
#94: FILE: drivers/gpu/drm/i915/gt/intel_lrc.c:660:
+       LRI(9, POSTED),$

-:95: WARNING:LEADING_SPACE: please, no spaces at the start of a line
#95: FILE: drivers/gpu/drm/i915/gt/intel_lrc.c:661:
+       REG16(0x3a8),$

-:96: WARNING:LEADING_SPACE: please, no spaces at the start of a line
#96: FILE: drivers/gpu/drm/i915/gt/intel_lrc.c:662:
+       REG16(0x28c),$

-:97: WARNING:LEADING_SPACE: please, no spaces at the start of a line
#97: FILE: drivers/gpu/drm/i915/gt/intel_lrc.c:663:
+       REG16(0x288),$

-:98: WARNING:LEADING_SPACE: please, no spaces at the start of a line
#98: FILE: drivers/gpu/drm/i915/gt/intel_lrc.c:664:
+       REG16(0x284),$

-:99: WARNING:LEADING_SPACE: please, no spaces at the start of a line
#99: FILE: drivers/gpu/drm/i915/gt/intel_lrc.c:665:
+       REG16(0x280),$

-:100: WARNING:LEADING_SPACE: please, no spaces at the start of a line
#100: FILE: drivers/gpu/drm/i915/gt/intel_lrc.c:666:
+       REG16(0x27c),$

-:101: WARNING:LEADING_SPACE: please, no spaces at the start of a line
#101: FILE: drivers/gpu/drm/i915/gt/intel_lrc.c:667:
+       REG16(0x278),$

-:102: WARNING:LEADING_SPACE: please, no spaces at the start of a line
#102: FILE: drivers/gpu/drm/i915/gt/intel_lrc.c:668:
+       REG16(0x274),$

-:103: WARNING:LEADING_SPACE: please, no spaces at the start of a line
#103: FILE: drivers/gpu/drm/i915/gt/intel_lrc.c:669:
+       REG16(0x270),$

-:105: WARNING:LEADING_SPACE: please, no spaces at the start of a line
#105: FILE: drivers/gpu/drm/i915/gt/intel_lrc.c:671:
+       NOP(2),$

-:106: WARNING:LEADING_SPACE: please, no spaces at the start of a line
#106: FILE: drivers/gpu/drm/i915/gt/intel_lrc.c:672:
+       LRI(2, POSTED),$

-:107: WARNING:LEADING_SPACE: please, no spaces at the start of a line
#107: FILE: drivers/gpu/drm/i915/gt/intel_lrc.c:673:
+       REG16(0x5a8),$

-:108: WARNING:LEADING_SPACE: please, no spaces at the start of a line
#108: FILE: drivers/gpu/drm/i915/gt/intel_lrc.c:674:
+       REG16(0x5ac),$

-:110: WARNING:LEADING_SPACE: please, no spaces at the start of a line
#110: FILE: drivers/gpu/drm/i915/gt/intel_lrc.c:676:
+       NOP(6),$

-:111: WARNING:LEADING_SPACE: please, no spaces at the start of a line
#111: FILE: drivers/gpu/drm/i915/gt/intel_lrc.c:677:
+       LRI(1, 0),$

-:112: WARNING:LEADING_SPACE: please, no spaces at the start of a line
#112: FILE: drivers/gpu/drm/i915/gt/intel_lrc.c:678:
+       REG(0x0c8),$

-:114: WARNING:LEADING_SPACE: please, no spaces at the start of a line
#114: FILE: drivers/gpu/drm/i915/gt/intel_lrc.c:680:
+       END$

total: 0 errors, 34 warnings, 0 checks, 106 lines checked
fba4159ca78c drm/i915/mtl: Update MBUS_DBOX credits
0e112a5fe4bf drm/i915/mtl: Update CHICKEN_TRANS* register addresses


