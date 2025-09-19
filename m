Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 717ACB8B441
	for <lists+intel-gfx@lfdr.de>; Fri, 19 Sep 2025 23:01:58 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 8A96410EA99;
	Fri, 19 Sep 2025 21:01:56 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="KkOnHMs8";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.9])
 by gabe.freedesktop.org (Postfix) with ESMTPS id AA24A10EA98;
 Fri, 19 Sep 2025 21:01:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1758315714; x=1789851714;
 h=content-transfer-encoding:in-reply-to:references:subject:
 from:cc:to:date:message-id:mime-version;
 bh=J2pwRJoDJ/iJJ3ybwajWqU/90UoBCE+ZD93Uo+pmXuU=;
 b=KkOnHMs83biQPlNrxtyuHdItIsPRapa0jgVo5ouxhvSqR7WPRPhC4kQh
 Aje9WcXlIluPNQG2V8SvIiN0k2Tgn1evbl4BsrGqEP/El10U1zdI/Bd7y
 cS8x8g242t8ebcXGMTAi+D/ZGnz4MESROWRAdA/ZY1dkYlhiMJMknCrDQ
 ZV2rX9pzZA5Blm808LhTsVkyPyjR4hgwgQ0L7HKXufdjExXzkpXaX4imw
 n6G3toh3GvbBMgpKLhKsY9v6xB3vaVUWRNAbMI0HJmriDvXou7GNIDtf5
 7iVvmHy/7ti07xjUidyACHQVnu5IjxqetfHWUZwgRcRsNPSvzk86PW9Hr w==;
X-CSE-ConnectionGUID: k6Lh7TmeRQKOVP2C1bldpQ==
X-CSE-MsgGUID: QAANXYuhT6OIpbLiQNI2HQ==
X-IronPort-AV: E=McAfee;i="6800,10657,11558"; a="71346977"
X-IronPort-AV: E=Sophos;i="6.18,279,1751266800"; d="scan'208";a="71346977"
Received: from orviesa006.jf.intel.com ([10.64.159.146])
 by fmvoesa103.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 19 Sep 2025 14:01:50 -0700
X-CSE-ConnectionGUID: MhDP9WugSXGu/Qnp2Opzsg==
X-CSE-MsgGUID: FZhFYkcsR1u3lKyzw0At/Q==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.18,279,1751266800"; d="scan'208";a="175049621"
Received: from fmsmsx902.amr.corp.intel.com ([10.18.126.91])
 by orviesa006.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 19 Sep 2025 14:01:29 -0700
Received: from FMSMSX902.amr.corp.intel.com (10.18.126.91) by
 fmsmsx902.amr.corp.intel.com (10.18.126.91) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.17; Fri, 19 Sep 2025 14:01:28 -0700
Received: from fmsedg902.ED.cps.intel.com (10.1.192.144) by
 FMSMSX902.amr.corp.intel.com (10.18.126.91) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.17 via Frontend Transport; Fri, 19 Sep 2025 14:01:28 -0700
Received: from BYAPR05CU005.outbound.protection.outlook.com (52.101.85.30) by
 edgegateway.intel.com (192.55.55.82) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.17; Fri, 19 Sep 2025 14:01:26 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=vQWO9bU6fyS5GwcT7dXGH1g/k1wHbLjL9HO3Dm/Ij9OQXqJsoxdBOHcYamMhZfZNSnTcS0WHMgcK/UPWE3uHtL9hUklg8IyHGgAmKxA+wXNovIVktAWAsjUEjr0Qr5AWWF2dFztVibjGjXcK6XOPfCi1hU6b7Xp/OUOCgp91JhhmEvqnzPFGyh2cZmGJCDQWbyjgrjv3t7+lDw5vQPhe145kvFnSmw1ZTr+ft3mTJchR5Aer6P/YGKnmgHmSvg7dJvz0f5fva/8YoNqcLuCuLC3a9Ve9oRpJpuPURwBvqZdEwcTfFENig9wNQV/XM/QlT3nkKEXmn2AQr7eVq6F75Q==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=T+UH1xxplbNbO2OSnjAfTNuaCS4G2cuK/s1gJ4SfhCQ=;
 b=XitjHGQWEvPCpsXib0p/jjFHIKV8kktKCjQLpgWRjsQ7kgfOmk3KPWeMsi1acRRRxZ7Ez0HCSpxat6m1PuBUFysbPtlt95GBeayn1x7OxzhV45EAqNV6ypE7wy5FNFhUmWFug0SrJC0EuWtcqc+0PeF8B62wwo51Y9nSZk+YnrTsStwp6fVs9e2FcEeUpaXcS1rqsiRgsBcP7sL8BCsVq7teIPhoK9oBfFDYAffqb3jXsH/FWBImbjGwXLTVlXSedvTkDyZ0OYFovY793TiUmvYerqZHmGFX0Qi0Cl4PeIlhfwcDzze+ny/F4rUPnwbDQesVtNsFrDZrhfczUcHvww==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from PH8PR11MB8287.namprd11.prod.outlook.com (2603:10b6:510:1c7::14)
 by SN7PR11MB6604.namprd11.prod.outlook.com (2603:10b6:806:270::18)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9137.16; Fri, 19 Sep
 2025 21:01:24 +0000
