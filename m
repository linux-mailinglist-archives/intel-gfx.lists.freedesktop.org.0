Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 45CC6998E24
	for <lists+intel-gfx@lfdr.de>; Thu, 10 Oct 2024 19:14:01 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 5A55A10E0EC;
	Thu, 10 Oct 2024 17:13:59 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="kY/UlBxg";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.13])
 by gabe.freedesktop.org (Postfix) with ESMTPS id F0C1210E0EC
 for <intel-gfx@lists.freedesktop.org>; Thu, 10 Oct 2024 17:13:57 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1728580438; x=1760116438;
 h=date:from:to:cc:subject:message-id:references:
 content-transfer-encoding:in-reply-to:mime-version;
 bh=5JIXtkFY8s+Ft2XJnsQ5h0MoM2v2fC4PjqpLWtRIrpw=;
 b=kY/UlBxgZG8p9OSTOwg3tdHd4SvcAt+9fQw5YvvQpVYUGvNMmcayVwzJ
 I97/NdKirDCSNsJsBIZXQhYnftms2TVtntICvhQTq1OBdExwb0c+aO9tY
 /8IGENoPBdmyMwpMPKIpvHtW1wRZwlb3TYGow7GEh9q5c+It3jQRWVkLH
 TFwnXVzSD65S3cITwoCteiO5MxqIw5hjxCnRQiPIQNSmPnmWGVbLO2fVN
 dM9gQtYIXJcb3zFvjI5mdLposK/do49WdP4byqjm3P8T1vVIc7+jD8rWf
 IpD9+WScGE7+CmfdcLGleQA8ePUPZdZkgSPtK4YXnML601wqukwhxkvcn g==;
X-CSE-ConnectionGUID: 6z9aIFHhQoSTx6kxTQk9FQ==
X-CSE-MsgGUID: G1x21rIWTsyvGH2lgGMSmQ==
X-IronPort-AV: E=McAfee;i="6700,10204,11221"; a="30829259"
X-IronPort-AV: E=Sophos;i="6.11,193,1725346800"; d="scan'208";a="30829259"
Received: from orviesa005.jf.intel.com ([10.64.159.145])
 by fmvoesa107.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 10 Oct 2024 10:13:57 -0700
X-CSE-ConnectionGUID: ZuUJQQxvQ9OLvlZVJd5NNw==
X-CSE-MsgGUID: FdDhCERySsKdgIR994cnWQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.11,193,1725346800"; d="scan'208";a="81457709"
Received: from fmsmsx603.amr.corp.intel.com ([10.18.126.83])
 by orviesa005.jf.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 10 Oct 2024 10:13:58 -0700
Received: from fmsmsx610.amr.corp.intel.com (10.18.126.90) by
 fmsmsx603.amr.corp.intel.com (10.18.126.83) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39; Thu, 10 Oct 2024 10:13:56 -0700
Received: from fmsedg601.ED.cps.intel.com (10.1.192.135) by
 fmsmsx610.amr.corp.intel.com (10.18.126.90) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39 via Frontend Transport; Thu, 10 Oct 2024 10:13:56 -0700
