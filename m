Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id sLTRLblm/GmpPgAAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Thu, 07 May 2026 12:17:29 +0200
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 1CBD34E69BF
	for <lists+intel-gfx@lfdr.de>; Thu, 07 May 2026 12:17:28 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id E3A0A10EFF2;
	Thu,  7 May 2026 10:17:26 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="HUOm/Phy";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.9])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 8B14D10EFF5;
 Thu,  7 May 2026 10:17:24 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1778149045; x=1809685045;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=b8ICLGfcK1VvjIE2eVwy4VMbEFgJ50BJMZ+oVMrFHWk=;
 b=HUOm/PhySQJbR8A4rY89z0mEckvo05SOOEiqbVXGslY0Rf525dTl1noL
 YyK1Nm5U0QM8xh0xEpFKl90axLJNa1WkX4LBUik0UF/3CAnNDx8A3CXRt
 xbdsTqnadVbtvWdtlejILA0VGsZ1Fa7fs2wkV6wjJcIpzr63ICIdksly/
 CvUmUNdLW35F7TPOS2DxptRAx8kMHT7wSfDWFyei5G8DlBnTD/YblC5FH
 nnop7Ez2SySF/FQCrGOgmY2vlELlJeZKhY0Uw6xEfu48T+iHotxeCOt9m
 9uymsTkP83Nu7+J3dqRsV2EmFb5CEjEsKEcjcHEmM872Z0Uqpk1zjgHdg Q==;
X-CSE-ConnectionGUID: sEksawkXQzKxHOPxN8XVig==
X-CSE-MsgGUID: DNoaSJNnSs6y1oFd0/d7Zg==
X-IronPort-AV: E=McAfee;i="6800,10657,11778"; a="89790728"
X-IronPort-AV: E=Sophos;i="6.23,221,1770624000"; d="scan'208";a="89790728"
Received: from orviesa002.jf.intel.com ([10.64.159.142])
 by fmvoesa103.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 07 May 2026 03:17:24 -0700
X-CSE-ConnectionGUID: 8hSEk79TQiO/8gppMDYItw==
X-CSE-MsgGUID: k6SNqQ70RQWrUa7JwBpgqg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.23,221,1770624000"; d="scan'208";a="266803182"
Received: from jkrzyszt-mobl2.ger.corp.intel.com (HELO
 jkrzyszt-mobl2.intranet) ([10.245.245.136])
 by orviesa002-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 07 May 2026 03:17:20 -0700
From: Janusz Krzysztofik <janusz.krzysztofik@linux.intel.com>
To: intel-gfx@lists.freedesktop.org
Cc: dri-devel@lists.freedesktop.org, Jani Nikula <jani.nikula@linux.intel.com>,
 Joonas Lahtinen <joonas.lahtinen@linux.intel.com>,
 Rodrigo Vivi <rodrigo.vivi@intel.com>,
 Tvrtko Ursulin <tursulin@ursulin.net>,
 =?UTF-8?q?Christian=20K=C3=B6nig?= <christian.koenig@amd.com>,
 Matthew Auld <matthew.auld@intel.com>,
 =?UTF-8?q?Thomas=20Hellstr=C3=B6m?= <thomas.hellstrom@linux.intel.com>,
 Andi Shyti <andi.shyti@linux.intel.com>,
 Krzysztof Karas <krzysztof.karas@intel.com>,
 Krzysztof Niemiec <krzysztof.niemiec@intel.com>,
 Sebastian Brzezinka <sebastian.brzezinka@intel.com>,
 Janusz Krzysztofik <janusz.krzysztofik@linux.intel.com>