Received: from PH8PR11MB8287.namprd11.prod.outlook.com
 ([fe80::7e8b:2e5:8ce4:2350]) by PH8PR11MB8287.namprd11.prod.outlook.com
 ([fe80::7e8b:2e5:8ce4:2350%7]) with mapi id 15.20.9137.012; Fri, 19 Sep 2025
 21:01:23 +0000
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: quoted-printable
In-Reply-To: <20250919162233.1624905-4-dnyaneshwar.bhadane@intel.com>
References: <20250919162233.1624905-1-dnyaneshwar.bhadane@intel.com>
 <20250919162233.1624905-4-dnyaneshwar.bhadane@intel.com>
Subject: Re: [PATCH v2 3/3] drm/i915/xe3: Restrict PTL
 intel_encoder_is_c10phy() to only PHY A
From: Gustavo Sousa <gustavo.sousa@intel.com>
CC: Dnyaneshwar Bhadane <dnyaneshwar.bhadane@intel.com>
To: Dnyaneshwar Bhadane <dnyaneshwar.bhadane@intel.com>,
 <intel-gfx@lists.freedesktop.org>, <intel-xe@lists.freedesktop.org>
Date: Fri, 19 Sep 2025 18:01:16 -0300
Message-ID: <175831567651.1987.11686211487230198274@intel.com>
User-Agent: alot/0.12.dev22+g972188619
X-ClientProxiedBy: BYAPR07CA0018.namprd07.prod.outlook.com
 (2603:10b6:a02:bc::31) To PH8PR11MB8287.namprd11.prod.outlook.com
 (2603:10b6:510:1c7::14)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: PH8PR11MB8287:EE_|SN7PR11MB6604:EE_
