Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 64C4B6D9355
	for <lists+intel-gfx@lfdr.de>; Thu,  6 Apr 2023 11:53:26 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id B4F7110EB6A;
	Thu,  6 Apr 2023 09:53:23 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga03.intel.com (mga03.intel.com [134.134.136.65])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 04C4510EB4C
 for <intel-gfx@lists.freedesktop.org>; Thu,  6 Apr 2023 09:53:21 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1680774802; x=1712310802;
 h=message-id:date:subject:to:references:from:in-reply-to:
 content-transfer-encoding:mime-version;
 bh=AKs52zx6iSIV2XvSO8tafgbEGFhG9evELYwpUC1JPag=;
 b=HV1bq6KYK5G4SOLfGT2n2Tj0Ce4EZMqO6Ow47lhJ9Kd9xaQJHsD/9iPa
 LVQR/SUbNMuCAUsQ66bveXltkl0MZukv3p9SzAa4QWjdPKXClqXU0OKod
 ksCgm9FQr34mKRHnfW5mKw8iuxVxS5leVumW3CtGPbduTe/kW2g2dG5aO
 r0YaJzc6dA/fWz/IQTD006ayigaY3nEKLri0hmfdkT8MYTRuF8US/NTiG
 iKY/ZShfaoXvkdT1IBDs6tM4N8SOfXzGDx/Q8EgQcCMoG3XknxAZHrvp0
 JDVkAh7cxJIAN4uB2p1axzMSrNeEVcbX18DGiBrPOjYc5uLzf9VDXVdY2 A==;
X-IronPort-AV: E=McAfee;i="6600,9927,10671"; a="345293562"
X-IronPort-AV: E=Sophos;i="5.98,323,1673942400"; d="scan'208";a="345293562"
Received: from orsmga004.jf.intel.com ([10.7.209.38])
 by orsmga103.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 06 Apr 2023 02:53:21 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10671"; a="810940196"
X-IronPort-AV: E=Sophos;i="5.98,323,1673942400"; d="scan'208";a="810940196"
Received: from orsmsx603.amr.corp.intel.com ([10.22.229.16])
 by orsmga004.jf.intel.com with ESMTP; 06 Apr 2023 02:53:21 -0700
Received: from orsmsx610.amr.corp.intel.com (10.22.229.23) by
 ORSMSX603.amr.corp.intel.com (10.22.229.16) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.21; Thu, 6 Apr 2023 02:53:20 -0700
Received: from ORSEDG601.ED.cps.intel.com (10.7.248.6) by
 orsmsx610.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.21 via Frontend Transport; Thu, 6 Apr 2023 02:53:20 -0700
Received: from NAM10-DM6-obe.outbound.protection.outlook.com (104.47.58.108)
 by edgegateway.intel.com (134.134.137.102) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.21; Thu, 6 Apr 2023 02:53:20 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=A0O4TZ4f0zI2oWbAZ0J7I+JP8+aCUKtet/fCc5oziy+wVGHw66vg5yYlIbQZcKNaism1gHMqCi9JW0XGK98ee964FwTsQ+z2ey/e+t02T1WHSXegZMfpnAealvQWz92Uu4uYFL/8a6Uo03AhMpnjoUEZEL+2BXSZ5o/aCRVEtR9XQMjsVxzq0ah45c1mVIgNwhAV7LUYKv3i5XzIc2lMwsB+jaQXiBAPGeukoOlswOekEKMO5UIRVe3SZbCk4KqEmcvutdP+YHV0zt777j9bImxE4DBU2IgSpoLyLB8fJ6rxlacsXdhlqdhCHvH/GoAZL9By9X5lNKvctI/YuaIx7A==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=ktGGteIubJ/OSTdfj3U7f16ELuFvZI49s1rUf1hlqas=;
 b=h/6ux43rMXsRqO/TdpEVKP1pEmkdYp4PZJs+3ZtCNykkSGR37aNWZh/p9HTD4SmM+LboWiDYKeDWyRbxI9iNACaq8z3TV5Nz33bk9xhvo7G1C8VlTs+C5b+PgP+vI8xEG68CsNOIUP3BZfUwA6uAAcPQdK5FrClYceqigqj5Fk7ZaNXYH93JTCj1NasvYmQeEpmPRduYiTEnmCdhNvhEpWFNiHy8D/uWBL87fZqcNHEnDbv+iGVCgzt+kW9XqPgHkA7CXky1U9Ry5d6K2O4/bFwlCPfwUSa5awSNnEeSi7DfU6RjUHSN6hBLeYWqwd3HyWXWYX9ruomzhZdG/ba21g==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from DM4PR11MB5341.namprd11.prod.outlook.com (2603:10b6:5:390::22)
 by SJ0PR11MB6576.namprd11.prod.outlook.com (2603:10b6:a03:478::5) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.6254.33; Thu, 6 Apr
 2023 09:53:18 +0000
