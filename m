Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 7BE21A97F94
	for <lists+intel-gfx@lfdr.de>; Wed, 23 Apr 2025 08:50:12 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 805E310E074;
	Wed, 23 Apr 2025 06:50:10 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="GvGOwe8q";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.17])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 8621A10E64E;
 Wed, 23 Apr 2025 06:50:07 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1745391008; x=1776927008;
 h=message-id:date:subject:to:cc:references:from:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=qyGc54fI+5bGsjxo8PolU3pLME50EnIe/4aH4GX5OHs=;
 b=GvGOwe8q9ssNzVLiAc19+gFHbzqSpg9BHrxVRHJYdqOHZHaP3TDlJRqf
 xb5IjzOrZRusk9Y3ygn9G3lefA3Wkn/R7yfS69HbGnwmbFmM9XNcasI18
 QCP2HkBMZ6aRcGjMkhsyo0+Ikg1MZb7cvzYdZ/SO//P0aksfXtfWPcZmn
 woEu7RCIM7ySqmDQtvxDjYOuzZJUr6qoZgOGurn0pDox73zQ8DRNV58vh
 JN1k8ygnMVrNfHlzM0unr2n9rrXW84iqP0RxaJYZfAE+gtYMOos10lnNZ
 PfdRD8KdB+SEGGyGJHj0Ca9XEVcA5tjlDylWT7hDWEF+WIXxbGnUbBxF4 Q==;
X-CSE-ConnectionGUID: 9iyOOEPdT2Cd8LVTpC8GQQ==
X-CSE-MsgGUID: g4YdIY/tTGajvT7BHGxV/g==
X-IronPort-AV: E=McAfee;i="6700,10204,11411"; a="46846811"
X-IronPort-AV: E=Sophos;i="6.15,233,1739865600"; d="scan'208";a="46846811"
Received: from orviesa001.jf.intel.com ([10.64.159.141])
 by fmvoesa111.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 22 Apr 2025 23:50:07 -0700
X-CSE-ConnectionGUID: R77bHZOTRcaZLUDngYBrig==
X-CSE-MsgGUID: WklbyHYfRPGkrinTih6tZA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.15,233,1739865600"; d="scan'208";a="169432493"
Received: from orsmsx903.amr.corp.intel.com ([10.22.229.25])
 by orviesa001.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 22 Apr 2025 23:50:07 -0700
Received: from ORSMSX902.amr.corp.intel.com (10.22.229.24) by
 ORSMSX903.amr.corp.intel.com (10.22.229.25) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1544.14; Tue, 22 Apr 2025 23:50:06 -0700
Received: from orsedg603.ED.cps.intel.com (10.7.248.4) by
 ORSMSX902.amr.corp.intel.com (10.22.229.24) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1544.14 via Frontend Transport; Tue, 22 Apr 2025 23:50:06 -0700
Received: from NAM10-BN7-obe.outbound.protection.outlook.com (104.47.70.46) by
 edgegateway.intel.com (134.134.137.100) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.44; Tue, 22 Apr 2025 23:50:06 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=bARvYcbUyMMnGGrwipRPgA84krh1KaycipcL9GRSca7OK3ntlwslhx363wF4vWwuT/R+iTERN3vibnRRjP9b6AeOlFGOnrYrALLA1uctj5Oz22aG83QvxrO8SIxYNsy/WLSpUu1WNJZBrSfN5+iYhVXUacMrcCKE+pZZchpwIhMD68MfNLAVjwzuLVxfqdpp3A9pm9o+jL+3Bl3O2ACQfdv4XmqdPh3VDH2nNfARBHwzKTxpVuz+txr2xvzxPCHo9B4p/0ktU2PxvVZzKpRD007YY5f156M+so+OLboOdx0XPfGmWhjYG0osZUquJTOhkii+Jd5wZD5WDX5q5fGKeQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=KuP5RFDCdy+VLvQ8DXuslMmFjB8Ui9L7r1/dkyagln0=;
 b=gQO7PyqWdd82yhZ8ChPAenDSlPMGAFwcqkY77iQdFfrRAvqxIvbL6ZOTjf5rIHXbewYPtorrU0drbKCllQGTEzp9PoJ1HkeoFGLmDQzPQon9KKISESr+Vp4IDcsd2CH55B/v4WswkrHgthSUXpANS4yDX9ojJz5bIHMa5+rOgDjuGmTw77dk51NMUGjgwvsgIY9OEYT30UFIKOxUW1Dn0H68IepJLLQAgRkahiEJ9aTxN8XQ+uFiZrWUCVq48c+hJr3sB73uf1SC+Lb2vY6eapCJXPSNDra0Hujm8tzJIUdN8sLooeyhME8coOgZ/2A09Lh4bcuV+nLtPYIWMvxFLw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from DM4PR11MB5341.namprd11.prod.outlook.com (2603:10b6:5:390::22)
 by IA0PR11MB7353.namprd11.prod.outlook.com (2603:10b6:208:435::14) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.8655.35; Wed, 23 Apr
 2025 06:49:17 +0000
