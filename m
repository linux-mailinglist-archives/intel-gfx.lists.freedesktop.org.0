Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 4705E74F390
	for <lists+intel-gfx@lfdr.de>; Tue, 11 Jul 2023 17:34:31 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 64A9710E3C1;
	Tue, 11 Jul 2023 15:34:29 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
 by gabe.freedesktop.org (Postfix) with ESMTPS id EC2B110E3C1
 for <intel-gfx@lists.freedesktop.org>; Tue, 11 Jul 2023 15:34:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1689089667; x=1720625667;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=ZzDy4BqRqahz1hms3pm/oVyzSi9ypirlg4ISwGgAlHE=;
 b=C1kNlm/Lm3jbV33VWqKJ7IuUH/QoQj6RVJNh12VdacaBf4WrWne+Iy9B
 jXeWDXxrjg6zMCZc4L5BGCCfeGNdlAAlfcEQHyOYtFIagWRi2qTA7VCMc
 yNgU5/zxfzmIM0SLEdJHuGSHVmj+peNVgko442vHisRhvRaFXmgARhWyU
 881I1LI4huycdV4GNSUTFgQyiF8/XK4ka/omZpOWl7SGteyK7A8OTfDg3
 9ANgroZZxD2ej711HiEy8426EVhbCVlucLGesadsAwOU944/ESMsFMTMH
 fg6ViXup9GIonkwsPcobjN5k3H91bN6xBuxgduTBpCM5hZtwh+byRJ09t A==;
X-IronPort-AV: E=McAfee;i="6600,9927,10768"; a="395437827"
X-IronPort-AV: E=Sophos;i="6.01,196,1684825200"; d="scan'208";a="395437827"
Received: from orsmga003.jf.intel.com ([10.7.209.27])
 by fmsmga101.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 11 Jul 2023 08:34:26 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10768"; a="671409391"
X-IronPort-AV: E=Sophos;i="6.01,196,1684825200"; d="scan'208";a="671409391"
Received: from lab-ah.igk.intel.com (HELO lab-ah.corp.intel.com)
 ([10.102.138.202])
 by orsmga003-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 11 Jul 2023 08:34:24 -0700
From: Andrzej Hajda <andrzej.hajda@intel.com>
To: intel-gfx@lists.freedesktop.org,
 Lionel Landwerlin <lionel.g.landwerlin@intel.com>
Date: Tue, 11 Jul 2023 17:34:10 +0200
Message-Id: <20230711153410.1224997-1-andrzej.hajda@intel.com>
X-Mailer: git-send-email 2.34.1
MIME-Version: 1.0
Organization: Intel Technology Poland sp. z o.o. - ul. Slowackiego 173,
 80-298 Gdansk - KRS 101882 - NIP 957-07-52-316
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH] drm/i915/perf: add sentinel to
 xehp_oa_b_counters
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
Cc: Chris Wilson <chris.p.wilson@intel.com>,
 Andrzej Hajda <andrzej.hajda@intel.com>, Nirmoy Das <nirmoy.das@intel.com>
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

Arrays passed to reg_in_range_table should end with empty record.

The patch solves KASAN detected bug with signature:
BUG: KASAN: global-out-of-bounds in xehp_is_valid_b_counter_addr+0x2c7/0x350 [i915]
Read of size 4 at addr ffffffffa1555d90 by task perf/1518

CPU: 4 PID: 1518 Comm: perf Tainted: G U 6.4.0-kasan_438-g3303d06107f3+ #1
Hardware name: Intel Corporation Meteor Lake Client Platform/MTL-P DDR5 SODIMM SBS RVP, BIOS MTLPFWI1.R00.3223.D80.2305311348 05/31/2023
Call Trace:
<TASK>
...
xehp_is_valid_b_counter_addr+0x2c7/0x350 [i915]

Fixes: 0fa9349dda030f ("drm/i915/perf: complete programming whitelisting for XEHPSDV")
Signed-off-by: Andrzej Hajda <andrzej.hajda@intel.com>
---
 drivers/gpu/drm/i915/i915_perf.c | 1 +
 1 file changed, 1 insertion(+)

diff --git a/drivers/gpu/drm/i915/i915_perf.c b/drivers/gpu/drm/i915/i915_perf.c
index 7413c11fb562e9..49c6f1ff11284f 100644
--- a/drivers/gpu/drm/i915/i915_perf.c
+++ b/drivers/gpu/drm/i915/i915_perf.c
@@ -4431,6 +4431,7 @@ static const struct i915_range mtl_oam_b_counters[] = {
 static const struct i915_range xehp_oa_b_counters[] = {
 	{ .start = 0xdc48, .end = 0xdc48 },	/* OAA_ENABLE_REG */
 	{ .start = 0xdd00, .end = 0xdd48 },	/* OAG_LCE0_0 - OAA_LENABLE_REG */
+	{}
 };
 
 static const struct i915_range gen7_oa_mux_regs[] = {
-- 
2.34.1

