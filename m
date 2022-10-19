Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id C2E76604D5C
	for <lists+intel-gfx@lfdr.de>; Wed, 19 Oct 2022 18:27:17 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 3FBFC10EB1C;
	Wed, 19 Oct 2022 16:27:15 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga03.intel.com (mga03.intel.com [134.134.136.65])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 6E9A210EB08
 for <intel-gfx@lists.freedesktop.org>; Wed, 19 Oct 2022 16:27:04 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1666196824; x=1697732824;
 h=date:from:to:cc:subject:message-id:references:
 in-reply-to:mime-version;
 bh=J2Z+lQxAOkvV6xB/L4YFkuN/qLHDPd5Q9dFX7SKlsRM=;
 b=kRleFdsLh1A8UyiW//85dduKwsT1k2lOYIwyekBGyKQE8/Najr4mxYLc
 6oTO6I7oohJZ951gcBWzoAFHrOhqqQl4VxISNkAGO1Wzj5xTje0oHOQ1/
 lsTgdKXdM5LBPVu9e63kfBN16+WJfQxbCch3lqBWRESg7rymTLMHWc9Z3
 QzEYWRZuUJvNT0BV5PX4h9pDRSOHWSlrTJsclIDxqQ16zAsY05NVFC/sj
 idL/3HwgFzCHHldW5grFXhHn0IVNan63+hcvLrnTuPgNA2Y+YrLyPaKkb
 BorGlKuIUGUswjtudr98tIgd4ccWumcUYD5a3Tg+HwFH81rTAJ5COMakg Q==;
X-IronPort-AV: E=McAfee;i="6500,9779,10505"; a="308149959"
X-IronPort-AV: E=Sophos;i="5.95,196,1661842800"; d="scan'208";a="308149959"
Received: from fmsmga006.fm.intel.com ([10.253.24.20])
 by orsmga103.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 19 Oct 2022 09:27:03 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6500,9779,10505"; a="874515783"
X-IronPort-AV: E=Sophos;i="5.95,196,1661842800"; d="scan'208";a="874515783"
Received: from orsmsx601.amr.corp.intel.com ([10.22.229.14])
 by fmsmga006.fm.intel.com with ESMTP; 19 Oct 2022 09:27:03 -0700
Received: from orsmsx611.amr.corp.intel.com (10.22.229.24) by
 ORSMSX601.amr.corp.intel.com (10.22.229.14) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2375.31; Wed, 19 Oct 2022 09:27:03 -0700
Received: from orsmsx612.amr.corp.intel.com (10.22.229.25) by
 ORSMSX611.amr.corp.intel.com (10.22.229.24) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2375.31; Wed, 19 Oct 2022 09:27:02 -0700
Received: from ORSEDG602.ED.cps.intel.com (10.7.248.7) by
 orsmsx612.amr.corp.intel.com (10.22.229.25) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2375.31 via Frontend Transport; Wed, 19 Oct 2022 09:27:02 -0700
Received: from NAM10-BN7-obe.outbound.protection.outlook.com (104.47.70.106)
 by edgegateway.intel.com (134.134.137.103) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2375.31; Wed, 19 Oct 2022 09:27:02 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=N8rzS2FQuMtY5v4X2kFVwPawSFX7/V8LFnej40Oi14MUHHJaNB2CwE1K7DnI24bi0VnGvD44E4Wj5nMtsv3keaG9ywb46kQQF75QUhX6JK8QxF/dFR85gXY3To/xmd5o3jEqTORQY6xDx/kM2X2ERcbRjB4myBwerdMaoNxtNeLT9cr41nudsEGyXsfONxRuwe88oxTfZxBahmjEh7XDx3M6yE52o88knj2dkA2Ng7b6Xda5b76Qg1gLlPYnllBn6b4aTTnwSMUnf+BxVKTp1TosJmlouz2VOtLllwol8ic4f1cY5/YnyziobleDIGgY4pa6UofgXLC57YvXEZW8Vw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=J2Z+lQxAOkvV6xB/L4YFkuN/qLHDPd5Q9dFX7SKlsRM=;
 b=b9gzqr6qDua4GWGuSjIoY+ac2GNIt8qgl9t8au0SpSE9Sbqi5KmTCTlDJnQrlWVe+SEcbR33+x+trJtHXsitBYMFhuFZacPrXFYu3FCiSd2qoWVYRiEaLlYUkITz6TTh3fIxpj9cficdxdKBhYuCE2jQUPIKvhpsIrssinhAQdw1MRUZDDgFFbhBSc8oQKyMTdBkadvtwsl9lgW3iOv2sqbBT9p85Tft05k/HCe/6PNlnc5JQwJ8z6+ZzUV0vZFhCFBAKGw8yuHXkEV+91gqMzmeE5gILTE8uyybJK5un85InrlUtFn8LKBnIJeT2NXL0S+Zi0ZVVOXheXI5lA3G0Q==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from CY5PR11MB6139.namprd11.prod.outlook.com (2603:10b6:930:29::17)
 by CO1PR11MB5058.namprd11.prod.outlook.com (2603:10b6:303:99::17)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.5709.21; Wed, 19 Oct
 2022 16:27:00 +0000
