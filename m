Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id oKD2Dj2w3GldVQkAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Mon, 13 Apr 2026 10:58:37 +0200
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id C60CD3E96F3
	for <lists+intel-gfx@lfdr.de>; Mon, 13 Apr 2026 10:58:36 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 5ABF810E38E;
	Mon, 13 Apr 2026 08:58:35 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="boujHyXc";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.11])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 3667F10E38D;
 Mon, 13 Apr 2026 08:58:34 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1776070714; x=1807606714;
 h=message-id:date:subject:to:cc:references:from:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=WAxdxR7IjPcaMZXhtWDQBQbBo1tx5TimJlEEz7e5LTU=;
 b=boujHyXcZVPogy2rJ13Aqm8aCTkgChi/Cv+9/STUybTpIcXBPAH05jDm
 S8lZdJiI/kWgncyLMbRCn6iNevCNOipn9Jeg0YrQQirGAMBpgoDigIm1x
 wnkZuW8zqljI0R7kFLflr4hcvfAqFhgHS3D9N0fnmWUnsjrc1lV5w+EFA
 D0D5RXb6Dd1EhGnaCIHLWTOuNs8ilKftCdZtALhux+Qh0e0oCp/ADKLlv
 F6Cpl/F3ofmTpytYhPXmUdoR4+J07M/qCUlJhGtTJfNfmkdMTeIsAfzSG
 KYlpLxYCNiWlshHRRPARW1CawC6ouuvhs2bXXFEID3rMtUIr994qU9OlY Q==;
X-CSE-ConnectionGUID: wPDirA/vSFKnFNDX3i/j2w==
X-CSE-MsgGUID: WqNmR3yeR9ii1WK3dHDejw==
X-IronPort-AV: E=McAfee;i="6800,10657,11757"; a="87627617"
X-IronPort-AV: E=Sophos;i="6.23,176,1770624000"; d="scan'208";a="87627617"
Received: from orviesa009.jf.intel.com ([10.64.159.149])
 by fmvoesa105.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 13 Apr 2026 01:58:33 -0700
X-CSE-ConnectionGUID: SuF73Fj/RSiJ24a4d9Qkvg==
X-CSE-MsgGUID: blPMJorhTAmddLRA2H6T5w==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.23,176,1770624000"; d="scan'208";a="229603396"
Received: from fmsmsx901.amr.corp.intel.com ([10.18.126.90])
 by orviesa009.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 13 Apr 2026 01:58:33 -0700
Received: from FMSMSX901.amr.corp.intel.com (10.18.126.90) by
 fmsmsx901.amr.corp.intel.com (10.18.126.90) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37; Mon, 13 Apr 2026 01:58:32 -0700
Received: from fmsedg902.ED.cps.intel.com (10.1.192.144) by
 FMSMSX901.amr.corp.intel.com (10.18.126.90) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37 via Frontend Transport; Mon, 13 Apr 2026 01:58:32 -0700
