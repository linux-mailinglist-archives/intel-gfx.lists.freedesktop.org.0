Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 6246A3E9E16
	for <lists+intel-gfx@lfdr.de>; Thu, 12 Aug 2021 07:48:18 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 7341E6E093;
	Thu, 12 Aug 2021 05:48:14 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 66A3F6E093
 for <intel-gfx@lists.freedesktop.org>; Thu, 12 Aug 2021 05:48:12 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6200,9189,10073"; a="237311059"
X-IronPort-AV: E=Sophos;i="5.84,315,1620716400"; d="scan'208";a="237311059"
Received: from fmsmga003.fm.intel.com ([10.253.24.29])
 by fmsmga101.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 11 Aug 2021 22:48:11 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.84,315,1620716400"; d="scan'208";a="517307334"
Received: from orsmsx606.amr.corp.intel.com ([10.22.229.19])
 by FMSMGA003.fm.intel.com with ESMTP; 11 Aug 2021 22:48:11 -0700
Received: from orsmsx610.amr.corp.intel.com (10.22.229.23) by
 ORSMSX606.amr.corp.intel.com (10.22.229.19) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2242.10; Wed, 11 Aug 2021 22:48:11 -0700
Received: from orsmsx610.amr.corp.intel.com (10.22.229.23) by
 ORSMSX610.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2242.10; Wed, 11 Aug 2021 22:48:10 -0700
Received: from ORSEDG601.ED.cps.intel.com (10.7.248.6) by
 orsmsx610.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2242.10 via Frontend Transport; Wed, 11 Aug 2021 22:48:10 -0700
Received: from NAM11-CO1-obe.outbound.protection.outlook.com (104.47.56.168)
 by edgegateway.intel.com (134.134.137.102) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2242.10; Wed, 11 Aug 2021 22:48:10 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=D3EcWAQyRRQAbnA/vraLF/IE1x43rPnAXBLWreErY8K0pizYtloJfiSHqzyDE512enFO5Tx1sd1WUMeAoWHa+yDnK2TkM9uzuprldSL9RdRmJYYmCwBV0Hq+HY2dGvOi21eZw57Qsq5P26uMsK5GKLuTGUtkF/nMAaIApAhokVl8q0iytYcAbpRSrEsvLnTqrbD9wKGhANubzwI3l9ddXNNSxh0Nz74/64TJ6gPDMFzb3WpAs4bn/W5ljo5nTfhus4WnQ6Om6P4iDQIkBdLh+LYbG00CLhwvsrt5IqdaeQm+2NlDZnZPDJJiTKyYgPsETj5w0LfmN/MaEMKEuwJQtw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=EmO3jB6yTLpXiPKFCsxvTwD7KNV2TcCsuc9dR48ueZU=;
 b=bUHTU6lA97dwOzXySfgLtuZJji86GUxOZkDxE7AlzuYVgUsIsGr9iSH+CfFbo0FUaqNxbroeuVBuh+solGXsBBUer7iQ53iTDxVAVUWuVBU4BvIGG7UEJ3hgEy6y/CnwR44GjWK8kCI5hXgTwjQMungygaXNKuDfzKKRfpHhvRgJvATfL4Ivh/DqvdxRK6NcLBczhM6y3vDUew8kJV3y7RNtDZuvFvpOe4xpfZ++j8HGDgOfW60Bg5UvwzM12xbzXrGz+rKsvTT0xU6zciLWFHL4U2oWwJBDB/4kTK10Vt1GhKI3jF7rpp2K6UFOP6lNZUtxySXAdcvpueYOxcfzzA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=intel.onmicrosoft.com; 
 s=selector2-intel-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=EmO3jB6yTLpXiPKFCsxvTwD7KNV2TcCsuc9dR48ueZU=;
 b=D6pulk1d7GkdBfwiIvTFBIGq3orgfv0hXHGxGDQMEykyRV5d3YqqR2Mq+M3Wgd5B4a9dRYMzQ1kT0z5vM2/zDgjM8GJYVki5UMDX5V5dxQrTonTu27DHqJ6k7zuqlGwZcmJJWalbBwryRYN+ZCgPHXB55jrUaEsX37d7pRcdPKI=
Authentication-Results: lists.freedesktop.org; dkim=none (message not signed)
 header.d=none; lists.freedesktop.org;
 dmarc=none action=none header.from=intel.com;
