Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 96BC0C067DB
	for <lists+intel-gfx@lfdr.de>; Fri, 24 Oct 2025 15:27:49 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id AAFE110EA8B;
	Fri, 24 Oct 2025 13:27:46 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="TZ2Y8/F7";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.18])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 909B710EA8A;
 Fri, 24 Oct 2025 13:27:45 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1761312466; x=1792848466;
 h=message-id:date:subject:to:cc:references:from:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=dC1R5sKrhzizlVB+M27ELHHJj/G0epEni0BL0JiEhFE=;
 b=TZ2Y8/F78YysgXRNQlBwoUVyfEuk6XHIhYNZsSJFv3KNjfnXqdcKIPXa
 nftJ1wqee7yPECVUAZz0MHuLMUhb8XALr8vDi5or/1+qI+kRUg6Op+QDh
 G+hd8/vaGQI/jJE9oZc5Es3zfhmDTaqiTJLim4XJcHtCCka1EjP7H0W5u
 kuyhWis33uYpPS6vK7LISF03xUwfCUlEc201+ov/plJx6ONtS8hw59fDN
 3FY+FX1Q/8ybwzZsCfvdhFUomoLlPr4AX5tzU2EO1ECucgsYbrLiGSXts
 /4PgeCP0mFoj/74ESPOffCdiY2pJ2xv5gMa6NxRDAZvKk22cqJWHcQJDB A==;
X-CSE-ConnectionGUID: 7CygpwcWSRumBi3jhQiKiQ==
X-CSE-MsgGUID: NHwBLiNMSXKXqBeK4pCJ+Q==
X-IronPort-AV: E=McAfee;i="6800,10657,11586"; a="63534660"
X-IronPort-AV: E=Sophos;i="6.19,252,1754982000"; d="scan'208";a="63534660"
Received: from fmviesa001.fm.intel.com ([10.60.135.141])
 by orvoesa110.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 24 Oct 2025 06:27:45 -0700
X-CSE-ConnectionGUID: TTO4nuqRSZyt1WltOkOOhg==
X-CSE-MsgGUID: CwhcMfq+SuK/VG764gz40w==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.19,252,1754982000"; d="scan'208";a="215348581"
Received: from fmsmsx901.amr.corp.intel.com ([10.18.126.90])
 by fmviesa001.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 24 Oct 2025 06:27:45 -0700
Received: from FMSMSX901.amr.corp.intel.com (10.18.126.90) by
 fmsmsx901.amr.corp.intel.com (10.18.126.90) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.27; Fri, 24 Oct 2025 06:27:44 -0700
Received: from fmsedg902.ED.cps.intel.com (10.1.192.144) by
 FMSMSX901.amr.corp.intel.com (10.18.126.90) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.27 via Frontend Transport; Fri, 24 Oct 2025 06:27:44 -0700
Received: from CY3PR05CU001.outbound.protection.outlook.com (40.93.201.55) by
 edgegateway.intel.com (192.55.55.82) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.27; Fri, 24 Oct 2025 06:27:44 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=QD4ngNAxZojOwtDhdXh60ESyuYrMkG4PFb+Xw8jvLxdwYMWjjKw7hYOU/tM/hWQOK/FMrBiokfEZBtJ97sX0fjNcNy9/5m7jHNwDNjSysJxANKlEHqowXEBYLZq0MK/nNWPbUItsLLkvlpJmh6brH+1+p28BAADUbI4b5roX8BrErkQ1UrTyFAnK/oILFVBMUwnvKw7V64wU704MrwCo69HI4r6uNSIq+bKetrxaDMEV9xvXPgZFhcWQw9KzZQrk9psuYJzBHdjNYidAl46etc/Kn4LAHm1zBGMmkXU/QL0Txnjp9/Zp2aDAV1gjpIINkESiZnzkzS11AhRuBbJ6ug==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=aSPPasypO+1EInzDFU/GQ5K9bCBT1o6vmg59h4ppFWQ=;
 b=Zj17g9s1hq6DM9o2dZZ4dtn8B7YQKTJcPTgrpoD39MefL8ogNIt7mKWYh3/0XjitLVZ7xAKBCXATLe14fu5OaA3BnrQr0Qhkvb8DY8llyomHFIu9juuko5saWccLvZPVkX/IkkAKUX4vEfjtmWu94AHniyRmFrflpa5wZ50cNbOj+qKG4skCU6vqMy8f4bOIo4FZza1x5jBsYf0ZYTYviFimhGOtXNdPItr4VGCoYTClAuamOD1477mhWp63hj0B80jggER/kcePLi120UZsdLFaDzk+RmoSQBOJ17zG4lOAvgJb1BbdQ54oy7EP3xhlLCOqRO+3DTORSIpM4cospg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from DM4PR11MB5341.namprd11.prod.outlook.com (2603:10b6:5:390::22)
 by IA1PR11MB6369.namprd11.prod.outlook.com (2603:10b6:208:3af::22) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9253.13; Fri, 24 Oct
 2025 13:27:36 +0000
