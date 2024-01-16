Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 7630382EB23
	for <lists+intel-gfx@lfdr.de>; Tue, 16 Jan 2024 09:48:43 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id E028B10E433;
	Tue, 16 Jan 2024 08:48:41 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [134.134.136.65])
 by gabe.freedesktop.org (Postfix) with ESMTPS id AD0CF10E433
 for <intel-gfx@lists.freedesktop.org>; Tue, 16 Jan 2024 08:48:40 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1705394920; x=1736930920;
 h=message-id:date:subject:to:cc:references:from:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=SsMgdRkWIUOIqNn3JyJ9+6OaMI9a8IoapJ+oJyg4Fkc=;
 b=BZycRQ1RPmDccgMoXMuiHCanAx4YWcatsBjg4Zx1QsRaGNXWSwgxnNF4
 SddxtWM1sD9uEjypRtaeZ0ucY5Gu/2DTwrmx+jMasCGucZXBoUcSgTBuh
 O7g+GWYgRMzOntfM8THO2JkbwLmkocpxy7ASi9PRFkG4l0oiHMxtdLcpu
 xTDL7bkwf+J+3IujqjGkXnrEudGz6bNaT1slR6bjwChg3qj7Ajr8bAzEZ
 FHvIeRAOfTyBU8LJQ3K1jUGOKg3osIrj4HaSLejCe1wF4qnIkpLeEPqJ2
 zHargvus6FgS6C8rKQ8tpJYluVuMN+33uHoNzfJjKS/2lebEcongRNU8q g==;
X-IronPort-AV: E=McAfee;i="6600,9927,10954"; a="403548548"
X-IronPort-AV: E=Sophos;i="6.04,198,1695711600"; d="scan'208";a="403548548"
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
 by orsmga103.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 16 Jan 2024 00:48:40 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10954"; a="903048462"
X-IronPort-AV: E=Sophos;i="6.04,198,1695711600"; d="scan'208";a="903048462"
Received: from fmsmsx601.amr.corp.intel.com ([10.18.126.81])
 by fmsmga002.fm.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 16 Jan 2024 00:48:40 -0800
Received: from fmsmsx612.amr.corp.intel.com (10.18.126.92) by
 fmsmsx601.amr.corp.intel.com (10.18.126.81) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.35; Tue, 16 Jan 2024 00:48:39 -0800
Received: from fmsmsx602.amr.corp.intel.com (10.18.126.82) by
 fmsmsx612.amr.corp.intel.com (10.18.126.92) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.35; Tue, 16 Jan 2024 00:48:39 -0800
Received: from fmsedg602.ED.cps.intel.com (10.1.192.136) by
 fmsmsx602.amr.corp.intel.com (10.18.126.82) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.35 via Frontend Transport; Tue, 16 Jan 2024 00:48:39 -0800
Received: from NAM11-CO1-obe.outbound.protection.outlook.com (104.47.56.168)
 by edgegateway.intel.com (192.55.55.71) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.35; Tue, 16 Jan 2024 00:48:39 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=EsGl4P4s/Xi9tI9pqqaVlowP3xO7DzJgv66zsKQwgcu5UCVCGCW/z3GIEJ3GiDSQ4CTiM2OoE2hYpEcxIyEY1Ou3ZSs/8TfJhesUwrf1or2CqV0/MJCoyDhpj4q8kZCAQDXTDph4svEBoRt9F9CSnj8DnMFWgpl9giva1PN9tzfvbCZAGNS3sBiGG8mjJRT0GqNtoA4AI8K0G7yDFsdAcNMeaLOT8mdQqgE3Mcm1AeoRfowQqyKpJanr92k2333oz570osX1+PtujSUzrz4ZM6zq2ynLId3HWNK4d/1lG1r2GnVYp67lA0LmEAwgram+lnXivZe1xpQ83pjqRxGdjg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=hCIV62gx/uhvJ/8BZSsiMXP46dBBs78opXY6kslxwbw=;
 b=Je8anvj6TqPnIQ5RwC+DZBsmVrGbY3ETX9/Ofq9+GoGYgME4uV7V876c9uD9APyLU2npUXB0nW9cmA1lXdVHGFszC8bRvwwk+i3rhvL4iiw4nxv9Ogfv4C+x9KYSHh93OFMqi7+AWI1YlARrGyZaP9wzXXenq+iClWx/7mAuVBXF/JplTiLotjvjw50dApTowyE794MJdXhoTMqVwIAOp5clushLmmn/MoiNmr629lRwJhqFdycx2s559p2vO0V1m/Okybd6ro9u/KWvpc3e4aIjnUj5vHfOqiUrefUfH/Uv2ogdqlxxM5ixurfTD4ktUW9X5jDHaXk0eidPe9a/ig==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from BN9PR11MB5530.namprd11.prod.outlook.com (2603:10b6:408:103::8)
 by SN7PR11MB7668.namprd11.prod.outlook.com (2603:10b6:806:341::21)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.7181.23; Tue, 16 Jan
 2024 08:48:32 +0000
