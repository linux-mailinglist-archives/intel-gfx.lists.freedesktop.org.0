Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id DAF7073AE51
	for <lists+intel-gfx@lfdr.de>; Fri, 23 Jun 2023 03:32:02 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 7C1B310E0A6;
	Fri, 23 Jun 2023 01:31:59 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
X-Greylist: delayed 1906 seconds by postgrey-1.36 at gabe;
 Fri, 23 Jun 2023 01:31:58 UTC
Received: from mx0b-0064b401.pphosted.com (mx0b-0064b401.pphosted.com
 [205.220.178.238])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 7582A10E0A6
 for <intel-gfx@lists.freedesktop.org>; Fri, 23 Jun 2023 01:31:58 +0000 (UTC)
Received: from pps.filterd (m0250811.ppops.net [127.0.0.1])
 by mx0a-0064b401.pphosted.com (8.17.1.22/8.17.1.22) with ESMTP id
 35N0f7Bb000344; Fri, 23 Jun 2023 00:57:58 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=windriver.com;
 h=date:from:to:cc:subject:message-id:content-type:mime-version;
 s=PPS06212021; bh=d1bWmr0gi+9R+liEsC23yDmnAzXGhilrhJ6WwcRbbI4=; b=
 Uhw28MtSJCdgpYLC23acOWtCfre4F7dRwJh03+NXUCH6iz713LQT7WfYg1dckUXk
 xKyQNrq7p2tG5xPZFDsVcW+3qLRHnOgGlneSJHwKV//rYC9GA5eVEqeuuuehUjVK
 YnW1l9NCDO8SALrBoJWk+IyAyOoF8EPphS0M5CukW1CCdEtGPyqc5YyHvxC40lPl
 /GUAhkrsV58hIb7eKL1hWu2hgpBbiobjcehG24egdrnxTzoZRYk/tKWkGhwzN4bF
 Dve4yjIHWFh+RAuktIAKZg1JRcwh1BToyKDoUgTRgaNjSvOyIvUb+vKSIjnm8MWa
 NmWh+1Z8Bv+YyL+fonLf1g==
Received: from nam12-mw2-obe.outbound.protection.outlook.com
 (mail-mw2nam12lp2044.outbound.protection.outlook.com [104.47.66.44])
 by mx0a-0064b401.pphosted.com (PPS) with ESMTPS id 3rcxskg3h6-1
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
 Fri, 23 Jun 2023 00:57:58 +0000 (GMT)
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=j3YQfND+ILD0LUXxqIC9bF7wCeoVloE902REjSg0/YIeBC+emFNz0hF1DkVwyBo53QKz/xR1oZwyYSE4pyYgPP8rhaQut4SysM12NVimK/bOdPB4WqT/DIF7IT8juQfKZmBsiaw6zdJZ0saYQ2usPGONJybgSomQUY+pPYs4urKT0wiT4h+s0VBcjGeRRJq9oE8TFXa+AqSKWs50OTz6ielKfH23kamESsfj5d1h73iu7JpzDHviVtx70PiEC1Qij2+5AoQicj6qLg9m7H7V1ZzyKMIXlY9WWI/UEV63oSHnw4kKQ1lAfvr8M5RX3tXDlu5tG7+fd8agKutyRVdXQw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=d1bWmr0gi+9R+liEsC23yDmnAzXGhilrhJ6WwcRbbI4=;
 b=GbGOalZ5lwCKezotbcplAAOLRyURg59tong9jKPApIEcR6SpTR/94bzEmxGND2CaHGWLSGldOmDJSgvm++z5JnOZsS9SXnMjNrV+JhIbSrk9xOmrzlOMJfE8g0t1hPwWl2BJeRUPSfzbkVx37yfFO1pG7QYGm79xUgD//cOKr6JUtcKOd2q2E+O0SWNDb1p9SY98G46HMQPddcCt/5wNargpEFFcdVNDwWONtSw++FooE/Dlk4ALjTnBup14QS+Pbrx+lPzyuKkW96DpRRUkeP262UGDXnitWEL8tDNdMeTEOKqLpnvLub552Gjj5kLr9fM3oHedQj9J15aZeK1HTQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=windriver.com; dmarc=pass action=none
 header.from=windriver.com; dkim=pass header.d=windriver.com; arc=none
