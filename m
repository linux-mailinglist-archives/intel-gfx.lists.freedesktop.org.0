Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id 2PojDpuAiWlx+AQAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Mon, 09 Feb 2026 07:37:15 +0100
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 929C710C28B
	for <lists+intel-gfx@lfdr.de>; Mon, 09 Feb 2026 07:37:14 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 5355310E116;
	Mon,  9 Feb 2026 06:37:12 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="Q/RJSBxN";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.19])
 by gabe.freedesktop.org (Postfix) with ESMTPS id C08C610E116;
 Mon,  9 Feb 2026 06:37:10 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1770619031; x=1802155031;
 h=message-id:date:subject:to:cc:references:from:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=QAiJ0ikf+ScT8sliNnmt7L+ViXniSAwMCwpzd2eZQgI=;
 b=Q/RJSBxN5Y313Szw4Ir2D5Vb0/8eUwPwHje/xkDN4xsYE3X8L86qkhXM
 gL2c/lX2HCwPVIZHVRW0RPSfms0WAc3tPRgvhbmq9A22Zyvb0CoIqjuNL
 qgiKZgbQdP322NkWhHmgcbzKZOSEZGRZhyHnrS1PXCtX+uPV36k9NonEl
 74XvgZq3ykNyBsFTEu9pxAE+X212IR6X9Qrk0mEQhRqxKGIdRpwzpqKg/
 +SrBa22Z52weXxU2w2Gy9nwPQklyuUzkNkI3uRQjlhpeIFalWU7zeR1Tc
 Ijswe6zr+M6azuv6ziA5lf69o3U70YOO9rrPcaE/nIPxWY+13PxRE8aOv g==;
X-CSE-ConnectionGUID: urQc4aKFTVaBfOSMHkYhrw==
X-CSE-MsgGUID: 0L6w5npgSA+VFDhsbxvBUQ==
X-IronPort-AV: E=McAfee;i="6800,10657,11695"; a="71626205"
X-IronPort-AV: E=Sophos;i="6.21,281,1763452800"; d="scan'208";a="71626205"
Received: from orviesa009.jf.intel.com ([10.64.159.149])
 by orvoesa111.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 08 Feb 2026 22:37:01 -0800
X-CSE-ConnectionGUID: eXntfvIDTJqCjdJS+776bA==
X-CSE-MsgGUID: 9Mdsh9bnQNqkFDDUWcbGVQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.21,281,1763452800"; d="scan'208";a="211299129"
Received: from fmsmsx903.amr.corp.intel.com ([10.18.126.92])
 by orviesa009.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 08 Feb 2026 22:37:01 -0800
Received: from FMSMSX902.amr.corp.intel.com (10.18.126.91) by
 fmsmsx903.amr.corp.intel.com (10.18.126.92) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.35; Sun, 8 Feb 2026 22:36:49 -0800
Received: from fmsedg903.ED.cps.intel.com (10.1.192.145) by
 FMSMSX902.amr.corp.intel.com (10.18.126.91) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.35 via Frontend Transport; Sun, 8 Feb 2026 22:36:49 -0800
Received: from SJ2PR03CU001.outbound.protection.outlook.com (52.101.43.17) by
 edgegateway.intel.com (192.55.55.83) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.35; Sun, 8 Feb 2026 22:36:35 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=fulCwh7D8d1+f5yRtyTreePpeeTWPdhz7iJYokcu8b7H4J9yLSO8sfNADzVZmJc6UVA9EnKFfgztecVqy/pZ3kLr10qhuD+eBF+v66DnlmRyjNBC/bBSz22K9MSyWmefUEA9n4a3yW3iUr/DNpgR+lQHzTLl9cmSM8KMHyg21ZI4INEJh1Qxsl3dDenNggvuMd5CsvjWyCHwCxWDMqf1gLeamglHyGxdT5AUa4DrZlnPZokQvWWqbCEDWlLgNGSRUuBZSqmxvJe29b/wM0T8pu+RfRj5JMVyg347WdJ+EcENCVGaWgJDoT8hl3gZdFpKxdfuOlEAY19x6IsKBeZMSg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=lroMLVMzWmdWcXfAoozA5WNKnRDdWT6vCsVF5gQOlfM=;
 b=OUDUuDjR0owhj07UuVvJRiIpQ6dXxPy0o8yuBMeL5I8lnE/WxfdPIIRWR0g9fOrkzhNpwPjOeTL/zpIATu8WV3wsqztzvn4T/OI4lM7fACqXLL1fp10ujeX/dUZsJmdrd/IYkre243rE0djLSSr+muk+GyrzL3d8J4at5QSdWV1mXZkvNRuBTs3UgpkqlXKSPeAqrHBw6XgRwWiaxspvK0c0qfCaAh/goRpM0DD5hkJATcKEGh50rkK0BylKG9+0JuxWp2psvSTL5ne/A85fwr8QrdWWwtS65s5zBAvOvoFtfviYqhLBlbkfxvzXpQgA70B8kNOqCPTd1fHsi3bBxg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from SJ1PR11MB6129.namprd11.prod.outlook.com (2603:10b6:a03:488::12)
 by IA4PR11MB9012.namprd11.prod.outlook.com (2603:10b6:208:56d::14)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9587.18; Mon, 9 Feb
 2026 06:36:28 +0000
