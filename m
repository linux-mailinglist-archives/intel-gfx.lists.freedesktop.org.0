Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 4CDB3556DD1
	for <lists+intel-gfx@lfdr.de>; Wed, 22 Jun 2022 23:25:27 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 9FBEA10F2CB;
	Wed, 22 Jun 2022 21:25:25 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga04.intel.com (mga04.intel.com [192.55.52.120])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 0871410F0DE
 for <intel-gfx@lists.freedesktop.org>; Wed, 22 Jun 2022 21:25:24 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1655933124; x=1687469124;
 h=date:from:to:cc:subject:message-id:references:
 in-reply-to:mime-version;
 bh=9wwNqsJWSv6vfVTAZWh0yPSqtiUVzbV0jmDJ0/ZGblM=;
 b=OHP7qjGLl6tBBR7m7Kpo6hscfXdbDHrN34Q17LDLqHz5SJ+GPV3v00Ok
 BPQSFgvpJJT/45zIta2xmbpdlARhohIvKbcLwv7nqC155J16lBpZceozO
 PiAx3wdzBdkK0CPqjtAX0JJTHBwfylcYMjiH/R+z6uC/IRs4w1yy/796r
 iPhCCLjnllsa+FjaveMVKwvG+VYeA3YQS0QuiQZA+RgDk2sTwzR9uvf28
 ByP3hmDpfJZOrCLuPo/WSg/tIBdnjBJuuy/OKv8l9jmn77RPUxKSRa3GM
 Dw6FSyipHbsk0BPTMIpR4frLnxoNn73EpnKDTob2+i9z96SQgcleosP7G A==;
X-IronPort-AV: E=McAfee;i="6400,9594,10386"; a="279319129"
X-IronPort-AV: E=Sophos;i="5.92,215,1650956400"; d="scan'208";a="279319129"
Received: from orsmga002.jf.intel.com ([10.7.209.21])
 by fmsmga104.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 22 Jun 2022 14:25:23 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.92,215,1650956400"; d="scan'208";a="588362969"
Received: from fmsmsx601.amr.corp.intel.com ([10.18.126.81])
 by orsmga002.jf.intel.com with ESMTP; 22 Jun 2022 14:25:23 -0700
Received: from fmsmsx606.amr.corp.intel.com (10.18.126.86) by
 fmsmsx601.amr.corp.intel.com (10.18.126.81) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2308.27; Wed, 22 Jun 2022 14:25:22 -0700
Received: from fmsedg601.ED.cps.intel.com (10.1.192.135) by
 fmsmsx606.amr.corp.intel.com (10.18.126.86) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2308.27 via Frontend Transport; Wed, 22 Jun 2022 14:25:22 -0700
Received: from NAM10-DM6-obe.outbound.protection.outlook.com (104.47.58.101)
 by edgegateway.intel.com (192.55.55.70) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2308.27; Wed, 22 Jun 2022 14:25:22 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=WHCoSZJWGMBt29hujGDNrT7dxVF0mr/5bHMjgzqlB/W6WseAlMR66MjKNjVtzThIGW7Yo1QX9onzzGJCqkbzCOwmyanAvLToBbWjKsXBwBJzeKiRHv/5ILYszQlFHDp5++yy3nIgrbPqleWSWUUWha3gO6CgGjGGNRMBzPGt0FzAZ7eturuL63fAQEdTNboPkgD+yJRNFJnwpbkC6lxut3s7+ebHufDZOA8f/fgNsQOthSLxPrpZNVmQeh9xONuyppFeYYbiogCURRByrwn/1zD/ny80D2srAEF4umkk0ILy4DkCKWudUOdZ4/qBnANgqoLCtYFe2i7Y0w5F4ijFUA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=sTUljaNEyyQlY6uunRu+UEmcZfQKeXuTK1DWVYPIkLU=;
 b=bplPJB0Pc2mu3Rl6kRXqfVOR24UbFMbKjcg/emwXpXVTt8y3tk41ORnU4+sPrFp2dgJrTdJrlsYQuqUl90E5nv97Dsiko8BGcYUGJjSBgAYC+gppOhUMp9GoYwZgEyvghxZ6StEUHg1IDkS8nvww0GGeh2SttMZEV/aS94JOESHWGgtofBZK65DIX+gEkzamW1jaS6Ul14QpNHpZsWPjruM3GgNpx6Z0aShfHFscINilz3ip5FBRHs8VSd3Nv/QfDR3flCfB71y+0BrblBq+n2tr/cqeOy6aG8XE0jVrgIFqEIYTIirpU+ojS0vsuugTC+/rdM9IPlKJTy0aZFaY+g==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from CY5PR11MB6139.namprd11.prod.outlook.com (2603:10b6:930:29::17)
 by BN7PR11MB2609.namprd11.prod.outlook.com (2603:10b6:406:b1::26)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.5353.18; Wed, 22 Jun
 2022 21:25:21 +0000
