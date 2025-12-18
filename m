Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 34B06CCA5B6
	for <lists+intel-gfx@lfdr.de>; Thu, 18 Dec 2025 06:46:45 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 1314710E0AB;
	Thu, 18 Dec 2025 05:46:43 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="RjAcGzCm";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.10])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 8BC8F10E0AB
 for <intel-gfx@lists.freedesktop.org>; Thu, 18 Dec 2025 05:46:41 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1766036802; x=1797572802;
 h=message-id:date:subject:to:cc:references:from:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=P5tYIxrAs7hFGm9uG9MeNzzCebKxBBr2QdbUXQu9IyI=;
 b=RjAcGzCmyfN2UJzxo9dZWxniEOdHixVK/U8GU5GU1ZAr1XRylL3Udkdm
 QlyhgaSyRgif6g1fUgV0kyucgga88IH1sfygxT/z6GGc8FTVSkt7UgQWK
 KNCn2tKVnqueeb8+JnE7SC2/L9PMUHJl/2q41My4xoeHNV0TJ09HINu4g
 FYumRTuxbkSW7+Rm2AtgJ2pehcSohn44y5KQxXnHUwRa8I4mWH4Unb8BP
 CKa2dAiRgTv/W6AW0miSmx5kYVEUXAj+yvuQ8Wp568pXuCd8k5qxCuzcx
 zAdziNPqnlIOe+g/pHe+i+80sWrjDCnvJJWk714M5AgDA7VkG4Jccw7yg g==;
X-CSE-ConnectionGUID: 9bdNk4ZgSAaI2GTMjJBNpQ==
X-CSE-MsgGUID: 87iH0VmPQeuU3YOJPmtaRg==
X-IronPort-AV: E=McAfee;i="6800,10657,11645"; a="79354127"
X-IronPort-AV: E=Sophos;i="6.21,156,1763452800"; d="scan'208";a="79354127"
Received: from orviesa009.jf.intel.com ([10.64.159.149])
 by fmvoesa104.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 17 Dec 2025 21:46:41 -0800
X-CSE-ConnectionGUID: AOTA8dMpTRyE5pX/MIKDiw==
X-CSE-MsgGUID: XcpQPsmqRPKa44lhloLAYg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.21,156,1763452800"; d="scan'208";a="198261024"
Received: from orsmsx902.amr.corp.intel.com ([10.22.229.24])
 by orviesa009.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 17 Dec 2025 21:46:41 -0800
Received: from ORSMSX903.amr.corp.intel.com (10.22.229.25) by
 ORSMSX902.amr.corp.intel.com (10.22.229.24) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.29; Wed, 17 Dec 2025 21:46:40 -0800
Received: from ORSEDG903.ED.cps.intel.com (10.7.248.13) by
 ORSMSX903.amr.corp.intel.com (10.22.229.25) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.29 via Frontend Transport; Wed, 17 Dec 2025 21:46:40 -0800
Received: from DM1PR04CU001.outbound.protection.outlook.com (52.101.61.52) by
 edgegateway.intel.com (134.134.137.113) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.29; Wed, 17 Dec 2025 21:46:40 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=AFca/jK6lF/jxe4e71pO2+Xufds+/EEyi0oJG6Ucb9DHOezqnbtcQKlbj5AWUo8j7t1B3CR2RzHjqMxe2ZG6sjuH8CgM8xdXgS8XsFKwilnw6ZZ4Whpp5ZuFaUn/RNJhLYmcIeG2t6ClaGaulO1nYnr6aiVCkN/LSH0Xx6Qsmvf+WddTFo8gOOXCvO4TEW6NE2a/fbAe9r/MJoTjoRaMgJK8x277WJfyMCu+5pSBjnSeQ+FghlXC28TtNMNOUEuoASkuNl1ws9Tc0A9G9HI9RknwRpxVqztelREUaETaZLbm1K8Iz9gwMWUv86oiiRYpW3DLNd6wkydn0ftnqKtV+w==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=u3itOTW+4DJsDumIHHCVNKaj4vW6m3h4KVLciijYkaU=;
 b=weSbBx//JeDCTjYdhCFGYL1T3i/XLWf0MOdRETAPY1R7R2uj4cHEumbHmUd0wuNICA1oTX3nsPmt1NFmRIDFrTjgtXEohfWR4HS5P6qy2xW2k4Z8WixREZ0+JjzUEdOdBGiF1OavNFFf6hV47QCe1ZPcGp886NJULVwsASfLA5VXJenaDeWtE+jtGThJVFN/+PIAsDcuMUAmKIdID8q/h2Rmx0/Z9RtCbfdDlqFUzwAZnXVEGf6GTqpuTMHRGE3NfkdEgYtJv00ZCke2qovTSerSyIZO6G/UHMQ3agtz0uK+autsiLlWs38eih+p3UVbgoeKW/GpWMTVnVB75025rg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from PH7PR11MB8252.namprd11.prod.outlook.com (2603:10b6:510:1aa::14)
 by BL3PR11MB6315.namprd11.prod.outlook.com (2603:10b6:208:3b2::12)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9434.8; Thu, 18 Dec
 2025 05:46:38 +0000