Received: from DM4PR11MB5341.namprd11.prod.outlook.com
 ([fe80::397:7566:d626:e839]) by DM4PR11MB5341.namprd11.prod.outlook.com
 ([fe80::397:7566:d626:e839%5]) with mapi id 15.20.8678.021; Wed, 23 Apr 2025
 06:49:17 +0000
Message-ID: <54386c10-0c3e-4f5a-9fb7-ca8764dc0602@intel.com>
Date: Wed, 23 Apr 2025 12:19:10 +0530
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v2 01/13] drm/i915/vrr: Refactor vmin/vmax stuff
To: Mitul Golani <mitulkumar.ajitkumar.golani@intel.com>,
 <intel-gfx@lists.freedesktop.org>, <intel-xe@lists.freedesktop.org>
CC: <ville.syrjala@linux.intel.com>
References: <20250421154900.2095202-1-mitulkumar.ajitkumar.golani@intel.com>
 <20250421154900.2095202-2-mitulkumar.ajitkumar.golani@intel.com>
Content-Language: en-US
From: "Nautiyal, Ankit K" <ankit.k.nautiyal@intel.com>
In-Reply-To: <20250421154900.2095202-2-mitulkumar.ajitkumar.golani@intel.com>
Content-Type: text/plain; charset="UTF-8"; format=flowed
Content-Transfer-Encoding: 8bit
X-ClientProxiedBy: MA1P287CA0023.INDP287.PROD.OUTLOOK.COM
 (2603:1096:a00:35::28) To DM4PR11MB5341.namprd11.prod.outlook.com
 (2603:10b6:5:390::22)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: DM4PR11MB5341:EE_|IA0PR11MB7353:EE_
