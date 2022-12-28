Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 7E1E1657573
	for <lists+intel-gfx@lfdr.de>; Wed, 28 Dec 2022 11:47:33 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 674F010E1B3;
	Wed, 28 Dec 2022 10:47:30 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 8F87210E1B3
 for <intel-gfx@lists.freedesktop.org>; Wed, 28 Dec 2022 10:47:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1672224447; x=1703760447;
 h=from:to:cc:subject:date:message-id:
 content-transfer-encoding:mime-version;
 bh=vJ9CEaxwgS8OkkXMfQvlXuMZvnmF/OWBewxpzep8f+Y=;
 b=XHLH3LBnYcbsCf3bqDmLB4eKztv+X/Q4JIqEkuf5c7yR5LTXsxLBjMAY
 /i/KkSiCb/2NYci6cQ8U21QlEs9UgA1ZDa3BTdb6+Igwt6nHfjXkZ+efu
 IZF4rEGreDWac6HyjajYNKSbaAgNgEgFyJyOzf2MVDERchDjwbvBLZ8kg
 35U2VM7E8w5MFrwkyhJDIhj0ZPgzaXtc8zhuayCYac8kjZelNOguzqoGH
 Eu1nR9iAaxrFz/xnOM+Vo40tHJo6IDY+kYdk9GSAiA5He1Tq4shFaJiQp
 gIz3W9EqVjs76RyoAmpnplnFrgAfz13tQAy2aXE40U85RLTzMIPklkjmx w==;
X-IronPort-AV: E=McAfee;i="6500,9779,10573"; a="322083188"
X-IronPort-AV: E=Sophos;i="5.96,280,1665471600"; d="scan'208";a="322083188"
Received: from orsmga007.jf.intel.com ([10.7.209.58])
 by orsmga102.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 28 Dec 2022 02:47:27 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6500,9779,10573"; a="646688635"
X-IronPort-AV: E=Sophos;i="5.96,280,1665471600"; d="scan'208";a="646688635"
Received: from orsmsx603.amr.corp.intel.com ([10.22.229.16])
 by orsmga007.jf.intel.com with ESMTP; 28 Dec 2022 02:47:27 -0800
Received: from orsmsx610.amr.corp.intel.com (10.22.229.23) by
 ORSMSX603.amr.corp.intel.com (10.22.229.16) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.16; Wed, 28 Dec 2022 02:47:26 -0800
Received: from orsedg603.ED.cps.intel.com (10.7.248.4) by
 orsmsx610.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.16 via Frontend Transport; Wed, 28 Dec 2022 02:47:26 -0800
Received: from NAM12-DM6-obe.outbound.protection.outlook.com (104.47.59.169)
 by edgegateway.intel.com (134.134.137.100) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.16; Wed, 28 Dec 2022 02:47:26 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=Grn8NFDueHWCqwvfb6K7bYpbhz3zhqu5uv/Sn/mDsT6vp+wPfWPY9v6BDE8bPyC30EuUFr0GtcT4yPRhrsoK7syJxrms1082cXJysYzeE33ZUPoshlISpPei6PQXzvc/rEpDPu8q1/RsJeDCvJ7ymygE0J9aq0IPy+Stzovh3+3EhANClT11dlyjndVqNvfADdEM/CFbietFP5WZ0BtPXf4NvBrL0Yxicdv1DvIYcWMxd4LvxZbzpOsviYUexg/lUpvQmOXEKmuxkyUjB6oKYuayjxAfWhgylqbNm2c//N7ZoE8agtBGEFT1exPeWHVfxcpSwfP5WAXyMcEC2Gh8+Q==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=U1UEDHye1eWsqr3CcfD9YWalmWvquIOKC5c9toRzJjs=;
 b=Bqe79CwkAQDHdUNaF01sz41PdmZqS2dOcNrmwOti8TWATiEBgC/IHSM6Dooyk+iRuWvo+fTl+wibRbOATf/mnEw7ERwEuq4pbKBEh75S9te4OTAlD1pbjuY3B5Gu1AnTCLJLHk8zyeSt4oW7r1ZHb4Pr/APfitGZ04MyEDvonYxCu7WAvWxwTT3JrdBM+CewXbaFxL12Aso3IexWZUBwll45AUZ98vgiERmgIWMce9ZQZfN+CM3u9IxCCBBSG1+HsmmIS95uJXx8281NWRVMmsjBM3i3Jahq18saP2ldH1gjEfokYyFtBB5FDx/WKCyIVh3uxQXC930W5wdkSA8dgg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from MN0PR11MB6059.namprd11.prod.outlook.com (2603:10b6:208:377::9)
 by PH7PR11MB7073.namprd11.prod.outlook.com (2603:10b6:510:20c::5)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.5924.16; Wed, 28 Dec
 2022 10:47:24 +0000
