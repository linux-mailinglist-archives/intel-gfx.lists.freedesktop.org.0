Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 1DE1F5FE3DE
	for <lists+intel-gfx@lfdr.de>; Thu, 13 Oct 2022 23:11:36 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 2A19110E95F;
	Thu, 13 Oct 2022 21:11:31 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 278D410E95D
 for <intel-gfx@lists.freedesktop.org>; Thu, 13 Oct 2022 21:11:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1665695487; x=1697231487;
 h=message-id:date:subject:to:references:from:in-reply-to:
 content-transfer-encoding:mime-version;
 bh=axgEPxBBovNQKDmiX6FD0DEGR/hRRk+vxm9wkXntL2A=;
 b=lGIf4Mn3c+huGHhMZkQkh7DLV/MFTdSx9UWzIfQQEG43zSjbdULVFfAH
 v8k0daVKWRptA5uPPcb2Ec0qqz20nB2LIvMfKoxiGSfPxlDq5cp85YEWw
 5gMOyNt5KOKxlcbMs6hDpBSVz6crgwdzcc3A8uufVUiaVfRu2ewDlP13j
 TpC+4Q/IaoM3U5Sa6DyMj/AzZ+7fdKQufHFCuLAd7WXCDCJXW4fzLbnLS
 b5r4UkZzr5gZQzfZdTHVyn+AEk+y8RNY2+xmcBwhKFjuCMKrMNFmG7muQ
 VK2Trc1VskgiqD0OrOu0U8Sksu8lCgXbQRt9ROiXGIcKsyXbZDxVRxhEa g==;
X-IronPort-AV: E=McAfee;i="6500,9779,10499"; a="306282062"
X-IronPort-AV: E=Sophos;i="5.95,182,1661842800"; d="scan'208";a="306282062"
Received: from orsmga001.jf.intel.com ([10.7.209.18])
 by orsmga102.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 13 Oct 2022 14:11:26 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6500,9779,10499"; a="660488831"
X-IronPort-AV: E=Sophos;i="5.95,182,1661842800"; d="scan'208";a="660488831"
Received: from orsmsx601.amr.corp.intel.com ([10.22.229.14])
 by orsmga001.jf.intel.com with ESMTP; 13 Oct 2022 14:11:26 -0700
Received: from orsmsx611.amr.corp.intel.com (10.22.229.24) by
 ORSMSX601.amr.corp.intel.com (10.22.229.14) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2375.31; Thu, 13 Oct 2022 14:10:40 -0700
Received: from orsmsx607.amr.corp.intel.com (10.22.229.20) by
 ORSMSX611.amr.corp.intel.com (10.22.229.24) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2375.31; Thu, 13 Oct 2022 14:10:40 -0700
Received: from ORSEDG602.ED.cps.intel.com (10.7.248.7) by
 orsmsx607.amr.corp.intel.com (10.22.229.20) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2375.31 via Frontend Transport; Thu, 13 Oct 2022 14:10:40 -0700
Received: from NAM11-CO1-obe.outbound.protection.outlook.com (104.47.56.174)
 by edgegateway.intel.com (134.134.137.103) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2375.31; Thu, 13 Oct 2022 14:10:39 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=gzzKrsCK1e1Fsl0mnDEtdcaRXkBP0DeOAREVrQpdlWEz819iICsAMl+8IrJri8Xy1WgQF2/FSfLK6wFC5cgcL8reiSxvwELibqeZZLR2LB1bs5jkVde8Sr2UyjA381XwkSn1fEuFmg+SxKRAGJP83B8RIghLN2oaUoZPgnV0RraRxSK3yoM4qEMil1kAwfr+Tg99FUhDPTHjjjwicHmpk7JC0hze2plxbKKMBi2AKYxLGFDE2w9aNxYPm8C69ewATLCuYCN3fNNV+B/yg5eCE2kkG06vCo92vKOoZsb3jksnmK9ys9fjcD1mcWm2E+BEMi3HFLR6NCfsov+w7KPYlw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=38gpYatnYMHUSlqApDy8BG7yWkdCEyDDJF4zc4oRdGM=;
 b=X99j0FGeZw0g3pRHUd18PJiLrKqlptwUlfBpM/B11GL8sG/oufqVI+GvbksLtOD30aQSalSWRdjqpoQogckwGTeBg4Ptvf+3f8MktGiMNS5a2Dbujcsge/Ohe1KW04VZA4vWk8VXsS/6nO6GXR0fi+5NPKrcDl8hmFjTnMQoXy+3fpfgq4I/61YnMHOyr5ZnT2/tIbsaGa8A1M6WiQJs8X8H/POv5/OssGh4Uh5jWTC4kBUY3BNCPEBpY8RMZdoEz+eNdcl6ECSj6hWHkWRhxj5a596FdeixPZfAbH3kHej7g6/EroyxUpnbJCSECsr9K6cRx1maD7AySRfp2TamvQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from DM4PR11MB5488.namprd11.prod.outlook.com (2603:10b6:5:39d::5) by
 DM4PR11MB7328.namprd11.prod.outlook.com (2603:10b6:8:104::9) with
 Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.5676.32; Thu, 13 Oct 2022 21:10:38 +0000
