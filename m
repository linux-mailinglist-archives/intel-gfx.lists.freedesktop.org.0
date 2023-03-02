Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 500FB6A84CF
	for <lists+intel-gfx@lfdr.de>; Thu,  2 Mar 2023 16:03:04 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id B14EA10E0C8;
	Thu,  2 Mar 2023 15:03:02 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTP id C38DB10E0C8;
 Thu,  2 Mar 2023 15:03:00 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id BC7D1A00CC;
 Thu,  2 Mar 2023 15:03:00 +0000 (UTC)
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Cavitt, Jonathan" <jonathan.cavitt@intel.com>
Date: Thu, 02 Mar 2023 15:03:00 -0000
Message-ID: <167776938076.20549.2154042634487230352@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20230227171920.2438319-1-jonathan.cavitt@intel.com>
In-Reply-To: <20230227171920.2438319-1-jonathan.cavitt@intel.com>
Subject: [Intel-gfx] =?utf-8?b?4pyXIEZpLkNJLkNIRUNLUEFUQ0g6IHdhcm5pbmcg?=
 =?utf-8?q?for_series_starting_with_=5Bv5=2C1/2=5D_drm/i915=3A_Migrate_pla?=
 =?utf-8?q?tform-dependent_mock_hugepage_selftests_to_live_=28rev2=29?=
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

Series: series starting with [v5,1/2] drm/i915: Migrate platform-dependent mock hugepage selftests to live (rev2)
URL   : https://patchwork.freedesktop.org/series/114432/
State : warning

== Summary ==

Error: dim checkpatch failed
bf643697763a drm/i915: Migrate platform-dependent mock hugepage selftests to live
-:7: WARNING:COMMIT_LOG_LONG_LINE: Possible unwrapped commit description (prefer a maximum 75 chars per line)
#7: 
Convert the igt_mock_ppgtt_huge_fill and igt_mock_ppgtt_64K mock selftests into

total: 0 errors, 1 warnings, 0 checks, 58 lines checked
37dbdbff3204 drm/i915: Use correct huge page manager for MTL
-:6: WARNING:COMMIT_LOG_LONG_LINE: Possible unwrapped commit description (prefer a maximum 75 chars per line)
#6: 
MTL currently uses gen8_ppgtt_insert_huge when managing huge pages.  This is because

total: 0 errors, 1 warnings, 0 checks, 15 lines checked


