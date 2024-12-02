Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id AE1509E029A
	for <lists+intel-gfx@lfdr.de>; Mon,  2 Dec 2024 13:58:33 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id ED6DC10E738;
	Mon,  2 Dec 2024 12:58:31 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="g82bMZrS";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.15])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 8B4A910E735;
 Mon,  2 Dec 2024 12:58:30 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1733144311; x=1764680311;
 h=content-transfer-encoding:in-reply-to:references:subject:
 from:cc:to:date:message-id:mime-version;
 bh=RUYhM3P/wSX1cXIflRLhQlPg3iH8du1bhKepugfpAgA=;
 b=g82bMZrSN57uqZuifX6jEVccFq+3aJbOkzl2HAJGiVEYJ/j3Vo9lRhc6
 +3AdJpdb5DT6LqI39BONx5tLM8NGCNtTH7PfXbpi5+RRhXnG28mGW/k6N
 Hid8FGpRHmmEtS+kZILDbNc4TDuh4F7F5nv9GmIG5PPxYkoVUqUqmLpoH
 PrzDKhWbYN1136Th/bDMjUstMKFElaa/4BPI6wOW6VDWSrUxHr2iKKZT6
 pAAKP9jt3HUMSA1V1A+P8lECLRDrBixgLwNgIeBz+HOFN+5Dw10/Vn2t0
 PUzeHsVVIYi1TzyB4VFhoAa98ixN67ap7K56IcDStBTVJZGNDM8W9h8lk g==;
X-CSE-ConnectionGUID: ihVDFQJgTNeQPEtb9QVeeA==
X-CSE-MsgGUID: PzgN/XpMS5i8yFILO5VFAg==
X-IronPort-AV: E=McAfee;i="6700,10204,11274"; a="33438838"
X-IronPort-AV: E=Sophos;i="6.12,202,1728975600"; d="scan'208";a="33438838"
Received: from orviesa009.jf.intel.com ([10.64.159.149])
 by fmvoesa109.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 02 Dec 2024 04:58:30 -0800
X-CSE-ConnectionGUID: z4guTBX7Tramr/imlij2YA==
X-CSE-MsgGUID: /CepU9u9QMihr17iIWBcfA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.12,202,1728975600"; d="scan'208";a="93002069"
Received: from fmsmsx602.amr.corp.intel.com ([10.18.126.82])
 by orviesa009.jf.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 02 Dec 2024 04:58:30 -0800
Received: from fmsmsx603.amr.corp.intel.com (10.18.126.83) by
 fmsmsx602.amr.corp.intel.com (10.18.126.82) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39; Mon, 2 Dec 2024 04:58:29 -0800
Received: from FMSEDG603.ED.cps.intel.com (10.1.192.133) by
 fmsmsx603.amr.corp.intel.com (10.18.126.83) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39 via Frontend Transport; Mon, 2 Dec 2024 04:58:29 -0800
Received: from NAM02-DM3-obe.outbound.protection.outlook.com (104.47.56.40) by
 edgegateway.intel.com (192.55.55.68) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.39; Mon, 2 Dec 2024 04:58:29 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=kmKjfkHSFqoAFCxPPqlT96kpMdqgYbRm3B8lS4hYxreGfGM8xx5JXQynoU7EJI/TBiC06/821tOKRxn6ofBhLQHLDrxVQYTU+xuu+ap6m2gD23Bmfy4PvzLX4TaTvSdkfTkOfSClxx3gGd9mH4Oya6v0AsvoHKzo2kDJqGqyc0KM0uCQoorRj5fY3os/uYluZJXtN5U1CQ8sR4XoWW9WAfkIk0SWBUqjaNDftpx7GFUVlLtSICqVNqDppqbZGS3q7kvpJ8R0BdLRnEFaXrvDsqsKbfPpK65QxLQI/AkMLUpDgCCDn1gfqRCkdR+shzEqHGIfNKVhmE2Glk1zd4NuWQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=ngz+VpT0pg8yFipuoR4g3t9m5PQGQDAD03yQihcWPac=;
 b=pZh/ZbLaZn0ohu1ZsKQiT5pe04Qd6gJVlg7RU0WKE2glEH/ZukDE8GMmXCBBccEfGEJ7Ep1r+jB5pSv2q1jEzHxf8vy8blrUoy2oGArsn7ykJjED7DRH+rArt/FtkSwbqG33Z5BdL2I6wFr/Vu5/J4lJ1ZupSwcWzBjkNDl8LHsipAU+OED5MReLXkAlqWeESRNKycJxVmVfVThoFHkts0cBUYwOTE851E32q7xU/uW2kZtvINoUKywTNWOh7+b3iMx5MA292i7kxdp/OZjoYniil8Ui62tni7vFnm1mcxIC/aZ3E9A+rKf4vLSyiTbrUeiziBR9VrMzGOUEW/y1bQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from SA1PR11MB8280.namprd11.prod.outlook.com (2603:10b6:806:25d::21)
 by SN7PR11MB8042.namprd11.prod.outlook.com (2603:10b6:806:2ed::20)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.8207.17; Mon, 2 Dec
 2024 12:58:22 +0000