Received: from CY5PR11MB6139.namprd11.prod.outlook.com
 ([fe80::fc50:22fd:6bdb:5769]) by CY5PR11MB6139.namprd11.prod.outlook.com
 ([fe80::fc50:22fd:6bdb:5769%6]) with mapi id 15.20.5353.015; Wed, 22 Jun 2022
 21:25:21 +0000
Date: Wed, 22 Jun 2022 14:25:15 -0700
From: Lucas De Marchi <lucas.demarchi@intel.com>
To: Lionel Landwerlin <lionel.g.landwerlin@intel.com>
Message-ID: <20220622212515.empqk6lhvmqsh4v2@ldmartin-desk2>
X-Patchwork-Hint: comment
References: <20220622183836.13825-1-lionel.g.landwerlin@intel.com>
Content-Type: text/plain; charset="us-ascii"; format=flowed
Content-Disposition: inline
In-Reply-To: <20220622183836.13825-1-lionel.g.landwerlin@intel.com>
X-ClientProxiedBy: MWHPR15CA0051.namprd15.prod.outlook.com
 (2603:10b6:301:4c::13) To CY5PR11MB6139.namprd11.prod.outlook.com
 (2603:10b6:930:29::17)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-Correlation-Id: 70aecfa0-662d-4a79-59b2-08da5495b610
