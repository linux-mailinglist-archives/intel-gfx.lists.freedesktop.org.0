Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 038374EA636
	for <lists+intel-gfx@lfdr.de>; Tue, 29 Mar 2022 05:59:37 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 93FA410E47B;
	Tue, 29 Mar 2022 03:59:34 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga03.intel.com (mga03.intel.com [134.134.136.65])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 1D2DF10E476
 for <intel-gfx@lists.freedesktop.org>; Tue, 29 Mar 2022 03:59:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1648526374; x=1680062374;
 h=message-id:date:subject:to:cc:references:from:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=YIU5nAsnU5qVc9O172+kbKoHqQK0EvcVmaTkTlrZZNI=;
 b=Oue1amV8toYYlNOVyO13HdLH2Yp4wGvzSMQbg6AtLudfKETm62ed7h3i
 31GuMnp6v1UcvvaS1RdBfqP13qNqVT2Sx4gz9bwirfZP+P6yQBglYtKRX
 kU/cw8d2qXZ0hF880BQGGEh2aEE0QApmtXjWtAVdmGPaDVZl5pbiEwO/D
 mUmZh3NiBVuW16q3+zJJFGUsJHMlwHpiweVDn2BFTKOfHS/QPb2QxHOeO
 gobX51ibILVbX3XFUzczP86ANf99MT8bA1VBWi4mFYIJH4zQ2BkeN5XS5
 miEh9V9WR1pglxy3ekEOzX7fjEeRDEVU220lrlCXd/Q/hiqYbtJsH6NSW w==;
X-IronPort-AV: E=McAfee;i="6200,9189,10300"; a="259125491"
X-IronPort-AV: E=Sophos;i="5.90,219,1643702400"; d="scan'208";a="259125491"
Received: from fmsmga004.fm.intel.com ([10.253.24.48])
 by orsmga103.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 28 Mar 2022 20:59:33 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.90,219,1643702400"; d="scan'208";a="617998803"
Received: from orsmsx602.amr.corp.intel.com ([10.22.229.15])
 by fmsmga004.fm.intel.com with ESMTP; 28 Mar 2022 20:59:32 -0700
Received: from orsmsx609.amr.corp.intel.com (10.22.229.22) by
 ORSMSX602.amr.corp.intel.com (10.22.229.15) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2308.27; Mon, 28 Mar 2022 20:59:32 -0700
Received: from orsedg603.ED.cps.intel.com (10.7.248.4) by
 orsmsx609.amr.corp.intel.com (10.22.229.22) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2308.27 via Frontend Transport; Mon, 28 Mar 2022 20:59:32 -0700
Received: from NAM11-DM6-obe.outbound.protection.outlook.com (104.47.57.171)
 by edgegateway.intel.com (134.134.137.100) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2308.21; Mon, 28 Mar 2022 20:59:31 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=h0K9CnUKMiL/wMKHQLxoBt3Nu3rpTWGn7dDLKStnMloxt2H/c5ABnkbF1gaYZPZqBz0r/lXmeFFF6aW/trbAlbHwysmRFsv5agbrBbtVAkQ4A960rUdoW6hn89TTtes0gkbtLFU63PYATSNt4QiJFaKf+YDpJoXehNN4YiViwlvTMGYII6/oAebF8W0m4QNYZ0Xlyxx5qJX9wo4S3dlXX3YWnjD+subYANrEWXDQylLlRSsQigRA7Av7v56bjpDL2n4xxaQEDHyKkWAyOHzIi5szFJj3uGk3meOL9ALNmzueFxz1U1bA42z3zKdG/CETBhxh4ldyFuD3tDm75K8JxA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=GyzWS49ZNRvZfFwrYE/WDWOkIZimzNr/PBiHrmJy1p4=;
 b=VTB9JgJNEM4viiGqb/HQ3sPtiHdGKl5trEbGct8YlpiGhtRAAYtR4JdYHra7vwc635TMcFldz95+N5hoow9IUpSNgvkXd3w1DZ4u8MjiGf8j+3P+hZCYZeIK7W0kUGDymnoIfdE539PnKSn82trWsOHIcfZd+BxPqSAPTy6wL06TsVbp778WCJESYRimPMACWqKrQHxycRn3CW3ipPdGU+yzD19Ne5iDSf9WAszJoxDS/Itr8HXi/VeTdIUDLUDYEzZjJ20jcnQpRLPBN/2Jvy+fiH46YwQc7sGPUxj9XU1UxflipjqJQT9N8vlER6lBG++y2S/iqwLFfE77tLCJig==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from BN9PR11MB5530.namprd11.prod.outlook.com (2603:10b6:408:103::8)
 by BY5PR11MB4150.namprd11.prod.outlook.com (2603:10b6:a03:190::33)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.5102.19; Tue, 29 Mar
 2022 03:59:29 +0000
