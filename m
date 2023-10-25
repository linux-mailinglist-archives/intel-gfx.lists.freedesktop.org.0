Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 588327D60FD
	for <lists+intel-gfx@lfdr.de>; Wed, 25 Oct 2023 07:04:53 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 687B210E54B;
	Wed, 25 Oct 2023 05:04:49 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTP id 925F910E54B;
 Wed, 25 Oct 2023 05:04:46 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id 8BF6BAADF8;
 Wed, 25 Oct 2023 05:04:46 +0000 (UTC)
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Ville Syrjala" <ville.syrjala@linux.intel.com>
Date: Wed, 25 Oct 2023 05:04:46 -0000
Message-ID: <169821028653.20487.7897645175250520225@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20231024175552.15503-1-ville.syrjala@linux.intel.com>
In-Reply-To: <20231024175552.15503-1-ville.syrjala@linux.intel.com>
Subject: [Intel-gfx] =?utf-8?b?4pyXIEZpLkNJLkNIRUNLUEFUQ0g6IHdhcm5pbmcg?=
 =?utf-8?q?for_Drop_some_unnecessary_patches?=
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

Series: Drop some unnecessary patches
URL   : https://patchwork.freedesktop.org/series/125524/
State : warning

== Summary ==

Error: dim checkpatch failed
b3ed6c697207 Revert "freezer: Dump more info on whoever is trying to get frozen with locks held"
24d4bf37ddaa Revert "iommu: Remove iova cpu hotplugging flushing"
-:10: WARNING:COMMIT_LOG_LONG_LINE: Prefer a maximum 75 chars per line (possible unwrapped commit description?)
#10: 
commit 6d03bbff456b ("hwmon: (coretemp) Simplify platform device handling") ?

-:44: CHECK:PARENTHESIS_ALIGNMENT: Alignment should match open parenthesis
#44: FILE: drivers/iommu/iova.c:261:
+		ret = cpuhp_setup_state_multi(CPUHP_IOMMU_IOVA_DEAD, "iommu/iova:dead", NULL,
+					iova_cpuhp_dead);

total: 0 errors, 1 warnings, 1 checks, 76 lines checked


