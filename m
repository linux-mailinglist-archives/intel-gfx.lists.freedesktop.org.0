Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id C543348DE15
	for <lists+intel-gfx@lfdr.de>; Thu, 13 Jan 2022 20:17:39 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id EBB0F10E288;
	Thu, 13 Jan 2022 19:17:37 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [IPv6:2610:10:20:722:a800:ff:feee:56cf])
 by gabe.freedesktop.org (Postfix) with ESMTP id 8E3E910E288;
 Thu, 13 Jan 2022 19:17:36 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id 8F649A008A;
 Thu, 13 Jan 2022 19:17:36 +0000 (UTC)
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Matthew Brost" <matthew.brost@intel.com>
Date: Thu, 13 Jan 2022 19:17:36 -0000
Message-ID: <164210145658.19001.4981556650007477015@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20220113181351.21296-1-matthew.brost@intel.com>
In-Reply-To: <20220113181351.21296-1-matthew.brost@intel.com>
Subject: [Intel-gfx] =?utf-8?b?4pyXIEZpLkNJLkNIRUNLUEFUQ0g6IHdhcm5pbmcg?=
 =?utf-8?q?for_Remove_some_hacks_required_for_GuC_62=2E0=2E0_=28rev2=29?=
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

Series: Remove some hacks required for GuC 62.0.0 (rev2)
URL   : https://patchwork.freedesktop.org/series/98773/
State : warning

== Summary ==

$ dim checkpatch origin/drm-tip
0bbf21e5b612 drm/i915/selftests: Add a cancel request selftest that triggers a reset
6c1f06c0b615 drm/i915/guc: Remove hacks for reset and schedule disable G2H being received out of order
-:14: WARNING:TYPO_SPELLING: 'cancelation' may be misspelled - perhaps 'cancellation'?
#14: 
  - s/cancelation/cancellation
      ^^^^^^^^^^^

total: 0 errors, 1 warnings, 0 checks, 63 lines checked


