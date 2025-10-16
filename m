Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 0221ABE1CBC
	for <lists+intel-gfx@lfdr.de>; Thu, 16 Oct 2025 08:45:29 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id E95E110E968;
	Thu, 16 Oct 2025 06:45:26 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="c0U6tt1o";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.17])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 5A06610E967;
 Thu, 16 Oct 2025 06:45:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1760597125; x=1792133125;
 h=date:from:to:cc:subject:message-id:references:
 in-reply-to:mime-version;
 bh=m1wQGKphyzH1XVB+CHToQfynAUWBf6azj8bo/AzhSiM=;
 b=c0U6tt1ouqQoKFx0PzXjtYezAWVLTG9LC/ZWsUEIWK9R8x5MycbqnUQD
 ukLAXRo0Jicrm4yeTbWAMeqA0s2CBp9QRW/6r+AuBntBpWvSLhLbUYZGe
 nbI9iMtJQYCzGT87dLvWTSrnxEQPhWGb0vbP4JLYyG2otGAnXlvKwA8DT
 YqmVlJbEtfO9URfBOA56Pe0m44VewQoaiiN5/v3hi0MGbPCPCLWP7B68l
 4xOFDNqc3FOxEIaecLLmG7GaR1JELKJpEAjg5a9t/el3n6sHCnLbmwo12
 TTIzmP/pmS2Sa9E+XQnEOroi+fKdNM9eJ0k/bnfntMj2FzyZaF1XJ68l+ Q==;
X-CSE-ConnectionGUID: LXtTW0z3TxK25+SPP2oZgQ==
X-CSE-MsgGUID: nTR2n00oRta15ZbZeOnEAg==
X-IronPort-AV: E=McAfee;i="6800,10657,11531"; a="62711648"
X-IronPort-AV: E=Sophos;i="6.17,312,1747724400"; d="scan'208";a="62711648"
Received: from fmviesa008.fm.intel.com ([10.60.135.148])
 by orvoesa109.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 15 Oct 2025 23:45:25 -0700
X-CSE-ConnectionGUID: qD9ko5mYTVKuCR4rUCisDg==
X-CSE-MsgGUID: +/liSEwmTaGjuP6RVlm8mg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.19,233,1754982000"; d="scan'208";a="182775144"
Received: from fmsmsx903.amr.corp.intel.com ([10.18.126.92])
 by fmviesa008.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 15 Oct 2025 23:45:24 -0700
Received: from FMSMSX901.amr.corp.intel.com (10.18.126.90) by
 fmsmsx903.amr.corp.intel.com (10.18.126.92) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.27; Wed, 15 Oct 2025 23:45:24 -0700
Received: from fmsedg901.ED.cps.intel.com (10.1.192.143) by
 FMSMSX901.amr.corp.intel.com (10.18.126.90) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.27 via Frontend Transport; Wed, 15 Oct 2025 23:45:24 -0700
Received: from CH5PR02CU005.outbound.protection.outlook.com (40.107.200.6) by
 edgegateway.intel.com (192.55.55.81) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.27; Wed, 15 Oct 2025 23:45:24 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=nncF+uHJnp8IU6gBIhM4tp7awTDmNfO0klPx4LDEpvfacLumB7/Z+wwfQHpg+klvr83xS17WsRIui7Nv7Khbk03GGQtYNpXQTzn/QOPVUdtg88PO/KtJfsNUbOTWqLIQ9lMkOl50XRl5uiE6VuE38LbZMDUVoOefZ6oKD3dgYY8bSOBJxwFj91Uw5H0l5l44TjhnIb7OAgLMt1dVu2BEHOFRRrUH1VPLuEagXFFTJHdZAU9UTnxDBkQ1wCHZviwRo9i9q35rve8DW5HXFmQ+Th0p8NB8B7YvfRb8cLaiOaYyJt5JQxD7EvuxP3083PW1st5Mr+fR4UWom/83UcGQLA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=EL2PxRDpMi6Cf990wR88RN/b0fGUtwA2ZEuWfObLDqM=;
 b=Vnv9LyiJGZsGvL1xuCQJ29piGv3NpKdeC+MpE0Q2F85OA/BEEpa1DVm/4gGtepCh8AlA3rdJM5X6xEPF4OCLBFZVn7VyOn4QQnvkrD3prj6zmGMST7GXyPd5gNQNE/iAgCY4WLd8CNrhMOUVOXSj8aR6gUKz3AER1WFUGGo1FZy/GiGAeWuu3pdIJ6GKSRGt057HMS8YbcQZfodn7eJC1aR+RDhEIHOzt1AWWkyBlcgYn/4TkbaA/Bj/fgfRShtwco+tjcGnQH/biRVGmte71j5SbY4GLCqsW0d8Mg5lvqoadLy7BI8iyFFMPD2xiP9Mox1RihZFuNNgI/mIsEKpVw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from PH0PR11MB5064.namprd11.prod.outlook.com (2603:10b6:510:3b::15)
 by DS4PPFE901A304F.namprd11.prod.outlook.com (2603:10b6:f:fc02::5b)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9228.10; Thu, 16 Oct
 2025 06:45:22 +0000