Received: from SA1PR11MB8280.namprd11.prod.outlook.com
 ([fe80::13a:4240:8d73:3c88]) by SA1PR11MB8280.namprd11.prod.outlook.com
 ([fe80::13a:4240:8d73:3c88%4]) with mapi id 15.20.8207.014; Mon, 2 Dec 2024
 12:58:22 +0000
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: quoted-printable
In-Reply-To: <20241129102503.452272-1-jani.nikula@intel.com>
References: <20241129102503.452272-1-jani.nikula@intel.com>
Subject: Re: [PATCH] drm/i915/display: replace dig_port->saved_port_bits with
 flags
From: Gustavo Sousa <gustavo.sousa@intel.com>
CC: <jani.nikula@intel.com>
To: Jani Nikula <jani.nikula@intel.com>, <intel-gfx@lists.freedesktop.org>,
 <intel-xe@lists.freedesktop.org>
Date: Mon, 2 Dec 2024 09:58:16 -0300
Message-ID: <173314429606.2905.1225130957745348760@intel.com>
User-Agent: alot/0.10
X-ClientProxiedBy: MW4PR04CA0153.namprd04.prod.outlook.com
 (2603:10b6:303:85::8) To SA1PR11MB8280.namprd11.prod.outlook.com
 (2603:10b6:806:25d::21)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: SA1PR11MB8280:EE_|SN7PR11MB8042:EE_
