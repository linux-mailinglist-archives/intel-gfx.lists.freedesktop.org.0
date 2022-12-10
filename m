Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 1899B648C9B
	for <lists+intel-gfx@lfdr.de>; Sat, 10 Dec 2022 04:01:38 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id EB7F210E093;
	Sat, 10 Dec 2022 03:01:25 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga06.intel.com (mga06b.intel.com [134.134.136.31])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 7A83010E095
 for <intel-gfx@lists.freedesktop.org>; Sat, 10 Dec 2022 03:01:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1670641282; x=1702177282;
 h=from:to:subject:date:message-id:in-reply-to:references:
 mime-version:content-transfer-encoding;
 bh=psLQMBN9RJ6I6tkztN4fJna7e73DXB/nrcPlYsWXBSU=;
 b=XoKrCkEWqA7ZSjPNtxMRyQd3q1kIyGUKpeyN+h5yzhF9x7sHtKvK0BEV
 kYmZBVBnugQcffH0OM2/Wdnh0ssUdSSHVApaqwtdehqBQmBuV10O8SnXK
 ZX4/MEkmR5sNYvNJCzLebUrIssIJbDSCrLe8ZsbHmk+flRHGrZvXR+buv
 aD4O+Dt5rk2p83N8CJwnRZImkIASXw8hVHvmjljDeRvE5dJfCfWhiqoG6
 UwGYuHmHjYoViFPEHZVTR19qGlqnfrL2H0R6vOR+C706vTiScIdGBe9ZJ
 VAOeSe/QLms9Vja15bdaXuLWuMGMokPTxYdLD46RETt9NFcIdlK9Cbm2I A==;
X-IronPort-AV: E=McAfee;i="6500,9779,10556"; a="379800537"
X-IronPort-AV: E=Sophos;i="5.96,232,1665471600"; d="scan'208";a="379800537"
Received: from orsmga003.jf.intel.com ([10.7.209.27])
 by orsmga104.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 09 Dec 2022 19:01:20 -0800
X-IronPort-AV: E=McAfee;i="6500,9779,10556"; a="597914727"
X-IronPort-AV: E=Sophos;i="5.96,232,1665471600"; d="scan'208";a="597914727"
Received: from unerlige-desk.jf.intel.com ([10.165.21.199])
 by orsmga003-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 09 Dec 2022 19:01:20 -0800
From: Umesh Nerlige Ramappa <umesh.nerlige.ramappa@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Fri,  9 Dec 2022 19:01:16 -0800
Message-Id: <20221210030116.1777214-5-umesh.nerlige.ramappa@intel.com>
X-Mailer: git-send-email 2.38.1
In-Reply-To: <20221210030116.1777214-1-umesh.nerlige.ramappa@intel.com>
References: <20221210030116.1777214-1-umesh.nerlige.ramappa@intel.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH v3 4/4] drm/i915/mtl: Add OA support by enabling
 32 bit OAG formats for MTL
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

Without an entry in oa_init_supported_formats, OA will not be functional
in MTL. Enable OA support by enabling 32 bit OAG formats for MTL.

Mesa MR: https://gitlab.freedesktop.org/mesa/mesa/-/merge_requests/20228

Signed-off-by: Umesh Nerlige Ramappa <umesh.nerlige.ramappa@intel.com>
Reviewed-by: Ashutosh Dixit <ashutosh.dixit@intel.com>
---
 drivers/gpu/drm/i915/i915_perf.c | 1 +
 1 file changed, 1 insertion(+)

diff --git a/drivers/gpu/drm/i915/i915_perf.c b/drivers/gpu/drm/i915/i915_perf.c
index 41f6c0923ba5..824a34ec0b83 100644
--- a/drivers/gpu/drm/i915/i915_perf.c
+++ b/drivers/gpu/drm/i915/i915_perf.c
@@ -4776,6 +4776,7 @@ static void oa_init_supported_formats(struct i915_perf *perf)
 		break;
 
 	case INTEL_DG2:
+	case INTEL_METEORLAKE:
 		oa_format_add(perf, I915_OAR_FORMAT_A32u40_A4u32_B8_C8);
 		oa_format_add(perf, I915_OA_FORMAT_A24u40_A14u32_B8_C8);
 		break;
-- 
2.38.1