Subject: [PATCH] drm/i915: Fix potential UAF in TTM object purge
Date: Thu,  7 May 2026 12:15:55 +0200
Message-ID: <20260507101653.321535-2-janusz.krzysztofik@linux.intel.com>
X-Mailer: git-send-email 2.53.0
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
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
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>
X-Rspamd-Queue-Id: 1CBD34E69BF
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-0.31 / 15.00];
	MID_CONTAINS_FROM(1.00)[];
	DMARC_POLICY_ALLOW(-0.50)[intel.com,none];
	R_SPF_ALLOW(-0.20)[+ip4:131.252.210.177:c];
	R_DKIM_ALLOW(-0.20)[intel.com:s=Intel];
	MAILLIST(-0.20)[mailman];
	RWL_MAILSPIKE_GOOD(-0.10)[131.252.210.177:from];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	ASN(0.00)[asn:6366, ipnet:131.252.0.0/16, country:US];
	ARC_NA(0.00)[];
	FROM_HAS_DN(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[14];
	MIME_TRACE(0.00)[0:+];
	TO_DN_SOME(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCVD_COUNT_THREE(0.00)[4];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[janusz.krzysztofik@linux.intel.com,intel-gfx-bounces@lists.freedesktop.org];
	TAGGED_RCPT(0.00)[intel-gfx];
	DBL_BLOCKED_OPENRESOLVER(0.00)[linux.intel.com:mid,gitlab.freedesktop.org:url,gabe.freedesktop.org:helo,gabe.freedesktop.org:rdns,intel.com:email,intel.com:dkim,decode_stacktrace.sh:url];
	NEURAL_HAM(-0.00)[-1.000];
	RCVD_TLS_LAST(0.00)[];
	DKIM_TRACE(0.00)[intel.com:+]
X-Rspamd-Action: no action

A user reported hitting the following bug under heavy use on DG2:

[26620.095550] Oops: general protection fault, probably for non-canonical address 0xa56b6b6b6b6b6b8b: 0000 1 SMP NOPTI
[26620.095556] CPU: 2 UID: 0 PID: 631 Comm: Xorg Not tainted 6.18.8 #1 PREEMPT(lazy)
[26620.095558] Hardware name: ASRock B850M Steel Legend WiFi/B850M Steel Legend WiFi, BIOS 3.50 09/18/2025
[26620.095559] RIP: 0010:i915_ttm_purge+0x84/0x100 [i915]
[26620.095604] Code: 00 00 00 48 8d 54 24 10 48 89 e6 48 89 fb e8 83 aa ae ff 85 c0 75 6f 48 83 bb a8 01 00 00 00 74 2c 48 8b 45 78 48 85 c0 74 23 <48> 8b 78 20 48 c7 c2 ff ff ff ff 31 f6 e8 7a 73 e3 e0 48 8b 7d 78
[26620.095605] RSP: 0018:ffffc90005fd7430 EFLAGS: 00010282
[26620.095607] RAX: a56b6b6b6b6b6b6b RBX: ffff8881f46c3dc0 RCX: 0000000000000000
[26620.095608] RDX: 0000000000000000 RSI: 0000000000000246 RDI: 00000000ffffffff
[26620.095609] RBP: ffff888289610f00 R08: 0000000000000001 R09: ffff88823b022000
[26620.095609] R10: ffff888103029b28 R11: ffff8881fc7f3800 R12: ffff88810b6150d0
[26620.095609] R13: ffff888289610f00 R14: 0000000000000000 R15: ffff8881f46c3dc0
[26620.095610] FS: 00007f1004d86900(0000) GS:ffff88901c858000(0000) knlGS:0000000000000000
[26620.095611] CS: 0010 DS: 0000 ES: 0000 CR0: 0000000080050033
[26620.095611] CR2: 00007f0fdf489000 CR3: 000000035b0c1000 CR4: 0000000000750ef0
[26620.095612] PKRU: 55555554
[26620.095612] Call Trace:
[26620.095615] <TASK>
[26620.095615] i915_ttm_move+0x2b9/0x420 [i915]
[26620.095642] ? ttm_tt_init+0x65/0x80 [ttm]
[26620.095644] ? i915_ttm_tt_create+0xc6/0x150 [i915]
[26620.095667] ttm_bo_handle_move_mem+0xb6/0x160 [ttm]
[26620.095669] ttm_bo_evict+0x100/0x150 [ttm]
[26620.095671] ? preempt_count_add+0x64/0xa0
[26620.095673] ? _raw_spin_lock+0xe/0x30
[26620.095675] ? _raw_spin_unlock+0xd/0x30
[26620.095675] ? i915_gem_object_evictable+0xb7/0xd0 [i915]
[26620.095704] ttm_bo_evict_cb+0x6e/0xd0 [ttm]
[26620.095705] ttm_lru_walk_for_evict+0xa6/0x200 [ttm]
[26620.095708] ttm_bo_alloc_resource+0x185/0x4f0 [ttm]
[26620.095709] ? init_object+0x62/0xd0
[26620.095712] ttm_bo_validate+0x7a/0x180 [ttm]
[26620.095713] ? _raw_spin_unlock_irqrestore+0x16/0x30
[26620.095714] __i915_ttm_get_pages+0xb0/0x170 [i915]
[26620.095737] i915_ttm_get_pages+0x9f/0x150 [i915]
[26620.095759] ? i915_gem_do_execbuffer+0xedc/0x2b40 [i915]
[26620.095786] ? alloc_debug_processing+0xd0/0x100
[26620.095787] ? _raw_spin_unlock_irqrestore+0x16/0x30
[26620.095788] ? i915_vma_instance+0xa0/0x4e0 [i915]
[26620.095822] __i915_gem_object_get_pages+0x2f/0x40 [i915]
[26620.095848] i915_vma_pin_ww+0x706/0x980 [i915]
[26620.095875] ? i915_gem_do_execbuffer+0xedc/0x2b40 [i915]
[26620.095904] eb_validate_vmas+0x170/0xa00 [i915]
[26620.095930] i915_gem_do_execbuffer+0x1201/0x2b40 [i915]
[26620.095953] ? alloc_debug_processing+0xd0/0x100
[26620.095954] ? _raw_spin_unlock_irqrestore+0x16/0x30
[26620.095955] ? i915_gem_execbuffer2_ioctl+0xc9/0x240 [i915]
[26620.095977] ? __wake_up_sync_key+0x32/0x50
[26620.095979] ? i915_gem_execbuffer2_ioctl+0xc9/0x240 [i915]
[26620.096001] ? __slab_alloc.isra.0+0x67/0xc0
[26620.096003] i915_gem_execbuffer2_ioctl+0x11a/0x240 [i915]

Results from decode_stacktrace.sh pointed to dereference of a file pointer
field of a i915 TTM page vector container associated with an object being
purged on eviction.  That path is taken when the object is marked as no
longer needed.

Code analysis revealed a possibility of the i915 TTM page vector container
being replaced with a new instance inside a function that purges content
of the object, should it be still busy.  That function is called,
indirectly via a more general function that changes the object's placement
and caching policy, before the problematic dereference, but still after
a pointer to the container is captured, rendering the pointer no longer
valid.

Fix the issue by capturing the pointer to the container only after its
potential replacement.

Closes: https://gitlab.freedesktop.org/drm/i915/kernel/-/work_items/14882
Fixes: 7ae034590ceae ("drm/i915/ttm: add tt shmem backend")
Cc: stable@vger.kernel.org # v5.17+
Cc: Matthew Auld <matthew.auld@intel.com>
Cc: "Thomas Hellström" <thomas.hellstrom@linux.intel.com>
Signed-off-by: Janusz Krzysztofik <janusz.krzysztofik@linux.intel.com>
---
 drivers/gpu/drm/i915/gem/i915_gem_ttm.c | 4 ++--
 1 file changed, 2 insertions(+), 2 deletions(-)

diff --git a/drivers/gpu/drm/i915/gem/i915_gem_ttm.c b/drivers/gpu/drm/i915/gem/i915_gem_ttm.c
index de70517b4ef22..091972f3bb7bd 100644
--- a/drivers/gpu/drm/i915/gem/i915_gem_ttm.c
+++ b/drivers/gpu/drm/i915/gem/i915_gem_ttm.c
@@ -419,13 +419,12 @@ void i915_ttm_free_cached_io_rsgt(struct drm_i915_gem_object *obj)
 int i915_ttm_purge(struct drm_i915_gem_object *obj)
 {
 	struct ttm_buffer_object *bo = i915_gem_to_ttm(obj);
-	struct i915_ttm_tt *i915_tt =
-		container_of(bo->ttm, typeof(*i915_tt), ttm);
 	struct ttm_operation_ctx ctx = {
 		.interruptible = true,
 		.no_wait_gpu = false,
 	};
 	struct ttm_placement place = {};
+	struct i915_ttm_tt *i915_tt;
 	int ret;
 
 	if (obj->mm.madv == __I915_MADV_PURGED)
@@ -435,6 +434,7 @@ int i915_ttm_purge(struct drm_i915_gem_object *obj)
 	if (ret)
 		return ret;
 
+	i915_tt = container_of(bo->ttm, typeof(*i915_tt), ttm);
 	if (bo->ttm && i915_tt->filp) {
 		/*
 		 * The below fput(which eventually calls shmem_truncate) might
-- 
2.53.0

