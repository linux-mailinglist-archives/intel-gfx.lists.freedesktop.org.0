Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id D11CD945281
	for <lists+intel-gfx@lfdr.de>; Thu,  1 Aug 2024 20:03:56 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 7631010E8F1;
	Thu,  1 Aug 2024 18:03:55 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="M3kOvlgS";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.10])
 by gabe.freedesktop.org (Postfix) with ESMTPS id DF5EC10E8F1;
 Thu,  1 Aug 2024 18:03:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1722535434; x=1754071434;
 h=content-transfer-encoding:in-reply-to:references:subject:
 from:cc:to:date:message-id:mime-version;
 bh=rHbesEiNFqkTdaYB1Hxtsn+UkltxreMm2etfTdNkh0Q=;
 b=M3kOvlgSWhZLFDYOHT5lIFrAqLowFsSDFt57zEhAh4/tKzKR/8X0GV1e
 hN+eOOIz3Nx+z2owyY+DGjUBSw2nysYdTPhXvolA7BaeYTh0VHMyu+KAt
 WLAEfw5wJwUNh6FEgWdhw3sYaVGK9zJegOcJxaPPalG5wLf9FinJsIf/B
 s0tvxPiCPOuTBS78hSMLWzBGoXEAM/e0p3hCIs1gfErePurKIWRzQ8H5h
 HjHeODSsdOGXX0Jq1++Z5ikaY7SlKwLJK0GtNsd8+MBozBWeb505OOcgQ
 UYm+gGV3dEB/LhAnuikAUGymS4Spm8Ib+PoKxe8NBHb5qyPnY5JVUsKzc w==;
X-CSE-ConnectionGUID: MXJSg9/VQQucSkfLLgfF+Q==
X-CSE-MsgGUID: zPQSezFSRUq4v+ielyXbKw==
X-IronPort-AV: E=McAfee;i="6700,10204,11151"; a="31917906"
X-IronPort-AV: E=Sophos;i="6.09,255,1716274800"; d="scan'208";a="31917906"
Received: from orviesa008.jf.intel.com ([10.64.159.148])
 by fmvoesa104.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 01 Aug 2024 11:03:53 -0700
X-CSE-ConnectionGUID: KWAoCHJeSYmHkhhKgRHJFQ==
X-CSE-MsgGUID: x7/+7Fp9SWOIdDta8xFVeQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.09,255,1716274800"; d="scan'208";a="55911537"
Received: from fmsmsx601.amr.corp.intel.com ([10.18.126.81])
 by orviesa008.jf.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 01 Aug 2024 11:03:54 -0700
Received: from fmsmsx610.amr.corp.intel.com (10.18.126.90) by
 fmsmsx601.amr.corp.intel.com (10.18.126.81) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39; Thu, 1 Aug 2024 11:03:52 -0700
Received: from FMSEDG603.ED.cps.intel.com (10.1.192.133) by
 fmsmsx610.amr.corp.intel.com (10.18.126.90) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39 via Frontend Transport; Thu, 1 Aug 2024 11:03:52 -0700
Received: from NAM11-DM6-obe.outbound.protection.outlook.com (104.47.57.168)
 by edgegateway.intel.com (192.55.55.68) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.39; Thu, 1 Aug 2024 11:03:52 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=PCrXVhoKuJnq0qjlyY+SxGY/Hl309Nnyu5Sh9n8CzzE3wByxn7+8VElOcX1n88g26Rmml1sV5xEBogudQRrjrLaBv7lfLu4V1FbkO9zSPu3wJt/Asw+yjsX1MNDTW2xDzGulME4ZN1UwoUQJa9DhR7KtKvuBmX9BqPXd10OLvHDZNGZQ8leTWb7/XnA/xv3wT057s8uiW8Xb/iKzxoecfSiwsv9F+OTm8y/lVLzHbcQua1pMMYZlYV/LLD3yGCJVtBN+1BCR8l4hURqaTo00ABs7H6uobMCPKlqQ2YLl8fmDOn2E1TsyUuqJftXkrNVJn7UkM2nugFnScLYkLvKniw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=HlNOABMCwKTkSH+XoZqvVzvj0Eq1EVkBi45LISEEL4I=;
 b=fNsU9MZdM0LNAY2LGN9uPuE0YkeiBZ4sbW3CfZDj02sRWs6rYFU0B92Z4RTRWTrvnszrRqaYfUvUJN9zoGIxYyMkpjSmTLuw0ig/IjmNbqVdvsuf+fwCF9RDsf+TXnJJNPDTBvB35ZDg2TMpT6fpRbntW6HYevV3yQWzAqUWiwtKqL+3DhTrDzFxjDKcFradVWLUCAnEKayn8oumv4ZmCfepnb34ZjGB8E8p6uEdOnL6Y6mj02vJ7lyeaf5yydEfPzSc0Ire06IggY2ob14UaD6mjECAcxE/3CazhlPF1w4Y+v1GagpDXwIYn+RabnkciMjMVbamlDsIPbkJb7Ym5w==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from PH8PR11MB8287.namprd11.prod.outlook.com (2603:10b6:510:1c7::14)
 by DS7PR11MB7834.namprd11.prod.outlook.com (2603:10b6:8:ed::11) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.7828.22; Thu, 1 Aug
 2024 18:03:39 +0000
