Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 597C469A888
	for <lists+intel-gfx@lfdr.de>; Fri, 17 Feb 2023 10:46:17 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 9936210E1CA;
	Fri, 17 Feb 2023 09:46:15 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga18.intel.com (mga18.intel.com [134.134.136.126])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 6AE4910E1CA
 for <intel-gfx@lists.freedesktop.org>; Fri, 17 Feb 2023 09:46:12 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1676627172; x=1708163172;
 h=message-id:date:subject:to:references:from:in-reply-to:
 content-transfer-encoding:mime-version;
 bh=Z/oqRbAJtQA6WngkvxbqHgneuJgxpIghI2pr26QL8KU=;
 b=CZ8NVkw68a5IgHo5mvBJfYhhKTSIzLcdyHbCYFicyKd5yRfnY1DHinVK
 afUNnBznGhysYJaIuou3jH69B+eLGGempVtU6mg3RMR6luoC7LGvdg9A1
 tmEgjTHpHx0bd9rOCAIOf/zJNN+EpKEyxt3BJ+MCYHI5ow2w3G00gzorZ
 TcM1mVSJZsNFdd3wkBFrJzP43hvClNd0qVCiynAVhrN54+gklXXURUgKK
 OGQqOC/hTwGnXpKE8gHbe1L2xyEJEGVlLYvNK7te+Xf3BQwyczOgaz31J
 tonCbhX9WWBzgSUzIKy5v+Ro7rblwCx5BwC/7u9zuH/OIKnFbykwRdFrB g==;
X-IronPort-AV: E=McAfee;i="6500,9779,10623"; a="315667077"
X-IronPort-AV: E=Sophos;i="5.97,304,1669104000"; d="scan'208";a="315667077"
Received: from fmsmga004.fm.intel.com ([10.253.24.48])
 by orsmga106.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 17 Feb 2023 01:46:11 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6500,9779,10623"; a="739210768"
X-IronPort-AV: E=Sophos;i="5.97,304,1669104000"; d="scan'208";a="739210768"
Received: from fmsmsx603.amr.corp.intel.com ([10.18.126.83])
 by fmsmga004.fm.intel.com with ESMTP; 17 Feb 2023 01:46:11 -0800
Received: from fmsmsx612.amr.corp.intel.com (10.18.126.92) by
 fmsmsx603.amr.corp.intel.com (10.18.126.83) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.16; Fri, 17 Feb 2023 01:46:11 -0800
Received: from FMSEDG603.ED.cps.intel.com (10.1.192.133) by
 fmsmsx612.amr.corp.intel.com (10.18.126.92) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.16 via Frontend Transport; Fri, 17 Feb 2023 01:46:11 -0800
Received: from NAM11-DM6-obe.outbound.protection.outlook.com (104.47.57.176)
 by edgegateway.intel.com (192.55.55.68) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.16; Fri, 17 Feb 2023 01:46:10 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=hqFykMxN5OW/hAenUJQjsmljxio9X0G9hVolDhZ8rLXRPyd8J2o0CeFTX8FOcKyJvlsU6SyRDugBAB4RxQIi+7Zbl3soQy9H+1H/AJ++v3JO2sh4M1R2gmmtqTFBf+oix8O28wJmBafq3DkKpFj0E/L2iNCDAnZY9QHAKMnWOacJlTaUJu9Uh7iOSYlPNf7UUIxXMMrsfz2KDtY8RjRBR4jjFYcgepVP4Nz+8mbRAcZIy3WbHsQBUxTgmekeCb5Yq3fmDL4bLWNRt1AIRk1TA8zE2QuUFGKplF0psnStDUsG6vOC78mGf0rVfjkDTQIDYlG47BpfUyNeF52Qitr6bg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=4fiUQD9sGjK1Io+kb7NlZvCxbdwAebPreGEUF0ry57U=;
 b=JwHsv8zEIXjzq+PgHIhkCIOfqpMwMvxSrxSzMwU/sdZ4BxgGVnbNeqfqGstNhdiAzRYGPri5CvxdaKoRl7RxEcwefaj6O+LnnxCZ7HLZ/CdJsl4RotjGW4nPHkGrrW4bDDS1FpC/M+YVjlVhR+A6EBdalqu6a/MPo5Fjegj/JlfrQUywM01IDT8Re9VRjn58TZe4fM+pV1jXwdV9CVEHiSqktXiQ+7jlLdww9dsmRKqqnRphElicAaSBVxOD/L/euoetdkFHZnwAMG1GpBJpHW8svht7BNmowYogX+NG1y253mNsxdcxoyHf5IV3I8cpah7g0h1W0NkcwS34dDFZFA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from DM4PR11MB5341.namprd11.prod.outlook.com (2603:10b6:5:390::22)
 by PH7PR11MB6053.namprd11.prod.outlook.com (2603:10b6:510:1d1::8) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.6111.13; Fri, 17 Feb
 2023 09:46:09 +0000
