Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 4EEF8CF86DB
	for <lists+intel-gfx@lfdr.de>; Tue, 06 Jan 2026 14:11:18 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 1B9B610E4B1;
	Tue,  6 Jan 2026 13:11:16 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="Nq0frFiK";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.15])
 by gabe.freedesktop.org (Postfix) with ESMTPS id EBD2D10E49F;
 Tue,  6 Jan 2026 13:11:13 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1767705074; x=1799241074;
 h=message-id:date:subject:to:cc:references:from:
 in-reply-to:mime-version;
 bh=Mib+Ub5EjVffZclVtGUlbG9sXBqKpi0Aj+1CtOympV4=;
 b=Nq0frFiKnUSGx73r2dPl1Fanw+CoujcjN1a9Ad9NoerqTQk3RJ+VcJlk
 4zXhVpM0dysWD0imBSD6PUuVrF4PaQCx3UL8vThgEP3w7pauviapOskJ1
 +OXf0tvrjHuNFjwS/AO/ZdKyp7eE409WfL5VBWMHq8hdH0DkUwJggU++R
 HOGMIogO2iNw1cZDUK85+bgbUwuF2xQyIQybFebMyTkB5LkUH3Mdm7+hs
 IzsmeK1CE31havaSlrtnBSbQf/GzDap9WTXealfI+hfpxcR42AZ5qzlaU
 G+ZCDhefPMqc3gkpoVTA09cj+ECr5kzHhJYhHN6zTepTP/r1fuyWSAaFS g==;
X-CSE-ConnectionGUID: /Wa9u3KwT4excbrpoZodpg==
X-CSE-MsgGUID: orckVb9QQzGIfNKYSrYxLA==
X-IronPort-AV: E=McAfee;i="6800,10657,11663"; a="69141998"
X-IronPort-AV: E=Sophos;i="6.21,204,1763452800"; d="scan'208,217";a="69141998"
Received: from orviesa002.jf.intel.com ([10.64.159.142])
 by fmvoesa109.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 06 Jan 2026 05:11:14 -0800
X-CSE-ConnectionGUID: eeoQKDxkSB61IfAY7LavTQ==
X-CSE-MsgGUID: wDMmXg6hRzui/m7K+62Tog==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.21,204,1763452800"; 
 d="scan'208,217";a="233347956"
Received: from fmsmsx903.amr.corp.intel.com ([10.18.126.92])
 by orviesa002.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 06 Jan 2026 05:11:14 -0800
Received: from FMSMSX901.amr.corp.intel.com (10.18.126.90) by
 fmsmsx903.amr.corp.intel.com (10.18.126.92) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.29; Tue, 6 Jan 2026 05:11:12 -0800
Received: from fmsedg901.ED.cps.intel.com (10.1.192.143) by
 FMSMSX901.amr.corp.intel.com (10.18.126.90) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.29 via Frontend Transport; Tue, 6 Jan 2026 05:11:12 -0800
Received: from DM1PR04CU001.outbound.protection.outlook.com (52.101.61.47) by
 edgegateway.intel.com (192.55.55.81) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.29; Tue, 6 Jan 2026 05:11:12 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=Tfi447LpOMubLefGQw/IT1hQmWzCCFIxQ5GktjiEF2EuMEG1v/xAyUgysMfvVcW2lodzD9OsxeOPDH/IINJJUItN0QvJ67K/koyikGkONnDdnr+UVx8bo0iQioByNvfvGn1bFGK3OK78jqXFB7lEQl4bS67gPQrtuGHOmO6z00PK1+EdZoiCGBNDBD0nRQPhKBwMJQ07om727M6BxYumWzEtXO5R6UU9toPclj8DJOasC6gEAuSidcKML7FrOxAM8yuo5IDcWUBqNsBLT+36ZucQ3ThVMPGev/Tz4QivKL4rmy7aznRiPF9ecqz9+cEYqx8LpWp5pNiUC7M2nzmwIQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=UJEQCcyEQdM/jzONlXTayK8xbZRd1ItuhYbXUtmI8wU=;
 b=ycQsRrrw6SpjgX3gEoiXWlI6iUj9DctfhupKmr2+ykgMk5m6IibrbqdYlT4qz1CPE00U9rOYMv5tiYjJJ0vUXpdJcPlbtzKd3mDV2wttQKQ+EMtjHHEoYJFENQKID9oX7Oc5aAv8Iue9jItDEU9scGu0NuyASJWcwofwkstR/VPrv0KAENcGur6JqMd5RjOm1B8eWaJRiSXgEnREFXnyU0CXvb2geKX1wLkmsAbSuDp4ilGtbdpy1RIYd0vQmBrP7G22nStR2vqNwFUd6Vm9hdIIR/looq4758GJLlx0Itngq5lB7vyD6WgvF5QcXPGy9jnHzbe1qC1yYnMaeBp/Qw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from IA1PR11MB7175.namprd11.prod.outlook.com (2603:10b6:208:419::5)
 by DM3PPF68472F2DC.namprd11.prod.outlook.com (2603:10b6:f:fc00::f29)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9478.5; Tue, 6 Jan
 2026 13:11:05 +0000