Received: from DM4PR11MB5488.namprd11.prod.outlook.com
 ([fe80::bff2:8e4f:a657:6095]) by DM4PR11MB5488.namprd11.prod.outlook.com
 ([fe80::bff2:8e4f:a657:6095%4]) with mapi id 15.20.5723.022; Thu, 13 Oct 2022
 21:10:38 +0000
Message-ID: <4328db6a-eb8a-1b17-5879-4d018bfb5cf6@intel.com>
Date: Thu, 13 Oct 2022 14:10:35 -0700
User-Agent: Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:102.0) Gecko/20100101
 Thunderbird/102.3.2
Content-Language: en-US
To: Alan Previn <alan.previn.teres.alexis@intel.com>,
 <intel-gfx@lists.freedesktop.org>
References: <20221006043834.606220-1-alan.previn.teres.alexis@intel.com>
 <20221006043834.606220-3-alan.previn.teres.alexis@intel.com>
From: "Ceraolo Spurio, Daniele" <daniele.ceraolospurio@intel.com>
In-Reply-To: <20221006043834.606220-3-alan.previn.teres.alexis@intel.com>
Content-Type: text/plain; charset="UTF-8"; format=flowed
Content-Transfer-Encoding: 8bit
X-ClientProxiedBy: BY5PR17CA0069.namprd17.prod.outlook.com
 (2603:10b6:a03:167::46) To DM4PR11MB5488.namprd11.prod.outlook.com
 (2603:10b6:5:39d::5)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: DM4PR11MB5488:EE_|DM4PR11MB7328:EE_
