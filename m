Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id B156C7DCB55
	for <lists+intel-gfx@lfdr.de>; Tue, 31 Oct 2023 12:04:38 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id E1AD610E46F;
	Tue, 31 Oct 2023 11:04:35 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [134.134.136.65])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 7507B10E46F
 for <intel-gfx@lists.freedesktop.org>; Tue, 31 Oct 2023 11:04:34 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1698750274; x=1730286274;
 h=message-id:date:subject:to:cc:references:from:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=UVTEz1X1eyhkXbLs3KhQvglXLSIAwHawVsUBCmgNs6Y=;
 b=h2oI7jBBMoD/uDQz3114+39R1fYGRmH6NykNJRho4VJateV9ImcbmF8o
 TzKWelP/flJvgL+BG6OZYiNSQtTa1tanM41+SetHHFXBp5D/wrY8bfElP
 vfhRfKxnGZubXbzpooC90kCuN0HmGEklKb+ZH3Kj0tdyoEcsBwkzGI5Du
 vVsoTjvO/O36hKD+wKOcfVSNYFG88CwjNaTGfkwArLeDkukbUWObKFb5g
 EVnS5AsVddLaLJs7ty+iUxGY1hMKF+YkUy1VEKKKPx5Von/Y0wUzYc2Vw
 TEn4KXpHetzIyDRybjmZtD2aSWZhsJt4Uz6MbEE6ts19Mf7Z/3i3EhLrn g==;
X-IronPort-AV: E=McAfee;i="6600,9927,10879"; a="392127416"
X-IronPort-AV: E=Sophos;i="6.03,265,1694761200"; d="scan'208";a="392127416"
Received: from orsmga005.jf.intel.com ([10.7.209.41])
 by orsmga103.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 31 Oct 2023 04:04:29 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10879"; a="934077038"
X-IronPort-AV: E=Sophos;i="6.03,265,1694761200"; d="scan'208";a="934077038"
Received: from orsmsx601.amr.corp.intel.com ([10.22.229.14])
 by orsmga005.jf.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 31 Oct 2023 04:04:28 -0700
Received: from orsmsx612.amr.corp.intel.com (10.22.229.25) by
 ORSMSX601.amr.corp.intel.com (10.22.229.14) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.34; Tue, 31 Oct 2023 04:04:28 -0700
Received: from ORSEDG601.ED.cps.intel.com (10.7.248.6) by
 orsmsx612.amr.corp.intel.com (10.22.229.25) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.34 via Frontend Transport; Tue, 31 Oct 2023 04:04:28 -0700
Received: from NAM12-BN8-obe.outbound.protection.outlook.com (104.47.55.169)
 by edgegateway.intel.com (134.134.137.102) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.34; Tue, 31 Oct 2023 04:04:27 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=DKx3Z+EXNZnzBDJ4MpnRgd9Ey9XipkKjCClECEJwI62btTtw12vu+CLd3LwHWjcpDq1Kb3Tc5D4lGvAyxwJbSH7C42fRGhh1ZKhWz6R8Rn2rTKmh67ANKkjPLw4K9bdYtgw+MXYwfgg+sg2BQgVjGXWmNUwNZ5lUW9iSCBJRhaimVMnn7s6rbyqWDcD8WOjY8mfFDnkR4/p6lzR+jCv/yN8r1w6cq+ZA+U3j8+9VrO+PESmIQpHGut746i4wV9gN94sDM93HhakzCm0ZWT+FQXVOzQp1NTtAWKDPJpwC9tE/CdPgZ2Pol2dNjNEx49NXU//+QBqHIRoKiVJf4Al5bQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=X4qZ8UU6jyeTFc/pTiyBjw36YgXczRsxwMDgsS5uozs=;
 b=divVe0r9aCYgojwyuPxiXFho66DmSV7Gc+t+cA5O8bv3/ASmc4LM3mmKTypchiliHfrxBZfuv5R42YpJDuzmgurFtTRe+kSNe4le3PG/woJg4ScrzMf+5yLGHa/sGOozehQaa5GFbl94LILRrSOYFkf5aFSs1WqTIBQAWYE6ETK5/nOQ1NUd3o5S22nuen4b2/I8j3WT7co+53yoBd8IQcS9TXKzvOcAyD41JDNMaHtPZZM3NDZO409hQi2AB1hSIkaD3sCrt/Cw1JZ/71bf6hU0jsxq+6fdRJYKjHoDlDPzv1BzlZwI9KP4RkNyCFibdg3ZAU5yIM6+P9pAA+rEyQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from DM4PR11MB5341.namprd11.prod.outlook.com (2603:10b6:5:390::22)
 by CO1PR11MB4900.namprd11.prod.outlook.com (2603:10b6:303:9e::8) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.6933.29; Tue, 31 Oct
 2023 11:04:26 +0000
