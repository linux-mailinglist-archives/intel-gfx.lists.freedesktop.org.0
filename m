Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id F40F13FFDB4
	for <lists+intel-gfx@lfdr.de>; Fri,  3 Sep 2021 11:59:57 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 153136E86C;
	Fri,  3 Sep 2021 09:59:56 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga12.intel.com (mga12.intel.com [192.55.52.136])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 823CC6E86C
 for <intel-gfx@lists.freedesktop.org>; Fri,  3 Sep 2021 09:59:54 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6200,9189,10095"; a="198925328"
X-IronPort-AV: E=Sophos;i="5.85,265,1624345200"; d="scan'208";a="198925328"
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
 by fmsmga106.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 03 Sep 2021 02:59:54 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.85,265,1624345200"; d="scan'208";a="603005977"
Received: from fmsmsx605.amr.corp.intel.com ([10.18.126.85])
 by fmsmga001.fm.intel.com with ESMTP; 03 Sep 2021 02:59:54 -0700
Received: from fmsmsx611.amr.corp.intel.com (10.18.126.91) by
 fmsmsx605.amr.corp.intel.com (10.18.126.85) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2242.12; Fri, 3 Sep 2021 02:59:53 -0700
Received: from FMSEDG603.ED.cps.intel.com (10.1.192.133) by
 fmsmsx611.amr.corp.intel.com (10.18.126.91) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2242.12 via Frontend Transport; Fri, 3 Sep 2021 02:59:53 -0700
Received: from NAM04-MW2-obe.outbound.protection.outlook.com (104.47.73.174)
 by edgegateway.intel.com (192.55.55.68) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2242.10; Fri, 3 Sep 2021 02:59:53 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=lajzap68KYlNo4KGyfmmCs0bgYNwtTre7xLjrg49114Zt2A0L46VRCpYYChJSvyfhSmy6pron1vEaP/G9HbE7TCcrZaaxMYVJL0yioh/Ocab6relRuXpYz6U6wrhsB/c+xXIL8VljZZCJIyvWjBkYjKD/LLxKOWc91tDNnxWgpk7OWGWeEfWnWW+tys5Pe1U1EnFrZnNu924WpZgf68VChwVY3kn/yM3946jXatnXYh2yoogjJAsfrRh4vkTkfzl/h43UhQbOm3xYywIcURo+iJ0nhp5+h2/EE9jcCTc8NTJOi/0yX1I0v/8pf6cRkTai5L3rVitlJAKymuCSZZp0Q==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version; 
 bh=NR3epDwB9omw3IEpRbrRgG4/oDUkMKNqTVTkdmSiY38=;
 b=T1ce817no3X3XP3hqEM8SkySDb3aoCI2gBZuY28bx+opHxFUNXgkE437DK5eeRSCzqA9lEcupSC2xCu9WmP7BGlliiHES9+fKrg93J/Q95mt2ki+9jur1cPxKaMBd5LDHvRHb7jIPBDjQTdyvnXBviCyyaOFdi0jyRDNG/+H6wM4/iokF1WT5hxQzIhsR8hAOtxjdzPIAIf/LCnNtGF4ku78mGt5DfEo/AfnL20+oble8As8W4m49mkv/UqthwWVImKLcAi37du6vBydJ3YGGHpaVC0sfM7/gVuaXwMbJV1VyiGTp4Gsm0kE88GW3quT0BCResv7aX1vcth4akKYcg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=intel.onmicrosoft.com; 
 s=selector2-intel-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=NR3epDwB9omw3IEpRbrRgG4/oDUkMKNqTVTkdmSiY38=;
 b=JFXZQsmv15PPKg8SjT1/k3v0ek1cUMLFSszaphCbBverydIaokAuB2tD0pvFj+Nom6Ar1k4BForR5f3UBMZQpdT0RaiYBDN0Se6OcHpNtjkKJa349w3UpEMFtI7o6Nh3rX7tGulqjJFkJ2wH+8Y/vI+fYHsszI25UKwICefp44o=
