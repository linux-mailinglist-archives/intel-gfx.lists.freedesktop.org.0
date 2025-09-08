Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 35646B48E22
	for <lists+intel-gfx@lfdr.de>; Mon,  8 Sep 2025 14:52:06 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 91BFD10E506;
	Mon,  8 Sep 2025 12:52:04 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="ivU62783";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.12])
 by gabe.freedesktop.org (Postfix) with ESMTPS id A9DCD10E506
 for <intel-gfx@lists.freedesktop.org>; Mon,  8 Sep 2025 12:52:02 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1757335923; x=1788871923;
 h=content-transfer-encoding:in-reply-to:references:subject:
 from:to:date:message-id:mime-version;
 bh=55VxkSv1EqXjWvuQnH/AQAC4BM3e4+q14UjMlRxJnNk=;
 b=ivU62783TJWofmIO71MuDGM7HLaZt/sU2Oswg5BtlemZfPD0WACF19ZF
 TivO62zkOFGKUr7/GjjMI8o195gJ26EW3lIPwkw6p+yNCkvouAlqtgHWK
 N1JOMHOB85WE825zsflYe6dOmmL3Wt+efpRpMi+ZCFai//YXEPdVfrc8w
 4jsu/TUWk2r++TZPvOP2bXo/DPZxVKRly7wevCnzC02fF4Fz3jeiRP/0P
 bkBC4DRsLhQw/2zG5LUlfe/mFGCcuM0gMw38Y3BpXTwIjILQMNCwJKVH3
 IKcfiQa7yHbPtb1wfo7Sg3QLBf6qvY7TD/Yj4iwg2qD91MPBulfyQFabv g==;
X-CSE-ConnectionGUID: 6sjoMzGfQIyZbcf4cBgqNw==
X-CSE-MsgGUID: Nohca1e5QC+iqdJpfoYlRw==
X-IronPort-AV: E=McAfee;i="6800,10657,11547"; a="71011660"
X-IronPort-AV: E=Sophos;i="6.18,248,1751266800"; d="scan'208";a="71011660"
Received: from fmviesa004.fm.intel.com ([10.60.135.144])
 by orvoesa104.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 08 Sep 2025 05:52:03 -0700
X-CSE-ConnectionGUID: MBSFqdDFQc2KXI6vx2kKxQ==
X-CSE-MsgGUID: bVXGrunVTvOJGz23U7Ukhw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.18,248,1751266800"; d="scan'208";a="177987782"
Received: from fmsmsx902.amr.corp.intel.com ([10.18.126.91])
 by fmviesa004.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 08 Sep 2025 05:52:02 -0700
Received: from FMSMSX902.amr.corp.intel.com (10.18.126.91) by
 fmsmsx902.amr.corp.intel.com (10.18.126.91) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.17; Mon, 8 Sep 2025 05:52:01 -0700
Received: from fmsedg903.ED.cps.intel.com (10.1.192.145) by
 FMSMSX902.amr.corp.intel.com (10.18.126.91) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.17 via Frontend Transport; Mon, 8 Sep 2025 05:52:01 -0700
Received: from NAM12-MW2-obe.outbound.protection.outlook.com (40.107.244.68)
 by edgegateway.intel.com (192.55.55.83) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.17; Mon, 8 Sep 2025 05:52:01 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=vmdnP2zSUO66Uv5hUR4y2Jc6ruoBa1j3+xgegqPKcrEkisnMsc+yO4LlkazXE3cF53PIRbimIISyHsX34pb/Ss5G3J8OpuKEVUQ63gfDHE2gMrl51PkczjrOO29wmqc/+eZz7euYzqlX7R3qbeVzPslfL9qhqn3GebQce5/TcMXqDThWW1oYV1B5ehjNOpZxbDFMZ1aOcqYGgkLwi38wibQsmcWd1Lu8j111WJFQdpTQeI8UJ9oGVZ+e32rLwyVXkHAvpDiYQXrCBwOykvtU2Q+xZQCYYpW8Wsg227cfa491wo6GpFkC2cFKv02YhMCZ9YDSi/QZrswtILw+XWKJMg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=sOAGJHv7l4sFeiqEola8E1FNIQJjRV4XbbHiGYhXd/I=;
 b=Lp/InQBJDK1gRH44mSwtGInH6AUKD+OecvA9dxP4tqoiwEoClriPKCIl9+GlCwGoOdG7OYCHla6XI2ySFpe/YbcfeuJDKJeJwWAp/KB3CVm1yhPWNrmZ32CJZm1nm6/DSroGTFTn+CstsaUzDV//AFw8iARdfAqE5hPGmziqv3J9+YKcu5jPDlB4RbifPkdREpIyapDC0ZCliQTHP/2qtvQvFdeoHxg+Vqg7wVE2fkwCgnVuTX1JSriP14PprGpUyg7YT0zeaci5zT+6qnpYeyVD0j4/SYqz4FJAxjB7fLnCY78EFoqzqbwIsazZXwMI6/jdObcNQpi7tXSaDml47A==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from PH8PR11MB8287.namprd11.prod.outlook.com (2603:10b6:510:1c7::14)
 by CY5PR11MB6509.namprd11.prod.outlook.com (2603:10b6:930:43::11)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9094.22; Mon, 8 Sep
 2025 12:51:57 +0000