Received: from BN9PR11MB5530.namprd11.prod.outlook.com
 ([fe80::8178:9420:e286:3136]) by BN9PR11MB5530.namprd11.prod.outlook.com
 ([fe80::8178:9420:e286:3136%4]) with mapi id 15.20.7181.029; Tue, 16 Jan 2024
 08:48:32 +0000
Message-ID: <55f54a2d-921d-4bf7-983b-379880df101e@intel.com>
Date: Tue, 16 Jan 2024 14:18:23 +0530
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH] drm/xe/guc: Enable WA 14018913170
To: Karthik Poosa <karthik.poosa@intel.com>, <intel-gfx@lists.freedesktop.org>
References: <20240116074826.2294232-1-karthik.poosa@intel.com>
Content-Language: en-US
From: "Nilawar, Badal" <badal.nilawar@intel.com>
In-Reply-To: <20240116074826.2294232-1-karthik.poosa@intel.com>
Content-Type: text/plain; charset="UTF-8"; format=flowed
Content-Transfer-Encoding: 7bit
X-ClientProxiedBy: PN3PR01CA0080.INDPRD01.PROD.OUTLOOK.COM
 (2603:1096:c01:9a::22) To BN9PR11MB5530.namprd11.prod.outlook.com
 (2603:10b6:408:103::8)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: BN9PR11MB5530:EE_|SN7PR11MB7668:EE_