Received: from DM4PR11MB5341.namprd11.prod.outlook.com
 ([fe80::c669:55a3:5879:1e6e]) by DM4PR11MB5341.namprd11.prod.outlook.com
 ([fe80::c669:55a3:5879:1e6e%5]) with mapi id 15.20.6933.028; Tue, 31 Oct 2023
 11:04:25 +0000
Message-ID: <633d4390-3e76-1e32-174e-0b0274b4eba8@intel.com>
Date: Tue, 31 Oct 2023 16:34:18 +0530
User-Agent: Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:102.0) Gecko/20100101
 Thunderbird/102.15.1
Content-Language: en-US
To: Suraj Kandpal <suraj.kandpal@intel.com>, <intel-gfx@lists.freedesktop.org>
References: <20231026121139.987437-1-suraj.kandpal@intel.com>
From: "Nautiyal, Ankit K" <ankit.k.nautiyal@intel.com>
In-Reply-To: <20231026121139.987437-1-suraj.kandpal@intel.com>
Content-Type: text/plain; charset="UTF-8"; format=flowed
Content-Transfer-Encoding: 7bit
X-ClientProxiedBy: PN3PR01CA0161.INDPRD01.PROD.OUTLOOK.COM
 (2603:1096:c01:c8::17) To DM4PR11MB5341.namprd11.prod.outlook.com
 (2603:10b6:5:390::22)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: DM4PR11MB5341:EE_|CO1PR11MB4900:EE_