Received: from PH8PR11MB8287.namprd11.prod.outlook.com
 ([fe80::7e8b:2e5:8ce4:2350]) by PH8PR11MB8287.namprd11.prod.outlook.com
 ([fe80::7e8b:2e5:8ce4:2350%7]) with mapi id 15.20.9094.018; Mon, 8 Sep 2025
 12:51:57 +0000
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: quoted-printable
In-Reply-To: <20250908073734.1180687-6-luciano.coelho@intel.com>
References: <20250908073734.1180687-1-luciano.coelho@intel.com>
 <20250908073734.1180687-6-luciano.coelho@intel.com>
Subject: Re: [PATCH 5/6] drm/i915/wm: convert tiling mode check in
 slk_compute_plane_wm() to a switch-case
From: Gustavo Sousa <gustavo.sousa@intel.com>
To: Luca Coelho <luciano.coelho@intel.com>, <intel-gfx@lists.freedesktop.org>
Date: Mon, 8 Sep 2025 09:51:53 -0300
Message-ID: <175733591378.1838.12709876861986493189@intel.com>
User-Agent: alot/0.12.dev22+g972188619
X-ClientProxiedBy: BYAPR05CA0084.namprd05.prod.outlook.com
 (2603:10b6:a03:e0::25) To PH8PR11MB8287.namprd11.prod.outlook.com
 (2603:10b6:510:1c7::14)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: PH8PR11MB8287:EE_|CY5PR11MB6509:EE_
