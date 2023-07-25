Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 35E187604C0
	for <lists+intel-gfx@lfdr.de>; Tue, 25 Jul 2023 03:36:04 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 38E0110E0B4;
	Tue, 25 Jul 2023 01:36:02 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTP id 9EDF710E0B4;
 Tue, 25 Jul 2023 01:35:59 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id 97CDAA882E;
 Tue, 25 Jul 2023 01:35:59 +0000 (UTC)
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Andi Shyti" <andi.shyti@linux.intel.com>
Date: Tue, 25 Jul 2023 01:35:59 -0000
Message-ID: <169024895959.27663.4403737551117235410@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20230725001950.1014671-1-andi.shyti@linux.intel.com>
In-Reply-To: <20230725001950.1014671-1-andi.shyti@linux.intel.com>
Subject: [Intel-gfx] =?utf-8?b?4pyXIEZpLkNJLkNIRUNLUEFUQ0g6IHdhcm5pbmcg?=
 =?utf-8?q?for_Update_AUX_invalidation_sequence_=28rev10=29?=
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

Series: Update AUX invalidation sequence (rev10)
URL   : https://patchwork.freedesktop.org/series/119798/
State : warning

== Summary ==

Error: dim checkpatch failed
59590392342a drm/i915/gt: Cleanup aux invalidation registers
0baf93afa6f5 drm/i915: Add the gen12_needs_ccs_aux_inv helper
ffdd3468c8ff drm/i915/gt: Ensure memory quiesced before invalidation
231ca818af6b drm/i915/gt: Rename flags with bit_group_X according to the datasheet
5fac396dfbc1 drm/i915/gt: Enable the CCS_FLUSH bit in the pipe control and in the CS
-:15: WARNING:COMMIT_LOG_LONG_LINE: Possible unwrapped commit description (prefer a maximum 75 chars per line)
#15: 
Requires: 8da173db894a ("drm/i915/gt: Rename flags with bit_group_X according to the datasheet")

-:61: CHECK:SPACING: spaces preferred around that '<<' (ctx:VxV)
#61: FILE: drivers/gpu/drm/i915/gt/intel_gpu_commands.h:302:
+#define   PIPE_CONTROL_CCS_FLUSH			(1<<13) /* MTL+ */
                                 			  ^

total: 0 errors, 1 warnings, 1 checks, 30 lines checked
7655a9a6a81a drm/i915/gt: Poll aux invalidation register bit on invalidation
acc9a3170447 drm/i915/gt: Support aux invalidation on all engines


