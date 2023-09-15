Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id A3C167A24CE
	for <lists+intel-gfx@lfdr.de>; Fri, 15 Sep 2023 19:30:34 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id F31C310E65A;
	Fri, 15 Sep 2023 17:30:32 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.55.52.151])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 8772010E65C
 for <intel-gfx@lists.freedesktop.org>; Fri, 15 Sep 2023 17:30:31 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1694799031; x=1726335031;
 h=message-id:date:subject:from:to:references:in-reply-to:
 content-transfer-encoding:mime-version;
 bh=6VwZCmViMvOJLOCW0pfmdu/D0xsM4wI1NJ7nSK8yvxw=;
 b=QOAlfQFBX5oqsNLpTmj/mKvVvo8ZVfOAOtGNAhmuoli+E3Qm6V6wYDGt
 4vlf7d4r7EiRJy7PaVblBFBoMnE1uI5l47pBQXNmsIHnVaOjO+Zwokec8
 n3SNRiPAuP0eT1oIP3elSpZw0qVJ2jYSSQ7PbQ1c2+/vfr4W5ReTYHfu2
 3YL/SgGJGfytGczynQLLrckF+zV0r0V/Q8mBK0sPzD+1b36L8+eeEzmgW
 XZCvmesGDOOc+ixffG7SmOmVak3SRTHoi1yfaV6dk+4eyHA4ytGrE7XCS
 jnetEn4P8Ki/42r+FG7ZGAuXgm575+HgnbtL2CqCLCLVvpD6Wss9J3Q5R A==;
X-IronPort-AV: E=McAfee;i="6600,9927,10834"; a="359557648"
X-IronPort-AV: E=Sophos;i="6.02,149,1688454000"; d="scan'208";a="359557648"
Received: from orsmga002.jf.intel.com ([10.7.209.21])
 by fmsmga107.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 15 Sep 2023 10:30:22 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10834"; a="745076824"
X-IronPort-AV: E=Sophos;i="6.02,149,1688454000"; d="scan'208";a="745076824"
Received: from orsmsx603.amr.corp.intel.com ([10.22.229.16])
 by orsmga002.jf.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 15 Sep 2023 10:30:22 -0700
Received: from orsmsx612.amr.corp.intel.com (10.22.229.25) by
 ORSMSX603.amr.corp.intel.com (10.22.229.16) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.32; Fri, 15 Sep 2023 10:30:21 -0700
Received: from orsmsx612.amr.corp.intel.com (10.22.229.25) by
 ORSMSX612.amr.corp.intel.com (10.22.229.25) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.32; Fri, 15 Sep 2023 10:30:21 -0700
Received: from orsedg603.ED.cps.intel.com (10.7.248.4) by
 orsmsx612.amr.corp.intel.com (10.22.229.25) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.32 via Frontend Transport; Fri, 15 Sep 2023 10:30:21 -0700
Received: from NAM10-DM6-obe.outbound.protection.outlook.com (104.47.58.109)
 by edgegateway.intel.com (134.134.137.100) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.32; Fri, 15 Sep 2023 10:30:20 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=foD14nIWY7Y72L1fYroZxm82Cg5iGwPpOLhj1dBsIxkWfkpNzBbMkclCaM3p6jFmkffscZjSfW2HoryOwArGVg1DjR7z5FEQHHl7FD9XFDWyxb1QUbcuNNi29f4nqEqluM+/dNEYsOObGydvjr15ZsrjOSX4Ioo0r8cqH6gMvHdZWLACWWdK62M2HghFuAqQiPVObz/XStPvtea926sNNbx8MsmkQtSDpSEKLh/Xch3Rcr2AxqRRDS9roFDuLSVtf4VfgaW4RSLqH+nAHWOgojVzpefBKxntCOLsbj7kJI301cvQY0Koxw2p7f8kMf2k0PzVzevl4ab3aqqLtVe92g==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=BYOA03JyXQQpofl/KH3adyh2AzFAB4Vdk8kRdtbccCY=;
 b=Ki+uYWb1LK7Cr1pa2oDdme6mntZ3928QJN6ZamH3MNjJk9AX9J0eFkcfxDO8xglfqCjhkJOu4ee7rwoyLex1ltWhVPkSeD6Fgr4fTHzjvasYPvcN9dedBl59LNObaT3NugpFY8nTn1T5yUMdfHpycMXGQ4fjVQ0ftNvq7Z799jGiPUDOgtuLXQEHC1jGgFo74yrA4awl3uJ778JsHFaxCgXb+nNCFjdmm8RuAL6oUS/kcNlruCXtXDjx23KrCnWKdrkE+1Y6Gv+7m/u5GXy/I8/Jc9P7KTicCQ49bN1IeNGuTI2iGHWNI6ThtcOaau4wF1OHS+X3loVvs5a1hz1DyA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from BYAPR11MB3398.namprd11.prod.outlook.com (2603:10b6:a03:19::19)
 by BL1PR11MB5543.namprd11.prod.outlook.com (2603:10b6:208:317::8)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.6792.22; Fri, 15 Sep
 2023 17:30:18 +0000