Received: from BN9PR11MB5530.namprd11.prod.outlook.com
 ([fe80::ec9b:3e60:90cc:bca]) by BN9PR11MB5530.namprd11.prod.outlook.com
 ([fe80::ec9b:3e60:90cc:bca%7]) with mapi id 15.20.5102.023; Tue, 29 Mar 2022
 03:59:29 +0000
Message-ID: <6d2c8587-32f9-a3e8-4926-0d341e34b2b7@intel.com>
Date: Tue, 29 Mar 2022 09:29:18 +0530
User-Agent: Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:91.0) Gecko/20100101
 Thunderbird/91.7.0
Content-Language: en-US
To: Ashutosh Dixit <ashutosh.dixit@intel.com>,
 <intel-gfx@lists.freedesktop.org>
References: <20220323195435.38524-1-ashutosh.dixit@intel.com>
From: "Nilawar, Badal" <badal.nilawar@intel.com>
In-Reply-To: <20220323195435.38524-1-ashutosh.dixit@intel.com>
Content-Type: text/plain; charset="UTF-8"; format=flowed
Content-Transfer-Encoding: 7bit
X-ClientProxiedBy: PN3PR01CA0049.INDPRD01.PROD.OUTLOOK.COM
 (2603:1096:c01:98::12) To BN9PR11MB5530.namprd11.prod.outlook.com
 (2603:10b6:408:103::8)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-Correlation-Id: c063b109-4db3-4f8b-c843-08da113885aa