Received: from CY7PR03CU001.outbound.protection.outlook.com (40.93.198.65) by
 edgegateway.intel.com (192.55.55.82) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37; Mon, 13 Apr 2026 01:58:30 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=NtN4GkoE52P9UEEfB+pGaXAcKQwn/VrQmmoAJT0OIqgAbjT/tuD5I3GJE16mxqmVtrnopgf5uBxN7YVJ1z+2yZDCjk/iOpzRI9NJ/O3xHLjT5DSM3LcdNiJYqQfbjKVzUA0YK5JokMdZnIP+/0xFrjUmanqRl6ZWXI1zyOOHTBs0wEwgJZLxDAWgmgFkjKcN0RjW511MUswl2YXGlo84BdcxXS1/qmrj8hNLsBilUacLacOTEH4NPrYw+CpvjNb3vK2CXklhdGRKwhGn1NvJ0Fm6724FzxCdOsxNlpCBwThsUd5nAkrvAOldYFQJKOnznQcXudMwmwlhWTv6JKcRyQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=Jy+gGss5KDpcMJSts4OEUF7xZu3KD66SEdz0Ybzy5ek=;
 b=ZM6Ar6h1wt0CnZ1aSO3HsoKXATgCvStp7gnSiuDHZP6TOnNACJ7xQ04qlEFlyK+vwmacoySqibEdXG1ZMmttq/vVhUGgu2UKGS+33LmLpFG84Lw4bSFpWHEmRpkEaSoeVxkA9QligzXa9mv/1KpLJW4rJ91JVFmfgh+54Krmhxkqn555QOasYs7eQQeg6MGc4b8tXDz2Mx3UNQcFDSjHoHCTfdsa6iZ1ZwD+7+VO7Z8NFrsmuNw6wQqlTna/oDqvSvigs/UZlrfckb3Kc3OYuA6Qk3v9tx5znXFKeGg/Zw2Yl5bIZTM+zftfd3+8/yifQaFRfe1ZJ9lbyqXTXPE8rw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from DM4PR11MB5341.namprd11.prod.outlook.com (2603:10b6:5:390::22)
 by DM6PR11MB4737.namprd11.prod.outlook.com (2603:10b6:5:2a2::12) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9818.20; Mon, 13 Apr
 2026 08:58:28 +0000
Received: from DM4PR11MB5341.namprd11.prod.outlook.com
 ([fe80::68b9:ea3c:8166:3cc4]) by DM4PR11MB5341.namprd11.prod.outlook.com
 ([fe80::68b9:ea3c:8166:3cc4%4]) with mapi id 15.20.9818.014; Mon, 13 Apr 2026
 08:58:28 +0000
Message-ID: <d9d07b68-bd4b-4649-9c89-4371fe6489e4@intel.com>
Date: Mon, 13 Apr 2026 14:28:21 +0530
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH 01/12] drm/i915/vrr: Add HAS_EMP_AS_SDP_TL macro
To: Jani Nikula <jani.nikula@linux.intel.com>,
 <intel-gfx@lists.freedesktop.org>, <intel-xe@lists.freedesktop.org>
CC: <ville.syrjala@linux.intel.com>, <arun.r.murthy@intel.com>
References: <20260413035349.1730312-1-ankit.k.nautiyal@intel.com>
 <20260413035349.1730312-2-ankit.k.nautiyal@intel.com>
 <902d39b5ef740d820ceb73847232102b5a0a6edd@intel.com>
Content-Language: en-US
From: "Nautiyal, Ankit K" <ankit.k.nautiyal@intel.com>
In-Reply-To: <902d39b5ef740d820ceb73847232102b5a0a6edd@intel.com>
Content-Type: text/plain; charset="UTF-8"; format=flowed
Content-Transfer-Encoding: 7bit
X-ClientProxiedBy: MA5P287CA0168.INDP287.PROD.OUTLOOK.COM
 (2603:1096:a01:1ba::10) To DM4PR11MB5341.namprd11.prod.outlook.com
 (2603:10b6:5:390::22)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: DM4PR11MB5341:EE_|DM6PR11MB4737:EE_
X-MS-Office365-Filtering-Correlation-Id: f405a97f-aed1-4742-e7e7-08de993ad441
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
 ARA:13230040|1800799024|366016|376014|22082099003|18002099003|56012099003; 