Received: from BYAPR11MB3398.namprd11.prod.outlook.com
 ([fe80::110f:4bac:8cd9:c359]) by BYAPR11MB3398.namprd11.prod.outlook.com
 ([fe80::110f:4bac:8cd9:c359%4]) with mapi id 15.20.6792.021; Fri, 15 Sep 2023
 17:30:18 +0000
Message-ID: <db21fa9a-e4d5-ff26-fdbd-00d891c28d58@intel.com>
Date: Fri, 15 Sep 2023 10:30:17 -0700
User-Agent: Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:102.0) Gecko/20100101
 Thunderbird/102.12.0
Content-Language: en-US
From: "Balasubrawmanian, Vivaik" <vivaik.balasubrawmanian@intel.com>
To: <intel-gfx@lists.freedesktop.org>
References: <20230907001549.81262-1-alan.previn.teres.alexis@intel.com>
 <20230907001549.81262-3-alan.previn.teres.alexis@intel.com>
 <3c729821-a96e-7d9c-9172-4c1ea8fb17ab@intel.com>
In-Reply-To: <3c729821-a96e-7d9c-9172-4c1ea8fb17ab@intel.com>
Content-Type: text/plain; charset="UTF-8"; format=flowed
Content-Transfer-Encoding: 8bit
X-ClientProxiedBy: BY5PR20CA0017.namprd20.prod.outlook.com
 (2603:10b6:a03:1f4::30) To BYAPR11MB3398.namprd11.prod.outlook.com
 (2603:10b6:a03:19::19)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: BYAPR11MB3398:EE_|BL1PR11MB5543:EE_