Received: from IA0PR11MB7378.namprd11.prod.outlook.com (2603:10b6:208:432::8)
 by SA1PR11MB6920.namprd11.prod.outlook.com (2603:10b6:806:2bb::9)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.6521.23; Fri, 23 Jun
 2023 00:57:54 +0000
Received: from IA0PR11MB7378.namprd11.prod.outlook.com
 ([fe80::61d5:7319:52f0:cc4b]) by IA0PR11MB7378.namprd11.prod.outlook.com
 ([fe80::61d5:7319:52f0:cc4b%7]) with mapi id 15.20.6521.024; Fri, 23 Jun 2023
 00:57:54 +0000
Date: Thu, 22 Jun 2023 20:57:50 -0400
From: Paul Gortmaker <paul.gortmaker@windriver.com>
To: Chris Wilson <chris@chris-wilson.co.uk>,
 Sebastian Andrzej Siewior <bigeasy@linutronix.de>,
 Daniele Ceraolo Spurio <daniele.ceraolospurio@intel.com>
Message-ID: <ZJTuDi1HNp9L2zxY@windriver.com>
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
X-ClientProxiedBy: YT2PR01CA0021.CANPRD01.PROD.OUTLOOK.COM
 (2603:10b6:b01:38::26) To IA0PR11MB7378.namprd11.prod.outlook.com
 (2603:10b6:208:432::8)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: IA0PR11MB7378:EE_|SA1PR11MB6920:EE_