Received: from DM4PR11MB5501.namprd11.prod.outlook.com (2603:10b6:5:39d::23)
 by DM6PR11MB4546.namprd11.prod.outlook.com (2603:10b6:5:2a7::24) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.4415.16; Thu, 12 Aug
 2021 05:48:07 +0000
Received: from DM4PR11MB5501.namprd11.prod.outlook.com
 ([fe80::35e6:f152:6236:6c61]) by DM4PR11MB5501.namprd11.prod.outlook.com
 ([fe80::35e6:f152:6236:6c61%4]) with mapi id 15.20.4415.015; Thu, 12 Aug 2021
 05:48:07 +0000
To: Swati Sharma <swati2.sharma@intel.com>, <intel-gfx@lists.freedesktop.org>
References: <20210726185156.27183-1-swati2.sharma@intel.com>
From: "Nautiyal, Ankit K" <ankit.k.nautiyal@intel.com>
Message-ID: <21a1a733-7954-2602-6ef0-febcdc6a8a6a@intel.com>
Date: Thu, 12 Aug 2021 11:17:58 +0530
User-Agent: Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:78.0) Gecko/20100101
 Firefox/78.0 Thunderbird/78.12.0
In-Reply-To: <20210726185156.27183-1-swati2.sharma@intel.com>
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Transfer-Encoding: 7bit
Content-Language: en-US
X-ClientProxiedBy: PN0PR01CA0034.INDPRD01.PROD.OUTLOOK.COM
 (2603:1096:c01:4e::15) To DM4PR11MB5501.namprd11.prod.outlook.com
 (2603:10b6:5:39d::23)
