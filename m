Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 6402F3F87D5
	for <lists+intel-gfx@lfdr.de>; Thu, 26 Aug 2021 14:43:59 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 9B6E76E837;
	Thu, 26 Aug 2021 12:43:57 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga07.intel.com (mga07.intel.com [134.134.136.100])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 1B8846E837
 for <intel-gfx@lists.freedesktop.org>; Thu, 26 Aug 2021 12:43:56 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6200,9189,10087"; a="281451850"
X-IronPort-AV: E=Sophos;i="5.84,353,1620716400"; d="scan'208";a="281451850"
Received: from fmsmga007.fm.intel.com ([10.253.24.52])
 by orsmga105.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 26 Aug 2021 05:43:55 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.84,353,1620716400"; d="scan'208";a="456833392"
Received: from orsmsx603.amr.corp.intel.com ([10.22.229.16])
 by fmsmga007.fm.intel.com with ESMTP; 26 Aug 2021 05:43:55 -0700
Received: from orsmsx605.amr.corp.intel.com (10.22.229.18) by
 ORSMSX603.amr.corp.intel.com (10.22.229.16) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2242.10; Thu, 26 Aug 2021 05:43:54 -0700
Received: from ORSEDG602.ED.cps.intel.com (10.7.248.7) by
 orsmsx605.amr.corp.intel.com (10.22.229.18) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id 15.1.2242.4
 via Frontend Transport; Thu, 26 Aug 2021 05:43:54 -0700
Received: from NAM11-DM6-obe.outbound.protection.outlook.com (104.47.57.172)
 by edgegateway.intel.com (134.134.137.103) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2242.10; Thu, 26 Aug 2021 05:43:54 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=ReymaIHp7HlCNwqbozE/W/WzleHHsu/6qYTOlHTPdgaQO3T02xUfxqT8GN7vaQw1p09UGhdbz4f2E/oR4e+M8crtAjqRs1k3+P6ePQPHSterclWiKQWWcs/t3hdGoMFzUT7iIgFBfa6zEQYI2nVuMZzYgVDne/4WgcYOv7PDfBp3QNGXgaiTHQlL/WuGI2Ia/951L7vl2TBXjyT1Vh8jH+CNZDpTjewgMfP1XAo9hQk9U6SoGeg+vqi40xpdyaIimhZyLw1fwHxEt8Q+b3V/kGDOxf3PgiIe7eai27g20mt+/3wrbEYnPOXXMwe3PoqPw0gmkkOfT4sY4pjc/mOiOg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=WqdGhW8+5sNBM0I8ByeBadg7woUxBs1DfaB4KscKV+k=;
 b=WVadH/0f3xswb9UE2SX27FEBfr8whLUtkThu9A4iPAMAmQSSeG/dLnl/XKioLzN5kTEiHIlB6BMw2YbmoFiWhslcG886kLgVikjAQumKtMi2Ns4ULSM/cFZYue3MDNzgks6HrUzZYtylM29DxTnLkspl5CI8PXuvx0xasM3vXofLYs2sLy//G8pW/pTS6uUw5vXLj2MOy+mCh1CBa5Ha2lXXNzbzzp7NM4a8uHekIygf9xXrt+3PJUgEAEi3lctuQ/IGsemoGKMCFJWilyZ55LKBt2hgBVwgwNC8ZmuBZp+xOCZj5T0dy1Gx2ZOsG/Pw6AiNN93WCSui1fknNtV9iQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=intel.onmicrosoft.com; 
 s=selector2-intel-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=WqdGhW8+5sNBM0I8ByeBadg7woUxBs1DfaB4KscKV+k=;
 b=rMsgJ3EwJkW1i/IMkKQI8UtXl8aKAJAbE/PnRwECpIMNpm0tW/L9fwX8GggnYZhrQ850VhwpKOejCu4Anamy0rsaF9wi9aHrSdL5SQDiAl1P87YdLk2PuJl5sWXWK1EgTfrCgPUvOsxkie3tIkmdD/wTyU3zumJQmk7EgPfU2yA=
Authentication-Results: intel.com; dkim=none (message not signed)
 header.d=none;intel.com; dmarc=none action=none header.from=intel.com;