Authentication-Results: intel.com; dkim=none (message not signed)
 header.d=none;intel.com; dmarc=none action=none header.from=intel.com;
Received: from DM4PR11MB5501.namprd11.prod.outlook.com (2603:10b6:5:39d::23)
 by DM5PR11MB1643.namprd11.prod.outlook.com (2603:10b6:4:b::16) with Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.4478.22; Fri, 3 Sep 2021 09:59:52 +0000
Received: from DM4PR11MB5501.namprd11.prod.outlook.com
 ([fe80::389d:c727:c71d:d869]) by DM4PR11MB5501.namprd11.prod.outlook.com
 ([fe80::389d:c727:c71d:d869%3]) with mapi id 15.20.4457.024; Fri, 3 Sep 2021
 09:59:51 +0000
To: Jani Nikula <jani.nikula@intel.com>, <intel-gfx@lists.freedesktop.org>
CC: <jose.souza@intel.com>
References: <cover.1630512523.git.jani.nikula@intel.com>
 <8c5f723e0b2d8ffd6f47068edf710947b45843be.1630512523.git.jani.nikula@intel.com>
From: "Nautiyal, Ankit K" <ankit.k.nautiyal@intel.com>
Message-ID: <42ae235a-69e6-6b04-1355-469b1adc7d5a@intel.com>
Date: Fri, 3 Sep 2021 15:29:42 +0530
User-Agent: Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:78.0) Gecko/20100101
 Firefox/78.0 Thunderbird/78.13.0
In-Reply-To: <8c5f723e0b2d8ffd6f47068edf710947b45843be.1630512523.git.jani.nikula@intel.com>
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Transfer-Encoding: 8bit
Content-Language: en-US
X-ClientProxiedBy: BM1PR01CA0096.INDPRD01.PROD.OUTLOOK.COM (2603:1096:b00::12)
 To DM4PR11MB5501.namprd11.prod.outlook.com
 (2603:10b6:5:39d::23)
