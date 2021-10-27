Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id A669743C369
	for <lists+intel-gfx@lfdr.de>; Wed, 27 Oct 2021 08:59:46 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id E59536E52E;
	Wed, 27 Oct 2021 06:59:44 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga07.intel.com (mga07.intel.com [134.134.136.100])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 563DD6E52E
 for <intel-gfx@lists.freedesktop.org>; Wed, 27 Oct 2021 06:59:43 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6200,9189,10149"; a="293551798"
X-IronPort-AV: E=Sophos;i="5.87,186,1631602800"; d="scan'208";a="293551798"
Received: from orsmga003.jf.intel.com ([10.7.209.27])
 by orsmga105.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 26 Oct 2021 23:59:42 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.87,186,1631602800"; d="scan'208";a="447422256"
Received: from fmsmsx606.amr.corp.intel.com ([10.18.126.86])
 by orsmga003.jf.intel.com with ESMTP; 26 Oct 2021 23:59:42 -0700
Received: from fmsmsx607.amr.corp.intel.com (10.18.126.87) by
 fmsmsx606.amr.corp.intel.com (10.18.126.86) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2242.12; Tue, 26 Oct 2021 23:59:41 -0700
Received: from fmsmsx605.amr.corp.intel.com (10.18.126.85) by
 fmsmsx607.amr.corp.intel.com (10.18.126.87) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2242.12; Tue, 26 Oct 2021 23:59:40 -0700
Received: from fmsedg602.ED.cps.intel.com (10.1.192.136) by
 fmsmsx605.amr.corp.intel.com (10.18.126.85) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2242.12 via Frontend Transport; Tue, 26 Oct 2021 23:59:40 -0700
Received: from NAM11-BN8-obe.outbound.protection.outlook.com (104.47.58.174)
 by edgegateway.intel.com (192.55.55.71) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2242.12; Tue, 26 Oct 2021 23:59:40 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=P0F9wRjG4Kg8dyqbbuPJ1NWVFY0j7fh7uI9ATpuP2C+hrv+u/nrR66naL1lXnuT5P5C3YPKln765w+SyoJciZMf05nHBBiv6ojfq5v0T43DwTE5sTwWg+TxSJbz4UUzinRXI1c2vJCGpLeizP/w6PU16ChK4BxBILWMzgA05ULLPIwGExzsMndaV4Ya+e++fpIOUOL+e3VKZHfRWMj6ugrL08vrOrmlwk/mh1RaJiF0/ez4bV/lTLZ1Gi23OfTfX0fS8xuASGYnGHx96MBpjVfBRVzrcKeu7P3+IgUVlgs2o1sJwe3SEkVTuUDN8CfHYVJpnc3g89h3wAlnADszPzw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=sLwCUWFVEc5JtdrhPoZdm88FXoZMECg8fuey8ikOwi0=;
 b=e2kApA6Mx/Vv9sfqSsqGnlvoJl971RTSYudtj/a7TssYxtVEFu26w52drzbQrlZLL+pWHB0bIzAMvwfXe/gtAS8GcPKK4HpavIiF2m/WYK6IDfRnop6kDMU4IMsM+gTgm/+s0rfX3eTAiMem6vjbL6wyQmq3N3hiAEJ632/fJ3pbcqJc+084l6KCvk4ye9vcH0bwAcc5d7Z1RkLRL3lPcsQbABv/0kBjhkcdvuZB+ZU2oicqVQFY9JtLTyWc1g8uEadve3uSqCDnx/s4+qunbX6a/SlezwGEFtpY8ub1RKtrRHnwY03euNyuM1mCwMkY3zLKiUw5jXBwsvb8/xgkxg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=intel.onmicrosoft.com; 
 s=selector2-intel-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=sLwCUWFVEc5JtdrhPoZdm88FXoZMECg8fuey8ikOwi0=;
 b=JouV3vKsxDj+AY+X/JZY/cY3TcaGkfPhHnwhuNzwU0VIfCYI4j21RMcXPyVMa21eMjyQAcBt+mAz/yNU4/Q6hOo/1UYc5oov+YLUjmbCqyC8k81vKO0JvvbgYtt3z8qBSzPXCuU7tS4eK5aNf81VbhoPEx5Fb1IMpCNj20rEJgo=
