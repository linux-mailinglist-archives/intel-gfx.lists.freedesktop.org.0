Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id Zx07MY8n/GmIMAAAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Thu, 07 May 2026 07:47:59 +0200
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 1BEF04E3361
	for <lists+intel-gfx@lfdr.de>; Thu, 07 May 2026 07:47:59 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id B329910E16D;
	Thu,  7 May 2026 05:47:56 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="cijhMvTL";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.10])
 by gabe.freedesktop.org (Postfix) with ESMTPS id A831910E02C;
 Thu,  7 May 2026 05:47:55 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1778132876; x=1809668876;
 h=message-id:date:subject:to:cc:references:from:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=Py3ZShJ7GJW/AHuwK35S2dgEGRTq93h2Vn/MyfClBXw=;
 b=cijhMvTLu0C0WuGkTeB7y4AiKepiekdgXo3bcRSrQLRM/BwoEeIqmg6E
 M7MHl/fJOQTX7/TSg/kGM2acVKQ5VWY3DaJ3rUsuJmHKXN3Lt+vwrGZTj
 OJC6yQV4P0A1dQjxKsIhb0IveSuDOZsdc/71Ons3hQ5UIWeFZyXc8W2Pd
 End5W+hucgQfnGS/VyL9w0b75/3aDRFwcuWaPP2cSe/T82c4SnpmBIouY
 qwvXNesdJQDQyOGeBXvLToZagwAW6lVW9VWOdoUnXoRKphacCGugVcAXx
 LkEptWpNff7T898Gz+ZSqiqaM9xs44yT+lzSQXphivBQ/gPw1ZhrxN20v A==;
X-CSE-ConnectionGUID: KmBFlkLnSrqrZRv2Koyr/Q==
X-CSE-MsgGUID: WnSSbBsrRTuGC9r8kBZ32Q==
X-IronPort-AV: E=McAfee;i="6800,10657,11778"; a="90451163"
X-IronPort-AV: E=Sophos;i="6.23,220,1770624000"; d="scan'208";a="90451163"
Received: from fmviesa009.fm.intel.com ([10.60.135.149])
 by fmvoesa104.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 06 May 2026 22:47:48 -0700
X-CSE-ConnectionGUID: PdOxscwXSYK3y0kQjZ4E8Q==
X-CSE-MsgGUID: Yd4SlIWZSDCwgew6zgeFSw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.23,220,1770624000"; d="scan'208";a="229972949"
Received: from fmsmsx901.amr.corp.intel.com ([10.18.126.90])
 by fmviesa009.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 06 May 2026 22:47:47 -0700
Received: from FMSMSX903.amr.corp.intel.com (10.18.126.92) by
 fmsmsx901.amr.corp.intel.com (10.18.126.90) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37; Wed, 6 May 2026 22:47:47 -0700
Received: from fmsedg903.ED.cps.intel.com (10.1.192.145) by
 FMSMSX903.amr.corp.intel.com (10.18.126.92) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37 via Frontend Transport; Wed, 6 May 2026 22:47:47 -0700
