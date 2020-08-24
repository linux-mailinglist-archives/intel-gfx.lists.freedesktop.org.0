Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 44D0324FBB9
	for <lists+intel-gfx@lfdr.de>; Mon, 24 Aug 2020 12:42:03 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 8E5046E1D6;
	Mon, 24 Aug 2020 10:42:01 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga04.intel.com (mga04.intel.com [192.55.52.120])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 158426E1D7
 for <intel-gfx@lists.freedesktop.org>; Mon, 24 Aug 2020 10:42:00 +0000 (UTC)
IronPort-SDR: IwO2WZCluA4JiHa034LB6L5wOB1uij4W/8pH5/uuy7otu2+JJeYMK1f6qvYUAqTmFYUvKTycVy
 fb7y800PtWog==
X-IronPort-AV: E=McAfee;i="6000,8403,9722"; a="153285912"
X-IronPort-AV: E=Sophos;i="5.76,348,1592895600"; d="scan'208";a="153285912"
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga005.jf.intel.com ([10.7.209.41])
 by fmsmga104.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 24 Aug 2020 03:41:59 -0700
IronPort-SDR: afX54lFYX1v9+g3HwEAnDCbTx8Ciaq7LWZ9LGZ1KHIke4fiXjWmpGy0uo6LOyMfg81ug5xABl1
 R77C5Q6G1S+w==
X-IronPort-AV: E=Sophos;i="5.76,348,1592895600"; d="scan'208";a="473869541"
Received: from unknown (HELO john.iind.intel.com) ([10.223.74.105])
 by orsmga005-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-SHA;
 24 Aug 2020 03:41:58 -0700
From: Nischal Varide <nischal.varide@intel.com>
To: intel-gfx@lists.freedesktop.org,
	nischal.varide@intel.com
Date: Mon, 24 Aug 2020 09:15:56 +0530
Message-Id: <20200824034556.26626-5-nischal.varide@intel.com>
X-Mailer: git-send-email 2.26.0
In-Reply-To: <20200824034556.26626-1-nischal.varide@intel.com>
References: <20200824034556.26626-1-nischal.varide@intel.com>
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH 5/5] Fixing a Possible Null Pointer Dereference.
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

Fixing a Possible Null Pointer Dereference in intel_crt.c.
Introduced a Null Check for dev_priv pointer before dereferencing.

Signed-off-by: Nischal Varide <nischal.varide@intel.com>
---
 drivers/gpu/drm/i915/display/intel_crt.c | 3 +++
 1 file changed, 3 insertions(+)

diff --git a/drivers/gpu/drm/i915/display/intel_crt.c b/drivers/gpu/drm/i915/display/intel_crt.c
index 5b4510ce5693..b5777fdc8cac 100644
--- a/drivers/gpu/drm/i915/display/intel_crt.c
+++ b/drivers/gpu/drm/i915/display/intel_crt.c
@@ -504,6 +504,9 @@ static bool valleyview_crt_detect_hotplug(struct drm_connector *connector)
 	bool ret;
 	u32 save_adpa;
 
+	if (!(dev_priv))
+		return false;
+
 	/*
 	 * Doing a force trigger causes a hpd interrupt to get sent, which can
 	 * get us stuck in a loop if we're polling:
-- 
2.26.0

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
