Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 5A996C5A437
	for <lists+intel-gfx@lfdr.de>; Thu, 13 Nov 2025 23:03:10 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id AE5CE10E203;
	Thu, 13 Nov 2025 22:02:54 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="Qv6PzYel";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.15])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 1D79B10E200;
 Thu, 13 Nov 2025 22:02:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1763071373; x=1794607373;
 h=content-transfer-encoding:in-reply-to:references:subject:
 from:cc:to:date:message-id:mime-version;
 bh=3xO7i2XNWdd/khEiUMtF6DIKiCMW6d0+/1Re3AkG87o=;
 b=Qv6PzYelrEg3vjeedK07lkOL1I5WYGCqNejGrR+Dz7LS9+AixSxKk/I+
 2dEBbyKSWHgamdvhy8WOh7RD4QMdT3G2k94FuK3PzAs6XwWrYI9MiCaED
 NM4hDh9dXqPE6CA4kMwT61GLwq3I2uaJXKBs4pTHp1kDr9iTy4rTiC1ar
 DQNOyESJKKsTUQQwUNgKju3Co7jvDXZNxFDLzPhvOmeghkZ2XAbEARK37
 w1Z8+UYscoUCEiaxlXLpHLkMD3brz7bzBrjSyf+QCXy/m+YFQ5HMKjRIF
 tIxB+KxhHnLDiW+XdPnwVxxx8ensExQYd+Sl0z8HbHi8QgFZF9QzMG+Ab A==;
X-CSE-ConnectionGUID: NOXBDSC7QK+m7D3jeinWnA==
X-CSE-MsgGUID: z1NxqrPpQqO19m6u+lYwpg==
X-IronPort-AV: E=McAfee;i="6800,10657,11612"; a="65259678"
X-IronPort-AV: E=Sophos;i="6.19,303,1754982000"; d="scan'208";a="65259678"
Received: from fmviesa002.fm.intel.com ([10.60.135.142])
 by fmvoesa109.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 13 Nov 2025 14:02:53 -0800
X-CSE-ConnectionGUID: pHXHqAzhQESCPOuJ9u9ErQ==
X-CSE-MsgGUID: 3lGUtYjkQJ+zVrTP6JYeJw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.19,303,1754982000"; d="scan'208";a="213018112"
Received: from fmsmsx901.amr.corp.intel.com ([10.18.126.90])
 by fmviesa002.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 13 Nov 2025 14:02:53 -0800
Received: from FMSMSX903.amr.corp.intel.com (10.18.126.92) by
 fmsmsx901.amr.corp.intel.com (10.18.126.90) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.27; Thu, 13 Nov 2025 14:02:52 -0800
Received: from fmsedg903.ED.cps.intel.com (10.1.192.145) by
 FMSMSX903.amr.corp.intel.com (10.18.126.92) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.27 via Frontend Transport; Thu, 13 Nov 2025 14:02:52 -0800
