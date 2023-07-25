Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 2C1EF76270A
	for <lists+intel-gfx@lfdr.de>; Wed, 26 Jul 2023 00:51:50 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 99BBA10E1BD;
	Tue, 25 Jul 2023 22:51:47 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [IPv6:2610:10:20:722:a800:ff:feee:56cf])
 by gabe.freedesktop.org (Postfix) with ESMTP id EB78C10E1BD;
 Tue, 25 Jul 2023 22:51:44 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id CF15EA882E;
 Tue, 25 Jul 2023 22:51:44 +0000 (UTC)
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Andi Shyti" <andi.shyti@linux.intel.com>
Date: Tue, 25 Jul 2023 22:51:44 -0000
Message-ID: <169032550482.27667.9715351597752337412@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20230725001950.1014671-1-andi.shyti@linux.intel.com>
In-Reply-To: <20230725001950.1014671-1-andi.shyti@linux.intel.com>
Subject: [Intel-gfx] =?utf-8?b?4pyXIEZpLkNJLkNIRUNLUEFUQ0g6IHdhcm5pbmcg?=
 =?utf-8?q?for_Update_AUX_invalidation_sequence_=28rev12=29?=
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

Series: Update AUX invalidation sequence (rev12)
URL   : https://patchwork.freedesktop.org/series/119798/
State : warning

== Summary ==

Error: dim checkpatch failed
94aa9fabe7a4 drm/i915/gt: Cleanup aux invalidation registers
ff01e99c38e6 drm/i915: Add the gen12_needs_ccs_aux_inv helper
5e33bc7dd30e drm/i915/gt: Ensure memory quiesced before invalidation
7f9e02563fbd drm/i915/gt: Rename flags with bit_group_X according to the datasheet
1c118e195107 drm/i915/gt: Enable the CCS_FLUSH bit in the pipe control and in the CS
-:15: WARNING:COMMIT_LOG_LONG_LINE: Possible unwrapped commit description (prefer a maximum 75 chars per line)
#15: 
Requires: 8da173db894a ("drm/i915/gt: Rename flags with bit_group_X according to the datasheet")

-:61: CHECK:SPACING: spaces preferred around that '<<' (ctx:VxV)
#61: FILE: drivers/gpu/drm/i915/gt/intel_gpu_commands.h:302:
+#define   PIPE_CONTROL_CCS_FLUSH			(1<<13) /* MTL+ */
                                 			  ^

total: 0 errors, 1 warnings, 1 checks, 30 lines checked
fbe7c0f746d6 drm/i915/gt: Poll aux invalidation register bit on invalidation
fdead80a3782 drm/i915/gt: Support aux invalidation on all engines


