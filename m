Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 82109561EB9
	for <lists+intel-gfx@lfdr.de>; Thu, 30 Jun 2022 17:05:52 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id D5A421135B0;
	Thu, 30 Jun 2022 15:05:50 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 1F2871135B0
 for <intel-gfx@lists.freedesktop.org>; Thu, 30 Jun 2022 15:05:49 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1656601549; x=1688137549;
 h=date:from:to:cc:subject:message-id:references:
 in-reply-to:mime-version;
 bh=4r6SH9qyz+tSy36GTrjUAQPcsicT7EkHv/e1mzRJqHY=;
 b=KHdVyUaxqOqtoXW4UoKk1LNwo8aduzPZ7rXv5FMmvJUXFsP2ML9xucgX
 VIV65pwqVqCGEf5vEb5bubmCfst4lF+Pc9H5nMBd+s0WWy/15fyyXk48/
 ddjUNibig4qeo0Rx5QlaIaGtxIEOmyTIaeJSOFjfYzLhRXt+BrwXRdWYH
 sZWEkqr3AA2YvICSqTm5fbd2QlJsODvhPpXOEFPjdOURhY1VvxxkYxHFl
 pruCbqnl/oHUkgPYL8zAPyi1tgfzETEhCOSR1e8Bsb/E5rFxiDC7tMhYo
 1w+ea1EWp8X7iOBT/BdYxERPyekt7jul/x3fB+7e9SEQXjv2XNOp5AcXA g==;
X-IronPort-AV: E=McAfee;i="6400,9594,10393"; a="307882701"
X-IronPort-AV: E=Sophos;i="5.92,234,1650956400"; d="scan'208";a="307882701"
Received: from orsmga005.jf.intel.com ([10.7.209.41])
 by fmsmga101.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 30 Jun 2022 08:05:46 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.92,234,1650956400"; d="scan'208";a="768147372"
Received: from orsmsx605.amr.corp.intel.com ([10.22.229.18])
 by orsmga005.jf.intel.com with ESMTP; 30 Jun 2022 08:05:45 -0700
Received: from orsmsx602.amr.corp.intel.com (10.22.229.15) by
 ORSMSX605.amr.corp.intel.com (10.22.229.18) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2308.27; Thu, 30 Jun 2022 08:05:45 -0700
Received: from ORSEDG602.ED.cps.intel.com (10.7.248.7) by
 orsmsx602.amr.corp.intel.com (10.22.229.15) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2308.27 via Frontend Transport; Thu, 30 Jun 2022 08:05:45 -0700
Received: from NAM11-BN8-obe.outbound.protection.outlook.com (104.47.58.168)
 by edgegateway.intel.com (134.134.137.103) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2308.27; Thu, 30 Jun 2022 08:05:44 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=AYnT3L+K+ueu0zBv65jOdR+H8zVnrf/CCmFVPuzxCamid3YU8Y9KvY3t5zE76DlsS+sWyZ+EYGZBPLlP5dF44zYgF3QfsomdhDZCjQ+CyhPvn+wP1h/m8cqY7sd09UOs1cXCFkT9XxPdUbdx+QQW651cjCzs4TwUd53eXb2YKRzzJPlit3/ZIw21MNg6TVIaJk1Jw+01dgkSvVaGnH3DAFDebtEYnxiNJffy8yOO4dKn3/066tQaAo9iEKAW0OAcUUjz3uJoTgT7QG+FKQQDbHJZ+bAqOggA/tLc1pwldBBUyJ8ibWyt3LftEblGLiUBmAfoRCEHQkpYB76gRIjb8w==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=FIKDimufJsYdDRUf40gAcT0HKv+B8s6HfJKL1jeJ1GM=;
 b=IP+FTVOAyMkAkwQao23iTYBgiVvpsnnJjFr1A6wirySsZDyvpmZwScCWN0B6IgZ8t9EOMPFzi5Di/tvF4217z0cgxm8RkxkK7s/jsCbYJmBW8B9iifdz9lnXq605/+C8MdhKJoXxELNNsLRDonbeKP5jAn1mz1EnGj28PM3PIJpBiq+OptSUAQoH1QAiVhrviYwWq0rhh4jEkcTjTzKKuiSaqrUdAoxiP4p9DQlEvC1nw0sr58PqcY3aimcvqHdeswhglufdrzxPMGQ8oucetogoN7a/eUTl3xa1SqImSzdrNfI2OVo5Mz29pXZQ+pebTmTWnuG6crqtlck283KIGQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from CY5PR11MB6139.namprd11.prod.outlook.com (2603:10b6:930:29::17)
 by BL3PR11MB5699.namprd11.prod.outlook.com (2603:10b6:208:33e::8)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.5395.14; Thu, 30 Jun
 2022 15:05:42 +0000