Received: from IA1PR11MB7175.namprd11.prod.outlook.com
 ([fe80::cc3a:1f73:430f:472]) by IA1PR11MB7175.namprd11.prod.outlook.com
 ([fe80::cc3a:1f73:430f:472%5]) with mapi id 15.20.9478.004; Tue, 6 Jan 2026
 13:11:05 +0000
Content-Type: multipart/alternative;
 boundary="------------f00QsOYM386SzC4YhpJBOrZ3"
Message-ID: <1400f320-3b30-48c5-9a23-54878d0e42eb@intel.com>
Date: Tue, 6 Jan 2026 18:40:56 +0530
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH 7/9] drm/i915/display: psr enable DC3CO support
To: Jani Nikula <jani.nikula@linux.intel.com>,
 <intel-gfx@lists.freedesktop.org>, <intel-xe@lists.freedesktop.org>
CC: <animesh.manna@intel.com>, <uma.shankar@intel.com>, <imre.deak@intel.com>, 
 <jouni.hogander@intel.com>
References: <20251209113332.2770263-1-dibin.moolakadan.subrahmanian@intel.com>
 <20251209113332.2770263-8-dibin.moolakadan.subrahmanian@intel.com>
 <6a34a806cbb5c8a2ebe2f6c541cf8b3b6d0bac95@intel.com>
Content-Language: en-US
From: Dibin Moolakadan Subrahmanian <dibin.moolakadan.subrahmanian@intel.com>
In-Reply-To: <6a34a806cbb5c8a2ebe2f6c541cf8b3b6d0bac95@intel.com>
X-ClientProxiedBy: MA5P287CA0190.INDP287.PROD.OUTLOOK.COM
 (2603:1096:a01:1b6::14) To IA1PR11MB7175.namprd11.prod.outlook.com
 (2603:10b6:208:419::5)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: IA1PR11MB7175:EE_|DM3PPF68472F2DC:EE_
