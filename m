Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 8A95575B9A5
	for <lists+intel-gfx@lfdr.de>; Thu, 20 Jul 2023 23:37:30 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 9D53310E19A;
	Thu, 20 Jul 2023 21:37:27 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTP id 86FD510E19A;
 Thu, 20 Jul 2023 21:37:26 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id 80EC5A7DFB;
 Thu, 20 Jul 2023 21:37:26 +0000 (UTC)
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Andi Shyti" <andi.shyti@linux.intel.com>
Date: Thu, 20 Jul 2023 21:37:26 -0000
Message-ID: <168988904649.20750.8779575372789567265@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20230720210737.761400-1-andi.shyti@linux.intel.com>
In-Reply-To: <20230720210737.761400-1-andi.shyti@linux.intel.com>
Subject: [Intel-gfx] =?utf-8?b?4pyXIEZpLkNJLkNIRUNLUEFUQ0g6IHdhcm5pbmcg?=
 =?utf-8?q?for_Update_AUX_invalidation_sequence_=28rev8=29?=
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

Series: Update AUX invalidation sequence (rev8)
URL   : https://patchwork.freedesktop.org/series/119798/
State : warning

== Summary ==

Error: dim checkpatch failed
696c6b239a71 drm/i915/gt: Cleanup aux invalidation registers
ba3873d2802a drm/i915: Add the has_aux_ccs device property
8cc2211308ad drm/i915/gt: Ensure memory quiesced before invalidation
d1b12d76fbff drm/i915/gt: Rename flags with bit_group_X according to the datasheet
54b2cec88008 drm/i915/gt: Enable the CCS_FLUSH bit in the pipe control
-:42: CHECK:SPACING: spaces preferred around that '<<' (ctx:VxV)
#42: FILE: drivers/gpu/drm/i915/gt/intel_gpu_commands.h:302:
+#define   PIPE_CONTROL_CCS_FLUSH			(1<<13) /* MTL+ */
                                 			  ^

total: 0 errors, 0 warnings, 1 checks, 20 lines checked
7778886ca085 drm/i915/gt: Refactor intel_emit_pipe_control_cs() in a single function
920a67fa76d2 drm/i915/gt: Ensure memory quiesced before invalidation for all engines
-:7: WARNING:UNKNOWN_COMMIT_ID: Unknown commit id 'af9e423a8aae', maybe rebased or not pulled?
#7: 
Commit af9e423a8aae ("drm/i915/gt: Ensure memory quiesced before

total: 0 errors, 1 warnings, 0 checks, 51 lines checked
c9cabd4ec887 drm/i915/gt: Poll aux invalidation register bit on invalidation
854ed4a400db drm/i915/gt: Support aux invalidation on all engines


