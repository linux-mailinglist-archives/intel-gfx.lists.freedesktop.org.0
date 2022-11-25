Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 5015263A647
	for <lists+intel-gfx@lfdr.de>; Mon, 28 Nov 2022 11:41:53 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id D5F7910E1F2;
	Mon, 28 Nov 2022 10:41:49 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga18.intel.com (mga18.intel.com [134.134.136.126])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 3D32410E1F2
 for <intel-gfx@lists.freedesktop.org>; Mon, 28 Nov 2022 10:41:45 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6500,9779,10544"; a="298157260"
X-IronPort-AV: E=Sophos;i="5.96,200,1665471600"; d="scan'208";a="298157260"
Received: from orsmga001.jf.intel.com ([10.7.209.18])
 by orsmga106.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 28 Nov 2022 02:41:44 -0800
X-IronPort-AV: E=McAfee;i="6500,9779,10544"; a="676003539"
X-IronPort-AV: E=Sophos;i="5.96,200,1665471600"; d="scan'208";a="676003539"
Received: from mmustafa-mobl1.ger.corp.intel.com (HELO localhost)
 ([10.252.51.239])
 by orsmga001-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 28 Nov 2022 02:41:43 -0800
Resent-Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7,
 02160 Espoo
Resent-To: intel-gfx@lists.freedesktop.org
Resent-From: Jani Nikula <jani.nikula@intel.com>
Resent-Date: Mon, 28 Nov 2022 12:41:40 +0200
Resent-Message-ID: <87o7sr4azf.fsf@intel.com>
X-Original-To: jani.nikula@linux.intel.com
Received: from linux.intel.com [10.54.29.200]
 by jnikula-mobl4.ger.corp.intel.com with IMAP (fetchmail-6.4.29)
 for <jani@localhost> (single-drop); Fri, 25 Nov 2022 10:14:51 +0200 (EET)
Received: from FMSMGA003.fm.intel.com (fmsmga003.fm.intel.com [10.253.24.29])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256
 bits)) (No client certificate requested)
 by linux.intel.com (Postfix) with ESMTPS id 87C03580AFF;
 Thu, 24 Nov 2022 22:37:44 -0800 (PST)
X-IronPort-AV: E=McAfee;i="6500,9779,10541"; a="731344614"
X-IronPort-AV: E=Sophos;i="5.96,192,1665471600"; d="scan'208";a="731344614"
Received: from fmsmga101.fm.intel.com ([10.1.193.65])
 by FMSMGA003-1.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 24
 Nov 2022 22:37:44 -0800
Authentication-Results: mga01b.intel.com; dkim=none (message not signed)
 header.i=none; spf=None smtp.pra=xiafukun@huawei.com; spf=Pass
 smtp.mailfrom=xiafukun@huawei.com; spf=None
 smtp.helo=postmaster@szxga01-in.huawei.com; dmarc=pass (p=quarantine
 dis=none) d=huawei.com
IronPort-SDR: 638062b7_oWYtgKarXeREYRwSbadmDnR7h1mGk2sn1n9HVGxhyFaFy52
 Dr6feP7We0p7UKAyWp/SMsMQ1+vmKaxw+rTVJAg==
X-IPAS-Result: =?us-ascii?q?A0EeAAAFYoBjh7vU+S1aHAEBAQEBAQcBARIBAQQEAQGBe?=
 =?us-ascii?q?wcBAQsBgiyBWS8EC0UXjFegWIVXgX4PAQEBAQEBAQEBCAFEBAEBhQWFCQIdB?=
 =?us-ascii?q?wEEMAkNAQECAwEBAQEBAwIBAgEBAQEBAQMBAQECAgEBAQIBAQIEAgEBAQECE?=
 =?us-ascii?q?AEBAQEYCRcHDhAFIoV1gjUihDRSgT4BDQWCfYMjAwWvYjOBAYIUAwICnTuBZ?=
 =?us-ascii?q?4FAAYtNhWkcgUlEgRWDaIQLhncEmGk3AwkDBwUsHUADCxgNFjIKEzcbWA4JH?=
 =?us-ascii?q?xYGJQ0FBhIDIEYmBQc6DygvZyIJHBsHgQwqCR8VAwQEAwIGEwMiAg0pMRQEK?=
 =?us-ascii?q?RMNKydvCQIDIWoDAwQoLAMJIR8HJyQ8B1YSKAUDAg8gOAYDCQMCJBNDdAolE?=
 =?us-ascii?q?hQFAwsVJQgFSwQIOQUGUhICChEDEg8qRQ5IPjkWBidCATEODhQDXUodgQEEg?=
 =?us-ascii?q?iYKMS+ZcoMvgQ4UgWmWao1JnHqCM4NygU4MnmEaMqkXAS2HHo9pIKMHhCgCB?=
 =?us-ascii?q?AIEBQIWgWI6gVxNIxWDIk8DFwIPjiwNCY1xAUk3MTsCBwsBAQMJiAmBRYEUA?=
 =?us-ascii?q?QE?=