Received: from NAM12-BN8-obe.outbound.protection.outlook.com (104.47.55.168)
 by edgegateway.intel.com (192.55.55.70) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.39; Thu, 10 Oct 2024 10:13:56 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=BKILWzKGX5EOGcCSUHoV0B0MGu5DzhYbYet8dsxpK2F9TGOiX63WOkp89EP62Ie28pq9hs3hqohXNZa9RRieo+g3lCaC2jYInglz6LkqLgoxQD3m2XJKh3PVbK98NFS+78zg6jmsXgC118Jl037QkAsrhorCyW67sNwdHaBI49hpWoNXbKDKWS20hd3QrcN06o8DpV1SzvcUrLrKpwSXbAf6xgfqc0i6IrbZOsqo6OxapFF8Z2I2rkD08UH16lHdiGsv7zDQns93hpyOqS/diYzQDg7Z4xHwf67otB/ItSusXUedxotMmT4c38+zu/jryLDWOuJgz/pgr+I2XTGMYA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=VUvSvFNY5sncl5it9YYGLuWZIkJs/nLUFv/Qp8phx3s=;
 b=DTPrHA1lW0YT2LIcaLB9WVIwQ/m1dbFF+rDwdIjRGznC3XP82n8OdBeNfYkcYcqJgqsEd+f+weVM9EYrzSn+b9unk+8PdBaBRM6ffO6zXCb65pJfos/nDkT4390WPRl3wCrBVu1gMLsSJWEklpi7r802fzVKQJxQbEJG2WthPEDHcfJd2pmdZJ49fgjj0KMeXmDyGAGt8OMG3QvbX/tSJRJOaZK8QD7MoKaPNOVNFHk25sIeBbAPja2ni0QGD/l7q56vLYBnbTaR+xmdXy2hKe+d2CDcK32L9yXHqzZ7K27wCpVWGPxVCVas0aB4dKwT5Ll2BO/7+e36sPCsYuSlqg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from PH8PR11MB6974.namprd11.prod.outlook.com (2603:10b6:510:225::16)
 by PH0PR11MB7165.namprd11.prod.outlook.com (2603:10b6:510:1e9::12)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.8048.18; Thu, 10 Oct
 2024 17:13:52 +0000
Received: from PH8PR11MB6974.namprd11.prod.outlook.com
 ([fe80::c0b4:f63a:9c33:ec4a]) by PH8PR11MB6974.namprd11.prod.outlook.com
 ([fe80::c0b4:f63a:9c33:ec4a%4]) with mapi id 15.20.8026.020; Thu, 10 Oct 2024
 17:13:52 +0000
Date: Thu, 10 Oct 2024 22:43:44 +0530
From: "Vivekanandan, Balasubramani" <balasubramani.vivekanandan@intel.com>
To: "Pottumuttu, Sai Teja" <sai.teja.pottumuttu@intel.com>, Ville
 =?utf-8?B?U3lyasOkbMOk?= <ville.syrjala@linux.intel.com>,
 <intel-gfx@lists.freedesktop.org>
CC: <matthew.d.roper@intel.com>
Subject: Re: [PATCH] drm/i915: Remove unused underrun interrupt bits
Message-ID: <ZwgLSBvC4m8B3Mv8@bvivekan-mobl1>
References: <20240925111802.2227604-1-sai.teja.pottumuttu@intel.com>
 <ZvQYGgYQcJnXl_wg@intel.com>
 <98eef4e7-1e43-407e-8f30-b7325c738956@intel.com>
 <ZwYyWdy8m38qnxOv@bvivekan-mobl1>
 <c7609ca9-4027-47fd-9b58-abf2cb7a0438@intel.com>
Content-Type: text/plain; charset="utf-8"
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <c7609ca9-4027-47fd-9b58-abf2cb7a0438@intel.com>
X-ClientProxiedBy: MA0PR01CA0009.INDPRD01.PROD.OUTLOOK.COM
 (2603:1096:a01:80::20) To PH8PR11MB6974.namprd11.prod.outlook.com
 (2603:10b6:510:225::16)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: PH8PR11MB6974:EE_|PH0PR11MB7165:EE_