Received: from DM4PR11MB5501.namprd11.prod.outlook.com (2603:10b6:5:39d::23)
 by DM6PR11MB4313.namprd11.prod.outlook.com (2603:10b6:5:203::32) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.4415.19; Thu, 26 Aug
 2021 12:43:47 +0000
Received: from DM4PR11MB5501.namprd11.prod.outlook.com
 ([fe80::389d:c727:c71d:d869]) by DM4PR11MB5501.namprd11.prod.outlook.com
 ([fe80::389d:c727:c71d:d869%3]) with mapi id 15.20.4457.021; Thu, 26 Aug 2021
 12:43:47 +0000
To: Jani Nikula <jani.nikula@intel.com>, <intel-gfx@lists.freedesktop.org>
CC: =?UTF-8?Q?Jos=c3=a9_Roberto_de_Souza?= <jose.souza@intel.com>
References: <cover.1629811722.git.jani.nikula@intel.com>
 <17ff3112bb2bc3f7fb759306f9f24c4a84147e01.1629811722.git.jani.nikula@intel.com>
From: "Nautiyal, Ankit K" <ankit.k.nautiyal@intel.com>
Message-ID: <4f363a2a-484f-c896-3647-cfc72ac59428@intel.com>
Date: Thu, 26 Aug 2021 18:13:37 +0530
User-Agent: Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:78.0) Gecko/20100101
 Firefox/78.0 Thunderbird/78.13.0
In-Reply-To: <17ff3112bb2bc3f7fb759306f9f24c4a84147e01.1629811722.git.jani.nikula@intel.com>
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Transfer-Encoding: 8bit
Content-Language: en-US
X-ClientProxiedBy: BM1PR0101CA0062.INDPRD01.PROD.OUTLOOK.COM
 (2603:1096:b00:19::24) To DM4PR11MB5501.namprd11.prod.outlook.com
 (2603:10b6:5:39d::23)