X-MS-Office365-Filtering-Correlation-Id: ea9cd861-f363-4e45-387f-08dbda012504
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: t1z/FLV0aC1hmXn6e8k3iBYqW7aJQQI7CNqF/Z0h2ZgvsBJMfkU2CfO8aKmN0Rhq6FJL5XsixBFF+pVvAavp1JFQ9G7GusvzAMpHEymeN0PDChw7+DWaiKXlUUso3BP8w+guoQHqFMigxp/WwtRFhnT8exJiaubwe/WrIXcM1MkKIkWJJtulolskmumogSIgUqlTM9Z+aeBSlfzpU3oxHCPesoWsY4BOWeCqqbJZp4brwRnapdkjnUu56rWnknE3aHgagThmgk0Y9S2FTYGy2V4eRVNy117t15iUtfWnQCD301tvXR7/TnKTxp3+b9mD0gLwOB44sg2CalCLT1lQAZ/Z5+aEs9zWyyPy+YSx2z3wwLW6rg+jILjdac5vtvG+CWPNL2vNGS2UPq5ImTQvcp2rDUeqe9OSJJqKxZEXEscKjZNXeUWkmg1L6G+iYRd2HAVee0RHfh2UTlL4zsx+QQXqP6ITIbyh5FelDdVhUW88b4w1rQkO2/uMz95OZ8dy4P1aIUINEsGaBCjZG7d1wQXR8ldi48sBxmsFufobNPJPoskccPOJb3EpWOdLZvYYlmB0K0pnYohQIo/e5Uz356sG6JH1Dooew3ruadlMOusWH1LfcijAwNC8MaY97TL4yIG8oLfUMcquAhi5nyrtwQ==
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM4PR11MB5341.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230031)(376002)(396003)(136003)(39860400002)(346002)(366004)(230922051799003)(1800799009)(186009)(451199024)(64100799003)(8936002)(41300700001)(8676002)(2906002)(4326008)(6486002)(5660300002)(31686004)(316002)(66556008)(66946007)(66476007)(86362001)(31696002)(478600001)(26005)(2616005)(6512007)(6666004)(36756003)(6506007)(53546011)(55236004)(82960400001)(83380400001)(38100700002)(45980500001)(43740500002);
 DIR:OUT; SFP:1102; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?VmtXNTd1MXNPQ3BXRHFWNXhzV09uTG5YSGFtV2lNRzhrZUhrOG1acjl4THZW?=
 =?utf-8?B?akRIcEtGdTFTK2JWNnZEUVdXL05WdkV3NVVkN3drQ2RTYVFtMStLanhnQ1Ni?=
 =?utf-8?B?VTZzKzhPK0piaVBHT3VSU3k5VllUQTZ5V1JkK3RoVzB4Z2Z5bnFqbU1RaFZx?=
 =?utf-8?B?Y0NIY1dpK2ZUMzhPenRnSE1OL3dpYnhFdGJlT252cGQzTmMxMVpHYVlKdzcz?=
 =?utf-8?B?UW9JS202TlE2d3dVYU5FYmZrZFc3Umt6c3V1Sk1MOEplYVB1UTZRemhKOWtC?=
 =?utf-8?B?ekMwYlNZVm1mNFVJODMyTDh2eDNQMzE1dU4yYVcrVFF0dUJRTUpOQnFna3hM?=
 =?utf-8?B?N0Q1TnZNeVhPNUVEYXRyYk9wUStaZmx2VFVxNFNBK3k5cW5hWWl4Rk1qOElE?=
 =?utf-8?B?SURzV01iSFNSSUFQVnAxaGg4dERXYXhwVWRNdndTem9ZTkpqWGdzK3gyL1po?=
 =?utf-8?B?RDZrWE53eEVzL2xJN0wvVjlyWFNGckU4eXFHSGJDeWtGUmVWLzJVV0F1Mmlk?=
 =?utf-8?B?MXVNblJpek9wVXI2dWpLczljMFJQV1QzMnMrM1lmZzAwL2VxWDhSUVdERStW?=
 =?utf-8?B?NDBzQ2l0aE9tWC8xc2ZHVytKUVhENGZuT1p5czR0Z1NnSC80UVNRM1RiYjRB?=
 =?utf-8?B?NEptK1p1M3JvS2dDVjNBRVpVWEFLYnJJd3dwVTlSZytUdlVKWWNLb0ZMZU1q?=
 =?utf-8?B?S0MxTHZnRmxWTHNoZWdjRHdHWFZqOFhNbVRTUER5NDhTWDYraWVJT09QUlVi?=
 =?utf-8?B?VFB0ajRMaU5zN21SZjNhaCtWeS8zenlQck45YjIvOVhxU1YrNFpsR2k3d0ZT?=
 =?utf-8?B?aVJlL1dYYnVhSGVwRldEak9aYVU0d20yUmZnSHRIT2hoQjQydWppOXhhMjdw?=
 =?utf-8?B?TlVDdmpWWVNNbXh1c1NSYzNSMDhRblkxcDZ6dkN5NVNXUnF0ZkYvTlp4UThQ?=
 =?utf-8?B?UE1IMGtIL1V5NzBCR1JYLzZ5bC9DN2RLQ3U2TW5yVEt5MUhNencvR09HT0FM?=
 =?utf-8?B?QVFaNnhZRGUzSVhheXdMSFVLeXI2R2cwMWRVcUVKMXRaelBibGZJU1BZMU4v?=
 =?utf-8?B?RVdHWnJMcWhFazVFUEpXOXJBYS8xVk9ZcjFCY1RQZTVGU1FFbkI4UGFJeHh4?=
 =?utf-8?B?Vk1WTXA4a3lrbVhpaHRXTEdmcGtNczMxRllsSEM0aHZqeW5UWDF2UWRoUDJJ?=
 =?utf-8?B?VGVEeDBJMjQyQTVYenMzaG8rUjVBSDRCbXd2QjJmcUdVZGVneWRVWVRIVERR?=
 =?utf-8?B?RmFMNzRGRjBUNk9vUHBuUGpaMVhCRDRmdEdCSkdSdGRLdWErc1RzU3EwSm04?=
 =?utf-8?B?bWRYcGgyUDgrVU03bzdKNlJ2bllhaURYUGZUUGsrYUVnc0hSOTlxQzJyZ3VB?=
 =?utf-8?B?WkpCU0NtSTZ6aGZhNGVFTm11SXZabm41YTh6amNyYmZrMlFMdUFBTzVZaTJE?=
 =?utf-8?B?a3c2TmFOcGVUUFFEb2pPSnRoODJDOTBMWmNqNllVK2w2WGFZcnh5cVk0Skpl?=
 =?utf-8?B?aFF0RHQxbG5xN083amlFOEI4aldCSnVDV2toTmpzd2lhQkNGTmx1bnF6TC9J?=
 =?utf-8?B?OE9id1I4aXlFeHpVR0I4Nk9udEpxR25DQUVCTFEzNkgyS3FEQjQrb1UvdjFv?=
 =?utf-8?B?UXRTblBCZklRcnZzRER3WUlWdk5kM1UrNWRFR3J6L0xYazJsODNRYzF6Ty9m?=
 =?utf-8?B?R3lMS3lrNnROSUQycmdzam1VNTI2em5tWm1UM1huakdCVVNwV0ZSRzhhWGRG?=
 =?utf-8?B?QXk4d21wVWYzK2ZOODd3UThEdm1HOVNzdE55eW96c3paaFRRbTVyVWMwYXln?=
 =?utf-8?B?UXNaa1krUkRTelpqT1Q3VjZLU0hyNitudmJBcFhCQnV2QTN5d2xIb09yZWVa?=
 =?utf-8?B?ZU9oNWJDRllmaUtXeEZoWjRjdFY4b0ZnUnF6di9jTHZyeTZQLzBBZEVENUpl?=
 =?utf-8?B?WklKOFhRbWZhZzBvb1NYK3ZYVyt1b0VzbHdkWS9XYmVEeHU1TzQ2M1Y4WUor?=
 =?utf-8?B?eGhaYWFaNW5VeVFaeDZiOTMvdU1SdmFSLy9FZ1B4TUdYNWNsOFFKK0dySGdK?=
 =?utf-8?B?aXlSSVF4UjBaYjd4MEFxcm1sTmtFaTFHaUp2VVE1Z1RZTkY5SXBIalN4UmJN?=
 =?utf-8?B?YkxjNWFJZUJkcGVVendzUmF2TE9reTBBcU9XZkVpY0krV2dFekMyWTFjeVZB?=
 =?utf-8?B?QUE9PQ==?=
