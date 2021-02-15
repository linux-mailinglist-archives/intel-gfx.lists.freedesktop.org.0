Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 6885A31BAE2
	for <lists+intel-gfx@lfdr.de>; Mon, 15 Feb 2021 15:22:10 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 70F7089E5A;
	Mon, 15 Feb 2021 14:22:03 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga12.intel.com (mga12.intel.com [192.55.52.136])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 9371389B68;
 Mon, 15 Feb 2021 14:22:01 +0000 (UTC)
IronPort-SDR: tv2xg4hqvB51dCGWjoHtZgT4Y2fOXHOonjyjFWrAJRH3Fhw0cAVdhLAPJ+Qpj9z3KP3pSYv2TA
 PAliv8X5/UTA==
X-IronPort-AV: E=McAfee;i="6000,8403,9895"; a="161830204"
X-IronPort-AV: E=Sophos;i="5.81,180,1610438400"; d="scan'208";a="161830204"
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
 by fmsmga106.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 15 Feb 2021 06:22:01 -0800
IronPort-SDR: w7T/z1VFVWlR/LW4CR4XGWtZyzYnMaNnMFakq3Y8b67+CXAnBwGE18k/9e0e2m6Uqf7mh9l0tJ
 pkdHwQWBtseg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.81,180,1610438400"; d="scan'208";a="425485083"
Received: from black.fi.intel.com ([10.237.72.28])
 by fmsmga002.fm.intel.com with ESMTP; 15 Feb 2021 06:21:55 -0800
Received: by black.fi.intel.com (Postfix, from userid 1003)
 id 176711F1; Mon, 15 Feb 2021 16:21:55 +0200 (EET)
From: Andy Shevchenko <andriy.shevchenko@linux.intel.com>
To: Alex Deucher <alexander.deucher@amd.com>,
 Mikita Lipski <mikita.lipski@amd.com>, Eryk Brol <eryk.brol@amd.com>,
 Chris Wilson <chris@chris-wilson.co.uk>,
 "David S. Miller" <davem@davemloft.net>,
 Rahul Lakkireddy <rahul.lakkireddy@chelsio.com>,
 Francis Laniel <laniel_francis@privacyrequired.com>,
 amd-gfx@lists.freedesktop.org, dri-devel@lists.freedesktop.org,
 linux-kernel@vger.kernel.org, intel-gfx@lists.freedesktop.org,
 netdev@vger.kernel.org
Date: Mon, 15 Feb 2021 16:21:36 +0200
Message-Id: <20210215142137.64476-2-andriy.shevchenko@linux.intel.com>
X-Mailer: git-send-email 2.30.0
In-Reply-To: <20210215142137.64476-1-andriy.shevchenko@linux.intel.com>
References: <20210215142137.64476-1-andriy.shevchenko@linux.intel.com>
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH v1 2/3] string: Move onoff() helper under
 string.h hood
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
Cc: Raju Rangoju <rajur@chelsio.com>, Leo Li <sunpeng.li@amd.com>,
 David Airlie <airlied@linux.ie>, Jakub Kicinski <kuba@kernel.org>,
 Andy Shevchenko <andriy.shevchenko@linux.intel.com>,
 Harry Wentland <harry.wentland@amd.com>,
 =?UTF-8?q?Christian=20K=C3=B6nig?= <christian.koenig@amd.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

We have already an implementation and a lot of code that can benefit
of the onoff() helper. Move it under string.h hood.

Signed-off-by: Andy Shevchenko <andriy.shevchenko@linux.intel.com>
---
 drivers/gpu/drm/i915/i915_utils.h | 5 -----
 include/linux/string.h            | 5 +++++
 2 files changed, 5 insertions(+), 5 deletions(-)

diff --git a/drivers/gpu/drm/i915/i915_utils.h b/drivers/gpu/drm/i915/i915_utils.h
index e6da5a951132..d2ac357896d4 100644
--- a/drivers/gpu/drm/i915/i915_utils.h
+++ b/drivers/gpu/drm/i915/i915_utils.h
@@ -409,11 +409,6 @@ wait_remaining_ms_from_jiffies(unsigned long timestamp_jiffies, int to_wait_ms)
 #define MBps(x) KBps(1000 * (x))
 #define GBps(x) ((u64)1000 * MBps((x)))
 
-static inline const char *onoff(bool v)
-{
-	return v ? "on" : "off";
-}
-
 static inline const char *enableddisabled(bool v)
 {
 	return v ? "enabled" : "disabled";
diff --git a/include/linux/string.h b/include/linux/string.h
index fd946a5e18c8..2a0589e945d9 100644
--- a/include/linux/string.h
+++ b/include/linux/string.h
@@ -313,4 +313,9 @@ static inline const char *yesno(bool yes)
 	return yes ? "yes" : "no";
 }
 
+static inline const char *onoff(bool on)
+{
+	return on ? "on" : "off";
+}
+
 #endif /* _LINUX_STRING_H_ */
-- 
2.30.0

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
