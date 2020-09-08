Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id B7B3D2612BE
	for <lists+intel-gfx@lfdr.de>; Tue,  8 Sep 2020 16:31:55 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 210556E845;
	Tue,  8 Sep 2020 14:31:54 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTP id 7AEF76E845;
 Tue,  8 Sep 2020 14:31:53 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id 725B1A47EA;
 Tue,  8 Sep 2020 14:31:53 +0000 (UTC)
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Alejandro Sior" <aho@sior.be>
Date: Tue, 08 Sep 2020 14:31:53 -0000
Message-ID: <159957551344.21758.12286209079270405027@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20200908103226.27616-1-aho@sior.be>
In-Reply-To: <20200908103226.27616-1-aho@sior.be>
Subject: [Intel-gfx] =?utf-8?b?4pyXIEZpLkNJLkNIRUNLUEFUQ0g6IHdhcm5pbmcg?=
 =?utf-8?q?for_Fixed_NULL_pointer_dereference_in_handle=5Fedid_functions_f?=
 =?utf-8?q?or_GPUs_that_do_not_support_EDID?=
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

Series: Fixed NULL pointer dereference in handle_edid functions for GPUs that do not support EDID
URL   : https://patchwork.freedesktop.org/series/81463/
State : warning

== Summary ==

$ dim checkpatch origin/drm-tip
24f0f91b0b97 Fixed NULL pointer dereference in handle_edid functions for GPUs that do not support EDID
-:7: WARNING:COMMIT_LOG_LONG_LINE: Possible unwrapped commit description (prefer a maximum 75 chars per line)
#7: 
In the function intel_vgpu_reg_rw_edid of gvt/kvmgt.c, pos can get equal to NULL for GPUs that do not

-:42: CHECK:COMPARISON_TO_NULL: Comparison to NULL could be written "!pos"
#42: FILE: drivers/gpu/drm/i915/gvt/kvmgt.c:560:
+	if (pos == NULL) {

-:47: WARNING:NO_AUTHOR_SIGN_OFF: Missing Signed-off-by: line by nominal patch author 'Alejandro Sior <aho@sior.be>'

total: 0 errors, 2 warnings, 1 checks, 10 lines checked


_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