Received: from PH7PR11MB8252.namprd11.prod.outlook.com
 ([fe80::9f66:9d6f:3199:78b2]) by PH7PR11MB8252.namprd11.prod.outlook.com
 ([fe80::9f66:9d6f:3199:78b2%3]) with mapi id 15.20.9434.001; Thu, 18 Dec 2025
 05:46:38 +0000
Message-ID: <281d4ce1-bb8b-48bc-bac0-286b95ddf318@intel.com>
Date: Thu, 18 Dec 2025 11:16:29 +0530
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v3] drm/i915/selftest: Add throttle reason diagnostics to
 RPS selftests
To: <intel-gfx@lists.freedesktop.org>
CC: <raag.jadav@intel.com>, <krzysztof.karas@intel.com>
References: <20251218053220.1599233-2-sk.anirban@intel.com>
Content-Language: en-US
From: "Anirban, Sk" <sk.anirban@intel.com>
In-Reply-To: <20251218053220.1599233-2-sk.anirban@intel.com>
Content-Type: text/plain; charset="UTF-8"; format=flowed
Content-Transfer-Encoding: 7bit
X-ClientProxiedBy: MA5PR01CA0239.INDPRD01.PROD.OUTLOOK.COM
 (2603:1096:a01:1f4::16) To PH7PR11MB8252.namprd11.prod.outlook.com
 (2603:10b6:510:1aa::14)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: PH7PR11MB8252:EE_|BL3PR11MB6315:EE_
