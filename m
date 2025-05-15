Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 98551AB8562
	for <lists+intel-gfx@lfdr.de>; Thu, 15 May 2025 13:55:47 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 4807510E84D;
	Thu, 15 May 2025 11:55:45 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from c664b1dc75d1 (emeril.freedesktop.org [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTPS id BDAB010E855;
 Thu, 15 May 2025 11:55:43 +0000 (UTC)
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Subject: =?utf-8?q?=E2=9C=97_Fi=2ECI=2ECHECKPATCH=3A_warning_for_Some_=28drm=5Fsched?=
 =?utf-8?q?=5F=7Cdma=5F=29fence_lifetime_issues_=28rev3=29?=
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Tvrtko Ursulin" <tvrtko.ursulin@igalia.com>
Cc: intel-gfx@lists.freedesktop.org
Date: Thu, 15 May 2025 11:55:43 -0000
Message-ID: <174731014377.84248.16514510130100680767@c664b1dc75d1>
X-Patchwork-Hint: ignore
References: <20250515095004.28318-1-tvrtko.ursulin@igalia.com>
In-Reply-To: <20250515095004.28318-1-tvrtko.ursulin@igalia.com>
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

Series: Some (drm_sched_|dma_)fence lifetime issues (rev3)
URL   : https://patchwork.freedesktop.org/series/148826/
State : warning

== Summary ==

Error: dim checkpatch failed
2ee40a6af943 dma-fence: Change signature of __dma_fence_is_later
269c36525d12 dma-fence: Use a flag for 64-bit seqnos
-:56: ERROR:CODE_INDENT: code indent should use tabs where possible
#56: FILE: drivers/dma-buf/dma-fence.c:994:
+^I         spinlock_t *lock, u64 context, u64 seqno, unsigned long flags)$

-:56: CHECK:PARENTHESIS_ALIGNMENT: Alignment should match open parenthesis
#56: FILE: drivers/dma-buf/dma-fence.c:994:
+__dma_fence_init(struct dma_fence *fence, const struct dma_fence_ops *ops,
+	         spinlock_t *lock, u64 context, u64 seqno, unsigned long flags)

-:58: WARNING:AVOID_BUG: Do not crash the kernel unless it is absolutely unavoidable--use WARN_ON_ONCE() plus recovery code (if feasible) instead of BUG() or variants
#58: FILE: drivers/dma-buf/dma-fence.c:996:
+	BUG_ON(!lock);

-:59: WARNING:AVOID_BUG: Do not crash the kernel unless it is absolutely unavoidable--use WARN_ON_ONCE() plus recovery code (if feasible) instead of BUG() or variants
#59: FILE: drivers/dma-buf/dma-fence.c:997:
+	BUG_ON(!ops || !ops->get_driver_name || !ops->get_timeline_name);

total: 1 errors, 2 warnings, 1 checks, 176 lines checked
88e5f56821f8 dma-fence: Add helpers for accessing driver and timeline name
7ef0280d8ef2 sync_file: Use dma-fence driver and timeline name helpers
701b189f76b2 drm/i915: Use dma-fence driver and timeline name helpers
1832cc8b8f18 dma-fence: Add safe access helpers and document the rules
-:18: WARNING:TYPO_SPELLING: 'contraints' may be misspelled - perhaps 'constraints'?
#18: 
contraints and adds helpers which a) drivers with potential to suffer from
^^^^^^^^^^

-:232: CHECK:PARENTHESIS_ALIGNMENT: Alignment should match open parenthesis
#232: FILE: include/trace/events/dma_fence.h:43:
+DECLARE_EVENT_CLASS(dma_fence_unsignaled,
+

-:237: CHECK:OPEN_ENDED_LINE: Lines should not end with a '('
#237: FILE: include/trace/events/dma_fence.h:48:
+	TP_STRUCT__entry(

-:244: CHECK:OPEN_ENDED_LINE: Lines should not end with a '('
#244: FILE: include/trace/events/dma_fence.h:55:
+	TP_fast_assign(

-:257: CHECK:PARENTHESIS_ALIGNMENT: Alignment should match open parenthesis
#257: FILE: include/trace/events/dma_fence.h:68:
+DEFINE_EVENT(dma_fence_unsignaled, dma_fence_emit,
 

-:265: CHECK:PARENTHESIS_ALIGNMENT: Alignment should match open parenthesis
#265: FILE: include/trace/events/dma_fence.h:75:
+DEFINE_EVENT(dma_fence_unsignaled, dma_fence_init,
 

-:274: CHECK:PARENTHESIS_ALIGNMENT: Alignment should match open parenthesis
#274: FILE: include/trace/events/dma_fence.h:89:
+DEFINE_EVENT(dma_fence_unsignaled, dma_fence_enable_signal,
 

-:282: CHECK:PARENTHESIS_ALIGNMENT: Alignment should match open parenthesis
#282: FILE: include/trace/events/dma_fence.h:96:
+DEFINE_EVENT(dma_fence_unsignaled, dma_fence_signaled,
 

total: 0 errors, 1 warnings, 7 checks, 218 lines checked
44908a309135 sync_file: Protect access to driver and timeline name
6eb0a964904b drm/i915: Protect access to driver and timeline name
8445348fcbbb drm/xe: Make dma-fences compliant with the safe access rules