X-MS-Office365-Filtering-Correlation-Id: ff9c7d73-2658-471a-e284-08dce94ee9e7
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|366016|376014|1800799024;
X-Microsoft-Antispam-Message-Info: =?utf-8?B?dFhQMFBpME13ZHM1eEJWUHAvdEV1SmVIWHNsSklZZjdKTVZTc2g1dGlRMlZi?=
 =?utf-8?B?RnhjSkFvdWxsTWZYc0tDM2t3RXdmeTJJSzROWEh4aXBqU1B1dStMRDUwbFNq?=
 =?utf-8?B?THVyT0tMeFVURVJYclNEZGdHSFBaSnZhSUJTbUJ6VUkxL1Y1cWpsb0JOQW1X?=
 =?utf-8?B?QWhVaVV0Z0N0TTY2b0VTd2NERTNMN0hCWjVCZDNtZlQ3MCtOaDV0N1ZHQytU?=
 =?utf-8?B?N3gyUzMwcHR6UDZJN0xPQVVrQmxqdHpLVDdteDcwMkNocW1SNXhWcloydWVO?=
 =?utf-8?B?RThrZENaVzcwdlh3ZTlDZktKVndIVkJ5dmtQd1J2Mmk0NDJUZTg5OUhnRXdl?=
 =?utf-8?B?MFEwRXpYQWhrWlo5ZW5BREppUUJFYkVmMk83Y1RxY2FLVHJFS3BCbUgzSllG?=
 =?utf-8?B?M1lyR2d1VlJzWGFpQnFkN29zTEJ4dmxRL296Z2dSNGYxcE5acVZpOXd4UC9a?=
 =?utf-8?B?S01McEdMQ2xtSkpZWUJkcEtEaFB4WFhFa3I2d1hGSjJud2IyNHpzOEVsQlZa?=
 =?utf-8?B?a1hJWE0yZWdPa1B3T24wV2ZXNFgwOVpNOGNtNHk5dlJ3dEE4TjVTUFlYL0pL?=
 =?utf-8?B?dmxhWHZjRlZBOHQxaGk5djNZS2hCNDhGaU1kcW9HajQyMnRDM2lvSEVud3lI?=
 =?utf-8?B?M0F2S3ZhR3VRMUZrQXYzWmxIekZjdEJSZkVWN2lyaTZHaUl3enJNVXovNmpY?=
 =?utf-8?B?M21CQ0FXd1k2WUZydXFmcFB2cHJqMkpsRk1QQWxGb1VCWTFzeDJzQU5UOHpW?=
 =?utf-8?B?OHU2T0YvazdUbHdvd2hGNjZEM2d1TjRNTVhsSU1BV2gyNmlBNjZPZjliOXBK?=
 =?utf-8?B?VmxuQnEzVWliNnpZVTdSK0lDWWJ2WDFWb090MjZLT3ZHTkNtWFBiMTFuNVND?=
 =?utf-8?B?bGFNMk93bDlUNnVzTlFZOFBVM3NLa1B0OXZUWHNxM2lNSHY2QnFNakJ4WWVu?=
 =?utf-8?B?aXBWTGVLaU9FUjh5ZnMrUm0wTC9BczZ1MTlKTm5RelkyRDE2N0Jld3ZJL2xp?=
 =?utf-8?B?RkFBMFowRElOVjRhYXZTWDNYLzZwbDhRYms1bXdqTE4rK0hQYzIzdVZ0VHRL?=
 =?utf-8?B?UXpnQlFQa0s1RFVlTXhwM2lCQlgrS2pxRlEvZ2dldmVMSXJtN3lFOWJjcXpt?=
 =?utf-8?B?bHdBeVJZcys1NzBXY3ZLQVRicjVxbFBjZkVuTjR4NDVtQnV2eTNLQzJYanBr?=
 =?utf-8?B?ODZzckJLRVBEdUVXTHhlcGRsVnpsS09IWDJrWVVySXhIa2pHbWpOd1ZrLzhn?=
 =?utf-8?B?VTJpOC80VWpFQmFoMWo5Sk1kRUxwTmhVUFVYN1hvR2ovZU0xU1hsTis1Qmpn?=
 =?utf-8?B?dEFZeTlMWW9hRWQ5SWhHZlBocjhLM0VXWnZuV2lHNEUwZ29KTUo5QzVjVExt?=
 =?utf-8?B?aDBpZ2tEc1hTSFJtT1dQK3VYUGFVSHBKN2YxT1NLOXAxRnRGU1FuYnZaMW5S?=
 =?utf-8?B?NTN1emtCeCtTTW5qcnJ1ZzVmUEhQZXp2Z3BHeUpLTGxRNWhod0FWOHo0NUNO?=
 =?utf-8?B?dFJBN1pVRWorVTU2MGpVUVExSE1DVC9mNmdlV0ZxSWtQcnlvY3ZXNkdYaVow?=
 =?utf-8?B?a0FWYWR4dExHcllmRWx4VmoveGo2ejZxM1J3bTZLMW0wL1FQdEtBYm1SSDly?=
 =?utf-8?B?ck8yVkVpTEFHZ0ozekRxNUZPMElpaHZHclhKMVRzRlVnQlVVLytyVmRwY2tr?=
 =?utf-8?B?d2xTSmxteDdUSjZUVkdJdFhiK3h0b25hN0REM241MW5SVjRyYk0wTndnPT0=?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:PH8PR11MB6974.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(366016)(376014)(1800799024); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?ZzlxaTRHZmxMUVJPTDBYdmRLOTBXTEdhbEpmRWRZYUFkZHI5VldWbm42SUht?=
 =?utf-8?B?SnJ1MXFlY0piTjFLTmM0ZkNjVVN2Vk9Sc3VBdkRlVjlXOTl5RHJvWnA4YkhD?=
 =?utf-8?B?TTRHN3pVT25mUU5FczE3TXNWQThSSHU5K2pLdVluSnJOcThNc2xvdEpCbElZ?=
 =?utf-8?B?bFhidFRaNjRtVkVHNFBIaVNqZDdSdy9RN1dldVpMcm5ZSEFGVzdOOEk3a0Rq?=
 =?utf-8?B?OTRGZGxpRHJlV1ZlRzBjT0V6a2NnSGZDQ2VxN1lzcEcvU0JMak01V3M5eDhl?=
 =?utf-8?B?MzlqeWhnOFpUQ0ZIdUZpSms1dGFYbWZKanVKdENkdElhemRlczlOY3V0SUk5?=
 =?utf-8?B?ZENMYlZmVXRrTkIxT3FmeE5RNXpSK2lzZlhJL0twRWF5K041N0ZTUHNSbkIv?=
 =?utf-8?B?LzFxSDlvcWowMVFsTjd5R1doeG0zZE0xdVpUM090WmF0S0xNckhYYjU3cnho?=
 =?utf-8?B?cWRMM3YzMzVaQ3hjOVBDUkkrM2RXemJwMGRnTzdaNTZka0k0bWdKdHVlZW9l?=
 =?utf-8?B?eFB1UDlsaHRvNWVVMmRzWWpaK2FzK3pmV2hueDBtSm82Nk1ENTlmTU9idGp3?=
 =?utf-8?B?NFpEQU05bGRjZXRPU0xNUUZQTG1UUWh6R3B2UWVTQ1hmN3lsTXdhWExoRFh1?=
 =?utf-8?B?UHYxOEJuWEFRU3VQQ0lLK1VXSUdpZGlmMUI4eFp5QUMrc05Xd2RWc1RUT1Mr?=
 =?utf-8?B?WTVrODlrM2dsL1FWU1ZsTURyV3pQbXBpMDM0bENHZkZWcS91V0dUcU1VYk5L?=
 =?utf-8?B?OTZFUDJoeFhPMGNETTN1RnoxWW9OUExFVWtPM1NaTmZWM2JLUnlDSjBiVC9z?=
 =?utf-8?B?MG53UFEwMWJHTVh1YnZFZjZJcitNeUpXZCtyeDQ4WDJ0OFp4NWpTZm95U2U4?=
 =?utf-8?B?WXpiSVZHV0taQSthRStONGVGSlNYMHFDMkdQTndnS1V5ZHhkSFgvZEpLdlVL?=
 =?utf-8?B?K3BXVnNPcmtkUEk2Uk5rb1RwRGkrV1hydVhwTlUxaG5Xc1k4MC9XWG5QQ21k?=
 =?utf-8?B?M2dDMjFRSVMvbVJ4U3R4SGtkK1lDTFpISnArS3BUR2tqcGM1SDZocUFwZ0tY?=
 =?utf-8?B?Wmo5SFM5QXEzNnZpZGl6ZFZ0bHVqSFRXZFkvelBLc3hZdGMxS0tTSEJSSXlQ?=
 =?utf-8?B?NjJvYWkySUJzekxCOVFGMnA2aGtsRStKRGUzQnYrbG5CTUs0NHpEbnpoZG9Q?=
 =?utf-8?B?bWYrN1RPVE41VTBuYU4vbkE4am9MUVN1bjdlREdKYlRRbUI5N2dIYm1xTkRX?=
 =?utf-8?B?RERnaitvOVo0TVNRdUJ1N3dpWnF0UlRTalhYZGNibXBobjlzcm55T0RYSzZi?=
 =?utf-8?B?ck55SjViSHd1ZFVhWDdJbU5ZMWtBM3MwUHJLMWRDY0RrQkpLUUpnYjJiME9E?=
 =?utf-8?B?aUJrbGJHWk80UDdxM3NoTXhDUDVmWVBMV0VGTnU0SE0wbzlhSVNPRkZOTllo?=
 =?utf-8?B?R3hmeTc0ZDVqbEdDc0dYSHc2L3Y5VU9sN01LOWhlTk9yd2o0R09YbE1iRFVB?=
 =?utf-8?B?U0ZpUjUvSm9VSUZlME5WWkN1V2tQNXkvUklWOHRjeWNtQm9mM0h4R1Q1bHMx?=
 =?utf-8?B?WDZuVS9UUW1ZcHdCcGJyWU1GMm1rcHhwcCtqOGdZSUw5T1BMYlhkRmhoK1NJ?=
 =?utf-8?B?dWhtbGJaYXBtazhPb1NDNTFGODltd3BUa0FCV3R6OWZWYjV1OE1KekJsanVo?=
 =?utf-8?B?NzNiSjJoOVhNdHdqM1hWczZNb3V6SE1JQVZUbm93d1pMaTRCWEdIaG05SEd3?=
 =?utf-8?B?SHBSVWUvNTBXaUhQY1FVdTBuc2FZTlZwemNGRW9tRWQyNmQ0bjIzSU9ETDFD?=
 =?utf-8?B?b0dvNEVqL25KZVBUMnpEMnl2NDNZaFRERkVBc1J2OFBpeDJiWmx1ZmdMdnFi?=
 =?utf-8?B?N3pWN2lEdzZPNlRqeTVFOEQwNUxNYzNDNm9oeVNVK251YjdWRXVDNG5zQ1hY?=
 =?utf-8?B?TTlLc0FmM0FMY1dZV2RkUHhacktOVGM2MHVPK3QzbXRKa0JmWFliczNuc3ZO?=
 =?utf-8?B?clRGYW4yMXhOYUZrK05YQ09kTzFlWlFIQmM4bFhtTkNFbTZtZ0gvT2xVbkJL?=
 =?utf-8?B?MzF0MHIvUTVSU2lrYlEraHhjb2UvRDVBcWNIR2FRdXJiZXpaVDRrbzJUd1dv?=
 =?utf-8?B?LzhIamZPZTB0U0xYWkhwb09IV2x0Slh3VmZZclFlK2h5bW5HSCtYYmNjRnlv?=
 =?utf-8?Q?eQQy1GNGj/z5oqm5Exh9Dqw=3D?=
