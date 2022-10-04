Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (unknown [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id C15F65F3A6F
	for <lists+intel-gfx@lfdr.de>; Tue,  4 Oct 2022 02:16:15 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 3D81F10E198;
	Tue,  4 Oct 2022 00:15:53 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [IPv6:2610:10:20:722:a800:ff:feee:56cf])
 by gabe.freedesktop.org (Postfix) with ESMTP id 8377610E198;
 Tue,  4 Oct 2022 00:15:51 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id 7B8ABAADE1;
 Tue,  4 Oct 2022 00:15:51 +0000 (UTC)
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Andrzej Hajda" <andrzej.hajda@intel.com>
Date: Tue, 04 Oct 2022 00:15:51 -0000
Message-ID: <166484255147.14069.665818975613003808@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20221003223258.2650934-1-andrzej.hajda@intel.com>
In-Reply-To: <20221003223258.2650934-1-andrzej.hajda@intel.com>
Subject: [Intel-gfx] =?utf-8?b?4pyXIEZpLkNJLkNIRUNLUEFUQ0g6IHdhcm5pbmcg?=
 =?utf-8?q?for_Simplify_uncore_register_updates?=
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

Series: Simplify uncore register updates
URL   : https://patchwork.freedesktop.org/series/109374/
State : warning

== Summary ==

Error: dim checkpatch failed
d63e09dcd2b6 drm/i915/display: Use drm_device alias if defined
475550c6192c drm/i915/display: Use intel_uncore alias if defined
ec07243351df drm/i915: refactor intel_uncore_rmw
649c2924c3ab drm/i915: use proper helper for register updates
-:351: ERROR:CODE_INDENT: code indent should use tabs where possible
#351: FILE: drivers/gpu/drm/i915/i915_irq.c:3429:
+^I^I         ~enabled_irqs & hotplug_irqs);$

-:351: CHECK:PARENTHESIS_ALIGNMENT: Alignment should match open parenthesis
#351: FILE: drivers/gpu/drm/i915/i915_irq.c:3429:
+	intel_uncore_rmw(&dev_priv->uncore, GEN11_DE_HPD_IMR, hotplug_irqs,
+		         ~enabled_irqs & hotplug_irqs);

-:530: WARNING:LONG_LINE: line length of 119 exceeds 100 columns
#530: FILE: drivers/gpu/drm/i915/intel_pm.c:3490:
+					 results->partitioning == INTEL_DDB_PART_1_2 ? 0 : WM_MISC_DATA_PARTITION_5_6);

-:539: WARNING:LONG_LINE: line length of 116 exceeds 100 columns
#539: FILE: drivers/gpu/drm/i915/intel_pm.c:3493:
+					 results->partitioning == INTEL_DDB_PART_1_2 ? 0 : DISP_DATA_PARTITION_5_6);

total: 1 errors, 2 warnings, 1 checks, 589 lines checked