X-MS-Office365-Filtering-Correlation-Id: c1d556c2-38d1-4050-45fa-08db7384e096
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: mORdDLh06RlMXSXDKy4Hlsi9blS3vT6NZYDMtZf5RGV4dgCjJU9fEHFsmEjeq95yBh+YKPHIWM1M7ASk4LoEgPQ2KjhinJmy7cDhEGutiGMzcZ36wt5qTgWWwdintqacUXVX7dTnt9iP/1VyL/qaK2UULolKvp3/bxmL0a3QNtp2DGcXbW5ubA0qBYlWp0JjY+PxHhM+h6ieU/yuyh4s9rbPucLsYGh858IvGM3LwkEmgUoG6WdpoQtFuQIizNggORGd7LHxIzoYIcA+OC6N20ydXEagyZ0lsDGx6GbHC1Ad14xGe0ZMEGe+t6W/kA+hnkZTYdgw5wV5Tvh/t46/ILE2GbR2xp4/l1wvwilvnxuZA/eHQubzHMY3EJMfBQeKzmo7GjzJjacO8b2wFHatqR3GFX+CPZmOvivDkcPgnU1nD9rDfPag4O4rcavggC8MZAU6OYFLFK+1eCX4tPI9RWSasyitb0XCmkuqPRgvd+WKyJOe6djKoNlzp//4m5qxKdhq+YVskkiO4rxQIYbLaxgovDsBY5CmQ+HbL+yg79jOrbNSCeB5vZIPCP8/9sPHBSBm7mxUT6j5mhdoBQ7hvg==
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:IA0PR11MB7378.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230028)(4636009)(396003)(366004)(136003)(346002)(376002)(39850400004)(451199021)(26005)(66476007)(66556008)(8936002)(8676002)(66946007)(4326008)(478600001)(316002)(5660300002)(36756003)(44832011)(2906002)(110136005)(966005)(86362001)(41300700001)(38100700002)(6486002)(186003)(6512007)(6506007)(53546011)(6666004)(83380400001)(2616005);
 DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?us-ascii?Q?6h9ayrWdTflwTgG+6KeEeS2WOYggUr4xApVhAWWlnAYuWg4oM8e41XF6vl2J?=
 =?us-ascii?Q?QHJqbUg+HOHmaChGfqMqV/9FtxvDEIBdFFxyXzBzym3IkWmW4FPszCFuD1xK?=
 =?us-ascii?Q?Y/Uehj57CxNhU0BXQ2KipiDfUnS4pfvWNhyz+ygb6gsh1WjHNDyUJr935urM?=
 =?us-ascii?Q?q/emqIW3O5UYawTviPnquTB0xzKNP9lqDpdxDYH2YhNAll+cWh1Mwmg9fbsi?=
 =?us-ascii?Q?7vGPX8Iyf0YPR8IOMeGBGkw4pOuf1r3fecdDG/Ve8LLBJcLijvHOx8wFgCOx?=
 =?us-ascii?Q?FEUPk45wWoHDaq1wtgMM7Ai8fW1aiRM4YOOpMm7q4P2CaQZw5PA+4KqlatRk?=
 =?us-ascii?Q?XJ+1x0Qvj/EVAGmf0mX81TOEyVNKo5XMAuLHG6j67P2diyde1qNHWhmNPuD3?=
 =?us-ascii?Q?ghOACfJBIieP3Bkeq25xYvNH+ZzD9KF6AWHhJjFhUxbokixQpCBOeuJB5XmL?=
 =?us-ascii?Q?gavVZvWA5yvAfCEZMOGySgTG7I6HbCjy1GqlKS99kLgPaab0fLZ18f/uHNLX?=
 =?us-ascii?Q?lI9k09YJ7HOH7q80Dh6T6c22PLY+GaiTHNPSXzWcoAa18hj0hGFsqNfcUAHP?=
 =?us-ascii?Q?XJ387TUhbjGF9PsbT8HfAtn0kTsAQpLWOjeoLcbLP9GLMpr8xqx/zpGiOeYl?=
 =?us-ascii?Q?vqYqfLfbeEcTc8FXXo8UST65kewTEdkeVa0cyZviIRY4xu62qzuS27W22K9J?=
 =?us-ascii?Q?pl4ieVv13htezewoHQzkBajvFcorvCoTobOre7Iz1iISYcOB1IvyoDSgIn7z?=
 =?us-ascii?Q?YZSDlRw4kg2k8+SYBJt7QsLsGfubEb6liXaVCCRXGSZiCyadyN5wxjnLuis/?=
 =?us-ascii?Q?gIStu6XmgA0I+Uil9D+6aiFzJZhI2Y6UpxYlnQ7ckdmUQiKZbNCyRvPUYFsj?=
 =?us-ascii?Q?a4VnOJviaLLeXI82POm80zc4LzwPdJg7i+pR3O5IWNAIbRiIlYaxLXj+Wo4y?=
 =?us-ascii?Q?0rr+hK+NBbRiMIcPLEzgyOTbhDIaaHr4572vp9rNwcaRGxjLqZhBO8bmZr/n?=
 =?us-ascii?Q?PMkjyfYFDUCRiJqUA6zhOi+J6yPaMrtSujUkzCj0XuRUIopCRkbIhU9c/KwJ?=
 =?us-ascii?Q?ZbsvkBhyxjzQjU61eimOMKiw44osYwzzeTXdYbJxFq5BsqYshm5x9knHYBCQ?=
 =?us-ascii?Q?OCBD9ABpKx76vZka0riGNRh81CBM0s3xTCo97Q21ZfPCTTX7QI1ho2VRNMAP?=
 =?us-ascii?Q?gGZKZJgSW5PN3PuhpDotWJXy1LFdSvB/Cgieq6NjZoCdKKMqwLlimbfweR6z?=
 =?us-ascii?Q?2mQkcP5d55ELZhrzyBnZxdg5qs4MwdmogBDvhE2GVRjvUFNYVyImyhKNLdcW?=
 =?us-ascii?Q?qdmACVvGSVCHCza0owiaRAVKu109R6HOwEYoIsqNqBPa/PW1hcXQ89ym6P0Z?=
 =?us-ascii?Q?uzJYMXk7iBBQxbMWvLS1GibiFg+FTG/lqE/yjlD9UGp4jWoMyq81ZdNFqjtN?=
 =?us-ascii?Q?UK36561IjDECZ1WEFZAkWH6RhpEHHtumnk1J0B2G2SdcSNUBwl5kuH4dWBLC?=
 =?us-ascii?Q?hLWiodI2LTMYhE1XHLLL5bP4yCVb6It7O15kRCfn/kqDwRCqqTB2WguVN/Ah?=
 =?us-ascii?Q?eYsu7BYSP5aCLkRGCD1af4rnOI5NoAX28ju+/LeVNickUDY/COev9at3Shvx?=
 =?us-ascii?Q?IQ=3D=3D?=