X-MS-Office365-Filtering-Correlation-Id: 271928be-1c80-4113-5053-08dd12d10021
X-LD-Processed: 46c98d88-e344-4ed4-8496-4ed7712e255d,ExtAddr
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|376014|366016|1800799024;
X-Microsoft-Antispam-Message-Info: =?utf-8?B?M0t4ZU40cFlGclkvQjB0V0lSekY0Z3NhSHJwVmFXQUNJTmhmMHFhQlBrZXJ0?=
 =?utf-8?B?allQbldlTnFsWi9hOUZlaGRKdTI0SWVubzlQWDl3cFFJbHBqd2xBdk1vQm8y?=
 =?utf-8?B?QnRCREZxdHlIcEN0OFVmWXBlenJPNzJXN0pKTXFXK3hzZUp0K25NbXZkQkVa?=
 =?utf-8?B?SVBFUSszQ0FKcUlTcGpqOGRwbVErMUNnbTdGbnN5RG9JVXJaUE1ZdFc3cTF1?=
 =?utf-8?B?T3NGQWF0Y3JnR0lReUFHeG5DUi90ejRnODJ1OURFVFpPU0ZKRFNUMGhmc1Zm?=
 =?utf-8?B?cXkzQmxLWDFLYk5Oc3Zrb0F2QXQyRTJESGNwamE4TzU5YVdVRjdwNmZrdVcy?=
 =?utf-8?B?V1BSL0QwT2RMYUtLVUxQM2U2SUxkVUZXMmFnSEFaTUx4Mmg0WDJsSVBTWDM3?=
 =?utf-8?B?YzBMRkFvYmRxa2JGV1YzS2ppdC9KMG9vWjRyd0UxdDJqWStnQVZDWldzOVlv?=
 =?utf-8?B?SjY2WkZNWG00MjkwblRRK21XZWE3T2laNWw5OXJXK1RJMzBIOFNvS1pVN1Bh?=
 =?utf-8?B?a2ZGM3V2VnMwaU52RUR3LzJYaGI5OXBUZkRMM3pFckNPaE1XdG1LV0wrdGsv?=
 =?utf-8?B?Y2ltMFA0bDJGaUZzRFQ5dzd1TTNWM2tMNjU0d1JyeUt3T1hmaEZCeFhVOUdR?=
 =?utf-8?B?V3d4K2xVSFNqUGRFWlExK2UzL2lnayszSm84ZzgyeWVoV2o5NWltWC9BOS9S?=
 =?utf-8?B?bHV1RVU4dTZYdXljeVhpM29lSkErcmx3RG9jKzRsbnllOVh5QjZYUVpBRkU2?=
 =?utf-8?B?bi9yMEhQaUJiNlFCQWhTQzkvSjdpaXRhc1ZxQk9YZlREWFAyVk52Vjl4NGdE?=
 =?utf-8?B?eVB6WnpTc0lJYWxRMUF2MkNYaUt6eGkrRnVJL01qVHE5YTRtejAyWit4UEI1?=
 =?utf-8?B?ZU9kV2U2NjN2dlVNWmx1RW5BeWUxWGlJV2ZQSW95eWpMc1N6bWtwdjgzUC9H?=
 =?utf-8?B?V0NKbWtyUGIyZkNmeU1XTndmb042L0x5SFJDY1lDTktDRFZjeDEzWTFhbDBY?=
 =?utf-8?B?Ly9JZS9FcVZ6d0d3WmNMYzNzblVIajR0TnJSdlJjVUh3NTNDclVwWFBEd0NC?=
 =?utf-8?B?QmsxZExBMElDSGdoajY3NThrZ1k1c3ZxdVljaFBabWFBdUpvakI1RkROb0dI?=
 =?utf-8?B?ZkNQWWJRd3N2WjlGaTZlRVFHTGhVMTdzaUgvYm9nYThBeDZzZkpiSEVyRWdX?=
 =?utf-8?B?cjF2bmptVWsvR283UzY2N1NBSVVackhNNWVTdzZzRVI3d25vOTZFdmxvNFBH?=
 =?utf-8?B?N0FvRHlZSXVtd1crVndsMlpiWUpPMUlaRGV4UmN3clJ4aEhNYW1hWERCSWNI?=
 =?utf-8?B?NE0vSXNXYkk0dEZ5eVArczJHTXpvazY1TFpFVG1uV2Q1dmppMWVFQXBaaFN5?=
 =?utf-8?B?OE52aGtsUUpmWnpyUkpUc2I5a0l3K25RQzFoZzVFN3kzdzBsTUc1UTlrTFRr?=
 =?utf-8?B?Y1VDYldqYWQyTEFVdEkxK1hDMFFRRVBtYXFHVG1HczBEb0U5SEVYWUtZV2VN?=
 =?utf-8?B?MnMyajF2SDNtMUhFMTdnUTJPOGFQSExkZkpGZkd5MmdWekRWMHM0VSt1dGM3?=
 =?utf-8?B?eG1JUWFMaklOeFF4TnNpdkgrc01jVm41cVd4ZGlLdmJObU9zbXBENmdOaUJm?=
 =?utf-8?B?dlNjdDB0UWdLTGtkSHlmK0FYVnZRY2hEM2JtNGp6YjJENjZ4TElSMkhTTFRz?=
 =?utf-8?B?OGErV284N1JpUVNKNDFrWnpCK3R6WTg4WTF1UzlsNCtnbTFrMDJ6bW1tVTZy?=
 =?utf-8?B?WXV4Tk9ueXpTSmU5TXREa3cxdkVWaThvcXdJVktIR2JLWU9tNEl6aS9aamJF?=
 =?utf-8?B?d09uS1RYRm5XQ3JtM3lNZz09?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:SA1PR11MB8280.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(376014)(366016)(1800799024); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?MGVqOUdZMEprbWhjSWlxVE9JZCtCdTlEcWVKdUgrekRnVCtqRmlzSmZKa1FY?=
 =?utf-8?B?d2ZoVVlKSENGc2cwYVVQZXZhMTA2Y1RoUUpwVUhLODdMOGpTd3lmODNuNlNx?=
 =?utf-8?B?V2RuWW9QSmdoUUFkV1FxYU9wQVQ2S3BWRlVXSE1DRTZhU0xtY1BwRHRpc2pr?=
 =?utf-8?B?ZW1Vc21HdVdWUkQ3RStKd016dVVFbWxGQjJnd1BwcGszbFN5RGRmSHlOQnFX?=
 =?utf-8?B?bklRbmw1OTBTZ3M0Z2F2ZVQrSnE0eDZmUzVFcnlyNGliQ2RCWTFCTXRnL3JM?=
 =?utf-8?B?RVVEamVlM3lUZXpvWHVVb1Y2K05TMXArRjIvRUpETXJUYVViSXBLTFBDMGNk?=
 =?utf-8?B?MG05MzY5Wks5TmlnMEk5YzU2R1NYMjJhREY2c285dmdHcVZ5QU15UXd1S3Iy?=
 =?utf-8?B?K2NESy9qOEREUFFDTGZnSVA4TEdhbUdTRVFxVE53S3JKSEpVUVZ5cStsazlD?=
 =?utf-8?B?Vmhkb05rV3JSZzlzLzZ2NGw4RWp2ZlhQYnFtTUNMSkZhTnZMV1pWY1dYSW1R?=
 =?utf-8?B?cDRDYjlYbGhxdDFSY0gxSmVSV2VwVTZzeCtocFBURG80M3JVS3c4bThuMUZY?=
 =?utf-8?B?aG0xYzNDSXBLZVlsbjhIckhZL2JIL2ZzUXJUTWEwSm9WMnRHSDV4dWozSmxp?=
 =?utf-8?B?Kzh5ZlcvNklzNE9Bd21IR0JzMzJTSWlaQXlCVy9FY0RYbEthUSthVkx4bkVI?=
 =?utf-8?B?eHViRlJjcEx6WFFTdHhYWXN4WUc4WEVhMmxpaUJQQmU0SnhIZ0VTVUxQRU9O?=
 =?utf-8?B?UENXZVdoQTVMOGNnWlNrSWZDSFJtRXJianJ2a0lRWlE0QU9jM1lodEdJbWZ1?=
 =?utf-8?B?Unpha3hEUzB2c25qTUt1M1VFVHFITlg0Zi9iM1BpQlI5bFdsbHQwRTN1d011?=
 =?utf-8?B?cndLWjVrMW05SFh1K2puU1k5a1RjSE4xZUxKQURaQ3V5bzZNMC93dk83WEhm?=
 =?utf-8?B?V1NpM3JKTGxSWHpiQ09SV1VxK1JHWjlIWXNSNG9EUDc2NEFpWTVJWEd1bVZD?=
 =?utf-8?B?VjlqbTdMV2hsMjArZC9sUzdaL0p5ai9vMzVUNTJGaUFIeXdWVlNyZ2VleDVZ?=
 =?utf-8?B?SUdaUFlQRGZmelgxUTRXSnQwOWFTUkJ2NnNON3Y3K3BvT0xUK1hIYnVQcUl4?=
 =?utf-8?B?bkova0hOTzFHTjBjSk9nSTQ0emdEdXNtcnhscXZjL053eTMxTTdsQ0dKZTBJ?=
 =?utf-8?B?QjhadUJ0dFM1WjV2M2R4S0lzWVdSUXp6RGlOUmx0TjFidlF2ZS9HbDY0SzZK?=
 =?utf-8?B?ampMNEc0bjRKNkVsU0NtSmxPT1NKcis1NXFJQUlRVWY5NTV2Kzg3NWFRbDhX?=
 =?utf-8?B?UThQVldrbE9Wb3lJUFBiQzFHeC8vRzduY3dSVC9RY1VSQjByRHhPUU9WN2xU?=
 =?utf-8?B?ZitLN1gzRGJ2d3cwRkIrNlFiYkxtbzhseVU3WXczWFJlWWwydlkzQjlzTjRu?=
 =?utf-8?B?cG8vdnhPMi9nc2ZwbkxOS2ZSZUVDRzhxeFovaTlNVXNORXFQZnpkaTVNK3h5?=
 =?utf-8?B?bFhDaFV1cEc5U09RdlRzZnJlaTRZbXRac0FPU3RLME5Sa1RXbklRZlNGSlJp?=
 =?utf-8?B?RFJhOVZ2TUFLZ2MrSFNybmw5ZHRpcEZkTnpZOVpHclhRQ0tyeUxKOGd2bDhj?=
 =?utf-8?B?U0s4dDJ4eFBDZGsydXZ5OEc2ZlZRQVQrT1EzWWsvVXlTcVljbmN1Q2t6VHVN?=
 =?utf-8?B?YlJRdFEvT0NWZm1haGtUdlFpZDBiZisvUXNhVUx3NXBtdjJqREdFNUJrK3Fh?=
 =?utf-8?B?bmJ5WTFyUFdzekR6TEMwVkpsN2RZc1IwMmtUSHQzLzhkNkdXVi9vZ1BlNjlS?=
 =?utf-8?B?MU5hSllvWXFIRzdSeVJOUkNUaFdvTzFnV0ZmYWNobUkzRDJrTW8rdnRScm95?=
 =?utf-8?B?eDlnV2RQanlEZzhUMnh3NXdUQkZlZWxRNE5YTGx2ektTazQ5SlVDQVFYR001?=
 =?utf-8?B?Zk9zdDFnc2swdk5uZ1ROY1M1SG5GQktsd1ZmU0xDcy9UaUJwWE9iUjBYc3Y3?=
 =?utf-8?B?TzQ1Nlp1QTFLVk5ySFc5eUIvVnNodlRpWCs1dXcvQlBQUFRvcmYwQWZVa3Z3?=
 =?utf-8?B?OEUvd2EyQzVKUkpwaEhGZFp3SThVcWVPNVUxcmlqN0N3OHB3U1Fpa0Y2NG5U?=
 =?utf-8?B?em9XbVorSklVdDZ2R0VUVnI4NnlLYjNodUVFeXBYVU5SUFlCVHdUT29ObmRC?=
 =?utf-8?B?N3c9PQ==?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 271928be-1c80-4113-5053-08dd12d10021
