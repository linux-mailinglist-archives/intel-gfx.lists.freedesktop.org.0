Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (unknown [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 7D55C63E9E4
	for <lists+intel-gfx@lfdr.de>; Thu,  1 Dec 2022 07:25:03 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id E74E710E0F9;
	Thu,  1 Dec 2022 06:25:00 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga04.intel.com (mga04.intel.com [192.55.52.120])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 353AE10E0F9
 for <intel-gfx@lists.freedesktop.org>; Thu,  1 Dec 2022 06:24:57 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1669875897; x=1701411897;
 h=message-id:date:subject:to:references:from:in-reply-to:
 content-transfer-encoding:mime-version;
 bh=f4hTgKiX6Y74jTkV9OpXswPCxIXF1XyJjAaQhYe6iDo=;
 b=ik3tFoRASjpIx4jkLHZV1+4QZFF6Fz22I/Xj/7S8gvK3+PvxfNgcTAzY
 BIVCz9pre/7kIZCSiLKu1bmT9JNAp4pwdhl2VDGW7bJSnRywgb6OiFfJG
 a9kDqqgBT4MD9CkkH76ZHuoSPIHO2zW6qXESJhMmcRB3Yo5GfMVSQbap/
 4QNsEsw8paAs+c67zwXsx2G2vNYKsxV1xgRdwR44obKlU9tKp07zs6h9G
 XPNCNohFBOeZ5eH1ByiyyORAnjugADbDB+s1CUWs34p35XgnNG3g5lK0J
 DB8H0NyIa76hbajE7qPn9KwOSu3NlwygNHgrqWUgvgeQBkpMo7IbuZlOT Q==;
X-IronPort-AV: E=McAfee;i="6500,9779,10547"; a="314299908"
X-IronPort-AV: E=Sophos;i="5.96,207,1665471600"; d="scan'208";a="314299908"
Received: from fmsmga005.fm.intel.com ([10.253.24.32])
 by fmsmga104.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 30 Nov 2022 22:24:56 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6500,9779,10547"; a="973400535"
X-IronPort-AV: E=Sophos;i="5.96,207,1665471600"; d="scan'208";a="973400535"
Received: from orsmsx601.amr.corp.intel.com ([10.22.229.14])
 by fmsmga005.fm.intel.com with ESMTP; 30 Nov 2022 22:24:56 -0800
Received: from orsmsx612.amr.corp.intel.com (10.22.229.25) by
 ORSMSX601.amr.corp.intel.com (10.22.229.14) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.16; Wed, 30 Nov 2022 22:24:56 -0800
Received: from orsmsx601.amr.corp.intel.com (10.22.229.14) by
 ORSMSX612.amr.corp.intel.com (10.22.229.25) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.16; Wed, 30 Nov 2022 22:24:55 -0800
Received: from orsedg603.ED.cps.intel.com (10.7.248.4) by
 orsmsx601.amr.corp.intel.com (10.22.229.14) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.16 via Frontend Transport; Wed, 30 Nov 2022 22:24:55 -0800
Received: from NAM12-MW2-obe.outbound.protection.outlook.com (104.47.66.43) by
 edgegateway.intel.com (134.134.137.100) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.16; Wed, 30 Nov 2022 22:24:55 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=TtpCZ3XjgNO3n30HZTT3fZPFocCHmMdVkM7lNCihJltEfy/07WkfDkdmbKgTc+2P4qUf2H0pYuDImYvpyewzTHdd17loZkxOowb7JGfVnfcj3S7ve+83+hqGIIDWBSYlAn+9tSLGVBbUDcanmz7WRnbvT8QU2tcCBY3qWG3l0XEyzNH8wDa4IqVrU/SeQvHVpfkzMWlSS1u+XaU+CxApN5zVemQtdYrAYgkI1zgh9z+Ci0K0FIQMmfXaSrm2H+5FdfJ2NehwhIqh1U/HWHPypjkjDucvoeHlLyE/sx1Z8wzBjPjQs4K04TYoQvVT2kTP2DsFbHPLOc/xwNqlOH6MFA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=7gTgc5O7ty/BGOGTEezUykTOFbjMXBrA3lczA74Y7oQ=;
 b=PFfKfjGAd5aXO6fM4Xm7qH0cD+eHlnC+MmPWT92D0lqr8qG3oX1LAjMLyaWYf+pWV83sldQvBP7C7MMTdud/eAAMECGCq45tPzT/1xjdYhYwfPE3OiThJZnwpY1W/oC4CGsn1AMGDDB9MuXVvIP7B1ApvrtD2j15Er/WXibrWjhEZ7113g5wSUIYUfKFHSXvKjd7t54VTLX6ZwZ+pYjVAZ2UsgmyrhHSOhwDiiUVGpwGYhZUMLuDYs2PTInxSAlonlU3uTqswumrTSmqkUaWeEskFKBMqVFT/iPk5w1UFN7I0tJmMY5WgyZoUMJSwqhz9Rc7pVBizHdyk2dv1YCCyA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from DM4PR11MB5341.namprd11.prod.outlook.com (2603:10b6:5:390::22)
 by DS0PR11MB7310.namprd11.prod.outlook.com (2603:10b6:8:11d::11) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.5857.23; Thu, 1 Dec
 2022 06:24:54 +0000
Received: from DM4PR11MB5341.namprd11.prod.outlook.com
 ([fe80::21a6:81fa:3ed7:a486]) by DM4PR11MB5341.namprd11.prod.outlook.com
 ([fe80::21a6:81fa:3ed7:a486%9]) with mapi id 15.20.5857.023; Thu, 1 Dec 2022
 06:24:54 +0000
Message-ID: <692fde01-1107-1c5b-fc57-60f87be13a6e@intel.com>
Date: Thu, 1 Dec 2022 11:54:47 +0530
User-Agent: Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:102.0) Gecko/20100101
 Thunderbird/102.5.0
Content-Language: en-US
To: Ville Syrjala <ville.syrjala@linux.intel.com>,
 <intel-gfx@lists.freedesktop.org>
References: <20221123152638.20622-1-ville.syrjala@linux.intel.com>
 <20221123152638.20622-11-ville.syrjala@linux.intel.com>
From: "Nautiyal, Ankit K" <ankit.k.nautiyal@intel.com>
In-Reply-To: <20221123152638.20622-11-ville.syrjala@linux.intel.com>
Content-Type: text/plain; charset="UTF-8"; format=flowed
Content-Transfer-Encoding: 8bit
X-ClientProxiedBy: PN2PR01CA0232.INDPRD01.PROD.OUTLOOK.COM
 (2603:1096:c01:eb::10) To DM4PR11MB5341.namprd11.prod.outlook.com
 (2603:10b6:5:390::22)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: DM4PR11MB5341:EE_|DS0PR11MB7310:EE_
X-MS-Office365-Filtering-Correlation-Id: f73f6ff1-e923-4455-a32b-08dad364c2ba
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: vF4ADf3Q6hTiirJGM2h0IMplp2633w2OEqoEKktNLvnj1Mo6KCmomOVL3wOQsJEyXg9fJ23mFKYwS4R/WkFJ6bq0Qr+/D+l8y44lbHwdZVItea1IBq/mNNv9F1rZPn9+wFmd02+kOmcKTFK7CwfRfYVUCSzWxZcyqZIqHwbKdG9oDDaz4EhNVqs97ZSD1QMPBzVls/S/7TUuM5XVrDsTQR/dcOS/Ases0V26oyMzGCmA4nKX1waKs5MSOH9PlhkVaJCGjpgwRyCjC4kp7rs1uiMJFriE2vxOsyCt1RLZu6bIy3nQ73+JPjW+7j/lwUSi1Utn5L0hkXjowydTWmW/ArNjGrdAofVFVoJWvUO5tTLhGxUbKzdSrjosrvbCjowB+51qWC9nrNNUdWSMMPDn4I4zAJ/vgbaTBHLwVKLxcxmGlwuG8MAO7ilw7YpW6BESMKdaytYtFk3LnaOMIyOlHI1hacTYe5IBOQpRmomKhyB/Qa1Z4vs7zHGCLTTBeGGMYYaGJveTOdzUQtPsqDo79TIfg6FQEvXwg1zN9i3BRfZYbvH/3A4NjOFcv3W0NZAFbvqq4HaGnJFFAvqjrSVBgaTGkw/4xBJW5Hd7oC2b8XvYJD1fCEKphZRrj5nInLtqN5jTnGhzoCXu4jXQoKbYf6TnMlWE6HGe37Mw38F8RfoWdoQeIXW8NH01N2a61fCfvhk2adnY0G62Ms/OyUw00fQ8+EnGQzGAWYsDlAIoTAw=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM4PR11MB5341.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230022)(136003)(376002)(346002)(366004)(396003)(39860400002)(451199015)(6486002)(478600001)(55236004)(82960400001)(53546011)(186003)(66574015)(36756003)(38100700002)(2616005)(6512007)(6506007)(26005)(8936002)(5660300002)(6666004)(2906002)(316002)(41300700001)(31686004)(66476007)(8676002)(66946007)(66556008)(31696002)(86362001)(43740500002)(45980500001);
 DIR:OUT; SFP:1102; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?QmxQSUx5V0J6LzhYU1VlZHRJQXkzYXd6elQzY0Z5ZTY0N1hZSVhIZjJhbUJT?=
 =?utf-8?B?S3BqYnFxTzk0dnBYbFhxZ21xR29aZFh5V0xUdVlVU2UxQTVSeW50alZoV0Fz?=
 =?utf-8?B?UzBGLytlNkdKaGFXUUZBWVNRNElLMTZLcXU2VkhoTk5LYUU3ZnJyVDdob0ti?=
 =?utf-8?B?OFNpUUQ4TSt4Z05xU2tEakhnb2lvSklIQTlXaUhFTER0U1ZqOE5TRnFxTFJ2?=
 =?utf-8?B?SjNmSlIvUjRNcmhZbVVpcngzSXlRV1dDTmllaXBLYlFDYmZNanFKNGdYZEtJ?=
 =?utf-8?B?S2xGUWsrTU96dUJJN3JVVStCanRvNmlFcm1hUVBXSzFJU1lyWmFXUEU3dW1y?=
 =?utf-8?B?VkppMzZsdGdVcHhmemlYWlpoMk5OUmRlRDhFek41VFVucXNwVm0reE9tamND?=
 =?utf-8?B?dWplV1VYaVBHMmNjb0NqTHArWlRib3E0ZU1Takg3cmVXdmRXQWdXYkV4N0hZ?=
 =?utf-8?B?czdzKzhWdHZQRmh0azl2OXNRMGhIOGFGc1NIckJoVzhodWVPNUJydFZXeDRH?=
 =?utf-8?B?WUNvNW1rakM3czZORVNhMWJCajhtMzZzb016Qi9WNHJ2bEx6NGRQMHFQbVBs?=
 =?utf-8?B?V0RWYnd2MmhYQ1pyY3ZUMm1kL0poSWpMeHk4TmJlWDdHbzI0UGh4OHpGdjdG?=
 =?utf-8?B?OEMyY2lVdld4M1VMNUJGT2xSZURLdndBK2tCL21IYjZPcjZnbkxxVlI0OFp4?=
 =?utf-8?B?TDZ5eUhGcTNHekhpQXRaT05HUnA3UVYvMkU4SXVwK0xNdDF6UHk5ZVkrTytI?=
 =?utf-8?B?QTlQKzl4Q0pxWTFITTJpTzVQOW13Y2padXNmR1plVitiM3FMaHBzWmE4MkJG?=
 =?utf-8?B?dkRMV1gveWxXSDRuWm5tbkY3MU9GVDZtczlCVC9wQ3hJWWNUMVBhelcyT2p4?=
 =?utf-8?B?ek4zSDVkTy8wUVpGUENPeXlPK3VrSThrQW1kdnVuWnMvMFdsOUZOWjZXT2dp?=
 =?utf-8?B?aEI2cnBZUHUxNUo5cHpyU1pjRW1ud2pOY1BITFBnNnhSYkpkUS9xdE9TWFdB?=
 =?utf-8?B?OWhTS3A1bTJXTDlTd0RtcXZmR2duV2JOQlhjLzByZS9SR25TWHJ6djFVYit5?=
 =?utf-8?B?TjRibVRvSEJ5TG9nVHFuTHI5QVUyZE01R2ZRMFY3MWZlQXY4d2tYcy8zU1Vw?=
 =?utf-8?B?WTJLV2VUMlRPbThoM2tiU05mbXU3eGo2TW9iMEtNUWs1UEdxN1hPbExqNUgy?=
 =?utf-8?B?TEhGTG5XZ2NJcWxCUEhHT3dLdHZnREhJRkJPSFdMZGhNZTh2ZkU0UWQyMHMx?=
 =?utf-8?B?VmJvR283T2NFSC9yTG1ueGVSNEZ5MldpblZXTDdqQ0dSZjNzOGRxTXcyUVVM?=
 =?utf-8?B?bGxPemRNTTJiSSsxY1ZrZ3hYZElCUTJ4ZFhMSGdXaFFMYmhock1SUlRVdTA3?=
 =?utf-8?B?Vkk5T2JjeXlKVXNKdUZHTXJ5Y1ZRb2ZZYmZlTUVseUVDNHVGM0ZLV25ldGN2?=
 =?utf-8?B?d1YzZ2FvYitYZ0JNbWE4VVYwdTBwdTIwbmdrSUVHODZIcWpxWUV4UnNVc3dU?=
 =?utf-8?B?REdUT0dwZGVaMCs4ZDRRdThVVFp6YkZSVDlldHd4bDJ2c29adXlCemxKS1hY?=
 =?utf-8?B?YVNac0Rsd2YrdmJyNWt6VENHelZJN21ZU1Y3ODJ1S2FZWGNNMHE3dU95Rnh0?=
 =?utf-8?B?M0xMb1drZEVFclduaXY3RTdJU3dmYm42UlhqdzVRTVJ5Zkg0cnZpQm9XYVFD?=
 =?utf-8?B?dmNTQkFRMW03RkNZMXlzUVdrbFM5VVd3K3FSU21ZQUtIdVIya1hNQjlEWVd6?=
 =?utf-8?B?MDdwVWRab0FUVUd2bmtnUzI3dGlsWk5Mcmk1bXp2bmJpVExiaGJOT080UVJ3?=
 =?utf-8?B?Q0JaUXpJVFhaTFQvcXhyazlMZ21mMXM5ekNENVl6cmF5cmtwK1hNamtxc2t3?=
 =?utf-8?B?S3VobE1VOHMweDZMWEJEOFRQTTFjckpXTGV4YUtUTEhyMjZ5eSs0M1lJMVNF?=
 =?utf-8?B?UVZaZHhVNjdwcWdWRHBhdnJZOGI2bWwxTU9tVzNNRnpFZFRXUms0RnBubndS?=
 =?utf-8?B?Z3VVUkJwU0dHckxZNy9Nd2NrSDYyMkhObnpERkk2SlZxVExYaEQ0YU1qdXZO?=
 =?utf-8?B?RHpRdVJzNnViWnUwaVFyL2lIVG83QkttaHVXNWc1Yk1TeHhBNUVTV1VBbzhZ?=
 =?utf-8?B?M3hCcndYcTZYL0NNdjE4elpJZmQxZ0p6VGdwYkljSWZldGpSWk5pL0c0YTZX?=
 =?utf-8?B?Tmc9PQ==?=
