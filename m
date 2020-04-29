Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 4C8D31BDD82
	for <lists+intel-gfx@lfdr.de>; Wed, 29 Apr 2020 15:24:50 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id A465F6E46B;
	Wed, 29 Apr 2020 13:24:48 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from aserp2120.oracle.com (aserp2120.oracle.com [141.146.126.78])
 by gabe.freedesktop.org (Postfix) with ESMTPS id A74C76E46B
 for <intel-gfx@lists.freedesktop.org>; Wed, 29 Apr 2020 13:24:46 +0000 (UTC)
Received: from pps.filterd (aserp2120.oracle.com [127.0.0.1])
 by aserp2120.oracle.com (8.16.0.42/8.16.0.42) with SMTP id 03TDMvXM147969;
 Wed, 29 Apr 2020 13:24:37 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=oracle.com;
 h=date : from : to : cc
 : subject : message-id : mime-version : content-type; s=corp-2020-01-29;
 bh=x6g25EpMWe+1K09u/M0u1xQtRU9u2bh7rXg7GcumLew=;
 b=LWDlF2DA4ywiC5fQZoIn1Z7zLfDd9pIO9MGvaum3iFhtpfmrBjJctSpLT88jOL8e6AaN
 TY3QaRu60r3QKivc+60xXf2/4J/mDQJNE+V2yuRJxx/Hwi0rvjzg7X523oZynmTWw/hf
 KFcZUTUnb1vHzoGK3xBnud1pfx2naLaPYoCa/1RU/yYofJfXNaRxP2eEUaSzbowkLCJ+
 SbCkZeslCp5xEVF5eHZQ9zwzbcNQZy012iND0x7FxS1gq8LQ6HOkAVreWZvIZgIEYlK+
 Ts3vWrLsIFJwK6z5fVIqu8F72Ockwfl56go9rqOUrFxI3aM7ra8yRjKDxbESut1kF4vu XA== 
Received: from userp3030.oracle.com (userp3030.oracle.com [156.151.31.80])
 by aserp2120.oracle.com with ESMTP id 30nucg5pm7-1
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=OK);
 Wed, 29 Apr 2020 13:24:37 +0000
Received: from pps.filterd (userp3030.oracle.com [127.0.0.1])
 by userp3030.oracle.com (8.16.0.42/8.16.0.42) with SMTP id 03TDMicH107197;
 Wed, 29 Apr 2020 13:24:36 GMT
Received: from userv0121.oracle.com (userv0121.oracle.com [156.151.31.72])
 by userp3030.oracle.com with ESMTP id 30mxpk1aqp-1
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=OK);
 Wed, 29 Apr 2020 13:24:36 +0000
Received: from abhmp0017.oracle.com (abhmp0017.oracle.com [141.146.116.23])
 by userv0121.oracle.com (8.14.4/8.13.8) with ESMTP id 03TDOYBO032118;
 Wed, 29 Apr 2020 13:24:34 GMT
Received: from mwanda (/41.57.98.10) by default (Oracle Beehive Gateway v4.0)
 with ESMTP ; Wed, 29 Apr 2020 06:24:33 -0700
Date: Wed, 29 Apr 2020 16:24:25 +0300
From: Dan Carpenter <dan.carpenter@oracle.com>
To: Jani Nikula <jani.nikula@linux.intel.com>
Message-ID: <20200429132425.GE815283@mwanda>
MIME-Version: 1.0
Content-Disposition: inline
X-Mailer: git-send-email haha only kidding
X-Proofpoint-Virus-Version: vendor=nai engine=6000 definitions=9605
 signatures=668686
X-Proofpoint-Spam-Details: rule=notspam policy=default score=0 mlxlogscore=999
 malwarescore=0
 mlxscore=0 bulkscore=0 adultscore=0 phishscore=0 suspectscore=0
 spamscore=0 classifier=spam adjust=0 reason=mlx scancount=1
 engine=8.12.0-2003020000 definitions=main-2004290113
X-Proofpoint-Virus-Version: vendor=nai engine=6000 definitions=9605
 signatures=668686
X-Proofpoint-Spam-Details: rule=notspam policy=default score=0 clxscore=1011
 priorityscore=1501
 mlxlogscore=999 impostorscore=0 suspectscore=0 malwarescore=0
 lowpriorityscore=0 mlxscore=0 spamscore=0 adultscore=0 phishscore=0
 bulkscore=0 classifier=spam adjust=0 reason=mlx scancount=1
 engine=8.12.0-2003020000 definitions=main-2004290113
Subject: [Intel-gfx] [PATCH] drm/i915/selftests: fix error handling in
 __live_lrc_indirect_ctx_bb()
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
 kernel-janitors@vger.kernel.org, Chris Wilson <chris@chris-wilson.co.uk>,
 Matthew Auld <matthew.auld@intel.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

If intel_context_create() fails then it leads to an error pointer
dereference.  I shuffled things around to make error handling easier.

Fixes: 1dd47b54baea ("drm/i915: Add live selftests for indirect ctx batchbuffers")
Signed-off-by: Dan Carpenter <dan.carpenter@oracle.com>
---
 drivers/gpu/drm/i915/gt/selftest_lrc.c | 30 +++++++++++++++-----------
 1 file changed, 18 insertions(+), 12 deletions(-)

diff --git a/drivers/gpu/drm/i915/gt/selftest_lrc.c b/drivers/gpu/drm/i915/gt/selftest_lrc.c
index d3fa91aed7dee..c4bfad5c49dea 100644
--- a/drivers/gpu/drm/i915/gt/selftest_lrc.c
+++ b/drivers/gpu/drm/i915/gt/selftest_lrc.c
@@ -5795,26 +5795,29 @@ static int indirect_ctx_bb_check(struct intel_context *ce)
 static int __live_lrc_indirect_ctx_bb(struct intel_engine_cs *engine)
 {
 	struct intel_context *a, *b;
-	int err = 0;
+	int err;
 
 	a = intel_context_create(engine);
-	b = intel_context_create(engine);
-
+	if (IS_ERR(a))
+		return PTR_ERR(a);
 	err = intel_context_pin(a);
 	if (err)
-		return err;
+		goto put_a;
 
-	err = intel_context_pin(b);
-	if (err) {
-		intel_context_put(a);
-		return err;
+	b = intel_context_create(engine);
+	if (IS_ERR(b)) {
+		err = PTR_ERR(b);
+		goto unpin_a;
 	}
+	err = intel_context_pin(b);
+	if (err)
+		goto put_b;
 
 	/* We use the already reserved extra page in context state */
 	if (!a->wa_bb_page) {
 		GEM_BUG_ON(b->wa_bb_page);
 		GEM_BUG_ON(INTEL_GEN(engine->i915) == 12);
-		goto out;
+		goto unpin_b;
 	}
 
 	/*
@@ -5829,14 +5832,17 @@ static int __live_lrc_indirect_ctx_bb(struct intel_engine_cs *engine)
 
 	err = indirect_ctx_bb_check(a);
 	if (err)
-		goto out;
+		goto unpin_b;
 
 	err = indirect_ctx_bb_check(b);
-out:
+
+unpin_b:
 	intel_context_unpin(b);
+put_b:
 	intel_context_put(b);
-
+unpin_a:
 	intel_context_unpin(a);
+put_a:
 	intel_context_put(a);
 
 	return err;
-- 
2.26.2

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