Received: from DM1PR04CU001.outbound.protection.outlook.com (52.101.61.7) by
 edgegateway.intel.com (192.55.55.83) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37; Wed, 6 May 2026 22:47:46 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=GoRlJbJpnIi7QrFn+MQfiL6100gnhR1MRIeLdyhrEGcTWKHSVVRP9lNqve5n2rqa/i1FSUv1JF0lfXCVm2FDd0vKsHM/RF/RYZfTU0u7IEXCN3RulzieJMqetF834gWhXwdkCioQtyJzNAwNEZmBHfpdoi9gsRXqYTIX0Jc2XJLLIzc8Dd7YBHaEyovOqF30Hyto3fUx8uCp6RvbNHQQBNsxGFwzNaJ2ivVInqNmF6etgxonu/TbR+vfD+PkDLadrGVUN8gLKMCPUzIO72UUSseyWCGTysIcE4DsS8ciKWHL3siNWlOwIzNi7tFWuBbx+ZqyMIJRb6JbXuc9ga/TnQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=aKGYkcznR4+o7YmSU9ZR5Wuzxyni9mifJ6r0AOHYo30=;
 b=QgLSl92Yi4sja+Pc/VzpJ/g4hq7Tyjmhb3xFmQEpsz/nQ72yPs/k3J5p2SPdrHW0vGWG/OVEqUCvrTE6eOUaMq7MZbd9m8zdXPz9juiCQTWzSQDm5lIGEEgaOAfGZUBlUrgVa/02FaoDuUA559dXIVzJboE1yHFY1euNWSSyL72dnC92IsIm5oNoOsUh0Zb7vlFKan56j/R7uhmvnGX+m7Asjr+O/t8IaUwZGROJphgoJYUVs2V9v/7RXFHLuCj1n1NNL6tWj6ENSTxa4FdvVmBBdZkzntn08VHyaINiKt586sDmJBj+dH71nanai72udtP73pxpvRY0nJ4sfIWHaQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from DM4PR11MB7183.namprd11.prod.outlook.com (2603:10b6:8:111::10)
 by SA2PR11MB4939.namprd11.prod.outlook.com (2603:10b6:806:115::9) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9891.15; Thu, 7 May
 2026 05:47:44 +0000
Received: from DM4PR11MB7183.namprd11.prod.outlook.com
 ([fe80::d9c7:d2fb:680d:1ee1]) by DM4PR11MB7183.namprd11.prod.outlook.com
 ([fe80::d9c7:d2fb:680d:1ee1%5]) with mapi id 15.20.9891.015; Thu, 7 May 2026
 05:47:44 +0000
Message-ID: <c4c2cdc4-93bd-4777-9780-4e8a5774cc34@intel.com>
Date: Thu, 7 May 2026 11:17:36 +0530
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH] drm/i915/display: Use rmw in gen9_write_dc_state() to
 preserve non-DC bits
To: <imre.deak@intel.com>
CC: <intel-gfx@lists.freedesktop.org>, <intel-xe@lists.freedesktop.org>,
 <ankit.k.nautiyal@intel.com>, <uma.shankar@intel.com>
References: <20260506130321.487414-1-dibin.moolakadan.subrahmanian@intel.com>
 <aftDhh2hsfvW_kD5@ideak-desk.lan>
Content-Language: en-US
From: Dibin Moolakadan Subrahmanian <dibin.moolakadan.subrahmanian@intel.com>
In-Reply-To: <aftDhh2hsfvW_kD5@ideak-desk.lan>
Content-Type: text/plain; charset="UTF-8"; format=flowed
Content-Transfer-Encoding: 7bit
X-ClientProxiedBy: MA0PR01CA0049.INDPRD01.PROD.OUTLOOK.COM
 (2603:1096:a01:ac::10) To DM4PR11MB7183.namprd11.prod.outlook.com
 (2603:10b6:8:111::10)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: DM4PR11MB7183:EE_|SA2PR11MB4939:EE_
X-MS-Office365-Filtering-Correlation-Id: 928b9300-6ce2-4f1c-fa03-08deabfc291e
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
 ARA:13230040|376014|1800799024|366016|18002099003|22082099003|56012099003; 