MIME-Version: 1.0
X-MS-Exchange-MessageSentRepresentingType: 1
Received: from [192.168.0.113] (49.207.223.26) by
 PN0PR01CA0034.INDPRD01.PROD.OUTLOOK.COM (2603:1096:c01:4e::15) with Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.4415.17 via Frontend Transport; Thu, 12 Aug 2021 05:48:06 +0000
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-Correlation-Id: c70986f6-afd1-4ab8-3c7d-08d95d54c2df
X-MS-TrafficTypeDiagnostic: DM6PR11MB4546:
X-MS-Exchange-Transport-Forked: True
X-Microsoft-Antispam-PRVS: <DM6PR11MB4546CABD5FDF7CECAFE5F384CEF99@DM6PR11MB4546.namprd11.prod.outlook.com>
X-MS-Oob-TLC-OOBClassifiers: OLM:203;
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: w/HroLxVxUrTGqXOtNTr5cA44dYyUotLfFyd8Je9L/KEQKfcTcbwnx7iQ4plcfaxoAGwP357e/aPeSMtDGZJwYatYZdqEmmNBk7oxX+17jrrw1/qi+hOQk/nukRlCZ3bvU/waXfR2R/NKVGpcMXuL6hYPhqnq3oa9KoiAT+iNYKdlpASVjXRQ8iRJawiC6KL6XhitLfRqfiLpYjluGXw+6oo+AnsBPCtarA1HqgkNy8cLNjfRlcvuA9WibA/BMcwaNYmsrZkukiOZzu7dOA43VZmHmwRKqXkElCD79sjvt0qZbVWjATewCwu7PNOVyFBbVl1rg6QYBy0NX6ec24jUcloK81TnQjGUzlj3AWTfQb7HgClvXvC4ncHHE6wKOfeVHu2o47wfagsZAifJLscqqg+A1lqSLpDyaPBNbfOsO3Dlm6S/XTATMiHWhebjnzgHRRBinVKJOv5hXtbYItpgTyC+wJ+VXPowSIIDwgg/m+s6ERtDHpytgbFysb4vWpvKjwLFeCZPyh2zP7MyWtPmic3QqnbWzlbbPOkSJ2/nvN9Zyi1JAxxYUU1LhAeF7yFae0L1jaG3u2s5lGz91f54VYCfDK0ovFtuTTkG3Ffkw5/oFEwX4PQ4rZYIr87wc7UWVmrvLYyZ8lf3TAmhaiZNTEfXZrld2JCpJXBhjo3IWjtjM3eNN7heN3aVVV2txbMT/hBEIH7JGzgeSHB/KK9+4QK2jsIQvomFTW8jtAq0/Y=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM4PR11MB5501.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(4636009)(376002)(346002)(396003)(366004)(39860400002)(136003)(26005)(66946007)(31696002)(66476007)(66556008)(8676002)(31686004)(8936002)(38100700002)(1006002)(6486002)(6666004)(186003)(478600001)(86362001)(956004)(2616005)(83380400001)(2906002)(36756003)(16576012)(316002)(53546011)(55236004)(5660300002)(966005)(43740500002)(45980500001);
 DIR:OUT; SFP:1102; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?TCtpVUdQZHluamJGZjQxQXBPdnJmMFFWRkw0N1YwVVZIK09jSkFmTU1XN0Vy?=
 =?utf-8?B?SURtZUppTzl1K1JiVy92ZkZRZjNJV21rWjNPajZWQzlsdmxoVktxek9BbUla?=
 =?utf-8?B?Vk05ZkdWc3JHNVorY3Bnd1BjZVNiK1U1ZmllZkxwZjRiV0hLS1c0bVJDSU9K?=
 =?utf-8?B?bXBaeWRWdDJrZTVSWXVlWjZZMU1JajJ0ajNpcXpxUGZ4cEF2blM3eFI3VjNz?=
 =?utf-8?B?VjFhSVd3RUpoSUtNdi9rRSt4QUN5ZE84OWloSU1pWVhKNGNkSUhWZlkrL21W?=
 =?utf-8?B?RCt1OGpyM2x6bmd2d2NlMWovMWFQZ1lrSlZWU0ZBNXRCVDM4UWs3ajRsUDFP?=
 =?utf-8?B?aTBWNDRGTGxhcTNqTkxBVExMVWZ4YzZlbnIwT21FeE5YdTQ2cXBCVlFGa3BG?=
 =?utf-8?B?aUNQeENZS1Aybm5wUzdUdlpiRnZDaFU2M0VDaG0vZ1JOZlJ1dC8yeW1HQ0FC?=
 =?utf-8?B?ZzIzOElKNGtLZVNrNEcyVG1BQnNRQWRDY2sxc3p5bERjQmk5NTdBMW4zeXJX?=
 =?utf-8?B?QTlVZjVIZkgwcG12ZjN6Ym1Zeno4VWNqL3R5RmJGbFVlZUVHYWtRcjIrVzhE?=
 =?utf-8?B?WjY2Z2xYbTZBYjExOGFiaXFEbFRqaXZ3TXpsN1ordG5MMndnWGJtUE40eHRj?=
 =?utf-8?B?VDd3SXNQaWxUR2RzSENubEtHU2xKWjdEak5EOGJ3ZmtwQXdUamJxSlU4djkv?=
 =?utf-8?B?dkQzblRqODdJZjNXdzFzVU9HK1JvaVZoczFkZ3Q2ZzB0UzRhbDB2bkhQNGRY?=
 =?utf-8?B?Uk9ZOVBxQ3JVYjQ3NndXNkVEbklsSUZSbW13YVA3TVk4VWZDemo0NnlNcTR5?=
 =?utf-8?B?Q1Ryc2VoQjFCcDdZVnkzQ2Z6N0UycEVzblVjM25XU3RlUURJWmszc2UrTEVK?=
 =?utf-8?B?NWp0cDRybHEvM1VweVdoWXhJYURrSXZSRXR2clZGT2RPRmJwRlk3QlNGOXVn?=
 =?utf-8?B?TXpkaEcrbGVEd2NTL0hQZ1lMbzI5L2RsQ1BUSlc5akYwN3Z6SkVCNHBhVzUr?=
 =?utf-8?B?YSs1Uno0S01PQWxsT2xHNEF1RC9tcm9jRm5QYlFvMm94c2tRUGhHZy9MRnpj?=
 =?utf-8?B?UlRvN2syM2ZXN3hTZ2dlQXpFUzVrNWwvWmszcHB1NjV1R0RUV1NBVDBEMmlX?=
 =?utf-8?B?c0RDdHRjbzJRcHd4TTFaelZQVHE5MUlIc1VlZlEySm1NY29RZklTWWt4VDFy?=
 =?utf-8?B?elVib0FrTDhvYStoTFZiZUJvQ3AxakVRU1JQODVzSE1wcjdZKzQ2eEFTc1hH?=
 =?utf-8?B?N0VGVmZHZ1pmVW56YWRHVW1tS1l2OU1GNnN2OUZ6WEovZEJsR2dkNTNzYy96?=
 =?utf-8?B?RFNXSnhhQ0RJaXlqdkc1dVZpKy84N0RiUkh2aWMxNWVTbXZtY29rcXJ6ZUli?=
 =?utf-8?B?SGJQLzcxK0RpYjJCUWhNQlY2M0Q0ZE15WkV6N2pNTjFrU3dBRW1XdTRES245?=
 =?utf-8?B?dzViYVE0Q2FZOHNOc1JWZWhOVmxNUEVxTzR5aTBKaGk1blo1a2pVMHoycGVM?=
 =?utf-8?B?Mk9Hd2NhRmozWlhiaGVvWUFqZWJrV0VENndnWWpGN2dCZlB1SDdHUHp2bUZw?=
 =?utf-8?B?RWY2TkdjeHNuUGVUK243Uk53dEx6eXhtaGVSeUxBN1ZpK3U0eGdSOWhLV3pY?=
 =?utf-8?B?SDltcFN6VTFwTE9uK3NTT3pNZVBWUjAwdU5hV3FtRkhCcXpzNitSZ3lyNmR1?=
 =?utf-8?B?b1hpRlBkZnZKV1l0YUEwTVVSc0dmZ1AydURjQVloQUVJSGhhK3JYemhjbnI3?=
 =?utf-8?Q?zyH3nbzLWk6yrFikvnPUlUAmIf0IYhLlV3XB+9/?=
