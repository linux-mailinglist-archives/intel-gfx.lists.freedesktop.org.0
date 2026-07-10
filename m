Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id SK8BOKxKUWoKCAMAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Fri, 10 Jul 2026 21:40:28 +0200
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 35C1573DE1C
	for <lists+intel-gfx@lfdr.de>; Fri, 10 Jul 2026 21:40:28 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=none;
	dmarc=none;
	spf=pass (mail.lfdr.de: domain of intel-gfx-bounces@lists.freedesktop.org designates 131.252.210.177 as permitted sender) smtp.mailfrom=intel-gfx-bounces@lists.freedesktop.org
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 5A5D510E21C;
	Fri, 10 Jul 2026 19:40:26 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from 6beec6c84f66 (emeril.freedesktop.org [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 0107C10E21C;
 Fri, 10 Jul 2026 19:40:25 +0000 (UTC)
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Subject: =?utf-8?q?=E2=9C=97_Fi=2ECI=2EBUILD=3A_failure_for_series_starting_with_=5B0?=
 =?utf-8?q?1/12=5D_dma-buf=3A_Add_reference_counting_to_dma=5Fresv?=
From: Patchwork <patchwork@emeril.freedesktop.org>
To: =?utf-8?q?Christian_K=C3=B6nig?= <ckoenig.leichtzumerken@gmail.com>
Cc: intel-gfx@lists.freedesktop.org
Date: Fri, 10 Jul 2026 19:40:24 -0000
Message-ID: <178371242499.175489.6290307426951498165@6beec6c84f66>
X-Patchwork-Hint: ignore
References: <20260710190752.2355-1-christian.koenig@amd.com>
In-Reply-To: <20260710190752.2355-1-christian.koenig@amd.com>
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
X-Rspamd-Action: no action
X-Spamd-Result: default: False [-0.11 / 15.00];
	MID_RHS_NOT_FQDN(0.50)[];
	MAILLIST(-0.20)[mailman];
	R_SPF_ALLOW(-0.20)[+ip4:131.252.210.177:c];
	MIME_GOOD(-0.10)[text/plain];
	RWL_MAILSPIKE_GOOD(-0.10)[131.252.210.177:from];
	HAS_LIST_UNSUB(-0.01)[];
	DMARC_NA(0.00)[emeril.freedesktop.org];
	RCPT_COUNT_TWO(0.00)[2];
	FROM_HAS_DN(0.00)[];
	FREEMAIL_TO(0.00)[gmail.com];
	TO_DN_SOME(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	MIME_TRACE(0.00)[0:+];
	ARC_NA(0.00)[];
	REPLYTO_DOM_NEQ_FROM_DOM(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	ALIAS_RESOLVED(0.00)[];
	RCVD_COUNT_TWO(0.00)[2];
	FROM_NEQ_ENVFROM(0.00)[patchwork@emeril.freedesktop.org,intel-gfx-bounces@lists.freedesktop.org];
	REPLYTO_DOM_NEQ_TO_DOM(0.00)[];
	R_DKIM_NA(0.00)[];
	ASN(0.00)[asn:6366, ipnet:131.252.0.0/16, country:US];
	TAGGED_RCPT(0.00)[intel-gfx];
	MISSING_XM_UA(0.00)[];
	HAS_REPLYTO(0.00)[intel-gfx@lists.freedesktop.org]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: 35C1573DE1C

== Series Details ==

Series: series starting with [01/12] dma-buf: Add reference counting to dma_resv
URL   : https://patchwork.freedesktop.org/series/170208/
State : failure

== Summary ==

Error: patch https://patchwork.freedesktop.org/api/1.0/series/170208/revisions/1/mbox/ not applied
Applying: dma-buf: Add reference counting to dma_resv
Applying: dma-buf/tests: Convert st-dma-resv tests to use dma_resv_alloc
Applying: drm/gem: Add helper for drm_gem_object resv assignment
Applying: drm/ttm: Switch LRU cursor to track dma_resv instead of buffer objects
Applying: drm/ttm: switch to ttm_bo_lru_for_each_reserved_guarded for swapout
Applying: drm/ttm: move delete handling into ttm_bo_evict
Applying: drm/ttm: use ttm_bo_lru_for_each_reserved_guarded in evict_all
Applying: drm/ttm: use dma_resv reference in ttm_device_clear_lru_dma_mappings
Applying: drm/ttm: nuke buffer refcounting
Applying: drm/exec: add drm_exec_lock_resv function
Applying: drm/ttm: support using drm_exec during eviction v4
Applying: drm/amdgpu: use drm_exec during BO validation
Using index info to reconstruct a base tree...
M	drivers/gpu/drm/amd/amdgpu/amdgpu_cs.c
Falling back to patching base and 3-way merge...
Auto-merging drivers/gpu/drm/amd/amdgpu/amdgpu_cs.c
CONFLICT (content): Merge conflict in drivers/gpu/drm/amd/amdgpu/amdgpu_cs.c
error: Failed to merge in the changes.
hint: Use 'git am --show-current-patch=diff' to see the failed patch
Patch failed at 0012 drm/amdgpu: use drm_exec during BO validation
When you have resolved this problem, run "git am --continue".
If you prefer to skip this patch, run "git am --skip" instead.
To restore the original branch and stop patching, run "git am --abort".
Build failed, no error log produced