Received: from DM4PR11MB5341.namprd11.prod.outlook.com
 ([fe80::d1b9:3221:bc0d:1a9b]) by DM4PR11MB5341.namprd11.prod.outlook.com
 ([fe80::d1b9:3221:bc0d:1a9b%8]) with mapi id 15.20.6254.035; Thu, 6 Apr 2023
 09:53:18 +0000
Message-ID: <9d29b049-ea79-232e-9c35-c1ec15c913a5@intel.com>
Date: Thu, 6 Apr 2023 15:23:09 +0530
User-Agent: Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:102.0) Gecko/20100101
 Thunderbird/102.9.1
Content-Language: en-US
To: Ville Syrjala <ville.syrjala@linux.intel.com>,
 <intel-gfx@lists.freedesktop.org>
References: <20230329135002.3096-1-ville.syrjala@linux.intel.com>
 <20230329135002.3096-12-ville.syrjala@linux.intel.com>
From: "Nautiyal, Ankit K" <ankit.k.nautiyal@intel.com>
In-Reply-To: <20230329135002.3096-12-ville.syrjala@linux.intel.com>
Content-Type: text/plain; charset="UTF-8"; format=flowed
Content-Transfer-Encoding: 8bit
X-ClientProxiedBy: PN2PR01CA0163.INDPRD01.PROD.OUTLOOK.COM
 (2603:1096:c01:26::18) To DM4PR11MB5341.namprd11.prod.outlook.com
 (2603:10b6:5:390::22)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: DM4PR11MB5341:EE_|SJ0PR11MB6576:EE_