Received: from PH8PR11MB8287.namprd11.prod.outlook.com
 ([fe80::7e8b:2e5:8ce4:2350]) by PH8PR11MB8287.namprd11.prod.outlook.com
 ([fe80::7e8b:2e5:8ce4:2350%4]) with mapi id 15.20.7828.023; Thu, 1 Aug 2024
 18:03:39 +0000
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: quoted-printable
In-Reply-To: <8fd1d38013e3778f40edc574aa135a08b6e0e51e.1722263308.git.jani.nikula@intel.com>
References: <cover.1722263308.git.jani.nikula@intel.com>
 <8fd1d38013e3778f40edc574aa135a08b6e0e51e.1722263308.git.jani.nikula@intel.com>
Subject: Re: [PATCH 08/10] drm/i915/hdcp: migrate away from kdev_to_i915() in
 bind/unbind
From: Gustavo Sousa <gustavo.sousa@intel.com>
CC: <jani.nikula@intel.com>
To: Jani Nikula <jani.nikula@intel.com>, <intel-gfx@lists.freedesktop.org>,
 <intel-xe@lists.freedesktop.org>
Date: Thu, 1 Aug 2024 15:03:34 -0300
Message-ID: <172253541462.5121.7749327690778320584@gjsousa-mobl2>
User-Agent: alot/0.10
X-ClientProxiedBy: MW4PR04CA0365.namprd04.prod.outlook.com
 (2603:10b6:303:81::10) To PH8PR11MB8287.namprd11.prod.outlook.com
 (2603:10b6:510:1c7::14)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: PH8PR11MB8287:EE_|DS7PR11MB7834:EE_