X-OriginatorOrg: windriver.com
X-MS-Exchange-CrossTenant-Network-Message-Id: c1d556c2-38d1-4050-45fa-08db7384e096
X-MS-Exchange-CrossTenant-AuthSource: IA0PR11MB7378.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 23 Jun 2023 00:57:54.5663 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 8ddb2873-a1ad-4a18-ae4e-4644631433be
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: KBJBjTclrJ6sB59lSzwmEkJnArZ0QiZbM3bdS72+e9oCI9I8009Qror6txd1z/R1q63p8Gqrr6Lwilx7jRc2VJ6hvgJINSNIeQxpsIcafsI=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SA1PR11MB6920
X-Proofpoint-ORIG-GUID: U4_i1HAL3vq_w3VIF6Kh3RN2QZwrblMo
X-Proofpoint-GUID: U4_i1HAL3vq_w3VIF6Kh3RN2QZwrblMo
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.254,Aquarius:18.0.957,Hydra:6.0.591,FMLib:17.11.176.26
 definitions=2023-06-22_18,2023-06-22_02,2023-05-22_02
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 spamscore=0 impostorscore=0
 mlxscore=0 malwarescore=0 clxscore=1011 bulkscore=0 mlxlogscore=999
 lowpriorityscore=0 adultscore=0 suspectscore=0 phishscore=0
 priorityscore=1501 classifier=spam adjust=0 reason=mlx scancount=1
 engine=8.19.0-2305260000 definitions=main-2306230006
Subject: [Intel-gfx] [RFC] tentative fix for drm/i915/gt regression on
 preempt-rt
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
Cc: intel-gfx@lists.freedesktop.org, linux-rt-users@vger.kernel.org
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

Back in September, I reported a PM regression pinpointed by bisect:

https://lore.kernel.org/linux-rt-users/20220916181934.GA16961@windriver.com/T/#u

Around Feb, I checked and didn't see any relevant mainline changes, so I
decided to take a look at it myself, which is when I saw the eight patches
from Sebastian that included a trial of converting the uncore->lock to raw:

https://lore.kernel.org/all/20211006164628.s2mtsdd2jdbfyf7g@linutronix.de/

With a focus on just the suspend/resume regression reported through me, I
thought I had a way to perhaps at least fix that one issue.  I didn't have
the right hardware to reproduce it, but I was pretty sure it was clear what
was happening (as per details in the commit log)

I was pretty sure my change would fix the BUG() but since I've never touched
i915 before, I couldn't quite be 100% confident my reasoning wasn't opening
a door to some other locking issue.  So I put it in our internal soak pool
late March and since it fixed the BUG() and didn't trigger any new splat,
I'd largely forgot about it.

OK, with all that context, I'll finally get to the point.  It would be nice
if others who have worked on i915/rt can take a look at it and pick it apart.

This is still the v5.15-rt version, but I just checked mainline and also
linux-rt-devel and I'm not seeing any reason to believe it was fixed yet.