Received: from DM4PR11MB5341.namprd11.prod.outlook.com
 ([fe80::a4d:71cf:e6bb:6942]) by DM4PR11MB5341.namprd11.prod.outlook.com
 ([fe80::a4d:71cf:e6bb:6942%7]) with mapi id 15.20.6111.013; Fri, 17 Feb 2023
 09:46:09 +0000
Message-ID: <02f8d9ad-81bf-b176-4565-015dec53442e@intel.com>
Date: Fri, 17 Feb 2023 15:15:59 +0530
User-Agent: Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:102.0) Gecko/20100101
 Thunderbird/102.6.1
Content-Language: en-US
To: Ville Syrjala <ville.syrjala@linux.intel.com>,
 <intel-gfx@lists.freedesktop.org>
References: <20230216231312.32664-1-ville.syrjala@linux.intel.com>
 <20230216231312.32664-3-ville.syrjala@linux.intel.com>
From: "Nautiyal, Ankit K" <ankit.k.nautiyal@intel.com>
In-Reply-To: <20230216231312.32664-3-ville.syrjala@linux.intel.com>
Content-Type: text/plain; charset="UTF-8"; format=flowed
Content-Transfer-Encoding: 8bit
X-ClientProxiedBy: PN0PR01CA0017.INDPRD01.PROD.OUTLOOK.COM
 (2603:1096:c01:4f::22) To DM4PR11MB5341.namprd11.prod.outlook.com
 (2603:10b6:5:390::22)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: DM4PR11MB5341:EE_|PH7PR11MB6053:EE_