X-MS-Office365-Filtering-Correlation-Id: e3531f89-b4bf-46bd-ea64-08dd8232f79e
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|376014|1800799024|366016;
X-Microsoft-Antispam-Message-Info: =?utf-8?B?WUNJRjNZZ3BuM2xzZWN0MDZ1T2F0azlldTU4K3Q0Vi9QUUFKb1FQN2Iwa2Zm?=
 =?utf-8?B?ZXJaVFp4UDFKQWQxTmk2N2MyVDJQeGluUlh2cUFUb2wvNnZ0ZDZpYVdoMjVB?=
 =?utf-8?B?RDVmTDE2NUpLbWVjMHp3cTcwUTBCbHJQWjRsSnVQUlhRZTVVVjd4K01rNjhC?=
 =?utf-8?B?b1hzdzJMMjZSbkl4QkJXOGNPMEJKQmlmRTFkOU1laFlBeXoyMTF3Z0dGc2FB?=
 =?utf-8?B?UWo2QVJtYTRrTHRTYmhmbXdndkdRand1aXM2U01DcmFaV0FPL1hLUzk5L2hZ?=
 =?utf-8?B?dU9aL3VmYTdIZTNJV0JtTFJmL3NlMHByUUFPSURnUGFKdGZqMGs2R2IzOCtB?=
 =?utf-8?B?UDhBTE9Ed1llMjRVWUpwVERORUJ6SVpTdlNUWm9KZGpDa3RNbkhFM1FiZHRk?=
 =?utf-8?B?bmM2NVYrZzQ3VU1xUTY1RWpBTFRUSXFwTG5YNDlpR2FvWkxJMzJUT0IyTDQz?=
 =?utf-8?B?bzFmUEYvZG9xYmpDVExWMVc4SjFmaWRqbDN6YkdRMmdnVzdreFhXL0dEZ1U2?=
 =?utf-8?B?VzZPRVhkWTE3aDhDb1JMWUVQVHkxbUhWemFMam56bUhjMGtyWkhmYkNvcUF0?=
 =?utf-8?B?OVJERGdpazVTZVNKUmJKTlk4Y3hTeTJYT2p1WXFEeTlVNldDNDdsak5yNVpq?=
 =?utf-8?B?eURrMU42cG9lakpWc0xBVExyNHdjcmNqUzQvNFpSVjNOT3Z2MmYxb3VaNStS?=
 =?utf-8?B?NXNzcDI4cWdTWk0vdHJsSEovR0xuVkUrdkJ2dmZ6bFh4Si9JVXowZGptYkho?=
 =?utf-8?B?NXhBd05KUCtSbFFRbFR1S3ZZeTI0dkViYWpROXBFMXRLek1ReHpoWUJxN2kw?=
 =?utf-8?B?cXRVVU1YNEwrSWRWVDI1UDlVaFcwZkdCbmh0RmE4UFVQVU1kaEFKL3doN2ha?=
 =?utf-8?B?ODQxaklrbjEzdXFuYmkvNlhXRVRscnNBdDNIaGUxa2FRaFVSK1ZHT2hUMzEx?=
 =?utf-8?B?WnNEWUVGQUZiZDVnOSt6b0dIQXZYVFIxRzUrMGJTbmhCTXdrdGROSFh5Qndk?=
 =?utf-8?B?OUxXUkR4eFFxaEgzV0FaTzBCVzBiK0Nvd2pxTmNrSzk4dUgyRVp0M2twRm9Y?=
 =?utf-8?B?NForWDJvY1BKZE0vTHFyWjdKcEoxdkVUUndnWm0xM3hwZ04rUmNBdlJUK3JD?=
 =?utf-8?B?Z0UvODBqSXhvcm9LdmsrYlBnK2hUOFNWMTZSdDU1cWx3KzNpbUd5Yit2YnYv?=
 =?utf-8?B?aFFkTXNlZm1IUG9WNWc3V1ZyeHVJSUpJOWdLVnkzRVMwWnFaaDdrcnU1Zlgy?=
 =?utf-8?B?bE0zeHFYbEEyYXdyRXRURlJtU00xMlFreUVldmdkeUFQTlFiaDFER0RPb2ZZ?=
 =?utf-8?B?UWEvZjdvNC9nMDBEdFJZRDhBWEFKYmo4b2czNE9ITlA3V0JzRkIxcXFWV1dy?=
 =?utf-8?B?SWl4SFlXREk4NWVPN3hWa1RmdVExNXVsRU5ON1FpR2h1QWJLYW56UEFiZmVm?=
 =?utf-8?B?VVQ4bjVYcEQ2YkJkNVNpTTVoZ2swWlJvMWdtUEkrR1l4bklTejFVZ0dkS3pl?=
 =?utf-8?B?dHk3Z0dqajZuVlFRenAzWmdNdHZLejBVODNnakNxRStCaVU4ODBNcm1ERTU4?=
 =?utf-8?B?bkhJYUNvNy9HTWNZY1pnS0VQbWcxYkhGaHMveGk3ay9zMGorb0FCZWRxRDRN?=
 =?utf-8?B?ZHdaaDJ2d3FKQjBGYmwrOXJIUkVDcjBiTzBJQ2JSbFFsOEVBeG9IOHd5TmdG?=
 =?utf-8?B?ZU9rek1yY013VjRvYmlKT2dhM21vUEhEQm5nU1ZUZlZ6MWU0aG53UGtMeEVM?=
 =?utf-8?B?eG55ZzVjalZleEtKa0dHeTJPbDd2NWdmQ1lXbWE3YUR2VUh5QXE0dWI3bk5N?=
 =?utf-8?B?RkRyTjNwejJzZUhHNFZOVkpVVm5oREQvQldTTGNzUHQrR2p2dmFWTkVJa3hU?=
 =?utf-8?B?b01oOU9RamVNSkg4RUJwVUhkb0owbXViYzVBMmtUc0dsQ3VUdzlOUG5LQmUz?=
 =?utf-8?Q?zDALES8dl1o=3D?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM4PR11MB5341.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(376014)(1800799024)(366016); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?MDNmdkFBbks5bFIwVzhYRmd3TWlnTGJDK3l2dnkyMzJLKy9BOStZRklobyto?=
 =?utf-8?B?WkQ4ZVRVL0tMbk92czB0V2xOOExoSXZvY0NvTm5UbkVnTnVqTGI3NWcrZ2hS?=
 =?utf-8?B?M2hLMVdHNml5bVBpYktJazZpV1pONmJVZlZXUWFhM3YwdXB0VlBGSFFDWW8v?=
 =?utf-8?B?SnVSeDBpVCsvT0JVb0RrNXYvLzZnQ3R5VVNSWnMyUTlLOTV1WVRQT2VqSEpX?=
 =?utf-8?B?ZDlkVlYvQWNMNVcvbUJCWkVXR25EMGNxQlBOM0lBT0R1L2RkeU0wNWRXejZT?=
 =?utf-8?B?aDFVNXUydG9oVEt4aXdZZTdGWUVQZ1RRak9Md1k2c0dzNkdBaGppMnYvWi9H?=
 =?utf-8?B?UzBCa2ZNNUxSVkd5aFU1aXVjYjBhNnJFN0NJOUZqSFNGd1JTU3pwLzF5QlFm?=
 =?utf-8?B?bkFVQTd5WVIxTmRKRm5xQ2hHV1FMbzhudjRkWTRiY0tiNXVTeHRsUkJBN1BW?=
 =?utf-8?B?QmEzZ2dVMGljY1o3d1h3cFRLd2JXeUxTSjU2WDRNeEV4K0VoYktrZmVUL2Y0?=
 =?utf-8?B?cm9NTjNEYWtxaUkrWFFmWXhEYWhWcmdRcHI3c0k2MXlMaVFvL210ays1b1pr?=
 =?utf-8?B?REpiR0JseERSOC9ENEZINUJXQ1ZsTktoK0M4L3g1OGZ4aHZNU2d3cVRtNHNH?=
 =?utf-8?B?RVB0SVdCYWdJb2cxWm1oSUEyc2JHMlNVU3ZSWTREa0piVmJ0MFJmbk5LaUw4?=
 =?utf-8?B?eFFaOGhRMWdaaHZ4Z0VUMndpSjFGbWxTWUlPbndZdDIybG0xQk83UGpQeEdD?=
 =?utf-8?B?M0p3ZXJsOVJPMy9jQ3FMTmxET3dmY0ZkUjFqVUdJeDlpTWpNVEtZMTlRSHhO?=
 =?utf-8?B?TFZucDh6WThmOUZxaDFRYk5hTU1INHhUS2JKSFowaUJWYmR2cDU4aXNhYks2?=
 =?utf-8?B?VDZtUGlFSzNWQnRzREFYM0VIaFZyak9IUzg4Y2hzMUZlS29yZFpUcStJRm13?=
 =?utf-8?B?WFBEQThTblZ5c3dwRnkzbWYzZ3VhbE53bVZPQVgyN0JrN2FDVStBZFdRMDZS?=
 =?utf-8?B?c3dLWlRKSFBJbENlSFRkMzlySE1pM0NCTy93QVpwWS9aMW9DdEp2Mi9OekdR?=
 =?utf-8?B?QlZrNGZCVE9vSjhVVzZWMnR5RzNBTWd4ZERpdXUwM2xpR0RkRlUveXdmb0Na?=
 =?utf-8?B?SXlreXpsbTV3SjduUVZtem9tUGppQjk5ZkR1SnBrMG4yMGJCTXJ4SDZDclJq?=
 =?utf-8?B?Mjg4Zi9QRytjbEltL3o0NHZ5T1pRSTlud0NrM05ma2ZRMWdFeGNWMkJzeUV6?=
 =?utf-8?B?dDB5aFcyUTlrVCs0K05JbUU4TVo3ZG10NWdwSzQ4VSttd1p6THNmRkw1eDEx?=
 =?utf-8?B?TExPZUhsM05wS01KVlVoV0FNcURCR2F6L09hSmlCMUgyb0VoTyt6cG8wSzlr?=
 =?utf-8?B?ckgyNUV5VkpZK0hiY21ObkJ5bU5XVzRMc25abklNOGJpNXdJREZLdFlZTWl0?=
 =?utf-8?B?MUdSaGgvY0IyT1V2TUxsVjB3TTBSWk9CRFNNaXIrcWM3ZmFKWXRNQ1ZMU1Nj?=
 =?utf-8?B?NHdKVHdyck02MCsrMjRKdUszSGkzM0xucURld0hjYkRBMjlqanVyUVJSWENE?=
 =?utf-8?B?VzU5aG1sbG1SUmwrTUg2MUk5SGRFS1J3NklrVGRLZGhFV29QTDdIdXhxNmpj?=
 =?utf-8?B?c2Rvd1BFL0hsV0ZwdXgyMW1yR1B4ZVNNaDNLNm5HUVU0dzROOThQdTk0bUpl?=
 =?utf-8?B?TGs0MmNCU2JIN1lSenQvd1B5RG5LSksyVjRTa3NFdEZ0M2pZRGUxQm44Rm8r?=
 =?utf-8?B?NVpHVUVIdU1KOEdRWURTZDkyT2R6TFdseklaSlpHWXF1cmNLbkh4NE94a0xp?=
 =?utf-8?B?K3FGaDVwenkvZE1mWnNIMGJtSTVGNW9DTG8zZlVUQ2RNcldzeDB4WWw1bzI2?=
 =?utf-8?B?a1ZheXo5Q1BNT2V0VmdqZUV2UytsQTdJVmk4U1A0Y29HcGczRlhURHdFa2ZY?=
 =?utf-8?B?MzhncGowYnJnMXEyQmprTGZ4aGZzVEhNK2FQMUtZb09mUFBDMlgzWmxwTzZR?=
 =?utf-8?B?NzNEZ0p5cU4zUmFKaE90OHVkazVwT0huUXFBellGbnRQNDhlZjJyVjlzVXNH?=
 =?utf-8?B?QmdOeGV0cGRVQ2NTTFpac3g3ajduR1Zsc1U5NkFNK2tLYlVCVkQ1Q3RoZjVO?=
 =?utf-8?B?clc2QzdKbGlSZU45Ull5dVJ2eGlKcitFbW81WEc5ZXNsSXZoUUMyV2RzVG51?=
 =?utf-8?B?WlE9PQ==?=