X-Microsoft-Antispam-Message-Info: alrRlaBVndHJG0hUdCFXSzZd7aAHWJTJBIU4/WJZbR9MmKILiXO6odv1dUotUj6HHB0g/3uwsv8TmsOsBLuJGfbmBzenEln+kxl/Q3Tksi/x2hSkynUSE/QOqdLWiRNHQYT7F7MI4+97yt+MsUlMjJlyDKCnvEe8pYmeBykPcWMkYi46+9qzy6M4nGIabQJTtYIo5THtSXp0sgIsBemh3rUhjBztnf4JlMIzKn0h8mOCxe/1uv87iScEIfev6ukS+baliJ8kpG1VByOTjrTbPCOtdiBPJxQThcf9ogdClPKLPg2ThJzN2/oKZHR/LS+ZahFzntZERi5eUeyFP57uDUSDHG0hRuPu6yks2h1jcNaE/YLuCeMCH71Fq+XrzIXLJ7UR2E5EGSzBLTp/rK2BmUb1b7xuCQ2jnY7N6ong33Hh/9BoR1B14A27olfgQrlEMqcSmsH+wqpUZdNc1UKC3/kPL1lA39RNXMb5COdykcRDB6/pEnhuRwbPWBrQRmt92Qay+9MM6XelC+U0xOruOqf9kwKqYL+iVcpxDtB6AlV5IVAOJDt6aPAmZ0S8WyaAy5C322gq+xynxYg8Yv2b+8FfjKPlCekNiFvEM2xsLX49qxuQftpJNwnYFMavl9yzkI7QS659Oz5DtvB3YoDNHZ8Qfq0kwPy7fRMB583zbKiYwwFZTV0XFbpZgh6f7gJ74m5mtLJroWJ1FQVwTEQu6X5ZOgYl62p7dbvU5lunJ8A=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM4PR11MB5341.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(1800799024)(366016)(376014)(22082099003)(18002099003)(56012099003);
 DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?c3hYa1pOTUt0K1VNZnFEbGoydlFmL25OTEZTQXFCakJieFFiVDFoQndKRHZx?=
 =?utf-8?B?OUxtTmNLMllHNDN2ZWhGeEhOTWt6YXcwaWRpTGFCeDdSbWpIRnhDVFhoZjh0?=
 =?utf-8?B?czdTWDVHeFl1L052bWVBNG5FZnZlUDA0S1RWQWlLQzYxV1dVSkJYcEVad0Ri?=
 =?utf-8?B?R3pwWUJjbFcxam0vQ2FWcitmYS9SZ2pnbUVZdVpSYy95RW91L1l1bVFMYzhr?=
 =?utf-8?B?VWNIUXdjcXM1NjVaMTh5THRDRmh3YW0rU042YXN1Z1lydzhRcFFXN3E3Q3lq?=
 =?utf-8?B?TXJJcGZNQUJSbjNSejM0MXM4UHBOWE1tc3ZoM0h0VjA4ZDdhWlVlWWppeVBN?=
 =?utf-8?B?M1laV0Y2SWF4YzRQQW4xMk9TUHk0Vm9QbVNyNkFyaXZzbS9xejhQUjV5VGJY?=
 =?utf-8?B?dDVrQkZLMEZiT21WdTJlbUZPWXRiRFJhREtScXZhNmU1L25yODN5MlNWVGdE?=
 =?utf-8?B?bUk1MjZya2kwTEtGdFErTFdkNzRuWDFnd3RSTFBOL0RRcjJvSTdRVUJseGd0?=
 =?utf-8?B?eXRxYmJBNzJCRmZtSFdKb0V2cnNaRTQyanRraTlkU0lGbExwT0d5WDJOeW1U?=
 =?utf-8?B?bC9yMzJUWm1RMVc0bDV1K1lxWCtRQkNEN0wzU3MwMXJVNERxVHpxNkpySWlZ?=
 =?utf-8?B?UFI3MGkvK1NhZTdvOGFGdkNxalNReHZ3TVhMcGdaS1lLU21SYk9oVC9PTnVP?=
 =?utf-8?B?dkM2UTF4ME9vcjFabWJSUUlzMXRKbGI2WmNaWjlhd0U0TjZXeWI5SEtzQ2oz?=
 =?utf-8?B?S3MrUTVIQ1R2Q3I5b1NLWFhRWWw0eFdMaEZjdWlpb2NGTVBVRTQ1dEhLT0g5?=
 =?utf-8?B?aGtXSjdXOW9HTlJvSFRXYWVBaGpuRm9oVkJsaHQyVEd2MGNNQzZZT21PYlZG?=
 =?utf-8?B?WFBIbWNYcFZIeElaM0g0WWdST3RLQU9BcDVIc3RtM25pUXhrL3UxV25acFBx?=
 =?utf-8?B?UnNpY1d0dGdkRldRbnZPRkcyV3lxb3NWL1I0Mm0wNThVYjRteFMzL2RkTkNM?=
 =?utf-8?B?ZG1HMTJaZzNLNlpEK0JhNnNpb0ZReWlKMFNsUFo0T3Y4eHg4dEJCR2RnbVZO?=
 =?utf-8?B?QkJaTkZuaXNmUmFKODc4eHZrOEJCbFVwTEgwZnJCa0p1Z09HTjZLNVVLTHFS?=
 =?utf-8?B?VmE1ZXJVZkxoR3hMV1BuMFpEbEN6ZEUvZk1EQWVKWlZTcUhyVWVneS9WZXdQ?=
 =?utf-8?B?ZDBXY2s3N056K09aZ2hBbldTQWY4ckJrVllLL2hjZ1Q0Z0pOeGxuMStRY0hF?=
 =?utf-8?B?aHZ5ZU1jemdpZEV0TURYbTExYkkrL2xYNWg4WUFrK251R01MeWhQWnZyblow?=
 =?utf-8?B?MDdTakFKdTF6QWYzK3MvYnJnTTVoaVE1ZFh0Zm5TNVI2SFFKYWdkTFJtOTNL?=
 =?utf-8?B?THNRcG1YeEpRMjNra004cnlYclZuY2dIT2lXbkJUeHQ2NTcyT0F1NXc0T1Qy?=
 =?utf-8?B?K2tpSmZDeE5uZUxRV1JnbTl6OWZqMnpFblBYb1ZYMFRZTXorZWoyWHczU3hK?=
 =?utf-8?B?TWladDNGUEcyL3AwVnhCa3gxNm82eC8rMVA3WjBuUUdkWGxZMmswb2ZrTmV2?=
 =?utf-8?B?bUtxLzJVTkxNaEFEcC9DZWxhNjNBOVVkNG01a1hoL2hMcWViRDBBMFFaMGRO?=
 =?utf-8?B?RGFkcnVnU25PQkhVZkJEN3owK2ErakhIRXlldDVTU0NmNVc3d1RNQXdyWUdY?=
 =?utf-8?B?eEFOdksrVEJaeGxzaTNFMmE5VXowWXR2MTJMZnR6Qi93U2puU0x3aU5hTFIx?=
 =?utf-8?B?MTZlZE1wTzQxeW96UlVpU05TWG1SZnZueVppTUZYaC9Iamk5L1FLY0E4eTJP?=
 =?utf-8?B?VTB5UU1aRUh1RWdNYjFwWE4zSnRMWldTc0pqNmNsQW13aUZHYm5ieFlkZTlm?=
 =?utf-8?B?TDBJWXJvQ1RqZDNuSFJWRjNqcDNjY0lSM0pNUnNpNmFzaWJqZDlDY2tOTFoy?=
 =?utf-8?B?UEpkN3BQaXNRUCtuWldVeFYyNnYzL2hEdUdIdEVXSk1RVGFiQXdSOGxmYTBx?=
 =?utf-8?B?RytmaXhoTGdrTmdVRURWUUE1TXBFZUdUazlKRTNYeDR0a1psVGVxRUVVcFp6?=
 =?utf-8?B?RTBmL040d0QzQmxYMk03azFLeWNGanVQbHpuSXRZbXpJUnpjOXZVSWhFcTlK?=
 =?utf-8?B?RkR6WUpKSFYwZWc2RDdGN2JzajQ0ajlKZFppcEM2Z1AwZFNpUFIwYkxPZWJI?=
 =?utf-8?B?UkFNRmkvNDVaMkhzeWkrcnRNRG1PdW14YkY4SmlYL3VVRlpoa0ZxTTg2YkR1?=
 =?utf-8?B?V0dPdklZekRLdEt3cGw4OXVBUmFpZC9CZXhHcWYrYzg0V1JKajJvQWZtMjBK?=
 =?utf-8?B?Rkg1SW9zK0FOd2NuT2JuUCswZGU5a1ZVTnVPT1NOMTJKUmp0NWVQSzBodWhv?=
 =?utf-8?Q?blQGhCsy+r4lNz8Q=3D?=