X-MS-TrafficTypeDiagnostic: BN7PR11MB2609:EE_
X-LD-Processed: 46c98d88-e344-4ed4-8496-4ed7712e255d,ExtAddr
X-Microsoft-Antispam-PRVS: <BN7PR11MB2609764847C28BA630CF6ECA94B29@BN7PR11MB2609.namprd11.prod.outlook.com>
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: DURlCzqp6s3OkdVhJ1eADNmjkbZwQA/zeXHkfHb6ubbR1khcGhfdZTWy+br7+LNZhnfhxK4WqxcOn4fUGp9HtuCmoaklEZqzRBb9T8sL+aRBQ0nMr+CiZ+sj0gf2Rdg7AyQX76b75lAuibs2NoNYIea9pROtjinQMASvt9Vh6De/xUcTkLaQwsTFp2hv9JD31hIN2F6RahLdu4KI7+7koHO0g3Oc1+KuBKzIajZpkQlGfPm9WljpaXuPwdq+sW8YsgWioyLR7fq6tTlDNpPKDvpEyevoGekNWCQZ4C91TPjo9lgNGMR3QSl0aVsorEZpT1vwRmD+7Hcj1IgwJcMLB8pcLjiQhgSyQC+Em8QkD/3RMNB0TE49xH+XZpmt8H6qdIRNZyztIMmkx7AaIqfUwZCovEuNFd8WaRB43Yq1j5OvWs4Sp+aepQBZypTXWfXr3STa3PZA1m0Kb/DmmtCtJgMGy+uslgoc8XLaPjWT3PzRfw5ACHJy84qPmB8qzpHj/WlDFEp4gQe/XCC9+Db6zNxYX497gyZd7dhZN1HmoDfb0ODebuXN1kVcHUR2i1Ia1FToQNxpImBGPrrdSpJ4aXnalXj7rCRZxrWGrWepg42XAx4cpL6hpc7jokWJxt6Ddt2yGs9qbMM+wIyQbir5aNrF4Y+SWvaAjb/uVt9WsmmCNeaRuaoIcXLUouTL1bMh
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:CY5PR11MB6139.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230016)(7916004)(39860400002)(136003)(376002)(396003)(366004)(346002)(66476007)(8676002)(6636002)(2906002)(316002)(66556008)(66946007)(6862004)(8936002)(4326008)(38100700002)(86362001)(1076003)(82960400001)(478600001)(186003)(26005)(6512007)(5660300002)(33716001)(6486002)(6666004)(41300700001)(9686003)(6506007)(83380400001);
 DIR:OUT; SFP:1102; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?us-ascii?Q?o96oJC8K9Rh0XRNsYV0iacXTHy/oVAj7Etj2o6N9J0wyqT63nS+Zvqy/mGz7?=
 =?us-ascii?Q?htF7a5LWzp+wjw1/6bV5T2ZshoI866k57hGgbOwcrPLkZm4oEDgMArC4Q6DR?=
 =?us-ascii?Q?L2CPIQOtQ2O0Xis68jnFIGfULuedtqdk7egfBf6L8VUwWrx6qyPQr0ROVqqj?=
 =?us-ascii?Q?Vn80OY788cuVO16kkc2y5egD0JXdef4bay8AMKvfZ4jIk9CeKAVUcKJ/jUxg?=
 =?us-ascii?Q?5hQahsKmgYvn4FU8mRTBSwXF+p7el3hy7JpwRdOA2jVuTovoh2d4XrE1C4XO?=
 =?us-ascii?Q?dnXo5Rdzdih04tYzM9ct6K36c5dYdqxd01zuedlXF0QH+LAArUvHfIE+tLGp?=
 =?us-ascii?Q?TwlXY7tqfgkxbCjLKkruQThZ4cPGdP5prJCUzKFFwy0V3iRx8E562tZGn+Sa?=
 =?us-ascii?Q?e/PNFupOC01aBvfqAexAy+aTdZ5h7OrVVfQr3aH7V3LcvMzf+RM572q8zXre?=
 =?us-ascii?Q?BO4QlC/KRFM9f24cmv/Z0OwSks3RMv6NDNHatDkK9ap16B2edrdnV0kvTao+?=
 =?us-ascii?Q?ZErRZydL9YwnZ15Lk+8rE0+Ur59HYfRb5xk1AgLCS86XqzUJ3d0iYM3wjQml?=
 =?us-ascii?Q?HVSUjtJynjkg+Uj1l4865PjywVlQybHP1/6kg9JzhBCfyJ3JXtpOaXDyW+Ig?=
 =?us-ascii?Q?ktPp4mSdVWBW/LxBQb7m+lYpxrW0IZSHrkmd2zMQXnoJ1Ps08zXuh7k4mx9A?=
 =?us-ascii?Q?p5hlfW5oLvJqeX8wQoWhc1bllmeJKtRcaHs0nCsV1BmOkVbi3PudtcyzHB6v?=
 =?us-ascii?Q?mNszYxFLSXrIrihwqj87b7moOiD/b0Ad1tiQW1nswKVFowsRKoZua3R9hI2l?=
 =?us-ascii?Q?lGsiCqJws7eiMBeF4l5CSadMaFGB8I3gAIVT7wo+N9Wwge2o0y7yKE4gv6si?=
 =?us-ascii?Q?mf/GuPxEP9llxAX+VXDxh93RdfCf1TZQQfBWvS4470Lp1tsFUTxNwN2bEOYR?=
 =?us-ascii?Q?lawweYVWFqNtqpKG9l3l2V5T/PkNhScURqGl3qpgT2R88MS/nrxX96T6ujDD?=
 =?us-ascii?Q?ErCefHLLNwW8ranWssCBiElF2v2/x8OfYxMGG8VB4s4cYpYZb4HRQaCY25XZ?=
 =?us-ascii?Q?A+h5B0o/N6/+TgUJp/s9knC7P86DOdRE4b2eOEMIK6eFAizIiUiA6NCtc5+j?=
 =?us-ascii?Q?5Lge/8NvXVGqmLU3LBUv3N2GgkK3SWhVr0fUg5yKgSXEHE/UbaXa8k2ip8hY?=
 =?us-ascii?Q?4KECFzXvNLFoMgK9P1vpChM9ropnvqqbFb6z2tGsREKU7cswYsRag+QewF/g?=
 =?us-ascii?Q?FpV2aCwiBUyruyEi44Xguf0ViBdH0K68LA09GwUYDsJIZ74hM82ldMKBKW72?=
 =?us-ascii?Q?VPDfbwJs5lw6jYkmjOkie7TE+iVJPc3/YK9GyWFL/OXYZ2W19oKwCpsKPGMa?=
 =?us-ascii?Q?QJZclPQQqo/qXzFnpGt8wTmQvePju1NSZy9t4GRHYiivf5MCA0lUZtrK2di+?=
 =?us-ascii?Q?Y/DBicbghQLG/gmPj0W1FSKaPq0qtVkStki67VA27sNV0f2bcGlLLDGMNtDU?=
 =?us-ascii?Q?6lf00uIftbDoWUf4PzsaQotHbGf2R+hJhoc12YgQUASwfT/9hrucrmxh4oJV?=
 =?us-ascii?Q?DumPNaM+YCP7RBlSrJlEPpdMDqu1NDjYGDg+2wvWJFKYr3d9f9WWEsl+vL+t?=
 =?us-ascii?Q?Ww=3D=3D?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 70aecfa0-662d-4a79-59b2-08da5495b610