Received: from DM4PR11MB5341.namprd11.prod.outlook.com
 ([fe80::397:7566:d626:e839]) by DM4PR11MB5341.namprd11.prod.outlook.com
 ([fe80::397:7566:d626:e839%7]) with mapi id 15.20.9253.011; Fri, 24 Oct 2025
 13:27:36 +0000
Message-ID: <f3d9243d-ad64-4e99-8592-923ad7a2c39a@intel.com>
Date: Fri, 24 Oct 2025 18:57:29 +0530
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH 04/22] drm/i915/vrr: Compute fixed refresh rate timings
 the sam way as CMRR timings
To: Ville Syrjala <ville.syrjala@linux.intel.com>,
 <intel-gfx@lists.freedesktop.org>
CC: <intel-xe@lists.freedesktop.org>
References: <20251020185038.4272-1-ville.syrjala@linux.intel.com>
 <20251020185038.4272-5-ville.syrjala@linux.intel.com>
Content-Language: en-US
From: "Nautiyal, Ankit K" <ankit.k.nautiyal@intel.com>
In-Reply-To: <20251020185038.4272-5-ville.syrjala@linux.intel.com>
Content-Type: text/plain; charset="UTF-8"; format=flowed
Content-Transfer-Encoding: 8bit
X-ClientProxiedBy: MA5PR01CA0043.INDPRD01.PROD.OUTLOOK.COM
 (2603:1096:a01:1d6::16) To DM4PR11MB5341.namprd11.prod.outlook.com
 (2603:10b6:5:390::22)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: DM4PR11MB5341:EE_|IA1PR11MB6369:EE_
