Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id B1DE7843A75
	for <lists+intel-gfx@lfdr.de>; Wed, 31 Jan 2024 10:12:01 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id E0CDA10EC71;
	Wed, 31 Jan 2024 09:11:55 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-lj1-f170.google.com (mail-lj1-f170.google.com
 [209.85.208.170])
 by gabe.freedesktop.org (Postfix) with ESMTPS id A880510EC71
 for <intel-gfx@lists.freedesktop.org>; Wed, 31 Jan 2024 09:11:54 +0000 (UTC)
Received: by mail-lj1-f170.google.com with SMTP id
 38308e7fff4ca-2cf206e4d56so55581141fa.3
 for <intel-gfx@lists.freedesktop.org>; Wed, 31 Jan 2024 01:11:54 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=linaro.org; s=google; t=1706692253; x=1707297053; darn=lists.freedesktop.org;
 h=in-reply-to:content-transfer-encoding:content-disposition
 :mime-version:message-id:subject:cc:to:from:date:from:to:cc:subject
 :date:message-id:reply-to;
 bh=cgExCvRH14FXNOEX2q+ieKqRx3LRFYlOhTkoQIbaOMI=;
 b=xnObgAOs0BPARPlfnINBsTDZZbQ3x24pyK43zL8DNN/Qvp8VdAu4JDyRuoJIBsQrWo
 +tuK58MGLlIaHFb9LfzlHk4VTmeCK4QL4M8ek5gGXKl6fh4kqZf64vkyPhuV05YJyd3g
 GCl1t+4w7rDKSAkyBCIFMgvl1UBkDgujPjTNg4tENbu4mtc3SD5jkQT+bq18h6jcd2pz
 lZkL7ZEzJahs2BKU42rdWJYv90iIaxHel1TN0tuS83zR7bj8i8AyJGq3mGw1PI85Hms5
 tBDqzHjimjbqVg0KGN4WMBYObUvKv3WFk2/X9bMnYODmUJemZORp6YZyNEr0338buQCy
 q/Yg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20230601; t=1706692253; x=1707297053;
 h=in-reply-to:content-transfer-encoding:content-disposition
 :mime-version:message-id:subject:cc:to:from:date:x-gm-message-state
 :from:to:cc:subject:date:message-id:reply-to;
 bh=cgExCvRH14FXNOEX2q+ieKqRx3LRFYlOhTkoQIbaOMI=;
 b=NJ2w5uP6s9mCOEpF0kCqMpO3zA9pCLZ3bFz8bO9W2rGruH/yOgYOArVL8BlGBZ1wN3
 +W0oMGXtonCNrOguhqimNSFkAJGfTXZG3Xa0MUOaVUMD3ZaBL9Mix7O4viGCS1XoDwU+
 GLtwEF89VUgxsR4Sn2hgeMZEmVsqjieGGyGuanZjRyHvL12+aGtZXAz7gCL+6sExQNXs
 4Ukw+3jQMAavF0aqUdEtapHueqDb5S2vpaI1qs4aBQfZ+Pz8QO5YK2tXfy3AEBo6ivEm
 Z5gVkmsFnxfYJVlXu/bE9wHJKPL9vnh/VkqBtr9z6CcTHLff0TLcw3cXUWtv/UH11B/U
 pjuQ==
X-Gm-Message-State: AOJu0YzK+1GCeUQ1SKd5aYNZX+ji1x6/tMi4vQ0S1RiXeEiNv3F1rz7y
 pXk/q239E90frluKAd/VYsZThGAXWdGwN62xphiQnYx2MGdtl8+NUDKN9RkEn8U=
X-Google-Smtp-Source: AGHT+IEKxu+DvVmX2V+Ho9agy9CO6Vfuk9+x4uHjd6xbnu8GyTrj4nTMdMO7EM1EZ0B6gV7SKSOWQg==
X-Received: by 2002:a05:651c:b1e:b0:2d0:6c48:95af with SMTP id
 b30-20020a05651c0b1e00b002d06c4895afmr401928ljr.50.1706692252705; 
 Wed, 31 Jan 2024 01:10:52 -0800 (PST)