X-Exchange-RoutingPolicyChecked: uH84uoJvSMfhK8UkAJa1ugliqaCTVPRvEENwrpvSMat+1QIczM45H86SWK27b0pgrIPCpEclVWHUdF2hzfbS1Yv8fyjtJGhlbLsOy6W4GwsxZ+qJ+d+mI6cQnL4ZGcsYAsRUPuO5ZZznnpv9hKT5mqoHmucdk6qPSSIdQoeGE5UW4Om+iq1uESIzR0JJxd7b3GO8KR/vqZjjXu2ZahFAw64ue/4+OFp5I1MkjPPjZTYY8q7GLR0cGRYyyiko+ty95KOKWsRPkOpEoAA1ubviFg6w90X2fDXicAPkU4IFhUCSyVgjq41RnfcENSiyCudzcTTAJbH/gxG/jEryb6sOKA==
X-MS-Exchange-CrossTenant-Network-Message-Id: f405a97f-aed1-4742-e7e7-08de993ad441
X-MS-Exchange-CrossTenant-AuthSource: DM4PR11MB5341.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 13 Apr 2026 08:58:28.4490 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: g4Nyp7OPCAPfzxherk6qd0GTLWM/u7McaT72Rp6OH8XybdIERtI8JIgRTj6SLNZFhQ+5p5n755g4AjtJnMxjwcimYYtrMuLd9NnOxZwX8Z0=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DM6PR11MB4737
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
X-Spamd-Result: default: False [-0.31 / 15.00];
	ARC_REJECT(1.00)[signature check failed: fail, {[1] = sig:microsoft.com:reject}];
	DMARC_POLICY_ALLOW(-0.50)[intel.com,none];
	R_DKIM_ALLOW(-0.20)[intel.com:s=Intel];
	MAILLIST(-0.20)[mailman];
	R_SPF_ALLOW(-0.20)[+ip4:131.252.210.177:c];
	RWL_MAILSPIKE_GOOD(-0.10)[131.252.210.177:from];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	ASN(0.00)[asn:6366, ipnet:131.252.0.0/16, country:US];
	RCVD_COUNT_SEVEN(0.00)[9];
	MIME_TRACE(0.00)[0:+];
	DBL_BLOCKED_OPENRESOLVER(0.00)[intel.com:dkim,intel.com:email,intel.com:mid,gabe.freedesktop.org:helo,gabe.freedesktop.org:rdns];
	TO_DN_SOME(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	TAGGED_RCPT(0.00)[intel-gfx];
	NEURAL_HAM(-0.00)[-1.000];
	RCPT_COUNT_FIVE(0.00)[5];
	FROM_HAS_DN(0.00)[];
	MID_RHS_MATCH_FROM(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[ankit.k.nautiyal@intel.com,intel-gfx-bounces@lists.freedesktop.org];
	RCVD_TLS_LAST(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	DKIM_TRACE(0.00)[intel.com:+]
X-Rspamd-Queue-Id: C60CD3E96F3
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr


On 4/13/2026 2:01 PM, Jani Nikula wrote:
> On Mon, 13 Apr 2026, Ankit Nautiyal <ankit.k.nautiyal@intel.com> wrote:
>> For BMG and LNL+ onwards the EMP_AS_SDP_TL is used for programming
>> double buffering point and transmission line for VRR packets for
>> HDMI2.1/DP/eDP/DP->HDMI2.1 PCON.
> Okay, EMP AS SDP TL is where I draw the line. I don't understand this
> acronym soup anymore. HAS_EMP_AS_SDL_TL() is meaningless to me.

Hmm I was short of naming it HAS_PROGRAMMABLE_VRR_PACKET_TL() or 
something, but then it become overly long and perhaps TL might also be 
very contextual and not very clear.

So I went ahead with EMP_AS_SDP_TL to align with the register we are 
trying to program.

I also realize that I have not mentioned full forms EMP and SDP, which I 
should have atleast in the first patch, especially for EMP (Extended 
Metadata Packet coming from HDMI2.1).

Thanks for pointing it out. I will try to be bit more clearer with the 
naming and provide the full form atleast in the place where they are 
first used.


>
> The idea with the HAS_*() helpers is to make the code more *readable*.
>
> The absolute minimum is to explain what these acronyms mean in commit
> messages or comments, but you could just make the HAS_*() macro more
> readable on its own.
>
> I'm also not convinced we need to put all the HAS_*() macros in
> intel_display_device.h when we could place some of them inside the
> single .c file that uses them.


Currently this is used in couple of files, but I got your point, if this 
finally used only in intel_vrr.c I will place it in the same file.


Thanks & Regards,

Ankit

>
>
> BR,
> Jani.
>
>
>> Add a macro for this and use it in intel_vrr.c
>>
>> Signed-off-by: Ankit Nautiyal <ankit.k.nautiyal@intel.com>
>> ---
>>   drivers/gpu/drm/i915/display/intel_display_device.h | 1 +
>>   drivers/gpu/drm/i915/display/intel_vrr.c            | 2 +-
>>   2 files changed, 2 insertions(+), 1 deletion(-)
>>
>> diff --git a/drivers/gpu/drm/i915/display/intel_display_device.h b/drivers/gpu/drm/i915/display/intel_display_device.h
>> index 1170ac346615..9338ea087e92 100644
>> --- a/drivers/gpu/drm/i915/display/intel_display_device.h
>> +++ b/drivers/gpu/drm/i915/display/intel_display_device.h
>> @@ -173,6 +173,7 @@ struct intel_display_platforms {
>>   #define HAS_DSC(__display)		(DISPLAY_RUNTIME_INFO(__display)->has_dsc)
>>   #define HAS_DSC_3ENGINES(__display)	(DISPLAY_VERx100(__display) == 1401 && HAS_DSC(__display))
>>   #define HAS_DSC_MST(__display)		(DISPLAY_VER(__display) >= 12 && HAS_DSC(__display))
>> +#define HAS_EMP_AS_SDP_TL(__display)	(DISPLAY_VERx100(__display) == 1401 || DISPLAY_VER(__display) >= 20)
>>   #define HAS_FBC(__display)		(DISPLAY_RUNTIME_INFO(__display)->fbc_mask != 0)
>>   #define HAS_FBC_DIRTY_RECT(__display)	(DISPLAY_VER(__display) >= 30)
>>   #define HAS_FBC_SYS_CACHE(__display)	(DISPLAY_VER(__display) >= 35 && !(__display)->platform.dgfx)
>> diff --git a/drivers/gpu/drm/i915/display/intel_vrr.c b/drivers/gpu/drm/i915/display/intel_vrr.c
>> index fae1186a90b2..1fed597439b0 100644
>> --- a/drivers/gpu/drm/i915/display/intel_vrr.c
>> +++ b/drivers/gpu/drm/i915/display/intel_vrr.c
>> @@ -656,7 +656,7 @@ void intel_vrr_set_transcoder_timings(const struct intel_crtc_state *crtc_state)
>>   	 * Since currently we support VRR only for DP/eDP, so this is programmed
>>   	 * to for Adaptive Sync SDP to Vsync start.
>>   	 */
>> -	if (DISPLAY_VERx100(display) == 1401 || DISPLAY_VER(display) >= 20)
>> +	if (HAS_EMP_AS_SDP_TL(display))
>>   		intel_de_write(display,
>>   			       EMP_AS_SDP_TL(display, cpu_transcoder),
>>   			       EMP_AS_SDP_DB_TL(crtc_state->vrr.vsync_start));
