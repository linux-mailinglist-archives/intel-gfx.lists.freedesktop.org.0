Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 795EAAAC53C
	for <lists+intel-gfx@lfdr.de>; Tue,  6 May 2025 15:08:15 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 0B7A889FD4;
	Tue,  6 May 2025 13:08:14 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="cL4JynqB";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.13])
 by gabe.freedesktop.org (Postfix) with ESMTPS id B631189E47;
 Tue,  6 May 2025 13:08:12 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1746536892; x=1778072892;
 h=message-id:date:subject:to:references:from:in-reply-to:
 content-transfer-encoding:mime-version;
 bh=pTfl9HYYI8sm5ZjgVzYsXW0UqcpHFx0x6sJF4RDouyI=;
 b=cL4JynqB14icT8/Kz15p1qVJ1ZlRvfaHYzqOOhI4V9T7p+alAimrtawU
 c9ZU8va3cREphpnklY0vp9T55vQtynmc9EagWEC0lY6URP9U815fBu1wi
 R6x+IpVXZWwGYxUlJdUAFIkdqJUdDu4Yx9WAaGLZc1StfWwEs4gqc7Yt0
 NCEzmIG2FVn7ZpyGwWdP9TNLrhJYEPxrRC3YFqRUdzsK9CUIFadED4LP8
 w4rM1p6tmQbIBqgY8SM8bfW9zKwDMyip6Oj7rarYeS8A0Es6wbbTKimkV
 Upeipk7QIOQ50MiOoyiN0PDcaxRPWWBgg2cyJimJ3xhtq+3pO47zhirw/ g==;
X-CSE-ConnectionGUID: rBJu3HiBSSSlrld57f9aAA==
X-CSE-MsgGUID: S8DYFJx+TMugq0zET9puqQ==
X-IronPort-AV: E=McAfee;i="6700,10204,11425"; a="59190835"
X-IronPort-AV: E=Sophos;i="6.15,266,1739865600"; d="scan'208";a="59190835"
Received: from fmviesa002.fm.intel.com ([10.60.135.142])
 by orvoesa105.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 06 May 2025 06:08:09 -0700
X-CSE-ConnectionGUID: jI7/C/YtTneGhrgfqiiwlg==
X-CSE-MsgGUID: 1WQaLeuaToW1Rx6NXW2t7Q==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.15,266,1739865600"; d="scan'208";a="158880580"
Received: from orsmsx903.amr.corp.intel.com ([10.22.229.25])
 by fmviesa002.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 06 May 2025 06:08:09 -0700
Received: from ORSMSX901.amr.corp.intel.com (10.22.229.23) by
 ORSMSX903.amr.corp.intel.com (10.22.229.25) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1544.14; Tue, 6 May 2025 06:08:09 -0700
Received: from orsedg603.ED.cps.intel.com (10.7.248.4) by
 ORSMSX901.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1544.14 via Frontend Transport; Tue, 6 May 2025 06:08:09 -0700
Received: from NAM12-MW2-obe.outbound.protection.outlook.com (104.47.66.49) by
 edgegateway.intel.com (134.134.137.100) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.44; Tue, 6 May 2025 06:08:08 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=ayLpsdQ1s50y3xEvQWwDYxIkqOtWqO7khoDPK2ZzgdZv532L3kLj1mP+64ratUupFs5m0+NYoHhgIv/4wX+q1GdmDZWBTEqQfwH26BoQ2bw17u2WxNYbfUL5CpzlBXncuggz4pqtzIubErn96johZLmY5WcvXlJ+Ze6nQvCTT6FXxbBk1zwFanw6kucNreJvKH7WNieIwzGN5Dmoe9xKu/kuvDRRF4/9eepy9va8u0WhO8rOAxikjmPAa7XgoOvR9uv96n7OjMDNoI420pw0e27CzSnMWRUlBYvz22S7cnxFLyb7ZYhXJTrG8vcXwvKCkdtstVn/Zrc2D/tZXU5qeg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=sTsojdYj4HWRUU8tU2TBU7FdPU/B6ry3Ylld16TDAU4=;
 b=JVz2sztuSg1GfHuCfPToMYQUWXHtKDD/52MlSFltU+ckP7ym2/11pgkqKXjwexvAw88MuejLSyNFp6airqdSwQdP9zcShyid7639TnihOIekGImJiLdnp66NCuotm/dmOlwZiu68r/HroaiKc3qSsIXSpO0BIiG5gg5hqIA6zVX3uA9yz12x4J5Rv8FNned5I1KV5aeOmGbTfuXUiraAx5PBwknQGx2fEP0LI8VJ+fT6QCZFYsT7iA4MT5XoZ5Cl8i7VZ+lye29zAfiGuPcwEqDQ+KMtx9ag5bw1iYovPX5yVbV02pOj82S12c8SLiRIeGaM+pLSktgn9G5rh1OEEg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from DM4PR11MB5341.namprd11.prod.outlook.com (2603:10b6:5:390::22)
 by BL4PR11MB8797.namprd11.prod.outlook.com (2603:10b6:208:5a7::8) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.8699.26; Tue, 6 May
 2025 13:07:56 +0000