Received: from SJ1PR11MB6129.namprd11.prod.outlook.com
 ([fe80::45f:5907:efdb:cb5b]) by SJ1PR11MB6129.namprd11.prod.outlook.com
 ([fe80::45f:5907:efdb:cb5b%3]) with mapi id 15.20.9587.017; Mon, 9 Feb 2026
 06:36:26 +0000
Message-ID: <9ca3365b-c595-4401-8663-9c18ccc45d45@intel.com>
Date: Mon, 9 Feb 2026 12:06:20 +0530
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH 1/2] drm/i915/dp: Fix pipe BPP clamping due to HDR
To: "Nautiyal, Ankit K" <ankit.k.nautiyal@intel.com>, Imre Deak
 <imre.deak@intel.com>, <intel-gfx@lists.freedesktop.org>,
 <intel-xe@lists.freedesktop.org>
CC: <stable@vger.kernel.org>
References: <20260206104227.290231-1-imre.deak@intel.com>
 <f6b59555-01f6-49ff-aff4-a6da9d347332@intel.com>
Content-Language: en-GB
From: "Borah, Chaitanya Kumar" <chaitanya.kumar.borah@intel.com>
In-Reply-To: <f6b59555-01f6-49ff-aff4-a6da9d347332@intel.com>
Content-Type: text/plain; charset="UTF-8"; format=flowed
Content-Transfer-Encoding: 8bit
X-ClientProxiedBy: MA5P287CA0161.INDP287.PROD.OUTLOOK.COM
 (2603:1096:a01:1ba::12) To SJ1PR11MB6129.namprd11.prod.outlook.com
 (2603:10b6:a03:488::12)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: SJ1PR11MB6129:EE_|IA4PR11MB9012:EE_
