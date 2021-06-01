Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 3E935397033
	for <lists+intel-gfx@lfdr.de>; Tue,  1 Jun 2021 11:19:46 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 428566E9B8;
	Tue,  1 Jun 2021 09:19:40 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
 by gabe.freedesktop.org (Postfix) with ESMTPS id E01986E9B6;
 Tue,  1 Jun 2021 09:19:38 +0000 (UTC)
IronPort-SDR: 1JlgIme3vGmugqI0Zy1sboc4myRkWK4OvChLDK5XrzsD+HSXsx0jNsCW3QsdthNPaBAqIuXmaa
 YqY6YO1KSOQg==
X-IronPort-AV: E=McAfee;i="6200,9189,10001"; a="190624204"
X-IronPort-AV: E=Sophos;i="5.83,239,1616482800"; d="scan'208";a="190624204"
Received: from orsmga002.jf.intel.com ([10.7.209.21])
 by orsmga101.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 01 Jun 2021 02:19:38 -0700
IronPort-SDR: MRP60Cx5rkw+QlFqxPO0H1pl4Tem49o9plz2f7xwE89uZnAVqM6z75vcxNK2th9PFkTCotEPUt
 eYMXQu2yM9Zw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.83,239,1616482800"; d="scan'208";a="416412930"
Received: from orsmsx605.amr.corp.intel.com ([10.22.229.18])
 by orsmga002.jf.intel.com with ESMTP; 01 Jun 2021 02:19:37 -0700
Received: from orsmsx611.amr.corp.intel.com (10.22.229.24) by
 ORSMSX605.amr.corp.intel.com (10.22.229.18) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2242.4; Tue, 1 Jun 2021 02:19:37 -0700
Received: from irsmsx604.ger.corp.intel.com (163.33.146.137) by
 ORSMSX611.amr.corp.intel.com (10.22.229.24) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2242.4; Tue, 1 Jun 2021 02:19:36 -0700
Received: from irsmsx604.ger.corp.intel.com ([163.33.146.137]) by
 IRSMSX604.ger.corp.intel.com ([163.33.146.137]) with mapi id 15.01.2242.008;
 Tue, 1 Jun 2021 10:19:35 +0100
From: "Ursulin, Tvrtko" <tvrtko.ursulin@intel.com>
To: Zhihao Cheng <chengzhihao1@huawei.com>, "jani.nikula@linux.intel.com"
 <jani.nikula@linux.intel.com>, "joonas.lahtinen@linux.intel.com"
 <joonas.lahtinen@linux.intel.com>, "Vivi, Rodrigo" <rodrigo.vivi@intel.com>,
 "airlied@linux.ie" <airlied@linux.ie>, "daniel@ffwll.ch" <daniel@ffwll.ch>,
 "chris@chris-wilson.co.uk" <chris@chris-wilson.co.uk>
Thread-Topic: [PATCH] drm/i915/selftests: Fix return value check in
 live_breadcrumbs_smoketest()
Thread-Index: AQHXVEJ+tkVXHh6hkECEwuczk5ho4qr+5blA
Date: Tue, 1 Jun 2021 09:19:35 +0000
Message-ID: <33c46ef24cd547d0ad21dc106441491a@intel.com>
References: <20210529043327.2772051-1-chengzhihao1@huawei.com>
In-Reply-To: <20210529043327.2772051-1-chengzhihao1@huawei.com>
Accept-Language: en-GB, en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
dlp-product: dlpe-windows
dlp-reaction: no-action
dlp-version: 11.5.1.3
x-originating-ip: [10.184.70.1]
MIME-Version: 1.0
Subject: Re: [Intel-gfx] [PATCH] drm/i915/selftests: Fix return value check
 in live_breadcrumbs_smoketest()
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
Cc: "yukuai3@huawei.com" <yukuai3@huawei.com>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 "dri-devel@lists.freedesktop.org" <dri-devel@lists.freedesktop.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>


[Don't see this on intel-gfx so I have to reply with top post.]

Reviewed-by: Tvrtko Ursulin <tvrtko.ursulin@intel.com>

Regards,

Tvrtko

-----Original Message-----
From: Zhihao Cheng <chengzhihao1@huawei.com> 
Sent: Saturday, May 29, 2021 5:33 AM
To: jani.nikula@linux.intel.com; joonas.lahtinen@linux.intel.com; Vivi, Rodrigo <rodrigo.vivi@intel.com>; airlied@linux.ie; daniel@ffwll.ch; chris@chris-wilson.co.uk; Ursulin, Tvrtko <tvrtko.ursulin@intel.com>
Cc: intel-gfx@lists.freedesktop.org; dri-devel@lists.freedesktop.org; linux-kernel@vger.kernel.org; chengzhihao1@huawei.com; yukuai3@huawei.com
Subject: [PATCH] drm/i915/selftests: Fix return value check in live_breadcrumbs_smoketest()

In case of error, the function live_context() returns ERR_PTR() and never returns NULL. The NULL test in the return value check should be replaced with IS_ERR().

Fixes: 52c0fdb25c7c9 ("drm/i915: Replace global breadcrumbs ...")
Reported-by: Hulk Robot <hulkci@huawei.com>
Signed-off-by: Zhihao Cheng <chengzhihao1@huawei.com>
---
 drivers/gpu/drm/i915/selftests/i915_request.c | 4 ++--
 1 file changed, 2 insertions(+), 2 deletions(-)

diff --git a/drivers/gpu/drm/i915/selftests/i915_request.c b/drivers/gpu/drm/i915/selftests/i915_request.c
index ee8e753d98ce..eae0abd614cb 100644
--- a/drivers/gpu/drm/i915/selftests/i915_request.c
+++ b/drivers/gpu/drm/i915/selftests/i915_request.c
@@ -1592,8 +1592,8 @@ static int live_breadcrumbs_smoketest(void *arg)
 
 	for (n = 0; n < smoke[0].ncontexts; n++) {
 		smoke[0].contexts[n] = live_context(i915, file);
-		if (!smoke[0].contexts[n]) {
-			ret = -ENOMEM;
+		if (IS_ERR(smoke[0].contexts[n])) {
+			ret = PTR_ERR(smoke[0].contexts[n]);
 			goto out_contexts;
 		}
 	}
--
2.25.4

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
