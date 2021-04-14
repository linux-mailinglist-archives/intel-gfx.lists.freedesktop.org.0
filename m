Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id DA28035F2E6
	for <lists+intel-gfx@lfdr.de>; Wed, 14 Apr 2021 13:52:50 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id EBCFC6E491;
	Wed, 14 Apr 2021 11:52:48 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from NAM10-BN7-obe.outbound.protection.outlook.com
 (mail-bn7nam10on2084.outbound.protection.outlook.com [40.107.92.84])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 4052A6E422
 for <intel-gfx@lists.freedesktop.org>; Wed, 14 Apr 2021 01:47:02 +0000 (UTC)
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=gjYp/DC6GagrDT4hek2O0PmAxnS+WmDm4j+cG2/z+nJ2GuCAMkTIjU3QmjUYVZnELVhVOq0hghg0mzsmuncwNC3KFhSeUFobI+QTlSbkY2xZKk5ZQZh7xRgwhsK9tBMFLMfuL9X0dwYz36FgG6ri+bSDVXeHJsbb01TeNw0XFPo+uf3fMeH5oBtJE8qcvxf/6ScOu2lV0PrZIjlo6XOEG8aGCAquw/OTGHZ215AnqB0OVkF32/mRJEm+9FaH48hsJuOrvCgM0sYgshedA+7zJhx+zhOlywVeW7Z44AAouxaIc0gNzJsoYpW8gEX/svaVRtaCoXSKKN1Zol0ma83Big==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=0/4JiPwwWK+uIF10P0Ic0bqaO8Im5G75k3t4+mXuUnw=;
 b=oaKOSdlZJRD9LIKr6Lmn+0uQoSqRnb2+o0DVlKiEsV/8f6mhpTm1mPZjIMUtpaQs6a2HdDmL5TlQtxrx9CpJRql5NmpNNTJp8lovuLHoLenz9tnayhfkeQpN04gsKmfb40ecCREzSv5d7zEXB51t+cUtb1QwlOjfcMi13EbB/Wqc+oJRhH0ppVyiqXkU1n5d6XT2XlpI/O7IbOaIuQDAazG7dztz8RhhREuJ9i68qyDFblfmbYNwb7Cc60bW8kXrNgKURV6+REQ5hEyq6sn4COKU4SNnnxs6IOSdCbHRBD2IdOw0csv1DE2n63N+Hvbm64bqd+iPNsJD2s8Zy+ODAQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=windriver.com; dmarc=pass action=none
 header.from=windriver.com; dkim=pass header.d=windriver.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=windriversystems.onmicrosoft.com;
 s=selector2-windriversystems-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=0/4JiPwwWK+uIF10P0Ic0bqaO8Im5G75k3t4+mXuUnw=;
 b=fxpRtSA29KbPf1/WQLUIw4uHXSuq4dQpKERFvDKQw6K2DTSPuYNjI8ChV2auVF7ixn9iU1otYebG1tXH6JwGCl8xkL6xeoL3ZY2Jk7cLcgv6ZKb5akNKykMHOGad/eQtCXPXbM56DMVvgtH28488/P4I/qTHA9esgiN7yIrHADU=
Authentication-Results: linux.intel.com; dkim=none (message not signed)
 header.d=none;linux.intel.com; dmarc=none action=none
 header.from=windriver.com;
Received: from SN6PR11MB2592.namprd11.prod.outlook.com (2603:10b6:805:57::25)
 by SN6PR11MB3134.namprd11.prod.outlook.com (2603:10b6:805:d9::12)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.4020.22; Wed, 14 Apr
 2021 01:47:00 +0000
Received: from SN6PR11MB2592.namprd11.prod.outlook.com
 ([fe80::a135:6ae7:1d9f:b4db]) by SN6PR11MB2592.namprd11.prod.outlook.com
 ([fe80::a135:6ae7:1d9f:b4db%7]) with mapi id 15.20.4020.022; Wed, 14 Apr 2021
 01:47:00 +0000