Received: from CH1PR05CU001.outbound.protection.outlook.com (52.101.193.48) by
 edgegateway.intel.com (192.55.55.83) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.27; Thu, 13 Nov 2025 14:02:52 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=lLK+GzT7vLuw9QVmhetGCeJQEBBLhIpNm6FpJ/PalM/9YqcPkspGrmqbB8O70Qjhr6cHKTw2O9NTylsA+t63+00QnK7o2gmeqCWL56JA6cDMjIKdZmX2SVd1vf808Vg4/pa0IIACFiBO6iYJviz7f1HCZ+ArgqozPnhFGlM6bpWzjhQv232ORXvm0phjg5AoiB01HyfvKXZZmGzmsMdiGUjkcF8kRwdxLGTV4Xm7oPqN0/GWDvzHNelbqsh29L0DAQ0Rawcl/M9KMT3HFH7/gWvETYS/siRntYrykZMIT/JOvcrIZISupdLeyfmwth4OnLM3Y0KDr4GRDlPELb/9vQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=2zx5uHHIX87C9aYxsS52LXq+AFsGt3dapO4gQw1VLGA=;
 b=xvLWeMa1C32ZlGb0SLUNcwkCGBPob43obyo4oTJHwXFxcZ161nIfTJO+UcDkqAC0bIWGUiahacFTGLrwu0cLcxrHG42rHNtxP3FcY8ohBszj9njmL7XL5P1S7CV72Znr5PBcJxxxPfwJXZUcP/gnGoEhGTG3vkoUgWmTj+LgD3BKwrbOElTuY+BjuTJm0Op/kRvq/4kh5vT8pB6HVaZK86y64rV0hioN7XIo8vMjwCHPzQWmSE6p3I02LzaquHLe/KZaECIiRWv43CgcYBBwRhRmkaTYL3fLBtQEY2/Q5gY6HFbai87fsrnD9mIvba/lZXDP+JbKelSXPDg2Teon0A==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from PH8PR11MB8287.namprd11.prod.outlook.com (2603:10b6:510:1c7::14)
 by PH8PR11MB6802.namprd11.prod.outlook.com (2603:10b6:510:1ca::19)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9320.17; Thu, 13 Nov
 2025 22:02:50 +0000
Received: from PH8PR11MB8287.namprd11.prod.outlook.com
 ([fe80::7e8b:2e5:8ce4:2350]) by PH8PR11MB8287.namprd11.prod.outlook.com
 ([fe80::7e8b:2e5:8ce4:2350%7]) with mapi id 15.20.9320.013; Thu, 13 Nov 2025
 22:02:50 +0000
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: quoted-printable
In-Reply-To: <aRS0vlGbTdn9m8dm@ideak-desk>
References: <20251107-xe3p_lpd-basic-enabling-v4-0-ab3367f65f15@intel.com>
 <20251107-xe3p_lpd-basic-enabling-v4-4-ab3367f65f15@intel.com>
 <aRS0vlGbTdn9m8dm@ideak-desk>
Subject: Re: [PATCH v4 04/11] drm/i915/display: Handle dedicated external
 ports in intel_encoder_is_tc()
From: Gustavo Sousa <gustavo.sousa@intel.com>
CC: <intel-xe@lists.freedesktop.org>, <intel-gfx@lists.freedesktop.org>,
 "Ankit Nautiyal" <ankit.k.nautiyal@intel.com>, Dnyaneshwar Bhadane
 <dnyaneshwar.bhadane@intel.com>, Jouni =?utf-8?q?H=C3=B6gander?=
 <jouni.hogander@intel.com>, Juha-pekka Heikkila
 <juha-pekka.heikkila@intel.com>, Luca Coelho <luciano.coelho@intel.com>,
 Lucas De Marchi <lucas.demarchi@intel.com>, Matt Atwood
 <matthew.s.atwood@intel.com>, Matt Roper <matthew.d.roper@intel.com>, "Ravi
 Kumar Vodapalli" <ravi.kumar.vodapalli@intel.com>, Shekhar Chauhan
 <shekhar.chauhan@intel.com>, Vinod Govindapillai
 <vinod.govindapillai@intel.com>, Jani Nikula <jani.nikula@linux.intel.com>
To: Imre Deak <imre.deak@intel.com>
Date: Thu, 13 Nov 2025 19:02:24 -0300
Message-ID: <176307134407.3698.3084464246962047280@intel.com>
User-Agent: alot/0.12.dev22+g972188619
X-ClientProxiedBy: BYAPR05CA0087.namprd05.prod.outlook.com
 (2603:10b6:a03:e0::28) To PH8PR11MB8287.namprd11.prod.outlook.com
 (2603:10b6:510:1c7::14)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: PH8PR11MB8287:EE_|PH8PR11MB6802:EE_