X-MS-Exchange-CrossTenant-Network-Message-Id: ff9c7d73-2658-471a-e284-08dce94ee9e7
X-MS-Exchange-CrossTenant-AuthSource: PH8PR11MB6974.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 10 Oct 2024 17:13:52.2043 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: GGRBErimb7B6p82nLg28CE+hIXpnRZ1bf0ITdFVNkIFurqdGjbMsq3+8JtD43dIYKWrgKNBf+IsdOcwYbyizF9wau865yOu0+W98K2obf0ArWCsupI/SMORZTF2ZZMWT
X-MS-Exchange-Transport-CrossTenantHeadersStamped: PH0PR11MB7165
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

On 09.10.2024 15:35, Pottumuttu, Sai Teja wrote:
> 
> On 09-10-2024 13:05, Vivekanandan, Balasubramani wrote:
> > On 26.09.2024 10:52, Pottumuttu, Sai Teja wrote:
> > > On 25-09-2024 19:33, Ville Syrjälä wrote:
> > > > On Wed, Sep 25, 2024 at 04:48:02PM +0530, Sai Teja Pottumuttu wrote:
> > > > > Underrun recovery was defeatured and was never brought into usage.
> > > > > Thus we can safely remove the interrupt register bits introduced by the
> > > > > feature for detecting soft and hard underruns.
> > > > > 
> > > > > Signed-off-by: Sai Teja Pottumuttu <sai.teja.pottumuttu@intel.com>
> > > > > ---
> > > > >    .../gpu/drm/i915/display/intel_display_irq.c  | 19 +++----------------
> > > > >    .../gpu/drm/i915/display/intel_display_irq.h  |  1 -
> > > > >    .../drm/i915/display/intel_fifo_underrun.c    |  5 ++---
> > > > There's a lot more related stuff in that file.
> > > Assuming that you are referring to the ICL_PIPE_STATUS register and the bits
> > > added there to detect soft, hard, port underruns,
> > Is it only the underrun recovery defeatured? Do we have the reporting of
> > underruns caused downstream by the port/transcoder working?
> > Then it makes sense to me to still keep the Port/Transcoder underrun
> > reporting as it would help in debugging any underruns.
> > Still there would be stuff related to Hard/Soft underruns which can be
> > removed from the driver like those in function
> > icl_pipe_status_underrun_mask, printing of soft/hard underruns in
> > intel_cpu_fifo_underrun_irq_handler.
> > 
> > Regards,
> > Bala
> 
> The reporting is also de-featured. So, as part of the logging/reporting we
> had 4 things being reported and following are there statuses
> 
> 1. PIPE_STATUS_SOFT_UNDERRUN_XELPD: This can safely be removed.
> 2. PIPE_STATUS_HARD_UNDERRUN_XELPD: This can be removed as well.
> 3. PIPE_STATUS_PORT_UNDERRUN_XELPD: This seems to be the problem, this is
> de-featured as well but currently is always set and thus the string "port"
> appears in the ci bugs. Removing this might cause duplications in ci bugs if
> it fails to understand that its the same bug even without "port".
> 4. PIPE_STATUS_UNDERRUN: This still tells that the underrun happened on the
> transcoder attached to this pipe. But then as far as I understand, the
> underrun interrupt itself tells that its an underrun on the transcoder so we
> need not use this bit specificially I believe. But then again removing this
> and the "transcoder" string there might cause ci issues.
> 
> So, we have two options here
> 
> 1. Either just remove the SOFT/HARD underrun bits/reporting for now and
> remove the other ones at a later point of time.
> 2. Or remove all these bits and make sure CI doesn't start filing duplicate
> bugs.
> 
> What would be your suggestion here?