X-MS-Office365-Filtering-Correlation-Id: a67934cd-49cf-46ab-092b-08de130118cd
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|366016|1800799024|376014|7053199007;
X-Microsoft-Antispam-Message-Info: =?utf-8?B?Z2d1cTlncThTOWtuRExhalQ3cTA2YlZCYzVicldObWc5TExWNHZXQ1JJa1pX?=
 =?utf-8?B?WUNkR0dNamFTaGluTUc5bEtsNGtpNTU2RXJtVFVMcE9yZzM2dlc1blRnZlJF?=
 =?utf-8?B?Y2dsTW0wSEY4UU10RnMzc3p0bFZzUGZlR3c2K3BGcVZ1RG8zM3pUUWtEZ1ZX?=
 =?utf-8?B?cTJOZmFpaEZGbFU4MHlzUU5JcjhKblJrNWNyM0JsUWhuZk1LODR4Q1JoTFFn?=
 =?utf-8?B?cExOTVpSZDd3Zmhhb1pIUEtKckZVdDJ4ZTB5WnRTcmlpbnFrYTdrSm9YUFh6?=
 =?utf-8?B?b1ZhUUlLMTFudWZJaUFxNFQrNjJwT2JhLzhGcTdPMEN0Z3Y4ZG11UlBEQ2Vl?=
 =?utf-8?B?Q2h0ODZKaHhsM1luODZKZE05OTZoR3RrV2lNWG12dmFvUU9OR0NFcUFiNW5U?=
 =?utf-8?B?b3BrUjZnd29aTkRnQnlJQUZNWWF6SHl4OEtwWHZESGs1ektrNUpYRzM1MWVG?=
 =?utf-8?B?YS9WeDNORit5UGwraU9teHlzRDViOXRUSnhwdmVMSFRyRk8yMkdVdUtObFhi?=
 =?utf-8?B?b2V5czdkLzlrS2wwcWJpQ2xBSVpZZ3I5eU50M2FLZGtPSG1Ucy9oR1RvcmJ1?=
 =?utf-8?B?bCtKd1Z4dkR6ZG5wVGVsWHNXTk5tWGloZFA1S0ZjZlJXdE16Ry9ndE44RmJz?=
 =?utf-8?B?c1FnMzRzMDNwUFp2NFFqd2dCWnB4WTNUcklwNmc1Mnd5bHNwVVp4dGNLa0Zw?=
 =?utf-8?B?QUtKNU0vbEFObE92eXoxS3g4L29mZDVVMld2MkZtTDZwUVI0dGVLUVFNakJv?=
 =?utf-8?B?Z3ljQ1gzdkVPOWwwa1RiSjRoNG9uZmRQMHZ5MWc1LzFJamkvd0o5SjBTaUtO?=
 =?utf-8?B?U1phT21KKzE3UjJJUC9tTHpqRStja2o1Mkx3ajlVQ3B1QTI4ZWM4UjhDa1Nv?=
 =?utf-8?B?ZE9oZVFNRnpDL0xPZkEvZXp2clVOUzBvcE5MQmpiTytZdmdMeGxKRUErbTVM?=
 =?utf-8?B?clRZcDFrZ1MwREMrK1FTUjVoTXJHejgyaWdmRFpKc2l5cmV4NVBSU2dBcjBy?=
 =?utf-8?B?U010VXhTZlh6ZjlxMkRjL0J1WjF3eHZUWExFaGs0UEtZSDhlN3ZSM3gvVFRa?=
 =?utf-8?B?YUpvOXNvS3U2akZIdVhLRnNEbEdxWTlTODVVYUNjV3lyTFNrdGdrbHNocVd5?=
 =?utf-8?B?K08vMTFVakJJL0l2Mi9NYlhoQmxhSlE0bVQrL2FSNWx3Nk9Oc3lnU0FHLzNl?=
 =?utf-8?B?N1dpazFjOFdxczh1T3o4WVQ3S3ZRbXVHdktnekdna0NaTXZwVWNOR0hrU1Vi?=
 =?utf-8?B?Z01PUk9kdmVLQk5nY0FFM05oeUJJaHVVa1dqaXB4dGtrV0pzN0JRUHRnOWtk?=
 =?utf-8?B?ekl4ejY1eTA4aTVRN3ZJVXp4WVB5TEZLS2tiWFZ6RVlZcTRreHp5YkVMU1ZT?=
 =?utf-8?B?L0FqR1JuQmczSU91eUhMWGRyajhvV0hVcU91Z0E1TzIzdlZsbFY3bmJ3alM5?=
 =?utf-8?B?alBuRXpkaDh3Q0JQL0c2a1l5SllTSU5Hc1lJSmRtZzRZaDZPcTRlYXlKeVhr?=
 =?utf-8?B?Q2hZT05uTFdDbzlVcU54MWZIdFozdkd3QnJaUHJ0Q21IbFRoRGtVZE4vQWhE?=
 =?utf-8?B?NG1yMWVnWThaREJxc3lBRVZJNVJmUXRyZnp6RDk5bkZIVlN0bHdrZjB0VzVX?=
 =?utf-8?B?RFBzWFVvaG43UUNubUZYeFdRQXlvdFVGdCsxUWxMdk9RU1lxNFdmcmhSb0V6?=
 =?utf-8?B?NzJCQ3ZsbEFyODBJc2h2cW9uaC9kREtXaC9Ha0wra2lZckRId3JMQm1oL1py?=
 =?utf-8?B?MllMQWJEVk9PVm4zN1VEWGI2WjBicHlhV3NrTUszYXJ4R0dCOFI4NEZkMyty?=
 =?utf-8?B?WUx2dGNSa042OEJSSWlldzF3dFNWMDQ4Nkc5SmVQY0VCTzg0WThyWkFFREtV?=
 =?utf-8?B?WmY0NlN4cnZKTWkwVlRqQ2xwRGJyR25rNXhVZGhsYzhpUUd5YnRpeTRYVm5s?=
 =?utf-8?Q?LI+ecNYxlKd6BCHPYi9nZ5G5KXqC7Dix?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM4PR11MB5341.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(366016)(1800799024)(376014)(7053199007); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?dzg2bUVGYmJpbWZuWTd4d0k2cVVMK3FCUy9nZlp6WFo4Z3lXdzJrTWhITjRh?=
 =?utf-8?B?R3hrYXNSYzFPRG4yRmtrRndSSGptcGdjRE5XL29vRExNZVFzdGZTQTlpUFox?=
 =?utf-8?B?NWhBWURwQXlxaEgyWXZVUFB1Mm0zWG5wUTI4VGN0MkpZT20zNld1NVYwMC9N?=
 =?utf-8?B?R2lTVjQ2bG1EcDd2THZ0SkJNTlhYWkVOc3JwS1EvZmRKZ21ydDRJeVl6S2RO?=
 =?utf-8?B?N1Zoc0VMZnRjci9kSEhKb1BkOUFoeWJCUDBYVVJBWk9odzZEWC9tUTZCRERs?=
 =?utf-8?B?RzRHbnRnVTVwbUlhQ3NpTU5seDdpTXpHM1c5bzVwaTk0Zm1OM2M1VGM5T1hx?=
 =?utf-8?B?TFZkV1dOMXVERWorTkxkUm83MjdodlRibzdBOS8zWEkrMUhWeE5raDhiMVlI?=
 =?utf-8?B?OXlOWWN2bERlNlJmZ3NxRzNETjJZOFhONVNCa0J3eUNRRUtGem5rbXdyVTA4?=
 =?utf-8?B?dGEyeDRCVjRzbC9JS0t1UHJhTG1UZ3dhQXdwNmRPcnYxRXg0MlJrcWl5OUVK?=
 =?utf-8?B?cW5PMCtkNDlKdXRoS0UzNVB6NXA0UWwxWndFRE9UMnhaTTZ4TENsRkhoNHZa?=
 =?utf-8?B?WGxWL2Rnb2Q1bCtoNDFaNmFZbnJsa01xS3IwUVBmTWJQRWp1Rjh2eTIwTVo3?=
 =?utf-8?B?YTJJZmZSQk1FK3Q4eDd0UlNhb0RMUE5hQWM5ZlpWWjE0bmNpaEhWR01VOWJN?=
 =?utf-8?B?WCtYN2RQcndSb2NCUVNINmJjTkd2Z1RiNXhVZ3lzYXhQZnpzNFRJTnllWGk1?=
 =?utf-8?B?eUxYQnlENENtMDdVcWFGYTgzQmlua3N5TExLMVpyRnVrMjFiaDhQU2t3ZG01?=
 =?utf-8?B?TituUkVIZUpBc3A2ZmE0d2xOdXMxQkY3N3lDMmlEM1lNTU9LQUpGY1ZTWi9u?=
 =?utf-8?B?ckRQSVh5bk0vSjdDYytwQytOc2Y2cEZlNS9pZHlMbEJhamtLY3hkby9RMXhO?=
 =?utf-8?B?QUVPVVY0V2tXRk9UKzk4Qlp1Vm8ySGp4QkY4SXltM0E0VGtreHprNm1sTFFN?=
 =?utf-8?B?aTI5ZHcyRWwveWtqWFZuRTE1cjVsdTVnNWhtTkFBcExaRW9wVmhFd2pEa3Zj?=
 =?utf-8?B?aXg2VGw0RU9YTzdONm10TWc0WWNoYVltajV5RU1VbUVFUGNEbytGK0cyNmpX?=
 =?utf-8?B?K0s4Z1E2RGEwVnJVdlUzV21Cbkx0OXNXeWkvWHBxVmwvNXczUmM0L044K0NI?=
 =?utf-8?B?eVUrQ3ZRMUZDZ0ljSkJSd0pFaWpKNlNXVVg0eHdFWWVyM1pnQU5OYnNpRXNB?=
 =?utf-8?B?eEZ5Y3hsK0ZpakFQVFZxVnA0aHBONy9wT3FrNnhja1RwSHNnT2FDcjJNTEdL?=
 =?utf-8?B?THl6RVBRZi9IdEk1OHlsNEhncFhSdEdFMldhWXAzdUpDQVN6NjhneXZqWm50?=
 =?utf-8?B?eTZuT0hxalpHR3BxWFZDL1ZsQVRYVEgxaE5HYk1jZHptd1hTVHkvYkpKM0NX?=
 =?utf-8?B?bWlVTmREZjZuVzRpY2dhdm8vYzRHMHVUOEdjOW1KQVdhd1VhRExmc01mY3pZ?=
 =?utf-8?B?OGRsZGNlZFp3STBJYzAxd25VMTN1THBrZloxSFF2MDNhUE1pZjV6TWpnWnBV?=
 =?utf-8?B?RUVNZHBtbHB5TFd2bTR3VlNmaUk2anIzVEJrajliZnQ3OGFRL2xkM21ZbnZY?=
 =?utf-8?B?TG1CUmMwOHJjdGJYTlp6UmdkYjVMeG9ZQlk5Z2E2RnZmY0RzNmdTcDFpR2Vu?=
 =?utf-8?B?OElhcmpRYjBRWkRheS82bXliRFhsZXdCSW9CZnBPVnQ2ak11U3lncUtXdnJ1?=
 =?utf-8?B?QVhsMWMrQmVQdGVZRFMzRnhwWkMyWVVSYjFySEJNU1dITUpVbFlTc1NMWVBP?=
 =?utf-8?B?aXhueUlaZHRvS2NwRzhJc1Rvd1lyN3ozWE9rei85Z2V0KzlrWm13OEw4TFdV?=
 =?utf-8?B?dGNTOWtzZkNqUTR2c1Npd25CbEJlNUprcVlsM0Jrc011T0V5OVEybmRhVk1W?=
 =?utf-8?B?bDZTeHp0aFoxZXN5ZW9LazJ3SVZqYklpOUxGMzRIRDdJVjhENzY3Q1lPZTVZ?=
 =?utf-8?B?bWJDQ3NTZ2VvMHJUL3RmcU9uclYrWjVQU2dISVc4dTRIRk1SMTNSMWZ2cGlW?=
 =?utf-8?B?b2pxQU5xazR3dDBvUUJKcUFqMHpPL2c3RC95aktLb1VZNTZwYzZ0c1YyZUhH?=
 =?utf-8?B?TWZPNDFKbTc2MHVEQlVRVlFWeXd4Y3owM0Y0dE52dCsxYTlXTnRtWEp4dXZS?=
 =?utf-8?B?SVE9PQ==?=