X-MS-Office365-Filtering-Correlation-Id: 496ec1bb-3019-444c-dbdc-08de2300625f
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|366016|376014|1800799024;
X-Microsoft-Antispam-Message-Info: =?utf-8?B?OENYSURuM2ZyRWtNUEhCbUxJTUtuVllGSGVkODl2VnNKVlUzN3EwYmdoaVQw?=
 =?utf-8?B?MVdlV0RTYWgxaUgyRGVlams4Uy9NclBxTlZ4MnU1SWNDUXRScEcvUFJSRnk4?=
 =?utf-8?B?UjdZeTFBZ2x5ZDFQQzlJRWwvU2V1YUxlVnB2d0tNRWRUb3phYVlHZ09mVmMv?=
 =?utf-8?B?ZHljNGRZcFU5bG5Hdytmei91N1VXVktlNTNxRTVXSzBHOEtOK1VOa1N1aDhQ?=
 =?utf-8?B?ZWxJTDI2RC9ibFJ4NDI2VHRTUU1hRVlWUFhkL2FsZlRpcHJNYU9ENEgzOVVw?=
 =?utf-8?B?dFgvTTN5SHgvOWRmb0FPLzVJcm5QODhnRUdUWTJkQ0duWDZpWFpPMzBMMFZT?=
 =?utf-8?B?Sk91QTBYOXMvNEh1Sy85N3FTblVTRUprcTFCVXlmS29wUDJDQkY2Y1dhdllC?=
 =?utf-8?B?TEVkMXpBdHlYd3VISXI5NE5ZVUtzc01oWkF3dHY3aXR1emFjU29IZ1p1T0xo?=
 =?utf-8?B?TXc4VFhGZEZPVkwwVUhEZ21yNGZMb2psRW12cmJUNkZHYTQ2TlJXWEVXaWpj?=
 =?utf-8?B?WEcza2ZFOHk2QnZkblZ2ZDNNbTZ3QzM1TG9DZDYxaEJlZjVqNFFDajFuSmpC?=
 =?utf-8?B?MlVXU3NsZENiK3JOTElrREVjNTQ5S2xvT3hUWHlFZjAyOFJOKzkrT3I2aElq?=
 =?utf-8?B?YnFJUFFRRFFjbndiU0Z3T25kZjZ0UkllVFEwNjBXM04rVG1jcTdsamdnOHdO?=
 =?utf-8?B?QW4xZTZHaUxNRnBsbW13M29rdU9hZzEwUDVmbE1mMG9sRUtHeVJFTEtoNllD?=
 =?utf-8?B?V1Yra20zbHIveUp6c3RxdW5sa0RTcWk0ak1JbGlkMjUrZkczSXFUMEE5RXpF?=
 =?utf-8?B?Q3Q3em9kTUg2WVNodUYrWm0xY0pKMnpJYVZ0OFY4Z2svMW0vcHNBRGtBNTl3?=
 =?utf-8?B?UDBQQ2daUTdnZDIrMHNmSHVXOVRYOU5CeFRRenZMdXU5Zno3WUFHaGsxRERP?=
 =?utf-8?B?RFdKa1ovckJDY0N3SE9HYnNvdDE3K0VPOUZrRXpiUVp5WEVuTitrNXFhTXEr?=
 =?utf-8?B?K3VJbHA3b3YwYlJiblYyRnU4Y2pTd3o1aVk0d2FKWE5IalNKTE5rekU3dG1T?=
 =?utf-8?B?bU56aWxOSlhUczdnQ08relhiL2trOFMyQThTcEMxYytaRU01ODIxQ3lDMHE2?=
 =?utf-8?B?WTRNQ2YvOHdqWWNsZ0REb1VPb0FKeGlpRFAzM0cwdXRoN3NEQkYyd3psZ0tI?=
 =?utf-8?B?TlErWDI5Qkc2Qy84ZzVaeUJYRmdRUGliMzhrb29POHZrZUdSMFNXUFhka2ln?=
 =?utf-8?B?Smd1WnpiZDRoblRKZkQ4dWljcEF4S0NJZk5UZW4wUnBpeENkV2d1ZnNCYndT?=
 =?utf-8?B?VlFGeUdIU2MyZ1Vsb0pyOVVmbHBLamE0UVZvUVMrV3VsSGpNcVRrbFhhRFBB?=
 =?utf-8?B?bTlOK2tTRllia2VvMlZZMEtWRnE1cEJ6dzlYaXY5ZVNnYnkvUWl6L1FxMUZ3?=
 =?utf-8?B?TmxmcWVLNjh2TXNVdU1USzZBSmxYU1VaR2ZsT1JKR2REb21XK2hFS0tLbXJm?=
 =?utf-8?B?ZGxpU3NXUWRtSGQweXd0N0JhMnh3eFdRTGk0cE81STlXKzF4dXlpdUJWZjFj?=
 =?utf-8?B?MTNoYURyWXk0WXFtSTh0NXUxVDg2NTU4Z0NKZ3FxbUdGSGJzZTE3VjREOVB3?=
 =?utf-8?B?TC8zcnN6L0lvN1hPYzRpZllFZUp2aUI3OGRzQ0RGbUdqWGt4REVZejZMZUpG?=
 =?utf-8?B?T1NHSXpsZ1dOem9lUytCUjcrMnRNU3hGWDRzaEhVdzZrbjdkdzN0OERtV2lY?=
 =?utf-8?B?NXliQ2hGYTBjSERmcGtIc2x1bngwMktob0p3cUNtRGZhbHZjL0FFbmRZYTlE?=
 =?utf-8?B?cm1COW8zaGFIeVFLbW0rMUZkRW4zemN4TmhudldTTjVjd3MwQ1Z2YTZLc2NW?=
 =?utf-8?B?aHNraDZhWEJrTzQ1aE9qbFhweHc0RHFFS3hhV202eGU0M3V4YnhTci85NnZU?=
 =?utf-8?Q?Vn0ZS6QjD7cao9LCinDH2tl6ECv64NSr?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:PH8PR11MB8287.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(366016)(376014)(1800799024); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?OG03cWlKNGltMjdlRE83RkRJb0g5bzJrUE45VlQ3ZCtvakZ3T1lkVkNvQkFO?=
 =?utf-8?B?dk1QZ1NTYjV1SURuRURMYTNWQkE5NWU5VTlXYkphQzNuVzFLTm13RUcwUWJD?=
 =?utf-8?B?M2h4UVo2TnkzQXFqVUJpMnJSQTZrd2UwOHdwWlVGeFUxcmx2cFZtTFpIeERk?=
 =?utf-8?B?MlYzY211TWYvY3U5ZWpidWZ5eGcvUnFuR3g2TlhYZk1VL3B5S1hmaWNNYjJX?=
 =?utf-8?B?TGdWRmEzWE85cVpjdVVTMS9HNytCUEVmRVcyYnRRUWNCNXJiZmR6ZDluaTl1?=
 =?utf-8?B?NUhsdUlvc0lTU3EwMmM4d1RTLzE3akZZR1FUTlZZSHZxOStzSTVCaEpXc3pq?=
 =?utf-8?B?cmhNT210eUVGZTNySlhWajJvemQ1Y0NVUFFmOE4yWUs4eWhqMFVWWFl2S1oy?=
 =?utf-8?B?VFpUdFRiRTBtU2ZjUGF3dFNLcGxHZG1Jb1RvU1dvRTg0RnZjOUxVZHplczZO?=
 =?utf-8?B?Q0YweHRuNHlIelpseFFpL1huNTBwVWhQSW5mSEVTd0ZHYnA3N3NwUG9QZjRj?=
 =?utf-8?B?cU5OR0pVVjhycmJsa0h1MmdpekZLcU5sOHdSMjZXazBaS3RjVGw5MXI0WCtM?=
 =?utf-8?B?b2FXeE1MUzRkRFZZRnN2VTVWVDh6UTJoaXdpeithc2dPTTV0T09UeTlhcU5z?=
 =?utf-8?B?NGFPbGxsUWVVNWlxRER6THYzSTJuZWVBSnJWT2k2QStHMUplbFBKc0NqbXpJ?=
 =?utf-8?B?WStaZ2h4Nm5YVng4dis3MXVTM2VPL3hiUjRnNEZZb3Rvc04wcDZoMnpzbGR5?=
 =?utf-8?B?ZGFEZnl0L2RTYW1QNENtOUZSRlQ5TjJuRGIwc0pWTC9ZOUhYMjlSOW0vT1Ux?=
 =?utf-8?B?NXE5dFN4UkM1cjBRTkdDQVVteDZLa1U1WTBMNDZQRVZTaDlZYS82L1VlbDBl?=
 =?utf-8?B?ekE1YWh4RmdvMVc3SVF1T096QUhZTVorbDJDendFSGdDQXJqc1V6eTNYbm1r?=
 =?utf-8?B?YllLSTNPQm5aNzZHNUxrYXZKSVNkSXV5YUU2ckl3RDBoZnFGUTNWMjlGSHU1?=
 =?utf-8?B?eTFrZ0UxM2FDUThuTXBRUHRyYUU0MnZEb0d3SnJjMHlFTUdmMXNmQ05BcVhO?=
 =?utf-8?B?c3BFYnBNU0lwU2tHV1B5WEZoajJ6bGhPeUlwazNhMjR6QmxnQkNQaFBsbXBJ?=
 =?utf-8?B?TVdONytCK3N2dXVkOXE1amlhOGJuRXgrdjEwU0JJOW5RZzgwWmt2M0w1OHR5?=
 =?utf-8?B?WW0vVHB6ZXJlcFR4RGtxTngraEFoS0RYaE5DRVVZSHJBN2M0QVhvOXMvR0tl?=
 =?utf-8?B?Z2h3NVFTNm5pc1JMaWpzZ3FLTWJ4K0tZUktWNlZGMGdReXBjVkpHdXE2Nlhn?=
 =?utf-8?B?OXZnTWxiTUhzSmNPdUV3eXNXS1JBRnFtTVBwQlhFVXk2NjR6dTdEMUwxeGJm?=
 =?utf-8?B?a2Z4NlQvUWRPVFZ4RzNBR0lHR0h0YWVSZmptczN4dytWbFZLb3ovQWJSQlRi?=
 =?utf-8?B?RXhZaFlNbUx1MnZOcTl5Um5MR3UvenJwR2ZTRlMrVHEwOXR6OUNXS3FuZXBa?=
 =?utf-8?B?TkNISFZSNVk0cFNWTnNVSGhWdERKSjNIcno1UlFheS9vVUVxb1pZYXdITEFF?=
 =?utf-8?B?bDdLdkg5MmRtbWdSWGc3L2ZtUVRiTmdSOW82VXVNYWR3TFdiUTA3TjEyejM5?=
 =?utf-8?B?Q0dwU0ZHeTNCZElsdWdWd2VyZzVzZGxjZ1JYMDY5VXNUbjJlb3VidmFIWlZF?=
 =?utf-8?B?Zm9mb2ExYVF0djFEOVRrWUxLVW1zTVNJaVlyeGdzWGpnbXZERUFjaDZXSkl5?=
 =?utf-8?B?NHhyTkhhR1lVN01Vd0pyVG5jL3pySFpUTjdiMzFOU2RHc045RDBOeHRwWFpW?=
 =?utf-8?B?UU95alV6UExWbzdsaENTZzBzNEl1TnBBNlpKbTk4a1lLenYvNXpxWlFoSGw0?=
 =?utf-8?B?SDhoL2VaR2pORStkUHd3eTQ1K3NzdGFnYXdaSyt6NVVBUW11Y3ZMQ1Q5YlNY?=
 =?utf-8?B?VU9CNkhrSVlvVENUOFRJRDZUOUxxTU5xRVdLS3VPdDJoWlh1bE82a2p0dlhM?=
 =?utf-8?B?a280MTVSOVVvY0NsVXZ5bTFNTGp6NGpjNjA0ZUI2U0c3bnh0WWk0UXhHS01S?=
 =?utf-8?B?M2lpK0t5S1lqcmU1NnIxZHU2ZTBQdXUxcXlpN2JMN2NSMzFZZkRJZmxkMnNM?=
 =?utf-8?B?bmxKdVhva3BwT0lKVkNZc2ZkK0FIcytpdnBKS0xzYzdUS2x5UDNubDNsaHcx?=
 =?utf-8?B?dFE9PQ==?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 496ec1bb-3019-444c-dbdc-08de2300625f