X-MS-Office365-Filtering-Correlation-Id: 0537a335-1b15-4eed-af01-08db3684bfa6
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: VzUH5M7Bg1zJjvfX/YH855PMW5BGZYbtoAVUKgohoT+BjiDrYU2Y5aYGA5MahqZxtTRe1/N8lXk8NO8PMI3cg36waLCuSBNOOA4PWqcSFJOBywqSUn5NZM2vjw5aPTvspKMsIi0wMe/lyPbfUcXwPZur/8ZGymIpDe5FC5g+r97jh25PujfdGOIsNoaHA4fgHMawRABCGEI5flr/bnl7wtbXoZpGcqdQ5ilEwBp981K+DpOboMcN1UQke+KNaWYQRwsov+gdMzNaGeD+MygkBNkuivNQsrlEqNNFa4tx75iBnZJQOzH6PsjsjVEdrNy2Z4s3miIP9/cnOlvz7/1OrOf1xdMxtnxjfx1e9pOrTQ3P5FapU3CjGt46ce1yx//1Ev+xxTqQvLHtCyxcFOy2MiHxyRHsd4ZO/NJjsFlvDuZTYlrLTh6N22iYfjqFKdZaH0fmTjDIv36W7uykcHk6NrqTBEZhzg9ygiOkuvs2uFoI7wBZwpnNH8knFtgtidZXhSnv1RZE2CBoP1iaoIrw0O8AX9fqy0N5bTWdn06OiqH62TOh2kCYLxww34NF70Fa71qOVlqBCOWMQWeIfFiJNannvWg2xVKzOSvbba5BHUgQSCurLbCpSysS0x3UQJ0DCGwF3MbvspZ90lJVTs/cHp/gCO6Nk3MEdFvEwJjxRs0CvB3e/4q3VeBimJLVLmMS
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM4PR11MB5341.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230028)(396003)(346002)(366004)(136003)(39860400002)(376002)(451199021)(5660300002)(86362001)(6512007)(53546011)(6506007)(31696002)(83380400001)(26005)(55236004)(66476007)(8936002)(8676002)(6666004)(316002)(36756003)(66946007)(82960400001)(478600001)(2616005)(6486002)(41300700001)(66574015)(66556008)(186003)(31686004)(2906002)(38100700002)(52103002)(158003001)(43740500002)(45980500001);
 DIR:OUT; SFP:1102; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?dys1dFhQbmF5ZXZaVEdxSnNtaUx2YkhwbU01RWRscTF1Mm80aG90QmxITnJY?=
 =?utf-8?B?WVhXR2RwRkN4UXdGL0ZNUVljNzZJdFVhQkY3RXdPYytZM0NTOXZBSGNZWmdl?=
 =?utf-8?B?dm1Wb0lkdUFZMTNqL1g4OW9mYU5raFhMOTBYTm5PZDZzOFpOT1luOTltOWx2?=
 =?utf-8?B?VytiSmtkOHd0UEE5VWkrYlhDNUtzS09rKzBlV21BYkRIMzBsUnFhc2NsazlW?=
 =?utf-8?B?aW1ZMTRwTUJTdTVlK1lHY2Y0L0hkK3ZIampSbVJoWHMxQW1pK1RIOVNscDNX?=
 =?utf-8?B?Ny9DbE9IaWcvZVhadGtsYzdpS1ZHUXZZWnIrdWY3d1lwaXlVUmZMMXVxTm96?=
 =?utf-8?B?QmZ2N3R0eXA0VW1CcW9OeEhQLy9yU3pUSHdnQUtvL0s4bGcxVW8ycS9nOG4z?=
 =?utf-8?B?MnlsY2pmcExGampIN0FBemdQcENzQzQ3VFpPT3NrbWlDY200NG9NaHlzYU5q?=
 =?utf-8?B?MC9WTkpZN1hSM2loUDhkZFpWRFNHZHdhME5nQ3lBRWF1d29qU2t3S0MvQWo3?=
 =?utf-8?B?WkxNVXgvblIyL3U4OWtZeU41a1FEdVpkVWErUytIUWs0alRQbEpkcHVRZVQr?=
 =?utf-8?B?QS9EK25LdE5GbU9oaklVSU5IdHhicXFxRDFpTVRydklBTnZFL0FPWGswamVP?=
 =?utf-8?B?SGhobDlBNkN3T3RrWVpsTVBVMDlNWmMwaGkvVFNpcXBleUQyN1NoZVJpb0l5?=
 =?utf-8?B?Sk9IL0Q4ZjZFNFJQeE9LSTVKWHVoWGVaSko4Y1VhK01aQm16MjZXOTFVbERn?=
 =?utf-8?B?SHkvMVNjOG5BTXJGTUpoalFIVEc2L0h0NzY2VTZIWmFLMVM2SlY1THkzeEhw?=
 =?utf-8?B?VXhPQzNzbFhaSUQ5WTRhZGM4b3k0d2dsaTZxbVdHTzZvNG54b1RRV285MDdN?=
 =?utf-8?B?VHNySklaZ3RJU0NuZlFrNVREMk1lSVh3OTFRL1B6Nzkya0FYekFQSUV4R3pE?=
 =?utf-8?B?VHJ6OXVGcG91ZTN3QXZKc0wycFZDMnI1TzVpYWx6d3IyK2o2MmJ5TUFVUU9D?=
 =?utf-8?B?MXFYbmNmWnRtWm43SmppNGhyRm5yRGpBSHBHOUpsUFo1eVFtMk9aTE9tSXcy?=
 =?utf-8?B?eFc4Ym56NXFoNlFIUGloSXpQSEYrUldDWTRxdUwzdG9IU2ErQkN4S3NVMGNV?=
 =?utf-8?B?a1VkZitUMng1dFJqdnBBVk02MGVNMjVIK004YnAvVCtmYXNFZUtmOHdkZktN?=
 =?utf-8?B?TnZBUW1IZlNNeGxVK2hNVHFDb1RwRDJRMnhTLytyK2JYeFJDbUxIWUsvbkJO?=
 =?utf-8?B?Z012VzI0SWp3cElCTFlOUUpvR0tPUnZRYitzWCtwNGFXODlDeXR5eWU2VzdW?=
 =?utf-8?B?NUsycmNKQVhVRWZyZ0dGN2JjQ0tSUXNYMGpBZFNSR0hMY2tSMDJDSk1ZQlZa?=
 =?utf-8?B?TTZZL2wwUmFtWTROMEtUdDUxK0pubHlDWm1aamxwaU9RZVZwamo5UWVKV2FR?=
 =?utf-8?B?bkcwdmJJNlRPclVXeGhWQ1BEaE1pWDhxcnQ2SG14QlA4NHkveTlSc2FnT1Az?=
 =?utf-8?B?Zjh4b3ZKcE82dkNqZmRVdjNlSGJDMWFyVXhJUlF4ZGt4VXJYQjhWaUxvc2ZT?=
 =?utf-8?B?dHV3dWJTOVVIb1pNQTFBRVdJcHVadlRFVitRMEpmZkE4ZGRvWUVqb25oMmpT?=
 =?utf-8?B?VUk0dDZGazBkVE8xZXRCVllMdk1odm5JMXRYZWpUOWxRVjM2Z2RULytaTWRy?=
 =?utf-8?B?UE1WbDZLc2tlaGFtUmM1Qm1pUk9INmw4OWZYY0ljY0Q1anUzOE1wdzBRbGdV?=
 =?utf-8?B?YzJMZjQvZVVxaC9BSkFVV1lNeG82dzhFYmxrSDFNV2c1ajNKRlAwaWV2dVh1?=
 =?utf-8?B?QVFDMUNpRy9nOXVsUVA4WG5pOEJoMVVZTFhkOWVyZ2Z4MHFZZWNYbEdCaE93?=
 =?utf-8?B?MWFpMFhiWWt1NVN1dllaSkY4UDc0azBFcDZScW41cmJNZzQrTHkwMURkb05q?=
 =?utf-8?B?UUdSWUVUbFp6cGVlWEV5RXZ2dGlqUGpDNDdLTHUxa2I2SlBqNEc2RmNGQmla?=
 =?utf-8?B?RlpTR3k2bjlrN0lBVXdXa25jKzl1ZGRrNVdGaWtMd2ZRZmZ6Y1N4TE85WFZR?=
 =?utf-8?B?em1yU085VEtTaTJFR2gzY1pKR0pVWm9XV0dGS1ZYUmFRK2dLN3N4eis4MUFh?=
 =?utf-8?B?elc4dlM3Q3BxZzJkUDlkTGZ5SDJNbTNqU1cwcUxJUmVZWEVWU05YbStYZVZ2?=
 =?utf-8?B?eHc9PQ==?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 0537a335-1b15-4eed-af01-08db3684bfa6