IronPort-PHdr: A9a23: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
IronPort-Data: A9a23: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
IronPort-HdrOrdr: A9a23:gpPOY69TmnYHr64uiRhuk+DaI+orL9Y04lQ7vn2YSXRuHfBw9v
 re+cjzuiWUtN98YhwdcLO7Scu9qBHnlaKdiLN5VdzJYOCMggWVxe9ZgbcLH1XbakvDHrk379
 YGT0EHMqySMbEst7ef3DWF
X-IronPort-Anti-Spam-Filtered: true
X-IronPort-AV: E=McAfee;i="6500,9779,10541"; a="341324107"
X-IronPort-AV: E=Sophos;i="5.96,192,1665471600"; d="scan'208";a="341324107"
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from szxga01-in.huawei.com ([45.249.212.187])
 by mga01b.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 24 Nov
 2022 22:37:41 -0800
Received: from kwepemi500009.china.huawei.com (unknown [172.30.72.57])
 by szxga01-in.huawei.com (SkyGuard) with ESMTP id 4NJQ6q5fFczqSdm;
 Fri, 25 Nov 2022 14:33:39 +0800 (CST)
Received: from huawei.com (10.67.175.85) by kwepemi500009.china.huawei.com
 (7.221.188.199) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id 15.1.2375.31; Fri, 25 Nov
 2022 14:37:36 +0800
From: Xia Fukun <xiafukun@huawei.com>
To: <jani.nikula@linux.intel.com>, <airlied@gmail.com>, <daniel@ffwll.ch>,
 <ville.syrjala@linux.intel.com>, <lucas.demarchi@intel.com>,
 <joonas.lahtinen@linux.intel.com>
Date: Fri, 25 Nov 2022 14:34:28 +0800
Message-ID: <20221125063428.69486-1-xiafukun@huawei.com>
X-Mailer: git-send-email 2.17.1
MIME-Version: 1.0
Content-Type: text/plain
X-Originating-IP: [10.67.175.85]
X-ClientProxiedBy: dggems703-chm.china.huawei.com (10.3.19.180) To
 kwepemi500009.china.huawei.com (7.221.188.199)
X-CFilter-Loop: Reflected
Subject: [Intel-gfx] [PATCH] drm/i915/bios: fix a memory leak in
 generate_lfp_data_ptrs
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
Cc: intel-gfx@lists.freedesktop.org, linux-kernel@vger.kernel.org,
 dri-devel@lists.freedesktop.org, rodrigo.vivi@intel.com, xiafukun@huawei.com
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

When (size != 0 || ptrs->lvds_ entries != 3), the program tries to
free() the ptrs. However, the ptrs is not created by calling kzmalloc(),
but is obtained by pointer offset operation.
This may lead to memory leaks or undefined behavior.

Fix this by replacing the arguments of kfree() with ptrs_block.

Fixes: a87d0a847607 ("drm/i915/bios: Generate LFP data table pointers if the VBT lacks them")
Signed-off-by: Xia Fukun <xiafukun@huawei.com>
---
 drivers/gpu/drm/i915/display/intel_bios.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/gpu/drm/i915/display/intel_bios.c b/drivers/gpu/drm/i915/display/intel_bios.c
index 28bdb936cd1f..edbdb949b6ce 100644
--- a/drivers/gpu/drm/i915/display/intel_bios.c
+++ b/drivers/gpu/drm/i915/display/intel_bios.c
@@ -414,7 +414,7 @@ static void *generate_lfp_data_ptrs(struct drm_i915_private *i915,
 		ptrs->lvds_entries++;
 
 	if (size != 0 || ptrs->lvds_entries != 3) {
-		kfree(ptrs);
+		kfree(ptrs_block);
 		return NULL;
 	}
 
-- 
2.17.1