X-MS-TrafficTypeDiagnostic: BY5PR11MB4150:EE_
X-LD-Processed: 46c98d88-e344-4ed4-8496-4ed7712e255d,ExtAddr
X-Microsoft-Antispam-PRVS: <BY5PR11MB4150D6583F38D6D408A9A702E51E9@BY5PR11MB4150.namprd11.prod.outlook.com>
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: oWHg5lwVNeo9wdcjUrDygWsn5pjfkW2WejXJuBVu/UJVmz6wGrm/St8E6eSEahHaULTmAhazDci5eB384/TUqSI3/lwuEmO9Uiz9r8PJ4TEnPxAIagQ8lW27gbMs/IYA9vyrisYoprCvmHhPD1yywyIfSpl2VUL+VvmV2A7jfEIQ+ezaqC8TfrSHp0tDHOucvkqHs38GIoLlzajxR+e6rrumNxr2on6alUtMa0imzwi2tXWnhBhvrKfckZb/BYHbmSnPChPOEL72Mgcogf4a5wqv70BxWw998b5CZIBN+LjNwEp4xQU6n5OHi56WnGG9Asu0n+cBN5x806bfkKfIWWoAcubBVeairZj6gtgRUXmi+/5rpPhB7MEpkc6e8BuzYvN4jIBJR8b/VP1YEikQNWfnsTtng9fJDhoj+ailIkOPF+9/QbMDw+2BOcvfXeUA9BowQQ0zNH2jMa/7RFg3jrXZBqnFI750BrTHWz6s3DcOklUMne4E3ycTWilqAJkcuHReoZGCJ7B+UGi54U4ZikkA3jq3WdmEKrQ8lmjYgzja/32xyyQobRtQhRdQiQ7xZ6neQYzesWwIzg6szxku7zL/jwWx9wHP4xzq6lIUZRAfDxtoAFcXWfwyR7jf247ZmnZhi05GRv1nRynB5SQuiS+arpnrSBwR0AgfOboSZI95jA8w0oNLYtQ5oRgMFFKGMVpN7M84dhYol8zXticwPJUHOLlfy5215WZT8Ws8f3M=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:BN9PR11MB5530.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230001)(366004)(38100700002)(5660300002)(36756003)(30864003)(53546011)(6506007)(31686004)(8936002)(82960400001)(2906002)(316002)(66476007)(66556008)(66946007)(8676002)(83380400001)(107886003)(86362001)(186003)(26005)(31696002)(2616005)(4326008)(6666004)(508600001)(54906003)(6512007)(6486002)(43740500002)(45980500001);
 DIR:OUT; SFP:1102; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?TEJwdVZ6TDM5c0dNaGdOM1BpR0cydVdQZmFaRE05L1A1cHptRURvSEJXSlZo?=
 =?utf-8?B?a2VUcFZuSHBZQmwvaWQ3ZjdRTmcrd2RjWXN3NXBSdGlxSjBvQTNndWl1ZlZt?=
 =?utf-8?B?Tk5VTlpPM2xaTCtOblRLMHkwcUltRW1ZZExLZk5xR2ZWSWlyQWIvanVlc3Zh?=
 =?utf-8?B?alNBd1JOSnR0RHVTMEJVazd2WWZuNmc0N2IrUjFRNFAzRU9peVRVRjZsK2pB?=
 =?utf-8?B?cnV2SnJ0UXBVQnpPbDR0blk3Q1VPUnVlK3MyeHQvUGNSSGUxcTJMZEM2Uy9q?=
 =?utf-8?B?cHNBRHlOWi9HZENpcUJReVptWUt3VVBmNHFlMjlmTzRBVjdzcmN6TnRvKzBj?=
 =?utf-8?B?QkJQZ0RxTHgzb3RFVFhUMTdRVG1tMFBZNTlYOEFvU2xmaDZwL2lTazZwaDg2?=
 =?utf-8?B?LzNiRkk0d2ZJNzBBQ0RWYWRtZEZtY08rcUFVWWRTenRKWElpN0w5ejVKSFhX?=
 =?utf-8?B?QzZVcmM0SmErTWJvMDJXWDJEeTRLV0JEUERQN1NKOTNCSHpST25mOGhKcG8w?=
 =?utf-8?B?SXZxdjJ2M2g1M0xJRnFPSEVud21MLytQWDBmcW5YSUxyRHIwdnJYbUZOWmc5?=
 =?utf-8?B?OHYzMS8xcmVaTXhWV0N1clUyYnRxbmN3UkxmTWl2VUN6Ry9CZi9JcEg1cENO?=
 =?utf-8?B?dlpoYkh0YjhYUWg4U0ZmWDlndVkwcytDNEYvaU03eWtmUEtCbEZXMW5ON3Jv?=
 =?utf-8?B?ZU90VEpmeFU0MGh2U2NtSGEzZUZpby9KVWtJTVRXVC9PTnVCcjFXNTdOeno5?=
 =?utf-8?B?MjhoN3BiSzUwNG81WGpzVVhLUlJRN01SaVlyRDBhdE1pV3RpalQ1NENHaTBJ?=
 =?utf-8?B?dnRNZVQ1S09qNitCN0JYY2xqK2FYY01rYkJzL0dpa2pmclNVTWVxY20wNUJJ?=
 =?utf-8?B?THVnYVRlK2tpaEpVMTl6OTVqZUVHZjN1bjU0RFdLenR0VUlwanYzZ3R3djhF?=
 =?utf-8?B?OEU4OFFFaU1VeEdpYUhsSUQzTExDZVMzM2thTjVPME5UVTkvWkN2a1BwMnZk?=
 =?utf-8?B?MHN3NEZGUlJSc0hsZnhXbkNCeWRHblpWdDg2MkdLTWVGTkw3ZDkrVGVaNzNp?=
 =?utf-8?B?cnpnOXNnaEpSUitYMGdnV1g0amphYjFPSldFWnB4a0NPTDEzUkoyUkZzdHJm?=
 =?utf-8?B?eFY1ZFBlS3NtbUpUbU5FV1lVOVBMc0tOYUFQOU9BN0JqdktMcDNRWmRvRDVr?=
 =?utf-8?B?S1pteTZsVU05MldpMmhqMWdDb0RGNlRjMHZMMjRCZkFYdXc3T21EVHB1WGM4?=
 =?utf-8?B?TUNJSkRCbHZnTG11MzJLNWpRVVRxeExuVXYxS3MzMTc3SUVyaDRBdW1NU1Fo?=
 =?utf-8?B?NGlZaHA3NHZSMWxHcHpNWUQrMWVScXBwUnU3ZG5ub3EyQm1kQ3BnUUR3ajNY?=
 =?utf-8?B?V1p1RmI3ZE5mSUZTWmkyMVpmL2NMZENvY0U5cVd5RVMxeU4wREt1Z3N5R2ZQ?=
 =?utf-8?B?dFV5dnBnUHNBdUpEOCtDT2dJWHZRV2p2UlNSeFF6OXlncGJQZVVuSUVuU1Q4?=
 =?utf-8?B?dnNyOHM4eDFwWitUdzdVRUo2R2NvZlZNcGpSeWJuM1pkUTlORVhURHhEa085?=
 =?utf-8?B?czlYa0M2dWpieUx5eExaZFYrdG1MbndsbHhzcVdvd1FGMzVhajlZK0FVTnJC?=
 =?utf-8?B?eFBWYzFhazR0WnNERnl6Wkk5M0RrZCtHUHR5dHdGS2xSSlZITGFJcFE2dFky?=
 =?utf-8?B?T0N0SDg0L2ZFLzBydURFQmIycFRJZEZlSlR6cjVnbWFMWko5OWNMYUVpZkNl?=
 =?utf-8?B?RllaS21hWm5WR1dhZXlOK2VEWW5PZFo0czJIOHAvOFhHd2lzZUN6UU5DK0t0?=
 =?utf-8?B?dG91WERHdHB3d0VBaE05b1pIUEcvWkVaeTBVbU1jVVdmUlZYMzNtOG9PblVl?=
 =?utf-8?B?cG9vbUNTNWdWZ0R0WU45K1JFNTVjQWRHM2xqRTVsTlJmTVR5bis4cE1YSkFl?=
 =?utf-8?B?clZXZGN5MUJKMmc3ajY5ZzhYL3NvYW43ZVpDME5FVFRYRlMxZGZCZVArakJJ?=
 =?utf-8?B?V1o3aGVsM2d6QndRYkdHelFZVHVDVGdwZkl2WmVaUzZXTDM5dktWY0NaVGFJ?=
 =?utf-8?B?U3dwSTdHMmxWUUh0cU9aTWdoTUxLTzVKWE1JWlc3MWFqbktBM0l3N3M0ZVF1?=
 =?utf-8?B?UytaN0hxdlYzQkY2ZldYS1JXV0I4VGZWbkM4d2N6dG9vVVFGcWpNdXZDMlJX?=
 =?utf-8?B?aUl4cjFOVjRVUUI3VkNzN2xraTViYm1aVFBWRU5vMDZkY2pPRkNxd0hySTVu?=
 =?utf-8?B?RWVUOVp3K1VMQ25zclpENmhZeUxrRnk1TlR3L0F4NFM3MG0wQlk3bUJEWThT?=
 =?utf-8?B?emJrdDlKcm03VW9RK0FUcytBSnQrUzlrc1N1QWJKaTlqamVLNFZkVnZsUVZL?=
 =?utf-8?Q?YYgtzFj82zbehlI8=3D?=
