Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 6B896A2EB89
	for <lists+intel-gfx@lfdr.de>; Mon, 10 Feb 2025 12:41:08 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id F0BA610E192;
	Mon, 10 Feb 2025 11:41:05 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (1024-bit key; unprotected) header.d=163.com header.i=@163.com header.b="ZBrylQWG";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.9])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 96A8C10E192
 for <intel-gfx@lists.freedesktop.org>; Mon, 10 Feb 2025 11:41:04 +0000 (UTC)
X-CSE-ConnectionGUID: RkJMrVQbRuqKnZaGbRR4MA==
X-CSE-MsgGUID: wPiu8lc8QPqf3r+oVKA50w==
X-IronPort-AV: E=McAfee;i="6700,10204,11340"; a="62239063"
X-IronPort-AV: E=Sophos;i="6.13,274,1732608000"; d="scan'208";a="62239063"
Received: from fmviesa005.fm.intel.com ([10.60.135.145])
 by orvoesa101.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 10 Feb 2025 03:41:04 -0800
X-CSE-ConnectionGUID: LUaqxoMESt2zzmruBl+44g==
X-CSE-MsgGUID: uclIur9oRI++gav4lDEMqw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.12,224,1728975600"; d="scan'208";a="116758880"
Received: from iklimasz-mobl1.ger.corp.intel.com (HELO localhost)
 ([10.245.246.244])
 by fmviesa005-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 10 Feb 2025 03:41:02 -0800
Resent-Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7,
 02160 Espoo
Resent-To: intel-gfx@lists.freedesktop.org
Resent-From: Jani Nikula <jani.nikula@intel.com>
Resent-Date: Mon, 10 Feb 2025 13:40:59 +0200
Resent-Message-ID: <87ldue3u44.fsf@intel.com>
X-Original-To: jani.nikula@linux.intel.com
Received: from fmviesa003.fm.intel.com (fmviesa003.fm.intel.com
 [10.60.135.143])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by linux.intel.com (Postfix) with ESMTPS id BE36920B5713
 for <jani.nikula@linux.intel.com>; Fri,  7 Feb 2025 17:35:48 -0800 (PST)
X-CSE-ConnectionGUID: ULKveAF8QXeRZn4b6QC6Cw==
X-CSE-MsgGUID: zG4MNRgQTwGrWPBPyAZZIQ==
X-IronPort-AV: E=Sophos;i="6.12,224,1728975600"; d="scan'208";a="115761330"
Received: from orvoesa104.jf.intel.com ([10.18.183.144])
 by fmviesa003-1.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 07 Feb 2025 17:35:48 -0800
X-CSE-ConnectionGUID: vwBf+LYURhq94iO0fAdJ/g==
X-CSE-MsgGUID: QV7oGN99SD+yLiq8Lv7U+A==
Authentication-Results: mtab.intel.com; spf=None
 smtp.pra=l1138897701@163.com; spf=Pass smtp.mailfrom=l1138897701@163.com;
 spf=None smtp.helo=postmaster@m16.mail.163.com; dkim=pass (signature
 verified) header.i=@163.com; dmarc=pass (p=none dis=none) d=163.com
IronPort-SDR: 67a6b4f3_hjSuZDwiTRp12XFnXnQ9FhxomPAPA7fwUs/Hn3TM7nsN6RF
 8DH51Ht7TiR7IVVnX3IC1P+FYd97jnRd9FzWNww==
X-ThreatScanner-Verdict: Negative
X-IPAS-Result: =?us-ascii?q?A0EMAADMs6ZngwLSh3VaGwEBAQEBAQEBBQEBARIBAQEDA?=
 =?us-ascii?q?wEBAYF/BgEBAQsBbIFXgVczBAtIHYxWijSKaDCHU4pLgX4PAQEBAQEBAQEBS?=
 =?us-ascii?q?wIEAQEDBDcBhEiLBgIeBwEEMAkNAQECAQIBAQEBAQMCAQIBAQEBAQEBAQENA?=
 =?us-ascii?q?QEBAgIBAQECAQECBAMBAQEBAhABAQE6Bw47hXsNgluBLIEmAQEBAQEBAQEBA?=
 =?us-ascii?q?QEBAQEBAQEBFwJHRjYBDQEBNwEvgSCDAoIwAQMxAgazQYEBggwBAQYEBQHaU?=
 =?us-ascii?q?gFKBIEMgU4JgUgBjUpwgkiCVoIoglCCLYUQhXeCM4FAMIM/iwSYfkiBIQNZL?=
 =?us-ascii?q?AFVEw0KCwcFgXEDNQwLMBV3T0Q3gkdpSToCDQI1Z4E3fIIrhFmEQ4RNhVqCE?=
 =?us-ascii?q?osoQAMLGA1IESw3FBsGPm4HngQ8hByBDoEgHYI9AQEBkWeSTKEGAQYCaaR6T?=
 =?us-ascii?q?ZdPkwIBLphOpEiGTTqBXHCBboFJTwMXAg+OIRmDYcYdNjU8AgcLAQEDCYVpi?=
 =?us-ascii?q?lAuAYEcAQE?=
