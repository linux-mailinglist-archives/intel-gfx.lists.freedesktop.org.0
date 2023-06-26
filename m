Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 9BC5A73DB07
	for <lists+intel-gfx@lfdr.de>; Mon, 26 Jun 2023 11:15:14 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 26A9910E0C3;
	Mon, 26 Jun 2023 09:15:08 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga18.intel.com (mga18.intel.com [134.134.136.126])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 53A7A10E0A2;
 Mon, 26 Jun 2023 09:15:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1687770905; x=1719306905;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=c8zPgWJY6SC59lOQdr8vPRntj39QqPiFfis3EjYD9Kg=;
 b=NpWE4pQGKHaCyRoScpbzDGEQkUqlMCFk6x70txO44kihzmcpjeUyvKyC
 tnAxwohk4l4IKvps5jCF2EINk9JAbK+0taITi65Sdxit2cGP00YczOB7P
 /EtrFIbPtN+uXGqxecGFXaFwu4c2VmAFuM0m2n1o4Q2UVXH8I4JiPDMIe
 6lBWduCRmvBr1ZwlvxfdUBd2Q8qg+GvLD04A0nMfp1T4DPMrigEIk9dOA
 D5OCk6ctMGt7jfw24hdJLanPJzQ/U6HAN6Fdi0NGtBHn7niIZaVdVICRy
 WcEB3s5NzsBngoSmKVmA8ghwT/yP+mutM9Pj5F8B5QmN3KjZwCrqAPL1k Q==;
X-IronPort-AV: E=McAfee;i="6600,9927,10752"; a="345974079"
X-IronPort-AV: E=Sophos;i="6.01,159,1684825200"; d="scan'208";a="345974079"
Received: from fmsmga008.fm.intel.com ([10.253.24.58])
 by orsmga106.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 26 Jun 2023 02:15:04 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10752"; a="781357733"
X-IronPort-AV: E=Sophos;i="6.01,159,1684825200"; d="scan'208";a="781357733"
Received: from ettammin-mobl1.ger.corp.intel.com (HELO
 thellstr-mobl1.intel.com) ([10.249.254.105])
 by fmsmga008-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 26 Jun 2023 02:15:02 -0700
From: =?UTF-8?q?Thomas=20Hellstr=C3=B6m?= <thomas.hellstrom@linux.intel.com>
To: intel-xe@lists.freedesktop.org
Date: Mon, 26 Jun 2023 11:14:47 +0200
Message-Id: <20230626091450.14757-2-thomas.hellstrom@linux.intel.com>
X-Mailer: git-send-email 2.40.1
In-Reply-To: <20230626091450.14757-1-thomas.hellstrom@linux.intel.com>
References: <20230626091450.14757-1-thomas.hellstrom@linux.intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH v2 1/4] drm/ttm: Fix ttm_lru_bulk_move_pos_tail()
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
Cc: =?UTF-8?q?Thomas=20Hellstr=C3=B6m?= <thomas.hellstrom@linux.intel.com>,
 Daniel Vetter <daniel.vetter@ffwll.ch>, intel-gfx@lists.freedesktop.org,
 linux-kernel@vger.kernel.org, stable@vger.kernel.org,
 dri-devel@lists.freedesktop.org,
 =?UTF-8?q?Christian=20K=C3=B6nig?= <ckoenig.leichtzumerken@gmail.com>,
 =?UTF-8?q?Christian=20K=C3=B6nig?= <christian.koenig@amd.com>
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

The value of pos->first was not updated when the first resource of the
range was moved. This could lead to errors like the one below.
Fix this by updating pos->first when needed.

