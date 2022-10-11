Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 5BA2F5FAB66
	for <lists+intel-gfx@lfdr.de>; Tue, 11 Oct 2022 05:48:04 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id C9CE510E79E;
	Tue, 11 Oct 2022 03:48:01 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTP id C1DEA10E79C;
 Tue, 11 Oct 2022 03:47:56 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id 82BDDAADD4;
 Tue, 11 Oct 2022 03:47:56 +0000 (UTC)
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Ashutosh Dixit" <ashutosh.dixit@intel.com>
Date: Tue, 11 Oct 2022 03:47:56 -0000
Message-ID: <166546007653.5542.15034940905169307260@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <cover.1665458639.git.ashutosh.dixit@intel.com>
In-Reply-To: <cover.1665458639.git.ashutosh.dixit@intel.com>
Subject: [Intel-gfx] =?utf-8?b?4pyXIEZpLkNJLkNIRUNLUEFUQ0g6IHdhcm5pbmcg?=
 =?utf-8?q?for_Firm_up_gt_park/unpark?=
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

Series: Firm up gt park/unpark
URL   : https://patchwork.freedesktop.org/series/109563/
State : warning

== Summary ==

Error: dim checkpatch failed
965f7dcab4c4 drm/i915/gt: Don't do display work on platforms without display
bced71f23cb7 drm/i915/gt: Warn if not in RC6 when GT is parked
-:56: CHECK:CAMELCASE: Avoid CamelCase: <GEN6_RCn_MASK>
#56: FILE: drivers/gpu/drm/i915/gt/intel_rc6.c:678:
+				& GEN6_RCn_MASK;

total: 0 errors, 0 warnings, 1 checks, 46 lines checked


