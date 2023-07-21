Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 46A8175D107
	for <lists+intel-gfx@lfdr.de>; Fri, 21 Jul 2023 20:04:50 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id AF9E210E6DF;
	Fri, 21 Jul 2023 18:04:47 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [IPv6:2610:10:20:722:a800:ff:feee:56cf])
 by gabe.freedesktop.org (Postfix) with ESMTP id 3C23810E6DF;
 Fri, 21 Jul 2023 18:04:46 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id 3858DA00E6;
 Fri, 21 Jul 2023 18:04:46 +0000 (UTC)
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Andi Shyti" <andi.shyti@linux.intel.com>
Date: Fri, 21 Jul 2023 18:04:46 -0000
Message-ID: <168996268622.22547.8722724298638699490@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20230721161514.818895-1-andi.shyti@linux.intel.com>
In-Reply-To: <20230721161514.818895-1-andi.shyti@linux.intel.com>
Subject: [Intel-gfx] =?utf-8?b?4pyXIEZpLkNJLkNIRUNLUEFUQ0g6IHdhcm5pbmcg?=
 =?utf-8?q?for_Update_AUX_invalidation_sequence_=28rev9=29?=
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

Series: Update AUX invalidation sequence (rev9)
URL   : https://patchwork.freedesktop.org/series/119798/
State : warning

== Summary ==

Error: dim checkpatch failed
ab141e3c4e99 drm/i915/gt: Cleanup aux invalidation registers
4a7a6c513e10 drm/i915: Add the gen12_needs_ccs_aux_inv helper
db67d0fd13ac drm/i915/gt: Ensure memory quiesced before invalidation
a84de84490f6 drm/i915/gt: Rename flags with bit_group_X according to the datasheet
4aedc9da08c8 drm/i915/gt: Enable the CCS_FLUSH bit in the pipe control
-:42: CHECK:SPACING: spaces preferred around that '<<' (ctx:VxV)
#42: FILE: drivers/gpu/drm/i915/gt/intel_gpu_commands.h:302:
+#define   PIPE_CONTROL_CCS_FLUSH			(1<<13) /* MTL+ */
                                 			  ^

total: 0 errors, 0 warnings, 1 checks, 20 lines checked
e4bb89cf0d46 drm/i915/gt: Refactor intel_emit_pipe_control_cs() in a single function
7aa349b212e8 drm/i915/gt: Ensure memory quiesced before invalidation for all engines
-:7: WARNING:UNKNOWN_COMMIT_ID: Unknown commit id 'af9e423a8aae', maybe rebased or not pulled?
#7: 
Commit af9e423a8aae ("drm/i915/gt: Ensure memory quiesced before

total: 0 errors, 1 warnings, 0 checks, 51 lines checked
9b21fb43f426 drm/i915/gt: Poll aux invalidation register bit on invalidation
2c1f9af59e89 drm/i915/gt: Support aux invalidation on all engines