Authentication-Results: linux.intel.com; dkim=none (message not signed)
 header.d=none;linux.intel.com; dmarc=none action=none header.from=intel.com;
Received: from DM4PR11MB5501.namprd11.prod.outlook.com (2603:10b6:5:39d::23)
 by DM6PR11MB4395.namprd11.prod.outlook.com (2603:10b6:5:1de::10) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.4628.20; Wed, 27 Oct
 2021 06:59:38 +0000
Received: from DM4PR11MB5501.namprd11.prod.outlook.com
 ([fe80::389d:c727:c71d:d869]) by DM4PR11MB5501.namprd11.prod.outlook.com
 ([fe80::389d:c727:c71d:d869%3]) with mapi id 15.20.4628.020; Wed, 27 Oct 2021
 06:59:38 +0000
Message-ID: <27699d5c-0676-2c9f-c477-251d693eb68b@intel.com>
Date: Wed, 27 Oct 2021 12:29:29 +0530
User-Agent: Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:91.0) Gecko/20100101
 Firefox/91.0 Thunderbird/91.2.0
Content-Language: en-US
To: Ville Syrjala <ville.syrjala@linux.intel.com>,
 <intel-gfx@lists.freedesktop.org>
References: <20211015133921.4609-1-ville.syrjala@linux.intel.com>
From: "Nautiyal, Ankit K" <ankit.k.nautiyal@intel.com>
In-Reply-To: <20211015133921.4609-1-ville.syrjala@linux.intel.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 8bit
X-ClientProxiedBy: PN1PR01CA0071.INDPRD01.PROD.OUTLOOK.COM
 (2603:1096:c00:1::11) To DM4PR11MB5501.namprd11.prod.outlook.com
 (2603:10b6:5:39d::23)