Received: from PH0PR11MB5064.namprd11.prod.outlook.com
 ([fe80::33e9:2b0b:5259:ff9e]) by PH0PR11MB5064.namprd11.prod.outlook.com
 ([fe80::33e9:2b0b:5259:ff9e%6]) with mapi id 15.20.9228.010; Thu, 16 Oct 2025
 06:45:22 +0000
Date: Thu, 16 Oct 2025 06:45:11 +0000
From: Krzysztof Karas <krzysztof.karas@intel.com>
To: Janusz Krzysztofik <janusz.krzysztofik@linux.intel.com>
CC: <igt-dev@lists.freedesktop.org>, <intel-gfx@lists.freedesktop.org>, "Kamil
 Konieczny" <kamil.konieczny@linux.intel.com>, Chris Wilson
 <chris.p.wilson@linux.intel.com>, Tvrtko Ursulin <tursulin@ursulin.net>
Subject: Re: [PATCH i-g-t v3 6/6] tests/gem_eio: Reduce debug info on dmesg
 from kms subtest
Message-ID: <r6kqf64dizraseqfmay364sebr7ixbrrrhujzhhnfe3ozlybgq@633ndzkdohl7>
"Organization: Intel Technology Poland sp. z o.o. - ul. Slowackiego 173,
 80-298 Gdansk - KRS 101882 - NIP 957-07-52-316"
References: <20251015124419.66460-8-janusz.krzysztofik@linux.intel.com>
 <20251015124419.66460-14-janusz.krzysztofik@linux.intel.com>
Content-Type: text/plain; charset="utf-8"
Content-Disposition: inline
In-Reply-To: <20251015124419.66460-14-janusz.krzysztofik@linux.intel.com>
X-ClientProxiedBy: WA2P291CA0004.POLP291.PROD.OUTLOOK.COM
 (2603:10a6:1d0:1e::8) To SA2PR11MB5066.namprd11.prod.outlook.com
 (2603:10b6:806:110::9)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: PH0PR11MB5064:EE_|DS4PPFE901A304F:EE_