X-MS-Office365-Filtering-Correlation-Id: 3054e8a1-0c7b-4d05-86ca-08db10cbcb8d
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: Hw67pA67CmecWlmz2kn/aMCAnKr8scVxjHNu4+m6VitDp9fjvGBmT8POauDiVcF2hJOInjp/p6zhVxEcQO8sjvL3nnW/qndhRg+JWMaGzZmlpziGXbUp6mLC2w8+2Mxw+n9BhxO/++AJ6nIy2X5jNRTVeltl7bk3okfx8LPJPcBOgvccq/5DBju0IoL9G11nQ3hmJHbWAZ7t13tr7XaSdrpgGCqyAhGH0sHTqIcwb55iQFW324Z0dcXrl65BbPRWcN/3Ri9tvoqXVKI+K5JdKHip9vx2/A9d1kLvv2/A/nlvJF8w9t0/dOsVlLkwNw+KAQQiQFjW/zWIeaawh4/NVd28GrqM8EVvjsroCIyH/IXvrTRDs2j31/ef3kN+Gr8qTc25yXS6cQgW45BNgqDH/4CS6pMjcEeEu5GVzne0Wdv2v0rVNGbZ7CJh7Z7B1/DfsMKII74Et7F/iYLyGAs1qhei3yEDFlVvtRK2btFVDWunQq1yfZMGlo3OyPMIKe0VfImzgwOD0SJcDs/1Gb6YCU4RsI5Ipo1XNU2zJD5e6GfvS/m4jDQnmq4rp1j95oUYilBlM4ChNRDpKTfVhcbubP+BUrtpTCKbmU8Ps/OZcaeRZl8yHemmxnstKY1hfeWWA+LzCHJmctvhtwaMlpBrZl6IybZ38qo6jIq+XnTTA8sMgXTz5IN/hXS15xnYTyIQXyJJ3HvVpT4498YnbaUHZfTgDIRByPO/J1F3JreJQek=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM4PR11MB5341.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230025)(396003)(39860400002)(346002)(376002)(136003)(366004)(451199018)(31686004)(31696002)(2906002)(66476007)(8676002)(66946007)(8936002)(82960400001)(5660300002)(66556008)(86362001)(38100700002)(36756003)(6666004)(478600001)(6486002)(316002)(6506007)(41300700001)(26005)(2616005)(66574015)(83380400001)(55236004)(6512007)(186003)(53546011)(45980500001)(43740500002);
 DIR:OUT; SFP:1102; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?S3lEM3pQYTVldWJET0RyZ0lvamtaOGVqZzNHeTJLSzRwMVNkTHZTZDlPT0Nl?=
 =?utf-8?B?aFBBeG12ZkdUREhWcjM1REs1TEEzVzV4Q2tScWh4WlFYSzNvZVhnc0hJeXIw?=
 =?utf-8?B?N2JRdVlhVjNaUHVZN1BIOWVuZXoxNG5nZkxlRVg4SE1VYzhJNzJpQnBGQXBz?=
 =?utf-8?B?bE1OZU5LbVZ1aEI1MEkyME9xWlN2dVB0NExsM0xDNDRLUzE5NGRIcXQ4b1dm?=
 =?utf-8?B?UWU5QkRGY3lxdGpGNkk2K1kvN01KSVpJemFRQTlwZkFUOUdIRExWRlA0MjNI?=
 =?utf-8?B?TTFNSjNSS1ZJdFhKa3VpaXIxK2prMy9rWktiNUEyQW5Vdm52VkxoNndNeGtP?=
 =?utf-8?B?MU1XYkRqRVFBekRRTVU4OGNSL0YxSWtGUWRKSklXN2hkbnpkQjVmRGs3Wkpx?=
 =?utf-8?B?d1cxbmVCSWxaSDVKQk9vb1h0eExuV1hrT2EyTVFMcmYzb0RRazdMRTdCRUZD?=
 =?utf-8?B?OGpHWVBKbzVkdGE2TE5GM01pKzlxRzczRTJmT0RMWlNUdzVCemxsUHJDakxD?=
 =?utf-8?B?UVh0NW85SUFnMmROQkVGendWYXlvN3FzOHJ2ZkxQN3hKRUhVdm5LdWc4aGNh?=
 =?utf-8?B?MGNPdHFzY2xHNkc0cjEyZlBqa3luV2VLNlZHYngvV21ocXR0NnFxc1lvdUJz?=
 =?utf-8?B?b0hjTzNUaVVJaHBITi9NU1pmVFV2SVQ4MXJOL1k3Sk94cXhseHJXbUUzOEkv?=
 =?utf-8?B?ckRSbXJRa0pMVStuc2liNG5QbnlJeTNOSzFZNHpmSzI4RWtMVll1RFYwbzMx?=
 =?utf-8?B?S1l0citmN05IMmhRcmNHdHE5dmwzdmpoUUoySTJKOFNwV09paityNmcxY1Zz?=
 =?utf-8?B?azUyVktTT052eUlYWm5OcmQ1cktGbG9nakxrUXZYTWsyZzgyVVFwMWtTYkxp?=
 =?utf-8?B?RDRLdkpZbUlySVhsQlROMW9qMlRqZFNoQ3hIUFFoV1NkTjJIVW42RGRZaWhk?=
 =?utf-8?B?RDlldThiZ0FGeVVUaFlQVUJ4VmxoOEF5MWdJS01VZDlvandGYjVVUUU2MEgw?=
 =?utf-8?B?WTJaV0lKdEpZckN4SVQzc0l6ekw1bUh3RG9UVVUybTkwd3ZQMzNBYjFFaDYr?=
 =?utf-8?B?OHZPdnRtVXptOHJlNkFUYTV0T1dqUjEzTEViU3hGcFhPb0JSY0g0bnB1NFl3?=
 =?utf-8?B?U1dqSjgyOGZkMmVqTGJHVjFvS2xjYVNmemtjZnllZWV6citWdlJ0UEVjVmQy?=
 =?utf-8?B?M2YrTmswbHE4RTlOaEQ1b2RPa094cDdMaUxpb1huSlA0ZW1adjM0L1VNWDRx?=
 =?utf-8?B?WDUzbm9WMjhjdjErTEJmaWRGc0NYbWpmV01ZUDh4THpQM05vVHMyZFZYRmp4?=
 =?utf-8?B?UWVJbGZNdG8yclYwcTFmVmo4VWdsOGMwdGYxZzEzcHBjb3A5ZGZlZTExMlJj?=
 =?utf-8?B?dE5rMms1M0RFZ2lwRnducTRGODUxRnpyTzRlUlFVNC9lbFJ2UWt5dEdkQlRB?=
 =?utf-8?B?WUxobkFGUlZkOGREeU5KNHFseTlHendMa2MzQmdiT0RmelZwd0NWYXJYR3Bl?=
 =?utf-8?B?RGlVcThWeEkwZmRlUmtPS0NBUDkzd2tsdEpjK3pwUWhoZERpQ0lSYXM2N0xj?=
 =?utf-8?B?ZTlRbS96cEFTbndmcGk0bmpMMmlpMGFCbElBci94RUEzRXZ1Y2kyTW53cVVp?=
 =?utf-8?B?OFdNZG04K1FNYlRlOFpnNFlORGJkUkFEVDR1TUVuVlNGeGVTaW5SMUNzVUYv?=
 =?utf-8?B?a1NSZ0RUMEFhNEdSVjJWL3lVd3Mzd0pYZ0s3T1NhYXJKQ2k4QVBtc1FvUU1E?=
 =?utf-8?B?T3l6aTNnQnlITGwwUGErQzBRVkdMMmh2TVVIRlB6YjRXVU1jL2tKQzMvcUFI?=
 =?utf-8?B?WFV2UEpTZHNrTUZ0UVFEZlBIaWFJbllNL2NyNklHbzBMbDVMZGlWRzBmZ0V4?=
 =?utf-8?B?RTNrV2xpTTdEOXowNFZhSWpCdnVPSDAwSmMrekx1RnQ1S3pTMFNVQVdUUTlP?=
 =?utf-8?B?cHdKNTFhMDdlV01uU0hPdW1aY2xlN0hWczJIeUlVKzdqVEFtVjRxdlFXazNX?=
 =?utf-8?B?MUJnUXlKZE4rSEgxR202RVZVZ0p4UFF2VGhvdFdVS0piT3NqSUxiWlEwaW1U?=
 =?utf-8?B?Tkpmb2thYlprSmx6bnF1Tnc0YUFodU5JWmx4MG5HMTdhSCtLWTI2cFBSL0R1?=
 =?utf-8?B?eHB4dlZQTStYbW50N3ZGSUJxaytnN1NsS2lNZ3RScHUwWk5KMlNWTFh4SVdk?=
 =?utf-8?B?VlE9PQ==?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 3054e8a1-0c7b-4d05-86ca-08db10cbcb8d