Received: from MN0PR11MB6059.namprd11.prod.outlook.com
 ([fe80::499c:efe3:4397:808]) by MN0PR11MB6059.namprd11.prod.outlook.com
 ([fe80::499c:efe3:4397:808%9]) with mapi id 15.20.5944.013; Wed, 28 Dec 2022
 10:47:24 +0000
From: Rodrigo Vivi <rodrigo.vivi@intel.com>
To: <intel-gfx@lists.freedesktop.org>
Date: Wed, 28 Dec 2022 05:47:12 -0500
Message-ID: <20221228104712.995922-1-rodrigo.vivi@intel.com>
X-Mailer: git-send-email 2.38.1
Content-Transfer-Encoding: 8bit
Content-Type: text/plain
X-ClientProxiedBy: SJ0P220CA0015.NAMP220.PROD.OUTLOOK.COM
 (2603:10b6:a03:41b::19) To MN0PR11MB6059.namprd11.prod.outlook.com
 (2603:10b6:208:377::9)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: MN0PR11MB6059:EE_|PH7PR11MB7073:EE_
X-MS-Office365-Filtering-Correlation-Id: 7ed1f058-fc6a-4d05-0c7f-08dae8c0e747
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: muZq/zo/t8aDoLhhvWnAJ1Z0p4oBPw151SQqvFWS41YRNLfgRs4tpgyBOEOiufZeRN7A1Q55cyRR83Ub8vv9Q/NDQjba2pWxyTvO29eUFrGmUrNky3ZNi87mncvSeDM6wpnIiPczGTGt7GlFRe7Trw9fJL/2KYNDfw53QVO0KUrfzx5eSvYGfhij13fkPh2J0uxrSwb6n4T2FvX/7vYIu74TFrja17ms5zUXbBV+15Kcr23qUrqp/RJFOhDgKF9u9/8yU4OJJtBXfUQDG3dbpO5TbVGONFoKyw1/B9FRrmNvedpeiYl8KvArQ1Ga3yhS2KNoOb4PLj8ODrWA/8YU1pLl54CS/bSVlZnsRRwaSLux4aicv9Ibp25s8rFoMzZNX8RBapxla4qbm17d1wgosIqqs/zGGgYKwj1gcVeMWkZNbcyzTO5S7XtaSeV9nGHQO4QhR9/2EnX1HdIusHXpYyGqFZVJS+cFdCkuXjBqkdLGSB0OT+0hj9S4zcnUYBG13aZuNNmknzh+GIaqX0O4arlM0f3cxO8PoNoMp627SO96lwW8diPCU2l+L/zxxJ0RLmkSDC+d7qgR+bEtDOVAjlE3B2EhaT1EA4nZuOlqYoi6lhLQMzXZJwXJdqz9/07KJTrHapfK70zNK14DXXCcIA==
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:MN0PR11MB6059.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230022)(136003)(39860400002)(376002)(396003)(346002)(366004)(451199015)(4326008)(86362001)(8676002)(66556008)(66946007)(66476007)(2906002)(41300700001)(8936002)(44832011)(5660300002)(4744005)(83380400001)(6486002)(478600001)(26005)(2616005)(1076003)(186003)(6512007)(107886003)(6666004)(6506007)(316002)(82960400001)(6916009)(38100700002)(36756003);
 DIR:OUT; SFP:1102; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?us-ascii?Q?zDZ+2A8PXJviVvo6c2Pv08tiN0LQZugeBfLHKXqV9OOlAGOMdrnc2ZDfo8av?=
 =?us-ascii?Q?TtT5eLDSBVnW6hSSo6h1TZcLEKcBdV9P8H/GyF4kAbWyOukLThb5qnvTBYdV?=
 =?us-ascii?Q?jykqZZIU7HdGvjjBDh/TznRTLKoZkpa2nqTh1mVDzArDZTtZUE9sbTf3tSMe?=
 =?us-ascii?Q?4kGXBxyAg+v50bKLZWf3eqPN6ZlfZTz303SspyvzN+BY0e0Ips7Gg7DJNKyM?=
 =?us-ascii?Q?3EOpV3Jw8oBDo3ssiAXOEgA6jEnmxFHmCner1AVjQ13BcjqnqPz1ppV3PtLS?=
 =?us-ascii?Q?LZOVAr/1YREReU6fCk5eZLnuaNkH8tvla+CisQ+abaT1Enq0oLbvCuYzEXXL?=
 =?us-ascii?Q?Y6D6CL89CpsoruUCqI5dLUGLoN+N8TGtnNSVLDDgauLZKKF45cQ8Ukl/DlJV?=
 =?us-ascii?Q?Bq9nP93DEtjXeHiE6dzDx6PYR9zYgNRVpUQ/VuMzA5N4ZDZvZLwAI+1FjsK7?=
 =?us-ascii?Q?J+kFVNMaVcYEfAthFZ8YBUYD+ZnMlJKfhEmhizjAMVAjER6hNuiwdWx3KqCf?=
 =?us-ascii?Q?99FmST2WjquqXu+Mhte1/psp8376FM64kL80KOQ43UeGZuHR8pvnFfxxb8J+?=
 =?us-ascii?Q?q12pMOdz7HA3SeJGsynQMJG1xZqKStaqAo7XiEEQsPBhAzgi07coOWuKrjRt?=
 =?us-ascii?Q?eN3WqE1QhjmSGwltk4PBex8CFjB5Ocp38mSrNbHWhe3kC4rbbxe8oClj+3LP?=
 =?us-ascii?Q?xGTB1J937ICxuCM6r07YtJk9T0aMIXs7bxyqnd9s6PEg8DwRXzcXXEUTYu20?=
 =?us-ascii?Q?CV7DaWT8G5WA2uN51AMLG+xBld61vShMltZfmBg06Ds3izz7OtJRle4/TISX?=
 =?us-ascii?Q?y2Gs8tF2LdGUlVYt1iyOVXnukUrfqvcOrniOyFlxbTXfL5gg7DcmCs0NTxig?=
 =?us-ascii?Q?SjvmdWeSCvdW+D/C5XJex13d8rqJ4QmpQ3i4EUwIcLqhHaeeta8RPG1lgZ2V?=
 =?us-ascii?Q?qZMsR/dqwBqZ/3ju3V3xUAJ60EH6JTlxXz+gqmuOlhUyvqzexXhSOPRBgCQR?=
 =?us-ascii?Q?K3fsUM/w/Vygyyic6L+zzwGvqw53Q5rvn2Qs2uWVZ3CfClvLeHlI6r99TTnn?=
 =?us-ascii?Q?N1/fXYDd9K8HTTJ02fukfosEFqQMu7mNJpMOMulZEtnSdZnM9sOINIAXAAwO?=
 =?us-ascii?Q?pFGNyr2cafEj+o6lS3o0TCGyYu5CaN9dvx8hm9fRABXsmz4TH+hOHMxtV5Yh?=
 =?us-ascii?Q?0afWxJw6aiI9ZlxZrrE65rijT6xVItPT5YnAJGYaD8NzCbYUCX2+h27BNClS?=
 =?us-ascii?Q?4Mna3kXXmFYY2S8LadOCrKsxUL66JvruPKim3fWL4B213xO8TcLXf/hJ1NP4?=
 =?us-ascii?Q?ifu15IHUOYI91XbDnHF/cNfpvswCKpNSyQ7jLdoYEwA8zlW8ozx8gfRcxQIm?=
 =?us-ascii?Q?n5zl6HvFvQZP/TZl120XguXia+5aD0XipG4EmUr7E22zZjqyp3ONkL09LSsC?=
 =?us-ascii?Q?Ac2H7PORhCDiDHo9aq9P+p5Pzc6+mld5NS2YQYg6Fml+EMELEQaYiRyOOQu5?=
 =?us-ascii?Q?UGGnRZ9BMT9ArQc8RmfJ74sCkfjS/qyu7QTH5DlouWoc0aaZSV2CZa+mv62Y?=
 =?us-ascii?Q?H10y4kPDWFG/mkyPdQLkIeQb387prefdZjoq9gVk?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 7ed1f058-fc6a-4d05-0c7f-08dae8c0e747