X-MS-Exchange-CrossTenant-Network-Message-Id: a67934cd-49cf-46ab-092b-08de130118cd
X-MS-Exchange-CrossTenant-AuthSource: DM4PR11MB5341.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 24 Oct 2025 13:27:36.8385 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: wxEOqjHg660CQNuaG+dl1GHVblrivrUNFYny+cdrq+tAfss95bDi8a5g/hqJ0Vz68jAyIzw26cvWppKkITU8cuuD9tAsphdvJuDT4x3EnFo=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: IA1PR11MB6369
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


On 10/21/2025 12:20 AM, Ville Syrjala wrote:
> From: Ville Syrjälä <ville.syrjala@linux.intel.com>
>
> Unify the VRR timing computation stuff a bit having both the
> fixed refrehs rate and CMRR cases assign the crtc_state->vrr

Nitpick: typo refresh.

Otherwise LGTM.

Reviewed-by: Ankit Nautiyal <ankit.k.nautiyal@intel.com>

> stuff in exactly the same way.
>
> Signed-off-by: Ville Syrjälä <ville.syrjala@linux.intel.com>
> ---
>   drivers/gpu/drm/i915/display/intel_vrr.c | 8 +++-----
>   1 file changed, 3 insertions(+), 5 deletions(-)
>
> diff --git a/drivers/gpu/drm/i915/display/intel_vrr.c b/drivers/gpu/drm/i915/display/intel_vrr.c
> index 92fb72b56f16..510dc199376f 100644
> --- a/drivers/gpu/drm/i915/display/intel_vrr.c
> +++ b/drivers/gpu/drm/i915/display/intel_vrr.c
> @@ -305,12 +305,10 @@ void intel_vrr_set_fixed_rr_timings(const struct intel_crtc_state *crtc_state)
>   static
>   void intel_vrr_compute_fixed_rr_timings(struct intel_crtc_state *crtc_state)
>   {
> -	/*
> -	 * For fixed rr,  vmin = vmax = flipline.
> -	 * vmin is already set to crtc_vtotal set vmax and flipline the same.
> -	 */
> +	/* For fixed rr,  vmin = vmax = flipline */
>   	crtc_state->vrr.vmax = crtc_state->hw.adjusted_mode.crtc_vtotal;
> -	crtc_state->vrr.flipline = crtc_state->hw.adjusted_mode.crtc_vtotal;
> +	crtc_state->vrr.vmin = crtc_state->vrr.vmax;
> +	crtc_state->vrr.flipline = crtc_state->vrr.vmin;
>   }
>   
>   static