X-MS-Exchange-CrossTenant-AuthSource: DM4PR11MB5341.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 17 Feb 2023 09:46:08.6598 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: lSxmsY4m/rf4WOZKvl8acwC0gulrFvK0gSCjKwKEXcLyVm0a4HfrWA7NA+LZdKXlBpQ/jr6vy+KavbND/7VqUU2q8thNOX3QOiZWE6nBV2g=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: PH7PR11MB6053
X-OriginatorOrg: intel.com
Subject: Re: [Intel-gfx] [PATCH 3/4] drm/i915: Fix platform default aux ch
 for skl
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


On 2/17/2023 4:43 AM, Ville Syrjala wrote:
> From: Ville Syrjälä <ville.syrjala@linux.intel.com>
>
> SKL/derivatives have DDI E but no AUX E, so we need to pick
> another aux ch as the platform default. DDI E is more or less
> the other half of DDI A, so we pick AUX A.
>
> In all other cases we should have a corresponding aux ch for
> each DDI.
>
> Signed-off-by: Ville Syrjälä <ville.syrjala@linux.intel.com>
> ---
>   drivers/gpu/drm/i915/display/intel_dp_aux.c | 14 ++++++++++++--
>   1 file changed, 12 insertions(+), 2 deletions(-)
>
> diff --git a/drivers/gpu/drm/i915/display/intel_dp_aux.c b/drivers/gpu/drm/i915/display/intel_dp_aux.c
> index 57eb3ff187fa..96967e21c94c 100644
> --- a/drivers/gpu/drm/i915/display/intel_dp_aux.c
> +++ b/drivers/gpu/drm/i915/display/intel_dp_aux.c
> @@ -739,10 +739,20 @@ void intel_dp_aux_init(struct intel_dp *intel_dp)
>   	cpu_latency_qos_add_request(&intel_dp->pm_qos, PM_QOS_DEFAULT_VALUE);
>   }
>   
> +static enum aux_ch default_aux_ch(struct intel_encoder *encoder)
> +{
> +	struct drm_i915_private *i915 = to_i915(encoder->base.dev);
> +
> +	/* SKL has DDI E but no AUX E */
> +	if (DISPLAY_VER(i915) == 9 && encoder->port == PORT_E)
> +		return AUX_CH_A;
> +

I guess we might need to fix intel_dp_aux_init also. Wont we have 
dig_port->aux_ch and intel_dp->aux_ch pointing to different things?

For example for SKL and DDI E, intel_dp->aux.name will be derived from 
dig_port->aux_ch i.e. AUX_CH_A but intel_dp->aux_ctl/data reg will still 
point to DP_AUX_CH_CTL/DATA_E.

Am I missing something?

Regards,

Ankit


> +	return (enum aux_ch)encoder->port;
> +}
> +
>   enum aux_ch intel_dp_aux_ch(struct intel_encoder *encoder)
>   {
>   	struct drm_i915_private *i915 = to_i915(encoder->base.dev);
> -	enum port port = encoder->port;
>   	enum aux_ch aux_ch;
>   
>   	aux_ch = intel_bios_dp_aux_ch(encoder->devdata);
> @@ -753,7 +763,7 @@ enum aux_ch intel_dp_aux_ch(struct intel_encoder *encoder)
>   		return aux_ch;
>   	}
>   
> -	aux_ch = (enum aux_ch)port;
> +	aux_ch = default_aux_ch(encoder);
>   
>   	drm_dbg_kms(&i915->drm,
>   		    "[ENCODER:%d:%s] using AUX %c (platform default)\n",
