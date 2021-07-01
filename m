Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 2B8933B98E6
	for <lists+intel-gfx@lfdr.de>; Fri,  2 Jul 2021 01:20:22 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 52EA66EC72;
	Thu,  1 Jul 2021 23:20:19 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [IPv6:2610:10:20:722:a800:ff:feee:56cf])
 by gabe.freedesktop.org (Postfix) with ESMTP id 0D6286EC71;
 Thu,  1 Jul 2021 23:20:19 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id F1FBFA41FB;
 Thu,  1 Jul 2021 23:20:18 +0000 (UTC)
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Matthew Brost" <matthew.brost@intel.com>
Date: Thu, 01 Jul 2021 23:20:18 -0000
Message-ID: <162518161896.15053.13689223281310080568@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20210701171550.49353-1-matthew.brost@intel.com>
In-Reply-To: <20210701171550.49353-1-matthew.brost@intel.com>
Subject: [Intel-gfx] =?utf-8?b?4pyXIEZpLkNJLkNIRUNLUEFUQ0g6IHdhcm5pbmcg?=
 =?utf-8?q?for_CT_changes_required_for_GuC_submission_=28rev2=29?=
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

Series: CT changes required for GuC submission (rev2)
URL   : https://patchwork.freedesktop.org/series/91943/
State : warning

== Summary ==

$ dim checkpatch origin/drm-tip
1bcca481ebc1 drm/i915/guc: Relax CTB response timeout
ee04968a1998 drm/i915/guc: Improve error message for unsolicited CT response
8cab0a3b4751 drm/i915/guc: Increase size of CTB buffers
239769e0c636 drm/i915/guc: Add non blocking CTB send function
2668763f4f82 drm/i915/guc: Add stall timer to non blocking CTB send function
5e72f3dc91ad drm/i915/guc: Optimize CTB writes and reads
b25f638c19a5 drm/i915/guc: Module load failure test for CT buffer creation
-:38: WARNING:FROM_SIGN_OFF_MISMATCH: From:/Signed-off-by: email address mismatch: 'From: John Harrison <John.C.Harrison@Intel.com>' != 'Signed-off-by: John Harrison <john.c.harrison@intel.com>'

total: 0 errors, 1 warnings, 0 checks, 20 lines checked


_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