X-MS-Office365-Filtering-Correlation-Id: 33837cf0-a003-40d7-9ebe-08de3df8cf56
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|376014|366016|1800799024;
X-Microsoft-Antispam-Message-Info: =?utf-8?B?RWh5dGx6UmNXRlZQeWRjVWkwL3BZbmphOU5STHB2dWk3SUI5Y2ZvRnhYendz?=
 =?utf-8?B?OGNvTDhQaDVZc2JEcldzbGZqSUdVVUtiY0p5MGFkcmNna2R6N0drQlZRZ1R4?=
 =?utf-8?B?S2lhVUNrcWQrMWErQW5XNmxnaGpzQlZ4YjhMaDR3aDlCYVJZTWVwekx2SDFp?=
 =?utf-8?B?Wm5PdjBZTFhxRXBTWTN1OGZMWVBYdDlOdS9pUlNVSU1uRTdFVmd0UVUvOUtS?=
 =?utf-8?B?U3hpa3N0cFVuOGtMWUlnWk9vRGtvbnNUcktISktqVllqa2t5RzllbUZJUDJN?=
 =?utf-8?B?QjJEdCt0UFRhRDNlNmh2QkJVaUtwRU5VUEE5c3AyR0FpZWtLdFEyZGtyYjVq?=
 =?utf-8?B?bWhsR1BvYnJrNmp4VlphQm1hTm42eUs1RWVxOUt2UDVRVUs2U0ZQVkduV1Iy?=
 =?utf-8?B?V3Bxdmw3TU1mN0lLMlB5RVAzY1JjczJXMlZERGtzTTFsSlhIaEtLZHZacHdz?=
 =?utf-8?B?RktaQU95UzNoYTR6dVB2d2dlcFRpODdjOEF1K3BtRlNUVlhKZmF5UWdBb3RK?=
 =?utf-8?B?VDlleGNXZFIzdkErczUwZURUWFdLZkxCMHRTQUovNk5ZakhrYVpFMnJ5czl4?=
 =?utf-8?B?NUxKSEFhT1QyL1AxWTA3QXFhbVNkVjRSNHZncjl1a0hnSlA2VGU3MlNPeHlP?=
 =?utf-8?B?bU40bEpuTHVpQ3FOYVZoRWdiQVh3SGFBVHdTSkVRRlBNNGpPOFc0N0dTNWFZ?=
 =?utf-8?B?WUpxNDBhT0gxNzIwenBZTXRreUlVV1h5dndOU3RWcm1uNG1HbjhXUHV5Um8y?=
 =?utf-8?B?K1VtY0NHWU1VTnJqb3BZUlIyUlRaVlBHZk5mdWEwbVpYZG9FbU4xZ3Z4eERC?=
 =?utf-8?B?N3FaNk02S29acnZFQnY2dEZxaW50b0xJa25YbDdGdkhxL20ycit1dkRjYWRw?=
 =?utf-8?B?a2g3eUdPMXBoYmcyemZiYlNOR3pPNUpBNnhEY0J6YTQzMEhNcUpKaG1yWHRo?=
 =?utf-8?B?ZDdsYm1LTlhxbXlhbmpWSm5jOFBESkIyYTdjWlRhS1YwNk14ajlWM1hmS0FE?=
 =?utf-8?B?WG5EV0gzQWp0YmhkQnAxNmlZeHFrRHNMRkpxczhiNVRkWldsbTEyUjN2c3dU?=
 =?utf-8?B?eEFYQjZmK2VpUVRDb2dOdUgyTEZaSm1LYXc5R2ptbTlubWFjSGdEcjBpSFQ5?=
 =?utf-8?B?dlR2K04rRmlLVHZWOFdIRnNlTEwzbURMdjBvTTliN2xzemZHbUplWlFpTnJj?=
 =?utf-8?B?c2tHZEhJcVBjMERhcjdXakFaN1NNQXlJbHlHWGJlL1hsVjUwQlUxb1ZseTQ2?=
 =?utf-8?B?NXBhdDNxWXZ6ZlJmWEQ4R1N2aTMxOEhnR2QyUUY4YldOSEpjWWZVUXVZcjhm?=
 =?utf-8?B?VVZCelZ0eUNibzFhVFBrOXpGeUpzNlM4SWpieUt2YVB6dWthNjE1T1hLY0I5?=
 =?utf-8?B?ZTQ0SjBkU3h4cU1aLy9tdFkrV1p2UnA1cWxSNDRCTXdvR0s2bGpPTm5zSmRM?=
 =?utf-8?B?SC9Ld0pnTEdTdnY0bnRqM1JlQVJsdnB0REs2dUZ6eXNULzdVNXhNRGg4NGN0?=
 =?utf-8?B?ZW93Q1llZXNPa21ZQitiV1hwZCs3NkEyeUFCZnkrY2piUEI2ZmovYW1jUEhH?=
 =?utf-8?B?bExRdS9CbUV4SmxCZ0NFdVF0Sy9tcEFoQ3AzNnV0bUpIMDJQSHI0NndGejJX?=
 =?utf-8?B?M0xqNDAxU2s2UzJrYWZwR3lFQ3BTYzhaUG81Q0RreXhXa3dEb0QvcnVkRW9v?=
 =?utf-8?B?UzFOT3A0Y0tPU1BISU85eE9STGJXV291bXd1czVMaWp6WFlyRmc4ZEgwbU9K?=
 =?utf-8?B?TzVkSUdqSzg1MDhoeXpzajJWWUlkQmc3T05wajNiSHlIeHpzQWh5SDlJUUd2?=
 =?utf-8?B?K3dEUmV4UCtwZGVCRnZjWXhvc0JHdjhUa1BBMnZWZXhteDJ6ekhiM1BJZGpU?=
 =?utf-8?B?MFd5NVlkdXluYm1mclFPRGRsNmhzajkrK3hTNy84Zmt6TnVtdmNGZ2JodTcz?=
 =?utf-8?Q?Ae6oRMmAcr3lK/5kJLM0TAhSnUZaJcVF?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:PH7PR11MB8252.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(376014)(366016)(1800799024); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?TUo5TWxCbjVwbVdabFdrQ3MzRk95eU5zalpTRS9xTXRpK1VObll3MnZ6QzFS?=
 =?utf-8?B?dmppc3lRRUpJc2dzSlR6K1NMaDZIRytFU05Sd1Fhb3JzaVpNSHl2TlZ4ZitN?=
 =?utf-8?B?TTcyU0VUZkVqdzJmaWVrQmdRekpCdGtkTGJqdlQzZFFCZ2tyNnU1NVQ3elJY?=
 =?utf-8?B?QlNpK2t6QUlKOGxQZDBjVmZpSG5IS3F0UXlLbUh0dmdzL3BSS2k3Uks1cld2?=
 =?utf-8?B?eWdGdElOb3ExeHRYTWdBbFdXRnNnVTBBNUV4ejdyMVp3UUR3ZHJQNUpVZEdo?=
 =?utf-8?B?bVRmSTkrY1k4dzlMUG9tcEdTeXBGRE5oTVh0SUdXdFFOdG5rTWJhRlNOQmYz?=
 =?utf-8?B?b3NUNXNGb0JWM0p4QUlLTTRzV1BvMnF4ZHB0MDZZVG1icHpoUmwrL0FWTmZr?=
 =?utf-8?B?K09IS0w0aU5XSFR3dHBuaUJqaEdwbVZUWTF1cHQrbWJxb1pqbE4xTUs5QWcy?=
 =?utf-8?B?cXFsT2lQbTE0M2FEeEp1R0p5VU9paVYzZVo4c2VyY3E2T2tEK0pCcGpwRzVW?=
 =?utf-8?B?bndLakwxL3RvSjgyT2hOQU5pS21MdkNBRGx3ZEJCQ2ZoZ1ZnZnU2UWtDYUxk?=
 =?utf-8?B?dTZlbU5oZ3FoQWc0L3A3Z2VKQ2x3emV5azZ2RVdLZkFtakVsNmk5c0pqVXdv?=
 =?utf-8?B?UFJXckF4U2puME9Vb0orbXF0a1VENTNHNCtOWm1JbGFjcDBTeHhraDYrcmZL?=
 =?utf-8?B?ZkxZUEFyWTg5QnVIVkRWWkJyZmpvTlMrdEMvMlFMK3l5dlZjeFlNMUpxbThX?=
 =?utf-8?B?S1VZQlN2dVI5djhaNHBwY2h6Q1lSTmVIMnQ2MUIwaVE1VmpUOWFLTjkzWGlw?=
 =?utf-8?B?WlRsNjJMYkdLaHpZZm5YY3ZVVG4wd0tXYW5DTURYMVh4REk1ZitLTlQ5eU1I?=
 =?utf-8?B?RVQ0aWc4VE40TkljNjlXMEJCU0JBbGxtbVpUaUJWYjdNQmgxb2VBOW5xaDFn?=
 =?utf-8?B?bHc2TVVHR3NLa21reG5scXJRM2FKYitmSWVrcyt6NWtXcDZXbDMraUE2WDdp?=
 =?utf-8?B?dnYwY2FXN1k4ZG5TcVM5ak10d1p5RlJ0Y1NPMWhNbXRDSjBMU1lrVWk4eStl?=
 =?utf-8?B?ME9MWlh6eHNTYnlSRjQ0dUxxYTN2Q1ZxRWV3WTBkYjB6RUFkUklueHRlbUVz?=
 =?utf-8?B?eTU4b083RysraC8wcmxlSmcwaWZyUVdHaXZuUmtXS2F2ZXppRlZlbGFpcjln?=
 =?utf-8?B?QzJsWlA3NSsvMG84VEZkYVRVTVVPQ0QxeWt3bFFmQXhOZ0p1VnNETzY5eDhH?=
 =?utf-8?B?dENBY1FiV3cwb3BDNjlJcjNsbk5YdWllLzF2ZUlBbEtMODJ3c2JlNzFISVVj?=
 =?utf-8?B?aFBFVjhYTXZRckNsSXVkZVlqcGJuRHpMRmpmZXBIcTIvYTZPZExnRGVaZ09U?=
 =?utf-8?B?TE9yVGV1a1l6K29QRG5kbjNWQzZLRzY1RlI1SDdCTDNDcnErQUkvTVYyYkRH?=
 =?utf-8?B?ODJkNE5aT0R5QWR0U0prS3JabU5iQWpWeUp6cGh0aU9BQXFLbmNXUXltVktW?=
 =?utf-8?B?ZWprSmFlL0U5eW5zSHV6WFFnVkhnUjR0N1VLVlBDNG0yZmRHZnpLVUNLY0Qz?=
 =?utf-8?B?SW1XZzNMN3ZYMFNkQ2ZxVkdCb2VHWWgxOXdOTUQzZWRjMTl4UHhIMjl1TjFp?=
 =?utf-8?B?ZVdqVEhaajdMamkzSVFWNFZXd3JXMHlyYTh1S0ppZEEwMVU4QU5XMU5oNHk4?=
 =?utf-8?B?eFFnSlc4VDdoVW03ZVRJcUJ2ZTJBcXBodXZCSkZKaWhmS3o3WlZjQVVodXdo?=
 =?utf-8?B?WHNKbmp3bVVGbHJGRW9iVTRzNGJjVkp0TWN3UE9DV2xYMnlVYk1qNFlVYmxq?=
 =?utf-8?B?cmI0TGFLUTVTWEltY2QzUzl0MDdPUi81dGNrNzBuaXZKMDF6cDJnVUhXSERa?=
 =?utf-8?B?TlNIcXJQcUtOZU5lRkpvei9qYnB4SXJkbFpCUmpmdlN6MjBFbW9TUWhJY0c1?=
 =?utf-8?B?dDZQN1dyNTdhREFheElLRis1VEhOWDRWeDdVTjhaVHVxdFJRU2NHbm1LSXRB?=
 =?utf-8?B?elgwczg2M0NsUGFRVkZRUVJ6K3piTXlUQytpaVY1UFVoeDRjNmVXdHFOZHNt?=
 =?utf-8?B?ZWVFYnBVTzg2cHJIdkRkQ0xHWHJ6bUlsOFZiMmtRZlpBb2pQeTJ3azRTOEwr?=
 =?utf-8?Q?lEYBizilAzxIKJTaqiJ97JHL5?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 33837cf0-a003-40d7-9ebe-08de3df8cf56