X-MS-Office365-Filtering-Correlation-Id: 7cd6b896-deef-4ec0-7a8b-08dbb6116e70
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: 1aJzck/RakO5EUPmaEzl+ugow+KUyFcbTO1MEDBjEySBajmdzhepgLFAuScj5leUF8wg05T01QMmYscyEJfL5/MshnZAcn0G4IAzb1WYfbiwCEWL3SfHRLBrTXZQyrs6RR8zJW2+WBhibtZUg29Wm4YsFS9oWOXt2QFNLiAJN5Wkv8cJ7DxVUoVFlbPwWtXpvUnQ8RY+B+jErylyqL72mAzXUFU5D1rCDKbQgFF9FACqaHLOj7g1mn0OMiXd6TvZexB+tjQnOJmcj461Ep/vIo2y7RuLit/79HYjn0FQtRGsivL9pcpsFaU6/GmUjHciN1RbuNWMWIyRUc1ieDe18d6wVZSdmy6d8Xo4tCdxi5q/iuDiKXc3TA/FJhlbVpNTtombSosLZrkrqZDLCw3ouxbCUouozmnbdU1Nwdk2fIIUZawMuGECZb1lRZTr9V9VqllPdjbQXWIC1+JUulLqQWe/3sK6/bGBrywg44Hvqrraaz+RSeBpse6PiyhhQ3C7IKuHB6n5ZGSCKmYmhe8hTYcWIbA5AjMU+fho4yY4TC7NanhcYa5pSylN7Zh2ismUOmGDA5pVwDFaq8A0TIXbDOoGrUKBkDF7eoMtnueqQ/4bc5cIddZRnY6XG/e787P/g3fY5kISlP4DEpl5GIzd0g==
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:BYAPR11MB3398.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230031)(346002)(39860400002)(366004)(396003)(376002)(136003)(1800799009)(451199024)(186009)(6506007)(53546011)(6486002)(6512007)(478600001)(83380400001)(26005)(2616005)(15650500001)(2906002)(66946007)(66476007)(66556008)(316002)(6916009)(5660300002)(41300700001)(8676002)(8936002)(36756003)(86362001)(82960400001)(31696002)(38100700002)(31686004)(45980500001)(43740500002);
 DIR:OUT; SFP:1102; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?NWpiZGdBbzJZeVJFRkNKZythdURqTVdaR3VjaGRCRmY2T01pQUIvVFQ1dUps?=
 =?utf-8?B?eXJ5MG8xdDB6R1BaMmJwMDRoMW1YREluVktXQzU2WHFOVXNlSVFPdnZHUzF5?=
 =?utf-8?B?cmhleVJKUjdlVWxHNGVPbEpDNTZ4R3VycHZuRGJ2djBNc3JYU3phZ0FVR1Jr?=
 =?utf-8?B?cXhvcmRZWmNWREVjYWtUTnpyTE5wd2RzZE9BL0JFMmM4T1R3VE5HRTFSYW9W?=
 =?utf-8?B?bm1id2dRWHpQdUp4bjVFMWV6THJQYmpHSmVtZXVHMStCaFlkZzM2MnpsK1Bn?=
 =?utf-8?B?SVcwK1J6cjlDNGVNdktMcDI2bmFEM0VwSW9YMVVtSzFwT2l5N0wrdVIvL0h1?=
 =?utf-8?B?OHlKcU1SN2RBVzdYMVZtSTBINXQxc3d4R0hNTldsTGhDTmFDM3BYNFRid3Fj?=
 =?utf-8?B?TWhXQnJXdkNLV1VSOUtJeFlvVkdBWGJUNEFBU0JPZUw4WUpmenF5a0g5WmZs?=
 =?utf-8?B?REMrTGl1NEhZQTR4SmJ1S3NJVTF0OUNpeHp0Y1ZlYURycEkwY2pmTk12NlBa?=
 =?utf-8?B?eWVNOUo5SWJmWE1KTjRSU29GUFRqT21KZC9VOXE5aXp4NEpxR21XRFM3SzRh?=
 =?utf-8?B?cTU4SmQ2bjlGUUlBb2JGMCsrU0JYb3lTSmFldkhUczhpMTZvYVZZQ1VESjFq?=
 =?utf-8?B?VU9LS1JQaHcya1NRMmxSRlNya2xjMW9MVlZjb0ZjdWNiV3BBbVZjbzRtRWU1?=
 =?utf-8?B?VnVFSkF6ZTY0bmR5QWZ3N0RVK09lNVo4YnlvdXl5NW03NlVqRGFyazU0QzFv?=
 =?utf-8?B?Ym80OUtCL0hZdy9kbzZ4dW0rNGxPa3dnYTg3cCtwdmVQVjZ6VzBYbnk5ZTdT?=
 =?utf-8?B?ZGZGQURLTEl0U0g3cm92QVRjRmRwME9RZk9LMTBYUHZGNU1zckpJaXJtb3dy?=
 =?utf-8?B?dEZCOU9IWDRxMENpamZuK0RLYUVzYUpwZFp0RTVGQXpmOXBIT1NmM2JOTVF6?=
 =?utf-8?B?eWhOblJjZ29hZGhLS3hNVW92OW5WRm9rZDlHcXJEU20zZURtZU80SUN2alRU?=
 =?utf-8?B?NitndXRwT3lDN08zKzM2QnBvOGkrcmZtNUJBcWxyN2t5enpCOHZYR1Y5ajBF?=
 =?utf-8?B?cW5qbVA2aEtqaVdBRjZqVDdzSWhReWpydGFnS2N1NTRhK3lRQmxydFlNUXg4?=
 =?utf-8?B?YUEzYlc2TlhMcjVTdmZUUmF4ZXlkc05KT2pZTzRLa3diUjh2d24wa2hjbGJm?=
 =?utf-8?B?Rkh5eVArSENQNWpxSVNjT3pzL2ltQk9CV1QrelV1Z2w4N1BWVXlvZEg4Y05h?=
 =?utf-8?B?dUUySkpFVXB0U1BXSWdJLy9ITEJTVWdVRnF5R0FQR3NwbG9GUytPVTdEWTg1?=
 =?utf-8?B?eUY5bS8vQjhJVnJHT0VWNTFQOXVzMkd2R0pLMkpENFZBSzZoZjhkaTFNOWFk?=
 =?utf-8?B?YzJvcjV1cmRHNUhkM294cXROaVh0TGpBZFpCeEJsNzhQRlkxeXIzMDR6dnRY?=
 =?utf-8?B?QnRERm9Xd3ZpT0IwR3RZbmNsSy9FdkloK3JmTmpTa0NWWEVjSktSR3VSSmd6?=
 =?utf-8?B?dk5YRDRXQmVOdHdSUFl1U3dTcVFsbVJ2YUNVWGtvaEc4U3V2RW52OXoxVkFT?=
 =?utf-8?B?bVdoTUxwRnR0QnZsaWdpSHA0dVlZdzhGKzdFVkg1M3JyUFJaMTRzbjBDdDM1?=
 =?utf-8?B?djliN3dlRGVJYjgxL3RrOXZsdC9XSkhiQWJxRCtnZ2NRaXhQdjFOUko4VWdK?=
 =?utf-8?B?dmdMbEUvRm5QbXNJLzZsZEF2OXJkNnBFNnJQY20vdWgxdmpkaDNrU2M5MGow?=
 =?utf-8?B?N3VwbTAyazNsR3FrQUdMZWtNZG93ak1WR2tMNUdjTG0ybWt2dk5nOXNlT3Jz?=
 =?utf-8?B?UnRDVEtKS1lnUWF3MzU2emh4UDYycmRNOXBNS1EwUWVkcGNDMkhISWxUaUQ3?=
 =?utf-8?B?aWtXOEF0b1pvcGRXVk80UjlGeVNRV2lOcEZqbExOcW5yOUxZYnhDNEhKSkZl?=
 =?utf-8?B?RGNlOXplUU15M1kvSFVDeFM0TTM4SHRaQmljZ20vZFlhOXRwYkxUc2Z2WVRl?=
 =?utf-8?B?bkUxNVNadmpnS29Ob3JZUGFCY3E3WkxsTmltUE5KRWZTU3BJbFIzOG1TWXEw?=
 =?utf-8?B?cnczYytZTmptM2FIZ3VySGptWHcyck5ySU9LU1NPdGtNRWU2ZmdJTHlHSUp1?=
 =?utf-8?B?c2lqMVdSZjdsWjhHZnA2RXh3MWNOZlNZMy9tSEppalJ0Q0x4MmxxMXdvbHNP?=
 =?utf-8?Q?l8O7wqGBwV06uyAet3rhGbY=3D?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 7cd6b896-deef-4ec0-7a8b-08dbb6116e70