X-MS-Office365-Filtering-Correlation-Id: 0dd65398-aea6-40b8-8fb0-08ddf7bfb105
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|376014|366016|1800799024;
X-Microsoft-Antispam-Message-Info: =?utf-8?B?OGcxK2EyWWlCNFluUnU2TjJzMkdqSVlRVHhSYjI3N3dnVklLQVBDc1BJb042?=
 =?utf-8?B?aXRiMERkMEJiWDFDNlhTNURtaXRlMWFtQmtHdjFVaDk1UUhGekhOVUFKeEZH?=
 =?utf-8?B?V1huaEEwczV1VTArNUpnR3pML290djhBSmZMWFVudHRNaVhwV0wycGp6WGsr?=
 =?utf-8?B?VnhNRFloYTh3eGtjRHhKellCZENyZWNqdmR3UTBwanJrc2V4TUJDVjZzZU5S?=
 =?utf-8?B?dk04elVhV2JHVFg2T0ZvekZDWVo4ZDFmRENGYy9WQjF2OG5tTXIzK1Y5d3hL?=
 =?utf-8?B?MUlvN3g3QllQV0ZNTHhoZXUzeFBlbERIcGxSbzQrcHBGZXYvZHBaWW5DVEFw?=
 =?utf-8?B?TUZOU3FIMDVCbENXTWJYQmVzODZnbHZ2OGp0aDhTTTZDT2RWcDdQWUFZWmdC?=
 =?utf-8?B?cm5telB3MjNRTmp0VTlUcTNCWmcyTW1ieEpkbkhDckxNNFp2QzM3ODNMVHRO?=
 =?utf-8?B?dGd6c0JCVGlOY24wVFMwZzMyOHY5OFNKL1BYQmNCK3VFSldIckRJTWRPWWEx?=
 =?utf-8?B?MkUwbis2NWVOUW9yN2syN050NklBeCsyV0NuQXBsaEdPQzFRaFdiTVJZY2dH?=
 =?utf-8?B?d3UwWHZVSjR6Wk9MKzIrd3lvemJXc3RIek96MGJieFd3ejVoVVFnajczcTla?=
 =?utf-8?B?RlNLTURobzMvRExIaXJKYTVuVEZsVzFDQnM4cmkxVVR4dFFoMklLWGtMK1F5?=
 =?utf-8?B?NDRGNkYwV3EvcWVueWRuMXliRGx6YUFkWnhIQWdmbjZkVGpmdlh1YWM1bS9V?=
 =?utf-8?B?cG8xYmlWK2d2ekUweFQ1SlloZGt6bk1BK2w0WlM5S2hzR1Z2ODNNV05yZzdp?=
 =?utf-8?B?L3FldUtKdkRWUlJqdDVnalJIbmg4c0ZibENqZjkrclM3dDl4NnVnNjA3cHYz?=
 =?utf-8?B?TjgzYklINlZsNDVvSVl3ZWdBWnN0bzE5a0R5dGZMQUdJWDhmd01jR2RoeTl6?=
 =?utf-8?B?STVIRGFIWWVNT3dxUHZFZmxDbmt5UlRBaEhGaWhpbTdjSm03NzRScHF6MDRz?=
 =?utf-8?B?SWltYVBHbmc0T0FWbjQ2blQzay96VjdPZ3VDUzVFSzZwUGpsdGF5WXRBLy9h?=
 =?utf-8?B?L29GT0g2TUJndHRYdi9peVVaekZiNEZRRXB3T2ZUOW1tOWlYOVJHMlZJVCti?=
 =?utf-8?B?ZXVqNUVLS05FR1ZsWjB5Qlo2dis2MXFSNVp5ZTFvNzI3bFlTSkliSHp2aWhv?=
 =?utf-8?B?ay83WitocjNPbGcvWW9aNHVBT2l4WDdZY2xmRnZZRmFSWGU1T3IrSW9MVmYx?=
 =?utf-8?B?Qzd5d3ZFYVBLQmRVRG9oTWsvdG5BcnBLcXdSL1hvdVYybWRHNjZpVlR4cVZp?=
 =?utf-8?B?MlZYdmo0KzFLdDE1c1Q0TXl5MDlUemNRQWFYNHJtSlNKejJGV3dhQUVVZFQ1?=
 =?utf-8?B?RDdBNXRaZU95YThXYXVpcWVZTmJaZmJnV2hHbkNoM1hSUXZBOG51WEpOaVR0?=
 =?utf-8?B?WjBiZXhrTjhVcXdWRk1vMmN2UDh3ekQ5Q3NwTWFoejZ3WkR3OXBGaVZJSHBT?=
 =?utf-8?B?aVB1OS8wWnZsYmJydkRTTjQ5bnlpUU93SVNtbHc5UDhuMmhzOTZuZi9mQVdy?=
 =?utf-8?B?bmI3ZDRhSFFuYWZnV0hydkJ0TTE0YnpVVkhDR1dvSVlRVXFIY0FCeGlBdUQw?=
 =?utf-8?B?amU2QlRMMlBmYmhtN3MybUFhU3hHY0F3bUsvSzRudXFKM09ZTUxyNXdLQXUy?=
 =?utf-8?B?UWJEdnE1RGJkRVBKT0tvUmozVjhqWVp1eFk2elBGeFRMTytYNERzSW51VlBB?=
 =?utf-8?B?QyszYW1zK2NvU2UzSWpCOTFnVXpoYVhRV0VKN1kzQ2RmR0d2bEEzeDdEUEll?=
 =?utf-8?B?LzlsS3NRR0RiUEZnc25mbHRoM010SURnbzFTbTh5WVNEZlRsWmNSeWZickhM?=
 =?utf-8?B?ajV0Y1RNREl1MlhHV0xrQmlCRXNZV3hKelQxY0laVWtJTzBuODNBOEh1dHBU?=
 =?utf-8?Q?HEZhcxnQVkU=3D?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:PH8PR11MB8287.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(376014)(366016)(1800799024); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?cVNDdXk0c0hndEtPZzZlbndOdlcyNDRLdWwzYmphWU0wcWVRc1JzckFsd3JD?=
 =?utf-8?B?aUx1Q2c2Zmx0dUl2NlY3Z3hLY0ZXbldYaUNodThmbXY0VVYwakVXSWdtdmww?=
 =?utf-8?B?bHFiZzJYNHU2dkhIMk1xaUpxZTFXd0hyMVlHRzdOWXpzQ0laMXJVcjUwejlU?=
 =?utf-8?B?NXR0eGVWNlI4YkVhTFNlMWhHUmYzdU9sRU1pRUNScUNBdVU1dTZQMytpTk5n?=
 =?utf-8?B?N09kMjAwSW8xd0hEM1FHUGtlcnFDOHFLMWpiSUpZb05JQWM3aWxmNEI0eWcw?=
 =?utf-8?B?cUZWNyt0MnRsbG85SHhQZUZ4MXFvMW9PdzJaZHRTWTQzdkdVeHk1Y2xEVjU0?=
 =?utf-8?B?MXFiYlNOajRuMVFidVNjeHgrTWs2bWgyWWlZMXlTdEduYVJIeXNNZlEwOUFM?=
 =?utf-8?B?aXhweVdsQ2J3Y0o2UmY1ZjVzNGpKeHZuVm5Oa1FxaVlCbXRaWVpUdWM5amZx?=
 =?utf-8?B?bnJERnZLQUplRmp1Q0kzMUVKampyMS9oYTRsc0QrNUtaNW44NDVMNko0cEwv?=
 =?utf-8?B?L0hIb1J3QkVZejR6QmJUT1IrcE10M0pJZ1pWbnp4RExCcCtwVGM4Y3FSR0Rx?=
 =?utf-8?B?TDd3TzlZZjl5NVZVTVFUdFdGa3BJZE0zTG9EKzE3M3NSbnRKWDduTXhJd2Mz?=
 =?utf-8?B?ZmlHa3paTDlrQ3JnZlNVbGUySEdCenhiRUgrYVErOWNjWXZRZkY1dmJ0V1Jj?=
 =?utf-8?B?M1BvN3J5dlJKamxFYzduWmhBYmlvVi9PN05TOHE0UC94N3FlZUE5UDdFbklL?=
 =?utf-8?B?UGszL2xnQWJqVCtvZ0NvVm5BcTFHeFVXQ3lwamlGRFk3Zy84d3g0NHZCVVhl?=
 =?utf-8?B?bmhIcjk1TGJYUURkUkZiWFpkTlIyYU9wWXBWbWxXbHE3ZUxlK0lIUmVsdjZZ?=
 =?utf-8?B?V3h6Ump3cW9zb2ptcHZPaWVUaWpDWVF6MDZpT0Q1VVF4RFNXU2Y3Tm5iMHpa?=
 =?utf-8?B?UURmMUxHYmNWVDlkaFY1alFwL0I0bHYrRlcyditFeW52V2pRdHc5RDlPQ2xt?=
 =?utf-8?B?OTNUNy9UT2RSWExhemtTU2NqYmhsaFE1QkpUOVZKR1JuakYzSEdpZWNVU1E1?=
 =?utf-8?B?aFdSTFdUK0ZFTjFZbk1wZmhUNFBBUVZRUnNUNWRHeDErdEZ0cW9ieW9xazJh?=
 =?utf-8?B?UW85VU5TdnYxVUhKOWlJdE55aURJcm1UTWtUbFRJTWVSYk0rZTBlcitJK3NR?=
 =?utf-8?B?bThyV0d5bE1rWUUzSnFhWTlQUmgzaUhXTk5hS3g1RHZ4c3ladlNpTERrcWRt?=
 =?utf-8?B?cmsra2pHNm0xZWhWMUJXRTRyeTNXaUZWZW5jejZHMWhpM3pvMHpJWlloVmo1?=
 =?utf-8?B?ZFV1UWY3OHZvK2NGQ2hyRWExL3BWTG5vY2RYcDdITnhMbVpJald4ZVZYdnhZ?=
 =?utf-8?B?V2huWjAwSndKSHJudmZOQlVTdEF2dlZpY1lpcGdLTTdLNEFsLzNoOGZIRWMw?=
 =?utf-8?B?eXFlV3EvNFlUWVdxbjd5KzhrL1F0Z1NNVDRRL2ZKT0xNZjVYUlpzcUlKdit2?=
 =?utf-8?B?RDMwZk92djM0NVJDaWl6L0FRTiszOHc5c1FNQ1FieklMeHRtOTk4Z0Q1d3ZW?=
 =?utf-8?B?VFRvN2FaNXhHZzB0aWtmUnJIOHRoVkQ3YzVlVG5Xb0tGSGlOaUp2cXU3NGhp?=
 =?utf-8?B?UUVPQThGSU5tdjUrQXhFd2w3Z3BDdUd6azZwMlpnVDBlTU5GZFJ1bk0ySTFV?=
 =?utf-8?B?ZTdOSmJPWkZPMmgyTkFaazVQZmtNT3Z6djh3VDNCSjBad3JkZ29SNUNMSnZm?=
 =?utf-8?B?L0hNaXJyZk5vUG9aM0pJMFZWUE9FNWNHbStwTmg4MlBsK2hYUzZxRlN0cnY2?=
 =?utf-8?B?dzVXSUpYeTFoKzg0Vmt1U0FzbmkvU083KzRIVjNUeWE1dHJLK1JZWHNkVVVQ?=
 =?utf-8?B?UUhEa28ySEt0c0xZcU5HMCtqelRtUjl4VVNBQ0p3dDlFK2VVRlJaK0tXYVAz?=
 =?utf-8?B?WDVFSmIvSmN1NDV4YlBtcWh6VFRWYUFlRWsyWlR4eUZ6OXZNZEhVblZWVmdz?=
 =?utf-8?B?UG4vTndMMUprWlE4KzJ5TUVIZWZtekxwRURCM2tncTkrYS9TNmYvcDhYaDUy?=
 =?utf-8?B?SXdxaXllcXZkeitmczUyVjVNdTRnbUtGOFRGd0x4WFpQNW1VOUV1TW5sRzMr?=
 =?utf-8?B?dGRHSEd3a2JhMkFNZ29PMHpyUEhFRW4zeUlWY21vMWNrdWxXRW4xcHYvTS9P?=
 =?utf-8?B?L3c9PQ==?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 0dd65398-aea6-40b8-8fb0-08ddf7bfb105