Received: from CY5PR11MB6139.namprd11.prod.outlook.com
 ([fe80::7246:dc8c:c81f:5a10]) by CY5PR11MB6139.namprd11.prod.outlook.com
 ([fe80::7246:dc8c:c81f:5a10%3]) with mapi id 15.20.5723.033; Wed, 19 Oct 2022
 16:27:00 +0000
Date: Wed, 19 Oct 2022 09:26:58 -0700
From: Lucas De Marchi <lucas.demarchi@intel.com>
To: Gustavo Sousa <gustavo.sousa@intel.com>
Message-ID: <20221019162658.jrlvnrxwbkkdqtt5@ldmartin-desk2.lan>
References: <20221019161334.119885-1-gustavo.sousa@intel.com>
Content-Type: text/plain; charset="us-ascii"; format=flowed
Content-Disposition: inline
In-Reply-To: <20221019161334.119885-1-gustavo.sousa@intel.com>
X-ClientProxiedBy: SJ0PR03CA0100.namprd03.prod.outlook.com
 (2603:10b6:a03:333::15) To CY5PR11MB6139.namprd11.prod.outlook.com
 (2603:10b6:930:29::17)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: CY5PR11MB6139:EE_|CO1PR11MB5058:EE_
X-MS-Office365-Filtering-Correlation-Id: 66c451db-2c13-4fe2-3a4e-08dab1eebf7c
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: TAMVDUUthvfoZov5dIOkRIcZPUJHImVtvIZrzK4GQ3wOOGn7xeRSnmNAkgqyZzonlh4i0DUDUxACUy53UEpsxjYOTmx8uRRFj5zUYz55vpmiTTpbqK2kvUU6pTRAQKHGzzA1ameiVlPp8ryuMFXmGb0N2BbiubKejGkbbS6Tgy/O0z6T7FBJzYuA1MDBLw0hfzKFhBIsSYHbzyuHin6pvdNR0ThIgUS4nBLyNMDaaMkp8MAEstgFSk5wamX9EE7uf6Fp5VNZHHyKt8KlDPUYH729LFub05hNmPR1CnFTIMjaQWBoS9D03tyUeW8iOVtzuMGSmFwoW9dEO2SOTJv6OWa6Lt08d55j3XvmrA44BSV8U8NlbD8+q82VlZItUdTry1Ss6zW55xFnq2XLNHmwZ3hQbkGIB77AHZdrCT07EWRiOz9HgifSafEk5cIr+9S3HYL/gO0XXpsfQlgAvUIcl/Er/QIRmAiD5Jl7X4V2TQOrFoDHgOBYEyoqzS8y7ArZlMBDZuETeY/Qy8agZQCvCZyOl1R7dKZen6VWvuIpEB+uOerH8Z435kdEtD4Ech/7DdZu1dqUjIMtyWA9nsgh/PmCf1q3Mu4vF8367NnyHLtaawAoO+TB87c/uvX4wX2scHdyRX48le5CCwyjZNBIxcAj/RTYkBn8jbHrRflr458j6nCCl5l7eE1fkk0mvPMjJ0JJ2ustMIJa6jPFd3FtHg==
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:CY5PR11MB6139.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230022)(366004)(396003)(376002)(39860400002)(346002)(136003)(451199015)(1076003)(2906002)(66946007)(8676002)(66556008)(5660300002)(6862004)(66476007)(8936002)(4326008)(558084003)(478600001)(6486002)(86362001)(36756003)(41300700001)(316002)(6636002)(186003)(6506007)(9686003)(6512007)(82960400001)(38100700002)(26005);
 DIR:OUT; SFP:1102; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?us-ascii?Q?FV+NV651QvuCTNyG8eCkstExLVL0VMaP4qbcF9VJg1r3oPsYdc1Uabifjni4?=
 =?us-ascii?Q?+gPPjSNunrzRg12ZoCiaXZZoM1sOyCCrGNCLBXDfXoO8hatf//H0BAI83dS6?=
 =?us-ascii?Q?BMLlGYYq49hIigf/IWiOyHZzpmWESzfswDhXO78hx+DsmlbTZTDmYmZSy8NS?=
 =?us-ascii?Q?HZji4ueXLUHh29DRyDVBa+R9qQPBY/JZb1bup5mps5HN2lT67bOJxyYBQRtb?=
 =?us-ascii?Q?3hdfcgcYTe0iCDzBeoaQOioKctyo4KPlhZ1XEdCH2R7BSYHoWydrfuhzpZs9?=
 =?us-ascii?Q?BpB2T2LmFm+j18z3WeqLXHqoIC6OVMSjh1+hP9Nvn/130YWVyUX2N2NkosXM?=
 =?us-ascii?Q?h3ch2R2karuX9/b+CCdZCKdmxWnnvo+oVrIlfZ5Qt76WZS42U+kOH0MvqFyH?=
 =?us-ascii?Q?qdIC5fsIfy+XScthSLP12VpygGWOCftMk8iivQG8Bu8RVKyw5git+t/EsxG8?=
 =?us-ascii?Q?Nj2++H+m0/WOC3o1bb1DYiJVfmQ5dv6+5dxHCrWH+Yvb4hYzUbJCBvWhIChF?=
 =?us-ascii?Q?U/lJS2VNt/XM4fOxpgLznYgNMKQJUv71lMCK1AKJNgIAcTse5W0i4q/sUl/0?=
 =?us-ascii?Q?96kIDDcqPMVN3XzD8TKpuMrEE0Fhbdq1Z0AkpstGCr3k8HVDCyMFiLbzEFpZ?=
 =?us-ascii?Q?U1suVAVCS4IEdUlebZImBk1rNpUPen+4Bs1eeyZ8BgVXvtRbnTAwbrhVjkCl?=
 =?us-ascii?Q?tG1QBEa5sjhkiDbAPDKoLKRS02bPVuUg0aj0b+hwIbmRhcWE9J6LlZHqb2a6?=
 =?us-ascii?Q?4dCF3dwXGzF7fvaNC4VybRbXDatQ0qIuKei7e3vhxbf/R0zXHXk0y0AmUX5r?=
 =?us-ascii?Q?NvNcPeOG72O3iWsQ7Yyt8hX+QFdyUgmvNvjoaNQF77C+DMRMsUdUmeX+Sste?=
 =?us-ascii?Q?Uhhnsjbx54qOrUWZ3usKJk+vhQYGWA2H6OUDExXdQxnmKbgxkdU3FOPVx6fU?=
 =?us-ascii?Q?j8jYg0r69jrJ6r3/AioswW7+XpoaGhZZ3GlzNnSeCmgTRi+DjGz7L8W5r0ak?=
 =?us-ascii?Q?JSOCja4CRsNwMsCXUvpWnDEA2d+mIW5HUAHCNujG7zaXmHBCUC5JQmtmeTU1?=
 =?us-ascii?Q?mGV/6x/QRqMRjIdhltDi+vjtnqgWsQFyUTRc4/LYyX123uGgciHaafTqBJ7Q?=
 =?us-ascii?Q?6dlEDKBQxQppXXVYZjPADjAM77VX3oxqJiY+oCBm4YOlt3Z2JGPwow6lGjh4?=
 =?us-ascii?Q?E+7nJpHzanUzGJMDiWACQQVuvED59iAfmbDXeO24FkkH0o4Jj2hZ5nPmjS+4?=
 =?us-ascii?Q?+KHBuEqKSVbviXkbObvCqZeHzLniFxh6rSNtTd/LXwZ2T6Fa5zQ+A0BLEebl?=
 =?us-ascii?Q?ohJuAyLKN+DQ1EDXB26E4oAmvOJLH8fzRlq7vmeQUWxdi3MuapMshijdnwvE?=
 =?us-ascii?Q?DDi9I+s9naIna5gapf9grnJb94NNs2UNmN71jTFcdA7cqbW+aAuLW5U7ctJ4?=
 =?us-ascii?Q?2iY2eVCj1efXrjn39yBFomttg/BtU+w/0TD1HHCoHSHfyDwlGfTAuXGSs7qm?=
 =?us-ascii?Q?yP5BfSvXZ6/ECsI2DwEuQVw19+jS9QEMB5JD2YGzsQ4gtM1mwa4xj4/kcdYw?=
 =?us-ascii?Q?tCBn7tRyFE7WVuhDa1iNjpBzXxBkHGdZWU2yVwweC9pDs6lXmOii2SQ3+H4T?=
 =?us-ascii?Q?kQ=3D=3D?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 66c451db-2c13-4fe2-3a4e-08dab1eebf7c
X-MS-Exchange-CrossTenant-AuthSource: CY5PR11MB6139.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 19 Oct 2022 16:27:00.0831 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: HNeNCygWdvoQXyEtXAuh67OP70tqgDL1XjmwM4RN6MMNLlmO6vSG0D0bvRcQ9X0wWzmFIk9CrP3cimS9cmrbBJ9DWWZFe87p6L3vo9LtSD8=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: CO1PR11MB5058
X-OriginatorOrg: intel.com
Subject: Re: [Intel-gfx] [PATCH v2] drm/i915/xelp: Add Wa_1806527549
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

On Wed, Oct 19, 2022 at 01:13:34PM -0300, Gustavo Sousa wrote:
>Workaround to be applied to platforms using XE_LP graphics.
>
>BSpec: 52890
>Signed-off-by: Gustavo Sousa <gustavo.sousa@intel.com>

Reviewed-by: Lucas De Marchi <lucas.demarchi@intel.com>

Lucas De Marchi
