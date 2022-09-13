Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 327145BCD2F
	for <lists+intel-gfx@lfdr.de>; Mon, 19 Sep 2022 15:29:35 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 4BFA310E648;
	Mon, 19 Sep 2022 13:29:23 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from szxga08-in.huawei.com (szxga08-in.huawei.com [45.249.212.255])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 1375510E15E;
 Tue, 13 Sep 2022 03:05:14 +0000 (UTC)
Received: from kwepemi500012.china.huawei.com (unknown [172.30.72.57])
 by szxga08-in.huawei.com (SkyGuard) with ESMTP id 4MRSVX75kKz14QZn;
 Tue, 13 Sep 2022 10:44:52 +0800 (CST)
Received: from cgs.huawei.com (10.244.148.83) by
 kwepemi500012.china.huawei.com (7.221.188.12) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2375.24; Tue, 13 Sep 2022 10:48:48 +0800
From: Gaosheng Cui <cuigaosheng1@huawei.com>
To: <evan.quan@amd.com>, <alexander.deucher@amd.com>,
 <christian.koenig@amd.com>, <Xinhui.Pan@amd.com>, <airlied@linux.ie>,
 <daniel@ffwll.ch>, <patrik.r.jakobsson@gmail.com>,
 <jani.nikula@linux.intel.com>, <joonas.lahtinen@linux.intel.com>,
 <rodrigo.vivi@intel.com>, <tvrtko.ursulin@linux.intel.com>,
 <zackr@vmware.com>, <linux-graphics-maintainer@vmware.com>,
 <lijo.lazar@amd.com>, <matthew.brost@intel.com>, <John.C.Harrison@Intel.com>, 
 <daniele.ceraolospurio@intel.com>, <cuigaosheng1@huawei.com>
Date: Tue, 13 Sep 2022 10:48:41 +0800
Message-ID: <20220913024847.552254-1-cuigaosheng1@huawei.com>
X-Mailer: git-send-email 2.25.1
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Content-Type: text/plain
X-Originating-IP: [10.244.148.83]
X-ClientProxiedBy: dggems706-chm.china.huawei.com (10.3.19.183) To
 kwepemi500012.china.huawei.com (7.221.188.12)
X-CFilter-Loop: Reflected
X-Mailman-Approved-At: Mon, 19 Sep 2022 13:29:09 +0000
Subject: [Intel-gfx] [PATCH 0/6] Remove unused declarations for gpu/drm
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
Cc: intel-gfx@lists.freedesktop.org, dri-devel@lists.freedesktop.org,
 amd-gfx@lists.freedesktop.org
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

This series contains a few cleanup patches, to remove unused
declarations which have been removed. Thanks!

Gaosheng Cui (6):
  drm/vmwgfx: remove unused vmw_bo_is_vmw_bo() declaration
  drm/radeon/r600_cs: remove r600_cs_legacy_get_tiling_conf()
    declaration
  drm/radeon: remove unused declarations for radeon
  drm/gma500: remove unused declarations in psb_intel_drv.h
  drm/amd/pm: remove unused declarations in hardwaremanager.h
  drm/i915: remove unused i915_gem_lmem_obj_ops declaration

 drivers/gpu/drm/amd/pm/powerplay/inc/hardwaremanager.h | 2 --
 drivers/gpu/drm/gma500/psb_intel_drv.h                 | 5 -----
 drivers/gpu/drm/i915/gem/i915_gem_lmem.h               | 2 --
 drivers/gpu/drm/radeon/r600_cs.c                       | 2 --
 drivers/gpu/drm/radeon/radeon.h                        | 3 ---
 drivers/gpu/drm/radeon/radeon_mode.h                   | 1 -
 drivers/gpu/drm/vmwgfx/vmwgfx_drv.h                    | 1 -
 7 files changed, 16 deletions(-)

-- 
2.25.1