X-MS-Exchange-CrossTenant-Network-Message-Id: ea9cd861-f363-4e45-387f-08dbda012504
X-MS-Exchange-CrossTenant-AuthSource: DM4PR11MB5341.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 31 Oct 2023 11:04:25.5612 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: iwdPYbC/xm5VjdvnpQfjsZf2GSCXhKnVvq6iIaI7NaicefA0nT58gHqodHxSjM36DrYIhROsOMeH51n3/QnYKVKhkN/PCupes1S6hlLW8A0=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: CO1PR11MB4900
X-OriginatorOrg: intel.com
Subject: Re: [Intel-gfx] [PATCH 0/3] drm/i915/hdcp: Additional conditions to
 enable hdcp
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


On 10/26/2023 5:41 PM, Suraj Kandpal wrote:
> We are seeing a issue when we close the lid of a laptop or dock a
> monitor hdcp content is not being reenabled automatically this is
> because when we dock a monitor we end up with a enable and
> disable connector cycle but if hdcp content is running we get the
> userspace in enabled state and driver maintaining a undesired
> state which causes the content to stop playing and we only enabe
> hdcp if the userspace state in desired.
> This first and second patch refactors the code while the third one adds the
> new conditions to enable hdcp.
>
> Signed-off-by: Suraj Kandpal <suraj.kandpal@intel.com>
>
> Suraj Kandpal (3):
>    drm/i915/hdcp: Rename HCDP 1.4 enablement function
>    drm/i915/hdcp: Convert intel_hdcp_enable to a blanket function
>    drm/i915/hdcp: Add more conditions to enable hdcp

Series pushed to drm-intel-next. Thanks for the patches and reviews.

Regards,

Ankit


>
>   drivers/gpu/drm/i915/display/intel_ddi.c    |  5 +--
>   drivers/gpu/drm/i915/display/intel_dp_mst.c |  5 +--
>   drivers/gpu/drm/i915/display/intel_hdcp.c   | 37 ++++++++++++++++-----
>   drivers/gpu/drm/i915/display/intel_hdcp.h   |  8 ++---
>   4 files changed, 35 insertions(+), 20 deletions(-)
>
