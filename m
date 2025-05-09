Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 6D594AB1AD8
	for <lists+intel-gfx@lfdr.de>; Fri,  9 May 2025 18:47:18 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 6EF6D10E0A5;
	Fri,  9 May 2025 16:47:16 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from c664b1dc75d1 (emeril.freedesktop.org [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 8DBB110EAAC;
 Fri,  9 May 2025 16:47:15 +0000 (UTC)
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Subject: =?utf-8?q?=E2=9C=97_Fi=2ECI=2ECHECKPATCH=3A_warning_for_Some_=28drm=5Fsched?=
 =?utf-8?q?=5F=7Cdma=5F=29fence_lifetime_issues?=
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Tvrtko Ursulin" <tvrtko.ursulin@igalia.com>
Cc: intel-gfx@lists.freedesktop.org
Date: Fri, 09 May 2025 16:47:15 -0000
Message-ID: <174680923557.64929.12509413861013347607@c664b1dc75d1>
X-Patchwork-Hint: ignore
References: <20250509153352.7187-1-tvrtko.ursulin@igalia.com>
In-Reply-To: <20250509153352.7187-1-tvrtko.ursulin@igalia.com>
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

Series: Some (drm_sched_|dma_)fence lifetime issues
URL   : https://patchwork.freedesktop.org/series/148826/
State : warning

== Summary ==

Error: dim checkpatch failed
296555452b65 drm/i915: Use provided dma_fence_is_chain
d78d6123630c dma-fence: Change signature of __dma_fence_is_later
b75e86eb0687 dma-fence: Use a flag for 64-bit seqnos
11fa13e6bbbd dma-fence: Move array and chain checks to flags
0339c23a6845 dma-fence: Add helpers for accessing driver and timeline name
90f70915e889 dma-fence: Use driver and timeline name helpers internally
6207ce1691c0 sync_file: Use dma-fence driver and timeline name helpers
07e40f196def drm/amdgpu: Use dma-fence driver and timeline name helpers
ee03756c62c3 drm/i915: Use dma-fence driver and timeline name helpers
2569e8be8512 dma-fence: Add safe access helpers and document the rules
-:18: WARNING:TYPO_SPELLING: 'contraints' may be misspelled - perhaps 'constraints'?
#18: 
contraints and adds helpers which a) drivers with potential to suffer from
^^^^^^^^^^

total: 0 errors, 1 warnings, 0 checks, 134 lines checked
9295f69aab96 sync_file: Protect access to driver and timeline name
0c818147007d drm/i915: Protect access to driver and timeline name
6fbcc608537d drm/xe: Make dma-fences compliant with the safe access rules


