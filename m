Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 57EA4360543
	for <lists+intel-gfx@lfdr.de>; Thu, 15 Apr 2021 11:07:47 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id ACCA56EA12;
	Thu, 15 Apr 2021 09:07:44 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from NAM10-DM6-obe.outbound.protection.outlook.com
 (mail-dm6nam10on2052.outbound.protection.outlook.com [40.107.93.52])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 9B3516E4A7
 for <intel-gfx@lists.freedesktop.org>; Wed, 14 Apr 2021 14:48:42 +0000 (UTC)
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=fRwaxZjSS3MFYlpVz0FanqzZmYiY5htYw9Poz4SEjTo/KD7kt+o0aEifBI9Xkp3ZyoWLHxqZ1Y2FYdZwggR4f2figy7HMG2tRCf7oWEcr62foQlxAPcyFBG3x+eOL9aWlk0lC49Xw5K3pcKkx3QZdg9ZLYEnjeZh83u6FxnTjsdrlpjZ4BldMd44JtrOinkIJbucXTzcfXfvcRIQ6n3mClFYQ1fEyx6llVZfMmYeGmYkEIel2A98OhuTXjexFuzqAErvkdIXd69g0VKehx5eN6rahGMrAzt2Wl80jDVW451wW5qorQ/H1CPkqS4yV1kXvLBYffvZCddBS3njQhVeYw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=4UcjOUC/EJ8Gayv7XGE2vd7g9pKhw5u9yLWp3WQPens=;
 b=MZuKCsc1Ti3yyUChgTXsY+z69qzHtQvcvEOiCacd4tZ3xJIoAAuWh5+2OIVsTNzYM6Kd6yEPJfQbQGVo5h9CN4sf4Kmgb14n8ogbzEZXb0RXUi+ARj4cvaVmjP3jBK4b+G6FO7Hr5/4jmtiCa4faWzpYbIyXD7akWcmEm7znALkPDQ8iW/ANiaX5GIKXqenZXtp2raQb9OtCfI76tC3fZzls5WmK+3bQVjjckaWVyS2rqJNA/3ZVFwLswB3dGcgPn8xlpkN1QqqvuX3m+Yza8iaC9vPFFf7Z3fqmo2oKcvw+8Xxq8brT8OoHv4TwauNqNsewPHZMCNifd1lxCVCVnA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=windriver.com; dmarc=pass action=none
 header.from=windriver.com; dkim=pass header.d=windriver.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=windriversystems.onmicrosoft.com;
 s=selector2-windriversystems-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=4UcjOUC/EJ8Gayv7XGE2vd7g9pKhw5u9yLWp3WQPens=;
 b=K1sBoItkR7rKMaTw0MivNROUjYCIC0LYbsPHYwfqpM4+m9Bm9DqZZ0+r+TXl8xz5vG1NKdwzTAxvLGniqyWOe9yXe9Mgk2GH50ChpEJBOmRSEMzVxk8+SQvu10V4t0yRKZvvJZOfZzVlau69BuiJRIRhQdEIfWICHKPCf9cvaBg=
Authentication-Results: linux.intel.com; dkim=none (message not signed)
 header.d=none;linux.intel.com; dmarc=none action=none
 header.from=windriver.com;
Received: from BN7PR11MB2579.namprd11.prod.outlook.com (2603:10b6:406:ab::21)
 by BN9PR11MB5337.namprd11.prod.outlook.com (2603:10b6:408:136::23)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.4042.16; Wed, 14 Apr
 2021 14:48:41 +0000
Received: from BN7PR11MB2579.namprd11.prod.outlook.com
 ([fe80::4c79:805b:e69d:948b]) by BN7PR11MB2579.namprd11.prod.outlook.com
 ([fe80::4c79:805b:e69d:948b%6]) with mapi id 15.20.4020.023; Wed, 14 Apr 2021
 14:48:40 +0000
From: Jun Miao <jun.miao@windriver.com>
To: jani.nikula@linux.intel.com,
	daniel@ffwll.ch,
	airlied@linux.ie
Date: Wed, 14 Apr 2021 22:48:28 +0800
Message-Id: <20210414144828.22813-1-jun.miao@windriver.com>
X-Mailer: git-send-email 2.17.1
X-Originating-IP: [60.247.85.82]
X-ClientProxiedBy: BYAPR05CA0050.namprd05.prod.outlook.com
 (2603:10b6:a03:74::27) To BN7PR11MB2579.namprd11.prod.outlook.com
 (2603:10b6:406:ab::21)