X-MS-Exchange-CrossTenant-AuthSource: MN0PR11MB6059.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 28 Dec 2022 10:47:23.9310 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: FBf4l32dlAkNIf/gDCXFKCOCJuznN06HQKaY7y1x07IPZYFsYlqrsDzQJ/xanxy/uRdH5oOmV3F86h7zXLMhxQ==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: PH7PR11MB7073
X-OriginatorOrg: intel.com
Subject: [Intel-gfx] [[topic/core-for-CI]] Revert "perf/core: Avoid removing
 shared pmu_context on unregister"
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
Cc: Rodrigo Vivi <rodrigo.vivi@intel.com>
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

There's a complete rewrite of the core context handling in
v6.2-rc1. find_pmu_context function used in this commit doesn't
exist anymore. Also, let's first trust the upstream component,
then work with them to get the issue solved if still present,
re-introduce this patch with the old function only if extremely
needed.

This reverts commit 87b32477e514aa9030a405b168581ee11910ea83.
---
 kernel/events/core.c | 3 +--
 1 file changed, 1 insertion(+), 2 deletions(-)

diff --git a/kernel/events/core.c b/kernel/events/core.c
index 930c99e4d89a..c3762a371dc6 100644
--- a/kernel/events/core.c
+++ b/kernel/events/core.c
@@ -11528,8 +11528,7 @@ void perf_pmu_unregister(struct pmu *pmu)
 		device_del(pmu->dev);
 		put_device(pmu->dev);
 	}
-	if (!find_pmu_context(pmu->task_ctx_nr))
-		free_pmu_context(pmu);
+	free_pmu_context(pmu);
 	mutex_unlock(&pmus_lock);
 }
 EXPORT_SYMBOL_GPL(perf_pmu_unregister);
-- 
2.38.1