From: Jun Miao <jun.miao@windriver.com>
To: jani.nikula@linux.intel.com,
	joonas.lahtinen@linux.intel.com
Date: Wed, 14 Apr 2021 09:46:32 +0800
Message-Id: <20210414014632.5255-2-jun.miao@windriver.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20210414014632.5255-1-jun.miao@windriver.com>
References: <20210414014632.5255-1-jun.miao@windriver.com>
X-Originating-IP: [60.247.85.82]
X-ClientProxiedBy: HK2PR03CA0053.apcprd03.prod.outlook.com
 (2603:1096:202:17::23) To SN6PR11MB2592.namprd11.prod.outlook.com
 (2603:10b6:805:57::25)
MIME-Version: 1.0
X-MS-Exchange-MessageSentRepresentingType: 1
Received: from pek-lpggp3.wrs.com (60.247.85.82) by
 HK2PR03CA0053.apcprd03.prod.outlook.com (2603:1096:202:17::23) with Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.4042.6 via Frontend Transport; Wed, 14 Apr 2021 01:46:57 +0000
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-Correlation-Id: 79ff4524-0e1d-4a69-82b3-08d8fee7319e
X-MS-TrafficTypeDiagnostic: SN6PR11MB3134:
X-MS-Exchange-Transport-Forked: True
X-Microsoft-Antispam-PRVS: <SN6PR11MB31345A70217A237402EA8A1D8E4E9@SN6PR11MB3134.namprd11.prod.outlook.com>
X-MS-Oob-TLC-OOBClassifiers: OLM:7219;
X-MS-Exchange-SenderADCheck: 1
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: 22tduxTSSD7TCbWC/Wk8F4xwT4DLCaGDvklKDU7U1/lv1iLpJ1TjLoJ/GBPeuBKDlTxpMjw3ea0Fm71z4k6dEcrqfOsrdbKnacXGbb2XbXUxdL3cMsGdp52sO9hPGtcyXX3uNqQZrMA7NLbtSdULNcGmEsl6RWoCOkhQcUN8Z8e61HJrQ9LhfM+SITMu5cvqBw87raPUw+Ki6lmh833vJTmkLDPHuZEulpdlI18kAtUGF5MnEUUAPOXJOPasy4dsMsnLOmWU376Om8UHIK7Q1yY8ZXrKQ2PQP3n1a6y79PuDERC/UQ3UloqgScktnMIj514MICJNCthSJgjt6Z10Icd+94jT6eLuLGGJKdQSmWbgFpSgXowyfy3amzK2ex8H/g3Wbxr6J2Ws3XFust+qRwOkv9+yQZeywyNSkR9OVhtTkJU2gUV2WZx3ocYTq8c7NjZf6Cr+sNrPeIsfa7hvEnx+Xj4AoFvYLwrkn65WLDhsrii7/qZ9TQMkqaMBkhc6Mmp9ANqnDFYUgJf7L5Jx0sKVZ97T9P2w2rKRBPxjun1lL0krn1rIqZX4+BYWieiEvwuplfcp3Bd54x48kqYW08c7IbR883WWkcu7Z8es1sAMyQCapVajAB0w4bxO001LSBcO050SqkPXN3HyT8LA8g==
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:SN6PR11MB2592.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(4636009)(39850400004)(366004)(396003)(346002)(136003)(376002)(26005)(186003)(83380400001)(16526019)(5660300002)(52116002)(2616005)(66556008)(66476007)(44832011)(1076003)(316002)(38350700002)(956004)(6666004)(2906002)(478600001)(8936002)(66946007)(6486002)(8676002)(38100700002)(6506007)(36756003)(86362001)(6512007)(107886003)(4326008);
 DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData: eTT+Ey2D8fFZ0NRQweWpohDtghBQFb0TZuaa7FWaYq6p0575GYaSUU17QV38x88NWcwfM54C0ZC0du/kf2RGlroN+0EIfgQa3rr4VIufNtYL5h5FQ57OSMa5jX8Qtai3wsCE3HGDRX4nPCdz4LlriRyPqbROO/N8ii8w6At9MHBRUeYNBwbbE8VfTXxUq131T1a8kCxM4NYTnOAL02IYOHSHXUtXA6Z7xeLXYvYjNv+e+3tUbDwA3kYgG10nc4EETbHrhoXPJZ8QL7gVsLwQnCjRSVj8FhLlC4Lg6DljWZFPrAt+cJn7DIVvgoo320FWLAUHsoc0XJ27EH/ckK4BUpfBmamTC/q+aSrMuCbKnoNRu2sUTApVy8tH5x/lnwiUr82fX1+ZbL60hNarZhz5UlEAx9zmRhF8jkqTFWh0INbnoEY9GytBCZcFhX9CyOGx20MJwbl9mOysim+2cuKXLJEmn57h9iUyjQ7ir2enhNsRDD3wNMdqeVjU+ua/UKLzvFmt+lWb9fOeVbIKY6RmmqZOfHWJMLGQK+z+bvw3p7vRjVQFd+kbNRl/mlWxIaHrJXlQNsbiLj/4sfV+zweFDFYO4Hf8DTBsniQqTFRwSBVdGJokVG+k2MZWAtb79Tk2+nfRLf2mBsirBkeznepR2JnLViY+Fg6+r4zpo8XCldyIGwlf34pIv9PrD8wF6RmbJKfVNv2eK5cGiXMw+u1F3EKZpKQe79BD0JVwvx/MZiDQXzosvLz1i0yBHdvr6D7H