MIME-Version: 1.0
X-MS-Exchange-MessageSentRepresentingType: 1
Received: from pek-lpggp3.wrs.com (60.247.85.82) by
 BYAPR05CA0050.namprd05.prod.outlook.com (2603:10b6:a03:74::27) with Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.4042.8 via Frontend Transport; Wed, 14 Apr 2021 14:48:38 +0000
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-Correlation-Id: d919ed8d-79c6-4a89-65a7-08d8ff54648e
X-MS-TrafficTypeDiagnostic: BN9PR11MB5337:
X-Microsoft-Antispam-PRVS: <BN9PR11MB5337A25FF113A9E790B326CB8E4E9@BN9PR11MB5337.namprd11.prod.outlook.com>
X-MS-Oob-TLC-OOBClassifiers: OLM:7219;
X-MS-Exchange-SenderADCheck: 1
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: utqBMq2K4RWb0myH+oYhRrmm9cwgXmu8mwKplDmSjWVUFAlZ9tKcoTjD32CwT1W4+apyG5zbfnoYsykpf2RpAKvF3yYES/h8b8t/0oUXCVhGABcpyxfacFiwtXQMdsELik1dyirkHl6xxRTlGsMA+hsmf32194b751k3n33Co02EFA4ODH4BozxwN19pHW8vdhM/1V38Y0jrKl2/GCveYY9fEHrOwFa8hrmT+66TTiFdQKQgwsMhKfq/b+ImQPwNCcti+Z0IZVMh8ot6ZmQqn3xsuUsg+pK2zpKuCZtUAWh6lpBP8/7uSU+5SrxFfv0FSg6cOT2SlxoO2zP/jZxtP+HynJVwFvXe4iL3Ic/m6jM/AK/E5EaPCiRCy7kyHvoxxp31iMgWnBPiF1hOQrTy9p1ib4p0SgTpJ/dqm/gYeEpQIiIOIn/L3zXlpgYBZ5xIomPLuWfUVG7X3guxAtDbhvdUIMEOxAi+SPR445DRcIyD6K7alRBQmDsaMt3Vhee1ktrxEHOffHVfFiPlDxB8xjIvYMB9KaubBJpiKLwoXTvLRWHBrqOQwVtXPkgeh1jBwLq1YhXLvkXs17RhSWlf2IXNinrdewPo4UM9n3U0kYn2Viqk8FkRE25wcqOyGx4pmcqycE3f8VTPPICZO9i4/g==
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:BN7PR11MB2579.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(4636009)(376002)(39850400004)(136003)(366004)(396003)(346002)(66946007)(6486002)(36756003)(38100700002)(38350700002)(66556008)(8936002)(66476007)(5660300002)(316002)(52116002)(8676002)(6666004)(6506007)(1076003)(44832011)(86362001)(16526019)(2906002)(6512007)(956004)(2616005)(26005)(186003)(478600001)(83380400001)(4326008);
 DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData: =?us-ascii?Q?Qimv9VeuSNujnvPZqyyMuZONblA0w6RpgRywCJqP5BTTRGQVy/S0c+F96uWw?=
 =?us-ascii?Q?vBCjgAaFDVXdu2nVmbArct//O454WZumHl6ngPVNcRcqpsyv3oGZGl2jaQWJ?=
 =?us-ascii?Q?T/Lxh3ryda9xeCKikX7vLsHOGcSJKHcM6ibwHDNXq+Z8XQhkUPyPVEq1Abiz?=
 =?us-ascii?Q?1LvvQOgXCXwOt7zRMFVQfHtX5rcaJ2rPRFTXTOo1o+/MtP+Airr7CnJaSJg4?=
 =?us-ascii?Q?CgLZg+7PJCQRLyJk+YddbDfY5zIwLkf4Iy6lE/EJ4ioWiZzFzQUuXPQ9bz+P?=
 =?us-ascii?Q?vxz4ctA9d46VA0sZbmPJnKO16Lwxu93bvA6a8iArU9yWpyV4VpiCjdJ+BLhR?=
 =?us-ascii?Q?1X1FivK61GyS885ku9rOMxFt5xa7e+I+x9JG/7t1rjxshQXYOZvXfzzYL2pw?=
 =?us-ascii?Q?hhVgov+62F/NA73c5E1jMyBC2rfRjG334fQjFww9ywWMGu9s0tlq1NbE5Xv7?=
 =?us-ascii?Q?6dKDSEmkglPh9tSZDro/I2LWd4RlqfcIqrkVOYBSCM7Il+DIXcLyvb1A0fXB?=
 =?us-ascii?Q?V1QrpEVvsdWcbxMdqHtsNwdF/pUP0C+bErgHU9FtIicXqc6z/z1sp6lFYtjS?=
 =?us-ascii?Q?fTVAawLUVAQMxfWApff4nL8tQ9S7n3Gjv8j7qSymyT7qQn87KPECjdkudEwB?=
 =?us-ascii?Q?mQzkKZ2Wg7LylVXRlXxpbLpZqXjpl3DfY4bRXqpIC1lCCT5kS1tjZu0JE4iE?=
 =?us-ascii?Q?+t113Gd7zHWF8a2P8j/3D+Ajk4jcjr00P4AB7XiYHWukCR4+lXdcIV/Rk7fX?=
 =?us-ascii?Q?RAXByZ5Gyw9HeO4C/TR0rPjSx6W07u0xlBOs603Ol10fwDd/6Wo33x9hlHpj?=
 =?us-ascii?Q?Pkwf9CWV3pZv70IInDHis3cTFv2z+k2mF4nskxC32bbmu9ZvNV97H/eKZBqp?=
 =?us-ascii?Q?1FghLEWV5fKgGoLjbIsWm3mxILz6kI8Q6Fezvjzd1Kg+MfBty9+VTI7cmEZX?=
 =?us-ascii?Q?QVO7sGK+RfbrvT49xt133v6EijDf0EY4lzUwj3lz7KGObumlcbwkhEGuvZfF?=
 =?us-ascii?Q?20u9pce9ltAqIabLAKK7QQbFlJzYjwQlg1Ph2Nv0ckmWWr/tYCFwqCA8vmGM?=
 =?us-ascii?Q?Rvs5VS1lXkdEDj2iUChs8kdoBsd2fOX3OCGS3HGzvZw919v6h2+JEzQS+xA8?=
 =?us-ascii?Q?NtjtKRVBx0U4bFnDBzItFceR6pvWYiUNGvh8r84Jf7RWrlBxqGCIFvxtLgKo?=
 =?us-ascii?Q?Z0AfR1cIparAVr7TLBDPnBvq2vAPYrSYUkdwvT7cw+aY5CiS+Yvt2y8fRDYI?=
 =?us-ascii?Q?K5ke/8yagEqJ+kQOVqljkJi2FtWXctDDQeR0G+sES+WUApIsWKdIueGenv38?=
 =?us-ascii?Q?QV5rNX6fKShlNhi1yRE1gsvt?=