MIME-Version: 1.0
Received: from [192.168.0.113] (49.207.211.197) by
 PN1PR01CA0071.INDPRD01.PROD.OUTLOOK.COM (2603:1096:c00:1::11) with Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.4628.18 via Frontend Transport; Wed, 27 Oct 2021 06:59:37 +0000
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-Correlation-Id: bfbc0f70-f261-4eec-9e48-08d9991757b1
X-MS-TrafficTypeDiagnostic: DM6PR11MB4395:
X-Microsoft-Antispam-PRVS: <DM6PR11MB4395C1796F06A3839000430ACE859@DM6PR11MB4395.namprd11.prod.outlook.com>
X-MS-Oob-TLC-OOBClassifiers: OLM:6790;
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: oqOZcdZINuDe5D16Fwm4+YpGGuEYHYRVZGeiMW3GoM5poSD+wskPLJuaYI6UbRtLoUTIrE8Mx+fsIQdB7PcM1UCHlH9o+EPVJhGomr+3VXcSfH75WjztLuxSaOosY/wdVzySPZ2kGeWwEditier4a9U7hrdCqaIgIk8jCpZ8zfgbiCiPU5jh9z923GPZ8YI+Rpzb0wNCJ9oEQGt/hngQso/M7UXsTsUb82C6JS1SDKWX80lCcLEuEoxJu/yG9KxNLlSzsLx2KO8tSG6tTT96A+Z8Dmy86LGErYG9aIIqI0+Oy70aKoJh4woIAlm4yuGF4/PyTUrP5LhHbgNxpyixPIjHq0qKSF4iquR0xYHVMGrDb3G4W7zb9XY72WRf1t/wt9LOhWex4ltKe9elW0xStwOj/vVbFjBb6d1ETg4exlGctZLBvikpDRyZ2R41u6lWxJJ8cI1mE6rn0MjpMM9qxrRfI7dBKXrIDFS4Ap0lxART3VyskPXUf/e4yZoyw5iqBvLLjjjShfrBc1Be0Fk4hGNeu9JPJ0UHcDOpdK+1becLYMxQ7j1OzKeI1+nNBpxvJlbvZ73Xi1Anp8bf6vxIm55EJUtSJmOBJpMoSruIdgK49lFNP+A4/8MJGSeFF5cqkHP+hnGIRRDyddoWjficFVWHdcxkMHDPugYQyeeLSTGIsMHqUydBfKhWt9HlbNymyOGvEjQm6rcAF+q758tJfrG0OePOrmjaa5C1D5uBAEY=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM4PR11MB5501.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(366004)(1006002)(83380400001)(86362001)(6666004)(66574015)(966005)(6486002)(16576012)(38100700002)(8676002)(31696002)(8936002)(508600001)(316002)(5660300002)(186003)(36756003)(82960400001)(956004)(26005)(53546011)(2616005)(66946007)(2906002)(55236004)(66476007)(66556008)(31686004)(43740500002)(45980500001);
 DIR:OUT; SFP:1102; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?YXNwNVNmVVM2VklmVU03eXgzTFNlRFhYQjM5TE03TGFFQXkwdFU1Ni9VRUxm?=
 =?utf-8?B?YUV1RStiMnZmSHBMY3ZWRjZoQzEzb2ZCcUg2M1M4Ylg5Q1J0UXQ1MEJFcUZW?=
 =?utf-8?B?WXM3VkFSc0JwQ2hDR2k2Tm9yek91dWFJZm9BanA5TW9pYldRZ3k4MlJZQWUv?=
 =?utf-8?B?M0RtdUQveDFCOTZ0b1p3a0tOK2lPYlRxRmVmTEJqK3lWSVh2MWY2MWVvT0lx?=
 =?utf-8?B?K0MrMThIOFdscUpnRWlLSjNGYXBlaU5GZzQ4d1FYSGM5ZzE2bjVRWEJzQ3BL?=
 =?utf-8?B?UjFPSS9ZOGRwL2FYR08ycWsrNVIzUTJyTjVtdUpsTVlHb0kvWXNTNlgzb1Nz?=
 =?utf-8?B?bnhRTWJTNVp1RkFYd3ZQdG9qaURwWTd1K1p1eTQrK3ZlMVpTS0ZPMlE5L2ky?=
 =?utf-8?B?Z1NKUXNDNEZtaWxRMDJvQVZsQm9jK3l4d2RkVE9STlkxd2orYkRVWGUwQUJl?=
 =?utf-8?B?N3FVa3pVN0w3d0hac01KTnN2ZGJRM244NUFjT2lCckwyN1lOZzhVNERpUmYv?=
 =?utf-8?B?UGJPMlRVUmdIcHdtN24xUlIrWksyWUFIWUx4eUZ4VzF3S21HUjFqZVE0ekZI?=
 =?utf-8?B?bW9tZjlGakt1UXhrcVpiKzVBMDVWeTM3aUJISldhNFE0ZmFKOExvWkQ2Mmo2?=
 =?utf-8?B?UjBGcVB3cTZud3lhQm1OU2thTFROazVZdmFQSTlEKzlBV0JXeGJ1NUF2b3Bv?=
 =?utf-8?B?cUNvbjNnUXBLR25qZ01BVFVCMUJnTjRoTlBiRzJPb3MzUUU3THdSVDhHc1Y5?=
 =?utf-8?B?YkFCS1l3cTVnajlzVGdMSi9qZE9sNXdyVGQzdWdadEdFcEdLV3VkcGlMRTFX?=
 =?utf-8?B?endQZ1ptU1paS0lYQWZrV1B6K0x1Q3hVWWpYT2JnMDRGeTRGTENKK0FudlpV?=
 =?utf-8?B?azRVOFE1SjM0UDlMV3V5Zm9NQ0xvQWt2ZndqU0NidVlkMGZaNmRKU1FWU0VP?=
 =?utf-8?B?MUVySGxKYklVanFIckovODI1Sm1vTy9tTDZwM1dzbTJtRHE3a0w5cGtaeVln?=
 =?utf-8?B?a2p0OThyQ0U3NmZKZjA5VnVlRW11NmNzV2lVbU5nVWRGK3RLMGRURDdqYU1z?=
 =?utf-8?B?T0syZzgrZHhISTFVdnVXUTFxQjFnV2RuZWRHYUwrd2tpdFd2Q1MxN0FQejU0?=
 =?utf-8?B?NXVZYi9FcXNybWR5VEpHajFmMUJISk90UE43bVFOaEFuc2lWK25xbStCcU04?=
 =?utf-8?B?bkRyeXk5MjYvMUIyUEFIQS9BYzhITS9WNnBnY3F6TmRrSG8rSFJha2FRMHdZ?=
 =?utf-8?B?TVNxKzE5WmNPcVhhQXJIZE1RNW1jSVJLVVFRSmd3bnh4Sjl3Y3FtcktseXBm?=
 =?utf-8?B?aS9OWTVlem5KTVo3Q2ZHQTQ4bmcvR1dUMGNZa0dybXArWjhNQ1QvVjBITHI3?=
 =?utf-8?B?dk5YVHA2bnhVOXNLeTN4d214bFNKMnVlZjN0eWpLQ1g3cE1CbDNNUnY0THo2?=
 =?utf-8?B?b0hjS2todjdTOFB2cUdCMUNJMWxFbVFjbTVqM2c2dmZRdHY2TjljY3A1bVpz?=
 =?utf-8?B?MEI4cnN3RHJXUlY1L0c5WlFsajIxSmMzZStINnVWYVBodVVGS1ZSYWxrWTZM?=
 =?utf-8?B?b3pQN2dGT1FlRXczaEtMdHlRNm1odFM4U0MzcmNBbnB4MENWS3lkQmVtYlFM?=
 =?utf-8?B?YnEwZkZGUkdMTTlabHJNTUxabnNVUU9mZmhjdFhFS2hLY1RUeUxTY3BFNlJM?=
 =?utf-8?B?RWZJd0V1RTUreUtzQW9vazZpK1VJaFdnMHliSDgrNUVJSlRCU1hjNHJxUFAv?=
 =?utf-8?B?NVRPTi93V0hINXNUNTd3V3JTU3gvN0l2NC9hNUZpY1hiSlBiMTNpWU1OSUlh?=
 =?utf-8?B?QVJmQnNqdWQySEFwVVZ4bktiSThLczk2bHR3aUV4czNUR0FKSlk1SExxZ0cz?=
 =?utf-8?B?ZzBmOHZMM3hVZ1RTcm1WUXJwaFpWMkdsSnJSUDQ2eHI1WjhZWUxwakczajIw?=
 =?utf-8?B?NitRVjFnT1ZTei8yTlUwZXFWbWxBVFBrYlpPN1dGaDJmcW9WcFJUTSttZjg3?=
 =?utf-8?B?akk0SXUxbERZSmN6dlkyQ3JkWmFKQk1zNEFPM2xCRk9wMTFQdGlHWnVncWY5?=
 =?utf-8?B?bGZvSDVpZldUcXp5TlFuUnBab2ZrazhxelcyNWdSWkw1bkFVUXltNzJ6aTIy?=
 =?utf-8?B?ZnoyNW9hVWNqeWdaeU5ESkNteHpUT0wzUDE1aGxyUy9LUk9JN1ZNR1B4Wjhi?=
 =?utf-8?B?clFxUFE3Z1lFMzR6NG9BOHNyazRYQlRHSkhKaGpvM0ZHNDkzVytSNTlHcEJm?=
 =?utf-8?Q?fSm5zOiCgIZgUTUcRqtK3ysn9pPEwIRP8FKMbUbQwY=3D?=
