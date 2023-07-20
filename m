Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 51DBB75B618
	for <lists+intel-gfx@lfdr.de>; Thu, 20 Jul 2023 20:04:52 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id C971E10E1A8;
	Thu, 20 Jul 2023 18:04:48 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTP id 3B83F10E170;
 Thu, 20 Jul 2023 18:04:46 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id 35A41AA01E;
 Thu, 20 Jul 2023 18:04:46 +0000 (UTC)
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Andi Shyti" <andi.shyti@linux.intel.com>
Date: Thu, 20 Jul 2023 18:04:46 -0000
Message-ID: <168987628619.20753.6861671634983679527@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20230720164454.757075-1-andi.shyti@linux.intel.com>
In-Reply-To: <20230720164454.757075-1-andi.shyti@linux.intel.com>
Subject: [Intel-gfx] =?utf-8?b?4pyXIEZpLkNJLkNIRUNLUEFUQ0g6IHdhcm5pbmcg?=
 =?utf-8?q?for_Update_AUX_invalidation_sequence_=28rev7=29?=
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

Series: Update AUX invalidation sequence (rev7)
URL   : https://patchwork.freedesktop.org/series/119798/
State : warning

== Summary ==

Error: dim checkpatch failed
340830609d2b drm/i915/gt: Cleanup aux invalidation registers
5999b07cb5c4 drm/i915: Add the has_aux_ccs device property
38a4e26e5db5 drm/i915/gt: Ensure memory quiesced before invalidation
c65da5ab7d41 drm/i915/gt: Rename flags with bit_group_X according to the datasheet
e2ea44c109c1 drm/i915/gt: Refactor intel_emit_pipe_control_cs() in a single function
fe1a4250b533 drm/i915/gt: Ensure memory quiesced before invalidation for all engines
-:7: WARNING:UNKNOWN_COMMIT_ID: Unknown commit id 'af9e423a8aae', maybe rebased or not pulled?
#7: 
Commit af9e423a8aae ("drm/i915/gt: Ensure memory quiesced before

total: 0 errors, 1 warnings, 0 checks, 55 lines checked
e45ab12c8520 drm/i915/gt: Enable the CCS_FLUSH bit in the pipe control
-:96: CHECK:SPACING: spaces preferred around that '<<' (ctx:VxV)
#96: FILE: drivers/gpu/drm/i915/gt/intel_gpu_commands.h:302:
+#define   PIPE_CONTROL_CCS_FLUSH			(1<<13) /* MTL+ */
                                 			  ^

total: 0 errors, 0 warnings, 1 checks, 69 lines checked
2c1334aac310 drm/i915/gt: Poll aux invalidation register bit on invalidation
f316791f8e87 drm/i915/gt: Support aux invalidation on all engines