IronPort-PHdr: A9a23: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
 IFetqzp8bH1jhqeJsDifudt9A==
IronPort-Data: A9a23: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
 Q==
IronPort-HdrOrdr: A9a23:jAN07KxUMqCOtFEe/ETRKrPwEL1zdoMgy1knxilNoNJuHfBw8P
 re+cjzsCWetN9/YhAdcLy7VZVoIkmsl6Kdn7NwAV7KZmCP0ldAR7sN0WKN+VHd86SSzJ8l6U
 9THpIObOEZzzVB/KHHCXGDYrUdKY68gcaVuds=
X-Talos-CUID: 9a23:4XPNyWB96VfP1gX6Ezd43kBXPvEYSH3EnSvRBBe2IGpLD7LAHA==
X-Talos-MUID: =?us-ascii?q?9a23=3A/OBhIw2XPK2Hg+WWf7TbNF0xZjUj2prxD28rwMQ?=
 =?us-ascii?q?9l4qVES1paxOD0wn0a9py?=
X-IronPort-Anti-Spam-Filtered: true
X-IronPort-AV: E=McAfee;i="6700,10204,11338"; a="51018615"
X-IronPort-AV: E=Sophos;i="6.13,268,1732608000"; d="scan'208";a="51018615"
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from m16.mail.163.com ([117.135.210.2])
 by mtab.intel.com with ESMTP; 07 Feb 2025 17:35:46 -0800
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=163.com;
 s=s110527; h=From:Subject:Date:Message-Id:MIME-Version; bh=b3YhI
 mgTWo7bwbjWqGJhVMij887Z3UsLMvLi21YCkpA=; b=ZBrylQWGd10UEVgIK7fLq
 b87r5ukudgOoaB1xL/F6jkth455HhOXlKY7pLgJxoE9E9A6ZHsczY+oP1g9EVTJd
 v2J7D+tP7eIhdfyBH+jzumh2OSG0/VMDMPRGLpSb6ihSWaalZ07M4eNZqw/NvTvF
 IDm3SVRHKpuKLPRuFCMYc0=
Received: from localhost.localdomain (unknown [])
 by gzga-smtp-mtada-g1-0 (Coremail) with SMTP id
 _____wDnd+_stKZnH3VRKw--.60201S2;
 Sat, 08 Feb 2025 09:35:40 +0800 (CST)
From: l1138897701@163.com
To: jani.nikula@linux.intel.com
Cc: luoqing@kylinos.cn,
	linux-kernel@vger.kernel.org
Subject: [PATCH] selftests: i915: Use struct_size() helper in kmalloc()
Date: Sat,  8 Feb 2025 09:35:39 +0800
Message-Id: <20250208013539.3586855-1-l1138897701@163.com>
X-Mailer: git-send-email 2.27.0
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CM-TRANSID: _____wDnd+_stKZnH3VRKw--.60201S2
X-Coremail-Antispam: 1Uf129KBjvdXoWrZw18tw4DZFyUXw43XF4DCFg_yoWDWFcEkr
 WUZr97CrsxZanYkr47Gw1rZFy29w17AFWSg3Wxt34Sk347Xr4fuayDuFy2qwn7XFW3CFZx
 ZwsruFySqr9xGjkaLaAFLSUrUUUUjb8apTn2vfkv8UJUUUU8Yxn0WfASr-VFAUDa7-sFnT
 9fnUUvcSsGvfC2KfnxnUUI43ZEXa7IUUs2-3UUUUU==
X-Originating-IP: [116.128.244.169]
X-CM-SenderInfo: jorrjmiyzxliqr6rljoofrz/1tbiKADtRGemp4+4VwAAsH
X-TUID: GnSXJVNVHRV8
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

From: luoqing <luoqing@kylinos.cn>

Make use of the struct_size() helper instead of an open-coded version,
in order to avoid any potential type mistakes or integer overflows that,
in the worst scenario, could lead to heap overflows.

Signed-off-by: luoqing <luoqing@kylinos.cn>
---
 drivers/gpu/drm/i915/gem/selftests/mock_dmabuf.c | 3 +--
 1 file changed, 1 insertion(+), 2 deletions(-)

diff --git a/drivers/gpu/drm/i915/gem/selftests/mock_dmabuf.c b/drivers/gpu/drm/i915/gem/selftests/mock_dmabuf.c
index 075657018739..5cd58e0f0dcf 100644
--- a/drivers/gpu/drm/i915/gem/selftests/mock_dmabuf.c
+++ b/drivers/gpu/drm/i915/gem/selftests/mock_dmabuf.c
@@ -103,8 +103,7 @@ static struct dma_buf *mock_dmabuf(int npages)
 	struct dma_buf *dmabuf;
 	int i;
 
-	mock = kmalloc(sizeof(*mock) + npages * sizeof(struct page *),
-		       GFP_KERNEL);
+	mock = kmalloc(struct_size(mock, pages, npages), GFP_KERNEL);
 	if (!mock)
 		return ERR_PTR(-ENOMEM);
 
-- 
2.27.0