X-MS-Exchange-CrossTenant-Network-Message-Id: f73f6ff1-e923-4455-a32b-08dad364c2ba
X-MS-Exchange-CrossTenant-AuthSource: DM4PR11MB5341.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 01 Dec 2022 06:24:54.6673 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: boxecTqH/MeK0++Lirk0UqzN/vsvBcAp+SftoddOenvRhE9iWNUYSVYnYIF85SBP+Fb2lxigNtHOOnRfvMBEhiP7KjRSvBvnt2FaRkbDmxI=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DS0PR11MB7310
X-OriginatorOrg: intel.com
Subject: Re: [Intel-gfx] [PATCH 10/13] drm/i915: Disable DSB usage
 specifically for LUTs
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

LGTM.

Reviewed-by: Ankit Nautiyal <ankit.k.nautiyal@intel.com>

On 11/23/2022 8:56 PM, Ville Syrjala wrote:
> From: Ville Syrjälä <ville.syrjala@linux.intel.com>
>
> The DSB has problem loading the LUTs at the moment. Some
> of that is due to the palette anti collision logic, some
> due to what seem real hw issues. Disable it the whole
> thing locally in the color management code for now.
>
> Note that we currently have this weird situation where on
> adl+ we load parts of the LUT with DSB and parts with mmio.
> That is due to the fact that only some parts of the LUT code
> are using the DSB register write functions (ivb_load_lut_ext*()),
> while the rest is using pure mmio (bdw_load_lut_10()). So now
> we'll go back to pure mmio temporarily, until the DSB issues
> get fixed (at which point we should be going for pure DSB).
>
> Signed-off-by: Ville Syrjälä <ville.syrjala@linux.intel.com>
> ---
>   drivers/gpu/drm/i915/display/intel_color.c | 3 +++
>   1 file changed, 3 insertions(+)
>
> diff --git a/drivers/gpu/drm/i915/display/intel_color.c b/drivers/gpu/drm/i915/display/intel_color.c
> index 2715f1b617e1..9978d21f1634 100644
> --- a/drivers/gpu/drm/i915/display/intel_color.c
> +++ b/drivers/gpu/drm/i915/display/intel_color.c
> @@ -1394,6 +1394,9 @@ void intel_color_prepare_commit(struct intel_crtc_state *crtc_state)
>   {
>   	struct intel_crtc *crtc = to_intel_crtc(crtc_state->uapi.crtc);
>   
> +	/* FIXME DSB has issues loading LUTs, disable it for now */
> +	return;
> +
>   	crtc_state->dsb = intel_dsb_prepare(crtc);
>   }
>   