X-MS-Office365-Filtering-Correlation-Id: aef36118-816b-40a6-48c3-08daad5f607d
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: wZ8FcCmAa3FSfLJ1k/rtkj+IMd9sM6qGb204l9D/ALbMa3JRS9mYCmz8L/o8NWiKulB9ySQSYmcRbyRFkMgqX7roNiwntF3g/RkQ7bvbX9nvyxGaIwcvd04bA6b23JK4xacgh8wK80sEvbDVvqqbcGdf/Vs7WI505I2IGYg1kwwcb86839viLUHyd8+9i+HaDImkFqfWT8RF12g83v4sTC3TvP8mtf12xUTF9zsW3H4fbilgc2lH027ZcNc86gH3Yz610PQgwmdTRdw7ueN+zhcEPzMj9jmxi9dSl7TS7aGfIpbhbuaAla9YAXSS7ftJpqC/f9hM1tljng56jamiFhzNf2Rat3P4qKsI0ryI/Gk03qZkWAxICZhW5VDW0giqdxBPTm+xwbAEJtpBaMH49KaBOy3UKZP+eJU+UqT8CLSAIuqhoE7p4XJdFyzcqXIukZFQ9GImsCSvFYyI6eukKfSsqiJ5Jz49aXPz+awrwrpmdxLL6Luoafh3CLkZWh1GVycN5t/pK2F6O905rwIPf4C2sRqaIy/AdZSNypkZM/jMEwm7gyy7EUI5mcgM73X2ma84DB4IdToMF2Vm1IHBitbzmqvyp8Ci1S6Pdmr8hivwVQHyBmmscqgjmvCw7z6trhOOVD7c1Mtk9nphxYkS9TLhBBovhhQHGxeVJJ19Q2cwHk48Um1KcqYY6akQuUh83Oi6JA7cauFKhZYN08Ei2wxHCU38I9f9X7LQ7276Op6WrzoVhogj1B2R2TzpaMkBasgBgIxkgOrdrs6Mq9N7O/JLGeW/9mUT79uBgastFTI=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM4PR11MB5488.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230022)(396003)(346002)(376002)(39860400002)(136003)(366004)(451199015)(6512007)(26005)(6506007)(53546011)(2616005)(186003)(31696002)(41300700001)(66556008)(5660300002)(66946007)(6666004)(8676002)(2906002)(8936002)(6486002)(316002)(66476007)(478600001)(86362001)(31686004)(36756003)(38100700002)(83380400001)(82960400001)(45980500001)(43740500002);
 DIR:OUT; SFP:1102; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?TFFiZkNQRHBqWGtySVR5L09WS1RUTU5uNGhKRC9aeENJc1VtMEVCZUgvT0tJ?=
 =?utf-8?B?TEJ0ZnF2b2ZmMUtWYUtENjJRdmJlNGN4SmZ1azZ0NzVIUGxMUjd4cldJb3Bp?=
 =?utf-8?B?RzJhSSswdllpVlF3YjBpNTEzckZ4UGIwRU5XbVNXY1NUMDJjNFNhUml5TGhk?=
 =?utf-8?B?ZWoydHIyOVZrQXkzWjRVU1BhY1RYWU1OMFhBaE1CU2hicnBvS3JTd28zLzZO?=
 =?utf-8?B?a1FkMjNpVDJEdzRRVXJKbUF0RFF5WTR6OGJQMGpsZEFCSll1VS9heUhrVWNQ?=
 =?utf-8?B?bkpRQkNncUZTa2Fsc3p3TklzbXVjTlpsaE9EcU9NZk4zLzIzTzdvemlwZFZR?=
 =?utf-8?B?TkdNSzdoQ0JudDAySksrSUd3WEVvN0ROMW1MRW90ak4yNzJxb3p2NlV1N2M2?=
 =?utf-8?B?N0ozMnZRYitvNkE5SDd2NjJvSnd5K0h5aG11VXBFaFpKTW9FYXkyUXFYR3Bz?=
 =?utf-8?B?clR5dFYxMXZQblZDZUpLVENZUXNQVnZtWjdlQkk2ZzFKQ1VJaEtWT1JXeWlJ?=
 =?utf-8?B?YVNFQ0pPRTYyTWVuRkJYZ2dhQWNPMnZiNGRHYnk3UkdYU2FRMklUTEV1OHY1?=
 =?utf-8?B?NXFIY1JvNGNiZEIxUU1jb3pmeUdXaW94c1JQTWgrR0tXdmUrZS9vVlRKUlFt?=
 =?utf-8?B?bHhJdmlrK2NFaU84WkZhQm5FTE5RL0dqU08vNk5SY2RRMkhlRml1clhsbnVW?=
 =?utf-8?B?SFVTeXpScTRoVnI5NFZjakI0VGFsbjY2OHNzOUhyd0VzajZQNHlJWDFRWXA0?=
 =?utf-8?B?N2tKanlrcE9ESU5ONk1Gdk11aERQRnhpUHRXN1d6ZDJ3SW1peWh1UlNXTUlt?=
 =?utf-8?B?bmJkOTMyWGJkcEt5REVzRnFueVFwcDlRUnJHbE80MHBUY3BKdHVqVXpweDBK?=
 =?utf-8?B?bllQdWZuVnI5TWNlSHNrN245NjFaZ0lMS2c0VUg3Q0JsbEh4Z2xwMlBydXov?=
 =?utf-8?B?THpZR2UzMnE3WTQzMmIzejhqazE4ZWx3cXFTM2RodVdTWEVkSHNNWkhIK3Ar?=
 =?utf-8?B?SEpDYlZ2a3o3a2loUkcxMmtYRU8yL1RpTElKc01CcTdHVzRJNkZpTFdDeTJH?=
 =?utf-8?B?cDdCQUJVbU81RXhrSEpYNjlIMDVYUi9mL2MwREthbTJsNmVqTFd3SERqdlJa?=
 =?utf-8?B?V2xJT0ZDSTUzQWlwMDBRRzJJd3ZudnFnMU1sSVphMmk3cXlTcGxMZmJmUlBM?=
 =?utf-8?B?YTZ2OEtjRHdFSUVXdm5MUW1OcStOOGRCSUxLblh3Qkxua0NZTHI2RGdtaVE5?=
 =?utf-8?B?alFxVHhwV2FCZ2wxQTZBc0VRTlZxSkQ3YTVjTDhpMG5TejUyelJ0VVo3ckN4?=
 =?utf-8?B?M01LRUEycGhNWnJHYnhsdVVzNERxWHlHRW9zWE55MER4ZWl1c3dQb1JTQk5o?=
 =?utf-8?B?RW8xYTFUUHJhZ0hQZDA4RC8yVFJnTXdDVmM2VlJaeEVrMzhLRThGSUxGQitH?=
 =?utf-8?B?WE9mVUp2NFlOYVZORHVOeVRiNVVQZXlaem1oTVcrYkNqWHpPajNCdVV2S1ZB?=
 =?utf-8?B?MmgrNGp2WWlQZjNlR2YwMUVESXV1TFpUSzlZTVlSRXFKOGdHL3ZMSHRpSllt?=
 =?utf-8?B?Q1BFVkxJaUxDS2lKWFdOZXRWOFk2QnB2cmxiajl2bEwzODhMbXVwdDUveEo0?=
 =?utf-8?B?VU52SC9HVS9jT0hPVHZUL1MxMmY0cCttd0lkcnkvV2w1bVNMc3dxSEJFTCtB?=
 =?utf-8?B?UldrYTN5SXlCS3VZR1FTenUrellMa3VFZ01yWnVwOERmTEZPZzFseG40R3BL?=
 =?utf-8?B?QmNhSENkVGZjbExSVWZRZGRwaFQxb0hoMXVmTXVOS3BsUVVsZFoxT2ZCKzBY?=
 =?utf-8?B?NG9wcHU5aFRtazgrbS85ZnN1bm5qZHVzNWZnVkVqNGdCUXR6K29vY0xOWFJ1?=
 =?utf-8?B?bVNrbFhGL0NvRU5MUDVqbTB0NFFHY2FwWDduSW4rTUpaOHhPZC9YMWNMdmo4?=
 =?utf-8?B?VnA1bXBFNlNJQldyek40dWl5NzJNazcvc0xjb09qUWpOWHdzOW55aktwVFJq?=
 =?utf-8?B?Um1mY2NEWDcxM0RKbzVRelNmRUlndmpOeHdaR0xpSGVpNFcycW84b3FYSk11?=
 =?utf-8?B?ajV3Vy9SRlNBMkxPd3dDbmpEZFJJK05KL2NTQncxVWdQKzVsTXZKSVZvNTNr?=
 =?utf-8?B?V05PSUpwWFhoTC9JRStuZVFrSXdsV1BSTFIzT2ZBaE52R1dta2tTRUR1c2U1?=
 =?utf-8?Q?a3NRNtrf8PVTzIJpJ6wrFH8=3D?=