MIME-Version: 1.0
X-MS-Exchange-MessageSentRepresentingType: 1
Received: from [192.168.0.113] (49.207.223.26) by
 BM1PR0101CA0062.INDPRD01.PROD.OUTLOOK.COM (2603:1096:b00:19::24) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.4457.17 via Frontend
 Transport; Thu, 26 Aug 2021 12:43:46 +0000
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-Correlation-Id: cf60063e-0543-4409-e7b7-08d9688f25d8
X-MS-TrafficTypeDiagnostic: DM6PR11MB4313:
X-LD-Processed: 46c98d88-e344-4ed4-8496-4ed7712e255d,ExtAddr
X-MS-Exchange-Transport-Forked: True
X-Microsoft-Antispam-PRVS: <DM6PR11MB4313B61D4824EF3C612C71B2CEC79@DM6PR11MB4313.namprd11.prod.outlook.com>
X-MS-Oob-TLC-OOBClassifiers: OLM:8273;
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: uJSqB+AyTN05a9/1/3VLi/RmZc9EsYjD1aLAHVrtWjFO4iBxC1RVxa/UcZ3wqlOBNfpPeBCEBaprVXlVVqxSVzbYDBPBjv6IomuygiH3uhE3arSGSlSn+p8eHj54cnOG3LhJ16AXIQg5gqbFoCN9McYWrvMFkhJHDvtg4Bvnn9sY7JvItXaAegFlqIAN0o682OPw1BtIMf4SOSBi5+NcVxg4BKOExQZ9gO3JwOVyY9yGDzvVmZrdtgeeMlNVdxK+wWsnWh/LLi/z3IwDtw2v3Z7rPs/6CatXZX42Kas1ne6j7UEiBdVyVEetEgwOVztLShx1ljKj+4jEsrjZQq/YuGeO4x092sfrR8OdMx4FluTx0weCL4JK1K+krbedaggHqLkLORGbUR9xoCYH8HNp6H78Avt+a7tSJUsWdKhSZxDMl114YoCpZRup7OJJ4BTc+RcVLgkOuqdO+jLQBaN05OFp714VJG/jLmH2/xllmNEuy46Woy9wbkVpPIHTHCdXPcKAYmdyQ4zKWpgT6fRnXKF0GpOPZNzTnrUHL4eG1KQ7o5kt1jAmcPQ3TERG0FTrZ8QRv9kdsHPaij68y9fYU4PpEa/3NJWzbON/OITypwqW1woXzlIjMSojj7+xJdDWO+o56kUngnW4dPLCL7VEfN5gawV76th4sEOStXJ0xTZwCVr5VsIg0hlo4dUBDTwdJIe9oA8M5KnEpodRyWFf/cG+xSVq+k6GlRY0sP3jSDI=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM4PR11MB5501.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(4636009)(366004)(31696002)(2616005)(956004)(31686004)(6486002)(26005)(1006002)(508600001)(66946007)(66556008)(186003)(4326008)(6666004)(107886003)(83380400001)(38100700002)(66476007)(36756003)(8676002)(53546011)(2906002)(8936002)(316002)(5660300002)(86362001)(55236004)(16576012)(45980500001)(43740500002);
 DIR:OUT; SFP:1102; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?cjM5SkZyMDNBdVVBVDA4TFNLUVAybkVJck5MNGVOV0lzWExWZEJhSXZmR29H?=
 =?utf-8?B?WDlvMFZtLzAyclVGRlAvY3dvQ0FBVFlwdmE2bWdWdlBIMThLYjJxZlUydXd3?=
 =?utf-8?B?SC9kdDd6bjd6SHYxTlNvU1lwYmh2OW02M3d6azluQUM1eTd3d2RSdCtCNUJ3?=
 =?utf-8?B?NW1DUlZ2M3RtbWpaOGRrZmVEM2hUR3dTVzdXall4bFZmSDRoOWVmQ3VKT09V?=
 =?utf-8?B?TXZ3REgwWm5pMit1YStCVlJ0RFRhVEozNmk4U21UemIydlEzanoyUElBcXdp?=
 =?utf-8?B?Y0hrS1E4WlMrbERTdWJNMHJuSXIrREEwdjJ1aDNhMDllbXR1eFZCb3dCci9J?=
 =?utf-8?B?UlhTZko4Sk0zZWxkUHdhUWtaTVVVRVN6cy9MckFiaGs2YnFXK1lrdkZZSUhi?=
 =?utf-8?B?dk0rRjYwVGVhcXFocmMzVCtiWlUydkJ1NFl5WHpIcDIrTmZWL2pUeDNKSGNC?=
 =?utf-8?B?bG5pTXBPQkxwYjZJS0J2SGluMFA3Y1JXWnhjSkdHYTNMc01IOXpiNWNMN293?=
 =?utf-8?B?dmVwZU9ybDlkTDJ5NjFNcmlneXQ5MlhIY0ZmcnFxcXhaOXpwSDY2MWdua1FX?=
 =?utf-8?B?ZXdlSnVBdjlibThWYWl5NnZhUGdXQ05xNGdxQi9sNlBIYWU5ck9CNUdzeDNT?=
 =?utf-8?B?VlJXVmlMY0pwdzBNcWZQSDh2YVJabEJxWFZLMXZ4ZlV3M3FSanZvYThyMGEz?=
 =?utf-8?B?SExmcXUvUTl6Q1JsRkN6Rnd4ZHg2RWhXWXZ5UWE2NHEyTWlzSVc1REFTVURH?=
 =?utf-8?B?cFdmZlUxUXJNYW9IQ1A2R0FsM3JmbWN0d3ZTbHRkUEdPU2w0TkhWeEUyaENr?=
 =?utf-8?B?a2IrS1lqV3phY0R6SnZvVnVsRm54dlg3THhqYkJiMnpYaHpDcGoyZXhhTWRa?=
 =?utf-8?B?N1hrc0IyVmMzdWQzMHVDRTI2b0lzbStvNDloZEltdHBkWS9rUmRQbmgva1dR?=
 =?utf-8?B?Y1VYVklBRlNwL0JGSm9tb1RZdFlVU1RmbVdjVkh4UVFuVE5vL2lJQXc1aDFO?=
 =?utf-8?B?cHpENEswSVNXSll1RllaUFBkM0FTb1hENUZjcmNMUis3emg2ZnBhSVlsbTdl?=
 =?utf-8?B?bXREZlFVNGk2SGR1VTVQakJFa1pUYnFiWkFRTHBaZm1QUzRwQzM5TU5SMFNF?=
 =?utf-8?B?Y2R5K2twTXkvbTZ6U2s5eG1KSDdyTFBkRmxHa2p1bHl5bGlETWhDSlU1QXRn?=
 =?utf-8?B?c21xb2s0N1FwZkxZTnZTNHpVeWZ2TTRYVVB1TmJ1UGxIWjJCNzhkSEJEWDNi?=
 =?utf-8?B?d1hHWW9jcDR5R3hrczZqaUtnTHM1NkNpNXhaRUpreG8rQU40QnVVOElEK29l?=
 =?utf-8?B?cG8zQ3lhM2VkZi9CL3V6L1hqYmltT01RZ1ZWNTArSUxTTGdzTDNUMk5mTkxq?=
 =?utf-8?B?OEhQb201VmF4RHE1VDQvR3FCaVJRUFRaZU5HVEZOUy85SmMzUFloYzhuSDZr?=
 =?utf-8?B?RkM1ZHlvY3I4cEVDSlhnRGJVcEhGL3MwOEY4VWlPc3F0WDViWEU5NEF4VjBP?=
 =?utf-8?B?M2FvOGRvTWh5WVd5dTRGMkR3THhQQkl1UUxKcjFpOGNIZGJtRUJ4WXNCQW9m?=
 =?utf-8?B?TlNjMkJEL0RLMmxaaGgxU2syNTQybHNGTWVrU0w4OUxkUWNxMkhqdTVET1lR?=
 =?utf-8?B?b2V0eTIwOUpydUw1K01nTjgzQS83YmVrSkZlVkJ4YUFtQXE0c2ZOMisrNEJD?=
 =?utf-8?B?N0pKaEFSYjZrRWI2TUljdFI0Um1TU1Rlb3BrNzBvQXQ5S3Vnc285K21zczA2?=
 =?utf-8?Q?S+fkELXn7g3TGerQE2h5f6SywtdSkj0RYGb5m+a?=
