Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 2023541E50E
	for <lists+intel-gfx@lfdr.de>; Fri,  1 Oct 2021 01:40:46 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 6CB026E4AF;
	Thu, 30 Sep 2021 23:40:43 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [IPv6:2610:10:20:722:a800:ff:feee:56cf])
 by gabe.freedesktop.org (Postfix) with ESMTP id 815B56E4AE;
 Thu, 30 Sep 2021 23:40:42 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id 78FA2AA0ED;
 Thu, 30 Sep 2021 23:40:42 +0000 (UTC)
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Andi Shyti" <andi@etezian.org>
Cc: intel-gfx@lists.freedesktop.org
Date: Thu, 30 Sep 2021 23:40:42 -0000
Message-ID: <163304524246.18253.3247850415064617410@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20210930231117.2462-1-andi.shyti@intel.com>
In-Reply-To: <20210930231117.2462-1-andi.shyti@intel.com>
Subject: [Intel-gfx] =?utf-8?b?4pyXIEZpLkNJLkNIRUNLUEFUQ0g6IHdhcm5pbmcg?=
 =?utf-8?q?for_drm/i915/gt=3A_move_remaining_debugfs_interfaces_into_gt_?=
 =?utf-8?b?KHJldjcp?=
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
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

== Series Details ==

Series: drm/i915/gt: move remaining debugfs interfaces into gt (rev7)
URL   : https://patchwork.freedesktop.org/series/75333/
State : warning

== Summary ==

$ dim checkpatch origin/drm-tip
8fdbaf0abd82 drm/i915/gt: move remaining debugfs interfaces into gt
-:112: WARNING:FILE_PATH_CHANGES: added, moved or deleted file(s), does MAINTAINERS need updating?
#112: 
new file mode 100644

-:245: CHECK:PARENTHESIS_ALIGNMENT: Alignment should match open parenthesis
#245: FILE: drivers/gpu/drm/i915/gt/intel_gt_irq_debugfs.c:129:
+				   intel_uncore_read(uncore,
+						GEN12_VCS4_VCS5_INTR_MASK));

-:249: CHECK:PARENTHESIS_ALIGNMENT: Alignment should match open parenthesis
#249: FILE: drivers/gpu/drm/i915/gt/intel_gt_irq_debugfs.c:133:
+				   intel_uncore_read(uncore,
+						GEN12_VCS6_VCS7_INTR_MASK));

-:258: CHECK:PARENTHESIS_ALIGNMENT: Alignment should match open parenthesis
#258: FILE: drivers/gpu/drm/i915/gt/intel_gt_irq_debugfs.c:142:
+				   intel_uncore_read(uncore,
+						GEN12_VECS2_VECS3_INTR_MASK));

total: 0 errors, 1 warnings, 3 checks, 404 lines checked