Received: from CY5PR11MB6139.namprd11.prod.outlook.com
 ([fe80::a012:82da:5edb:513]) by CY5PR11MB6139.namprd11.prod.outlook.com
 ([fe80::a012:82da:5edb:513%7]) with mapi id 15.20.5395.015; Thu, 30 Jun 2022
 15:05:42 +0000
Date: Thu, 30 Jun 2022 08:05:40 -0700
From: Lucas De Marchi <lucas.demarchi@intel.com>
To: Lionel Landwerlin <lionel.g.landwerlin@intel.com>
Message-ID: <20220630150540.jseszjwzdjqom4vn@ldmartin-desk2>
X-Patchwork-Hint: comment
References: <20220630083508.223348-1-lionel.g.landwerlin@intel.com>
Content-Type: text/plain; charset="us-ascii"; format=flowed
Content-Disposition: inline
In-Reply-To: <20220630083508.223348-1-lionel.g.landwerlin@intel.com>
X-ClientProxiedBy: MW4PR04CA0306.namprd04.prod.outlook.com
 (2603:10b6:303:82::11) To CY5PR11MB6139.namprd11.prod.outlook.com
 (2603:10b6:930:29::17)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-Correlation-Id: b22b3b3c-8846-46b3-f9a1-08da5aaa0057
