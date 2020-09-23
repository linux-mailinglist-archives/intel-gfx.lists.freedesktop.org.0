Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 13DD5276302
	for <lists+intel-gfx@lfdr.de>; Wed, 23 Sep 2020 23:23:18 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 4F9FF6EA04;
	Wed, 23 Sep 2020 21:23:16 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga18.intel.com (mga18.intel.com [134.134.136.126])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 22DE56EA04
 for <intel-gfx@lists.freedesktop.org>; Wed, 23 Sep 2020 21:23:15 +0000 (UTC)
IronPort-SDR: PslphPLlzpLwkE+3zdHD8C3F7ZGIDr8dskB4bj1ko15AEIt0p1Qcpxpec+/jNtXi6AqVbe8hvq
 gl6GmRE03YoQ==
X-IronPort-AV: E=McAfee;i="6000,8403,9753"; a="148768120"
X-IronPort-AV: E=Sophos;i="5.77,295,1596524400"; d="scan'208";a="148768120"
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
 by orsmga106.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 23 Sep 2020 14:23:14 -0700
IronPort-SDR: K5fxhB48g1297lSRmZ4gvxA2hpPh9+J+nkIbCpOSwMMiKb8t6de/5LpOldM+TlDnGfoRC/ud4S
 fYKeKMFC7Wbw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.77,295,1596524400"; d="scan'208";a="342568604"
Received: from fmsmsx604.amr.corp.intel.com ([10.18.126.84])
 by fmsmga002.fm.intel.com with ESMTP; 23 Sep 2020 14:23:14 -0700
Received: from fmsmsx612.amr.corp.intel.com (10.18.126.92) by
 fmsmsx604.amr.corp.intel.com (10.18.126.84) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.1713.5; Wed, 23 Sep 2020 14:23:13 -0700
Received: from fmsmsx610.amr.corp.intel.com (10.18.126.90) by
 fmsmsx612.amr.corp.intel.com (10.18.126.92) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.1713.5; Wed, 23 Sep 2020 14:23:12 -0700
Received: from fmsmsx610.amr.corp.intel.com ([10.18.126.90]) by
 fmsmsx610.amr.corp.intel.com ([10.18.126.90]) with mapi id 15.01.1713.004;
 Wed, 23 Sep 2020 14:23:12 -0700
From: "Hampson, Steven T" <steven.t.hampson@intel.com>
To: "Hampson, Steven T" <steven.t.hampson@intel.com>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>
Thread-Topic: [Intel-gfx] [PATCH] Fix NULL pointer found by static analysis
Thread-Index: AQHWkWPLpjWt6mTOgkyXU+bTLbHgDql2vH1Q
Date: Wed, 23 Sep 2020 21:23:11 +0000
Message-ID: <ea4fc16616ea449d8eaf9f2a1071c354@intel.com>
References: <20200923044054.5653-1-steven.t.hampson@intel.com>
In-Reply-To: <20200923044054.5653-1-steven.t.hampson@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
dlp-product: dlpe-windows
dlp-reaction: no-action
dlp-version: 11.5.1.3
x-originating-ip: [10.1.200.100]
MIME-Version: 1.0
Subject: Re: [Intel-gfx] [PATCH] Fix NULL pointer found by static analysis
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

Never mind.  This is a false positive.

-----Original Message-----
From: Intel-gfx <intel-gfx-bounces@lists.freedesktop.org> On Behalf Of Steve Hampson
Sent: Tuesday, September 22, 2020 9:41 PM
To: intel-gfx@lists.freedesktop.org
Subject: [Intel-gfx] [PATCH] Fix NULL pointer found by static analysis

A static analysis tool has reveiled a NULL pointer error in __i915_gem_object_lock.  This appears to be correct as many calls pass a NULL into the ww parameter.

Signed-off-by: Steve Hampson <steven.t.hampson@intel.com>
---
 drivers/gpu/drm/i915/gem/i915_gem_object.h | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/gpu/drm/i915/gem/i915_gem_object.h b/drivers/gpu/drm/i915/gem/i915_gem_object.h
index d46db8d8f38e..9b18ead42991 100644
--- a/drivers/gpu/drm/i915/gem/i915_gem_object.h
+++ b/drivers/gpu/drm/i915/gem/i915_gem_object.h
@@ -126,7 +126,7 @@ static inline int __i915_gem_object_lock(struct drm_i915_gem_object *obj,
 	if (ret == -EALREADY)
 		ret = 0;
 
-	if (ret == -EDEADLK)
+	if (ret == -EDEADLK && ww)
 		ww->contended = obj;
 
 	return ret;
--
2.21.0

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
