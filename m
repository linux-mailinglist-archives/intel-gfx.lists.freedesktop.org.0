Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 812C2AD1DF1
	for <lists+intel-gfx@lfdr.de>; Mon,  9 Jun 2025 14:38:50 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 179A810E0A9;
	Mon,  9 Jun 2025 12:38:49 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from 1538d3639d33 (emeril.freedesktop.org [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTPS id B412410E0EE;
 Mon,  9 Jun 2025 12:38:47 +0000 (UTC)
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Subject: =?utf-8?q?=E2=9C=97_Fi=2ECI=2ECHECKPATCH=3A_warning_for_Fixing_some_dma-fenc?=
 =?utf-8?q?e_use-after-free?=
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Tvrtko Ursulin" <tvrtko.ursulin@igalia.com>
Cc: intel-gfx@lists.freedesktop.org
Date: Mon, 09 Jun 2025 12:38:47 -0000
Message-ID: <174947272773.59982.1502856513046207852@1538d3639d33>
X-Patchwork-Hint: ignore
References: <20250609110330.74705-1-tvrtko.ursulin@igalia.com>
In-Reply-To: <20250609110330.74705-1-tvrtko.ursulin@igalia.com>
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
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

== Series Details ==

Series: Fixing some dma-fence use-after-free
URL   : https://patchwork.freedesktop.org/series/149981/
State : warning

== Summary ==

Error: dim checkpatch failed
116ae7c27da6 dma-fence: Add safe access helpers and document the rules
-:18: WARNING:TYPO_SPELLING: 'contraints' may be misspelled - perhaps 'constraints'?
#18: 
contraints and adds helpers which a) drivers with potential to suffer from
^^^^^^^^^^

-:238: CHECK:PARENTHESIS_ALIGNMENT: Alignment should match open parenthesis
#238: FILE: include/trace/events/dma_fence.h:43:
+DECLARE_EVENT_CLASS(dma_fence_unsignaled,
+

-:243: CHECK:OPEN_ENDED_LINE: Lines should not end with a '('
#243: FILE: include/trace/events/dma_fence.h:48:
+	TP_STRUCT__entry(

-:250: CHECK:OPEN_ENDED_LINE: Lines should not end with a '('
#250: FILE: include/trace/events/dma_fence.h:55:
+	TP_fast_assign(

-:263: CHECK:PARENTHESIS_ALIGNMENT: Alignment should match open parenthesis
#263: FILE: include/trace/events/dma_fence.h:68:
+DEFINE_EVENT(dma_fence_unsignaled, dma_fence_emit,
 

-:271: CHECK:PARENTHESIS_ALIGNMENT: Alignment should match open parenthesis
#271: FILE: include/trace/events/dma_fence.h:75:
+DEFINE_EVENT(dma_fence_unsignaled, dma_fence_init,
 

-:280: CHECK:PARENTHESIS_ALIGNMENT: Alignment should match open parenthesis
#280: FILE: include/trace/events/dma_fence.h:89:
+DEFINE_EVENT(dma_fence_unsignaled, dma_fence_enable_signal,
 

-:288: CHECK:PARENTHESIS_ALIGNMENT: Alignment should match open parenthesis
#288: FILE: include/trace/events/dma_fence.h:96:
+DEFINE_EVENT(dma_fence_unsignaled, dma_fence_signaled,
 

total: 0 errors, 1 warnings, 7 checks, 223 lines checked
c1ea61eb4fbd sync_file: Protect access to driver and timeline name
61a002f8e43f drm/i915: Protect access to driver and timeline name
8dcbcf54f202 drm/xe: Make dma-fences compliant with the safe access rules