X-MS-Office365-Filtering-Correlation-Id: c3807aeb-6c07-4935-e78d-08de4d250c91
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|1800799024|366016|376014|8096899003;
X-Microsoft-Antispam-Message-Info: =?utf-8?B?WTdsWHpYR2RwdVlINVFWbGRKM2lCdjIyNFphRHhYSFVOTXFEN0NZUVJpeG41?=
 =?utf-8?B?WE13TGxPbXVWaXhNQ2VKY0UvUWZaVlFydmpLWUhNY0Q3V1ZVRDJMemY4Uk5K?=
 =?utf-8?B?T0xBRTM5K0FZdXp1R1VvazZwanpTbGxGTkVJaHdCMW1DcEtkVGtBY09GR05w?=
 =?utf-8?B?ZDNWTndKcHlGNkxBTUppQW5LdEgvZkpvMXVzclFLSW9wSlg1R3ZVOGFUTEti?=
 =?utf-8?B?MDM5S0lua2hGL2pFM2F0NVJZanZmWFZHM1d6eGwwSWRNSTYxak9MbllQWXF2?=
 =?utf-8?B?MDl0VG51UlVrVW9wcUwwYTZKSFBYRjJOMjZkZ0g3dWNJQ0RSSmc1c2hnTVVQ?=
 =?utf-8?B?aHIydGZBTlRBbWxXTWRMd3pndnVpdDdjemhidUtWWEZMT3orZWwwS2NDWWRq?=
 =?utf-8?B?Z1JSTmZjWkswVkVQQ0VDUituT2RFQ0xRbytWYS8yeTBrc1JTdUF0L2JFMWRu?=
 =?utf-8?B?N1hMelVaK0IycDBsWVIwZnFkME9FZlNJeGptTzIyQkd0amhRRUNwbFk0dkJK?=
 =?utf-8?B?UVdrZnpLQVNwRzZkU3NQakhxeGVEMlhRSVlnb3plc3RyUkt1RzRWWWdvRExl?=
 =?utf-8?B?bk5xZjhxZ3JEVkRUL0xxNFBRU1FrYjluQlY2TE5GSU4rSVF0dzZMbjRQazBq?=
 =?utf-8?B?eDBkRXVFRllRcGFKKzl6amNHYVBLajN2LzIxTlY4aUJUbVB5bHEwbk4rTTlF?=
 =?utf-8?B?RG1Da1E5QlVybWlmSmJPVW04T3NTdUc1ZkZjOEFlUzdoaHhsdlYrMTVRa3M5?=
 =?utf-8?B?V0tpdUtyMDk0ZWhVZUNBcEJZemZ5YzFBRW4vN1pXOGxuRUtkNTRUVFYvQmdM?=
 =?utf-8?B?Vmk4YlN3cjZtQU11WUovTzdFRiszRHRCNHNpUjF4dHQvRDhtNU5UdDJRcTdm?=
 =?utf-8?B?TjFRcVNlZi81ZWUrZEhqblNPWVZGYmprWlE0U0VOWnlNN0RHZzZOS0VMWFlh?=
 =?utf-8?B?RHFEVE0vY3JsTXVuK0VDZVQ3a1h1ZHRPYXpLVGNPNm5UdFpkeGtzSEtiQjh4?=
 =?utf-8?B?MVlEUlNJd3B4ekFhNWduN1VTOGNDdUFjNDJGRFY1ZkdFMjFtc09qc0UrTzhD?=
 =?utf-8?B?eGFNaDNHdjZnMWI4bWpsNkFBdVIybFhxUzJwd2tRR1gvYmlZY2hlWlVFZmpn?=
 =?utf-8?B?MHZNRXNSRGltUEhrUXkvMm1KNUR4WCs4UnVGOGIzbzh2allzT1h1TUxpMzZJ?=
 =?utf-8?B?YUIwbHRWNkpXeWVVNmFpMVV4ajhrVll5dGRhZjZWc280WGNQQys4RUhSUVRr?=
 =?utf-8?B?T2lRcFBnM2NOUEJIcDZQcnF2aG9IRGl2MTlGSStSMGxoMjhRODRHcWVsS3Bi?=
 =?utf-8?B?aXZjelhGZzE5bVdtVFRoLzkvbDcxMUdXNnpYMVg1aXlyRXlnelpaZGVSMnJV?=
 =?utf-8?B?aUFUQlFuV3EvZ3BWYWpRMi9sWnRDWG16TXg2cjdkbmQzSm94VXl6QmEvWHZp?=
 =?utf-8?B?Tk1DNzBvS1Y3L0NIQ1JKdUF2L2dxK0R2T1VZWk1VcE13NjE1UGtSaEtwSENm?=
 =?utf-8?B?WFQ4N1huR2tZbDNYb05jdlVDeFZOdEJWaldGbG55Mzh0a0g3OTgwcDI0SGJE?=
 =?utf-8?B?bjJjMFBadU95TXg1YnlXSG1kcUVnUnFnZGVrL1pqbU9ZSytzTGgrb3ArREZX?=
 =?utf-8?B?cmZmalRGWmk3dXdJblJ4RTBReUh1RDVKUG1MYnBFSzdaNnhNZ0JRc3ZRbGRh?=
 =?utf-8?B?R0FneDlKak1hM1dRMFFLMmNtL1UxVDFOSFpPNTVkRXBPK0dPUXg5clRhcVU1?=
 =?utf-8?B?Y0RRdnhkM2s4aC9mdFlsalJDbXlJMkxHSjFjTS9iamNWL1JqY3I5Z3dCM0Fm?=
 =?utf-8?B?cWRKdTRXbWZpeFlwVzI4K3ZRZERzMnZsRVJUdXl4RnZ0dDRpYkpBUEp6WTUx?=
 =?utf-8?B?SnJSVGNFTVBRWlVnUWNYNDRKNU1ubUlyTDBMcGE0eTBTYlV4U1Y5U0lZRW8x?=
 =?utf-8?Q?9q66lXoSf7TOgb5/wb61BN9PD2PvuHsD?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:IA1PR11MB7175.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(1800799024)(366016)(376014)(8096899003); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 2
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?NnZlTTRjQWdkbHNWUXBQZURibXE0N3hwenlEQURmQ3ZCVll5eHdDY0lTNU00?=
 =?utf-8?B?RldnQytUQU50a3QyeUN4c1VDNklONXR3dkRCRzd2L1FvVmpITy90TGJjK01j?=
 =?utf-8?B?Q0xYaHZVNGYzSmt6RldmRnNwaE11bytGYUtRVHFHOVpEeDY4NFVVbUFBWXZk?=
 =?utf-8?B?WXlQUHVzbzVlcklzTUJRTFhrMWdYMll4eVFBT0dMQTFTUm9mUHNnd28xQ05C?=
 =?utf-8?B?djA1dTZxKzJKdzJ0ZzhtRXBkQUZpenJuRU84ckJGaFZHRHVEMTl1K0VXQTcy?=
 =?utf-8?B?K1hLcjc3R3pDWkVZdW1UenFUVWdBYzhFVzN4Zjh1TXAzekd5KzF2ZWxSUkNa?=
 =?utf-8?B?L0RQUFBTL3FCcm1XOVE2dDF3d3VTMTlDaldmd3AwbXZQSlJ5bGI0dVh4c1FW?=
 =?utf-8?B?dWpuVzNUdDdDZEQ5NmhMaHh1NGRSQXlxVHhSa3NRQUlveGlock40UVFnem15?=
 =?utf-8?B?a2prd3Y0bndjdDhsMm5nK3JIT0dXUnhuWnVqZFBJeFpIcmdkbFlvTGFsQTUx?=
 =?utf-8?B?cnN0dUxsRjQ2WlBvc09qa3hTRTdoaW8ydU9zT1psbzFvSlVZSEpsZVpMeDNI?=
 =?utf-8?B?MlV0aTNJUU8xWm5lOHdQZ2Vvc0plRkFKZ1VBMkNLREo3eXVmV0JENlNtUnds?=
 =?utf-8?B?VElPYWFOQVVKczh4OUY4MlQ4cTluS3RqZEVoZnp0bWhsRTRiUlV3YWhzQVJj?=
 =?utf-8?B?MXhsTTNTT0J0dWQ5ZDYzTW8waXNRZDc2WTROUHExQmpwQWZsbXJ3VjYxUEt0?=
 =?utf-8?B?L1lwd1ZIRTlVK2x6ejVJVzRMWXppR1h0MnMwUGFYNUNOa2VxNDFFTEtFSzNJ?=
 =?utf-8?B?am1YejZUVHNwcGxUWTBETmFEaDcwbGlLeFhZWnJBaUVJNVI3TW1McUtodVBW?=
 =?utf-8?B?Yk83bWh4eFNOUEFsdmtISzc3Nm9MRWNxdThMMGlGbzJ5RldOOGNLdGtwZE9s?=
 =?utf-8?B?R3RTRUxFNTAxeW5Bb1V3eXF2UW8xSWkxelh2SFhmd0xFdE43M0dKSzRuYkhN?=
 =?utf-8?B?WU1qbWkrTHoxMHZTZ2dvMFoxYkNKbEY5ZVFoOWFZR1Fsby9yb2RXSU0wampX?=
 =?utf-8?B?NW9ldkRyYngxMWFXaXdQTFdxZFJzNTZidDFlVkxYc0NITkZTQllmYm56VTlj?=
 =?utf-8?B?NzJDY0lQaHNJNmxmWXF1Zk41VTFTcTJuL0JYMlJod2JqMHYycHl6bVlZbkRr?=
 =?utf-8?B?L1RrdVlNRTErK1NwQ1lhclJYeGdXamdML0d1Yk1Ua2wzNzN5T0pqZXIwL0NL?=
 =?utf-8?B?ckxsY25KTXhrcTJGL1Z0aDBpMHEzRWwveUVXTFo2ZUhXOW5TWStia2xSbWdk?=
 =?utf-8?B?MjRUb09rd21NVW0wa1FCeGJzZzNiZEw0WDVIWStUMlFOQStTVDIxYXZWNG1K?=
 =?utf-8?B?SEtqSHJKempINVNPZXhtNnNFM1l5VWpPM0pEMS9IaU5Vc2tGNENYQk9XVitJ?=
 =?utf-8?B?azRxQW1vMy80ejRpTG5SNG9abU9hS0Yzb3h3dDQzblZUb29LeTB1dFJOOXRP?=
 =?utf-8?B?Q3NSZlpNUW5Xb3JwNVEvUjcrNnpxSXFWVjdySk0wNTBGRzRkYUt3Ri8zVEI5?=
 =?utf-8?B?cGhmbG83V2hNMGVKZjlXZTRZSWkxRm5ncHYxeG1JQzE2NHc5ZmNVNG9VMk9y?=
 =?utf-8?B?MkI1dUw3T3ZnbENUc0RJMGJnYTJIcjY3VnJxVklQckpUcVVrbHFTaTVyditw?=
 =?utf-8?B?eGtHcSt4a2dZRU42MVNSWG1QeTRTQ0hZYVNOZTBad1dSNS94bHlMczl4NnZZ?=
 =?utf-8?B?cTlWRnhsaVA2WWszak9vUUxKMWk0eWh5SzZRUUF1ZWZldGNrRmxWbkhYaEo0?=
 =?utf-8?B?WitObDJwRURKNE1UdWs5cUNWY3MwTStZMUcrbUlObTJNTW0yeFJDMk9IOERC?=
 =?utf-8?B?cGtuTlRzT0pLNFFlUjNIUUFNSEpXWk1NRitjaU1PTlQ5UFVnYkFEMW85TEdp?=
 =?utf-8?B?RVpLUnNiWmh5OGFwb0hFU2VCWkkyMVdSWUhDODRGTzdpT2J6MVNZVTZOUUI3?=
 =?utf-8?B?aXJSNUhuZzVSNlFPSnFISjljMlg4eGVicm4yQ3dzZFduVE9lMEhyRFFBM3NC?=
 =?utf-8?B?N3EyeG1MYTBiT3dJU3JyVWRMckkwWEpoMkFtVXYzemhJZ3JzYmVyVnVZU3hJ?=
 =?utf-8?B?Nk5vZkw0VldLU1ZCWmI3K0tjS2htODE1QTVubFM2NFEzZDA4WVhRMVFqc0lr?=
 =?utf-8?B?VW5JLytsWVpsZHJLK05TOW9HMFJRUHFhNkI5aTZwUWpHdVo4U2tGUCtWbDVG?=
 =?utf-8?B?UHBGMFNQY3h5Z2N3aWdLTGZ6WSs2M05QY1BTM3NPeFJlU0RBSmUvNUxmcVNl?=
 =?utf-8?B?eW1FYXZndnVBVExpRUxmdS8yeUtjbTRqMERYWGxZeStWYlArUE5SZkwrWUdK?=
 =?utf-8?Q?hu7K5XNBnWn6XQzVuh2+oa4YIoz/P26+uEfsMhCrRg8U7?=