X-Microsoft-Antispam-Message-Info: shQmyXQOWiPM0nuVV1p1/wCQaq8vzJBfiwls+ylkj6T4+/uzbRageSyeRaeFGAqRrHvtbfkVeycLRTI7hqQPlaEAw4JYQSFcJxz0qgzTCR6GEwBwVLMkTJmLhNuaZ301KWqU+DO7i2/knNLwIt7sMG32uwpqVCzX28N5+hWuD9lR9D+sOBLZqUfx/Yfe/wiQhf/rzn8Pzr8mLIIvJvAzcsxISsQKYGwbxLzp0E04DSsn+DXwBukSDyDFI+/qwhtmBjIofANO986e3ADn6/X/4EK4zOudq4z59f18bnhhshgwOrD6NPudlmufrkxyruovKFoF+sg4SMhaY7Rs4NbHpxIiPnBuhBltRNzyHsrnLy2ESqn4NYScSlkBREtQG30dR/e0b+z2Dq7YG7oULeiIkHdyO3n86rZ7KIe8YDiCaI8Q81NQ0Y4cHXySNGLcMxtEmAsWBZUwolyPJx/rLV88ExPVEqc3FmSRGe7JQ92VeJlc/oNoy+CfZqGhGmjDSJcYJxYXIMIzBZK7A9YMN5ufRL4WtnhqXFuwMxTaVRu6izLr/W0Kty5lnpr2E+bUTBwINaj9KRyDkHm89H/dvqc9W3OxcHm5P1H+QYMGCq/R+EF7dn5Ap0qPQLlfhG+kLq9rgbV/u+6dEyix1mdfyrpb4RfMtzlieQQn+r4UTqpna/l0qihCvKVB2JHqUOGYIJl8
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM4PR11MB7183.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(376014)(1800799024)(366016)(18002099003)(22082099003)(56012099003);
 DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?VHRsbGI3UDdVRmlKVW5icjZ1dk5DNW9JSmZYUllacFJtNEZxL0pqQVBSZXVD?=
 =?utf-8?B?V0R3R0JxaW9wbmVkd2lPY1lmTDYzRFBIS20yRk9tVXQ4ekdvbmFGVmFxL1py?=
 =?utf-8?B?dmhiL2dSbTFLcm5ZN3BzUVUzV0haVHhVNEh1eGpobTVZR2N0N003NkVGOG05?=
 =?utf-8?B?bHk0dVd4N2Y1alZUVmVPNGtLdFBSeFFWdzFKTVFiaW1veU5SY1FXeHpNYzhS?=
 =?utf-8?B?TVNUMHhOZGo0WVI0LzNMM0FzM2VZSzV0MTdQNTJ3SDlQRUxRMkRodkd4cDU3?=
 =?utf-8?B?ZE5oOG1QT2tub01FVTU1OEs2QzJGL3c5em45RGZiTTRRVEdLa3Y4TzJIUEFR?=
 =?utf-8?B?ZG1sbkE4RUxZNE1lQzRVNDlFZHRXYWdUUEI5NWxGS1IvQ1hGa2FiTDhhb2lD?=
 =?utf-8?B?dkNJOUxLT3RXc0RxckJXeXFoSVhkaElPUHhSbWhOb1NKZ0tHOFIrNlpiODhJ?=
 =?utf-8?B?T1I1MUF6MTVXcGRuczcxc0RQOTRJOFpNOXhvZEU4L1dJV1VCVFluRVlvajUz?=
 =?utf-8?B?bElDdlIyS2VSTXREa3pwblc3c29BM3locjV3dElqYVhCYkcyZjNrWFY2YkJm?=
 =?utf-8?B?QzdFcXl3Y0ZnWFRGREZ4QndUOFlWN2N3ODNpejgrZlNQK1ZaWmE5eUllaU9n?=
 =?utf-8?B?MWhqOFR0OUh2elQ2U2hYUGFoSHh3bmd3dUVRYmw3L0JIdk5iRUFHdU1iZW5a?=
 =?utf-8?B?eVVKZWpzcEI3YUpPT3FKVWs4V0pZNkh1aDRXSkluYUF1aTNlaUU5ejdaSFRL?=
 =?utf-8?B?T1lwcDZBNTQxVU9HSUxieExWV3NmOTY3ZUtHdkN5b1lyVW5LeXNWamtQQ3lv?=
 =?utf-8?B?RW5wa0xLOEx3RElQbFZlaWwycnAzdXp3UkVDbzhEajhJSUlxMmNQV1VEcTV2?=
 =?utf-8?B?MHVTN0FqRDl5ZlFHcWlXbkZ4WGUxbGtZSjMrdThoYkJxeHd2b3dDWEtPYjNo?=
 =?utf-8?B?QW8wYmxYU3lCd2czT2pSVjczUDZGSHZoM0NXdzVCaUcyYzZMNlVRak5jNm92?=
 =?utf-8?B?QWI3a29uZE9HWFpFUDhqb053S2lEUzQ1ZldHclNZdEZiSzdzTmZrWlpGWmMr?=
 =?utf-8?B?MEdiQlpxb1EvbHBxYVREY3VVS0YzOHJhMkFJeVlCSFF1ZEFGS1RhRXFabzBj?=
 =?utf-8?B?RGlBVThDMEFpRUt2MUJGNGFDajZaNVZrTEFmbGNJRzhKeEI3elRBTDBvM0tW?=
 =?utf-8?B?dlhjS3lFQkYxUlIzWnEyQzJSSmZ6YndBbmVXNGtUdzFFRGhzTXQ1eVViMG42?=
 =?utf-8?B?U3hFamNYaGtWODFxc3hEc1dlWmhCNm1iZTNWbEdDUzBXcG93bXZxa2ZPdGo3?=
 =?utf-8?B?R3hZbzduS3VneVJsZGwzRGVUR0pCQkorWWV1VnhKNm02QmhZRWhxYkhoeGVG?=
 =?utf-8?B?SWFyQ0lkOWtDK216SUFiZE1abjZmeWEvQ2EremdmczkyRDN5c3Vja3FDWTh3?=
 =?utf-8?B?NFJvQW5NTCtBMjd5bkU2UnhFaGROWnhzc2R5N1ZBRWNxWVBhbVQ0OHpXSGI5?=
 =?utf-8?B?VnpvT1ZJM0NFekIyZEJkSks1MmpjRzBpRXRQUEpXS0o2MFBNQmNMZ0UyUElz?=
 =?utf-8?B?a21iMTlUTEIwZW1EcGNmTmdKZDlWeW10TFVsSlUrMyt4SGZlQVMxMDgvdEhK?=
 =?utf-8?B?Z3NTNTJsWWJ3T3cvRXJJRjJiTFZIL21RNXFnWGtxQTl5UUxGRlN6YWllVURD?=
 =?utf-8?B?ay9SV0JlNmJuZUVqVCtLWURkeGxvUGtsWmp6aG50dlVrbHBJRHRUQlBrZ2dq?=
 =?utf-8?B?LzdjU0VKMXNGTmJxd3ozZXZsb0tHYzFSdDZSZXlJTHVNUkN6QndjaVBUODFn?=
 =?utf-8?B?aDNKMEhyUWkrZHk0Z1l5bnhkWkpRTDBQTmViWjFxNUp2R2drWGMvZ1EzVlp0?=
 =?utf-8?B?TmdYaEpiQkNpU1dRYVFFR09rSHhHL29LWWdBWVNHNUkwb1lpWWZjVXpmaDVl?=
 =?utf-8?B?ZUR2WEpFK0JFREcyOGNXTk8ybGZ2TDlEWGtmcG5vMGRJVVgzWldqRkZZUTVu?=
 =?utf-8?B?bTJyN2E5Y3B6NGRPQUJ6SEhveGROSFJRM2diQ0ZmT1AwWjdXTnZQQ3UxbUQ1?=
 =?utf-8?B?aHJGQ29LOFpCbjJOUEp6Y2RPRXhkQlo5aXB4Rm1WQ1NKK0JUTkU2SUpLN0RR?=
 =?utf-8?B?d3Fnd1I3c2R6d2g1Y0o2Sm13eFI4T1NBRCs5VnVPbU14Zk82djZLNENRd2I2?=
 =?utf-8?B?K3E0b056WXNVVGQ2NUpGSTBPQks1aHpKbGZWdmc4VmJmYnk0UzdFYWRYcHhr?=
 =?utf-8?B?b3R3ZUdVVlZacXpJUnBqSXE1Nk1DTkZqU280dXNBdmVyd2loT2M3emRVWmpt?=
 =?utf-8?B?OXJiaWVhZ3c2TEdleXhDOG9yL1oyYmNXQ1d1eHROaUtidXQ1TWdkbTk2QjlQ?=
 =?utf-8?Q?x8WnxedTWLtZ/Z8I3/cn6RNuAQZOqBYVFDRAn?=