Received: from DM4PR11MB5341.namprd11.prod.outlook.com
 ([fe80::397:7566:d626:e839]) by DM4PR11MB5341.namprd11.prod.outlook.com
 ([fe80::397:7566:d626:e839%2]) with mapi id 15.20.8699.026; Tue, 6 May 2025
 13:07:56 +0000
Message-ID: <abe21867-4735-4e73-a16a-bee34658cae7@intel.com>
Date: Tue, 6 May 2025 18:37:50 +0530
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v2 09/12] drm/i915/display: Factor out intel_display_{min, 
 max}_pipe_bpp()
To: Imre Deak <imre.deak@intel.com>, <intel-gfx@lists.freedesktop.org>,
 <intel-xe@lists.freedesktop.org>
References: <20250428133135.3396080-1-imre.deak@intel.com>
 <20250428133135.3396080-10-imre.deak@intel.com>
Content-Language: en-US
From: "Nautiyal, Ankit K" <ankit.k.nautiyal@intel.com>
In-Reply-To: <20250428133135.3396080-10-imre.deak@intel.com>
Content-Type: text/plain; charset="UTF-8"; format=flowed
Content-Transfer-Encoding: 7bit
X-ClientProxiedBy: MA1PR01CA0151.INDPRD01.PROD.OUTLOOK.COM
 (2603:1096:a00:71::21) To DM4PR11MB5341.namprd11.prod.outlook.com
 (2603:10b6:5:390::22)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: DM4PR11MB5341:EE_|BL4PR11MB8797:EE_
