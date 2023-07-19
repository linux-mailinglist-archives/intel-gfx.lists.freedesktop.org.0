Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 9FBAD759683
	for <lists+intel-gfx@lfdr.de>; Wed, 19 Jul 2023 15:22:08 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id E3A3210E4A5;
	Wed, 19 Jul 2023 13:22:06 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [IPv6:2610:10:20:722:a800:ff:feee:56cf])
 by gabe.freedesktop.org (Postfix) with ESMTP id D8A7D10E4A5;
 Wed, 19 Jul 2023 13:22:05 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id D32C7AADED;
 Wed, 19 Jul 2023 13:22:05 +0000 (UTC)
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Andi Shyti" <andi.shyti@linux.intel.com>
Date: Wed, 19 Jul 2023 13:22:05 -0000
Message-ID: <168977292586.20706.4379259924664520925@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20230719110729.618733-1-andi.shyti@linux.intel.com>
In-Reply-To: <20230719110729.618733-1-andi.shyti@linux.intel.com>
Subject: [Intel-gfx] =?utf-8?b?4pyXIEZpLkNJLkNIRUNLUEFUQ0g6IHdhcm5pbmcg?=
 =?utf-8?q?for_Update_AUX_invalidation_sequence_=28rev6=29?=
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

Series: Update AUX invalidation sequence (rev6)
URL   : https://patchwork.freedesktop.org/series/119798/
State : warning

== Summary ==

Error: dim checkpatch failed
501b25e131de drm/i915/gt: Cleanup aux invalidation registers
cab2ff5e8756 drm/i915: Add the has_aux_ccs device property
c54e5451aae4 drm/i915/gt: Ensure memory quiesced before invalidation
31111baa71f7 drm/i915/gt: Rename flags with bit_group_X according to the datasheet
1d8b8df24587 drm/i915/gt: Refactor intel_emit_pipe_control_cs() in a single function
0f83979646a5 drm/i915/gt: Ensure memory quiesced before invalidation for all engines
-:7: WARNING:UNKNOWN_COMMIT_ID: Unknown commit id 'af9e423a8aae', maybe rebased or not pulled?
#7: 
Commit af9e423a8aae ("drm/i915/gt: Ensure memory quiesced before

total: 0 errors, 1 warnings, 0 checks, 55 lines checked
2abb52658921 drm/i915/gt: Enable the CCS_FLUSH bit in the pipe control
-:96: CHECK:SPACING: spaces preferred around that '<<' (ctx:VxV)
#96: FILE: drivers/gpu/drm/i915/gt/intel_gpu_commands.h:302:
+#define   PIPE_CONTROL_CCS_FLUSH			(1<<13) /* MTL+ */
                                 			  ^

total: 0 errors, 0 warnings, 1 checks, 69 lines checked
301ff494c698 drm/i915/gt: Poll aux invalidation register bit on invalidation
6f4e09301e17 drm/i915/gt: Support aux invalidation on all engines