X-OriginatorOrg: windriver.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 79ff4524-0e1d-4a69-82b3-08d8fee7319e
X-MS-Exchange-CrossTenant-AuthSource: SN6PR11MB2592.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 14 Apr 2021 01:46:59.9465 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 8ddb2873-a1ad-4a18-ae4e-4644631433be
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: IrgPUM7xTDsWrrf3y2qqRP3KYp9KTdbz/yOKb+zYYMglg3gT62CPqpRKpDCAzz0L8vwhrvJACCOare4A+Q3keg==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SN6PR11MB3134
X-Mailman-Approved-At: Wed, 14 Apr 2021 11:52:48 +0000
Subject: [Intel-gfx] [PATCH 1/1] drm/i915/gt: Fix a lockdep warnning on RT
 kernel
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
Cc: intel-gfx@lists.freedesktop.org, chris@chris-wilson.co.uk,
 jun.miao@windriver.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

Don`t simple disable all the HD-irq, should race the region in the
intel_breadcrumbs_disarm_irq() only.

BUG: sleeping function called from invalid context at kernel/locking/rtmutex.c:969
  #0: ffff89c4c00ca970 ((wq_completion)events){+.+.}-{0:0}, at: process_one_work+0x1cf/0x6d0
  #1: ffffa433c1f53e60 ((work_completion)(&engine->retire_work)){+.+.}-{0:0}, at: process_one_work+0x1cf 0x6d
  #2: ffff89c4ccb0a0a8 (kernel_context){+.+.}-{0:0}, at: engine_retire+0x62/0x110 [i915]
  #3: ffff89c4cf682300 (wakeref.mutex#3){+.+.}-{0:0}, at: __intel_wakeref_put_last+0x20/0x60 [i915]
  #4: ffff89c4ccb08398 (&b->irq_lock){+.+.}-{0:0}, at: intel_breadcrumbs_disarm_irq+0x20/0xd0 [i915]
 irq event stamp: 2126
 hardirqs last  enabled at (2125): [<ffffffffbb134739>] cancel_delayed_work+0xa9/0xc0
 hardirqs last disabled at (2126): [<ffffffffc0507fe6>] __intel_breadcrumbs_park+0x76/0x80 [i915]
 softirqs last  enabled at (0): [<ffffffffbb1099ce>] copy_process+0x63e/0x1630
 softirqs last disabled at (0): [<0000000000000000>] 0x0
 CPU: 3 PID: 281 Comm: kworker/3:3 Not tainted 5.10.27-rt34-yocto-preempt-rt #1
 Hardware name: Intel(R) Client Systems NUC7i5DNKE/NUC7i5DNB, BIOS DNKBLi5v.86A.0064.2019.0523.1933 05/23 2019
 Workqueue: events engine_retire [i915]
 Call Trace:
  show_stack+0x52/0x58
  dump_stack+0x7d/0x9f
  ___might_sleep.cold+0xe3/0xf4
  rt_spin_lock+0x3f/0xc0
  ? intel_breadcrumbs_disarm_irq+0x20/0xd0 [i915]
  intel_breadcrumbs_disarm_irq+0x20/0xd0 [i915]
  signal_irq_work+0x241/0x660 [i915]
  ? __this_cpu_preempt_check+0x13/0x20
  ? lockdep_hardirqs_off+0x106/0x120
  __intel_breadcrumbs_park+0x3f/0x80 [i915]
  __engine_park+0xbd/0xe0 [i915]
  ____intel_wakeref_put_last+0x22/0x60 [i915]
  __intel_wakeref_put_last+0x50/0x60 [i915]
  intel_context_exit_engine+0x5f/0x70 [i915]
  i915_request_retire+0x139/0x2d0 [i915]
  engine_retire+0xb0/0x110 [i915]
  process_one_work+0x26d/0x6d0
  worker_thread+0x53/0x330
  kthread+0x1b0/0x1d0
  ? process_one_work+0x6d0/0x6d0
  ? __kthread_parkme+0xc0/0xc0
  ret_from_fork+0x22/0x30

Fixes: 9d5612ca165a ("drm/i915/gt: Defer enabling the breadcrumb interrupt to after submission")
Signed-off-by: Jun Miao <jun.miao@windriver.com>
---
 drivers/gpu/drm/i915/gt/intel_breadcrumbs.c | 7 +++----
 1 file changed, 3 insertions(+), 4 deletions(-)

diff --git a/drivers/gpu/drm/i915/gt/intel_breadcrumbs.c b/drivers/gpu/drm/i915/gt/intel_breadcrumbs.c
index 0040b4765a54..89c2874ecc76 100644
--- a/drivers/gpu/drm/i915/gt/intel_breadcrumbs.c
+++ b/drivers/gpu/drm/i915/gt/intel_breadcrumbs.c
@@ -103,10 +103,11 @@ static void __intel_breadcrumbs_disarm_irq(struct intel_breadcrumbs *b)
 
 static void intel_breadcrumbs_disarm_irq(struct intel_breadcrumbs *b)
 {
-	spin_lock(&b->irq_lock);
+	unsigned long flags;
+	spin_lock_irqsave(&b->irq_lock,flags);
 	if (b->irq_armed)
 		__intel_breadcrumbs_disarm_irq(b);
-	spin_unlock(&b->irq_lock);
+	spin_unlock_irqrestore(&b->irq_lock,flags);
 }
 
 static void add_signaling_context(struct intel_breadcrumbs *b,
@@ -342,9 +343,7 @@ void intel_breadcrumbs_park(struct intel_breadcrumbs *b)
 	/* Kick the work once more to drain the signalers */
 	irq_work_sync(&b->irq_work);
 	while (unlikely(READ_ONCE(b->irq_armed))) {
-		local_irq_disable();
 		signal_irq_work(&b->irq_work);
-		local_irq_enable();
 		cond_resched();
 	}
 	GEM_BUG_ON(!list_empty(&b->signalers));
-- 
2.25.1

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