X-MS-Exchange-CrossTenant-Network-Message-Id: bfbc0f70-f261-4eec-9e48-08d9991757b1
X-MS-Exchange-CrossTenant-AuthSource: DM4PR11MB5501.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 27 Oct 2021 06:59:38.8422 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: /Q04EH5qtXs0VJvdeYnMz9XVzv4gX0QcknqdmFevJanuG6vle7sLGf5GsQh3ZOqIMWAUNisXSsZFy450vBwf5BUkgfjJjjuv7rlT+bdS2uI=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DM6PR11MB4395
X-OriginatorOrg: intel.com
Subject: Re: [Intel-gfx] [PATCH 00/20] drm/i915: Fix up DP DFP 4:2:0
 handling more
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

Hi Ville,

Thanks for the patch and getting a unified approach for DP, HDMI and DFP 
for YCbCr420 output.

I am trying to have 8k@60 YUV420 via an HDMI2.1 PCON, without having to 
use PCONs Color conversion capability,

but running into different issues, and failing miserably. I think this 
patch series will help get there.

There are a couple of queries and suggestions I have regarding the big 
joiner and DSC, which I'll reply to the patches.

I will also try to test these on the setup I have available.

Thanks & Regards,

Ankit

On 10/15/2021 7:09 PM, Ville Syrjala wrote:
> From: Ville Syrjälä <ville.syrjala@linux.intel.com>
>
> Currently we're failing to respect the sink's max TMDS clock
> in the DP HDMI DFP code, and exceeding them means the sink
> won't show a picture [1]. So let's improve the situation by
> checking those limits, and generally fixing up a bunch things
> in the deep color/4:2:0 related stuff for both native HDMI
> and DP HDMI DFPs.
>
> The end result is fairly unified apporach to this stuff on
> both sides of the aisle. There's probably more we could try
> to abstract to share even more code. But that will need a lot
> of actual thought so leave it for later.
>
> The high level algorithm is basically now:
> for_each(respect TMDS clock limits, disrespect TMDS clock limits)
> 	for_each(YCbCr 4:2:0 only, RGB 4:4:4, YCbCr 4:2:0 also)
> 		for_each(12bpc,10bpc,8bpc)
> 			compute_and_check_the_things
> with some obvious tweaks for HDMI vs. DP specifics.
>
> [1] https://gitlab.freedesktop.org/drm/intel/-/issues/4095
>
> Ville Syrjälä (20):
>    drm/i915/hdmi: Split intel_hdmi_bpc_possible() to source vs. sink pair
>    drm/i915/hdmi: Introduce intel_hdmi_is_ycbr420()
>    drm/i915/hdmi: Introduce intel_hdmi_tmds_clock()
>    drm/i915/hdmi: Unify "4:2:0 also" logic between .mode_valid() and
>      .compute_config()
>    drm/i915/hdmi: Extract intel_hdmi_output_format()
>    drm/i915/hdmi: Clean up TMDS clock limit exceeding user mode handling
>    drm/i915/hdmi: Simplify intel_hdmi_mode_clock_valid()
>    drm/i915/dp: Reuse intel_hdmi_tmds_clock()
>    drm/i915/dp: Extract intel_dp_tmds_clock_valid()
>    drm/i915/dp: Respect the sink's max TMDS clock when dealing with
>      DP->HDMI DFPs
>    drm/i915/dp: Extract intel_dp_has_audio()
>    drm/i915/dp: s/intel_dp_hdmi_ycbcr420/intel_dp_is_ycbcr420/
>    drm/i915/dp: Reorder intel_dp_compute_config() a bit
>    drm/i915/dp: Pass around intel_connector rather than drm_connector
>    drm/i915/dp: Make intel_dp_output_format() usable for "4:2:0 also"
>      modes
>    drm/i915/dp: Rework HDMI DFP TMDS clock handling
>    drm/i915/dp: Add support for "4:2:0 also" modes for DP
>    drm/i915/dp: Duplicate native HDMI TMDS clock limit handling for DP
>      HDMI DFPs
>    drm/i915/dp: Fix DFP rgb->ycbcr conversion matrix
>    drm/i915/dp: Disable DFP RGB->YCbCr conversion for now
>
>   drivers/gpu/drm/i915/display/intel_dp.c   | 339 +++++++++++++---------
>   drivers/gpu/drm/i915/display/intel_hdmi.c | 220 ++++++++------
>   drivers/gpu/drm/i915/display/intel_hdmi.h |   5 +-
>   3 files changed, 342 insertions(+), 222 deletions(-)
>