X-MS-Office365-Filtering-Correlation-Id: a5b92bfe-eaac-4b6a-5593-08de67a58d01
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|1800799024|376014|366016;
X-Microsoft-Antispam-Message-Info: =?utf-8?B?MzBEYU9xNS8reW1vSHN0b2ZoMjVxMmZsZW5mMW5pY1hORUUvNG5ESGRoODZa?=
 =?utf-8?B?a2RDU3pMV3JLQ0k0OCtoRFdPZFVZbEtwcjZONUVHaVUwQ2VIckl5YStRTXdJ?=
 =?utf-8?B?TXljMUZWSkQxZm1zSnQ2SjRCZkdtcThNTkRWMnVDMWhOWnRSdXZuM24wbDc3?=
 =?utf-8?B?TmxnbmF0VkU1Q0dpcGgxNHlUQjZxaFcyUXQzTk5OamdQMVlUR2V0MDg0cGVp?=
 =?utf-8?B?OW9GbjYwSFlaL1hPTGc3M0dobW9rdUtuMFVCTjVVRDhFN2drOURWOWhPSWRK?=
 =?utf-8?B?NlRrYXlYcnV0WktKeFMwMFBlSkxVN09aaTQwMXkvOVFrbE1vMUR1eXpkeVZv?=
 =?utf-8?B?NmdhZ21EMjhKbGFTU2ViV2txZytZQUlHTTRycHFmenpFMFhsVjF4UFRTUFlY?=
 =?utf-8?B?eThuVHJMMGNWVnp1cmcxVWJwVEU5bVkxTkh5UXFVMzhBUDcrVklVenc5MFF5?=
 =?utf-8?B?djJya3UwRTEvMi82TTlRNG9zRzhYT204dSt4cnZlTWloQ0RKbWFYT1lWZkx5?=
 =?utf-8?B?SU0xckhIaDFTS0YyYk1MK1oyOFF0Y0J5TW40TnZqTjRYQVFzOHNEU0czc1Vh?=
 =?utf-8?B?dkxrd0RFcU0zcW1tN2hRSy9uSVFxcm1CV3ZzQmhTZUg5RnVHbVNLblVvNzRN?=
 =?utf-8?B?NkNpWVF4VzRhTGtPWml2UzI1MVF2SDZhbGRadWZOcGs2cXNRYlNrVEZ5N1hT?=
 =?utf-8?B?K2dhUFhXNHY4cmc2QkMreXlUR3IxVHhzZ0x6Z0ZtTjNXdncydFpFTEZUcVVH?=
 =?utf-8?B?am4zVm5PZGwrekJlZHRvMG9GMDN5cWhDOXlMeFJNSzNncEdkYkFBeEI4Vmhw?=
 =?utf-8?B?RFhNQ0F0UEMyR2JIclIzNUQ1eEZ6U0pvN2hGYWFzQVhvNTdyaHp2Tk1wcVhH?=
 =?utf-8?B?NkZzZUlWYXlpdmZvazdIajkrNm0wRENBeHFYQzVVdmlXbktscXNoRnY5VytT?=
 =?utf-8?B?WVZIaHptR0V0b3cvcU9ROE50dVQ5cnlLcitCdEJDLzRYRFJnWEIzdGk3LzdD?=
 =?utf-8?B?WXJtTWlsdGM5ZU81TXJWaXVldFJZL1pEWXZWNWRkeU1QNTZIR0pDTlU2c0Zh?=
 =?utf-8?B?RnRlYnFWY1czN0EyZVhtcUthOFAwQWsvTmIwMHNhSUhtNVMvaVBEK0dFR0hR?=
 =?utf-8?B?MGNINkh2MW10d2xzalVEUHd5WEtmOWU4V2dVZmo4OGQ2WUc2ci9aV0VqSGM0?=
 =?utf-8?B?R1MrbmZIemUzRUErTVJRelJwVXZQOGlFdWEyOVR5ajRqa1pUSEQ1RmduZTRG?=
 =?utf-8?B?cDBkc2JPYURwbWY3bkp6bTlWMDBJYjZPTUtDWEFkOXVONXpBSG9oemwrejV2?=
 =?utf-8?B?S2NtdEhwSjUxOWJwVzVPcTFQWThCNStwbllYZzVId0pkeU5tRzM0YjMzL1ZT?=
 =?utf-8?B?VmN4SDRVYXl0ZXhGZUJENmZGMmQ0UW00aENqUGtGd2I0MUlzK243VGVVQlZi?=
 =?utf-8?B?Y04yclhpUlI5SmtRMmN1bWtJM2Y3VTlxV08vdi82SU9oQ3M0VHJmL3U4T3o2?=
 =?utf-8?B?cEpUVjlySlcyckFjOFh1Um0rQ1NyclRVWkRLeGFQZHJySXZMYjZRN0hISG5I?=
 =?utf-8?B?QThWRDhvQnRWbnBzdUo4cjk3alk2TXBqYzF6aGZmeldQODkvOEZwYkRhaUJp?=
 =?utf-8?B?MU1qUk1acXZudWd3OWE4UVVwMkJsSm9TSjBFaEZOUU9QbEhINTQ2NGtKTG9J?=
 =?utf-8?B?OFM3UngyTmJ4N0swWE0vRkVwT1JudnduWFpYaFpvcmFSMnUrQlUzbFNvZTJz?=
 =?utf-8?B?NWtveVIrak5rUUNxa1FvckZFcDRaYmM2eTQ0NnY1WThzenZPZ3FtZVgrd3dP?=
 =?utf-8?B?MW5kZmFLNGowTlhPUktNUHR0TU1zRVhHRllnUGlaZmZ0b3d4M2xxRDVVTith?=
 =?utf-8?B?ZkhvcXJqbDV0M2V3NnlKSG8vOC9SSFFpTy9IaGVocWRWQ29FZDBQeWVFelNQ?=
 =?utf-8?B?TkFhRk8zVExBRWhUS01oZTl6RlhLNFZtV2FpbmlWaXMybkpIempqb1ZzR0ZD?=
 =?utf-8?B?bTVma1ZsMlVKaFRQSFQvZSt3OUhoNzdvQVhkclBJVU5DaEtMWFpBUy94NTFu?=
 =?utf-8?Q?+N0ZB1?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:SJ1PR11MB6129.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(1800799024)(376014)(366016); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?SDY4S2o4azgveVNGVDFpNlpsNDlpQVl4V0pGRm80SjBWME9GcnhZdlFNU2Zw?=
 =?utf-8?B?SUpBbjJ1eUFkYTFxOTl6a0JNcE5FTVhFNjhWWGdZV25EWjd4MzRPZWlDdHYw?=
 =?utf-8?B?RFpweDZXVUNwZXBSZ0FEWk5aWWRCUndtWVVOby8xRWsvakExTkRXYzZUNVNM?=
 =?utf-8?B?VExQZTdmaFQ4OVBwWWpQQm5UajM3WnhPRUdYNHFDUHp1ZEdoTHNxcGRYZkI2?=
 =?utf-8?B?ZDJtcVJxa1IrYkEzSEw5ZEl0Z1AyTmdocUJOSkJTemxUcWVOWFJ0U2x2RmdO?=
 =?utf-8?B?M0dXQ0NzcDhRZllTTTlmakk5Y2tucE50dkUwODc3VUFwL2tZOVo4bndUM2p5?=
 =?utf-8?B?NXFBVWtpVWVpS0NqZUlpT2ZIcFIxWXI3ZGlEWEtWYVNDK3FhM0h6aU9oRS80?=
 =?utf-8?B?NFJVL2lzS2VXMzNxL1N4b0UwamoyaStCL1l5UFcxSmFYdWJMTzIxdXRTdHNW?=
 =?utf-8?B?c053SGtIK0lPRlJjeXR6RDkxTk9vQXpDYlhvQm5sWG9rUW50c0lCcmVacjlh?=
 =?utf-8?B?VHFNQ3hzV1Z3SlBwNXQ4NGlabW5LNER5MUFzVkhOcHgrVHE3aWpWazJ0Rzl3?=
 =?utf-8?B?eEZNOHlFTDIzSkJHWUJrYXp5MElRL1ExeUZMN0xHNEpMK0R6ajFjazNBeFFv?=
 =?utf-8?B?RGxCM3YzcnVqT0NJOUIyZzBkYzcvc1JKL1dCd3JDVTBSWS84UVZBQnN3L1F5?=
 =?utf-8?B?eDA2QlN5dUtaWmlLYU5EZWdKN2U3ektQNGZDQ2hDMFRBcTdDbFV1Vzk5VEZn?=
 =?utf-8?B?dGtNUmc3VUlZTmg3L2pGUWpMZDM1dnlRVm04cWRRMWprTzBnUitGdUo2b25j?=
 =?utf-8?B?aWFzNHVrcE90eEhhSVVDeTJLOExRbHNEdjU2b3VIQ0Y1V05BOFlUM2F4ek12?=
 =?utf-8?B?MnZ0dFBkRHoyaW9nNTJkZmttRmw1RDVpU25wOWN1TlhobnNEVTBCK01Hc2Ft?=
 =?utf-8?B?MU1FOXNHRzh2d3ZKU3V2UmtoWXo5TklVWGpzQTByZnRWd0NvYkZaUCtpUVh5?=
 =?utf-8?B?QkhKT2RZNk9VTDVqbWltclo0ZnRBMGU3NGJReDZyV3Q5U2dEZFhMd3BaYjh1?=
 =?utf-8?B?NU1PZFV0TVBPVU94WFRlT0hhOFY3MWNudlNWejlPZjMxMjlCanpRRHoyc0J2?=
 =?utf-8?B?RENIaHB2R2l0dTJuU0Jlb3VibVJMSTErd2FqbkpyOW5aOU5TNTVlWEpTU1V4?=
 =?utf-8?B?ZDg3ZzVNajZTRlQ4N1ZWTDNPeGJva2JINEtlZlg0VEFSYitaeUM5OThpU3lL?=
 =?utf-8?B?SWcvakE1UXphTzlyYnRjMWxIcy9QODY3TGdIb2x3a3pUcGFmRTA0aUZUQm4x?=
 =?utf-8?B?Tmw2bFhRbFRWSkg1Mi9rTFVLWENhMkRIR3ZSUlR6SXRNRmxTNGUvVTgvR1Jn?=
 =?utf-8?B?dUVMZnR1T25rbWJxTFA0V1hONWVSMWg0NHNDekc3Tk1rckMzSUlNNUV3Vzk3?=
 =?utf-8?B?cklPS1FSeHBsTk1zQmJmb3g2UDdaUjAyZ1E3UVdqQ04yYmQzOFNMcmp6T1Ny?=
 =?utf-8?B?NGthVUcxaVNGQVdySWQ0SFFQMUczWm43WjRYOVdNVWJLbGM2MjhxWUlzQjdx?=
 =?utf-8?B?UEpodEw5akNwTlJvbktuT1FESXRtaThSYUdXV1FDQ1ArTEJ1d25XeFVjTWZR?=
 =?utf-8?B?ZzFncTRQSFRnUkVKSE9FVUd3Y1U2bXNCMEo4WmNGM01vRnk4UzZ1M2tJOWNl?=
 =?utf-8?B?VlMxdlZ1YU93RkR5TXR1cXJzaFlRRGVpQ1FqNFlRZ3NnNUs5Zmx6VnpyRVQ5?=
 =?utf-8?B?QnZVb2JuVTFIL1lrTWlJZit3K1ZWY05IRGpScEpaaG43U2RnRHNBSEtBTmQ0?=
 =?utf-8?B?VUcvVWQ3NTBVRkF1Q0dJcHFPQnA2S1JnSGFIby9lbUNFenppcFRTT0EzcHVq?=
 =?utf-8?B?UWk5UUZxWmxnUjdvVWhkUzlHWXpSbjhEVkRaQi9DK2ZTODlsWnlveUNGcFFt?=
 =?utf-8?B?WVM0UXhiYkxWeSszK2x0Uit5dm1MK1k3MG1mWjZMVlZXNDMrUHBwMW1OL2hE?=
 =?utf-8?B?andQZUtPMzc5ems1QTZNNzdJVlB0eUREa2xzNm5KYVBRNEJ0amFaSWV3NG5x?=
 =?utf-8?B?dmloeG94b1A2VVUyKzNsaGE4ZkJWd0twUktndGN0Ukw2UFZGYjAzNm1uOFZr?=
 =?utf-8?B?MDF4dlZGekprbjF2ZzBlRlpQTjB3MVZRL1BDcGVlRi9kWVlyMlBjbWNyVmNG?=
 =?utf-8?B?R3JDYnlkaTNwMVFZdVdXUk0vNnJDNTF1dFlwVEU5MlNTZm94ZnBkOFlxT0ZT?=
 =?utf-8?B?MDhVSmdPdlFVRkkxS3hPR29vQnBhVTNlalg0UkVWV2FpazY5cWlLTkNaTXdI?=
 =?utf-8?B?REtxbFFQb2tYMEwxbTFQUUYvQ0Z3VnJHVy9NL3RkVjlXaUR0Q1NVRUtXbit6?=
 =?utf-8?Q?uNshUMzCaN/FghBw=3D?=