X-MS-Office365-Filtering-Correlation-Id: d979e436-39ab-461c-3e23-08de0c7f940b
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|366016|376014|1800799024|7053199007;
X-Microsoft-Antispam-Message-Info: =?utf-8?B?NnRyNGRYMjJCRi9WMDR6KzF5UjV6bUxyUmg3M1BiL3VNcUljSVR5S0JwNS9V?=
 =?utf-8?B?MWU1WDhHSzQvRHpROTlnWkxKS1R1NHBQaWFMMkVLOHRJZWNjd0dJUnVudm1S?=
 =?utf-8?B?VkpOc2w0WEQ5SXVTenVESDNQNUpWUWlIMGtSVnQ4SjRSMXRicjYzOFJ4Z1Va?=
 =?utf-8?B?Rk12eExRSm1mNGgrdGg5eTNTU1hpNlkwOStUUkR1ekh0VVVkblVKN25lWFd0?=
 =?utf-8?B?Q3R4Q2I4aDJrQ3BVaFFsMGFIMGtza043eERuWVYxQWFHSVRGMW5QZ2pMRVRx?=
 =?utf-8?B?TmJDTTM4VVAxNURxejdlTUJqSWtZM0dCR20wZjNPekdHWHVQMXZjMi91MW9w?=
 =?utf-8?B?Qm5ON2FHN0wxbUlQdFRlaDNYYnl5d3FYYStQVzJMOVRkaWUwU09IUUF4UnpG?=
 =?utf-8?B?cERTK0daU0lXSmF1NHlZWmdYZVcybytxNFZsbk9tUUZGN1A2Mmx2V1FwdUw5?=
 =?utf-8?B?eStsSHZIeWg2MVBOKzdVZnIwUkE0VHp6REdIQjNrN0RVS3JXaW1XTVZTaWpK?=
 =?utf-8?B?NXdHcjlQcWJyck5qZDZaaWJTMDVUZm1YZEpOY1dNRnBWcVlDNm5XM2VuUllv?=
 =?utf-8?B?cHlQZ1lCb1BVR1dYYk1veTllWDNKeW9DakpVR1lQMXdabGR4THVjcnQ0TE5R?=
 =?utf-8?B?UzRwYk00QTI3ZW12bVVFTW9KYWk3NTFBTFVlLzBkeldiZDArT0R2TktYZkkx?=
 =?utf-8?B?S3FsSTI5aFBZcmhMSFhsVENFUURHQStka2FRNHQ1Q3Z2UlhVMDg2TU43bkh0?=
 =?utf-8?B?Vm1NeFVJZ3lvTlJzUDF2WnpKNUJpNi9EekVSVk9RdUQ4blhLNGl0N1RrSkJi?=
 =?utf-8?B?azl0eE1vbDNoUHo5VmFlTFBybHhaV0E3K0ZQaTZUekgvc0oxcTMrM0JoVGxp?=
 =?utf-8?B?bEVuWmpKazRjR1Y5VG13dTY3VlA2TFArVFJhR3hjR21BeEZyakFUdXc1MXU4?=
 =?utf-8?B?aHlsb0Z0eXRYTlRPMlVyOThVL1lUYXJtWUYyOVZ0aDIyOGg3VmlUYlorbHdP?=
 =?utf-8?B?eE43aTdIcWdJdi9ERXFoSTNNb2VWaUNMOTQzRWdWWTVpRUJFckNhaUlLRldE?=
 =?utf-8?B?NkN2TUhNREVlajdjS3VxenRrWisxOFJiSmtkZThQRC8vVTJqK2ZPYzAyUHc0?=
 =?utf-8?B?UUswZ0ZKNGMxZzFySGIwVjZFeVRPeGJwYjVoZWhKOUZybnFBNTJmQVRKU2JC?=
 =?utf-8?B?bThBdmd5NWk4akd4dWY2QmNEQjU1NWJWTkYrV1I4Uzd4TGpmcDY4L2RGRE5p?=
 =?utf-8?B?UWVGeldlYWdNN0t3WUFlT2JaOGZ2NDlOZ2dQNDZpK295V0I5Q1FtVERZcHBH?=
 =?utf-8?B?SUVONmJoc0NtMThLRG5rQ1hSbEpTMGt4dkh3VENGb0hNQktvYmxDWVpkWXVL?=
 =?utf-8?B?aTluWE5vN0xHeUIwNTJaMWMrbjQvbWdaRGJ4ZHA1d2J3TFR0OG4zTHJtTnh6?=
 =?utf-8?B?TTdOVFN2RkFsOGNTcFdKL0l1ajVwTksvNFRsYzZzZ0loK2pBTGdCRS9ERDY3?=
 =?utf-8?B?YnlEZHVoU0QzakNoeENGSEhQZSt2MUN5RVJXenJVOEdHU0MrV1VsdUo3ZUhH?=
 =?utf-8?B?NUF0ZUhQWG1rOWhIS1V2OEFzczJHY2lpbWUwd1ZDQ1U4QkU3eU80d1ZhOWsv?=
 =?utf-8?B?Nkd4aFphZFZvUm5hNnVIa0U2MWp3QWNLM0dLRmhHelRYSHd6YllLbzBLR3BS?=
 =?utf-8?B?OXV0dThpemNFWmxIdmtxUVM1Z3JubDl5Z3EyZlh6emJMTFJhUEZhNElOSlNT?=
 =?utf-8?B?eFh5ODA4Y2x4NXVSVzVZWUlvSWJxZ0JRSzI0NnFaamJEOEJ2L2NYNXZzaHZT?=
 =?utf-8?B?KzNkYUlwTExkRjF6NnlUZm1Kd3B4TGlpT2NQTkk3R2w3cGpYSWVQSkk2SjZo?=
 =?utf-8?B?a1VlWXlCdnF3MTczRnBhb01QYlI1MUJRaGxYUVlzWGx5aUtZek5pbUpmYzBW?=
 =?utf-8?Q?cRVcu9vq08PURgoLU/ZjptD8gnIHP6Hf?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:PH0PR11MB5064.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(366016)(376014)(1800799024)(7053199007); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?NEh0SVNiaDBBcHVVN1gvNjREL3dWWFRuNnlUWVhkdnllUXZkS3IxQk5PVEpV?=
 =?utf-8?B?WWw2NU9XaWQzeTI3d2JtdWhBK0xEdzB6U2dOY1ZVVkR1K0xaMllzY21vSHps?=
 =?utf-8?B?aFVJak0vMjFYOEdNZmFJMVN2Z2dEdy9SUCt1UVptYmp1SlFLWS9qbHVJMzlk?=
 =?utf-8?B?dFIwb1RoK1NQMDJLaDB4bzdnTUVtZ1Nuc2pzUzFYUjBpa0NRa0VIdGdSVmcv?=
 =?utf-8?B?R0JoS2d5UkcxNnA4NHkzRjJBZVpabnpZVnM3U08wczFobFRqemNsTkZsTXpv?=
 =?utf-8?B?eks3S3QwWnVTYWN5dGRTMUVzQWhBZ0p5S0VqVGJ1RFR4ZnVFcGFZenNxMEdv?=
 =?utf-8?B?WWR6K0JpSExaZjJlU08rRXcxeWxkSUNxM0tRU05MVmlzTG80U0o0SGtSTFMv?=
 =?utf-8?B?ZTBDeUZjb2xWcjh5TlVYUWJvQ1laSnYzKzlZZ0MzZkkydWJ1dVFRUWNyVVN3?=
 =?utf-8?B?K1A0bzJoUGdvVlI0WlpxNE9EMXZMUGpodmJQeHBRb1I5SEI1VHNxSEdscHNy?=
 =?utf-8?B?RkdpV1pUVHdKd2FRdGxkelBUNzdQZDh1SXBhNEVBQ1lQOXQrRGljN3B2QUM3?=
 =?utf-8?B?WHdvR3BHSjlQN2Y1THNLeDkxY3E1QWJ1ZzB0NGMxd2hnb3lVR2wyb1RIK29s?=
 =?utf-8?B?V1JpZ0NPU2dZWXRYbUx5Q1F2RTc5K3h6Z2VMWmhFS0d4SG4wOXhXejNRaldl?=
 =?utf-8?B?RWpXWjVjUEtFSjRONEVuQk1OYXVNL1c5ZFdxQkc4QjR5WFBFRXNTOGZQK0ZR?=
 =?utf-8?B?T2QzcXBBa2JOeU53UldBL3RQT3dtVTB1a2xiQUlLVzVySGhyTFgxdkQ2VGRm?=
 =?utf-8?B?RGdZRkhEOWMwdWJKRDFkOUNjNklIZlg5MWc0aWpvYXlSS2Vkb2UxbXB4cFlt?=
 =?utf-8?B?UDFGOVZOOXUyakNBb2FabXNOZ2YzTmprRHdid1VEckc1elA0UGlGd3NSdG9v?=
 =?utf-8?B?SXBoZGcxNmRnaEx1bTZweHpGemZKemlTVFpBd1FXVG9vY2pmVnFHWkQxS21s?=
 =?utf-8?B?SXgwVGpoWm9NclI3clhUSDBJWXZBYXNCZW14T245OTRIYVFTR3Y4M3NvQW1T?=
 =?utf-8?B?NlQvMWRiRlZHM2tMbUJYcCsxNnExajJWNmZQU3VFSGUyNHNxc1N1YmlwQVBr?=
 =?utf-8?B?UEZDRmRCbVk4NVI0ZEttSGlRRDU2QU5peTVaSHNwOWRIMWFScnlYd05ONEVY?=
 =?utf-8?B?Q3pTMDRTYWNzY3F3TG11SURRanhnSWplZHhxSWp5UGtsRlIzTUdlaktINGl6?=
 =?utf-8?B?SGJEN2NQcTdjOHhLUlVSMCtuRTZsOFE5cWpWREs0bFk5S2kydUgwajRYNXhL?=
 =?utf-8?B?dU1wN1B6WFRNTXRHRWczWWxuNkhmYnZ0MGVmakhQK0M4SExEdFNBUFRmSlZy?=
 =?utf-8?B?a1NMdEhSQ3JGbUVKY00vVnQ2U1A3TmF3ejlORFpHenBoYTFXRDMxZ05hVnFD?=
 =?utf-8?B?L3lhZGN1ZnFrNTVpTC9xeHM5SkJjQzRLdi9oUEkzYjN5V3pqSDhyWGJuOTk5?=
 =?utf-8?B?K3daYW0ycHAwYVFQTEpmWkVwTElNQjV0K2Y2WDVVNnAvYlZ4WGVTeUNZRXha?=
 =?utf-8?B?ekVpV3d2RU00N1l0SHV2WjdzWisyclJOcnJMelVzT3NoQW5qMkxPcGZRNE1k?=
 =?utf-8?B?SFhYYjZNYVo2QzFxOGtSbDJLOTkxYkRXRjBKN0VoZTNZYUh5aHBKcXJxRG5F?=
 =?utf-8?B?RDhzZ0xKcEFnN0YwdktyUlgrNjhTNHVWSTcyeUtza0tqU3pjL0pUZE5DL2Jo?=
 =?utf-8?B?ZCtYeU1TOGFlam5JK2V1c1QxSDlJeE5HMmNsM2J5MG1iUStqckt3WkFCRFJL?=
 =?utf-8?B?SFRzYms0NGNUZTlCUVhaUlVHZ0lMYkRwMjBDaWx0L0pCcGxVdEZmV2RiM09L?=
 =?utf-8?B?cDNFNjdtMmZ1eFBOL3hxcmtqVDlNTTFhOGlHVG9EbGJTRWhkWUprV3hWRllv?=
 =?utf-8?B?YisyY041amRJUVkzaEV6R1lFZWxZTFdJV0VzRnY5djF1Y3JLRmcrV2JsNjFZ?=
 =?utf-8?B?L1gxZ1pvWURBUGN2S2VyOHdhemtUaFY5QVdKWW5NdVpVeEZSM0RqVWtDV0or?=
 =?utf-8?B?VnplalJLeFR0Z0g1NlRqcktsUjF3OWFDUmhiQ0Y4RzMrZXJNdW9BdUNYcGNz?=
 =?utf-8?B?Z2pGa3dHSFl3R0NtL2ZRaHVwMTBDaTFGS2ZLR1pYTC81bW10TXNLWGNDQk5r?=
 =?utf-8?B?N3c9PQ==?=