(Oh, and I'm told the impacted board is NUC7i5DNK1E -- and others?)

Thanks,
Paul.

--

From 20200bee7252d4c9c2a748a9e90fba33f2da9734 Mon Sep 17 00:00:00 2001
From: Paul Gortmaker <paul.gortmaker@windriver.com>
Date: Thu, 9 Feb 2023 21:42:25 -0500
Subject: [PATCH] drm/i915/gt: don't use preempt_disable/enable around reset
 call

It turns out that a relatively recent commit breaks PM-suspend
operations on preempt-rt, on multiple versions, due to all the
linux-stable backports, including this v5.15 one:

  commit 0ee5874dad61d2b154a9e3db196fc33e8208ce1b
  Author: Chris Wilson <chris@chris-wilson.co.uk>
  Date:   Tue Jul 12 16:21:32 2022 +0100

    drm/i915/gt: Serialize GRDOM access between multiple engine resets

    [ Upstream commit b24dcf1dc507f69ed3b5c66c2b6a0209ae80d4d4 ]

Below is an example of the regression on v5.15-rt, with backport:

  BUG: sleeping function called from invalid context at kernel/locking/spinlock_rt.c:46
  in_atomic(): 1, irqs_disabled(): 0, non_block: 0, pid: 45092, name: kworker/u8:4
  preempt_count: 1, expected: 0
  RCU nest depth: 0, expected: 0
  INFO: lockdep is turned off.
  Preemption disabled at:
  [<ffffffffc0636522>] __intel_gt_reset+0x92/0x100 [i915]
  CPU: 3 PID: 45092 Comm: kworker/u8:4 Tainted: G        W  O      5.15.59-rt48-preempt-rt #1
  Hardware name: Intel(R) Client Systems NUC7i5DNKE/NUC7i5DNB, BIOS DNKBLi5v.86A.0064.2019.0523.1933 05/23/2019
  Workqueue: events_unbound async_run_entry_fn
  Call Trace:
   <TASK>
   show_stack+0x52/0x5c
   dump_stack_lvl+0x5b/0x86
   dump_stack+0x10/0x16
   __might_resched.cold+0xf7/0x12f
   ? __gen6_reset_engines.constprop.0+0x80/0x80 [i915]
   rt_spin_lock+0x4e/0xf0
   ? gen8_reset_engines+0x2e/0x1e0 [i915]
   gen8_reset_engines+0x2e/0x1e0 [i915]
   ? __gen6_reset_engines.constprop.0+0x80/0x80 [i915]
   __intel_gt_reset+0x9d/0x100 [i915]
   gt_sanitize+0x16c/0x190 [i915]
   intel_gt_suspend_late+0x3d/0xc0 [i915]
   i915_gem_suspend_late+0x57/0x130 [i915]
   i915_drm_suspend_late+0x38/0x110 [i915]
   i915_pm_suspend_late+0x1d/0x30 [i915]
   pm_generic_suspend_late+0x28/0x40
   pci_pm_suspend_late+0x37/0x50
   ? pci_pm_poweroff_late+0x50/0x50
   dpm_run_callback.cold+0x3c/0xa8
   __device_suspend_late+0xa4/0x1e0
   async_suspend_late+0x20/0xa0
   async_run_entry_fn+0x28/0xc0
   process_one_work+0x239/0x6c0
   worker_thread+0x58/0x3e0
   kthread+0x1a9/0x1d0
   ? process_one_work+0x6c0/0x6c0
   ? set_kthread_struct+0x50/0x50
   ret_from_fork+0x1f/0x30
   </TASK>
  PM: late suspend of devices complete after 26.497 msecs

This happens, because the reset code now takes uncore->lock and that reacts
badly with commit ade8a0f59844 ("drm/i915: Make all GPU resets atomic")

Specifically this part, called out above with "Preemption disabled at:"

+         preempt_disable();
+         ret = reset(i915, engine_mask, retry);
+         preempt_enable();

A conversion to raw lock was considered independently in:

https://lore.kernel.org/all/20211006164628.s2mtsdd2jdbfyf7g@linutronix.de/

...but was ruled out for latency reasons.  However I believe there is a
more simple solution, at least for this recent regression.  If we now have
the uncore->lock now wrapping the reset functions from b24dcf1dc507 (and
backports) then we aren't in any way relying on the added calls to
preempt_dis/enable() above to ensure non-conflicting resets or similar.

Hence we can "downgrade" them to migrate_dis/enable() so the reset
functions can run as-is, without any raw lock conversions or similar.

Signed-off-by: Paul Gortmaker <paul.gortmaker@windriver.com>

diff --git a/drivers/gpu/drm/i915/gt/intel_reset.c b/drivers/gpu/drm/i915/gt/intel_reset.c
index 9dc244b70ce4..341833c364fe 100644
--- a/drivers/gpu/drm/i915/gt/intel_reset.c
+++ b/drivers/gpu/drm/i915/gt/intel_reset.c
@@ -736,9 +736,9 @@ int __intel_gt_reset(struct intel_gt *gt, intel_engine_mask_t engine_mask)
 	intel_uncore_forcewake_get(gt->uncore, FORCEWAKE_ALL);
 	for (retry = 0; ret == -ETIMEDOUT && retry < retries; retry++) {
 		GT_TRACE(gt, "engine_mask=%x\n", engine_mask);
-		preempt_disable();
+		migrate_disable();
 		ret = reset(gt, engine_mask, retry);
-		preempt_enable();
+		migrate_enable();
 	}
 	intel_uncore_forcewake_put(gt->uncore, FORCEWAKE_ALL);
 
-- 
2.17.1

