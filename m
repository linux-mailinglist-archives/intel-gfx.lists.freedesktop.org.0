Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 850165BCD4C
	for <lists+intel-gfx@lfdr.de>; Mon, 19 Sep 2022 15:33:00 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 92FB810E63F;
	Mon, 19 Sep 2022 13:32:50 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from szxga01-in.huawei.com (szxga01-in.huawei.com [45.249.212.187])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 9F08C10E4EF;
 Tue, 13 Sep 2022 02:48:55 +0000 (UTC)
Received: from kwepemi500012.china.huawei.com (unknown [172.30.72.55])
 by szxga01-in.huawei.com (SkyGuard) with ESMTP id 4MRSX44NdYznVGq;
 Tue, 13 Sep 2022 10:46:12 +0800 (CST)
Received: from cgs.huawei.com (10.244.148.83) by
 kwepemi500012.china.huawei.com (7.221.188.12) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2375.24; Tue, 13 Sep 2022 10:48:51 +0800
From: Gaosheng Cui <cuigaosheng1@huawei.com>
To: <evan.quan@amd.com>, <alexander.deucher@amd.com>,
 <christian.koenig@amd.com>, <Xinhui.Pan@amd.com>, <airlied@linux.ie>,
 <daniel@ffwll.ch>, <patrik.r.jakobsson@gmail.com>,
 <jani.nikula@linux.intel.com>, <joonas.lahtinen@linux.intel.com>,
 <rodrigo.vivi@intel.com>, <tvrtko.ursulin@linux.intel.com>,
 <zackr@vmware.com>, <linux-graphics-maintainer@vmware.com>,
 <lijo.lazar@amd.com>, <matthew.brost@intel.com>, <John.C.Harrison@Intel.com>, 
 <daniele.ceraolospurio@intel.com>, <cuigaosheng1@huawei.com>
Date: Tue, 13 Sep 2022 10:48:46 +0800
Message-ID: <20220913024847.552254-6-cuigaosheng1@huawei.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20220913024847.552254-1-cuigaosheng1@huawei.com>
References: <20220913024847.552254-1-cuigaosheng1@huawei.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Content-Type: text/plain
X-Originating-IP: [10.244.148.83]
X-ClientProxiedBy: dggems706-chm.china.huawei.com (10.3.19.183) To
 kwepemi500012.china.huawei.com (7.221.188.12)
X-CFilter-Loop: Reflected
X-Mailman-Approved-At: Mon, 19 Sep 2022 13:29:09 +0000
Subject: [Intel-gfx] [PATCH 5/6] drm/amd/pm: remove unused declarations in
 hardwaremanager.h
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

phm_is_hw_access_blocked() and phm_block_hw_access() has been
removed since commit 698f88e697cc ("drm/amd/powerplay: delete
dead code in powerplay"), so remove them.

Signed-off-by: Gaosheng Cui <cuigaosheng1@huawei.com>
---
 drivers/gpu/drm/amd/pm/powerplay/inc/hardwaremanager.h | 2 --
 1 file changed, 2 deletions(-)

diff --git a/drivers/gpu/drm/amd/pm/powerplay/inc/hardwaremanager.h b/drivers/gpu/drm/amd/pm/powerplay/inc/hardwaremanager.h
index 6e0be6027705..01a7d66864f2 100644
--- a/drivers/gpu/drm/amd/pm/powerplay/inc/hardwaremanager.h
+++ b/drivers/gpu/drm/amd/pm/powerplay/inc/hardwaremanager.h
@@ -401,8 +401,6 @@ extern int phm_powerdown_uvd(struct pp_hwmgr *hwmgr);
 extern int phm_setup_asic(struct pp_hwmgr *hwmgr);
 extern int phm_enable_dynamic_state_management(struct pp_hwmgr *hwmgr);
 extern int phm_disable_dynamic_state_management(struct pp_hwmgr *hwmgr);
-extern bool phm_is_hw_access_blocked(struct pp_hwmgr *hwmgr);
-extern int phm_block_hw_access(struct pp_hwmgr *hwmgr, bool block);
 extern int phm_set_power_state(struct pp_hwmgr *hwmgr,
 		    const struct pp_hw_power_state *pcurrent_state,
 		 const struct pp_hw_power_state *pnew_power_state);
-- 
2.25.1