X-MS-Office365-Filtering-Correlation-Id: 908b049b-ba11-4f1b-2ef2-08ddeed67f07
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|366016|376014|1800799024;
X-Microsoft-Antispam-Message-Info: =?utf-8?B?WkVkYStKME9CUEkrNG9yenZSRllwbUo5aVB5YXFjeFI0anF1anZXTkV0N2ha?=
 =?utf-8?B?MGt5OCtuZThBRE05Z2JLM25KRzhDSzhtTXpKSVFEa0hrc1l3Ly9md0U0NGhx?=
 =?utf-8?B?cktEemIzSkpyRWVGOUVkcndEUEp3dFNEYTQ0ajZQdWdScGtSQlFGTkV6b25i?=
 =?utf-8?B?eU0wNzA5ZmhUWFhrYVpRZFYvMXpLRE5LTHA0MS83T3dyNWU2K0ZocUhRZmNt?=
 =?utf-8?B?SitiUHk2T0JGaEExejF0b1RvcE5sTm9oeGVRV1hyY21QK0FKQTE2eUF1Q1Yy?=
 =?utf-8?B?TUZsbkRZVm9nVndCOElVNnBEeDhDRldPcXQ1cHhEck54Mzkxdnc0MlcwQnJO?=
 =?utf-8?B?ak93eFRkbG40OVd3UHQ4cnJTeStsMG9wWlZYTG9nNnFLc2FiNnQ4SUlQNGR3?=
 =?utf-8?B?d3czRVVQS0JmWlJrd2lzUGg4NTBNeHFIWnB1QjQ4K0FjMC95bm5JaFBVVENQ?=
 =?utf-8?B?YXhvNGtsbDlHNWRzRUkybkZGekI3QnF4ekd0cENzY1ZWTGU3blFva3RFaHZu?=
 =?utf-8?B?RFFTcjg1aGx1WTdidFZaUkxGdGNNQTUvM2N2OTZLbUc0MVRqMlRuN3g4K2pn?=
 =?utf-8?B?V0ZJMWpqdVEyUFdwOHlLeVJYVmdrY21vck9qOXBwdFdic3grSDdHOEVTcHdG?=
 =?utf-8?B?MUw2OEJQZWJMOUhMTDRIS21lWTNIQmc2RHRJQ1B1SUhYVkN1UlBxbm0yU1kx?=
 =?utf-8?B?ZXNRQ2RoRlNPRnFRVGhsRzhsQTZUVUplY2ZQK0NWU3NTd0NxYTlqNnZuaUQx?=
 =?utf-8?B?UDgyZlZnNGhEV0NSVFY3Yy9JSVovMi9UeW95b2x0TmtRSnprM2pyRDhRRlBF?=
 =?utf-8?B?TGduWlZCbFJzemNKZmlLREJ5WWwvSUVNUHdNbXJxODE5WkVPV1IyTmtnRDVi?=
 =?utf-8?B?QzJGQ1RXME5FK0tlWWNXRld2WFF1aTFNWkhKVngzWmlabnZrOFA2bTZ2b00v?=
 =?utf-8?B?T21FME1KMmpnbzV6MlBybVZmZGlzU2RwbE5wVlhQYnFQV0pJMTRmb215UjZi?=
 =?utf-8?B?UjQyTjhuSEQ0eVlxMGtDb3JoSmFHYmFqVURBaEwvUjJVL2hQcTFCNDFrcS8v?=
 =?utf-8?B?RlVwTEMwYmp1d3FVN1M5azAwWVB5VjRIU240YXgzZ2RQWmtUcWxIdk1IZzJV?=
 =?utf-8?B?Ykt3ZjVCZjJKQlg5MUY5S3kxN1piRmJ3b2hyS3ltU0srRnVYT1d4c0pIRGZR?=
 =?utf-8?B?UnlaYmdSUmRhN3ZVQWE2MnM0MmJqSWFtQ05RRXZEK05QVzIyb2RkenRuSi9l?=
 =?utf-8?B?Z1RabjQ1QWI5ZElvSnVkZnFXbFZWZkhxc2FwVDRjeEt3RVVlUXNta3pKbkp1?=
 =?utf-8?B?QWlXemw5NlJmV3JsSVFqbTRMazVxeFpKbzhKOFN1aUZwNXM1MFg4anZTeTlh?=
 =?utf-8?B?ZkRaTzNqWXUrNGxSWGFSZEJJWVFKZFplTWhSMlc3bTBQZm56Z1N1QitNeTZt?=
 =?utf-8?B?R0thZytSOGlORkhKT3owY2RnQURPb0VnMkllb0FDMVpZS2JrOFFyWlNBL2JB?=
 =?utf-8?B?d3VHWTFIcnRtQXdMOWRLb1ZBaW9HZzIvbFhXcm8xYW5qZEFTTFM4TkhqNTU0?=
 =?utf-8?B?THNUMzNCZDJCVTJtcmR2ZksvMzZ1cnhTQmhGVVNPOEF6YkVoU2VaNit2Yjgr?=
 =?utf-8?B?emJyM3lGYjhoVnJOTlNFVnQ0QnJsL3NDNUtHYjl5Sk11aXJXTUw4N210MTdl?=
 =?utf-8?B?djZjZzRSZWQ3ZUdJT0E1YTM4bUd4QmxOZFhRUzdiWVQwazJ5L0pXeFBGcHBJ?=
 =?utf-8?B?S0VXdVpodjFXdVBUUXp4ckZuRFBKc0l5RHpRcnBsbXJPcEtUZlJ3dm1aRFh3?=
 =?utf-8?B?bmdrZUtLdFhJeTZTTE1SNTY2UDk0SFNYaUNVMTYyZktTMUpsV2tHUGV6M0lZ?=
 =?utf-8?B?akt0WHJjcVpoU3ZXRFFNMWxtZW91VXdVQnhxWU81VGRNZXJqWHNYNlE1TGJP?=
 =?utf-8?Q?rKSHhi6uMIo=3D?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:PH8PR11MB8287.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(366016)(376014)(1800799024); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?dXlGMnphZkNEQmFGRUwyY2M5Q1NPNFI4eG8rMno0L3pFR3ZqWmhXWWxnUGNm?=
 =?utf-8?B?M1d3ZW00R3NoR3pmcVEvNVRtNXVUVHlHR2xrNXRUNGRDRmVyYkZBdlVZa3li?=
 =?utf-8?B?b3FNbXduRERsN1p2N1FiSkdKS1ZLM2ZUWHRKOEZMSmFGYTEyOUVPQzlGSTFB?=
 =?utf-8?B?TEhENm0venFFc2NFU1FjdUNneS9lOWhtYWJHL3N5c24xV3YzUWt0eEJ5TG1B?=
 =?utf-8?B?YjhpbUtPeUw3ay9xS1BLU1p5WjNJVHdlcFZWRld4cFFUVUhVUTl3TWxvUXdP?=
 =?utf-8?B?YmJ6dHdyZy9RRHNoeDhLWGNUWG1FeDBDYVNzT2k4bnlSUHc5VHVNYXR6eHRV?=
 =?utf-8?B?b3dQR1BGMWZUMVpoUUlXWDVGVjFEZTFDKzc4VDNIQlNMMG8yVWZnZFpERE5G?=
 =?utf-8?B?STh1QWdBMU4rU0lDLzF0S2VUNWZ6d24vL1FHQ2NTeWRJYTI2cnNBK0RoK0VQ?=
 =?utf-8?B?Tk56QWVLY2RJbm51WnY5VWtUa3lQclh5SGlOdm1kbFpUVnlpTVVQZVlCVlB5?=
 =?utf-8?B?eTRkemFyWUxPdkhpNW5vZFhhSmxrNTkwTzdNdThTcHQ0c3V5cElrOTBtSEw1?=
 =?utf-8?B?ZXhua1JzM2pCR3dFVU1YSldlcC9ZRUhKQ0NQS3htWHZKNFk5MVJ2MVkvRk9W?=
 =?utf-8?B?bEc3Vkw3aCtUOW5jNCtuTlRTM216U1dOWitRbDVXT2lGL29UYTQ2Z1pGeDh2?=
 =?utf-8?B?TnA4N0NicDhCWnJZTzU3WERKWjd2ZG9jaWVPRzI4M25RREZMN1I1SDB4TGRO?=
 =?utf-8?B?MjJCZTVZQllCR0UzRnp6U1RFb1hPNnozOFJrdWViaEFRL0tqTmRBU1lwRHo2?=
 =?utf-8?B?dURyMDN0V3E3NzJaQVJiZERYbjc5ZVRjSmJIZTJJek9NNnR5RXRIM3ZyWFNW?=
 =?utf-8?B?QWtmeFloZzVOY3NiTE5zOU8wUHo0Wi9Wcmc4dUgzYzlOZThsOVFnQnVubCtI?=
 =?utf-8?B?UUZKaDV0ZmFlb3hkMmkzdFBTQ2tkTzA5dmlyTHZEL1MwMFZkQnBham9EUlJV?=
 =?utf-8?B?TytPdnpONERoNnRJeWhQWWQ0L2ZycTVDbVpqd3BWdUhCUXRGL0E0SFRLZzZE?=
 =?utf-8?B?bVMwRnhiRDVEK1pxdk5rd0luSHVoRHZMcTZzNGFjazdiMExaUC84cThXeER0?=
 =?utf-8?B?Ykc3eW43TGJCM3oxVE53V2ZDS2ZkcG53K1U4Z2E1WGxNVFo1aFlNRWNtWjFE?=
 =?utf-8?B?Njl3S3FPbVRkV3RFcXpCLzFHMjVwdjAyMC91Tm5mU3h2QXRSdUo4MkI5YmRU?=
 =?utf-8?B?aGwvaFkwUEM4L1JuRE9pRmtMOGx3bE10dUI0cWpHTTg5OWZDQlhMMjBZT2NV?=
 =?utf-8?B?RkZqdUZUWTYvNnhLN3JJQSt6Vkhjek9iYU95SFFHa2Vha09vK3NraTFXdFE2?=
 =?utf-8?B?TUREbWl6bS9CTWdBcUUxRWFGVjVEMS80eS9KUkV1Q1duSDVoZ0JJbEVjcFJO?=
 =?utf-8?B?d2ZaTjl0Q2ZsbmdtUXYvZ2h0Tk9QdDdWY1dUeHBKUkdLOHNFUWJSc21mMUUr?=
 =?utf-8?B?Vyt4Sm8xTjBIOS80KzF2dzhnMm1IWEFZZ0dDQzhHL21PTUc0bXk5VEhtaFJt?=
 =?utf-8?B?eWx5MUFHWWRJVEhFZC9tMkQzU3UxVDFNT1cwUnNFWG1PS2NQalRhYnNaTWdU?=
 =?utf-8?B?Z2VqQUYwdTF3WHR6QkM5WEpzYWFjTDBmejlOajFVMFJxT2s4dmpLZVZKVWNE?=
 =?utf-8?B?a0xwRWhhenhlTEc5aFdtWGJzUW01U1pFV3hTakFEaGcvQW9mQzBqdHViK2gy?=
 =?utf-8?B?MmROTXpIZm42Q01Db2pueHdJamg3bkt3dVFzQlRaUmpuQ0ZPRWlGNjJXY3pY?=
 =?utf-8?B?ZVpzdUpDSE1Ga0czR0k3N0pKUmVlVTVxTVVRR1N5S2NMZUZmRTRsM2NMS1pW?=
 =?utf-8?B?WDUwSHlkbGdHcmpod3dNWlh5QnBhS3phT0IxTFZ0a1BFR2hsdTFkeUIzdmJj?=
 =?utf-8?B?MDZVVU45bmRJLzFhSG1GVnNGMzIrbWkvL1ZISkE5M0pFYUpyU21KWHNCN05a?=
 =?utf-8?B?a3FUUFlSRGxiOUVpS0hyNkQ2alB1NDlGMWYzRHRiQ1pmdTFsWVNvcWE1aXYv?=
 =?utf-8?B?aVJpSEMyS3JDdHpjdERwS0ZyRzhHS3ZEOW10ZXIvbXJTOG8yWlVJMDE0Z24y?=
 =?utf-8?B?QlllSDRuU2RYeldWUEV6cWJHKzBoNWpTWUZxakZHVk9FM0V6aCtpSWZkY1RP?=
 =?utf-8?B?eUE9PQ==?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 908b049b-ba11-4f1b-2ef2-08ddeed67f07