X-MS-Office365-Filtering-Correlation-Id: fc88fe8f-c474-4277-2c08-08dd8c9f0483
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|376014|366016|1800799024;
X-Microsoft-Antispam-Message-Info: =?utf-8?B?L1A4Y2JueGl0RWtMZkxaazJnK09jdkJYbWpHUDVXU3oyZTZVOWZ0WUxhVlZC?=
 =?utf-8?B?NC9zUkkvMnFPMVZXOCtQMU9hV1pmVWpYNUJYM1hIUmNHNTZGcnhzeSs0Q0U0?=
 =?utf-8?B?N2RrNlo1MDhmVzMyMmZFdk1CTm1UYWFkbEJzbHR3d3NrNmIra0xCaVVFYjF3?=
 =?utf-8?B?OS9Qbk5OSWRIbFdTSkpOVTQ1blloYXZJNWJ2WjIwbGxWY3prR21USFljYmtm?=
 =?utf-8?B?SEhRZ0hFSTYyTUJrSFZFQlNBL0VJRHBLQml3WHV1RndrMjJtbEpRSDcvKzVW?=
 =?utf-8?B?U3dwWVlUQ3JVMlBjNTBieS9qWjZUb2IrS1B5VXg0VWxEWEMzMHRLOUQ3L2ty?=
 =?utf-8?B?TzRGMEN1MmY1aFN6azl2NHJTV0I3eG1XbzI0RDhwSzNWQmlYR3dCZGt4V1RV?=
 =?utf-8?B?U3RranJhZHlDa3M4TGxzTTY1djV5SnpaRDlsOHF0SUwvTC95eXdldW5adTNy?=
 =?utf-8?B?UVJuMno4QlROVE50U0V6N1d4Y2RlSkRuaXBneUgrQjI3YURyRjFTbzhiVUZp?=
 =?utf-8?B?L0tRcUNES1BOVWhrWWhwK2ZNM2I2WWNTaU1iUmtXdHRhNU9uVDdvVjhsMUs3?=
 =?utf-8?B?RGZacGgrbHkvRGZYL1hVSlZUakVHSVVjVTQ2dHpZR2UxMkhRbnAzS1A2QVNS?=
 =?utf-8?B?QzQvRWhGbFpRdFB3SG9sNWtraTk3UjI1LzNEelpyK2xzc3E1cUVrbVI4RlZj?=
 =?utf-8?B?ZUdHVkc5Zk0xb2RFWllGTmZGbTQ0clppNVhWNVNKRXQ4aUM1cGVhSFo4b21t?=
 =?utf-8?B?QWlPeGV3Z0dvczYxNHFHRVdPNlQ4QkZvdG1SYlBVZ0J6TmJwV3VHMFljR3Vy?=
 =?utf-8?B?OXJtbzFNMkF3TmNyOHhQM0tEVFdTZnp5ZmdiZUxJc2ZSNm1BNUN5VTVpYVYz?=
 =?utf-8?B?cEExdUM1dWV2RUg1Zk9QT2JZWDhqalBVZEwxRERzOHZIVVkrY0FuTngwcy9B?=
 =?utf-8?B?SjBCbTM3RFFtK1pTZGMzTUg2aFhkRW1xUHcrVzZ6c2N2QWI5Q2orYnA3OXlj?=
 =?utf-8?B?RWxDOGJmRjc5eUFaeS9sNDZ0K1lQV1ZlZlFoWm5WQ3hxUjRMekpOQjJiSERu?=
 =?utf-8?B?SVBySVRCVTZmVzlERDFINHIwNG5BSExvRXFqclg5dXVGcmVzU0tiaGlrYXVU?=
 =?utf-8?B?RDdCcXp5U2xudzdFeTJsY01OakVCVVIxYWNTWWRXZkJocnZ2QXQ4V0lKL1hL?=
 =?utf-8?B?bFhpVm5iTURGb2RkczY2YTJYVzlyK25VTTZHbUM2SWE1Z0tmUndJODNiUnlS?=
 =?utf-8?B?Y05SbGxLalJJL0t3MzBldXVjcHMwOTlINzcraUZ2MmFZTG1oOHJNb2pMclZC?=
 =?utf-8?B?eGFQbVZtMnl4OWxMaEZQQWcxYW5xVDhPRHFnY1poWXprZEd1bDVrY2hxdGRC?=
 =?utf-8?B?VmJBUVFzenhJcG9Xc3VwT3ZIMGNuS0wvUVpTZnJRWXJGdVVjUjFMTjl3WTZJ?=
 =?utf-8?B?N3ZqZzE5NVhhYm5HOHpSc3hCUE9NTysxVjBlM25PNk5CdmJ0VFI0SlRGZjU4?=
 =?utf-8?B?Nm9JczdDZGhRaWRtaGhPSWVwUlkxOTZVM1pTcEFTQmE5OEtpNS9xNTFEZmNC?=
 =?utf-8?B?ZkVyb2ZUUjhjNmZhVDk0bFVrL0VNWmpGZ2pJVlhzZG1HNGhmbTJ3cUxwekhx?=
 =?utf-8?B?MUdJYjBOYnA3MzBQcW5xbExDODdEaytnYTlwV2gzL0NqQVlFMVhwZjdsUlk1?=
 =?utf-8?B?S1RDK3h2Y3RSRVJBK0xDUkFTNXQwZDN3aUJCKzF3b2orZzc3OEdpb0xwWHZW?=
 =?utf-8?B?SURxRXZzeW5wbm1RVkF4N094K2lDTm9MejgrbHByYzhqalc0N1ZVTGFja1Vr?=
 =?utf-8?B?bXhyeUduT29EajUvMHVuTmJOeHZ0K1EvK2ZzOVY4N20xUkZrY3hlMnA3eDdP?=
 =?utf-8?B?aHlrWHMyVTE2ZFU4SytaMWdjL1dDRGFMem5HQkhPUm1mcnBzVTlCUGlxbE0v?=
 =?utf-8?Q?spXxznQpao0=3D?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM4PR11MB5341.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(376014)(366016)(1800799024); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?bHNkY0pOb0hmdFVva1E2V0sxeUJtZkVRL2lxa3o1S0daeWpmWEcvM0hWMnpC?=
 =?utf-8?B?MVV1aW4wL1JWMUdOR0dBbXUwWnVhQVVtRHBxdHRKaG9QNm9CM012VlRqa1Zl?=
 =?utf-8?B?cWJHZHVjODNqL05DWTd2S2RTNUFTWGZyaGNUZEhxeW1kbEZyemhweGVQNDR1?=
 =?utf-8?B?VVlWZ09mK2hTd3BhdjlNaXFFL3lYUlpXdndxYkg1d1BQcUxtWW03Q0FsTTlq?=
 =?utf-8?B?dnZ2aWxxM1RJYjBZSHl6T1ZsdzQvcFdiclRiRzRwdENicVVYNUZzdmsvaG1K?=
 =?utf-8?B?MFVES3JiVHJiYzNLbEFLNERRK09tSU1hNmt5WHU0ZUJoVXZOWTNUZno5RTkv?=
 =?utf-8?B?UTVacEtaaUh1MGNPaEliTE9Ocm1MRCtWZElxRTdTcEhVSUlDaE0yVEx2K3pC?=
 =?utf-8?B?WnAzaE5ES1RwTi9jTm02K3RNVE55T3Q3SE95VUQ5Q05xWDBkb0hkbmFTaEp4?=
 =?utf-8?B?bVIzeFJEOFVDSzE5dWRoc01qZUhaVElRMU8wNmtKNlY2bWZuZytXMmxRM0Nx?=
 =?utf-8?B?TnJySVBUYmJqeTRmWVNYcTd2NGVXdlNrT0dPRDRDaHU4SytWRzRTUWJTNHlJ?=
 =?utf-8?B?ZWh0TXovYTZyemMybkh4S2RzOTQrM1dWM3BaRXhvYjVPdmRNbU5mc0tOcytC?=
 =?utf-8?B?YTRmYk9xYllTTlBxaGN3QmVnV3J5ZG03aldlMXVpQXV5bDEza3NUMXB5Z3JB?=
 =?utf-8?B?aWVPbDROemdGdUp5OVcyVGxkdlVnMHpyUE9RcUc3YkQrK0MvZ2ZXKzlrenNW?=
 =?utf-8?B?elIyTDh6c1FXVFZkU2ZBeVRYVkdZNVVsZHpDTlZhaVBXZkF1T25wZTV2Nm5q?=
 =?utf-8?B?YUdLeHM0eTR4VE9ZYXNrN3pxa25YQ2RqMlJHQ1ZmUFZtUW9qWndBRzZrenA4?=
 =?utf-8?B?ckc4V2o0N3Mxd1BUUXNsTXNtOTVhWGQrdlg0QVlZQUpVYm1ZOG5CWGNzY0VX?=
 =?utf-8?B?eVNzSyt4WUhYMFphUzRwVGd1b0RtOWJmc3dmT1pwME93SngvdHhiNk1CQW51?=
 =?utf-8?B?YjZJaERWN0F5SkgzUUN0NCtCUFpYRE11czJWcy83MWJzMmFjeEVjcHN4bjVQ?=
 =?utf-8?B?c3FLbjdIWXQzbjZBRDFCS3hpNnJlT2JId1ZQa29IVTdxZFJ0bmdrdEpTWXdo?=
 =?utf-8?B?ZlNpcWFoYm5HNUY1aWhWWk4vVFNOOGwxV01welNuc2NtQ1NqelVaM3FjTWtY?=
 =?utf-8?B?bS9nNUVQSzBoZmU5TkFwM3N6dVBaa3VyR3RreFFFQjV5Zy8vU1RVWVFVR0dQ?=
 =?utf-8?B?QnZCNWQyWndHM3QxT1NTayszcmNUeG5rV2VDT2Q3T1BxV3RvYUUrTVg3aldl?=
 =?utf-8?B?Q1JaeEt5NjM3QVlvMGcvalVmaDJDb3RDWlphZXI0NSsvZVpES3RORkZySWVt?=
 =?utf-8?B?L2Z3VWs1VlRNNUVQVFBMNTFwalRHcXdWY0NuWUszWGRhMWFzSVZGNnhqdGY3?=
 =?utf-8?B?S3ZuVDMvRm5LMEE0dWEycGZtTk5ySW52dkVWSHdlaSthY0ZtR0pIQ3hYUkgw?=
 =?utf-8?B?QmFEMER2TEYwa3ZTZTZKRkZLNFRVK3lzUW1TUXdCKzRDMk94dklpbDZWNktI?=
 =?utf-8?B?QUVwYmR5YXBvRFJQNGhibmdza1hpdzdTNExobkZDMGRxYWJsV1g0eWdHQVRZ?=
 =?utf-8?B?cE5ud3ZJOStHWEszdDVIeXgycDV0MmtlZnc3a25MblcrOXV5cFBQRy9ZVGh4?=
 =?utf-8?B?b0U2Z0pYRVhwUEpoVmc1aEJ5QkdqdDV3VDRZYXh0U0Yxcklnb25kSTBsNHZx?=
 =?utf-8?B?VXhGSG1KQUlqZTFxWlRlTy96cGR0aU12RHVSbXpDY2M3Ri9aNmxkUDFuYUk0?=
 =?utf-8?B?RjRUYVU5eGFTZmRNOVlodkJjRG9wdlBpblI1WURxaTVqY2pTYlp1aWJOaWk1?=
 =?utf-8?B?S0trL0VYSE5TbVo0NGRuS0lJd0tEcWh3RG5MTFlKWEVzcVFDbVMvNjFpM1Q0?=
 =?utf-8?B?OUdvTzEzZCtPdnJNbnA1V0NDTXRNdGZwcjNXYVU2b3Z0aElmaFk4UFBYWU9o?=
 =?utf-8?B?aE4xL2RqdjZwM2h5cEZhcVMxVFcwbXFJRy9vWWNIbWVkVHpYb2dSc1pKYWdE?=
 =?utf-8?B?KzRNbFlCUXNIVlg5S0dCbW1QLytPeEVUekp0dTdSMHdwOVRTYmx2djZlWkRZ?=
 =?utf-8?B?OGZEdkpIS3RQQ1JHZ1pyeGtWQkppMDZ3NTNhMkI3WE1MTy9yRFh3OGNKb3Vi?=
 =?utf-8?B?dHc9PQ==?=