Received: from localhost ([102.140.226.10]) by smtp.gmail.com with ESMTPSA id
 s9-20020a05600c45c900b0040ef718cf81sm978022wmo.28.2024.01.31.01.10.51
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Wed, 31 Jan 2024 01:10:52 -0800 (PST)
Date: Wed, 31 Jan 2024 12:10:48 +0300
From: Dan Carpenter <dan.carpenter@linaro.org>
To: oe-kbuild@lists.linux.dev,
 Juha-Pekka Heikkila <juhapekka.heikkila@gmail.com>,
 intel-xe@lists.freedesktop.org, intel-gfx@lists.freedesktop.org
Subject: Re: [PATCH 3/5] drm/xe: store bind time pat index to xe_bo
Message-ID: <7ae75ca8-cc58-4baa-abf3-0caaa4513f34@moroto.mountain>
MIME-Version: 1.0
Content-Type: text/plain; charset=iso-8859-1
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <20240126210807.320671-4-juhapekka.heikkila@gmail.com>
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
Cc: oe-kbuild-all@lists.linux.dev
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

Hi Juha-Pekka,

kernel test robot noticed the following build warnings:

https://git-scm.com/docs/git-format-patch#_base_tree_information]

url:    https://github.com/intel-lab-lkp/linux/commits/Juha-Pekka-Heikkila/drm-xe-pat-annotate-pat-index-table-with-compression-information/20240127-091231
base:   https://gitlab.freedesktop.org/drm/xe/kernel.git drm-xe-next
patch link:    https://lore.kernel.org/r/20240126210807.320671-4-juhapekka.heikkila%40gmail.com
patch subject: [PATCH 3/5] drm/xe: store bind time pat index to xe_bo
config: sparc-randconfig-r081-20240128 (https://download.01.org/0day-ci/archive/20240131/202401311604.1pLlAxeK-lkp@intel.com/config)
compiler: sparc64-linux-gcc (GCC) 13.2.0

If you fix the issue in a separate patch/commit (i.e. not just a new version of
the same patch/commit), kindly add following tags
| Reported-by: kernel test robot <lkp@intel.com>
| Reported-by: Dan Carpenter <dan.carpenter@linaro.org>
| Closes: https://lore.kernel.org/r/202401311604.1pLlAxeK-lkp@intel.com/

New smatch warnings:
drivers/gpu/drm/xe/xe_pt.c:1265 __xe_pt_bind_vma() warn: possible memory leak of 'ifence'
drivers/gpu/drm/xe/xe_pt.c:1265 __xe_pt_bind_vma() warn: possible memory leak of 'rfence'

vim +/ifence +1265 drivers/gpu/drm/xe/xe_pt.c

dd08ebf6c3525a Matthew Brost       2023-03-30  1192  struct dma_fence *
9b9529ce379a08 Francois Dugast     2023-07-31  1193  __xe_pt_bind_vma(struct xe_tile *tile, struct xe_vma *vma, struct xe_exec_queue *q,
dd08ebf6c3525a Matthew Brost       2023-03-30  1194  		 struct xe_sync_entry *syncs, u32 num_syncs,
dd08ebf6c3525a Matthew Brost       2023-03-30  1195  		 bool rebind)
dd08ebf6c3525a Matthew Brost       2023-03-30  1196  {
dd08ebf6c3525a Matthew Brost       2023-03-30  1197  	struct xe_vm_pgtable_update entries[XE_VM_MAX_LEVEL * 2 + 1];
dd08ebf6c3525a Matthew Brost       2023-03-30  1198  	struct xe_pt_migrate_pt_update bind_pt_update = {
dd08ebf6c3525a Matthew Brost       2023-03-30  1199  		.base = {
dd08ebf6c3525a Matthew Brost       2023-03-30  1200  			.ops = xe_vma_is_userptr(vma) ? &userptr_bind_ops : &bind_ops,
dd08ebf6c3525a Matthew Brost       2023-03-30  1201  			.vma = vma,
fd84041d094ce8 Matthew Brost       2023-07-19  1202  			.tile_id = tile->id,
dd08ebf6c3525a Matthew Brost       2023-03-30  1203  		},
dd08ebf6c3525a Matthew Brost       2023-03-30  1204  		.bind = true,
dd08ebf6c3525a Matthew Brost       2023-03-30  1205  	};
21ed3327e388c2 Matthew Brost       2023-06-22  1206  	struct xe_vm *vm = xe_vma_vm(vma);
dd08ebf6c3525a Matthew Brost       2023-03-30  1207  	u32 num_entries;
dd08ebf6c3525a Matthew Brost       2023-03-30  1208  	struct dma_fence *fence;
5387e865d90e92 Matthew Brost       2023-01-27  1209  	struct invalidation_fence *ifence = NULL;
fd84041d094ce8 Matthew Brost       2023-07-19  1210  	struct xe_range_fence *rfence;
6fb884b76bd164 Juha-Pekka Heikkila 2024-01-26  1211  	struct xe_bo *bo = xe_vma_bo(vma);
dd08ebf6c3525a Matthew Brost       2023-03-30  1212  	int err;
dd08ebf6c3525a Matthew Brost       2023-03-30  1213  
dd08ebf6c3525a Matthew Brost       2023-03-30  1214  	bind_pt_update.locked = false;
6fb884b76bd164 Juha-Pekka Heikkila 2024-01-26  1215  	xe_bo_assert_held(bo);
dd08ebf6c3525a Matthew Brost       2023-03-30  1216  	xe_vm_assert_held(vm);
dd08ebf6c3525a Matthew Brost       2023-03-30  1217  
21ed3327e388c2 Matthew Brost       2023-06-22  1218  	vm_dbg(&xe_vma_vm(vma)->xe->drm,
dd08ebf6c3525a Matthew Brost       2023-03-30  1219  	       "Preparing bind, with range [%llx...%llx) engine %p.\n",
0e1a234618a86c Paulo Zanoni        2023-09-29  1220  	       xe_vma_start(vma), xe_vma_end(vma), q);
dd08ebf6c3525a Matthew Brost       2023-03-30  1221  
876611c2b75689 Matt Roper          2023-06-01  1222  	err = xe_pt_prepare_bind(tile, vma, entries, &num_entries, rebind);
dd08ebf6c3525a Matthew Brost       2023-03-30  1223  	if (err)
dd08ebf6c3525a Matthew Brost       2023-03-30  1224  		goto err;
c73acc1eeba5e3 Francois Dugast     2023-09-12  1225  	xe_tile_assert(tile, num_entries <= ARRAY_SIZE(entries));
dd08ebf6c3525a Matthew Brost       2023-03-30  1226  
876611c2b75689 Matt Roper          2023-06-01  1227  	xe_vm_dbg_print_entries(tile_to_xe(tile), entries, num_entries);
fd84041d094ce8 Matthew Brost       2023-07-19  1228  	xe_pt_calc_rfence_interval(vma, &bind_pt_update, entries,
fd84041d094ce8 Matthew Brost       2023-07-19  1229  				   num_entries);
dd08ebf6c3525a Matthew Brost       2023-03-30  1230  
85dbfe47d07cdd Thomas Hellström    2023-06-05  1231  	/*
85dbfe47d07cdd Thomas Hellström    2023-06-05  1232  	 * If rebind, we have to invalidate TLB on !LR vms to invalidate
85dbfe47d07cdd Thomas Hellström    2023-06-05  1233  	 * cached PTEs point to freed memory. on LR vms this is done
85dbfe47d07cdd Thomas Hellström    2023-06-05  1234  	 * automatically when the context is re-enabled by the rebind worker,
85dbfe47d07cdd Thomas Hellström    2023-06-05  1235  	 * or in fault mode it was invalidated on PTE zapping.
85dbfe47d07cdd Thomas Hellström    2023-06-05  1236  	 *
85dbfe47d07cdd Thomas Hellström    2023-06-05  1237  	 * If !rebind, and scratch enabled VMs, there is a chance the scratch
85dbfe47d07cdd Thomas Hellström    2023-06-05  1238  	 * PTE is already cached in the TLB so it needs to be invalidated.
85dbfe47d07cdd Thomas Hellström    2023-06-05  1239  	 * on !LR VMs this is done in the ring ops preceding a batch, but on
85dbfe47d07cdd Thomas Hellström    2023-06-05  1240  	 * non-faulting LR, in particular on user-space batch buffer chaining,
85dbfe47d07cdd Thomas Hellström    2023-06-05  1241  	 * it needs to be done here.
85dbfe47d07cdd Thomas Hellström    2023-06-05  1242  	 */
fdb6a05383fab3 Thomas Hellström    2023-11-27  1243  	if ((rebind && !xe_vm_in_lr_mode(vm) && !vm->batch_invalidate_tlb) ||
06951c2ee72df2 Thomas Hellström    2023-12-09  1244  	    (!rebind && xe_vm_has_scratch(vm) && xe_vm_in_preempt_fence_mode(vm))) {
5387e865d90e92 Matthew Brost       2023-01-27  1245  		ifence = kzalloc(sizeof(*ifence), GFP_KERNEL);
5387e865d90e92 Matthew Brost       2023-01-27  1246  		if (!ifence)
5387e865d90e92 Matthew Brost       2023-01-27  1247  			return ERR_PTR(-ENOMEM);
5387e865d90e92 Matthew Brost       2023-01-27  1248  	}
5387e865d90e92 Matthew Brost       2023-01-27  1249  
fd84041d094ce8 Matthew Brost       2023-07-19  1250  	rfence = kzalloc(sizeof(*rfence), GFP_KERNEL);
fd84041d094ce8 Matthew Brost       2023-07-19  1251  	if (!rfence) {
fd84041d094ce8 Matthew Brost       2023-07-19  1252  		kfree(ifence);
fd84041d094ce8 Matthew Brost       2023-07-19  1253  		return ERR_PTR(-ENOMEM);
fd84041d094ce8 Matthew Brost       2023-07-19  1254  	}
fd84041d094ce8 Matthew Brost       2023-07-19  1255  
6fb884b76bd164 Juha-Pekka Heikkila 2024-01-26  1256  	/*
6fb884b76bd164 Juha-Pekka Heikkila 2024-01-26  1257  	 * BO which has XE_BO_SCANOUT_BIT set and was pinned as framebuffer
6fb884b76bd164 Juha-Pekka Heikkila 2024-01-26  1258  	 * before with different PAT index cannot be bound with different PAT
6fb884b76bd164 Juha-Pekka Heikkila 2024-01-26  1259  	 * index. This is to prevent switching CCS on/off from framebuffers
6fb884b76bd164 Juha-Pekka Heikkila 2024-01-26  1260  	 * on the fly.
6fb884b76bd164 Juha-Pekka Heikkila 2024-01-26  1261  	 */
6fb884b76bd164 Juha-Pekka Heikkila 2024-01-26 @1262  	if (bo) {
6fb884b76bd164 Juha-Pekka Heikkila 2024-01-26  1263  		if (bo->flags & XE_BO_SCANOUT_BIT && bo->pat_index_scanout &&
6fb884b76bd164 Juha-Pekka Heikkila 2024-01-26  1264  		    bo->pat_index_scanout != vma->pat_index)
6fb884b76bd164 Juha-Pekka Heikkila 2024-01-26 @1265  			return ERR_PTR(-EINVAL);

Smatch wants a kfree(ifence) and kfree(rfence) before the return.

6fb884b76bd164 Juha-Pekka Heikkila 2024-01-26  1266  
6fb884b76bd164 Juha-Pekka Heikkila 2024-01-26  1267  		bo->pat_index = vma->pat_index;
6fb884b76bd164 Juha-Pekka Heikkila 2024-01-26  1268  	}
6fb884b76bd164 Juha-Pekka Heikkila 2024-01-26  1269  
08dea7674533cf Matt Roper          2023-06-01  1270  	fence = xe_migrate_update_pgtables(tile->migrate,
6fb884b76bd164 Juha-Pekka Heikkila 2024-01-26  1271  					   vm, bo, q,
dd08ebf6c3525a Matthew Brost       2023-03-30  1272  					   entries, num_entries,
dd08ebf6c3525a Matthew Brost       2023-03-30  1273  					   syncs, num_syncs,
dd08ebf6c3525a Matthew Brost       2023-03-30  1274  					   &bind_pt_update.base);

-- 
0-DAY CI Kernel Test Service
https://github.com/intel/lkp-tests/wiki