X-MS-Exchange-CrossTenant-AuthSource: CY5PR11MB6139.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 22 Jun 2022 21:25:21.0245 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: u4Zw/4MK9gJjFzvHqlVoRCyA8m5j/OfB/ndx5hp6eFo2pWLI2uP40QaEga1odpYgkWVfo+d1vX/M6VGH8Pu6EH1JP+qNIW5s/8dhZFzR4PY=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: BN7PR11MB2609
X-OriginatorOrg: intel.com
Subject: Re: [Intel-gfx] [PATCH] drm/i915/dg2: Add performance workaround
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

On Wed, Jun 22, 2022 at 09:38:36PM +0300, Lionel Landwerlin wrote:
>This is the recommended value for optimal performance.
>
>Signed-off-by: Lionel Landwerlin <lionel.g.landwerlin@intel.com>
>---
> drivers/gpu/drm/i915/gt/intel_gt_regs.h     | 3 +++
> drivers/gpu/drm/i915/gt/intel_workarounds.c | 3 +++
> 2 files changed, 6 insertions(+)
>
>diff --git a/drivers/gpu/drm/i915/gt/intel_gt_regs.h b/drivers/gpu/drm/i915/gt/intel_gt_regs.h
>index 07ef111947b8c..a50b5790e434e 100644
>--- a/drivers/gpu/drm/i915/gt/intel_gt_regs.h
>+++ b/drivers/gpu/drm/i915/gt/intel_gt_regs.h
>@@ -1112,6 +1112,9 @@
> #define   GEN12_PUSH_CONST_DEREF_HOLD_DIS	REG_BIT(8)
>
> #define RT_CTRL					_MMIO(0xe530)
>+#define   NUMBER_OF_STACKIDS_512		(2 << 5)
>+#define   NUMBER_OF_STACKIDS_1024		(1 << 5)
>+#define   NUMBER_OF_STACKIDS_2048		(0 << 5)

Should be using REG_BIT / REG_FIELD_PREP

> #define   DIS_NULL_QUERY			REG_BIT(10)
>
> #define EU_PERF_CNTL1				_MMIO(0xe558)
>diff --git a/drivers/gpu/drm/i915/gt/intel_workarounds.c b/drivers/gpu/drm/i915/gt/intel_workarounds.c
>index 3213c593a55f4..a8a389d36986c 100644
>--- a/drivers/gpu/drm/i915/gt/intel_workarounds.c
>+++ b/drivers/gpu/drm/i915/gt/intel_workarounds.c
>@@ -2106,6 +2106,9 @@ rcs_engine_wa_init(struct intel_engine_cs *engine, struct i915_wa_list *wal)
> 		 * performance guide section.
> 		 */
> 		wa_write_or(wal, XEHP_L3SCQREG7, BLEND_FILL_CACHING_OPT_DIS);
>+
>+                /* Wa_18019455067:dg2 / BSpec 68331/54402 */
>+                wa_write_or(wal, RT_CTRL, NUMBER_OF_STACKIDS_512);

this is not a workaround, it's a tuning value.  See functions with
"tuning" in the name. Do not keep bspec reference in comment. If at all,
this should be in the commit message.

This is also not setting the correct value if it was previously
programmed with NUMBER_OF_STACKIDS_1024 since it will just OR the bits.
Use wa_write_clr_set().


Lucas De Marchi