X-OriginatorOrg: windriver.com
X-MS-Exchange-CrossTenant-Network-Message-Id: d919ed8d-79c6-4a89-65a7-08d8ff54648e
X-MS-Exchange-CrossTenant-AuthSource: BN7PR11MB2579.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 14 Apr 2021 14:48:40.6622 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 8ddb2873-a1ad-4a18-ae4e-4644631433be
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: DHY7bJ115pIT15Za7EGTa22mNBBk60ShL3ThhUHs93aEp20s00KTUHgmGoLxsO5ZdVyLdVVRXT0Bhbe1Ti+0BQ==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: BN9PR11MB5337
X-Mailman-Approved-At: Thu, 15 Apr 2021 09:07:43 +0000
Subject: [Intel-gfx] [PATCH][V2] drm/i915/gt: Fix a lockdep warning on RT
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
Cc: intel-gfx@lists.freedesktop.org
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
 drivers/gpu/drm/i915/gt/intel_breadcrumbs.c | 8 ++++----
 1 file changed, 4 insertions(+), 4 deletions(-)

diff --git a/drivers/gpu/drm/i915/gt/intel_breadcrumbs.c b/drivers/gpu/drm/i915/gt/intel_breadcrumbs.c
index 34a645d..0589b1a 100644
--- a/drivers/gpu/drm/i915/gt/intel_breadcrumbs.c
+++ b/drivers/gpu/drm/i915/gt/intel_breadcrumbs.c
@@ -103,10 +103,12 @@ static void __intel_breadcrumbs_disarm_irq(struct intel_breadcrumbs *b)
 
 static void intel_breadcrumbs_disarm_irq(struct intel_breadcrumbs *b)
 {
-	spin_lock(&b->irq_lock);
+	unsigned long flags;
+
+	spin_lock_irqsave(&b->irq_lock, flags);
 	if (b->irq_armed)
 		__intel_breadcrumbs_disarm_irq(b);
-	spin_unlock(&b->irq_lock);
+	spin_unlock_irqrestore(&b->irq_lock, flags);
 }
 
 static void add_signaling_context(struct intel_breadcrumbs *b,
@@ -337,9 +339,7 @@ void __intel_breadcrumbs_park(struct intel_breadcrumbs *b)
 	/* Kick the work once more to drain the signalers, and disarm the irq */
 	irq_work_sync(&b->irq_work);
 	while (READ_ONCE(b->irq_armed) && !atomic_read(&b->active)) {
-		local_irq_disable();
 		signal_irq_work(&b->irq_work);
-		local_irq_enable();
 		cond_resched();
 	}
 }
-- 
2.7.4

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
