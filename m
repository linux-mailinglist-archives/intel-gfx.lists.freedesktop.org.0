Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id A95D93A8DE3
	for <lists+intel-gfx@lfdr.de>; Wed, 16 Jun 2021 02:55:15 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id B222B6E442;
	Wed, 16 Jun 2021 00:55:13 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [IPv6:2610:10:20:722:a800:ff:feee:56cf])
 by gabe.freedesktop.org (Postfix) with ESMTP id 1ACB36E442;
 Wed, 16 Jun 2021 00:55:12 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id 0E955AA0ED;
 Wed, 16 Jun 2021 00:55:12 +0000 (UTC)
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Matt Roper" <matthew.d.roper@intel.com>
Date: Wed, 16 Jun 2021 00:55:12 -0000
Message-ID: <162380491205.8274.15393140625814453935@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20210616004213.1705079-1-matthew.d.roper@intel.com>
In-Reply-To: <20210616004213.1705079-1-matthew.d.roper@intel.com>
Subject: [Intel-gfx] =?utf-8?b?4pyXIEZpLkNJLkNIRUNLUEFUQ0g6IHdhcm5pbmcg?=
 =?utf-8?q?for_Explicity_steer_l3bank_multicast_reads_when_necessary_=28re?=
 =?utf-8?b?djMp?=
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

Series: Explicity steer l3bank multicast reads when necessary (rev3)
URL   : https://patchwork.freedesktop.org/series/91485/
State : warning

== Summary ==

$ dim checkpatch origin/drm-tip
7ba06b9980dc drm/i915: extract steered reg access to common function
-:90: CHECK:MULTIPLE_ASSIGNMENTS: multiple assignments should be avoided
#90: FILE: drivers/gpu/drm/i915/intel_uncore.c:2296:
+	old_mcr = mcr = intel_uncore_read_fw(uncore, GEN8_MCR_SELECTOR);

total: 0 errors, 0 warnings, 1 checks, 120 lines checked
ca40195a6ea3 drm/i915: Add GT support for multiple types of multicast steering
c48edac9c41e drm/i915: Add support for explicit L3BANK steering


_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