We can just remove the SOFT/HARD underrun reporting for now to avoid impacting CI.

Regards,
Bala

> 
> > 
> > > I have not removed those bits in this patch because we are logging these
> > > bits in dmesg and specifically the PIPE_STATUS_PORT_UNDERRUN_XELPD,
> > > PIPE_STATUS_UNDERRUN bits seems to be set always because of which "port,
> > > transcoder" string appears in a lot of underrun issues filed by CI. I was
> > > under an assumption that if we remove these bits and the log, it would
> > > create trouble with CI filters and we might start seeing duplicates of the
> > > existing issues as new issues. So, my plan was to remove those bits at some
> > > later point.
> > > 
> > > What would be your suggestion? Should we remove them now itself and work
> > > with CI to see that filters still detect the existing issues without "port,
> > > transcoder" as well.
> > > 
> > > > >    drivers/gpu/drm/i915/i915_reg.h               |  2 --
> > > > >    4 files changed, 5 insertions(+), 22 deletions(-)
> > > > > 
> > > > > diff --git a/drivers/gpu/drm/i915/display/intel_display_irq.c b/drivers/gpu/drm/i915/display/intel_display_irq.c
> > > > > index 6878dde85031..9d8a101b2415 100644
> > > > > --- a/drivers/gpu/drm/i915/display/intel_display_irq.c
> > > > > +++ b/drivers/gpu/drm/i915/display/intel_display_irq.c
> > > > > @@ -1031,17 +1031,6 @@ static u32 gen8_de_pipe_flip_done_mask(struct drm_i915_private *i915)
> > > > >    		return GEN8_PIPE_PRIMARY_FLIP_DONE;
> > > > >    }
> > > > > -u32 gen8_de_pipe_underrun_mask(struct drm_i915_private *dev_priv)
> > > > > -{
> > > > > -	u32 mask = GEN8_PIPE_FIFO_UNDERRUN;
> > > > > -
> > > > > -	if (DISPLAY_VER(dev_priv) >= 13)
> > > > > -		mask |= XELPD_PIPE_SOFT_UNDERRUN |
> > > > > -			XELPD_PIPE_HARD_UNDERRUN;
> > > > > -
> > > > > -	return mask;
> > > > > -}
> > > > > -
> > > > >    static void gen8_read_and_ack_pch_irqs(struct drm_i915_private *i915, u32 *pch_iir, u32 *pica_iir)
> > > > >    {
> > > > >    	u32 pica_ier = 0;
> > > > > @@ -1187,7 +1176,7 @@ void gen8_de_irq_handler(struct drm_i915_private *dev_priv, u32 master_ctl)
> > > > >    		if (iir & GEN8_PIPE_CDCLK_CRC_DONE)
> > > > >    			hsw_pipe_crc_irq_handler(dev_priv, pipe);
> > > > > -		if (iir & gen8_de_pipe_underrun_mask(dev_priv))
> > > > > +		if (iir & GEN8_PIPE_FIFO_UNDERRUN)
> > > > >    			intel_cpu_fifo_underrun_irq_handler(dev_priv, pipe);
> > > > >    		fault_errors = iir & gen8_de_pipe_fault_mask(dev_priv);
> > > > > @@ -1607,8 +1596,7 @@ void gen8_irq_power_well_post_enable(struct drm_i915_private *dev_priv,
> > > > >    				     u8 pipe_mask)
> > > > >    {
> > > > >    	struct intel_uncore *uncore = &dev_priv->uncore;
> > > > > -	u32 extra_ier = GEN8_PIPE_VBLANK |
> > > > > -		gen8_de_pipe_underrun_mask(dev_priv) |
> > > > > +	u32 extra_ier = GEN8_PIPE_VBLANK | GEN8_PIPE_FIFO_UNDERRUN |
> > > > >    		gen8_de_pipe_flip_done_mask(dev_priv);
> > > > >    	enum pipe pipe;
> > > > > @@ -1797,8 +1785,7 @@ void gen8_de_irq_postinstall(struct drm_i915_private *dev_priv)
> > > > >    			GEN12_DSB_INT(INTEL_DSB_2);
> > > > >    	de_pipe_enables = de_pipe_masked |
> > > > > -		GEN8_PIPE_VBLANK |
> > > > > -		gen8_de_pipe_underrun_mask(dev_priv) |
> > > > > +		GEN8_PIPE_VBLANK | GEN8_PIPE_FIFO_UNDERRUN |
> > > > >    		gen8_de_pipe_flip_done_mask(dev_priv);
> > > > >    	de_port_enables = de_port_masked;
> > > > > diff --git a/drivers/gpu/drm/i915/display/intel_display_irq.h b/drivers/gpu/drm/i915/display/intel_display_irq.h
> > > > > index 093e356a2894..1b3f559a0638 100644
> > > > > --- a/drivers/gpu/drm/i915/display/intel_display_irq.h
> > > > > +++ b/drivers/gpu/drm/i915/display/intel_display_irq.h
> > > > > @@ -33,7 +33,6 @@ void ibx_disable_display_interrupt(struct drm_i915_private *i915, u32 bits);
> > > > >    void gen8_irq_power_well_post_enable(struct drm_i915_private *i915, u8 pipe_mask);
> > > > >    void gen8_irq_power_well_pre_disable(struct drm_i915_private *i915, u8 pipe_mask);
> > > > > -u32 gen8_de_pipe_underrun_mask(struct drm_i915_private *i915);
> > > > >    int i8xx_enable_vblank(struct drm_crtc *crtc);
> > > > >    int i915gm_enable_vblank(struct drm_crtc *crtc);
> > > > > diff --git a/drivers/gpu/drm/i915/display/intel_fifo_underrun.c b/drivers/gpu/drm/i915/display/intel_fifo_underrun.c
> > > > > index 745ce22afb89..fb01c128e1c5 100644
> > > > > --- a/drivers/gpu/drm/i915/display/intel_fifo_underrun.c
> > > > > +++ b/drivers/gpu/drm/i915/display/intel_fifo_underrun.c
> > > > > @@ -209,7 +209,6 @@ static void bdw_set_fifo_underrun_reporting(struct drm_device *dev,
> > > > >    					    enum pipe pipe, bool enable)
> > > > >    {
> > > > >    	struct drm_i915_private *dev_priv = to_i915(dev);
> > > > > -	u32 mask = gen8_de_pipe_underrun_mask(dev_priv);
> > > > >    	if (enable) {
> > > > >    		if (DISPLAY_VER(dev_priv) >= 11)
> > > > > @@ -217,9 +216,9 @@ static void bdw_set_fifo_underrun_reporting(struct drm_device *dev,
> > > > >    				       ICL_PIPESTATUS(dev_priv, pipe),
> > > > >    				       icl_pipe_status_underrun_mask(dev_priv));
> > > > > -		bdw_enable_pipe_irq(dev_priv, pipe, mask);
> > > > > +		bdw_enable_pipe_irq(dev_priv, pipe, GEN8_PIPE_FIFO_UNDERRUN);
> > > > >    	} else {
> > > > > -		bdw_disable_pipe_irq(dev_priv, pipe, mask);
> > > > > +		bdw_disable_pipe_irq(dev_priv, pipe, GEN8_PIPE_FIFO_UNDERRUN);
> > > > >    	}
> > > > >    }
> > > > > diff --git a/drivers/gpu/drm/i915/i915_reg.h b/drivers/gpu/drm/i915/i915_reg.h
> > > > > index 7396fc630e29..c379d875f432 100644
> > > > > --- a/drivers/gpu/drm/i915/i915_reg.h
> > > > > +++ b/drivers/gpu/drm/i915/i915_reg.h
> > > > > @@ -2491,9 +2491,7 @@
> > > > >    #define  GEN12_PIPEDMC_INTERRUPT	REG_BIT(26) /* tgl+ */
> > > > >    #define  GEN12_PIPEDMC_FAULT		REG_BIT(25) /* tgl+ */
> > > > >    #define  MTL_PIPEDMC_ATS_FAULT		REG_BIT(24) /* mtl+ */
> > > > > -#define  XELPD_PIPE_SOFT_UNDERRUN	REG_BIT(22) /* adl/dg2+ */
> > > > >    #define  GEN11_PIPE_PLANE7_FAULT	REG_BIT(22) /* icl/tgl */
> > > > > -#define  XELPD_PIPE_HARD_UNDERRUN	REG_BIT(21) /* adl/dg2+ */
> > > > >    #define  GEN11_PIPE_PLANE6_FAULT	REG_BIT(21) /* icl/tgl */
> > > > >    #define  GEN11_PIPE_PLANE5_FAULT	REG_BIT(20) /* icl+ */
> > > > >    #define  GEN12_PIPE_VBLANK_UNMOD	REG_BIT(19) /* tgl+ */
> > > > > -- 
> > > > > 2.34.1