MIME-Version: 1.0
X-MS-Exchange-MessageSentRepresentingType: 1
Received: from [192.168.0.113] (49.207.223.26) by
 BM1PR01CA0096.INDPRD01.PROD.OUTLOOK.COM (2603:1096:b00::12) with Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.4478.17 via Frontend Transport; Fri, 3 Sep 2021 09:59:50 +0000
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-Correlation-Id: 9cb51008-9c7f-4e75-a99c-08d96ec192a7
X-MS-TrafficTypeDiagnostic: DM5PR11MB1643:
X-LD-Processed: 46c98d88-e344-4ed4-8496-4ed7712e255d,ExtAddr
X-MS-Exchange-Transport-Forked: True
X-Microsoft-Antispam-PRVS: <DM5PR11MB16431A8B2EF4B9F044FC5D2CCECF9@DM5PR11MB1643.namprd11.prod.outlook.com>
X-MS-Oob-TLC-OOBClassifiers: OLM:1091;
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: h45Vm9JIPMU/uyrOuUYrt9STXw8iXCTw6kx+Y9kjJO5dTwADRZFzEp9gmaFXTekbjbP8s0MS9reFEIEa6yzMk5UL815OyeIAOUU8idKUH3EHbwJJGIwjeHF2V+tYmZfAjbc5VDU90oHUZQo+w2Y0c+GwCnlurvbQgsNfk0BYPoF5QU1WCTmsLZu5n1s0EkN590GqzQwhJzbVNHNtTU4q/IntP36UdXSRK5fV8SYSunclpjYm2usWpmL1x/qFsrif+I2caZ6Oe+w2EmRDBlzdLMGN/c1l8NQf01YJTdfaLO/Jvaqo7k8/qKuX0uu1ZjiWcNvkVaIAEvNDlBO23Awp8rCxhXmYIBO2DjYB7Tqix6FwfgFU9xZnBFrpwuYirSsXTUTUHnMTRQ1oLYrLP0Sf/u7fd78WHe4Dun9AAQDXFfhgnAEpnMRhyy5PaPJDG6EtO1ieJivPLdUFIEwACebsQ1Liomvv5PwH7RFoPOjy6RK5QbI803nFdpSBGyr+rwOko4kK6+jc00UbgFVsRAxnTp02zDhuzL2sGIp4sebp3o5w2C9BvClrPRt0/dtzSGHY92+EtRjvWNvn9EMixWYKwMUtASLos0kaHjjeEaVKmLDFjhL9SNgNCaKdbd+y29xUbRZ6iZoNWkmlLpONvI9zQDA7KCzjq1sWHjk2mjjGb+lU4s2AJ36sDZ9Iau/gkOf5amamNNB1cmdiPraf2MO4DzG6FPkRn5nW4u2F4t+hi3SIIxo0SUHnoJ1yI/tPrlna
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM4PR11MB5501.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(4636009)(136003)(346002)(366004)(396003)(376002)(39860400002)(38100700002)(1006002)(6666004)(107886003)(55236004)(186003)(53546011)(5660300002)(26005)(478600001)(83380400001)(66556008)(66476007)(36756003)(4326008)(8936002)(2616005)(66946007)(8676002)(956004)(31686004)(2906002)(31696002)(6486002)(86362001)(16576012)(316002)(43740500002)(45980500001);
 DIR:OUT; SFP:1102; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?N3ZnaGtIOVVVSVFQOWcrNm56a1BTaVRoUmFRSkxvbGVLVEl4SEVEeHpKU1dl?=
 =?utf-8?B?NFpzcXphOURIaUVnQ09wQmRoRmhmaG11dm9pWlNMQlNwRDU4UVJIM3VHTnk4?=
 =?utf-8?B?K3JVTHZseTBIeFR5bzNSQ2JmdWxvbTQzMHo0dkg3aXBnamRaTUhKM1FPaUVl?=
 =?utf-8?B?TU1UYWtPN0hyOHM0OFp3N0JKdFlZZEN1VHZEMFl0Nm9ORG1XbmxtUmx2UG12?=
 =?utf-8?B?Szl2ditqR0EzV2FvMTl2Z3JMVnNnRjdCczNmMStJODFvbzc0MjZCRk1NZTV4?=
 =?utf-8?B?ZDYxam5FYTNBVWM5TGljMlFpbUJBMmhoZExHQTZjM3VzdE1FSjhTZ3diclVo?=
 =?utf-8?B?bnE2R3UxU2lWTkxOWVcyN014cVFSSVVxU2FYQ0N3ZS8rcUtpZTVya0k2eHlq?=
 =?utf-8?B?ZFpwQnMrOTBJZHJrd3p5cUpLdXptWVptV2g1RHBHb21oRnVYUzBkV2J0b0Ix?=
 =?utf-8?B?NFRhUVF5dFRtbngwaDlkUTZ0aHpzT05Yczk4bWcvQmJIOTd6dkdhbEwwRGJz?=
 =?utf-8?B?WGsvckRWTWdpSXpWY0hNclFsclFZOHNJUkw2b1NEQ3gzdm01YnBpTUNYTG9m?=
 =?utf-8?B?WHJlaWRyOHZSMEdKTC90cHVKRmg2WjlTeXQ4eldhWExleU5QUXhMU1R1Qlc1?=
 =?utf-8?B?Sk5HYXBUQVk0VG5od1FhZnhvSVNhWnlMT0EvSTlhMFFwWld1U2hUOW1GM3Vu?=
 =?utf-8?B?M3lHTkQwQWx2djhzNDlsR3g1RVZtN1NRc09WdDgxSXBzeUlHWjJYNFpzZVg5?=
 =?utf-8?B?bjk3VldmeFVuVHN3Tmx6dDdlU0taMUpKVm04Y05mT2w3czVMcDc3Qk9UZTdR?=
 =?utf-8?B?TnJSdTVMaHVZc3NpdklHV1Z1MjNEMjZuR0M5Sk56WVlkL0NwNWw5ZnpCUFkr?=
 =?utf-8?B?YW9MbkxlRTR5MTJvNmNtYUo1Z1pGZVZSSm1PRjBGTVkvZ3d6UzEwYjJ3REcy?=
 =?utf-8?B?Z1pVTXdOSEM3amhlTzF5OUlpSUVYTVR5Q0l2d1hGaFgxZkR5YkVxSDZJeStk?=
 =?utf-8?B?YnRSYnZadms0SGpSOSthVTJCY2R5S3dKV1BxWmNMVllpTHRBNjRDTVV6SWNv?=
 =?utf-8?B?S1lNVm1UcStML3gwMkNScnVCREVsTEdWWjk4d21YZTkxM05FR2E4VVMreSsx?=
 =?utf-8?B?N0JsS21EQ0VIY3ZUd1pFNXpXUDZZNm5IYTk0RElWTFVlTVBiUkRCQmxSdDdr?=
 =?utf-8?B?L2R3TEFEREo0TldiUHQ5MFlJVUlVcWkvRTRHVk0vZng2NVphTjFOdDdnME16?=
 =?utf-8?B?SXhzVDlpUkpWM1U1eEovQ0NWVkdMTzdSZ2NNUE5JTHFoZUVwSGdCcE9mcjND?=
 =?utf-8?B?eTdpY1FOdU1BSFFHVmFFRmNMa1plRUNvTDU5bldVTDEyQXFyaE84UGozcThv?=
 =?utf-8?B?VVllK0NENEppdUpwbjlIUWRsRDZ3djlFdzF6QXJ0SmtMaDZ2TXR5UUFEOUY0?=
 =?utf-8?B?emticHBrVWxxWlBJTkxuL2hWY3ovOW9RMmw3aUZ3eDVNOFlaQVhhcDdwb21w?=
 =?utf-8?B?MG41Qmx4WVkydnE4L1Bwa1J0N0lYb20zOWRXTlpoaFowcW04elRTNTJoSlVG?=
 =?utf-8?B?dHhtcktOb2RPcDg1WFJkQ09UenovWU5GQVVpQ1F3ajFFeE5pWVg5Z0JJdjRU?=
 =?utf-8?B?ZFZHYzI4TWRBUU1vbGJvdE1WUUpnK0wwNmZPUEhIb2pPeGt2ZEZHWXNha1lD?=
 =?utf-8?B?NE1zays1UTkvMTNGcWRKbjFCVGg4cGFXSGJzVmJ4WGlpZUZMbWNqeDFjZTlq?=
 =?utf-8?Q?BsHdHhZO98EDiol6SbPBEHEhLQpM5BWRWQWRdnH?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 9cb51008-9c7f-4e75-a99c-08d96ec192a7