X-MS-Exchange-CrossTenant-AuthSource: BYAPR11MB3398.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 15 Sep 2023 17:30:18.7433 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: GLroi3s8t4bFV9DvB3H4U/7G8splQ6oOFY5QDsLvfoE9JYcHu7XjrnFusqte4Jr72aUqM+NxupaB+WjgT0/2Yo6tNLQN/tUZF3fSwG4kRwFryUH/mYb6NFI874FnOQXu
X-MS-Exchange-Transport-CrossTenantHeadersStamped: BL1PR11MB5543
X-OriginatorOrg: intel.com
Subject: Re: [Intel-gfx] [PATCH v4 2/3] drm/i915/pxp/mtl: Update
 pxp-firmware packet size
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
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On 9/14/2023 3:28 PM, Balasubrawmanian, Vivaik wrote:
> On 9/6/2023 5:15 PM, Alan Previn wrote:
>> Update the GSC-fw input/output HECI packet size to match
>> updated internal fw specs.
>>
>> Signed-off-by: Alan Previn <alan.previn.teres.alexis@intel.com>
>> ---
>>   drivers/gpu/drm/i915/pxp/intel_pxp_cmd_interface_43.h | 4 ++--
>>   1 file changed, 2 insertions(+), 2 deletions(-)
>>
>> diff --git a/drivers/gpu/drm/i915/pxp/intel_pxp_cmd_interface_43.h 
>> b/drivers/gpu/drm/i915/pxp/intel_pxp_cmd_interface_43.h
>> index 0165d38fbead..b2196b008f26 100644
>> --- a/drivers/gpu/drm/i915/pxp/intel_pxp_cmd_interface_43.h
>> +++ b/drivers/gpu/drm/i915/pxp/intel_pxp_cmd_interface_43.h
>> @@ -14,8 +14,8 @@
>>   #define PXP43_CMDID_NEW_HUC_AUTH 0x0000003F /* MTL+ */
>>   #define PXP43_CMDID_INIT_SESSION 0x00000036
>>   -/* PXP-Packet sizes for MTL's GSCCS-HECI instruction */
>> -#define PXP43_MAX_HECI_INOUT_SIZE (SZ_32K)
>> +/* PXP-Packet sizes for MTL's GSCCS-HECI instruction is 65K*/
>> +#define PXP43_MAX_HECI_INOUT_SIZE (SZ_64K + SZ_1K)
>>     /* PXP-Packet size for MTL's NEW_HUC_AUTH instruction */
>>   #define PXP43_HUC_AUTH_INOUT_SIZE (SZ_4K)
>
> Reviewed-by: Balasubrawmanian, Vivaik 
> <vivaik.balasubrawmanian@intel.com> 
> <mailto:vivaik.balasubrawmanian@intel.com>
>