X-MS-Exchange-CrossTenant-Network-Message-Id: aef36118-816b-40a6-48c3-08daad5f607d
X-MS-Exchange-CrossTenant-AuthSource: DM4PR11MB5488.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 13 Oct 2022 21:10:37.9918 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: TeDEwd2L/DKxmoGpiNeVV6CGJh+RG7IM8y+qv8A4xLL9wFcVuAf8MEwdY06rqklEx9+K+MqE5GViiar7e8w/svYSWqBMOkUzrNmXzzce8Kw=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DM4PR11MB7328
X-OriginatorOrg: intel.com
Subject: Re: [Intel-gfx] [PATCH v2 2/7] drm/i915/pxp: Make
 intel_pxp_is_enabled implicitly sort PXP-owning-GT
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



On 10/5/2022 9:38 PM, Alan Previn wrote:
> Make intel_pxp_is_enabled implicitly find the PXP-owning-GT.
> PXP feature support is a device-config flag. In preparation for MTL
> PXP control-context shall reside on of the two GT's.
> That said, update intel_pxp_is_enabled to take in i915 as its input
> and internally find the right gt to check if PXP is enabled so
> its transparent to callers of this functions.
>
> Signed-off-by: Alan Previn <alan.previn.teres.alexis@intel.com>
> ---
>   drivers/gpu/drm/i915/gem/i915_gem_context.c  |  2 +-
>   drivers/gpu/drm/i915/gem/i915_gem_create.c   |  2 +-
>   drivers/gpu/drm/i915/pxp/intel_pxp.c         | 27 ++++++++++++++++++--
>   drivers/gpu/drm/i915/pxp/intel_pxp.h         |  4 ++-
>   drivers/gpu/drm/i915/pxp/intel_pxp_cmd.c     |  2 +-
>   drivers/gpu/drm/i915/pxp/intel_pxp_debugfs.c |  2 +-
>   drivers/gpu/drm/i915/pxp/intel_pxp_irq.c     |  5 +++-
>   drivers/gpu/drm/i915/pxp/intel_pxp_pm.c      |  8 +++---
>   drivers/gpu/drm/i915/pxp/intel_pxp_tee.c     |  4 +--
>   9 files changed, 42 insertions(+), 14 deletions(-)
>
> diff --git a/drivers/gpu/drm/i915/gem/i915_gem_context.c b/drivers/gpu/drm/i915/gem/i915_gem_context.c
> index 0bcde53c50c6..df03c1c7feb9 100644
> --- a/drivers/gpu/drm/i915/gem/i915_gem_context.c
> +++ b/drivers/gpu/drm/i915/gem/i915_gem_context.c
> @@ -257,7 +257,7 @@ static int proto_context_set_protected(struct drm_i915_private *i915,
>   
>   	if (!protected) {
>   		pc->uses_protected_content = false;
> -	} else if (!intel_pxp_is_enabled(&to_gt(i915)->pxp)) {
> +	} else if (!intel_pxp_is_enabled(i915)) {
>   		ret = -ENODEV;
>   	} else if ((pc->user_flags & BIT(UCONTEXT_RECOVERABLE)) ||
>   		   !(pc->user_flags & BIT(UCONTEXT_BANNABLE))) {
> diff --git a/drivers/gpu/drm/i915/gem/i915_gem_create.c b/drivers/gpu/drm/i915/gem/i915_gem_create.c
> index 33673fe7ee0a..e44803f9bec4 100644
> --- a/drivers/gpu/drm/i915/gem/i915_gem_create.c
> +++ b/drivers/gpu/drm/i915/gem/i915_gem_create.c
> @@ -384,7 +384,7 @@ static int ext_set_protected(struct i915_user_extension __user *base, void *data
>   	if (ext.flags)
>   		return -EINVAL;
>   
> -	if (!intel_pxp_is_enabled(&to_gt(ext_data->i915)->pxp))
> +	if (!intel_pxp_is_enabled(ext_data->i915))
>   		return -ENODEV;
>   
>   	ext_data->flags |= I915_BO_PROTECTED;
> diff --git a/drivers/gpu/drm/i915/pxp/intel_pxp.c b/drivers/gpu/drm/i915/pxp/intel_pxp.c
> index a18dfeca919b..93e9bc383461 100644
> --- a/drivers/gpu/drm/i915/pxp/intel_pxp.c
> +++ b/drivers/gpu/drm/i915/pxp/intel_pxp.c
> @@ -9,6 +9,7 @@
>   #include "intel_pxp_tee.h"
>   #include "gem/i915_gem_context.h"
>   #include "gt/intel_context.h"
> +#include "gt/intel_gt.h"
>   #include "i915_drv.h"
>   
>   /**
> @@ -39,16 +40,38 @@
>    * performed via the mei_pxp component module.
>    */
>   
> +struct intel_gt *intel_pxp_get_owning_gt(struct drm_i915_private *i915)

This seems to only be used inside this file, so it should be static.

> +{
> +	struct intel_gt *gt = NULL;
> +	int i = 0;
> +
> +	for_each_gt(gt, i915, i) {
> +		if (gt && gt->pxptee_iface_owner)
> +			return gt;
> +	}
> +	return NULL;
> +}
> +
>   struct intel_gt *pxp_to_gt(const struct intel_pxp *pxp)
>   {
>   	return container_of(pxp, struct intel_gt, pxp);
>   }
>   
> -bool intel_pxp_is_enabled(const struct intel_pxp *pxp)
> +static bool _pxp_is_enabled(struct intel_pxp *pxp)

I believe this is going to be needed outside this file (more comments 
below, I'm going to refer to this as the per-gt checker).

>   {
>   	return pxp->ce;
>   }
>   
> +bool intel_pxp_is_enabled(struct drm_i915_private *i915)
> +{
> +	struct intel_gt *gt = intel_pxp_get_owning_gt(i915);
> +
> +	if (!gt)
> +		return false;
> +
> +	return _pxp_is_enabled(&gt->pxp);
> +}
> +
>   bool intel_pxp_is_active(const struct intel_pxp *pxp)
>   {
>   	return pxp->arb_is_valid;
> @@ -222,7 +245,7 @@ int intel_pxp_start(struct intel_pxp *pxp)
>   {
>   	int ret = 0;
>   
> -	if (!intel_pxp_is_enabled(pxp))
> +	if (!_pxp_is_enabled(pxp))
>   		return -ENODEV;
>   
>   	if (wait_for(pxp_component_bound(pxp), 250))
> diff --git a/drivers/gpu/drm/i915/pxp/intel_pxp.h b/drivers/gpu/drm/i915/pxp/intel_pxp.h
> index 2da309088c6d..e82154a147b9 100644
> --- a/drivers/gpu/drm/i915/pxp/intel_pxp.h
> +++ b/drivers/gpu/drm/i915/pxp/intel_pxp.h
> @@ -11,9 +11,11 @@
>   
>   struct intel_pxp;
>   struct drm_i915_gem_object;
> +struct drm_i915_private;
>   
>   struct intel_gt *pxp_to_gt(const struct intel_pxp *pxp);
> -bool intel_pxp_is_enabled(const struct intel_pxp *pxp);
> +struct intel_gt *intel_pxp_get_owning_gt(struct drm_i915_private *i915);
> +bool intel_pxp_is_enabled(struct drm_i915_private *i915);
>   bool intel_pxp_is_active(const struct intel_pxp *pxp);
>   
>   void intel_pxp_init(struct intel_pxp *pxp);
> diff --git a/drivers/gpu/drm/i915/pxp/intel_pxp_cmd.c b/drivers/gpu/drm/i915/pxp/intel_pxp_cmd.c
> index f41e45763d0d..1d409149c0e8 100644
> --- a/drivers/gpu/drm/i915/pxp/intel_pxp_cmd.c
> +++ b/drivers/gpu/drm/i915/pxp/intel_pxp_cmd.c
> @@ -99,7 +99,7 @@ int intel_pxp_terminate_session(struct intel_pxp *pxp, u32 id)
>   	u32 *cs;
>   	int err = 0;
>   
> -	if (!intel_pxp_is_enabled(pxp))
> +	if (!intel_pxp_is_enabled(pxp_to_gt(pxp)->i915))

This is a gt-specific function, so it should use the per-gt checker.

>   		return 0;
>   
>   	rq = i915_request_create(ce);
> diff --git a/drivers/gpu/drm/i915/pxp/intel_pxp_debugfs.c b/drivers/gpu/drm/i915/pxp/intel_pxp_debugfs.c
> index 7b37f061044d..907d3aba7a9c 100644
> --- a/drivers/gpu/drm/i915/pxp/intel_pxp_debugfs.c
> +++ b/drivers/gpu/drm/i915/pxp/intel_pxp_debugfs.c
> @@ -18,7 +18,7 @@ static int pxp_info_show(struct seq_file *m, void *data)
>   {
>   	struct intel_pxp *pxp = m->private;
>   	struct drm_printer p = drm_seq_file_printer(m);
> -	bool enabled = intel_pxp_is_enabled(pxp);
> +	bool enabled = intel_pxp_is_enabled(pxp_to_gt(pxp)->i915);

This is a gt-specific function, so it should use the per-gt checker.

>   
>   	if (!enabled) {
>   		drm_printf(&p, "pxp disabled\n");
> diff --git a/drivers/gpu/drm/i915/pxp/intel_pxp_irq.c b/drivers/gpu/drm/i915/pxp/intel_pxp_irq.c
> index c28be430718a..6f515c163d2f 100644
> --- a/drivers/gpu/drm/i915/pxp/intel_pxp_irq.c
> +++ b/drivers/gpu/drm/i915/pxp/intel_pxp_irq.c
> @@ -22,7 +22,10 @@ void intel_pxp_irq_handler(struct intel_pxp *pxp, u16 iir)
>   {
>   	struct intel_gt *gt = pxp_to_gt(pxp);
>   
> -	if (GEM_WARN_ON(!intel_pxp_is_enabled(pxp)))
> +	if (!gt->pxptee_iface_owner)
> +		return;

Do you need this? the if below should include this case.

> +
> +	if (GEM_WARN_ON(!intel_pxp_is_enabled(gt->i915)))
>   		return;
>   
>   	lockdep_assert_held(gt->irq_lock);
> diff --git a/drivers/gpu/drm/i915/pxp/intel_pxp_pm.c b/drivers/gpu/drm/i915/pxp/intel_pxp_pm.c
> index 6a7d4e2ee138..5f713ac5c3ce 100644
> --- a/drivers/gpu/drm/i915/pxp/intel_pxp_pm.c
> +++ b/drivers/gpu/drm/i915/pxp/intel_pxp_pm.c
> @@ -11,7 +11,7 @@
>   
>   void intel_pxp_suspend_prepare(struct intel_pxp *pxp)
>   {
> -	if (!intel_pxp_is_enabled(pxp))
> +	if (!intel_pxp_is_enabled(pxp_to_gt(pxp)->i915))
>   		return;
>   

This is called from a gt-specific function, so it should use the per-gt 
checker. Same for all the other suspend/resume calls.

>   	pxp->arb_is_valid = false;
> @@ -23,7 +23,7 @@ void intel_pxp_suspend(struct intel_pxp *pxp)
>   {
>   	intel_wakeref_t wakeref;
>   
> -	if (!intel_pxp_is_enabled(pxp))
> +	if (!intel_pxp_is_enabled(pxp_to_gt(pxp)->i915))
>   		return;
>   
>   	with_intel_runtime_pm(&pxp_to_gt(pxp)->i915->runtime_pm, wakeref) {
> @@ -34,7 +34,7 @@ void intel_pxp_suspend(struct intel_pxp *pxp)
>   
>   void intel_pxp_resume(struct intel_pxp *pxp)
>   {
> -	if (!intel_pxp_is_enabled(pxp))
> +	if (!intel_pxp_is_enabled(pxp_to_gt(pxp)->i915))
>   		return;
>   
>   	/*
> @@ -50,7 +50,7 @@ void intel_pxp_resume(struct intel_pxp *pxp)
>   
>   void intel_pxp_runtime_suspend(struct intel_pxp *pxp)
>   {
> -	if (!intel_pxp_is_enabled(pxp))
> +	if (!intel_pxp_is_enabled(pxp_to_gt(pxp)->i915))
>   		return;
>   
>   	pxp->arb_is_valid = false;
> diff --git a/drivers/gpu/drm/i915/pxp/intel_pxp_tee.c b/drivers/gpu/drm/i915/pxp/intel_pxp_tee.c
> index 052fd2f9a583..792a56edfde7 100644
> --- a/drivers/gpu/drm/i915/pxp/intel_pxp_tee.c
> +++ b/drivers/gpu/drm/i915/pxp/intel_pxp_tee.c
> @@ -152,7 +152,7 @@ static int i915_pxp_tee_component_bind(struct device *i915_kdev,
>   		return 0;
>   
>   	/* the component is required to fully start the PXP HW */
> -	if (intel_pxp_is_enabled(pxp))
> +	if (intel_pxp_is_enabled(i915))
>   		intel_pxp_init_hw(pxp);

This is now using the PXP from the root GT. I'd suggest to update 
i915_dev_to_pxp:

static inline struct intel_pxp *i915_dev_to_pxp(struct device *i915_kdev)
{
          struct drm_i915_private *i915 = kdev_to_i915(i915_kdev);
          struct intel_gt *gt = intel_pxp_get_owning_gt(i915);
          return &gt->pxp;
}

and then use the per-gt checker for pxp_enabled() with the pxp structure.
Same below with the unbind.

Daniele

>   
>   	intel_runtime_pm_put(&i915->runtime_pm, wakeref);
> @@ -167,7 +167,7 @@ static void i915_pxp_tee_component_unbind(struct device *i915_kdev,
>   	struct intel_pxp *pxp = i915_dev_to_pxp(i915_kdev);
>   	intel_wakeref_t wakeref;
>   
> -	if (intel_pxp_is_enabled(pxp))
> +	if (intel_pxp_is_enabled(i915))
>   		with_intel_runtime_pm_if_in_use(&i915->runtime_pm, wakeref)
>   			intel_pxp_fini_hw(pxp);
>   