X-MS-Exchange-AntiSpam-MessageData-1: pkp5ykYexkpRYQ==
X-MS-Exchange-CrossTenant-Network-Message-Id: c3807aeb-6c07-4935-e78d-08de4d250c91
X-MS-Exchange-CrossTenant-AuthSource: IA1PR11MB7175.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 06 Jan 2026 13:11:05.7445 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: Or8lwn5IDJXxkZCOODrgpHWAmzJMpqkEpvYYD6DVKNLc9MFle+bVQ5AwZp66kpp/z4ab8IHBiTBkG5VHQ4zF0M3r8eHq3Q1Jp1y8u+/qyiVSwGeWNO8RFkSJAF/4giz4
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DM3PPF68472F2DC
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

--------------f00QsOYM386SzC4YhpJBOrZ3
Content-Type: text/plain; charset="UTF-8"; format=flowed
Content-Transfer-Encoding: 7bit

On 05-01-2026 18:32, Jani Nikula wrote:
> On Tue, 09 Dec 2025, Dibin Moolakadan Subrahmanian<dibin.moolakadan.subrahmanian@intel.com> wrote:
>> if DC3CO allowed and psr2 is enabled, update dc3co_source
> Yeah, I can read the code, but what does it mean? Why?

I will add more details.
The intent is to record PSR2 as the source enabling DC3CO.
DC3CO can be entered when either PSR2 or LOBF is enabled, and
dc3co_source is used to track which feature triggered it.