X-MS-Office365-Filtering-Correlation-Id: b7394601-b90a-41c9-0a3e-08dcb2544597
X-LD-Processed: 46c98d88-e344-4ed4-8496-4ed7712e255d,ExtAddr
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|376014|1800799024|366016;
X-Microsoft-Antispam-Message-Info: =?utf-8?B?T3ByWXAzYnI0T0tEWTNLaERYcDRFbzhoTEtuMTBvZ1VSb053cElTSGlXYk5r?=
 =?utf-8?B?Rm1yVi9sdEQrTG9BaEJ4OE80bnZvdkhtSk9oNFFsMkFwaklERmlRWW1HOHln?=
 =?utf-8?B?M3ZaYnNKSEJyQTlDYW1qenRFT3UweGV2bVdhbUJGakk0eTFFeGl3SDRkVU8v?=
 =?utf-8?B?U01qTThrVGgzMnFRSkh2TTBwYjdubjhKQ3hSamlwcjJQbm5CWkJKcnBSY2Fn?=
 =?utf-8?B?bXQzb2RSeitvQUVOaFRlKytoNk9CZE5TZzFoL0FmTFkxdWllWDdORTF6Szgr?=
 =?utf-8?B?Sm00dVJKZTF6bkxtN0dMWWcvSTNZb2ZhZHJTV2RTUVhEUUxxbFRlMUhUV0ND?=
 =?utf-8?B?N2FVeWxibUsvRXpmVnE5bk5kanAzYUl3MzJQQmk4SmZBTThQTWFjL1ZsK2hN?=
 =?utf-8?B?bUVhVWE3TW5NbXpUYkJxZVZNOHowVTA0a3Iybkxta0RkVlF6R09jbWgwMU5F?=
 =?utf-8?B?b1J2dDA3Q1dKVndIQ1A2Y1BWaERMSEd1UFJZbi9TSlF0enduaVhQOE45eUo1?=
 =?utf-8?B?OCtnOWlTRndwMXJjLzJQcERsWWpSN0VnUEdsRC9CWHN5aDhoTTJoQTRHUGNu?=
 =?utf-8?B?TS9EdjZHeFhPYklCeWllcFhKVHRMT0Q1NjZwakZQVmN3QmxHUzc0cW1TREd6?=
 =?utf-8?B?bzd1NXRQZ0llYUhMalZOMDZ2Vld0ZDhGL01KcjkySEhsRTZmNnV3UzFYRmVF?=
 =?utf-8?B?YnFDTmdZdFlvM0phamkvMWlNYklnRnJPMFRNdE5rVWtUZ21ldUxwNEg1YXd5?=
 =?utf-8?B?NkRzZ3R1WWl0MkFaR2hMNGJxU3J5dTYyUXM1UGVOSkE4YWRYTURJN0YxdUxZ?=
 =?utf-8?B?dnlVWUhqSlFrNFNsVGNYNEJqQnBQT0syUUU1S3J6aW5lVGswRGZlTWh4SXRa?=
 =?utf-8?B?R0pvN3F0ZGM5MFExNnJtcjk4b2JmazhvK0JQZzBNcnk0Q001ZHRyM0I4czlX?=
 =?utf-8?B?L250ODFMemxmVHkyNm55UWpZYThXMjQ5VU1XdFVSSmx0WDV5Y1BPaFYva2hN?=
 =?utf-8?B?ZkhYdG9BbWdtaUMxbkpQWC9MYXlKUmIzRjVyM3ptem9tMVZNdWpEZkY4MVlk?=
 =?utf-8?B?TmQzWjB2azFjSE9yRm1HWmlmR2hKZzZsdU1oSTIraTRHM2dObmNmY3dLdHB1?=
 =?utf-8?B?cjFyVlFQT3dsMHFIaEdiMkNiODl4eFpJdkZCa0lMcTg0aXBPSWk4cHVFRzlS?=
 =?utf-8?B?T3QwdHJhQmFueE9UcTQ2WVRya3JvSFRGcUthTG83S25QSDdyUURlbldkNHhP?=
 =?utf-8?B?VTQ2NHVNS0VGUUI1Tm8yTWg0MVExb1g0Mm9qd2F0Ymd3bVpvVVJIYUxMNkh4?=
 =?utf-8?B?a0pQOWRRZGpUSDdpcE5WMll4bnAyWFErc1hQRDZ2b0o2eCtQLzNDTVZDRXdn?=
 =?utf-8?B?L3JyaU9LZXA5YXNuWTBaM3N3bzhXUURJSEQzcEFFYitPUFN3YnJYaWtiZC9s?=
 =?utf-8?B?QWFzQWJBODRPRHJQTVFsbVIyVnhxek1kb0t4c3ZXV3JtU1FWcVhQdnE4a0Vk?=
 =?utf-8?B?aGtKR2dUcG1hQmVWWnFzWi9GRXJMcWZrZ3YwbUkyMC9TUzVSL3NYZ2xmRWNv?=
 =?utf-8?B?dGZuek5pNDZIUk1UNTdRZ2FpYzM0VmNHVm05Y2Nobk4rZGQ1b2pNMklYMjZi?=
 =?utf-8?B?aUdDWm4zMWdIUkcwRTJiVjV3WW8xY0lOQkpLU0tqWTNiNjhQZlZPckg0SS9a?=
 =?utf-8?B?L2dURkI3eFBOTjBZVUFLQ0lGNE5xMEN4YzJ0Nkd1ZEtvRGE5dU54S3QyV1ln?=
 =?utf-8?B?cm1ReEI4S0VCZmtVZHFrYXQwRkZFanMydHJtUnpiYWwxMjVtelp0SDNFVjN5?=
 =?utf-8?B?M1J1Z0JuRE9sTk4yQ1VxQT09?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:PH8PR11MB8287.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(376014)(1800799024)(366016); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?UFI3RDVTdTYyNHRxR0NtQ2llRitMazhlamM2TGMyU0EwZUY5azZGQ3lyTHFs?=
 =?utf-8?B?clFQdU1Kb2w4WEZBSm9kTWNpenFLelNBMG9PeHdRMEpKMHN0WXAvS1U4TmdF?=
 =?utf-8?B?V3FwZEkvZDB1eTN4UWVQR2hqbGZkRzFiek95SlBBdnRuWlpWVi9Ga3liY3B1?=
 =?utf-8?B?UkhhYnhxOFptZCtqN1ZZay9DOVg4c1BQam5oVFRXRkp6YlphWkxWOHBreEsw?=
 =?utf-8?B?UjNVWWQyUHBLcnZYdWtBckJOQU1KcWN3RDVpR25Cc3VGTFRub0grT3ZObUQ4?=
 =?utf-8?B?NVd6Y2VrOTJldkQ2SUtvdjFoeXdLZjZTK3cxOVExMDhlY3dqczBUeUZBQ1VD?=
 =?utf-8?B?RlhYN0dJSjBLb04zWnJvM3pTSndlQjUrSDR1SXlVbmxDaHBpUEg1M0Y4M1pB?=
 =?utf-8?B?Vmo2VFlqYjZzYnRVNk5SdThQQjhpRThmWmsvbU9VYmpsL1R5aGdLYmJEcXdU?=
 =?utf-8?B?cXJRbHpYMm9DWkFTL2x0MFJ6TTRBbWVURkZxZk9LeWdYTTIya3hreTRQTlhr?=
 =?utf-8?B?RUNRMWJkYVNrOEV6QUZTbnVsKzB1OEZIcjZqQUIwRElselNXVzJyU1VqM0l1?=
 =?utf-8?B?Zk9sT1ZlREdFb2lueGxyc1B0bmZNay9zbmRyam1hVTl5amtwQVFPbzRUMzY5?=
 =?utf-8?B?bSt6SlVmTnY3VVdKN2NVQmxTSm1jZDMyZVFHMXhJcE1Tc2NaOW5TOU5mSkVn?=
 =?utf-8?B?ckl2ZStRNVIyWTY5ejlRd2xidTZDTTR6OGV0NmtRMmRoSVhseXJTUXEzT01u?=
 =?utf-8?B?ZzB3aC92T2o4NDE2VTJ2cGJIcmh4NmhlTnRJbW9yYnRRZTRUM0NYWTNtazBx?=
 =?utf-8?B?OGd5VzFqcytVVXdGcjhPdGtlY1lSRThxMFU4dkNVR2RRVDRuVElKKzkvUnlh?=
 =?utf-8?B?OXNaeld0KzlvQzBsMW5taVpwazdwWU15ekFQZWRxNHA0UFFSL0VocE9NYS9X?=
 =?utf-8?B?K0R1a0VBNkJWNTV6YkNxWkI5K0NJWnpMWmlNcHhOSTlVa3BFU2huRzd1SUpy?=
 =?utf-8?B?Vk5yRUV5dGhYUnUxMnZKTHZwL2FWZ1FraWpuVTVsR2ZaZE1VdkhzaytpazRp?=
 =?utf-8?B?SnNYeWlkMWJxUnQzL0NRQ0ZMeGx0TDFRMWg4TmtLdjVZVjBubGo4cVozeVI3?=
 =?utf-8?B?dkU3cTJYQlhxNC9icWFSNmU0QUsyQnl4VWdWcnhNWjZjK21xYVVCREVoMzA4?=
 =?utf-8?B?SFFkQUhhaHZPRE5COWc5SVBwRHJiYm9qSzJtL3FpUUJ1amhKZXJSci9IZ0RG?=
 =?utf-8?B?cjJDcDBLV3ZlclNGRmZYWVpTdFIwSGE4aDlYUTVHN1ZlaHY4dVMrbXQ3Q1NS?=
 =?utf-8?B?OHlzRkRYSW80VTV0Q05hVWZySk9VdUExZFFtV1dPT2dLYzBFZHlaVng1WDN3?=
 =?utf-8?B?cEptNzZKeFdwdUVQTTlsb1FRVW5CcGx2M000WWxRTHEyOHpoUmZaUFZseUdZ?=
 =?utf-8?B?RlFEZnBqVGJaNFdhdU9WTHFaYlB0bUJsdDBlci85MzV1eTdTRmloVForOXdn?=
 =?utf-8?B?N01IZ0xCYVdSRDNENVdGUUI0TDYyZUYwOVRaak81aTRaYjdVaDFZL3pnTWp4?=
 =?utf-8?B?UHdzdTFLaVdFMElERUN5djVpU09kVTNMbG5RNDhWbUlkUWRHSEJId2VpVWF0?=
 =?utf-8?B?RkloS0pqL2hweWsyaFRmd1N6Wk9UbEFFNVAwN3hCK05MeFlvV2k4Zk5qVE9N?=
 =?utf-8?B?Y2k3MWVSSWdPbnJ1ekRqOUgrSXVOTExHaU9GcThxVzIrVFJYTFhBbDNuMCt3?=
 =?utf-8?B?ZVVVRGhpU2dXNm9MaGl5WXN6eE81dWZwVkpocjkxanhaR3BHSFdudkdINWVS?=
 =?utf-8?B?amwraXhRZmxaVlNkSis0dmhyZGlCcEFMSDJhTVBVS0xVbEh4ZDBVTGxGODNQ?=
 =?utf-8?B?Wkx0WDZSSm9TdTJoQUQycnM3aTNVNWJJeFh3YWpISzlzTzVEV2lUL2FPcEVG?=
 =?utf-8?B?cGxubkJnS0tDMmFtTzZmRm9wa1JCMy81K1NMbnJkdkJRK2dRVFlLblVXc2RW?=
 =?utf-8?B?KzI3eHN1U3lMWW9IangrWVl4SEZ6WlJMR3dqSElKZXBhdU1oSlh5d2NIZkZO?=
 =?utf-8?B?TDdVYVBjUWRHUFZ4NTZnMEdISUxYMEpjOUEyRTUwSDlVZTF2b214dW5uTXdC?=
 =?utf-8?B?Q2J0dDY4Y2dPbGgzN0RvWkVZSFVzeXB6WUUyam5sSXRaTVhOTmFtUlZGMWE0?=
 =?utf-8?B?blE9PQ==?=