<3> [218.963342] BUG: KASAN: null-ptr-deref in ttm_lru_bulk_move_del+0xc5/0x180 [ttm]
<3> [218.963456] Read of size 8 at addr 0000000000000038 by task xe_evict/1529
<3> [218.963546]
<3> [218.963566] CPU: 0 PID: 1529 Comm: xe_evict Not tainted 6.3.0-xe #1
<3> [218.963664] Hardware name: Intel Corporation Tiger Lake Client Platform/TigerLake H DDR4 SODIMM RVP, BIOS TGLSFWI1.R00.4064.A00.2102041619 02/04/2021
<3> [218.963841] Call Trace:
<3> [218.963881]  <TASK>
<3> [218.963915]  dump_stack_lvl+0x64/0xb0
<3> [218.963976]  print_report+0x3e5/0x600
<3> [218.964036]  ? ttm_lru_bulk_move_del+0xc5/0x180 [ttm]
<3> [218.964127]  kasan_report+0x96/0xc0
<3> [218.964183]  ? ttm_lru_bulk_move_del+0xc5/0x180 [ttm]
<3> [218.964276]  ttm_lru_bulk_move_del+0xc5/0x180 [ttm]
<3> [218.964365]  ttm_bo_set_bulk_move+0x92/0x140 [ttm]
<3> [218.964454]  xe_gem_object_close+0xc8/0x120 [xe]
<3> [218.964675]  ? __pfx_xe_gem_object_close+0x10/0x10 [xe]
<3> [218.964908]  ? drm_gem_object_handle_put_unlocked+0xc7/0x170 [drm]
<3> [218.965071]  drm_gem_object_release_handle+0x45/0x80 [drm]
<3> [218.965220]  ? __pfx_drm_gem_object_release_handle+0x10/0x10 [drm]
<3> [218.965381]  idr_for_each+0xc9/0x180
<3> [218.965437]  ? __pfx_idr_for_each+0x10/0x10
<3> [218.965504]  drm_gem_release+0x20/0x30 [drm]
<3> [218.965637]  drm_file_free.part.0+0x4cb/0x4f0 [drm]
<3> [218.965778]  ? drm_close_helper.isra.0+0xb7/0xe0 [drm]
<3> [218.965921]  drm_release_noglobal+0x49/0x90 [drm]
<3> [218.966061]  __fput+0x122/0x450
<3> [218.966115]  task_work_run+0xfe/0x190
<3> [218.966175]  ? __pfx_task_work_run+0x10/0x10
<3> [218.966239]  ? do_raw_spin_unlock+0xa7/0x140
<3> [218.966308]  do_exit+0x55f/0x1430
<3> [218.966364]  ? __pfx_lock_release+0x10/0x10
<3> [218.966431]  ? do_raw_spin_lock+0x11d/0x1e0
<3> [218.966498]  ? __pfx_do_exit+0x10/0x10
<3> [218.966554]  ? __pfx_do_raw_spin_lock+0x10/0x10
<3> [218.966625]  ? mark_held_locks+0x24/0x90
<3> [218.966688]  ? lockdep_hardirqs_on_prepare+0x136/0x210
<3> [218.966768]  do_group_exit+0x68/0x110
<3> [218.966828]  __x64_sys_exit_group+0x2c/0x30
<3> [218.966896]  do_syscall_64+0x3c/0x90
<3> [218.966955]  entry_SYSCALL_64_after_hwframe+0x72/0xdc
<3> [218.967035] RIP: 0033:0x7f77b194f146
<3> [218.967094] Code: Unable to access opcode bytes at 0x7f77b194f11c.
<3> [218.967174] RSP: 002b:00007ffc64791188 EFLAGS: 00000246 ORIG_RAX: 00000000000000e7
<3> [218.967271] RAX: ffffffffffffffda RBX: 00007f77b1a548a0 RCX: 00007f77b194f146
<3> [218.967364] RDX: 0000000000000062 RSI: 000000000000003c RDI: 0000000000000062
<3> [218.967458] RBP: 0000000000000062 R08: 00000000000000e7 R09: ffffffffffffff78
<3> [218.967553] R10: 0000000000000058 R11: 0000000000000246 R12: 00007f77b1a548a0
<3> [218.967648] R13: 0000000000000003 R14: 00007f77b1a5d2e8 R15: 0000000000000000
<3> [218.967745]  </TASK>

Fixes: fee2ede15542 ("drm/ttm: rework bulk move handling v5")
Cc: "Christian König" <christian.koenig@amd.com>
Cc: "Christian König" <ckoenig.leichtzumerken@gmail.com>
Cc: Daniel Vetter <daniel.vetter@ffwll.ch>
Cc: dri-devel@lists.freedesktop.org
Cc: <stable@vger.kernel.org> # v5.19+
Link: https://gitlab.freedesktop.org/drm/xe/kernel/-/issues/411
Signed-off-by: Thomas Hellström <thomas.hellstrom@linux.intel.com>
---
 drivers/gpu/drm/ttm/ttm_resource.c | 2 ++
 1 file changed, 2 insertions(+)

diff --git a/drivers/gpu/drm/ttm/ttm_resource.c b/drivers/gpu/drm/ttm/ttm_resource.c
index 7333f7a87a2f..cb05e0a36576 100644
--- a/drivers/gpu/drm/ttm/ttm_resource.c
+++ b/drivers/gpu/drm/ttm/ttm_resource.c
@@ -86,6 +86,8 @@ static void ttm_lru_bulk_move_pos_tail(struct ttm_lru_bulk_move_pos *pos,
 				       struct ttm_resource *res)
 {
 	if (pos->last != res) {
+		if (pos->first == res)
+			pos->first = list_next_entry(res, lru);
 		list_move(&res->lru, &pos->last->lru);
 		pos->last = res;
 	}
-- 
2.40.1