X-MS-Exchange-CrossTenant-AuthSource: PH8PR11MB8287.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 08 Sep 2025 12:51:57.9208 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: UYEREwEPt8M8zkzgJr9cJ+ByBg81m4P8n3ZNqG+c5vDQLWNu4oanfCHy9u51NFQdKjgdAw8V9eRcFPSYI+TZCQ==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: CY5PR11MB6509
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

Quoting Luca Coelho (2025-09-08 04:35:34-03:00)
>Make the code a bit clearer by using a switch-case to check the tiling
>mode in skl_compute_plane_wm(), because all the possible states and
>the calculations they use are explicitly handled.
>
>Signed-off-by: Luca Coelho <luciano.coelho@intel.com>
>---
> drivers/gpu/drm/i915/display/skl_watermark.c | 24 +++++++++++++++++---
> 1 file changed, 21 insertions(+), 3 deletions(-)
>
>diff --git a/drivers/gpu/drm/i915/display/skl_watermark.c b/drivers/gpu/dr=
m/i915/display/skl_watermark.c
>index dd4bed02c3c0..21f8d52ec1d2 100644
>--- a/drivers/gpu/drm/i915/display/skl_watermark.c
>+++ b/drivers/gpu/drm/i915/display/skl_watermark.c
>@@ -1833,21 +1833,39 @@ static void skl_compute_plane_wm(const struct inte=
l_crtc_state *crtc_state,
>                                  latency,
>                                  wp->plane_blocks_per_line);
>=20
>-        if (wp->tiling =3D=3D WM_TILING_Y_FAMILY) {
>+        switch (wp->tiling) {
>+        case WM_TILING_Y_FAMILY:
>                 selected_result =3D max_fixed16(method2, wp->y_tile_minim=
um);
>-        } else {
>+                break;
>+
>+        case WM_TILING_LINEAR:
>+        case WM_TILING_X_TILED:
>+                /*
>+                 * Special case for unrealistically small horizontal
>+                 * total with plane downscaling.
>+                 */
>                 if ((wp->cpp * crtc_state->hw.pipe_mode.crtc_htotal /
>                      wp->dbuf_block_size < 1) &&
>-                     (wp->plane_bytes_per_line / wp->dbuf_block_size < 1)=
) {
>+                    (wp->plane_bytes_per_line / wp->dbuf_block_size < 1))=
 {
>                         selected_result =3D method2;
>                 } else if (latency >=3D wp->linetime_us) {
>+                        /*
>+                         * With display version 9, we use the minimum
>+                         * of both methods.
>+                         */

Hm... Isn't this saying what is already clear in the code below?

>                         if (DISPLAY_VER(display) =3D=3D 9)
>                                 selected_result =3D min_fixed16(method1, =
method2);
>                         else
>                                 selected_result =3D method2;
>                 } else {
>+                        /* everything else with linear/X-tiled uses metho=
d 1 */
>                         selected_result =3D method1;
>                 }
>+                break;
>+
>+        default:
>+                drm_err(display->drm, "Invalid tiling mode\n", wp->tiling=
);
>+                break;

If we decide to go with the enumeration solution, I think we should
change this into a warning and use some default behavior here (perhaps
WM_TILING_LINEAR?). Otherwise, selected_result would be used
uninitialized.

--
Gustavo Sousa

>         }
>=20
>         blocks =3D fixed16_to_u32_round_up(selected_result);
>--=20
>2.50.1
>
