Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 95C775B27FE
	for <lists+intel-gfx@lfdr.de>; Thu,  8 Sep 2022 22:56:09 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id E001610E6B3;
	Thu,  8 Sep 2022 20:56:01 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTP id 84FC910E6A7;
 Thu,  8 Sep 2022 20:55:55 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id 7DAF7A00A0;
 Thu,  8 Sep 2022 20:55:55 +0000 (UTC)
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Lucas De Marchi" <lucas.demarchi@intel.com>
Date: Thu, 08 Sep 2022 20:55:55 -0000
Message-ID: <166267055551.27232.10075555088218189582@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20220908-if-ladder-v1-0-9949a713ca08@intel.com>
In-Reply-To: <20220908-if-ladder-v1-0-9949a713ca08@intel.com>
Subject: [Intel-gfx] =?utf-8?b?4pyXIEZpLkNJLkNIRUNLUEFUQ0g6IHdhcm5pbmcg?=
 =?utf-8?q?for_drm/i915=3A_A_couple_of_if/else_ladder_refactors?=
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

Series: drm/i915: A couple of if/else ladder refactors
URL   : https://patchwork.freedesktop.org/series/108315/
State : warning

== Summary ==

Error: dim checkpatch failed
8e2c6bd18bc2 drm/i915: Invert if/else ladder for frequency read
-:120: WARNING:UNNECESSARY_ELSE: else is not generally useful after a break or return
#120: FILE: drivers/gpu/drm/i915/gt/intel_gt_clock_utils.c:139:
+		return f12_5_mhz;
+	} else {

total: 0 errors, 1 warnings, 0 checks, 114 lines checked
bf4f7785d356 drm/i915/gt: Extract per-platform function for frequency read
a7ec6551bb03 drm/i915: Invert if/else ladder for stolen init