X-MS-Exchange-CrossTenant-Network-Message-Id: c70986f6-afd1-4ab8-3c7d-08d95d54c2df
X-MS-Exchange-CrossTenant-AuthSource: DM4PR11MB5501.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 12 Aug 2021 05:48:07.8577 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: UJIMTH+zgTe4u/Pg707y08GZb9yBwU14yZC7pDDlolaTPqbm+/AG1Lv2iNOvpl5TESthKXodsCKQY/aZYsLVyeGCaTaufqyEUgpDSJSGa4g=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DM6PR11MB4546
X-OriginatorOrg: intel.com
Subject: Re: [Intel-gfx] [PATCH] drm/i915/display: Drop redundant debug print
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

Patch looks good to me.

I think we must add fixes tag with the below commit:

https://cgit.freedesktop.org/drm-tip/commit/?id=9488a030ac91447ea186ca3b7ec5c72ff03bc202

Reviewed-by: Ankit Nautiyal <ankit.k.nautiyal@intel.com>

On 7/27/2021 12:21 AM, Swati Sharma wrote:
> drm_dp_dpcd_read/write already has debug error message.
> Drop redundant error messages which gives false
> status even if correct value is read in drm_dp_dpcd_read().
>
> Signed-off-by: Swati Sharma <swati2.sharma@intel.com>
> ---
>   drivers/gpu/drm/i915/display/intel_dp.c | 8 ++------
>   1 file changed, 2 insertions(+), 6 deletions(-)
>
> diff --git a/drivers/gpu/drm/i915/display/intel_dp.c b/drivers/gpu/drm/i915/display/intel_dp.c
> index c386ef8eb200..5c84f51ad41d 100644
> --- a/drivers/gpu/drm/i915/display/intel_dp.c
> +++ b/drivers/gpu/drm/i915/display/intel_dp.c
> @@ -3871,16 +3871,12 @@ static void intel_dp_check_link_service_irq(struct intel_dp *intel_dp)
>   		return;
>   
>   	if (drm_dp_dpcd_readb(&intel_dp->aux,
> -			      DP_LINK_SERVICE_IRQ_VECTOR_ESI0, &val) != 1 || !val) {
> -		drm_dbg_kms(&i915->drm, "Error in reading link service irq vector\n");
> +			      DP_LINK_SERVICE_IRQ_VECTOR_ESI0, &val) != 1 || !val)
>   		return;
> -	}
>   
>   	if (drm_dp_dpcd_writeb(&intel_dp->aux,
> -			       DP_LINK_SERVICE_IRQ_VECTOR_ESI0, val) != 1) {
> -		drm_dbg_kms(&i915->drm, "Error in writing link service irq vector\n");
> +			       DP_LINK_SERVICE_IRQ_VECTOR_ESI0, val) != 1)
>   		return;
> -	}
>   
>   	if (val & HDMI_LINK_STATUS_CHANGED)
>   		intel_dp_handle_hdmi_link_status_change(intel_dp);