X-MS-Exchange-CrossTenant-Network-Message-Id: d979e436-39ab-461c-3e23-08de0c7f940b
X-MS-Exchange-CrossTenant-AuthSource: SA2PR11MB5066.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 16 Oct 2025 06:45:22.2296 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: lwWb6nS+820rxo3gEeONxAiWdxtZQmmX/AHobj9K+9j7hDHw1XLoPmyPRxzpvZfvlbiTrr9QY8S5inS7nYMG4ya6oMryGsooZ9TncEzZviI=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DS4PPFE901A304F
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

Hi Janusz

> CI enables drm_debug flags that result in significant amount of display
> related messages appearing in dmesg.  In case of kms subtest, which runs
> a loop of reset-resume cycles while touching a display in background, the
> amount of dsiplay related debug messages may lead to exhaustion of per
dsiplay -> display

> test disk space limit.  Disable those messages while a display helper
> spawned by that subtest is running.
> 
> Suggested-by: Kamil Konieczny <kamil.konieczny@linux.intel.com>
> Signed-off-by: Janusz Krzysztofik <janusz.krzysztofik@linux.intel.com>
> ---
>  tests/intel/gem_eio.c | 3 +++
>  1 file changed, 3 insertions(+)
> 
> diff --git a/tests/intel/gem_eio.c b/tests/intel/gem_eio.c
> index be071ba8a0..9389efb968 100644
> --- a/tests/intel/gem_eio.c
> +++ b/tests/intel/gem_eio.c
> @@ -1022,6 +1022,9 @@ static void display_helper(igt_display_t *dpy, int *done)
>  	const int commit = dpy->is_atomic ? COMMIT_ATOMIC : COMMIT_LEGACY;
>  	struct igt_fb fb = {};
>  
> +	igt_install_exit_handler(igt_drm_debug_mask_reset_exit_handler);
> +	igt_drm_debug_mask_update(DRM_UT_DRIVER);
> +
>  	while (!READ_ONCE(*done)) {
>  		drmModeModeInfoPtr mode;
>  		igt_plane_t *primary;
> -- 
> 2.51.0
> 

Reviewed-by: Krzysztof Karas <krzysztof.karas@intel.com>
-- 
Best Regards,
Krzysztof