X-MS-Exchange-CrossTenant-AuthSource: PH8PR11MB8287.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 13 Nov 2025 22:02:49.2893 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: q+cnX/SQqjV4UowsrSx6sKM8P2brdmCYdZr8AcgQLMJGRxP6vlhrQUMnYfnwZPlbWOEnTEoPMcv+i3H+YeRfcQ==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: PH8PR11MB6802
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

Quoting Imre Deak (2025-11-12 13:24:30-03:00)
>On Fri, Nov 07, 2025 at 09:05:37PM -0300, Gustavo Sousa wrote:
>> Starting with Xe3p_LPD, the VBT has a new field, called in the driver
>> "dedicated_external", which tells that a Type-C capable port is
>> physically connected to a PHY outside of the Type-C subsystem.  When
>> that's the case, the driver must not do the extra Type-C programming for
>> that port.  Update intel_encoder_is_tc() to check for that case.
>>=20
>> While at it, add a note to intel_phy_is_tc() to remind us that it is
>> about whether the respective port is a Type-C capable port rather than
>> the PHY itself.
>>=20
>> (Maybe it would be a nice idea to rename intel_phy_is_tc()?)
>>=20
>> Note that this was handled with a new bool member added to struct
>> intel_digital_port instead of having querying the VBT directly because
>> VBT memory is freed (intel_bios_driver_remove) before encoder cleanup
>> (intel_ddi_encoder_destroy), which would cause an oops to happen when
>> the latter calls intel_encoder_is_tc().  This could be fixed by keeping
>> VBT data around longer, but that's left for a follow-up work, if deemed
>> necessary.
>>=20
>> v2:
>>   - Drop printing info about dedicated external, now that we are doing
>>     it when parsing the VBT. (Jani)
>>   - Add a FIXME comment on the code explaining why we need to store
>>     dedicated_external in struct intel_digital_port. (Jani)
>>=20
>> Cc: Jani Nikula <jani.nikula@linux.intel.com>
>> Cc: Shekhar Chauhan <shekhar.chauhan@intel.com>
>> Signed-off-by: Gustavo Sousa <gustavo.sousa@intel.com>
>> ---
>>  drivers/gpu/drm/i915/display/intel_ddi.c           | 11 +++++++++++
>>  drivers/gpu/drm/i915/display/intel_display.c       | 19 +++++++++++++++=
+++-
>>  drivers/gpu/drm/i915/display/intel_display_types.h |  1 +
>>  3 files changed, 30 insertions(+), 1 deletion(-)
>>=20
>> diff --git a/drivers/gpu/drm/i915/display/intel_ddi.c b/drivers/gpu/drm/=
i915/display/intel_ddi.c
>> index 733ef4559131..d9aaeafd1570 100644
>> --- a/drivers/gpu/drm/i915/display/intel_ddi.c
>> +++ b/drivers/gpu/drm/i915/display/intel_ddi.c
>> @@ -5376,6 +5376,17 @@ void intel_ddi_init(struct intel_display *display=
,
>>                          goto err;
>>          }
>> =20
>> +        /*
>> +         * FIXME: We currently need to store dedicated_external because=
 devdata
>> +         * does not live long enough for when intel_encoder_is_tc() is =
called on
>> +         * the unbind path.  This needs to be fixed by making sure that=
 the VBT
>> +         * data is kept long enough, so that
>> +         * intel_bios_encoder_is_dedicated_external() can be called dir=
ectly
>> +         * from intel_encoder_is_tc().
>> +         */
>> +        if (intel_bios_encoder_is_dedicated_external(devdata))
>> +                dig_port->dedicated_external =3D true;
>> +
>>          if (intel_encoder_is_tc(encoder)) {
>>                  bool is_legacy =3D
>>                          !intel_bios_encoder_supports_typec_usb(devdata)=
 &&
>> diff --git a/drivers/gpu/drm/i915/display/intel_display.c b/drivers/gpu/=
drm/i915/display/intel_display.c
>> index 25986bd8fbdd..431f7f030a9b 100644
>> --- a/drivers/gpu/drm/i915/display/intel_display.c
>> +++ b/drivers/gpu/drm/i915/display/intel_display.c
>> @@ -1800,7 +1800,17 @@ bool intel_phy_is_combo(struct intel_display *dis=
play, enum phy phy)
>>                  return false;
>>  }
>> =20
>> -/* Prefer intel_encoder_is_tc() */
>> +/*
>> + * This function returns true if the DDI port respective to the PHY enu=
meration
>> + * is a Type-C capable port.
>> + *
>> + * Depending on the VBT, the port might be configured
>> + * as a "dedicated external" port, meaning that actual physical PHY is =
outside
>> + * of the Type-C subsystem and, as such, not really a "Type-C PHY".
>> + *
>> + * Prefer intel_encoder_is_tc(), especially if you really need to know =
if we
>> + * are dealing with Type-C connections.
>> + */
>>  bool intel_phy_is_tc(struct intel_display *display, enum phy phy)
>>  {
>>          /*
>> @@ -1885,6 +1895,13 @@ bool intel_encoder_is_tc(struct intel_encoder *en=
coder)
>>  {
>>          struct intel_display *display =3D to_intel_display(encoder);
>> =20
>> +        if (intel_encoder_is_dig_port(encoder)) {
>> +                struct intel_digital_port *dig_port =3D enc_to_dig_port=
(encoder);
>
>Just dig_port =3D enc_to_dig_port(encoder); ... if (dig_port &&
>dig_port->dedicated_external) would be simpler and would be also more
>consistent wrt. MST encoders.

Ack.

Thanks!

--
Gustavo Sousa

>
>> +
>> +                if (dig_port->dedicated_external)
>> +                        return false;
>> +        }
>> +
>>          return intel_phy_is_tc(display, intel_encoder_to_phy(encoder));
>>  }
>> =20
>> diff --git a/drivers/gpu/drm/i915/display/intel_display_types.h b/driver=
s/gpu/drm/i915/display/intel_display_types.h
>> index 00600134bda0..8bf392bc0d5d 100644
>> --- a/drivers/gpu/drm/i915/display/intel_display_types.h
>> +++ b/drivers/gpu/drm/i915/display/intel_display_types.h
>> @@ -1937,6 +1937,7 @@ struct intel_digital_port {
>>          bool lane_reversal;
>>          bool ddi_a_4_lanes;
>>          bool release_cl2_override;
>> +        bool dedicated_external;
>>          u8 max_lanes;
>>          /* Used for DP and ICL+ TypeC/DP and TypeC/HDMI ports. */
>>          enum aux_ch aux_ch;
>>=20
>> --=20
>> 2.51.0
>>