X-Exchange-RoutingPolicyChecked: K6gm/7AmmlCUDirq0QbqS2QzMOlJiHDbm6NGvBjUCtCXdeCv8T2UMFHG3PYx4MPZjz/Gbz2Wsyo6gKl5TZopHzbEg8VOeXtTuX4J92n8sSYyAgW8CTTn4DwYfq62qHSHTcc1Ue3SZcBCMsT+0Wudhv1d0+its7mMWGjPvDho2sYOO9WKklmdX4io0cQ4Me+U8jX+Iry+dJJLwBPOnMNRAKvVWAKw2fI/5JOWB+JK+GLCxVZMuJIMh7DcYP+kfFqI6NhBfS8eFksqqfMobQz0tv81rz2BFWEtTcZiv6LhDfvo1y2nhKzel7M36/Xi+9N3QWdG4TXEgnkLcQBWChUREg==
X-MS-Exchange-CrossTenant-Network-Message-Id: 928b9300-6ce2-4f1c-fa03-08deabfc291e
X-MS-Exchange-CrossTenant-AuthSource: DM4PR11MB7183.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 07 May 2026 05:47:44.7112 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: 70oalkGz1lOafLzYPPi5zIOyE5lJ2exH1rN0RjsMzcV6NNU+114NyiIf5AIhaMqJFxLfV2FMxS5/DauXJlfKq4i1pzwzLVo3kgapfZUAphNoTIOdOsvQ9Jyz0kAECAHG
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SA2PR11MB4939
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
X-Rspamd-Queue-Id: 1BEF04E3361
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-0.31 / 15.00];
	ARC_REJECT(1.00)[signature check failed: fail, {[1] = sig:microsoft.com:reject}];
	DMARC_POLICY_ALLOW(-0.50)[intel.com,none];
	R_SPF_ALLOW(-0.20)[+ip4:131.252.210.177];
	MAILLIST(-0.20)[mailman];
	R_DKIM_ALLOW(-0.20)[intel.com:s=Intel];
	MIME_GOOD(-0.10)[text/plain];
	RWL_MAILSPIKE_GOOD(-0.10)[131.252.210.177:from];
	HAS_LIST_UNSUB(-0.01)[];
	ASN(0.00)[asn:6366, ipnet:131.252.0.0/16, country:US];
	TAGGED_RCPT(0.00)[intel-gfx];
	DBL_BLOCKED_OPENRESOLVER(0.00)[intel.com:email,intel.com:mid,intel.com:dkim,gabe.freedesktop.org:helo,gabe.freedesktop.org:rdns];
	FORGED_SENDER_MAILLIST(0.00)[];
	MIME_TRACE(0.00)[0:+];
	MID_RHS_MATCH_FROM(0.00)[];
	RCVD_COUNT_SEVEN(0.00)[9];
	RCPT_COUNT_FIVE(0.00)[5];
	FROM_NEQ_ENVFROM(0.00)[dibin.moolakadan.subrahmanian@intel.com,intel-gfx-bounces@lists.freedesktop.org];
	FROM_HAS_DN(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	TO_DN_NONE(0.00)[];
	DKIM_TRACE(0.00)[intel.com:+]
X-Rspamd-Action: no action


On 06-05-2026 19:05, Imre Deak wrote:
> On Wed, May 06, 2026 at 06:33:21PM +0530, Dibin Moolakadan Subrahmanian wrote:
>> gen9_write_dc_state() verifies DC_STATE_EN by reading it back, but it
>> was comparing the full register value instead of only the DC state bits.
>> That could trigger false failure messages and unnecessary retries when
>> unrelated bits differed.
>>
>> Use intel_de_rmw() to update only the DC state bits and compare only
>> the masked DC state bits in the read-back check and retry logic.
>>
>> BSpec: 49437,69115
>> Signed-off-by: Dibin Moolakadan Subrahmanian <dibin.moolakadan.subrahmanian@intel.com>
>> ---
>>   .../i915/display/intel_display_power_well.c   | 21 ++++++++-----------
>>   1 file changed, 9 insertions(+), 12 deletions(-)
>>
>> diff --git a/drivers/gpu/drm/i915/display/intel_display_power_well.c b/drivers/gpu/drm/i915/display/intel_display_power_well.c
>> index 6fbfd46461b0..75471898e323 100644
>> --- a/drivers/gpu/drm/i915/display/intel_display_power_well.c
>> +++ b/drivers/gpu/drm/i915/display/intel_display_power_well.c
>> @@ -727,13 +727,13 @@ static void assert_can_disable_dc9(struct intel_display *display)
>>   }
>>   
>>   static void gen9_write_dc_state(struct intel_display *display,
>> -				u32 state)
>> +				u32 state, u32 mask)
>>   {
>>   	int rewrites = 0;
>>   	int rereads = 0;
>>   	u32 v;
>>   
>> -	intel_de_write(display, DC_STATE_EN, state);
>> +	intel_de_rmw(display, DC_STATE_EN, mask, state);
> There is no need to change this to an RMW, since gen9_set_dc_state()
> computed the state passed to this function by the equivalent
>
> (intel_de_read(display, DC_STATE_EN) & ~mask) | state
>
>>   
>>   	/* It has been observed that disabling the dc6 state sometimes
>>   	 * doesn't stick and dmc keeps returning old value. Make sure
>> @@ -742,9 +742,8 @@ static void gen9_write_dc_state(struct intel_display *display,
>>   	 */
>>   	do  {
>>   		v = intel_de_read(display, DC_STATE_EN);
>> -
>> -		if (v != state) {
>> -			intel_de_write(display, DC_STATE_EN, state);
>> +		if ((v & mask) != (state & mask)) {
>> +			intel_de_rmw(display, DC_STATE_EN, mask, state);
>
> Could you provide the flags in the register causing an unexpected
> mismatch? I can only see bits that should preserve their state as
> written by the driver. The register has also some clear-on-write flags,
> like 'Display DC*CO State Status DSI', but not sure how even those can
> lead to a mismatch.
>
Thanks for the review.
I can see some RO bits status getting changed while read back.
In one case, I can see register read back value as 0x400 while
writing DC state 0.
In this case I can see DC state is 0,but other bit have changed.

>>   			rewrites++;
>>   			rereads = 0;
>>   		} else if (rereads++ > 5) {
>> @@ -753,16 +752,16 @@ static void gen9_write_dc_state(struct intel_display *display,
>>   
>>   	} while (rewrites < 100);
>>   
>> -	if (v != state)
>> +	if ((v & mask) != (state & mask))
>>   		drm_err(display->drm,
>>   			"Writing dc state to 0x%x failed, now 0x%x\n",
>> -			state, v);
>> +			state & mask, v & mask);
>>   
>>   	/* Most of the times we need one retry, avoid spam */
>>   	if (rewrites > 1)
>>   		drm_dbg_kms(display->drm,
>>   			    "Rewrote dc state to 0x%x %d times\n",
>> -			    state, rewrites);
>> +			    state & mask, rewrites);
>>   }
>>   
>>   static u32 gen9_dc_mask(struct intel_display *display)
>> @@ -855,15 +854,13 @@ void gen9_set_dc_state(struct intel_display *display, u32 state)
>>   	if (!dc6_was_enabled && enable_dc6)
>>   		intel_dmc_update_dc6_allowed_count(display, true);
>>   
>> -	val &= ~mask;
>> -	val |= state;
>>   
>> -	gen9_write_dc_state(display, val);
>> +	gen9_write_dc_state(display, state, mask);
>>   
>>   	if (!enable_dc6 && dc6_was_enabled)
>>   		intel_dmc_update_dc6_allowed_count(display, false);
>>   
>> -	power_domains->dc_state = val & mask;
>> +	power_domains->dc_state = state & mask;
>>   }
>>   
>>   static void tgl_enable_dc3co(struct intel_display *display)
>> -- 
>> 2.43.0
>>