X-MS-Exchange-CrossTenant-Network-Message-Id: b7394601-b90a-41c9-0a3e-08dcb2544597
X-MS-Exchange-CrossTenant-AuthSource: PH8PR11MB8287.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 01 Aug 2024 18:03:39.5146 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: onvPvuxiA+arJ+iJqZFKnIPUTj2N901Ue/PyOUClmWqtcR3IfX4BNRpY1Zcjs+xbd9bcSgFSGKE9WruMKDEKLQ==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DS7PR11MB7834
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
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

Quoting Jani Nikula (2024-07-29 11:30:09-03:00)
>Use to_intel_display() instead of kdev_to_i915() in the HDCP component
>API hooks. Avoid further drive-by changes at this point, and just
>convert the display pointer to i915, and leave the struct intel_display
>conversion for later.
>
>Signed-off-by: Jani Nikula <jani.nikula@intel.com>

Reviewed-by: Gustavo Sousa <gustavo.sousa@intel.com>

>---
> drivers/gpu/drm/i915/display/intel_hdcp.c | 10 ++++++----
> 1 file changed, 6 insertions(+), 4 deletions(-)
>
>diff --git a/drivers/gpu/drm/i915/display/intel_hdcp.c b/drivers/gpu/drm/i=
915/display/intel_hdcp.c
>index 05402ae6b569..42f8f9d41de6 100644
>--- a/drivers/gpu/drm/i915/display/intel_hdcp.c
>+++ b/drivers/gpu/drm/i915/display/intel_hdcp.c
>@@ -2181,10 +2181,11 @@ static void intel_hdcp_check_work(struct work_stru=
ct *work)
>                                    DRM_HDCP_CHECK_PERIOD_MS);
> }
>=20
>-static int i915_hdcp_component_bind(struct device *i915_kdev,
>+static int i915_hdcp_component_bind(struct device *drv_kdev,
>                                     struct device *mei_kdev, void *data)
> {
>-        struct drm_i915_private *i915 =3D kdev_to_i915(i915_kdev);
>+        struct intel_display *display =3D to_intel_display(drv_kdev);
>+        struct drm_i915_private *i915 =3D to_i915(display->drm);
>=20
>         drm_dbg(&i915->drm, "I915 HDCP comp bind\n");
>         mutex_lock(&i915->display.hdcp.hdcp_mutex);
>@@ -2195,10 +2196,11 @@ static int i915_hdcp_component_bind(struct device =
*i915_kdev,
>         return 0;
> }
>=20
>-static void i915_hdcp_component_unbind(struct device *i915_kdev,
>+static void i915_hdcp_component_unbind(struct device *drv_kdev,
>                                        struct device *mei_kdev, void *dat=
a)
> {
>-        struct drm_i915_private *i915 =3D kdev_to_i915(i915_kdev);
>+        struct intel_display *display =3D to_intel_display(drv_kdev);
>+        struct drm_i915_private *i915 =3D to_i915(display->drm);
>=20
>         drm_dbg(&i915->drm, "I915 HDCP comp unbind\n");
>         mutex_lock(&i915->display.hdcp.hdcp_mutex);
>--=20
>2.39.2
>