X-MS-Office365-Filtering-Correlation-Id: 88339ff4-b6dd-4b09-22f7-08dc166feaf1
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: UKLhOvlsSma6Drj90ERNndQVKZrnjMy2Cp9Ab+9HOeFhKVzyNDXJnrQ2jXWpGjcgfeF7/KcPE5vBkgh54tsiDeUNSgtAaLb2OdfUJmWiI/xBISi3g3DdPZL6Ild8vhp0y8LdgVeFlgp/C9y23n4mkSBXoN4gEhkxcX3qoVsXivJ3QkG3MWlPsfjDjtmpwR/n7SljCVrLo/MhDJffHSbeL4KIuHf9YgRLMQJbbnEzGd94F4V29zqdJjO8lu5YWQwNQO/WcVzwsOzD6Qbeh2XmSeiCwsJ7Jue4IIIChak7xloARrlh3J3L4X2kqBvBx6jwVUT22tfetGP73e8bbl0y+0bvdfKnHCUg+EmQaVLOvj+V2GC7ihbTCccCcyelf35rocMhKS4sJxwm2Vzd7GRg31PZOJCg7LmJHgFrHweeQFHiIdJfU3nge/ONFIzUGOzj5EKf9vKCbiUDILPNZlegkl1xcfiQPjiBBIqGb95GoU4M+/cksEX4/26VLkQC57KbkQ3TO3qCd8CN694abj6Gc7ZDLQg9NxhoUE3DtehxzT/+bPPofv7wf4sDV96qIdhT+JHyXwawYqqcacpU5QQcnGLPQ0rYgPVQGZfMImbmnLiyO6Zq68TAhK2M/Pbvw/5LI7QJ3Om64r5xRd1b2+0M87tJIR+dWC0dYjIh0mWEYAKcGmFd2sRjkdbYbVxrQ3SD
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:BN9PR11MB5530.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230031)(136003)(376002)(396003)(39860400002)(346002)(366004)(230922051799003)(230173577357003)(230273577357003)(186009)(1800799012)(451199024)(64100799003)(5660300002)(38100700002)(2906002)(6512007)(316002)(4326008)(8676002)(86362001)(31686004)(82960400001)(66946007)(66556008)(8936002)(66476007)(31696002)(478600001)(6506007)(6486002)(6666004)(36756003)(53546011)(26005)(2616005)(107886003)(41300700001)(83380400001)(45980500001)(43740500002);
 DIR:OUT; SFP:1102; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?YXNYN3hNWjVKb0FlcnVMUGZvQ1IzWmZGZFlzZlBaV054RDYvczVTcVlybXpl?=
 =?utf-8?B?UjllMVlCbFp1Sm5GWktuQWJBTVlNbVp6ZjhCRnJndkNCdUczbmN3bzRuQXNY?=
 =?utf-8?B?TzNKMGVXTGg2WXdlL2dtSzlQTkZxNVo5bW9lZDVsdkcwdlVoWlhTVytEYmpQ?=
 =?utf-8?B?eS9yWTZ4a0k3MGtwci9DZGJLZ05HU3FqS1dJUGJrbitrZHZzdml3VUJjNCts?=
 =?utf-8?B?cEpVLzgxbmVFc2tLRXFwTHdoZS94NXZCU1poNmZJK3pidlBGYVhCWVc4c3dX?=
 =?utf-8?B?LzJFVnJIcVNwejJiK1UxREpUYWFWSVZGK3JFaFBPMXJqWEdEbFBhQ0FIcHlj?=
 =?utf-8?B?dUpMay8wRGthT3JNV1dHSVMyTEt4dm9DUUYxcGpXSC9ycHNuNGhDOC9yQS9P?=
 =?utf-8?B?elkrWnZrTSt0OTRiREt3UWlua1FFTE1teVN1TGlJKzcyamp1STJFTHJiUlYv?=
 =?utf-8?B?T0VCRGdKRTdZcmx0ZTlRcDB6elpmZ2JEODdzT1Z0UmJ2QVpOME5rdGtvYzNU?=
 =?utf-8?B?WDdxMTcwSFVSTllsUDk3V0xKcSt1MVB1SjNydnNmZ1BBTDdwdWU0dVV3RFVz?=
 =?utf-8?B?enFhNmE0ZlYxNEl3WTBoWkpTRXdWb2QwQnZsTjhOaDhrV2tGZ0VUamxxbURF?=
 =?utf-8?B?VDhWbnJuZHgxK0tDTUFubWlrK1Jtdzg4b1JqUVdjNDM5dnlaM0FzeFkwbHRP?=
 =?utf-8?B?NEhDWWQ3WXUvV2xROWY0SXk5V25laDBSYm9Jd1prM2tEbWZBUGFpN1BBVkVE?=
 =?utf-8?B?RStUTzQ4MTNFTFJxSG9rWUdLSXZBbU11MmdsWFR4RGN5YmY3eGE0QkVEb090?=
 =?utf-8?B?cGZSaW5sc1AzUGFUcTEzSEgzZ0dMWi8vWUJiU01MTkJtcExaS21UOWNrK2Jm?=
 =?utf-8?B?WmJ6emM0ZWVNUDhVdzRRZ0tXYXNGajgvQklkblFYM0hmdzY4TVU3dmhRcWJZ?=
 =?utf-8?B?d2ZwMHdUMUpadmVwVW5PdVUyK09KVVN0cmwrcUo4aE9wQkN2aFVzM0ZtTnpn?=
 =?utf-8?B?YmtEYnJCM2Z5YVQrNUxCNThlUFptcENVMjZYbHh2SG91aGkzZlZ4THFQT3pL?=
 =?utf-8?B?VmU1a292ZTZQR1FEdS9PZGpMbWJDZzV2TytDT3FoaDAxQUk3MDI4SUQvSHps?=
 =?utf-8?B?dGh3VkNJcThZZlg4eWpXM3ZwS1Z0cUY2NFFobVFQVVpBWTlYMTRBWlNxN3l2?=
 =?utf-8?B?RTFiRUNydFptbWcrNm9JWnNDcnU5djVHVytZKzhVQXhiMk4yUld5NGVONW5j?=
 =?utf-8?B?M2FDR1h6M0F3bUx1T2JnM3NSWk56Q0wrSGsrTGhmQ0dFbHBmQTdEQlFzUzFJ?=
 =?utf-8?B?c053OUNsMG8wNTRMZHNTblNSMXhLWE5mbjRIZlE5WUZNN2NoeTJBaFBwR2xI?=
 =?utf-8?B?MW54OC9GS0RuL0tqU0ozOU9QelZYcjZwdEVKK2xYMXptY3JKdDdkMEg2MFVK?=
 =?utf-8?B?R0VRd2pBYlhWSWYycDdTODM1bWFQWGgrZGkweitWd09ORktvN2JreUs1bXlO?=
 =?utf-8?B?VXp1ckVwbmhGSjdZMUIwbnN6RmlQQ1NSQk5adEoxMWdFVWRxaGV2UGl0cThv?=
 =?utf-8?B?Qzc2cVRNNXY2QTVwdjY5cGZQTDFNK1hhZDlIRnlIS2ozZUs0dmF0QlhWV1ow?=
 =?utf-8?B?eGpaT21zT2c0eXlCYmw2cUdjdDBHc2Z4UTNtRnB5UDhyNTFmZFA3WngvWnFN?=
 =?utf-8?B?aVo3RDlGZjV1UVNoZTVieldINml0N0Q3L1hZdHh6QUlCQll4cEhqeUhvMGQ4?=
 =?utf-8?B?SVRVMFJEaStNZkgwQ0hCajBTZlVUaGp6SVBTdUZybkZNYmpmbmhiZlEzOXhk?=
 =?utf-8?B?MzNNTUFuWjR4aGdmMk9WNjYrTHFLVW5Id3N4N0RtcG1CMDNHY0xmVVlPZm9Z?=
 =?utf-8?B?Skh4YU1zSUdYVG5Ha1ZSbzU2V05sVWpjSm95QlBWYzNKQXpEeWFkTnN2VkNo?=
 =?utf-8?B?UGp6TnZPazQ2ampuWHNEbW56SGtQWU40dHQySlhjTjlCb1FNdkxwdkhsYk0y?=
 =?utf-8?B?RzBCR2oxdnl5MlYrNnpYMWcxRUczb1hBcUEvNWFXQkpWSGUxQXp6TmVPUFRR?=
 =?utf-8?B?VnBxU1d3cEgyUEdSYVJJNHZ5MmlXaWpjaG1Ec052U2lNSnpJSStuRzhoMUt5?=
 =?utf-8?B?WG1kN0lNQ2w4bzVkRkkwYVVUREVVMW1iU2k5bGozbUZFNEtKRC9yVUJPUUxB?=
 =?utf-8?B?ZGc9PQ==?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 88339ff4-b6dd-4b09-22f7-08dc166feaf1