X-MS-Exchange-CrossTenant-AuthSource: PH8PR11MB8287.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 19 Sep 2025 21:01:23.8463 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: Xc4OdfUeazI2UAVF0w6nveuvH0Uv0QVzw9F/ZRTHgubqTSQjQBh+pcySLVDRoK+lGSmKSU9p0XtxMMijDTqobw==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SN7PR11MB6604
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

Quoting Dnyaneshwar Bhadane (2025-09-19 13:22:33-03:00)
>On PTL, no combo PHY is connected to PORT B. However, PORT B can
>still be used for Type-C and will utilize the C20 PHY for eDP
>over Type-C. In such configurations, VBTs also enumerate PORT B.
>
>This leads to issues where PORT B is incorrectly identified as using the
>C10 PHY, due to the assumption that returning true for PORT B in
>intel_encoder_is_c10phy() would not cause problems.
>
>From PTL's perspective, only PORT A/PHY A uses the C10 PHY.
>
>Update the helper intel_encoder_is_c10phy() to return true only for
>PORT A/PHY on PTL.
>
>Bspec: 72571,73944
>Fixes: 9d10de78a37f ("drm/i915/wcl: C10 phy connected to port A and B")
>Signed-off-by: Dnyaneshwar Bhadane <dnyaneshwar.bhadane@intel.com>
>---
> drivers/gpu/drm/i915/display/intel_cx0_phy.c | 11 ++++-------
> 1 file changed, 4 insertions(+), 7 deletions(-)
>
>diff --git a/drivers/gpu/drm/i915/display/intel_cx0_phy.c b/drivers/gpu/dr=
m/i915/display/intel_cx0_phy.c
>index 801235a5bc0a..e8b354d1c513 100644
>--- a/drivers/gpu/drm/i915/display/intel_cx0_phy.c
>+++ b/drivers/gpu/drm/i915/display/intel_cx0_phy.c
>@@ -39,13 +39,10 @@ bool intel_encoder_is_c10phy(struct intel_encoder *enc=
oder)
>         struct intel_display *display =3D to_intel_display(encoder);
>         enum phy phy =3D intel_encoder_to_phy(encoder);
>=20
>-        /* PTL doesn't have a PHY connected to PORT B; as such,
>-         * there will never be a case where PTL uses PHY B.
>-         * WCL uses PORT A and B with the C10 PHY.
>-         * Reusing the condition for WCL and extending it for PORT B
>-         * should not cause any issues for PTL.
>-         */
>-        if (display->platform.pantherlake && phy < PHY_C)
>+        if (display->platform.pantherlake && phy =3D=3D PHY_A)
>+                return true;

While we know that WCL will return true for PHY_A here, this might not
be so obvious...

>+
>+        if (display->platform.pantherlake_wildcatlake && phy =3D=3D PHY_B=
)
>                 return true;


...so, what about something like below?

    if (display->platform.pantherlake) {
        if (display->platform.pantherlake_wildcatlake)
            return phy <=3D PHY_B;
        else
            return phy =3D=3D PHY_A;
    }

We could also update the style for MTL and LNL in a follow-up patch...

--
Gustavo Sousa

>=20
>         if ((display->platform.lunarlake || display->platform.meteorlake)=
 && phy < PHY_C)
>--=20
>2.51.0
>