X-MS-Exchange-CrossTenant-Network-Message-Id: fc88fe8f-c474-4277-2c08-08dd8c9f0483
X-MS-Exchange-CrossTenant-AuthSource: DM4PR11MB5341.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 06 May 2025 13:07:56.3478 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: +s9MtJCNwed8U8KZzsfYbgy5qsKQFti4k5Ognqr/ji4untG2nRorjhPZr26LTPcwAl+04BM/FldYSS6KT3RwrPoV/7MKxMkjmnDUq59Lk6g=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: BL4PR11MB8797
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


On 4/28/2025 7:01 PM, Imre Deak wrote:
> Factor out helpers that can be used in a follow-up change to query the
> minimum and maximum pipe bpp supported by the HW.
>
> Signed-off-by: Imre Deak <imre.deak@intel.com>
> ---
>   drivers/gpu/drm/i915/display/intel_display.c | 28 +++++++++++++-------
>   drivers/gpu/drm/i915/display/intel_display.h |  3 +++
>   drivers/gpu/drm/i915/display/intel_dp.c      |  2 +-
>   3 files changed, 22 insertions(+), 11 deletions(-)
>
> diff --git a/drivers/gpu/drm/i915/display/intel_display.c b/drivers/gpu/drm/i915/display/intel_display.c
> index b4ddffe53e23f..cf2c11826ffb3 100644
> --- a/drivers/gpu/drm/i915/display/intel_display.c
> +++ b/drivers/gpu/drm/i915/display/intel_display.c
> @@ -4301,6 +4301,22 @@ compute_sink_pipe_bpp(const struct drm_connector_state *conn_state,
>   	return 0;
>   }
>   
> +int intel_display_min_pipe_bpp(void)
> +{
> +	return 6 * 3;

Hmm.. I think this is DP specific, for HDMI min is 8 * 3 = 24 bpp.

I see this is function is used while checking for min bpp while adding 
support for forcing a bpp for different connectors.

Would it make sense to make this connector specific?


Regards,

Ankit


> +}
> +
> +int intel_display_max_pipe_bpp(struct intel_display *display)
> +{
> +	if (display->platform.g4x || display->platform.valleyview ||
> +	    display->platform.cherryview)
> +		return 10*3;
> +	else if (DISPLAY_VER(display) >= 5)
> +		return 12*3;
> +	else
> +		return 8*3;
> +}
> +
>   static int
>   compute_baseline_pipe_bpp(struct intel_atomic_state *state,
>   			  struct intel_crtc *crtc)
> @@ -4310,17 +4326,9 @@ compute_baseline_pipe_bpp(struct intel_atomic_state *state,
>   		intel_atomic_get_new_crtc_state(state, crtc);
>   	struct drm_connector *connector;
>   	struct drm_connector_state *connector_state;
> -	int bpp, i;
> +	int i;
>   
> -	if (display->platform.g4x || display->platform.valleyview ||
> -	    display->platform.cherryview)
> -		bpp = 10*3;
> -	else if (DISPLAY_VER(display) >= 5)
> -		bpp = 12*3;
> -	else
> -		bpp = 8*3;
> -
> -	crtc_state->pipe_bpp = bpp;
> +	crtc_state->pipe_bpp = intel_display_max_pipe_bpp(display);
>   
>   	/* Clamp display bpp to connector max bpp */
>   	for_each_new_connector_in_state(&state->base, connector, connector_state, i) {
> diff --git a/drivers/gpu/drm/i915/display/intel_display.h b/drivers/gpu/drm/i915/display/intel_display.h
> index 3b54a62c290af..b6610e9175a7a 100644
> --- a/drivers/gpu/drm/i915/display/intel_display.h
> +++ b/drivers/gpu/drm/i915/display/intel_display.h
> @@ -524,6 +524,9 @@ void intel_plane_fixup_bitmasks(struct intel_crtc_state *crtc_state);
>   bool intel_crtc_vrr_disabling(struct intel_atomic_state *state,
>   			      struct intel_crtc *crtc);
>   
> +int intel_display_min_pipe_bpp(void);
> +int intel_display_max_pipe_bpp(struct intel_display *display);
> +
>   /* modesetting */
>   int intel_modeset_pipes_in_mask_early(struct intel_atomic_state *state,
>   				      const char *reason, u8 pipe_mask);
> diff --git a/drivers/gpu/drm/i915/display/intel_dp.c b/drivers/gpu/drm/i915/display/intel_dp.c
> index 0f89a301e4a0d..73ca9f8efefc5 100644
> --- a/drivers/gpu/drm/i915/display/intel_dp.c
> +++ b/drivers/gpu/drm/i915/display/intel_dp.c
> @@ -1198,7 +1198,7 @@ intel_dp_output_format(struct intel_connector *connector,
>   int intel_dp_min_bpp(enum intel_output_format output_format)
>   {
>   	if (output_format == INTEL_OUTPUT_FORMAT_RGB)
> -		return 6 * 3;
> +		return intel_display_min_pipe_bpp();
>   	else
>   		return 8 * 3;
>   }