X-MS-Exchange-CrossTenant-AuthSource: PH7PR11MB8252.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 18 Dec 2025 05:46:38.1452 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: rTCLbLeVSH6+2TpOGlaYAIN852OpNhlNhNRpWvoyWYyHdEnB+LQoITFM3O5gb3/HsAlKw8EBDZh2kNRk6m1rVA==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: BL3PR11MB6315
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

Hi Krzysztof,

Could you please let me know if I can retain your review for this 
version of my patch?

Thanks,

Anirban

On 18-12-2025 11:02 am, Sk Anirban wrote:
> Report GPU throttle reasons when RPS tests fail to reach expected
> frequencies or power levels.
>
> v2: Read the throttle value before the spinner ends (Raag)
>      Add a condition before printing throttle value (Krzysztof)
> v3: Extend throttle reasons debug support (Raag)
>
> Signed-off-by: Sk Anirban <sk.anirban@intel.com>
> ---
>   drivers/gpu/drm/i915/gt/selftest_rps.c | 37 ++++++++++++++++++++++----
>   1 file changed, 32 insertions(+), 5 deletions(-)
>
> diff --git a/drivers/gpu/drm/i915/gt/selftest_rps.c b/drivers/gpu/drm/i915/gt/selftest_rps.c
> index 73bc91c6ea07..b42d9b39add6 100644
> --- a/drivers/gpu/drm/i915/gt/selftest_rps.c
> +++ b/drivers/gpu/drm/i915/gt/selftest_rps.c
> @@ -378,6 +378,7 @@ int live_rps_control(void *arg)
>   	enum intel_engine_id id;
>   	struct igt_spinner spin;
>   	intel_wakeref_t wakeref;
> +	u32 throttle;
>   	int err = 0;
>   
>   	/*
> @@ -463,6 +464,10 @@ int live_rps_control(void *arg)
>   		max = rps_set_check(rps, limit);
>   		max_dt = ktime_sub(ktime_get(), max_dt);
>   
> +		throttle = intel_uncore_read(gt->uncore,
> +					     intel_gt_perf_limit_reasons_reg(gt));
> +		throttle &= GT0_PERF_LIMIT_REASONS_MASK;
> +
>   		min_dt = ktime_get();
>   		min = rps_set_check(rps, rps->min_freq);
>   		min_dt = ktime_sub(ktime_get(), min_dt);
> @@ -478,11 +483,9 @@ int live_rps_control(void *arg)
>   			min, max, ktime_to_ns(min_dt), ktime_to_ns(max_dt));
>   
>   		if (limit != rps->max_freq) {
> -			u32 throttle = intel_uncore_read(gt->uncore,
> -							 intel_gt_perf_limit_reasons_reg(gt));
> -
> -			pr_warn("%s: GPU throttled with reasons 0x%08x\n",
> -				engine->name, throttle & GT0_PERF_LIMIT_REASONS_MASK);
> +			if (throttle)
> +				pr_warn("%s: GPU throttled with reasons 0x%08x\n",
> +					engine->name, throttle);
>   			show_pstate_limits(rps);
>   		}
>   
> @@ -1138,6 +1141,7 @@ int live_rps_power(void *arg)
>   	struct intel_engine_cs *engine;
>   	enum intel_engine_id id;
>   	struct igt_spinner spin;
> +	u32 throttle;
>   	int err = 0;
>   
>   	/*
> @@ -1195,6 +1199,10 @@ int live_rps_power(void *arg)
>   		max.freq = rps->max_freq;
>   		max.power = measure_power_at(rps, &max.freq);
>   
> +		throttle = intel_uncore_read(gt->uncore,
> +					     intel_gt_perf_limit_reasons_reg(gt));
> +		throttle &= GT0_PERF_LIMIT_REASONS_MASK;
> +
>   		min.freq = rps->min_freq;
>   		min.power = measure_power_at(rps, &min.freq);
>   
> @@ -1210,12 +1218,21 @@ int live_rps_power(void *arg)
>   			pr_notice("Could not control frequency, ran at [%d:%uMHz, %d:%uMhz]\n",
>   				  min.freq, intel_gpu_freq(rps, min.freq),
>   				  max.freq, intel_gpu_freq(rps, max.freq));
> +
> +			if (throttle)
> +				pr_warn("%s: GPU throttled with reasons 0x%08x\n",
> +					engine->name, throttle);
>   			continue;
>   		}
>   
>   		if (11 * min.power > 10 * max.power) {
>   			pr_err("%s: did not conserve power when setting lower frequency!\n",
>   			       engine->name);
> +
> +			if (throttle)
> +				pr_warn("%s: GPU throttled with reasons 0x%08x\n",
> +					engine->name, throttle);
> +
>   			err = -EINVAL;
>   			break;
>   		}
> @@ -1241,6 +1258,7 @@ int live_rps_dynamic(void *arg)
>   	struct intel_engine_cs *engine;
>   	enum intel_engine_id id;
>   	struct igt_spinner spin;
> +	u32 throttle;
>   	int err = 0;
>   
>   	/*
> @@ -1293,6 +1311,10 @@ int live_rps_dynamic(void *arg)
>   		max.freq = wait_for_freq(rps, rps->max_freq, 500);
>   		max.dt = ktime_sub(ktime_get(), max.dt);
>   
> +		throttle = intel_uncore_read(gt->uncore,
> +					     intel_gt_perf_limit_reasons_reg(gt));
> +		throttle &= GT0_PERF_LIMIT_REASONS_MASK;
> +
>   		igt_spinner_end(&spin);
>   
>   		min.dt = ktime_get();
> @@ -1308,6 +1330,11 @@ int live_rps_dynamic(void *arg)
>   		if (min.freq >= max.freq) {
>   			pr_err("%s: dynamic reclocking of spinner failed\n!",
>   			       engine->name);
> +
> +			if (throttle)
> +				pr_warn("%s: GPU throttled with reasons 0x%08x\n",
> +					engine->name, throttle);
> +
>   			err = -EINVAL;
>   		}
>   
