Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 4C2C8AD401E
	for <lists+intel-gfx@lfdr.de>; Tue, 10 Jun 2025 19:12:40 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id BE7E510E2BC;
	Tue, 10 Jun 2025 17:12:38 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from 1538d3639d33 (emeril.freedesktop.org [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 265A610E0E6;
 Tue, 10 Jun 2025 17:12:37 +0000 (UTC)
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Subject: =?utf-8?q?=E2=9C=97_Fi=2ECI=2ECHECKPATCH=3A_warning_for_Fixing_some_dma-fenc?=
 =?utf-8?q?e_use-after-free?=
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Tvrtko Ursulin" <tvrtko.ursulin@igalia.com>
Cc: intel-gfx@lists.freedesktop.org
Date: Tue, 10 Jun 2025 17:12:37 -0000
Message-ID: <174957555715.65226.13666315540265454606@1538d3639d33>
X-Patchwork-Hint: ignore
References: <20250610164226.10817-1-tvrtko.ursulin@igalia.com>
In-Reply-To: <20250610164226.10817-1-tvrtko.ursulin@igalia.com>
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
URL   : https://patchwork.freedesktop.org/series/150054/
State : warning

== Summary ==

Error: dim checkpatch failed
b2971a952d0f sync_file: Protect access to driver and timeline name
c221eb83e8a3 drm/i915: Protect access to driver and timeline name
3ece214b82e6 dma-fence: Add safe access helpers and document the rules
-:18: WARNING:TYPO_SPELLING: 'contraints' may be misspelled - perhaps 'constraints'?
#18: 
contraints and adds helpers which a) drivers with potential to suffer from
^^^^^^^^^^

-:263: CHECK:PARENTHESIS_ALIGNMENT: Alignment should match open parenthesis
#263: FILE: include/trace/events/dma_fence.h:43:
+DECLARE_EVENT_CLASS(dma_fence_unsignaled,
+

-:268: CHECK:OPEN_ENDED_LINE: Lines should not end with a '('
#268: FILE: include/trace/events/dma_fence.h:48:
+	TP_STRUCT__entry(

-:275: CHECK:OPEN_ENDED_LINE: Lines should not end with a '('
#275: FILE: include/trace/events/dma_fence.h:55:
+	TP_fast_assign(

-:288: CHECK:PARENTHESIS_ALIGNMENT: Alignment should match open parenthesis
#288: FILE: include/trace/events/dma_fence.h:68:
+DEFINE_EVENT(dma_fence_unsignaled, dma_fence_emit,
 

-:296: CHECK:PARENTHESIS_ALIGNMENT: Alignment should match open parenthesis
#296: FILE: include/trace/events/dma_fence.h:75:
+DEFINE_EVENT(dma_fence_unsignaled, dma_fence_init,
 

-:305: CHECK:PARENTHESIS_ALIGNMENT: Alignment should match open parenthesis
#305: FILE: include/trace/events/dma_fence.h:89:
+DEFINE_EVENT(dma_fence_unsignaled, dma_fence_enable_signal,
 

-:313: CHECK:PARENTHESIS_ALIGNMENT: Alignment should match open parenthesis
#313: FILE: include/trace/events/dma_fence.h:96:
+DEFINE_EVENT(dma_fence_unsignaled, dma_fence_signaled,
 

total: 0 errors, 1 warnings, 7 checks, 248 lines checked
a6a9759d6c49 drm/xe: Make dma-fences compliant with the safe access rules