X-MS-Exchange-CrossTenant-Network-Message-Id: cf60063e-0543-4409-e7b7-08d9688f25d8
X-MS-Exchange-CrossTenant-AuthSource: DM4PR11MB5501.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 26 Aug 2021 12:43:47.7495 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: mMNBuNB3nSaxL4aclGGJOyRUIGrNRUfBa5ZZFS1cGD39qXkeFhX1Dy9fWr3eoRxd1sVh0UFlzu9KV6RtYA6ZcaLHjwpuDClEtaFOco8TNKc=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DM6PR11MB4313
X-OriginatorOrg: intel.com
Subject: Re: [Intel-gfx] [PATCH 4/7] drm/i915/bios: use alternate aux
 channel directly from child data
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


On 8/24/2021 7:04 PM, Jani Nikula wrote:
> Avoid extra caching of the data.
>
> Cc: José Roberto de Souza <jose.souza@intel.com>
> Signed-off-by: Jani Nikula <jani.nikula@intel.com>
> ---
>   drivers/gpu/drm/i915/display/intel_bios.c | 26 +++++++++++------------
>   drivers/gpu/drm/i915/i915_drv.h           |  1 -
>   2 files changed, 12 insertions(+), 15 deletions(-)
>
> diff --git a/drivers/gpu/drm/i915/display/intel_bios.c b/drivers/gpu/drm/i915/display/intel_bios.c
> index 10b2beddc121..674f1424fcc2 100644
> --- a/drivers/gpu/drm/i915/display/intel_bios.c
> +++ b/drivers/gpu/drm/i915/display/intel_bios.c
> @@ -1565,28 +1565,29 @@ static enum port get_port_by_aux_ch(struct drm_i915_private *i915, u8 aux_ch)
>   	for_each_port(port) {
>   		info = &i915->vbt.ddi_port_info[port];
>   
> -		if (info->devdata && aux_ch == info->alternate_aux_channel)
> +		if (info->devdata && aux_ch == info->devdata->child.aux_channel)
>   			return port;
>   	}
>   
>   	return PORT_NONE;
>   }
>   
> -static void sanitize_aux_ch(struct drm_i915_private *i915,
> +static void sanitize_aux_ch(struct intel_bios_encoder_data *devdata,
>   			    enum port port)
>   {
> -	struct ddi_vbt_port_info *info = &i915->vbt.ddi_port_info[port];
> +	struct drm_i915_private *i915 = devdata->i915;
> +	struct ddi_vbt_port_info *info;
>   	struct child_device_config *child;
>   	enum port p;
>   
> -	p = get_port_by_aux_ch(i915, info->alternate_aux_channel);
> +	p = get_port_by_aux_ch(i915, devdata->child.aux_channel);
>   	if (p == PORT_NONE)
>   		return;
>   
>   	drm_dbg_kms(&i915->drm,
>   		    "port %c trying to use the same AUX CH (0x%x) as port %c, "
>   		    "disabling port %c DP support\n",
> -		    port_name(port), info->alternate_aux_channel,
> +		    port_name(port), devdata->child.aux_channel,
>   		    port_name(p), port_name(p));
>   
>   	/*
> @@ -1602,7 +1603,7 @@ static void sanitize_aux_ch(struct drm_i915_private *i915,
>   	child = &info->devdata->child;
>   
>   	child->device_type &= ~DEVICE_TYPE_DISPLAYPORT_OUTPUT;
> -	info->alternate_aux_channel = 0;
> +	child->aux_channel = 0;
>   }
>   
>   static const u8 cnp_ddc_pin_map[] = {
> @@ -1980,11 +1981,8 @@ static void parse_ddi_port(struct drm_i915_private *i915,
>   		}
>   	}
>   
> -	if (is_dp) {
> -		info->alternate_aux_channel = child->aux_channel;
> -
> -		sanitize_aux_ch(i915, port);
> -	}
> +	if (is_dp)
> +		sanitize_aux_ch(devdata, port);
>   
>   	hdmi_level_shift = _intel_bios_hdmi_level_shift(devdata);
>   	if (hdmi_level_shift >= 0) {
> @@ -2863,7 +2861,7 @@ enum aux_ch intel_bios_port_aux_ch(struct drm_i915_private *i915,
>   		&i915->vbt.ddi_port_info[port];
>   	enum aux_ch aux_ch;
>   
> -	if (!info->alternate_aux_channel) {
> +	if (!info->devdata->child.aux_channel) {

Hi Jani,

The series and the change make sense to me.

 From the CI results it seems that cases with LVDS panel connected are 
getting issues here.

Apparently info->devdata is not set in this case. I guess that, 
parse_ddi_port() returns early before info->devdata gets set.

I think without the patch, this situation is not encountered due to the 
fact that 'info->alternate_aux_channel, is initialized to 0.

With this change, perhaps we should check for 'info->devdata' before 
checking for info->devdata->child.aux_channel.

(This will translate to checking for 'devdata' in the final patch as it 
removes ddi_port_info).

Hope it helps.

Regards,

Ankit


>   		aux_ch = (enum aux_ch)port;
>   
>   		drm_dbg_kms(&i915->drm,
> @@ -2879,7 +2877,7 @@ enum aux_ch intel_bios_port_aux_ch(struct drm_i915_private *i915,
>   	 * ADL-S VBT uses PHY based mapping. Combo PHYs A,B,C,D,E
>   	 * map to DDI A,TC1,TC2,TC3,TC4 respectively.
>   	 */
> -	switch (info->alternate_aux_channel) {
> +	switch (info->devdata->child.aux_channel) {
>   	case DP_AUX_A:
>   		aux_ch = AUX_CH_A;
>   		break;
> @@ -2940,7 +2938,7 @@ enum aux_ch intel_bios_port_aux_ch(struct drm_i915_private *i915,
>   			aux_ch = AUX_CH_I;
>   		break;
>   	default:
> -		MISSING_CASE(info->alternate_aux_channel);
> +		MISSING_CASE(info->devdata->child.aux_channel);
>   		aux_ch = AUX_CH_A;
>   		break;
>   	}
> diff --git a/drivers/gpu/drm/i915/i915_drv.h b/drivers/gpu/drm/i915/i915_drv.h
> index a0dead9f9222..91097526cd96 100644
> --- a/drivers/gpu/drm/i915/i915_drv.h
> +++ b/drivers/gpu/drm/i915/i915_drv.h
> @@ -640,7 +640,6 @@ struct ddi_vbt_port_info {
>   	/* Non-NULL if port present. */
>   	struct intel_bios_encoder_data *devdata;
>   
> -	u8 alternate_aux_channel;
>   	u8 alternate_ddc_pin;
>   };
>   