X-MS-Exchange-CrossTenant-AuthSource: SA1PR11MB8280.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 02 Dec 2024 12:58:21.9476 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: orZ6ANu/LAvHXWyyekk3BfAI/SZacxizT8YGATNjtu3aHugxlx45xB/GDMMSYe5+pm4xqWG223NM/guhWIvnBQ==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SN7PR11MB8042
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

Quoting Jani Nikula (2024-11-29 07:25:03-03:00)
>dig_port->saved_port_bits is used to permanently store two DDI_BUF_CTL
>bits, DDI_BUF_PORT_REVERSAL and DDI_A_4_LANES. Store them separately as
>bools to make their use more logical and less about storing state as
>register bits.
>
>Signed-off-by: Jani Nikula <jani.nikula@intel.com>

Reviewed-by: Gustavo Sousa <gustavo.sousa@intel.com>

>---
> drivers/gpu/drm/i915/display/intel_cx0_phy.c  |  2 +-
> drivers/gpu/drm/i915/display/intel_ddi.c      | 44 ++++++++++---------
> .../drm/i915/display/intel_display_types.h    |  4 +-
> drivers/gpu/drm/i915/display/intel_tc.c       |  2 +-
> 4 files changed, 29 insertions(+), 23 deletions(-)
>
>diff --git a/drivers/gpu/drm/i915/display/intel_cx0_phy.c b/drivers/gpu/dr=
m/i915/display/intel_cx0_phy.c
>index 71dc659228ab..cc734079c3b8 100644
>--- a/drivers/gpu/drm/i915/display/intel_cx0_phy.c
>+++ b/drivers/gpu/drm/i915/display/intel_cx0_phy.c
>@@ -2987,7 +2987,7 @@ static void intel_cx0pll_enable(struct intel_encoder=
 *encoder,
>         struct intel_display *display =3D to_intel_display(encoder);
>         enum phy phy =3D intel_encoder_to_phy(encoder);
>         struct intel_digital_port *dig_port =3D enc_to_dig_port(encoder);
>-        bool lane_reversal =3D dig_port->saved_port_bits & DDI_BUF_PORT_R=
EVERSAL;
>+        bool lane_reversal =3D dig_port->lane_reversal;
>         u8 maxpclk_lane =3D lane_reversal ? INTEL_CX0_LANE1 :
>                                           INTEL_CX0_LANE0;
>         intel_wakeref_t wakeref =3D intel_cx0_phy_transaction_begin(encod=
er);
>diff --git a/drivers/gpu/drm/i915/display/intel_ddi.c b/drivers/gpu/drm/i9=
15/display/intel_ddi.c
>index 7d37ddd9ad12..4f9c50996446 100644
>--- a/drivers/gpu/drm/i915/display/intel_ddi.c
>+++ b/drivers/gpu/drm/i915/display/intel_ddi.c
>@@ -335,10 +335,14 @@ static void intel_ddi_init_dp_buf_reg(struct intel_e=
ncoder *encoder,
>         struct intel_digital_port *dig_port =3D enc_to_dig_port(encoder);
>=20
>         /* DDI_BUF_CTL_ENABLE will be set by intel_ddi_prepare_link_retra=
in() later */
>-        intel_dp->DP =3D dig_port->saved_port_bits |
>-                DDI_PORT_WIDTH(crtc_state->lane_count) |
>+        intel_dp->DP =3D DDI_PORT_WIDTH(crtc_state->lane_count) |
>                 DDI_BUF_TRANS_SELECT(0);
>=20
>+        if (dig_port->lane_reversal)
>+                intel_dp->DP |=3D DDI_BUF_PORT_REVERSAL;
>+        if (dig_port->ddi_a_4_lanes)
>+                intel_dp->DP |=3D DDI_A_4_LANES;
>+
>         if (DISPLAY_VER(i915) >=3D 14) {
>                 if (intel_dp_is_uhbr(crtc_state))
>                         intel_dp->DP |=3D DDI_BUF_PORT_DATA_40BIT;
>@@ -2402,12 +2406,10 @@ static void intel_ddi_power_up_lanes(struct intel_=
encoder *encoder,
>=20
>         if (intel_encoder_is_combo(encoder)) {
>                 enum phy phy =3D intel_encoder_to_phy(encoder);
>-                bool lane_reversal =3D
>-                        dig_port->saved_port_bits & DDI_BUF_PORT_REVERSAL=
;
>=20
>                 intel_combo_phy_power_up_lanes(i915, phy, false,
>                                                crtc_state->lane_count,
>-                                               lane_reversal);
>+                                               dig_port->lane_reversal);
>         }
> }
>=20
>@@ -2547,7 +2549,7 @@ static void mtl_port_buf_ctl_program(struct intel_en=
coder *encoder,
>         else
>                 val |=3D XELPDP_PORT_BUF_PORT_DATA_10BIT;
>=20
>-        if (dig_port->saved_port_bits & DDI_BUF_PORT_REVERSAL)
>+        if (dig_port->lane_reversal)
>                 val |=3D XELPDP_PORT_REVERSAL;
>=20
>         intel_de_write(i915, XELPDP_PORT_BUF_CTL1(i915, port), val);
>@@ -3413,14 +3415,20 @@ static void intel_ddi_enable_hdmi(struct intel_ato=
mic_state *state,
>          * is filled with lane count, already set in the crtc_state.
>          * The same is required to be filled in PORT_BUF_CTL for C10/20 P=
hy.
>          */
>-        buf_ctl =3D dig_port->saved_port_bits | DDI_BUF_CTL_ENABLE;
>+        buf_ctl =3D DDI_BUF_CTL_ENABLE;
>+
>+        if (dig_port->lane_reversal)
>+                buf_ctl |=3D DDI_BUF_PORT_REVERSAL;
>+        if (dig_port->ddi_a_4_lanes)
>+                buf_ctl |=3D DDI_A_4_LANES;
>+
>         if (DISPLAY_VER(dev_priv) >=3D 14) {
>                 u8  lane_count =3D mtl_get_port_width(crtc_state->lane_co=
unt);
>                 u32 port_buf =3D 0;
>=20
>                 port_buf |=3D XELPDP_PORT_WIDTH(lane_count);
>=20
>-                if (dig_port->saved_port_bits & DDI_BUF_PORT_REVERSAL)
>+                if (dig_port->lane_reversal)
>                         port_buf |=3D XELPDP_PORT_REVERSAL;
>=20
>                 intel_de_rmw(dev_priv, XELPDP_PORT_BUF_CTL1(dev_priv, por=
t),
>@@ -4763,7 +4771,7 @@ static bool intel_ddi_a_force_4_lanes(struct intel_d=
igital_port *dig_port)
>         if (dig_port->base.port !=3D PORT_A)
>                 return false;
>=20
>-        if (dig_port->saved_port_bits & DDI_A_4_LANES)
>+        if (dig_port->ddi_a_4_lanes)
>                 return false;
>=20
>         /* Broxton/Geminilake: Bspec says that DDI_A_4_LANES is the only
>@@ -4801,7 +4809,7 @@ intel_ddi_max_lanes(struct intel_digital_port *dig_p=
ort)
>         if (intel_ddi_a_force_4_lanes(dig_port)) {
>                 drm_dbg_kms(&dev_priv->drm,
>                             "Forcing DDI_A_4_LANES for port A\n");
>-                dig_port->saved_port_bits |=3D DDI_A_4_LANES;
>+                dig_port->ddi_a_4_lanes =3D true;
>                 max_lanes =3D 4;
>         }
>=20
>@@ -4980,6 +4988,7 @@ void intel_ddi_init(struct intel_display *display,
>         bool init_hdmi, init_dp;
>         enum port port;
>         enum phy phy;
>+        u32 ddi_buf_ctl;
>=20
>         port =3D intel_bios_encoder_port(devdata);
>         if (port =3D=3D PORT_NONE)
>@@ -5229,17 +5238,12 @@ void intel_ddi_init(struct intel_display *display,
>         else
>                 encoder->hpd_pin =3D intel_hpd_pin_default(dev_priv, port=
);
>=20
>-        if (DISPLAY_VER(dev_priv) >=3D 11)
>-                dig_port->saved_port_bits =3D
>-                        intel_de_read(dev_priv, DDI_BUF_CTL(port))
>-                        & DDI_BUF_PORT_REVERSAL;
>-        else
>-                dig_port->saved_port_bits =3D
>-                        intel_de_read(dev_priv, DDI_BUF_CTL(port))
>-                        & (DDI_BUF_PORT_REVERSAL | DDI_A_4_LANES);
>+        ddi_buf_ctl =3D intel_de_read(dev_priv, DDI_BUF_CTL(port));
>+
>+        dig_port->lane_reversal =3D intel_bios_encoder_lane_reversal(devd=
ata) ||
>+                ddi_buf_ctl & DDI_BUF_PORT_REVERSAL;
>=20
>-        if (intel_bios_encoder_lane_reversal(devdata))
>-                dig_port->saved_port_bits |=3D DDI_BUF_PORT_REVERSAL;
>+        dig_port->ddi_a_4_lanes =3D DISPLAY_VER(dev_priv) < 11 && ddi_buf=
_ctl & DDI_A_4_LANES;
>=20
>         dig_port->dp.output_reg =3D INVALID_MMIO_REG;
>         dig_port->max_lanes =3D intel_ddi_max_lanes(dig_port);
>diff --git a/drivers/gpu/drm/i915/display/intel_display_types.h b/drivers/=
gpu/drm/i915/display/intel_display_types.h
>index ec68bbfed442..167aa8ec4948 100644
>--- a/drivers/gpu/drm/i915/display/intel_display_types.h
>+++ b/drivers/gpu/drm/i915/display/intel_display_types.h
>@@ -1814,11 +1814,13 @@ struct intel_lspcon {
>=20
> struct intel_digital_port {
>         struct intel_encoder base;
>-        u32 saved_port_bits;
>         struct intel_dp dp;
>         struct intel_hdmi hdmi;
>         struct intel_lspcon lspcon;
>         enum irqreturn (*hpd_pulse)(struct intel_digital_port *, bool);
>+
>+        bool lane_reversal;
>+        bool ddi_a_4_lanes;
>         bool release_cl2_override;
>         u8 max_lanes;
>         /* Used for DP and ICL+ TypeC/DP and TypeC/HDMI ports. */
>diff --git a/drivers/gpu/drm/i915/display/intel_tc.c b/drivers/gpu/drm/i91=
5/display/intel_tc.c
>index b16c4d2d4077..0e4d78b146f6 100644
>--- a/drivers/gpu/drm/i915/display/intel_tc.c
>+++ b/drivers/gpu/drm/i915/display/intel_tc.c
>@@ -390,7 +390,7 @@ void intel_tc_port_set_fia_lane_count(struct intel_dig=
ital_port *dig_port,
> {
>         struct drm_i915_private *i915 =3D to_i915(dig_port->base.base.dev=
);
>         struct intel_tc_port *tc =3D to_tc_port(dig_port);
>-        bool lane_reversal =3D dig_port->saved_port_bits & DDI_BUF_PORT_R=
EVERSAL;
>+        bool lane_reversal =3D dig_port->lane_reversal;
>         u32 val;
>=20
>         if (DISPLAY_VER(i915) >=3D 14)
>--=20
>2.39.5
>