X-MS-Exchange-CrossTenant-AuthSource: DM4PR11MB5501.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 03 Sep 2021 09:59:51.9025 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: gULUCS18VleIx9GUiYUokFmQBmDqDqvFIa1Pcww9v9mFXSL+RnyaWj+PXPT3sIj9Mm1uGQx1xZ4AtvUV3I6PDewEE7aiEUKD5xt6/0H27pw=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DM5PR11MB1643
X-OriginatorOrg: intel.com
Subject: Re: [Intel-gfx] [PATCH v2 5/7] drm/i915/bios: move ddc pin mapping
 code next to ddc pin sanitize
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

On 9/1/2021 9:40 PM, Jani Nikula wrote:
> Move code around to avoid a forward declaration in the future.
>
> Cc: José Roberto de Souza <jose.souza@intel.com>
> Signed-off-by: Jani Nikula <jani.nikula@intel.com>
> ---
>   drivers/gpu/drm/i915/display/intel_bios.c | 154 +++++++++++-----------
>   1 file changed, 77 insertions(+), 77 deletions(-)
>
> diff --git a/drivers/gpu/drm/i915/display/intel_bios.c b/drivers/gpu/drm/i915/display/intel_bios.c
> index 69d7da66f168..b4113506b3b8 100644
> --- a/drivers/gpu/drm/i915/display/intel_bios.c
> +++ b/drivers/gpu/drm/i915/display/intel_bios.c
> @@ -1501,6 +1501,83 @@ static u8 translate_iboost(u8 val)
>   	return mapping[val];
>   }
>   
> +static const u8 cnp_ddc_pin_map[] = {
> +	[0] = 0, /* N/A */
> +	[DDC_BUS_DDI_B] = GMBUS_PIN_1_BXT,
> +	[DDC_BUS_DDI_C] = GMBUS_PIN_2_BXT,
> +	[DDC_BUS_DDI_D] = GMBUS_PIN_4_CNP, /* sic */
> +	[DDC_BUS_DDI_F] = GMBUS_PIN_3_BXT, /* sic */
> +};
> +
> +static const u8 icp_ddc_pin_map[] = {
> +	[ICL_DDC_BUS_DDI_A] = GMBUS_PIN_1_BXT,
> +	[ICL_DDC_BUS_DDI_B] = GMBUS_PIN_2_BXT,
> +	[TGL_DDC_BUS_DDI_C] = GMBUS_PIN_3_BXT,
> +	[ICL_DDC_BUS_PORT_1] = GMBUS_PIN_9_TC1_ICP,
> +	[ICL_DDC_BUS_PORT_2] = GMBUS_PIN_10_TC2_ICP,
> +	[ICL_DDC_BUS_PORT_3] = GMBUS_PIN_11_TC3_ICP,
> +	[ICL_DDC_BUS_PORT_4] = GMBUS_PIN_12_TC4_ICP,
> +	[TGL_DDC_BUS_PORT_5] = GMBUS_PIN_13_TC5_TGP,
> +	[TGL_DDC_BUS_PORT_6] = GMBUS_PIN_14_TC6_TGP,
> +};
> +
> +static const u8 rkl_pch_tgp_ddc_pin_map[] = {
> +	[ICL_DDC_BUS_DDI_A] = GMBUS_PIN_1_BXT,
> +	[ICL_DDC_BUS_DDI_B] = GMBUS_PIN_2_BXT,
> +	[RKL_DDC_BUS_DDI_D] = GMBUS_PIN_9_TC1_ICP,
> +	[RKL_DDC_BUS_DDI_E] = GMBUS_PIN_10_TC2_ICP,
> +};
> +
> +static const u8 adls_ddc_pin_map[] = {
> +	[ICL_DDC_BUS_DDI_A] = GMBUS_PIN_1_BXT,
> +	[ADLS_DDC_BUS_PORT_TC1] = GMBUS_PIN_9_TC1_ICP,
> +	[ADLS_DDC_BUS_PORT_TC2] = GMBUS_PIN_10_TC2_ICP,
> +	[ADLS_DDC_BUS_PORT_TC3] = GMBUS_PIN_11_TC3_ICP,
> +	[ADLS_DDC_BUS_PORT_TC4] = GMBUS_PIN_12_TC4_ICP,
> +};
> +
> +static const u8 gen9bc_tgp_ddc_pin_map[] = {
> +	[DDC_BUS_DDI_B] = GMBUS_PIN_2_BXT,
> +	[DDC_BUS_DDI_C] = GMBUS_PIN_9_TC1_ICP,
> +	[DDC_BUS_DDI_D] = GMBUS_PIN_10_TC2_ICP,
> +};
> +
> +static u8 map_ddc_pin(struct drm_i915_private *i915, u8 vbt_pin)
> +{
> +	const u8 *ddc_pin_map;
> +	int n_entries;
> +
> +	if (IS_ALDERLAKE_S(i915)) {
> +		ddc_pin_map = adls_ddc_pin_map;
> +		n_entries = ARRAY_SIZE(adls_ddc_pin_map);
> +	} else if (INTEL_PCH_TYPE(i915) >= PCH_DG1) {
> +		return vbt_pin;
> +	} else if (IS_ROCKETLAKE(i915) && INTEL_PCH_TYPE(i915) == PCH_TGP) {
> +		ddc_pin_map = rkl_pch_tgp_ddc_pin_map;
> +		n_entries = ARRAY_SIZE(rkl_pch_tgp_ddc_pin_map);
> +	} else if (HAS_PCH_TGP(i915) && DISPLAY_VER(i915) == 9) {
> +		ddc_pin_map = gen9bc_tgp_ddc_pin_map;
> +		n_entries = ARRAY_SIZE(gen9bc_tgp_ddc_pin_map);
> +	} else if (INTEL_PCH_TYPE(i915) >= PCH_ICP) {
> +		ddc_pin_map = icp_ddc_pin_map;
> +		n_entries = ARRAY_SIZE(icp_ddc_pin_map);
> +	} else if (HAS_PCH_CNP(i915)) {
> +		ddc_pin_map = cnp_ddc_pin_map;
> +		n_entries = ARRAY_SIZE(cnp_ddc_pin_map);
> +	} else {
> +		/* Assuming direct map */
> +		return vbt_pin;
> +	}
> +
> +	if (vbt_pin < n_entries && ddc_pin_map[vbt_pin] != 0)
> +		return ddc_pin_map[vbt_pin];
> +
> +	drm_dbg_kms(&i915->drm,
> +		    "Ignoring alternate pin: VBT claims DDC pin %d, which is not valid for this platform\n",
> +		    vbt_pin);
> +	return 0;
> +}
> +
>   static enum port get_port_by_ddc_pin(struct drm_i915_private *i915, u8 ddc_pin)
>   {
>   	const struct ddi_vbt_port_info *info;
> @@ -1606,83 +1683,6 @@ static void sanitize_aux_ch(struct intel_bios_encoder_data *devdata,
>   	child->aux_channel = 0;
>   }
>   
> -static const u8 cnp_ddc_pin_map[] = {
> -	[0] = 0, /* N/A */
> -	[DDC_BUS_DDI_B] = GMBUS_PIN_1_BXT,
> -	[DDC_BUS_DDI_C] = GMBUS_PIN_2_BXT,
> -	[DDC_BUS_DDI_D] = GMBUS_PIN_4_CNP, /* sic */
> -	[DDC_BUS_DDI_F] = GMBUS_PIN_3_BXT, /* sic */
> -};
> -
> -static const u8 icp_ddc_pin_map[] = {
> -	[ICL_DDC_BUS_DDI_A] = GMBUS_PIN_1_BXT,
> -	[ICL_DDC_BUS_DDI_B] = GMBUS_PIN_2_BXT,
> -	[TGL_DDC_BUS_DDI_C] = GMBUS_PIN_3_BXT,
> -	[ICL_DDC_BUS_PORT_1] = GMBUS_PIN_9_TC1_ICP,
> -	[ICL_DDC_BUS_PORT_2] = GMBUS_PIN_10_TC2_ICP,
> -	[ICL_DDC_BUS_PORT_3] = GMBUS_PIN_11_TC3_ICP,
> -	[ICL_DDC_BUS_PORT_4] = GMBUS_PIN_12_TC4_ICP,
> -	[TGL_DDC_BUS_PORT_5] = GMBUS_PIN_13_TC5_TGP,
> -	[TGL_DDC_BUS_PORT_6] = GMBUS_PIN_14_TC6_TGP,
> -};
> -
> -static const u8 rkl_pch_tgp_ddc_pin_map[] = {
> -	[ICL_DDC_BUS_DDI_A] = GMBUS_PIN_1_BXT,
> -	[ICL_DDC_BUS_DDI_B] = GMBUS_PIN_2_BXT,
> -	[RKL_DDC_BUS_DDI_D] = GMBUS_PIN_9_TC1_ICP,
> -	[RKL_DDC_BUS_DDI_E] = GMBUS_PIN_10_TC2_ICP,
> -};
> -
> -static const u8 adls_ddc_pin_map[] = {
> -	[ICL_DDC_BUS_DDI_A] = GMBUS_PIN_1_BXT,
> -	[ADLS_DDC_BUS_PORT_TC1] = GMBUS_PIN_9_TC1_ICP,
> -	[ADLS_DDC_BUS_PORT_TC2] = GMBUS_PIN_10_TC2_ICP,
> -	[ADLS_DDC_BUS_PORT_TC3] = GMBUS_PIN_11_TC3_ICP,
> -	[ADLS_DDC_BUS_PORT_TC4] = GMBUS_PIN_12_TC4_ICP,
> -};
> -
> -static const u8 gen9bc_tgp_ddc_pin_map[] = {
> -	[DDC_BUS_DDI_B] = GMBUS_PIN_2_BXT,
> -	[DDC_BUS_DDI_C] = GMBUS_PIN_9_TC1_ICP,
> -	[DDC_BUS_DDI_D] = GMBUS_PIN_10_TC2_ICP,
> -};
> -
> -static u8 map_ddc_pin(struct drm_i915_private *i915, u8 vbt_pin)
> -{
> -	const u8 *ddc_pin_map;
> -	int n_entries;
> -
> -	if (IS_ALDERLAKE_S(i915)) {
> -		ddc_pin_map = adls_ddc_pin_map;
> -		n_entries = ARRAY_SIZE(adls_ddc_pin_map);
> -	} else if (INTEL_PCH_TYPE(i915) >= PCH_DG1) {
> -		return vbt_pin;
> -	} else if (IS_ROCKETLAKE(i915) && INTEL_PCH_TYPE(i915) == PCH_TGP) {
> -		ddc_pin_map = rkl_pch_tgp_ddc_pin_map;
> -		n_entries = ARRAY_SIZE(rkl_pch_tgp_ddc_pin_map);
> -	} else if (HAS_PCH_TGP(i915) && DISPLAY_VER(i915) == 9) {
> -		ddc_pin_map = gen9bc_tgp_ddc_pin_map;
> -		n_entries = ARRAY_SIZE(gen9bc_tgp_ddc_pin_map);
> -	} else if (INTEL_PCH_TYPE(i915) >= PCH_ICP) {
> -		ddc_pin_map = icp_ddc_pin_map;
> -		n_entries = ARRAY_SIZE(icp_ddc_pin_map);
> -	} else if (HAS_PCH_CNP(i915)) {
> -		ddc_pin_map = cnp_ddc_pin_map;
> -		n_entries = ARRAY_SIZE(cnp_ddc_pin_map);
> -	} else {
> -		/* Assuming direct map */
> -		return vbt_pin;
> -	}
> -
> -	if (vbt_pin < n_entries && ddc_pin_map[vbt_pin] != 0)
> -		return ddc_pin_map[vbt_pin];
> -
> -	drm_dbg_kms(&i915->drm,
> -		    "Ignoring alternate pin: VBT claims DDC pin %d, which is not valid for this platform\n",
> -		    vbt_pin);
> -	return 0;
> -}
> -
>   static enum port __dvo_port_to_port(int n_ports, int n_dvo,
>   				    const int port_mapping[][3], u8 dvo_port)
>   {
