Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id ECF83249BCE
	for <lists+intel-gfx@lfdr.de>; Wed, 19 Aug 2020 13:30:57 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id ECCC389C28;
	Wed, 19 Aug 2020 11:30:55 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga17.intel.com (mga17.intel.com [192.55.52.151])
 by gabe.freedesktop.org (Postfix) with ESMTPS id B10A789C18
 for <intel-gfx@lists.freedesktop.org>; Wed, 19 Aug 2020 11:30:52 +0000 (UTC)
IronPort-SDR: CY+HPyQ1Jy+CipA6BRJFy+5OJQJA8tKMtpvF9G7qorOQRnhNRfUP6XYPHO5BO9AHaA479WzkbF
 G3LA6HmI7AMQ==
X-IronPort-AV: E=McAfee;i="6000,8403,9717"; a="135157586"
X-IronPort-AV: E=Sophos;i="5.76,331,1592895600"; d="scan'208";a="135157586"
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga005.jf.intel.com ([10.7.209.41])
 by fmsmga107.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 19 Aug 2020 04:30:52 -0700
IronPort-SDR: ZVQjTUwL0XW3K+xN5W0lSI/E3UZlbyaVN/hq14t4KbvC6niz3DUzMruTl3u3tFOHV8jR2f23CM
 HWlW3i0ASWVA==
X-IronPort-AV: E=Sophos;i="5.76,331,1592895600"; d="scan'208";a="472206484"
Received: from unknown (HELO john.iind.intel.com) ([10.223.74.105])
 by orsmga005-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-SHA;
 19 Aug 2020 04:30:51 -0700
From: Nischal Varide <nischal.varide@intel.com>
To: intel-gfx@lists.freedesktop.org,
	nischal.varide@intel.com
Date: Wed, 19 Aug 2020 10:04:09 +0530
Message-Id: <20200819043409.26010-5-nischal.varide@intel.com>
X-Mailer: git-send-email 2.26.0
In-Reply-To: <20200819043409.26010-1-nischal.varide@intel.com>
References: <20200819043409.26010-1-nischal.varide@intel.com>
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH 5/5]
 Critical-KlockWorks-Fix-intel_crt.c-Possible-Null
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

This Patch fixes the Critical KlockWork Errors and here a Possible Null
Pointer Dereferencing is addressed with a Null Pointer check before
Dereferencing

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