X-MS-Exchange-CrossTenant-AuthSource: DM4PR11MB5341.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 06 Apr 2023 09:53:18.5815 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: MZpfrWlmw7yEf3e7aDPCFPaimJVCzvqchuw6j1kThPJUiIERxQBgZC9K/M/ao5RDl4GCB+ui0rQabvBueK8nUrKIGnXgVqacSNAIeaScb3E=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SJ0PR11MB6576
X-OriginatorOrg: intel.com
Subject: Re: [Intel-gfx] [PATCH 11/12] drm/i915: Hook up csc into state
 checker
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

On 3/29/2023 7:20 PM, Ville Syrjala wrote:
> From: Ville Syrjälä <ville.syrjala@linux.intel.com>
>
> Have the state checker validate that the csc matrices
> look correct when read back from the hardware.
>
> Signed-off-by: Ville Syrjälä <ville.syrjala@linux.intel.com>
> ---
>   drivers/gpu/drm/i915/display/intel_display.c | 21 ++++++++++++++++++++
>   1 file changed, 21 insertions(+)
>
> diff --git a/drivers/gpu/drm/i915/display/intel_display.c b/drivers/gpu/drm/i915/display/intel_display.c
> index aa22241c971c..763f7fdfb27c 100644
> --- a/drivers/gpu/drm/i915/display/intel_display.c
> +++ b/drivers/gpu/drm/i915/display/intel_display.c
> @@ -5643,6 +5643,24 @@ intel_pipe_config_compare(const struct intel_crtc_state *current_config,
>   	} \
>   } while (0)
>   
> +#define PIPE_CONF_CHECK_CSC(name) do { \
> +	PIPE_CONF_CHECK_X(name.preoff[0]); \
> +	PIPE_CONF_CHECK_X(name.preoff[1]); \
> +	PIPE_CONF_CHECK_X(name.preoff[2]); \
> +	PIPE_CONF_CHECK_X(name.coeff[0]); \
> +	PIPE_CONF_CHECK_X(name.coeff[1]); \
> +	PIPE_CONF_CHECK_X(name.coeff[2]); \
> +	PIPE_CONF_CHECK_X(name.coeff[3]); \
> +	PIPE_CONF_CHECK_X(name.coeff[4]); \
> +	PIPE_CONF_CHECK_X(name.coeff[5]); \
> +	PIPE_CONF_CHECK_X(name.coeff[6]); \
> +	PIPE_CONF_CHECK_X(name.coeff[7]); \
> +	PIPE_CONF_CHECK_X(name.coeff[8]); \
> +	PIPE_CONF_CHECK_X(name.postoff[0]); \
> +	PIPE_CONF_CHECK_X(name.postoff[1]); \
> +	PIPE_CONF_CHECK_X(name.postoff[2]); \
> +} while (0)
> +
>   #define PIPE_CONF_QUIRK(quirk) \
>   	((current_config->quirks | pipe_config->quirks) & (quirk))
>   
> @@ -5740,6 +5758,9 @@ intel_pipe_config_compare(const struct intel_crtc_state *current_config,
>   		PIPE_CONF_CHECK_COLOR_LUT(pre_csc_lut, true);
>   		PIPE_CONF_CHECK_COLOR_LUT(post_csc_lut, false);
>   
> +		PIPE_CONF_CHECK_CSC(csc);
> +		PIPE_CONF_CHECK_CSC(output_csc);
> +
>   		if (current_config->active_planes) {
>   			PIPE_CONF_CHECK_BOOL(has_psr);
>   			PIPE_CONF_CHECK_BOOL(has_psr2);