X-MS-Exchange-CrossTenant-Network-Message-Id: e3531f89-b4bf-46bd-ea64-08dd8232f79e
X-MS-Exchange-CrossTenant-AuthSource: DM4PR11MB5341.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 23 Apr 2025 06:49:17.5232 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: dv/4wzpSrsVGu7VUILpFtiMldWWQK7riIpZ6iaf+bKnvIyU9htdY4ZXTyPBJrA4bUsFGObBcAz+E4+sZPTZsUOeZLTO9lWrYuqhMFESIjx0=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: IA0PR11MB7353
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


On 4/21/2025 9:18 PM, Mitul Golani wrote:
> From: Ville Syrjälä <ville.syrjala@linux.intel.com>
>
> Refactor vmin/vmax functions for better computation.
>
> Signed-off-by: Ville Syrjälä <ville.syrjala@linux.intel.com>
> Signed-off-by: Mitul Golani <mitulkumar.ajitkumar.golani@intel.com>
> ---
>   drivers/gpu/drm/i915/display/intel_vrr.c | 41 +++++++++++-------------
>   1 file changed, 19 insertions(+), 22 deletions(-)
>
> diff --git a/drivers/gpu/drm/i915/display/intel_vrr.c b/drivers/gpu/drm/i915/display/intel_vrr.c
> index c6565baf815a..adfd231eb578 100644
> --- a/drivers/gpu/drm/i915/display/intel_vrr.c
> +++ b/drivers/gpu/drm/i915/display/intel_vrr.c
> @@ -146,37 +146,41 @@ static int intel_vrr_vblank_exit_length(const struct intel_crtc_state *crtc_stat
>   		return crtc_state->vrr.pipeline_full + crtc_state->framestart_delay + 1;
>   }
>   
> -int intel_vrr_vmin_vtotal(const struct intel_crtc_state *crtc_state)
> +static int intel_vrr_vtotal(const struct intel_crtc_state *crtc_state, int vmin_vmax)
>   {
>   	struct intel_display *display = to_intel_display(crtc_state);
>   
> -	/* Min vblank actually determined by flipline */
>   	if (DISPLAY_VER(display) >= 13)
> -		return intel_vrr_vmin_flipline(crtc_state);
> +		return vmin_vmax;
>   	else
> -		return intel_vrr_vmin_flipline(crtc_state) +
> -			intel_vrr_real_vblank_delay(crtc_state);
> +		return vmin_vmax + intel_vrr_real_vblank_delay(crtc_state);
>   }
>   
> -int intel_vrr_vmax_vtotal(const struct intel_crtc_state *crtc_state)
> +static int intel_vrr_vblank_start(const struct intel_crtc_state *crtc_state,
> +				  int vmin_vmax)
>   {
> -	struct intel_display *display = to_intel_display(crtc_state);
> +	return intel_vrr_vtotal(crtc_state, vmin_vmax) -
> +			intel_vrr_vblank_exit_length(crtc_state);
> +}
>   
> -	if (DISPLAY_VER(display) >= 13)
> -		return crtc_state->vrr.vmax;
> -	else
> -		return crtc_state->vrr.vmax +
> -			intel_vrr_real_vblank_delay(crtc_state);
> +int intel_vrr_vmin_vtotal(const struct intel_crtc_state *crtc_state)
> +{
> +	return intel_vrr_vtotal(crtc_state, intel_vrr_vmin_flipline(crtc_state));
> +}
> +
> +int intel_vrr_vmax_vtotal(const struct intel_crtc_state *crtc_state)
> +{
> +	return intel_vrr_vtotal(crtc_state, crtc_state->vrr.vmax);
>   }
>   
>   int intel_vrr_vmin_vblank_start(const struct intel_crtc_state *crtc_state)
>   {
> -	return intel_vrr_vmin_vtotal(crtc_state) - intel_vrr_vblank_exit_length(crtc_state);
> +	return intel_vrr_vblank_start(crtc_state, intel_vrr_vmin_flipline(crtc_state));
>   }
>   
>   int intel_vrr_vmax_vblank_start(const struct intel_crtc_state *crtc_state)
>   {
> -	return intel_vrr_vmax_vtotal(crtc_state) - intel_vrr_vblank_exit_length(crtc_state);
> +	return intel_vrr_vblank_start(crtc_state, crtc_state->vrr.vmax);
>   }
>   
>   static bool
> @@ -257,14 +261,7 @@ void intel_vrr_compute_vrr_timings(struct intel_crtc_state *crtc_state)
>   static
>   int intel_vrr_fixed_rr_vtotal(const struct intel_crtc_state *crtc_state)
>   {
> -	struct intel_display *display = to_intel_display(crtc_state);
> -	int crtc_vtotal = crtc_state->hw.adjusted_mode.crtc_vtotal;
> -
> -	if (DISPLAY_VER(display) >= 13)
> -		return crtc_vtotal;
> -	else
> -		return crtc_vtotal -
> -			intel_vrr_real_vblank_delay(crtc_state);
> +	return intel_vrr_vtotal(crtc_state, crtc_state->hw.adjusted_mode.crtc_vtotal);

This seems to be off for Display < 13.

If I see it correctly, instead of subtracting we are now adding 
intel_vrr_real_vblank_delay(crtc_state);


Can this be rechecked? or I am missing something?

Rest of the changes seem fine.


Regards,

Ankit



>   }
>   
>   static