X-MS-TrafficTypeDiagnostic: BL3PR11MB5699:EE_
X-LD-Processed: 46c98d88-e344-4ed4-8496-4ed7712e255d,ExtAddr
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: 9fdpd6uN6/zCy5pLglUaxR39zH8653VY5lakMd0ppJrSOweG8bXC5vAz8msp0wE1+ebxyaUMv89R0SMtHp+I47TmQ5ZxXt4tstlBSqSnHlLVWoWOIoKSxIRdXOcXCA9gEnjEuHLhhd0T+/kcWkmv+7QB3tqcE281cN1SjTuA068jdUtAkTeeOi3UgBCgx8Gx48+jpvYXSi0V1QBElf8QkaR/gejXDLpD+JDNxoGDkVodx/4BLgLBSy1y9tPrCYSaueBYVsz7Q0M6IFXLp5KWhFfpI7VQethm63ECVw5ju9OBeXdAU+GEp/n7qYLBq5dgwpGuYhKX3WCUrC9vj3q9w0fComB4JfO92matsEd23ABXMkHJTbbaKwhO37aWrzW0mZtTQ4YFTFqZPVEKtXiknA55hSmAE8XH9kArSXehStUTnf9gwupgTFAqW8LvvOJE4NzSeWKS7IS3mN+qRNQExne0RScNTGCW9TxqWb/X6TtKOe4HcUhQwGOmHpm0JcR0ww5ys8vpGecS3gW0z1x6Ui+Tvz6GuZE4qUPhiaNI1dM4BMeZbI3+nNlKx/sMtnmsc/ffSMUzy8Wx4jQNyyYDtdCn1CXp6Wyu4rX0H7oQv1Ojx6647Sf6/9HrO6YxcTiogAxPeh71d/zZyHbJLscaC7X0eJ6wudGdOlOZrDmzLA8eIBOJ2BldRuSELssOsNo0yFbJxGfuN9R0oZlg509gtV0gX93pBb0x1qQ7ffoVmlwalV0kFAJu+GmJwRMznKOB
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:CY5PR11MB6139.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230016)(7916004)(366004)(396003)(136003)(39860400002)(376002)(346002)(6512007)(41300700001)(9686003)(478600001)(5660300002)(26005)(38100700002)(1076003)(6862004)(6506007)(186003)(82960400001)(6486002)(8676002)(8936002)(66476007)(66946007)(83380400001)(66556008)(4326008)(316002)(6636002)(2906002)(33716001)(86362001);
 DIR:OUT; SFP:1102; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?us-ascii?Q?R4NcP1hz5bTNFjXYWvLFRA+tK2PmSbXO7x9s5JD5IFMiykElMfhtyQxzYyH0?=
 =?us-ascii?Q?1dwx5+28r0ryyG7paa/cPt8qB5pNV0bGIQggg8idWBCfY+3x5pwvHd23v3T1?=
 =?us-ascii?Q?zsoPeo9gzxOWL0dtGxp3sxaxlcHvBbkm5/wmyleKD8QJaqOVOAKNg47NeRmU?=
 =?us-ascii?Q?ZtD45cAbxnMhmGqPzTKeLLIJ4ErQglAZvvKDKaYffRjih+JpG4CacV2YnPDC?=
 =?us-ascii?Q?To4pGfC42PgVDoFUCI6sEMns0duAsbyVqdIzS9smwnUyqO0i61w4+bq14eD/?=
 =?us-ascii?Q?kKw+ql6oLkGUw0BaEGYgrI2ZhXOWV4V8GDR6BfVVnW49adw970YLm585YD+Y?=
 =?us-ascii?Q?nFK4sR7RkZHnoNP3lMrbzPOGyj1TPce2zk3pFomwYlxAQNgW5R6/8xwe5f0P?=
 =?us-ascii?Q?qCbcu2dAbhcd72C1VU7J9F2hfwKVbIVWaC2CFsQQqh5JUH5xLMiGyg5zOr7C?=
 =?us-ascii?Q?fDJKRIrZ1kWKJAE7qj0U+fObkCpXbhUoTQH6o9uCzSrhEGOzP4X7gXSTkWPH?=
 =?us-ascii?Q?Vaw3RhCThsD4cFZavxPiTOU6mBIdpv89cGYIrY68ob0KexFzQNk12ARNhJM7?=
 =?us-ascii?Q?NQvbp5dNyz2W/Te0J+NdWv9u7z5xYMpJiTsLsNxaHc29iCrcDP8tMQtuFryy?=
 =?us-ascii?Q?GJm8unCIwN9vHe0AIBWmcPx4xcFUpnKeNm/WtckC1J1CAPGfKnTkwSwUl70s?=
 =?us-ascii?Q?Eko131c7nHyu7CiX6fb29Sz1GkmsALsSs+t+l6lFTjPH1VUoc6WFwoy+uFah?=
 =?us-ascii?Q?FMm1SJy2oPFmuGxnUoQFyzGeVYPExgJZJ4q8IXZfd31fBi/L4eAh17dONawA?=
 =?us-ascii?Q?oBk1hz5hbXkB1eZw/sikMQ0LSt9X5pnI+ODHjY/4RqpIXAXJY8jhJpFxFOyn?=
 =?us-ascii?Q?PLY+5yEeS+5/whZFU6Kx7o5jL12lzrF6rboapLZX0G6vpow4eQuUt0CzRDq5?=
 =?us-ascii?Q?YX175sy943LiAKTIGdVtgUdQqujpduKO2hHqS/7V7VUXKwvMdJ2Gw5qmYs8Z?=
 =?us-ascii?Q?kMRlXB8cNgi7jueioN8/HJE6ayTFBzV4Y3eUARvWdDFUXjFKM0cSoORe7dUS?=
 =?us-ascii?Q?yF7RToKq7tvGJyOLMveM8PFaMKw15p2JlLUCuD/v8oydhCgsOGXx89d1qbBQ?=
 =?us-ascii?Q?Anl2eNFuE/+vWN+F+LgABAqiNwKWiZ36uxcPANoVAxHwA24TsvrvfDwN/4Fn?=
 =?us-ascii?Q?3khTziMnSRev6qndaO6b+2uVPKYrdcICDjkYq/fqPUv5uRFptFC8iQTsIdvo?=
 =?us-ascii?Q?5y5AOv5nyZCQKj4dtRylgZ4Km5vSnWc+TTvN6sSMlh9oZ40arNxLGW4amDIz?=
 =?us-ascii?Q?0c9G8Oc/eoW9Lq29LxQ/tShBZTJuwL/2hTGjWVigNU6nsqBJE0CX/nBbOsTW?=
 =?us-ascii?Q?sJZVkcvgOphrtjJF+d5r+FlQ2R0qYtjcgmcXKAnbFSWQirhPEizYxCMMqACg?=
 =?us-ascii?Q?PPnmQTwBdssyvHXaQFI3YBQcZrpkf4OawwXnn069dn+uHvopX5P+a3pcVnI3?=
 =?us-ascii?Q?oxaJDKm8BQlwYY9YQqf9oc1lzTfd5jTclF0qHBddzBu1wbgokP5GzM5TyKVa?=
 =?us-ascii?Q?1GJ1B8xdjRfnmz+K1buSNy9xlAr/1RtEoBn+3M4Bmnus/8n8URZRq0aPqP8t?=
 =?us-ascii?Q?HA=3D=3D?=