X-MS-Exchange-CrossTenant-Network-Message-Id: a5b92bfe-eaac-4b6a-5593-08de67a58d01
X-MS-Exchange-CrossTenant-AuthSource: SJ1PR11MB6129.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 09 Feb 2026 06:36:26.7556 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: S2OoDo5kQlg34MS6+cxcEpqwmCkxLijx4ORFdCKz93B/hMMj8PYmMlsKPqGPVsovIdbb0X8NNosBhJhCgg/OxdCJNsRLkqc1/x2P11XWfZM=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: IA4PR11MB9012
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
X-Rspamd-Server: lfdr
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
	DBL_BLOCKED_OPENRESOLVER(0.00)[gabe.freedesktop.org:helo,gabe.freedesktop.org:rdns,intel.com:email,intel.com:dkim,intel.com:mid,gitlab.freedesktop.org:url];
	TO_DN_SOME(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	TAGGED_RCPT(0.00)[intel-gfx];
	NEURAL_HAM(-0.00)[-0.999];
	RCPT_COUNT_FIVE(0.00)[5];
	FROM_HAS_DN(0.00)[];
	MID_RHS_MATCH_FROM(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[chaitanya.kumar.borah@intel.com,intel-gfx-bounces@lists.freedesktop.org];
	RCVD_TLS_LAST(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	DKIM_TRACE(0.00)[intel.com:+]
X-Rspamd-Queue-Id: 929C710C28B
X-Rspamd-Action: no action



On 2/6/2026 7:20 PM, Nautiyal, Ankit K wrote:
> 
> On 2/6/2026 4:12 PM, Imre Deak wrote:
>> The pipe BPP value shouldn't be set outside of the source's / sink's
>> valid pipe BPP range, ensure this when increasing the minimum pipe BPP
>> value to 30 due to HDR.
>>
>> Fixes: ba49a4643cf53 ("drm/i915/dp: Set min_bpp limit to 30 in HDR mode")
>> Cc: Chaitanya Kumar Borah <chaitanya.kumar.borah@intel.com>
>> Cc: <stable@vger.kernel.org> # v6.18+
>> Signed-off-by: Imre Deak <imre.deak@intel.com>
>> ---
>>   drivers/gpu/drm/i915/display/intel_dp.c | 14 ++++++++++++--
>>   1 file changed, 12 insertions(+), 2 deletions(-)
>>
>> diff --git a/drivers/gpu/drm/i915/display/intel_dp.c b/drivers/gpu/ 
>> drm/i915/display/intel_dp.c
>> index 2b8f43e211741..4d8f480cf803f 100644
>> --- a/drivers/gpu/drm/i915/display/intel_dp.c
>> +++ b/drivers/gpu/drm/i915/display/intel_dp.c
>> @@ -2697,6 +2697,7 @@ intel_dp_compute_config_limits(struct intel_dp 
>> *intel_dp,
>>                      bool dsc,
>>                      struct link_config_limits *limits)
>>   {
>> +    struct intel_display *display = to_intel_display(intel_dp);
>>       bool is_mst = intel_crtc_has_type(crtc_state, INTEL_OUTPUT_DP_MST);
>>       struct intel_connector *connector =
>>           to_intel_connector(conn_state->connector);
>> @@ -2709,8 +2710,7 @@ intel_dp_compute_config_limits(struct intel_dp 
>> *intel_dp,
>>       limits->min_lane_count = intel_dp_min_lane_count(intel_dp);
>>       limits->max_lane_count = intel_dp_max_lane_count(intel_dp);
>> -    limits->pipe.min_bpp = intel_dp_in_hdr_mode(conn_state) ? 30 :
>> -                intel_dp_min_bpp(crtc_state->output_format);
>> +    limits->pipe.min_bpp = intel_dp_min_bpp(crtc_state->output_format);
>>       if (is_mst) {
>>           /*
>>            * FIXME: If all the streams can't fit into the link with their
>> @@ -2726,6 +2726,16 @@ intel_dp_compute_config_limits(struct intel_dp 
>> *intel_dp,
>>                               respect_downstream_limits);
>>       }
>> +    if (intel_dp_in_hdr_mode(conn_state)) {
>> +        if (limits->pipe.min_bpp <= 30 && limits->pipe.max_bpp >= 30)
>> +            limits->pipe.min_bpp = 30;
>> +        else
>> +            drm_dbg_kms(display->drm,
>> +                    "[CONNECTOR:%d:%s] HDR min 30 bpp outside of 
>> valid pipe bpp range (%d-%d)\n",
>> +                    connector->base.base.id, connector->base.name,
>> +                    limits->pipe.min_bpp, limits->pipe.max_bpp);
> 
> 
> pipe.max_bpp < 30 will be either due to the max_bpc property set to less 
> than 10, or perhaps when the panel itself does not support 10 bpc 
> (limited by EDID or VBT).
> With these constraints doesn't make sense to enable HDR and send HDR 
> metadata.
> However, as we see in some reported issues [1] [2], in practice some 
> compositor seems to enable HDR by default and with the hard limit set, 
> they report blankout.
> So it does make sense to raise the min bpp limit only if its inside the 
> supported range.
> 
> Reviewed-by: Ankit Nautiyal <ankit.k.nautiyal@intel.com>
> 
> 
> [1] https://gitlab.freedesktop.org/drm/xe/kernel/-/issues/7052
> [2] https://gitlab.freedesktop.org/drm/i915/kernel/-/ 
> issues/5969#note_3248404
> 

I am not sure if this patch would help with the above gitlabs. For 
example in case of #7052 pipe max bpp is 30 and the commit still fails.
However, I need to look deeper.

I am thinking of relaxing this restriction all together because the 
earlier assumption that a panel advertising HDR will support atleast 
10bpc in all it's mode turns out to be false.

Currently, I am inclined on the following policy.

- If DSC is not available, fall back to normal bandwidth calculations 
and select the highest bpp the link can support. (Also preferred by Kwin)

- If DSC is available, prefer falling back to DSC and attempt the 
highest bpp allowed by bandwidth constraints.

I am working on a patch for this and should be able to float something 
soon. Imre, if you agree with this policy, would you please wait for the 
patch. That should make it easier to send out fix for stable kernels.

==
Chaitanya

>> +    }
>> +
>>       if (dsc && !intel_dp_dsc_compute_pipe_bpp_limits(connector, 
>> limits))
>>           return false;