X-MS-Exchange-CrossTenant-Network-Message-Id: c063b109-4db3-4f8b-c843-08da113885aa
X-MS-Exchange-CrossTenant-AuthSource: BN9PR11MB5530.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 29 Mar 2022 03:59:28.9293 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: C7XYkpVhVRaJ7knXOOesHRu57Gv+VN+FudogfSdj5kBwNjODNanB91414CdErZpt/LO2RyZGkiWlww+B6KoULQ==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: BY5PR11MB4150
X-OriginatorOrg: intel.com
Subject: Re: [Intel-gfx] [PATCH] drm/i915/rps: Centralize computation of
 freq caps
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
Cc: Lucas De Marchi <lucas.demarchi@intel.com>, Rodrigo
 Vivi <rodrigo.vivi@intel.com>
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>



On 24-03-2022 01:24, Ashutosh Dixit wrote:
> Freq caps (i.e. RP0, RP1 and RPn frequencies) are read from HW. However the
> formats (bit positions, widths, registers and units) of these vary for
> different generations with even more variations arriving in the future. In
> order not to have to do identical computation for these caps in multiple
> places, here we centralize the computation of these caps. This makes the
> code cleaner and also more extensible for the future.
> 
> v2: Clarify that caps are in "hw units" in comments (Lucas De Marchi)
> v3: Minor checkpatch fix
> v4: s/intel_rps_get_freq_caps/gen6_rps_get_freq_caps/ (Badal Nilawar)
> 
> Signed-off-by: Ashutosh Dixit <ashutosh.dixit@intel.com>
This looks ok to me.
Reviewed-by: Badal Nilawar <badal.nilawar@intel.com>
> ---
>   drivers/gpu/drm/i915/gt/intel_gt_pm_debugfs.c |  24 +----
>   drivers/gpu/drm/i915/gt/intel_rps.c           | 101 ++++++++++--------
>   drivers/gpu/drm/i915/gt/intel_rps.h           |   2 +-
>   drivers/gpu/drm/i915/gt/intel_rps_types.h     |  10 ++
>   drivers/gpu/drm/i915/gt/uc/intel_guc_slpc.c   |  14 +--
>   5 files changed, 79 insertions(+), 72 deletions(-)
> 
> diff --git a/drivers/gpu/drm/i915/gt/intel_gt_pm_debugfs.c b/drivers/gpu/drm/i915/gt/intel_gt_pm_debugfs.c
> index 31dbb2b96738..280a27cb9bdf 100644
> --- a/drivers/gpu/drm/i915/gt/intel_gt_pm_debugfs.c
> +++ b/drivers/gpu/drm/i915/gt/intel_gt_pm_debugfs.c
> @@ -342,17 +342,16 @@ void intel_gt_pm_frequency_dump(struct intel_gt *gt, struct drm_printer *p)
>   	} else if (GRAPHICS_VER(i915) >= 6) {
>   		u32 rp_state_limits;
>   		u32 gt_perf_status;
> -		u32 rp_state_cap;
> +		struct intel_rps_freq_caps caps;
>   		u32 rpmodectl, rpinclimit, rpdeclimit;
>   		u32 rpstat, cagf, reqf;
>   		u32 rpcurupei, rpcurup, rpprevup;
>   		u32 rpcurdownei, rpcurdown, rpprevdown;
>   		u32 rpupei, rpupt, rpdownei, rpdownt;
>   		u32 pm_ier, pm_imr, pm_isr, pm_iir, pm_mask;
> -		int max_freq;
>   
>   		rp_state_limits = intel_uncore_read(uncore, GEN6_RP_STATE_LIMITS);
> -		rp_state_cap = intel_rps_read_state_cap(rps);
> +		gen6_rps_get_freq_caps(rps, &caps);
>   		if (IS_GEN9_LP(i915))
>   			gt_perf_status = intel_uncore_read(uncore, BXT_GT_PERF_STATUS);
>   		else
> @@ -474,25 +473,12 @@ void intel_gt_pm_frequency_dump(struct intel_gt *gt, struct drm_printer *p)
>   		drm_printf(p, "RP DOWN THRESHOLD: %d (%lldns)\n",
>   			   rpdownt, intel_gt_pm_interval_to_ns(gt, rpdownt));
>   
> -		max_freq = (IS_GEN9_LP(i915) ? rp_state_cap >> 0 :
> -			    rp_state_cap >> 16) & 0xff;
> -		max_freq *= (IS_GEN9_BC(i915) ||
> -			     GRAPHICS_VER(i915) >= 11 ? GEN9_FREQ_SCALER : 1);
>   		drm_printf(p, "Lowest (RPN) frequency: %dMHz\n",
> -			   intel_gpu_freq(rps, max_freq));
> -
> -		max_freq = (rp_state_cap & 0xff00) >> 8;
> -		max_freq *= (IS_GEN9_BC(i915) ||
> -			     GRAPHICS_VER(i915) >= 11 ? GEN9_FREQ_SCALER : 1);
> +			   intel_gpu_freq(rps, caps.min_freq));
>   		drm_printf(p, "Nominal (RP1) frequency: %dMHz\n",
> -			   intel_gpu_freq(rps, max_freq));
> -
> -		max_freq = (IS_GEN9_LP(i915) ? rp_state_cap >> 16 :
> -			    rp_state_cap >> 0) & 0xff;
> -		max_freq *= (IS_GEN9_BC(i915) ||
> -			     GRAPHICS_VER(i915) >= 11 ? GEN9_FREQ_SCALER : 1);
> +			   intel_gpu_freq(rps, caps.rp1_freq));
>   		drm_printf(p, "Max non-overclocked (RP0) frequency: %dMHz\n",
> -			   intel_gpu_freq(rps, max_freq));
> +			   intel_gpu_freq(rps, caps.rp0_freq));
>   		drm_printf(p, "Max overclocked frequency: %dMHz\n",
>   			   intel_gpu_freq(rps, rps->max_freq));
>   
> diff --git a/drivers/gpu/drm/i915/gt/intel_rps.c b/drivers/gpu/drm/i915/gt/intel_rps.c
> index 6c9fdf7906c5..f21f6e454998 100644
> --- a/drivers/gpu/drm/i915/gt/intel_rps.c
> +++ b/drivers/gpu/drm/i915/gt/intel_rps.c
> @@ -1070,23 +1070,59 @@ int intel_rps_set(struct intel_rps *rps, u8 val)
>   	return 0;
>   }
>   
> -static void gen6_rps_init(struct intel_rps *rps)
> +static u32 intel_rps_read_state_cap(struct intel_rps *rps)
>   {
>   	struct drm_i915_private *i915 = rps_to_i915(rps);
> -	u32 rp_state_cap = intel_rps_read_state_cap(rps);
> +	struct intel_uncore *uncore = rps_to_uncore(rps);
>   
> -	/* All of these values are in units of 50MHz */
> +	if (IS_XEHPSDV(i915))
> +		return intel_uncore_read(uncore, XEHPSDV_RP_STATE_CAP);
> +	else if (IS_GEN9_LP(i915))
> +		return intel_uncore_read(uncore, BXT_RP_STATE_CAP);
> +	else
> +		return intel_uncore_read(uncore, GEN6_RP_STATE_CAP);
> +}
> +
> +/* "Caps" frequencies should be converted to MHz using intel_gpu_freq() */
> +void gen6_rps_get_freq_caps(struct intel_rps *rps, struct intel_rps_freq_caps *caps)
> +{
> +	struct drm_i915_private *i915 = rps_to_i915(rps);
> +	u32 rp_state_cap;
> +
> +	rp_state_cap = intel_rps_read_state_cap(rps);
>   
>   	/* static values from HW: RP0 > RP1 > RPn (min_freq) */
>   	if (IS_GEN9_LP(i915)) {
> -		rps->rp0_freq = (rp_state_cap >> 16) & 0xff;
> -		rps->rp1_freq = (rp_state_cap >>  8) & 0xff;
> -		rps->min_freq = (rp_state_cap >>  0) & 0xff;
> +		caps->rp0_freq = (rp_state_cap >> 16) & 0xff;
> +		caps->rp1_freq = (rp_state_cap >>  8) & 0xff;
> +		caps->min_freq = (rp_state_cap >>  0) & 0xff;
>   	} else {
> -		rps->rp0_freq = (rp_state_cap >>  0) & 0xff;
> -		rps->rp1_freq = (rp_state_cap >>  8) & 0xff;
> -		rps->min_freq = (rp_state_cap >> 16) & 0xff;
> +		caps->rp0_freq = (rp_state_cap >>  0) & 0xff;
> +		caps->rp1_freq = (rp_state_cap >>  8) & 0xff;
> +		caps->min_freq = (rp_state_cap >> 16) & 0xff;
> +	}
> +
> +	if (IS_GEN9_BC(i915) || GRAPHICS_VER(i915) >= 11) {
> +		/*
> +		 * In this case rp_state_cap register reports frequencies in
> +		 * units of 50 MHz. Convert these to the actual "hw unit", i.e.
> +		 * units of 16.67 MHz
> +		 */
> +		caps->rp0_freq *= GEN9_FREQ_SCALER;
> +		caps->rp1_freq *= GEN9_FREQ_SCALER;
> +		caps->min_freq *= GEN9_FREQ_SCALER;
>   	}
> +}
> +
> +static void gen6_rps_init(struct intel_rps *rps)
> +{
> +	struct drm_i915_private *i915 = rps_to_i915(rps);
> +	struct intel_rps_freq_caps caps;
> +
> +	gen6_rps_get_freq_caps(rps, &caps);
> +	rps->rp0_freq = caps.rp0_freq;
> +	rps->rp1_freq = caps.rp1_freq;
> +	rps->min_freq = caps.min_freq;
>   
>   	/* hw_max = RP0 until we check for overclocking */
>   	rps->max_freq = rps->rp0_freq;
> @@ -1095,26 +1131,18 @@ static void gen6_rps_init(struct intel_rps *rps)
>   	if (IS_HASWELL(i915) || IS_BROADWELL(i915) ||
>   	    IS_GEN9_BC(i915) || GRAPHICS_VER(i915) >= 11) {
>   		u32 ddcc_status = 0;
> +		u32 mult = 1;
>   
> +		if (IS_GEN9_BC(i915) || GRAPHICS_VER(i915) >= 11)
> +			mult = GEN9_FREQ_SCALER;
>   		if (snb_pcode_read(i915, HSW_PCODE_DYNAMIC_DUTY_CYCLE_CONTROL,
>   				   &ddcc_status, NULL) == 0)
>   			rps->efficient_freq =
> -				clamp_t(u8,
> -					(ddcc_status >> 8) & 0xff,
> +				clamp_t(u32,
> +					((ddcc_status >> 8) & 0xff) * mult,
>   					rps->min_freq,
>   					rps->max_freq);
>   	}
> -
> -	if (IS_GEN9_BC(i915) || GRAPHICS_VER(i915) >= 11) {
> -		/* Store the frequency values in 16.66 MHZ units, which is
> -		 * the natural hardware unit for SKL
> -		 */
> -		rps->rp0_freq *= GEN9_FREQ_SCALER;
> -		rps->rp1_freq *= GEN9_FREQ_SCALER;
> -		rps->min_freq *= GEN9_FREQ_SCALER;
> -		rps->max_freq *= GEN9_FREQ_SCALER;
> -		rps->efficient_freq *= GEN9_FREQ_SCALER;
> -	}
>   }
>   
>   static bool rps_reset(struct intel_rps *rps)
> @@ -2219,19 +2247,6 @@ int intel_rps_set_min_frequency(struct intel_rps *rps, u32 val)
>   		return set_min_freq(rps, val);
>   }
>   
> -u32 intel_rps_read_state_cap(struct intel_rps *rps)
> -{
> -	struct drm_i915_private *i915 = rps_to_i915(rps);
> -	struct intel_uncore *uncore = rps_to_uncore(rps);
> -
> -	if (IS_XEHPSDV(i915))
> -		return intel_uncore_read(uncore, XEHPSDV_RP_STATE_CAP);
> -	else if (IS_GEN9_LP(i915))
> -		return intel_uncore_read(uncore, BXT_RP_STATE_CAP);
> -	else
> -		return intel_uncore_read(uncore, GEN6_RP_STATE_CAP);
> -}
> -
>   static void intel_rps_set_manual(struct intel_rps *rps, bool enable)
>   {
>   	struct intel_uncore *uncore = rps_to_uncore(rps);
> @@ -2244,18 +2259,18 @@ static void intel_rps_set_manual(struct intel_rps *rps, bool enable)
>   void intel_rps_raise_unslice(struct intel_rps *rps)
>   {
>   	struct intel_uncore *uncore = rps_to_uncore(rps);
> -	u32 rp0_unslice_req;
>   
>   	mutex_lock(&rps->lock);
>   
>   	if (rps_uses_slpc(rps)) {
>   		/* RP limits have not been initialized yet for SLPC path */
> -		rp0_unslice_req = ((intel_rps_read_state_cap(rps) >> 0)
> -				   & 0xff) * GEN9_FREQ_SCALER;
> +		struct intel_rps_freq_caps caps;
> +
> +		gen6_rps_get_freq_caps(rps, &caps);
>   
>   		intel_rps_set_manual(rps, true);
>   		intel_uncore_write(uncore, GEN6_RPNSWREQ,
> -				   ((rp0_unslice_req <<
> +				   ((caps.rp0_freq <<
>   				   GEN9_SW_REQ_UNSLICE_RATIO_SHIFT) |
>   				   GEN9_IGNORE_SLICE_RATIO));
>   		intel_rps_set_manual(rps, false);
> @@ -2269,18 +2284,18 @@ void intel_rps_raise_unslice(struct intel_rps *rps)
>   void intel_rps_lower_unslice(struct intel_rps *rps)
>   {
>   	struct intel_uncore *uncore = rps_to_uncore(rps);
> -	u32 rpn_unslice_req;
>   
>   	mutex_lock(&rps->lock);
>   
>   	if (rps_uses_slpc(rps)) {
>   		/* RP limits have not been initialized yet for SLPC path */
> -		rpn_unslice_req = ((intel_rps_read_state_cap(rps) >> 16)
> -				   & 0xff) * GEN9_FREQ_SCALER;
> +		struct intel_rps_freq_caps caps;
> +
> +		gen6_rps_get_freq_caps(rps, &caps);
>   
>   		intel_rps_set_manual(rps, true);
>   		intel_uncore_write(uncore, GEN6_RPNSWREQ,
> -				   ((rpn_unslice_req <<
> +				   ((caps.min_freq <<
>   				   GEN9_SW_REQ_UNSLICE_RATIO_SHIFT) |
>   				   GEN9_IGNORE_SLICE_RATIO));
>   		intel_rps_set_manual(rps, false);
> diff --git a/drivers/gpu/drm/i915/gt/intel_rps.h b/drivers/gpu/drm/i915/gt/intel_rps.h
> index ba1ed9f7ecda..1e8d56491308 100644
> --- a/drivers/gpu/drm/i915/gt/intel_rps.h
> +++ b/drivers/gpu/drm/i915/gt/intel_rps.h
> @@ -45,7 +45,7 @@ u32 intel_rps_get_rp1_frequency(struct intel_rps *rps);
>   u32 intel_rps_get_rpn_frequency(struct intel_rps *rps);
>   u32 intel_rps_read_punit_req(struct intel_rps *rps);
>   u32 intel_rps_read_punit_req_frequency(struct intel_rps *rps);
> -u32 intel_rps_read_state_cap(struct intel_rps *rps);
> +void gen6_rps_get_freq_caps(struct intel_rps *rps, struct intel_rps_freq_caps *caps);
>   void intel_rps_raise_unslice(struct intel_rps *rps);
>   void intel_rps_lower_unslice(struct intel_rps *rps);
>   
> diff --git a/drivers/gpu/drm/i915/gt/intel_rps_types.h b/drivers/gpu/drm/i915/gt/intel_rps_types.h
> index 3941d8551f52..4f7a351e0997 100644
> --- a/drivers/gpu/drm/i915/gt/intel_rps_types.h
> +++ b/drivers/gpu/drm/i915/gt/intel_rps_types.h
> @@ -37,6 +37,16 @@ enum {
>   	INTEL_RPS_TIMER,
>   };
>   
> +/*
> + * Freq caps exposed by HW, values are in "hw units" and intel_gpu_freq()
> + * should be used to convert to MHz
> + */
> +struct intel_rps_freq_caps {
> +	u8 rp0_freq;		/* non-overclocked max frequency */
> +	u8 rp1_freq;		/* "less than" RP0 power/freqency */
> +	u8 min_freq;		/* aka RPn, minimum frequency */
> +};
> +
>   struct intel_rps {
>   	struct mutex lock; /* protects enabling and the worker */
>   
> diff --git a/drivers/gpu/drm/i915/gt/uc/intel_guc_slpc.c b/drivers/gpu/drm/i915/gt/uc/intel_guc_slpc.c
> index 9f032c65a488..9e02355e44f1 100644
> --- a/drivers/gpu/drm/i915/gt/uc/intel_guc_slpc.c
> +++ b/drivers/gpu/drm/i915/gt/uc/intel_guc_slpc.c
> @@ -582,16 +582,12 @@ static int slpc_use_fused_rp0(struct intel_guc_slpc *slpc)
>   static void slpc_get_rp_values(struct intel_guc_slpc *slpc)
>   {
>   	struct intel_rps *rps = &slpc_to_gt(slpc)->rps;
> -	u32 rp_state_cap;
> +	struct intel_rps_freq_caps caps;
>   
> -	rp_state_cap = intel_rps_read_state_cap(rps);
> -
> -	slpc->rp0_freq = REG_FIELD_GET(RP0_CAP_MASK, rp_state_cap) *
> -					GT_FREQUENCY_MULTIPLIER;
> -	slpc->rp1_freq = REG_FIELD_GET(RP1_CAP_MASK, rp_state_cap) *
> -					GT_FREQUENCY_MULTIPLIER;
> -	slpc->min_freq = REG_FIELD_GET(RPN_CAP_MASK, rp_state_cap) *
> -					GT_FREQUENCY_MULTIPLIER;
> +	gen6_rps_get_freq_caps(rps, &caps);
> +	slpc->rp0_freq = intel_gpu_freq(rps, caps.rp0_freq);
> +	slpc->rp1_freq = intel_gpu_freq(rps, caps.rp1_freq);
> +	slpc->min_freq = intel_gpu_freq(rps, caps.min_freq);
>   
>   	if (!slpc->boost_freq)
>   		slpc->boost_freq = slpc->rp0_freq;
