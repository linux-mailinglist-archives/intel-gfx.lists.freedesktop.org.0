Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 1CF5254C49C
	for <lists+intel-gfx@lfdr.de>; Wed, 15 Jun 2022 11:26:56 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 9568C10F2DF;
	Wed, 15 Jun 2022 09:26:53 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTP id A254110F2DF;
 Wed, 15 Jun 2022 09:26:51 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id 9329DA0BCB;
 Wed, 15 Jun 2022 09:26:51 +0000 (UTC)
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
From: Patchwork <patchwork@emeril.freedesktop.org>
To: priyanka.dandamudi@intel.com
Date: Wed, 15 Jun 2022 09:26:51 -0000
Message-ID: <165528521156.14603.15239618271421807743@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20220615054306.1175736-1-priyanka.dandamudi@intel.com>
In-Reply-To: <20220615054306.1175736-1-priyanka.dandamudi@intel.com>
Subject: [Intel-gfx] =?utf-8?b?4pyXIEZpLkNJLkNIRUNLUEFUQ0g6IHdhcm5pbmcg?=
 =?utf-8?q?for_Add_support_for_LMEM_PCIe_resizable_bar?=
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

Series: Add support for LMEM PCIe resizable bar
URL   : https://patchwork.freedesktop.org/series/105142/
State : warning

== Summary ==

Error: dim checkpatch failed
a4fabe36823d drm/i915: Add support for LMEM PCIe resizable bar
-:110: CHECK:PARENTHESIS_ALIGNMENT: Alignment should match open parenthesis
#110: FILE: drivers/gpu/drm/i915/i915_driver.c:383:
+		if (root_res &&
+				root_res->flags & (IORESOURCE_MEM | IORESOURCE_MEM_64) &&

-:118: CHECK:PARENTHESIS_ALIGNMENT: Alignment should match open parenthesis
#118: FILE: drivers/gpu/drm/i915/i915_driver.c:391:
+		drm_info(&i915->drm,
+				"Can't resize LMEM BAR - platform support is missing\n");

total: 0 errors, 0 warnings, 2 checks, 115 lines checked
17bbf04fb92b drm/i915: Add lmem_bar_size modparam
-:36: CHECK:BRACES: braces {} should be used on all arms of this statement
#36: FILE: drivers/gpu/drm/i915/i915_driver.c:374:
+	if (i915->params.lmem_bar_size > 0) {
[...]
+	} else if (!rebar_size)
[...]

-:52: WARNING:LONG_LINE: line length of 101 exceeds 100 columns
#52: FILE: drivers/gpu/drm/i915/i915_driver.c:390:
+					rebar_size = 1ULL << (__fls(lmem_bar_size) + BAR_SIZE_SHIFT);

total: 0 errors, 1 warnings, 1 checks, 55 lines checked


