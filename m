Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 0777521F435
	for <lists+intel-gfx@lfdr.de>; Tue, 14 Jul 2020 16:37:16 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 5A7806E979;
	Tue, 14 Jul 2020 14:37:14 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from userp2130.oracle.com (userp2130.oracle.com [156.151.31.86])
 by gabe.freedesktop.org (Postfix) with ESMTPS id CB7666E979
 for <intel-gfx@lists.freedesktop.org>; Tue, 14 Jul 2020 14:37:12 +0000 (UTC)
Received: from pps.filterd (userp2130.oracle.com [127.0.0.1])
 by userp2130.oracle.com (8.16.0.42/8.16.0.42) with SMTP id 06EEW6k2036850;
 Tue, 14 Jul 2020 14:37:03 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=oracle.com;
 h=date : from : to : cc
 : subject : message-id : mime-version : content-type : in-reply-to;
 s=corp-2020-01-29; bh=g+tBBX8wp9Z28/3jIHfYn157gf5FiDaDM00EKAUwJwc=;
 b=Rq8MaAwAm6bc0ECMwQNQWmZtnhpYoOwxyuOpgJhXYy/YTLW83lC90SwJEV29eicL+ZGz
 TFF0rJH1wPyax1pYqZoTWT/ueILeecMzDHIO6jD2yWwKZFdCTe2eVDyWHNtilkmvzHZ8
 i6pNxkD4UvAOZ0fRFXzNfqsy4p5emOTvx6VIsF6Dubr0uqhC7C8/cUGL89qVfBlW9fyD
 vVn3mlGbYp46xyN8DG6NGR8afLiRN1rjHHgiz/rjF1ngOGSjkJy+naSJy1DbvpOp+cHX
 5xRxvj9vu+fkW9GL/kA53LSz8b0Djzu5tvA2qcUzoIR7LJKRazoN8RgQsV/4rSuyEc+T 2A== 
Received: from userp3030.oracle.com (userp3030.oracle.com [156.151.31.80])
 by userp2130.oracle.com with ESMTP id 3274ur5sxh-1
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=FAIL);
 Tue, 14 Jul 2020 14:37:03 +0000
Received: from pps.filterd (userp3030.oracle.com [127.0.0.1])
 by userp3030.oracle.com (8.16.0.42/8.16.0.42) with SMTP id 06EEScWZ121607;
 Tue, 14 Jul 2020 14:37:02 GMT
Received: from aserv0121.oracle.com (aserv0121.oracle.com [141.146.126.235])
 by userp3030.oracle.com with ESMTP id 327qbxtmsw-1
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=OK);
 Tue, 14 Jul 2020 14:37:02 +0000
Received: from abhmp0009.oracle.com (abhmp0009.oracle.com [141.146.116.15])
 by aserv0121.oracle.com (8.14.4/8.13.8) with ESMTP id 06EEb0EB024558;
 Tue, 14 Jul 2020 14:37:00 GMT
Received: from mwanda (/41.57.98.10) by default (Oracle Beehive Gateway v4.0)
 with ESMTP ; Tue, 14 Jul 2020 07:37:00 -0700
Date: Tue, 14 Jul 2020 17:36:52 +0300
From: Dan Carpenter <dan.carpenter@oracle.com>
To: Jani Nikula <jani.nikula@linux.intel.com>,
 Lionel Landwerlin <lionel.g.landwerlin@intel.com>
Message-ID: <20200714143652.GA337376@mwanda>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <71508ba9-6cad-45f9-a3b1-b3401ac0a1d5@intel.com>
X-Mailer: git-send-email haha only kidding
X-Proofpoint-Virus-Version: vendor=nai engine=6000 definitions=9681
 signatures=668680
X-Proofpoint-Spam-Details: rule=notspam policy=default score=0 suspectscore=0
 spamscore=0
 mlxlogscore=999 bulkscore=0 malwarescore=0 mlxscore=0 phishscore=0
 adultscore=0 classifier=spam adjust=0 reason=mlx scancount=1
 engine=8.12.0-2006250000 definitions=main-2007140112
X-Proofpoint-Virus-Version: vendor=nai engine=6000 definitions=9681
 signatures=668680
X-Proofpoint-Spam-Details: rule=notspam policy=default score=0
 lowpriorityscore=0 impostorscore=0
 suspectscore=0 phishscore=0 spamscore=0 mlxlogscore=999 malwarescore=0
 mlxscore=0 priorityscore=1501 adultscore=0 bulkscore=0 clxscore=1011
 classifier=spam adjust=0 reason=mlx scancount=1 engine=8.12.0-2006250000
 definitions=main-2007140112
Subject: [Intel-gfx] [PATCH v2] drm/i915/selftest: Fix an error code in
 live_noa_gpr()
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
Cc: David Airlie <airlied@linux.ie>, intel-gfx@lists.freedesktop.org,
 kernel-janitors@vger.kernel.org, Chris Wilson <chris@chris-wilson.co.uk>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

The error code needs to be set on this path.  It currently returns
success.

Fixes: ed2690a9ca89 ("drm/i915/selftest: Check that GPR are restored across noa_wait")
Reported-by: Lionel Landwerlin <lionel.g.landwerlin@intel.com>
Signed-off-by: Dan Carpenter <dan.carpenter@oracle.com>
---
v2: Fix a different bug instead.  :P  Colin fixed mine already.

 drivers/gpu/drm/i915/selftests/i915_perf.c | 1 +
 1 file changed, 1 insertion(+)

diff --git a/drivers/gpu/drm/i915/selftests/i915_perf.c b/drivers/gpu/drm/i915/selftests/i915_perf.c
index 0aa151501fb3..c232194c60a2 100644
--- a/drivers/gpu/drm/i915/selftests/i915_perf.c
+++ b/drivers/gpu/drm/i915/selftests/i915_perf.c
@@ -358,6 +358,7 @@ static int live_noa_gpr(void *arg)
 		cs = intel_ring_begin(rq, 4);
 		if (IS_ERR(cs)) {
 			i915_request_add(rq);
+			err = PTR_ERR(cs);
 			goto out_rq;
 		}
 
-- 
2.27.0

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