X-MS-Exchange-CrossTenant-AuthSource: BN9PR11MB5530.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 16 Jan 2024 08:48:32.1896 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: +1R0KoP6DxwAVmo2fTpZOi4zrKeb9/+ArRVAr1foqcKzvYuC85jq5i3dNKYO9L6Ewe8xHq4UtJ4rHHHNY5MYXQ==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SN7PR11MB7668
X-OriginatorOrg: intel.com
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
Cc: matthew.d.roper@intel.com
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

Please post this patch to intel xe mailing list.

Regards,
Badal

On 16-01-2024 13:18, Karthik Poosa wrote:
> The GuC handles the WA, the KMD just needs to set the flag to enable
> it on the appropriate platforms.
> 
> v2: Fixed CI checkpatch warning, alignment should match open parenthesis.
> 
> Signed-off-by: Karthik Poosa <karthik.poosa@intel.com>
> ---
>   drivers/gpu/drm/xe/xe_guc.c        | 13 +++++++++++++
>   drivers/gpu/drm/xe/xe_guc_fwif.h   |  1 +
>   drivers/gpu/drm/xe/xe_wa_oob.rules |  5 +++++
>   3 files changed, 19 insertions(+)
> 
> diff --git a/drivers/gpu/drm/xe/xe_guc.c b/drivers/gpu/drm/xe/xe_guc.c
> index 235d27b17ff9..5ecd9cd964de 100644
> --- a/drivers/gpu/drm/xe/xe_guc.c
> +++ b/drivers/gpu/drm/xe/xe_guc.c
> @@ -132,10 +132,15 @@ static u32 guc_ctl_ads_flags(struct xe_guc *guc)
>   	return flags;
>   }
>   
> +#define GUC_VER(maj, min, pat)	(((maj) << 16) | ((min) << 8) | (pat))
> +
>   static u32 guc_ctl_wa_flags(struct xe_guc *guc)
>   {
>   	struct xe_device *xe = guc_to_xe(guc);
>   	struct xe_gt *gt = guc_to_gt(guc);
> +	struct xe_uc_fw *uc_fw = &guc->fw;
> +	struct xe_uc_fw_version *version = &uc_fw->versions.found[XE_UC_FW_VER_COMPATIBILITY];
> +
>   	u32 flags = 0;
>   
>   	if (XE_WA(gt, 22012773006))
> @@ -165,6 +170,14 @@ static u32 guc_ctl_wa_flags(struct xe_guc *guc)
>   	if (XE_WA(gt, 1509372804))
>   		flags |= GUC_WA_RENDER_RST_RC6_EXIT;
>   
> +	if (XE_WA(gt, 14018913170)) {
> +		if (GUC_VER(version->major, version->minor, version->patch) >= GUC_VER(70, 7, 0))
> +			flags |= GUC_WA_ENABLE_TSC_CHECK_ON_RC6;
> +		else
> +			drm_warn(&xe->drm, "can't apply WA 14018913170, GUC version expected >= 70.7.0, found %us %us %us\n",
> +				 version->major, version->minor, version->patch);
> +	}
> +
>   	return flags;
>   }
>   
> diff --git a/drivers/gpu/drm/xe/xe_guc_fwif.h b/drivers/gpu/drm/xe/xe_guc_fwif.h
> index 4dd5a88a7826..c281fdbfd2d6 100644
> --- a/drivers/gpu/drm/xe/xe_guc_fwif.h
> +++ b/drivers/gpu/drm/xe/xe_guc_fwif.h
> @@ -97,6 +97,7 @@ struct guc_update_exec_queue_policy {
>   #define   GUC_WA_POLLCS			BIT(18)
>   #define   GUC_WA_RENDER_RST_RC6_EXIT	BIT(19)
>   #define   GUC_WA_RCS_REGS_IN_CCS_REGS_LIST	BIT(21)
> +#define   GUC_WA_ENABLE_TSC_CHECK_ON_RC6	BIT(22)
>   
>   #define GUC_CTL_FEATURE			2
>   #define   GUC_CTL_ENABLE_SLPC		BIT(2)
> diff --git a/drivers/gpu/drm/xe/xe_wa_oob.rules b/drivers/gpu/drm/xe/xe_wa_oob.rules
> index e73b84e01ea1..b138cbd51bdb 100644
> --- a/drivers/gpu/drm/xe/xe_wa_oob.rules
> +++ b/drivers/gpu/drm/xe/xe_wa_oob.rules
> @@ -17,3 +17,8 @@
>   14019821291	MEDIA_VERSION_RANGE(1300, 2000)
>   14015076503	MEDIA_VERSION(1300)
>   16020292621	GRAPHICS_VERSION(2004), GRAPHICS_STEP(A0, B0)
> +14018913170	GRAPHICS_VERSION(2004), GRAPHICS_STEP(A0, B0)
> +		MEDIA_VERSION(2000), GRAPHICS_STEP(A0, A1)
> +		GRAPHICS_VERSION_RANGE(1270, 1274)
> +		MEDIA_VERSION(1300)
> +		PLATFORM(DG2)
