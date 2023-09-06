Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 2DE46793B4D
	for <lists+intel-gfx@lfdr.de>; Wed,  6 Sep 2023 13:31:41 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 5B48510E5F6;
	Wed,  6 Sep 2023 11:31:39 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.55.52.151])
 by gabe.freedesktop.org (Postfix) with ESMTPS id B2AE310E5F6
 for <intel-gfx@lists.freedesktop.org>; Wed,  6 Sep 2023 11:31:37 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1693999897; x=1725535897;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=PTJafzD+gdOLYsgr4xHg9IhiDnB3QTVMKopUBeLYqWs=;
 b=mSbHjyEGBuXwXeIiMHfa25c6mXrjSwrNjLoHhs4DWfrJAt6nzAYT5K0n
 PZV5vSG74Ha64qAQShfpkZuxm21ducbEP1OS8FMiwBVTQXXZcA1jhD2GU
 cNGRj0YSbSme0bXfCssuJ07ZpjLHPnsP0QxsFqn0JbZmXA/vflKmVZlf/
 Bd3h8KKtJuIKvKFlpQRFIKQRIU2REroLSJOfUo+l8TqqSDPaqX5tpYtQy
 ieElMZX5BgRt4+GzLW9DIYN1H7bhhAV2i04Wh1ex36cPqW0BTwxCwqCtF
 IDAXHl3IOIx/5OlYulOf5z/FBoTbMUHtC+atGHAkVJDkYa2PLctuZboZD Q==;
X-IronPort-AV: E=McAfee;i="6600,9927,10824"; a="357353602"
X-IronPort-AV: E=Sophos;i="6.02,231,1688454000"; d="scan'208";a="357353602"
Received: from orsmga004.jf.intel.com ([10.7.209.38])
 by fmsmga107.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 06 Sep 2023 04:31:37 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10824"; a="865109451"
X-IronPort-AV: E=Sophos;i="6.02,231,1688454000"; d="scan'208";a="865109451"
Received: from nirmoyda-desk.igk.intel.com ([10.102.138.190])
 by orsmga004-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 06 Sep 2023 04:31:35 -0700
From: Nirmoy Das <nirmoy.das@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Wed,  6 Sep 2023 13:31:19 +0200
Message-ID: <20230906113121.30472-4-nirmoy.das@intel.com>
X-Mailer: git-send-email 2.41.0
In-Reply-To: <20230906113121.30472-1-nirmoy.das@intel.com>
References: <20230906113121.30472-1-nirmoy.das@intel.com>
MIME-Version: 1.0
Organization: Intel Deutschland GmbH, Registered Address: Am Campeon 10,
 85579 Neubiberg, Germany,
 Commercial Register: Amtsgericht Muenchen HRB 186928 
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH 3/5] drm/i915: Implement
 __for_each_sgt_daddr_next
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
Cc: andi.shyti@intel.com, chris.p.wilson@linux.intel.com,
 matthew.d.roper@intel.com, Nirmoy Das <nirmoy.das@intel.com>
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

Implement a way to iterate over sgt with pre-initialized
sgt_iter state.

Signed-off-by: Nirmoy Das <nirmoy.das@intel.com>
---
 drivers/gpu/drm/i915/i915_scatterlist.h | 10 ++++++++++
 1 file changed, 10 insertions(+)

diff --git a/drivers/gpu/drm/i915/i915_scatterlist.h b/drivers/gpu/drm/i915/i915_scatterlist.h
index 5a10c1a31183..6cf8a298849f 100644
--- a/drivers/gpu/drm/i915/i915_scatterlist.h
+++ b/drivers/gpu/drm/i915/i915_scatterlist.h
@@ -91,6 +91,16 @@ static inline struct scatterlist *__sg_next(struct scatterlist *sg)
 	     ((__dp) = (__iter).dma + (__iter).curr), (__iter).sgp;	\
 	     (((__iter).curr += (__step)) >= (__iter).max) ?		\
 	     (__iter) = __sgt_iter(__sg_next((__iter).sgp), true), 0 : 0)
+/**
+ * __for_each_daddr_next - iterates over the device addresses with pre-initialized iterator.
+ * @__dp:	Device address (output)
+ * @__iter:	'struct sgt_iter' (iterator state, external)
+ * @__step:	step size
+ */
+#define __for_each_daddr_next(__dp, __iter, __step)                  \
+	for (; ((__dp) = (__iter).dma + (__iter).curr), (__iter).sgp;   \
+	     (((__iter).curr += (__step)) >= (__iter).max) ?            \
+	     (__iter) = __sgt_iter(__sg_next((__iter).sgp), true), 0 : 0)
 
 /**
  * for_each_sgt_page - iterate over the pages of the given sg_table
-- 
2.41.0