>> Signed-off-by: Dibin Moolakadan Subrahmanian<dibin.moolakadan.subrahmanian@intel.com>
>> ---
>>   drivers/gpu/drm/i915/display/intel_psr.c | 6 ++++++
>>   1 file changed, 6 insertions(+)
>>
>> diff --git a/drivers/gpu/drm/i915/display/intel_psr.c b/drivers/gpu/drm/i915/display/intel_psr.c
>> index 9c616f449ad6..d4c5dc6dcc82 100644
>> --- a/drivers/gpu/drm/i915/display/intel_psr.c
>> +++ b/drivers/gpu/drm/i915/display/intel_psr.c
>> @@ -3007,6 +3007,12 @@ void intel_psr_post_plane_update(struct intel_atomic_state *state,
>>   		if (crtc_state->crc_enabled && psr->enabled)
>>   			intel_psr_force_update(intel_dp);
>>   
>> +		if (psr->enabled &&
>> +		    psr->sel_update_enabled &&
>> +		    intel_dc3co_allowed(display)) {
>> +			intel_dc3co_source_set(display, DC3CO_SOURCE_PSR2);
>> +		}
>> +
>>   		/*
>>   		 * Clear possible busy bits in case we have
>>   		 * invalidate -> flip -> flush sequence.
--------------f00QsOYM386SzC4YhpJBOrZ3
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: 7bit

<!DOCTYPE html><html><head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
  </head>
  <body>
    <pre>
</pre>
    <div class="moz-cite-prefix">On 05-01-2026 18:32, Jani Nikula wrote:<br>
    </div>
    <blockquote type="cite" cite="mid:6a34a806cbb5c8a2ebe2f6c541cf8b3b6d0bac95@intel.com">
      <pre wrap="" class="moz-quote-pre">On Tue, 09 Dec 2025, Dibin Moolakadan Subrahmanian <a class="moz-txt-link-rfc2396E" href="mailto:dibin.moolakadan.subrahmanian@intel.com">&lt;dibin.moolakadan.subrahmanian@intel.com&gt;</a> wrote:
</pre>
      <blockquote type="cite">
        <pre wrap="" class="moz-quote-pre">if DC3CO allowed and psr2 is enabled, update dc3co_source
</pre>
      </blockquote>
      <pre wrap="" class="moz-quote-pre">
Yeah, I can read the code, but what does it mean? Why?</pre>
    </blockquote>
    <pre>I will add more details.
The intent is to record PSR2 as the source enabling DC3CO.
DC3CO can be entered when either PSR2 or LOBF is enabled, and
dc3co_source is used to track which feature triggered it.</pre>
    <blockquote type="cite" cite="mid:6a34a806cbb5c8a2ebe2f6c541cf8b3b6d0bac95@intel.com">
      <pre wrap="" class="moz-quote-pre">
</pre>
      <blockquote type="cite">
        <pre wrap="" class="moz-quote-pre">
Signed-off-by: Dibin Moolakadan Subrahmanian <a class="moz-txt-link-rfc2396E" href="mailto:dibin.moolakadan.subrahmanian@intel.com">&lt;dibin.moolakadan.subrahmanian@intel.com&gt;</a>
---
 drivers/gpu/drm/i915/display/intel_psr.c | 6 ++++++
 1 file changed, 6 insertions(+)

diff --git a/drivers/gpu/drm/i915/display/intel_psr.c b/drivers/gpu/drm/i915/display/intel_psr.c
index 9c616f449ad6..d4c5dc6dcc82 100644
--- a/drivers/gpu/drm/i915/display/intel_psr.c
+++ b/drivers/gpu/drm/i915/display/intel_psr.c
@@ -3007,6 +3007,12 @@ void intel_psr_post_plane_update(struct intel_atomic_state *state,
 		if (crtc_state-&gt;crc_enabled &amp;&amp; psr-&gt;enabled)
 			intel_psr_force_update(intel_dp);
 
+		if (psr-&gt;enabled &amp;&amp;
+		    psr-&gt;sel_update_enabled &amp;&amp;
+		    intel_dc3co_allowed(display)) {
+			intel_dc3co_source_set(display, DC3CO_SOURCE_PSR2);
+		}
+
 		/*
 		 * Clear possible busy bits in case we have
 		 * invalidate -&gt; flip -&gt; flush sequence.
</pre>
      </blockquote>
      <pre wrap="" class="moz-quote-pre">
</pre>
    </blockquote>
  </body>
</html>

--------------f00QsOYM386SzC4YhpJBOrZ3--