X-MS-Exchange-CrossTenant-Network-Message-Id: b22b3b3c-8846-46b3-f9a1-08da5aaa0057
X-MS-Exchange-CrossTenant-AuthSource: CY5PR11MB6139.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 30 Jun 2022 15:05:42.5552 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: tiXMdwWkE8XxUjp3fPrQvuogL0ts0jaQuBYRWeBykSKuuuI2G+4ROtI+txXmRK1I6QKUWWF2H5k2LfOY4Zoz3nGNOeffI1cOYPDXYfooPmo=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: BL3PR11MB5699
X-OriginatorOrg: intel.com
Subject: Re: [Intel-gfx] [PATCH v3] drm/i915/dg2: Add performance workaround
 18019455067
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
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

"Add performance tuning for RT_CTRL" would be more accurate as this is
handled as a workaround in the spec.

On Thu, Jun 30, 2022 at 11:35:08AM +0300, Lionel Landwerlin wrote:
>The recommended number of stackIDs for Ray Tracing subsystem is 512
>rather than 2048 (default HW programming).
>
>v2: Move the programming to dg2_ctx_gt_tuning_init() (Lucas)

sorry to nitpick, but as said in my reply to v2, this is not accurate. I
make a lot of mistakes on this kind of things, but this time I even
checked if it was in the context state.

>
>v3: Move programming to general_render_compute_wa_init() (Matt)

and also disagreed with this. We need an equivalent tuning function for
registers not context saved/restored. The tuning values are all in a
single place in the spec and having them in their own functions in the
driver make it much easier to check than having to search for it in the
middle of workarounds.

This just happens to be the first and we don't need another commit later
to move things around if we can make it right from the beginning.

Lucas De Marchi

>
>Signed-off-by: Lionel Landwerlin <lionel.g.landwerlin@intel.com>
>---
> drivers/gpu/drm/i915/gt/intel_gt_regs.h     | 4 ++++
> drivers/gpu/drm/i915/gt/intel_workarounds.c | 9 +++++++++
> 2 files changed, 13 insertions(+)
>
>diff --git a/drivers/gpu/drm/i915/gt/intel_gt_regs.h b/drivers/gpu/drm/i915/gt/intel_gt_regs.h
>index 07ef111947b8c..12fc87b957425 100644
>--- a/drivers/gpu/drm/i915/gt/intel_gt_regs.h
>+++ b/drivers/gpu/drm/i915/gt/intel_gt_regs.h
>@@ -1112,6 +1112,10 @@
> #define   GEN12_PUSH_CONST_DEREF_HOLD_DIS	REG_BIT(8)
>
> #define RT_CTRL					_MMIO(0xe530)
>+#define   RT_CTRL_NUMBER_OF_STACKIDS_MASK	REG_GENMASK(6, 5)
>+#define   NUMBER_OF_STACKIDS_512		2
>+#define   NUMBER_OF_STACKIDS_1024		1
>+#define   NUMBER_OF_STACKIDS_2048		0
> #define   DIS_NULL_QUERY			REG_BIT(10)
>
> #define EU_PERF_CNTL1				_MMIO(0xe558)
>diff --git a/drivers/gpu/drm/i915/gt/intel_workarounds.c b/drivers/gpu/drm/i915/gt/intel_workarounds.c
>index 3213c593a55f4..ea674e456cd76 100644
>--- a/drivers/gpu/drm/i915/gt/intel_workarounds.c
>+++ b/drivers/gpu/drm/i915/gt/intel_workarounds.c
>@@ -2737,6 +2737,15 @@ general_render_compute_wa_init(struct intel_engine_cs *engine, struct i915_wa_li
> 		wa_write_or(wal, VDBX_MOD_CTRL, FORCE_MISS_FTLB);
> 		wa_write_or(wal, VEBX_MOD_CTRL, FORCE_MISS_FTLB);
> 	}
>+
>+	if (IS_DG2(i915)) {
>+		/* Performance tuning for Ray-tracing */
>+		wa_write_clr_set(wal,
>+				 RT_CTRL,
>+				 RT_CTRL_NUMBER_OF_STACKIDS_MASK,
>+				 REG_FIELD_PREP(RT_CTRL_NUMBER_OF_STACKIDS_MASK,
>+						NUMBER_OF_STACKIDS_512));
>+	}
> }
>
> static void
>-- 
>2.34.1
>
