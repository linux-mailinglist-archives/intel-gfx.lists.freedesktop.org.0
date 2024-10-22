Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 6BE149AA0EA
	for <lists+intel-gfx@lfdr.de>; Tue, 22 Oct 2024 13:14:20 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 2BE0810E66F;
	Tue, 22 Oct 2024 11:14:18 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="gIn9zkF/";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.16])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 1C72A10E19E;
 Tue, 22 Oct 2024 11:14:17 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1729595657; x=1761131657;
 h=content-transfer-encoding:in-reply-to:references:subject:
 from:cc:to:date:message-id:mime-version;
 bh=vCzUSpH3Wf+cLu+GPG39/7B9ZobIJBC7RS+fy4rJgA0=;
 b=gIn9zkF/ogIz0kuM70vLcuAGZUwJAW1EkpP2WIDbQYwyK9RAxOyGv9LD
 c3GtFX8uoNUr2G/KIiSuSuJGAMysaDFROnv0ynRFir7QE8kqXFqacPmx9
 6LzX6M0uPcjnVb+pX7vbp3lVxjuL+ovAz6PFGrpdqNMFD++ufSrQ3qswZ
 uEXrSOQzvjmMb7sm+p4e+wFNz4Sl5kmIyCX1DfAhTNjbMN/QWCiku9fCU
 J6YZsFUaVpGXzgegIWsrM6hssF02XHF8gu5Ua4JS345jnxa9wGzQotiLx
 uV/WyUVlYCeRRA0cpOj+dEDa3kphhq7r4SstUJG0m/Wie2c2zd5SMvVHu Q==;
X-CSE-ConnectionGUID: UVoR5G3AQ+OpDAjIhFHgzg==
X-CSE-MsgGUID: lGknOekaQoyysWyj7k/dcg==
X-IronPort-AV: E=McAfee;i="6700,10204,11232"; a="16752076"
X-IronPort-AV: E=Sophos;i="6.11,223,1725346800"; d="scan'208";a="16752076"
Received: from fmviesa004.fm.intel.com ([10.60.135.144])
 by fmvoesa110.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 22 Oct 2024 04:14:15 -0700
X-CSE-ConnectionGUID: Y0C4YSQbRaSOdweNYufzRg==
X-CSE-MsgGUID: goZ3jmL4R0eLUd9Uq6m97Q==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.11,223,1725346800"; d="scan'208";a="84436888"
Received: from fmsmsx603.amr.corp.intel.com ([10.18.126.83])
 by fmviesa004.fm.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 22 Oct 2024 04:14:08 -0700
Received: from fmsmsx601.amr.corp.intel.com (10.18.126.81) by
 fmsmsx603.amr.corp.intel.com (10.18.126.83) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39; Tue, 22 Oct 2024 04:14:07 -0700
Received: from fmsmsx603.amr.corp.intel.com (10.18.126.83) by
 fmsmsx601.amr.corp.intel.com (10.18.126.81) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39; Tue, 22 Oct 2024 04:14:07 -0700
Received: from fmsedg602.ED.cps.intel.com (10.1.192.136) by
 fmsmsx603.amr.corp.intel.com (10.18.126.83) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39 via Frontend Transport; Tue, 22 Oct 2024 04:14:07 -0700
Received: from NAM11-CO1-obe.outbound.protection.outlook.com (104.47.56.168)
 by edgegateway.intel.com (192.55.55.71) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.39; Tue, 22 Oct 2024 04:14:06 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=mHUwhJ7uD9bvYrWCYURzH2AfH2rmgHz0XzdIIwiuMreetjcJdIG0C4SOjEPWZ2T5KNrHJlKWzb1+ISMop8B8EY0KmUPngDaIdqInm1tHwC1e9Zh8muzS18U6i1KOgtZYIsWsTGC1oLwpaWCE/QaRPT5w/eLwZl++Za3CyUiBJ0P2zzoZUaOyICwxAKMY33ohwwk9uP3LH5sFDUKprftp0+POwOghzB5l+POc9eCk/AB6FuXV5JUyK5RAcB81czQ5vWtIbDkJwHFAcWWhwI35h2JutYviqotYeqkLxweTupsQ40IWZuNwEt9sBbqp1FsMN3fsWy/LcuCBu/EPdvNt6Q==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=PddBaOEONa/hnT1FedNJXVEXzHsuJDFBDWlY5JstA8k=;
 b=G5AsZr2CBhTLroTSrHeq/+In+FH6CIXJ1HciOB6FXC+uqOUDVk1p6GnrbojQ+n+QGlRdmmH5T54bCm1Nm/1zu0uP7/7WwSwnHLk/r4o+MMq7Vup8fonuIQjIqsn/Vu5l3EoLuLI8iqJf70/FtoxRWvqSHE37rdFx4//tmYYGX12upXZGMA6eeJb/bk23FPZg5koHjkQrScW3ehQBWupg6PNcL2zf8V/sp6wqehF6+fDSpIYOP/XRvNYRPmJXCNXrG2wHDvBJkVmtcCTdWF1OonOcASvzbund0ClVPBaK3V6azGom7IfPm8bROkCtCkd8C4CEKyK+zRnkufGaVWLSaQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from PH8PR11MB8287.namprd11.prod.outlook.com (2603:10b6:510:1c7::14)
 by IA1PR11MB7386.namprd11.prod.outlook.com (2603:10b6:208:422::7)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.8093.16; Tue, 22 Oct
 2024 11:14:04 +0000
Received: from PH8PR11MB8287.namprd11.prod.outlook.com
 ([fe80::7e8b:2e5:8ce4:2350]) by PH8PR11MB8287.namprd11.prod.outlook.com
 ([fe80::7e8b:2e5:8ce4:2350%6]) with mapi id 15.20.8069.027; Tue, 22 Oct 2024
 11:14:04 +0000
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: quoted-printable
In-Reply-To: <20241021222744.294371-8-gustavo.sousa@intel.com>
References: <20241021222744.294371-1-gustavo.sousa@intel.com>
 <20241021222744.294371-8-gustavo.sousa@intel.com>
Subject: Re: [PATCH 07/13] drm/i915/dmc_wl: Check ranges specific to DC states
From: Gustavo Sousa <gustavo.sousa@intel.com>
CC: Luca Coelho <luciano.coelho@intel.com>, Rodrigo Vivi
 <rodrigo.vivi@intel.com>
To: <intel-gfx@lists.freedesktop.org>, <intel-xe@lists.freedesktop.org>
Date: Tue, 22 Oct 2024 08:14:00 -0300
Message-ID: <172959564060.3700.3767441287732314889@gjsousa-mobl2>
User-Agent: alot/0.10
X-ClientProxiedBy: MW4PR03CA0245.namprd03.prod.outlook.com
 (2603:10b6:303:b4::10) To PH8PR11MB8287.namprd11.prod.outlook.com
 (2603:10b6:510:1c7::14)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: PH8PR11MB8287:EE_|IA1PR11MB7386:EE_
X-MS-Office365-Filtering-Correlation-Id: cb64a7dd-4c7e-4030-51e1-08dcf28aa385
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|376014|1800799024|366016;
X-Microsoft-Antispam-Message-Info: =?utf-8?B?SGQ5dlVkbXhVSGZZR0ZjTlRZM1F6Y3lpV2Vuc2FCemZteTR5U0haenlsSmRq?=
 =?utf-8?B?WDNnRzhlTk5xYVZ5QldMaklvcVFyeXFJWWVLRTFLOXd3a2tDeUY4bGI1N2Vz?=
 =?utf-8?B?a282RVNkMy9Dd1o1YytHMGRQT3dvdzg2dkRtc1NWT2RkRGk0Q2V5bDBqSWRT?=
 =?utf-8?B?UG0rcndaSXpsSyszdEFtZk8xYlRvUnl5aUZSZ1gxa0J6RXJQbTlsTlAwdGxh?=
 =?utf-8?B?NEFCTUFWQ2FtcXhnUWV1eHVGVGtGQ096VFd2MWtZNG1Gbk9CcmZJTTVHeFFW?=
 =?utf-8?B?cVhTNkREallRL3drZHJhYnpwNTFOOWFPdHJ6VHA5MkxQdkUvQUxpb2J2OHNh?=
 =?utf-8?B?RVVadUNWVHB5eHhGMHZDTWlzYnYzYkM2WWlwM21vb0pMNUxQWTFMK3ZLSi9a?=
 =?utf-8?B?cTJzeW5PeURRejhQZDZPSVhJRm1FeU5NRUtQcVg0QUxOdlUwb2RqVFBnazlq?=
 =?utf-8?B?SHg1ZTJXbFBsL29MZ09yV3ljWjFOTmU0MGlCQUhPNXZmTUNXaFAxOGFyb0Zz?=
 =?utf-8?B?c0YzWEFZdEFuSUFIZ2NEMi9pSEVSeXg2VlEyMFljYytpZVhzUitGMnRXM295?=
 =?utf-8?B?aDZOSXlVVUNBaGFWbWMwd2EyZjNzYlY0RWZnR3JNaGovRFk2dmFocjJtOXpv?=
 =?utf-8?B?VmViQ3JVMk1FTU9lNklzYy9IWXBLK1lmUWIvR2NTU3pOZFlmaHpCNkwwYmMv?=
 =?utf-8?B?eGdhNnRkVmcwSVp4V1BFeEhHSjRuT1pCUHRaYXNnRElCeWM5RkVCdHZKZjdh?=
 =?utf-8?B?ZCtFUytMai9UZDRCTVpEY2VCMEo1UG9TY1RYcSt5WmJXSTVSYUtObW9SMjd6?=
 =?utf-8?B?WVVtS1VRL1BjeGlBRHhpV2JuMHBlenQzUEgzTGFxMjd0Z21LMlNVcWNOWVQr?=
 =?utf-8?B?V3JNWXFkQjNGY3FkMmlCOWxYYjZHSUNLUnV5UjkzckdidS9xZlVibjYvOVdN?=
 =?utf-8?B?MjBxQXVNaVBrZEY5NHMvVEE1Mmp5MTc3NWFPcmh1K2lUc2FFb3dCVExtNXVP?=
 =?utf-8?B?a2V3RUhNb2Zad3VpMU1ZWTBwdGZGSzBQcGNGMkxuTEYrdEUvVTFLekFOczNw?=
 =?utf-8?B?K29ucXVoU002ZERDdWNHanJJQlpSZWlIRHFSbGlTQ3QvSU90VURYdjRmcGZr?=
 =?utf-8?B?b0pldm82endTV1hORDh6TythMDhNRmJ4MktzZ293U0tQNzJ5WHVybVh4TXdl?=
 =?utf-8?B?cGVlekxjakZ1RnlTNUthZFMxQnNjeWlsR05WV05nUWNzZDcxdUQ1MjNYaWE4?=
 =?utf-8?B?czZQNVZPWVhPUzd0ZmxTMm5jbUl6NnhQTnNPTWZRdkJGSkVnQ040S1R0Zm9N?=
 =?utf-8?B?TEF6NEJnZzBZUU1kcDVWM1FvNGdvTitGOHYrRjlKcU93YjlySkF0WnRoYWNO?=
 =?utf-8?B?OC9oT0RvZHJoNVJyUWtxeHVUVWpCemYzUjJjSlVSRGVQRUtpZG1YMzlnbjJY?=
 =?utf-8?B?S3lBa3doY2tZdGl1OEdlS3FISkdKazBpVmNDcFM2M2pDV1hiY25PV3daekFU?=
 =?utf-8?B?Uk53TmtBUlBPSHE3U09odS85NXZaeWJuUU51THRRcU1HaTg5eHBMY3ZiUFRs?=
 =?utf-8?B?cXkxT2o5SXVFREdRQnNXRVpDWHg0OGk5MDU4S2poQnVzTjQvcEdETjhyNWRU?=
 =?utf-8?B?ZkQyUVVMZ1hpaWlZT2paWG9yQ0dwR3Ayc2VZT3dNZDk4YmZwVjloNU0rMXdi?=
 =?utf-8?B?WTNLL1hzNDU4M3NqYTBpZDJiQ0tqbVNmUFM3VWxWUWg3ODRnbmpYaXg3bWl6?=
 =?utf-8?Q?nS1v3qr6S/9FMuhNscGWZu4JOmmfo5MijK6BRfV?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:PH8PR11MB8287.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(376014)(1800799024)(366016); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?emtvbDdvUS83Kzc3bmhWdHRQM0c3MVU4OGMyaUhqbytveko3cEVIcnpGVWE5?=
 =?utf-8?B?dWs0V01uY1FJQnU2a1ZlRHV4ZWhTejAxMCtkMkFZQkYwYzhVRXN3R1NSUlpZ?=
 =?utf-8?B?R0ZpanozNUhDUWNmSUlDcllsMFc4SzhoWGJqSExhTGZMa0pEcm1xcEp4a3Ev?=
 =?utf-8?B?S3EyZS9CMmluZkp4dFpDN2pPQUFJekx1ZHNURVBqK09KRGpmNlo3QVBObk9R?=
 =?utf-8?B?czJJaW1MWmdKTy9hbU5nVzFteWZFSytMZER6bnYxNGpNNExTWkRBOG9NUFpT?=
 =?utf-8?B?Wld4bit4TENHZ3RzN3dnenpCejkvVnFUKzV3WGpMZ2o3MDFlMVFhNGRoeUZR?=
 =?utf-8?B?QmJ2dVRwZ0tFUWQ2ZHRZcDA1a3ArcDVhNTlldDJPZzNLMlNCYTdVeFJwQisw?=
 =?utf-8?B?R1hYMTh3SnBnM05SMWpuWHhvaVdwU3dzSVlDVGxnd1hwdG5mM0lGWFhrR1Bx?=
 =?utf-8?B?cC9qdDNYalArckRGcWROc0dmZkQxZENSZWxWeWdFeGdPTWM3bXpkZytadGEx?=
 =?utf-8?B?a21nZWFSK1BIQzF1RzlBbEcvcmxrRnNyQkQrYVptUUNhZXM3bDBSUHZmQldh?=
 =?utf-8?B?bkxsMFFUS244SHUzcFgzakNmS3pXRWg1ajU5aVJNS0gyZkt2Z2Yydm9YSW11?=
 =?utf-8?B?eWlsZkxmQkxLWUREaEdnYW1Td2JvUHJvT2hYSDc4a0Y3SzFZbzZOQ0JNRXU5?=
 =?utf-8?B?cTFTc1dqLzc5ZGt3WEVmV1EyakQwK3JQeEZKYnJLWFpRZFZSbElTbDluWkhF?=
 =?utf-8?B?TzdyaW5nQlZvZmdCMnBCQkJiZGhjNmovRlVJTDVRWjNRQXhSN1MwOWZlOXA1?=
 =?utf-8?B?WjJsYUE5VHdxTFJsbDRBOStXNTVZMzY4TjNMN000dGEvOTB6MGttSFZDdW5m?=
 =?utf-8?B?SC9CVVlQWUQ0N3lVUVlydGVmTVdXNUNBYmpDT1BoR1BDUWtmMHBldWdrK2k1?=
 =?utf-8?B?a0NSaFVaQzhjcGtlaC9NWkwxRnlteXBSTHhxeFc2Q01aK2J3d2J0aCs3OHFm?=
 =?utf-8?B?L3NMMTJkNkdYVWE2Tk5ZSDJ3ajh1bnE2TE95VWpaVTIzNFV5OHlENnptWW1w?=
 =?utf-8?B?bUV3QVhKSHp0a3h2STBPYTRuUzhienI1ZVMzR2ErTks1QXVLSUZaZWJ2Q3dB?=
 =?utf-8?B?MDBNbXhubkZmeDkxbjI3amh2TzI4YkRiRVlIZzNiVUFnemhVejY0ZFFBQWZq?=
 =?utf-8?B?b2JtNG5kaE1VT2ZOQ1BJNDMxZ256Z2oydmx5dXZXTlR5dFIrUDFYVEt3cUV6?=
 =?utf-8?B?a0s1M3RZTHIvTStrWXExWjQ0cFB6SnVadm5pUCt0dS9hNE55VVF0dE42OHZs?=
 =?utf-8?B?dFhqMUhqbGYwYU9hOVR5MUJ1bFJwZzBlZ3JUYTBjcXp4OHpINEU3VDRaYjEy?=
 =?utf-8?B?d0Z6QXlCV1ZDVUhKSlhFRTA2NHRUZmYydXVMSGZaK2w4TUZsV3JzQXR5WEYy?=
 =?utf-8?B?ZDFXQ3A0dVRRTkRNdlZzWTBJMjJIMld5aGNrY3poelppQlRpS3pWODJOaW9D?=
 =?utf-8?B?MjAvWkFrMzJjTGQxdDJHeHcxR1RyWjJ1d2xZaXZXWUxUYnNjOGtYa3JCdjhP?=
 =?utf-8?B?VjR1Snh4Mko1NURmdTBFZWk1WHJOVjYyMGNqR0tBM2VBTlBHVzRYb1FDTWhj?=
 =?utf-8?B?c2t3K210T01sZkhid2VKZTVVRUJmWnozd3pvTGVOcnR5Z2pWRVA3OGF4eWlD?=
 =?utf-8?B?VGk1Q29jNDhiZmVKWnBFVFNiYnpGdmRXQjV4R0ZEaTFKY3pHUEluclZaNkln?=
 =?utf-8?B?enhNSGJJSTRSSVd4cnU1elp1RU1hTFk2TG14NHNJSWRMNStHVTRNNHN3QXpU?=
 =?utf-8?B?OUVyYzl2bU5ES1VvMGxPMndlanNPc0tsSlRRanRMZkx4a0RZd3VXb0ducEMy?=
 =?utf-8?B?Mmg5OXBBdmRsNG9jM0dzaERyL1lFWW1DRmZKMUhGSW9BaDByWXM3cmhidHFO?=
 =?utf-8?B?MEQ4Uy9iNEdrNVVRT1RWaWxtbmhKRHNmZ2FkMzFOdU4zb0RiNFl4VmF2Y0lQ?=
 =?utf-8?B?N0VUbm9KZks5alF5R3FLalFOejZrSlhXbmZEWnpDV2VxNUJIKy9UZEJScXI1?=
 =?utf-8?B?Z3dNaEsrUTRzYWc4U2lSZDgyWlhkeXRTaDFKcGZrT3h6UmNwQi85Z0U2Tno0?=
 =?utf-8?B?MHMrNEIyQVRheW5UeWhvZDcrK0xYNDhGMnF1VlNQZ3B2RHdYUlhNSGE4NXkx?=
 =?utf-8?B?Z1E9PQ==?=
X-MS-Exchange-CrossTenant-Network-Message-Id: cb64a7dd-4c7e-4030-51e1-08dcf28aa385
X-MS-Exchange-CrossTenant-AuthSource: PH8PR11MB8287.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 22 Oct 2024 11:14:04.5459 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: uLUSGReJZPC8nTTxmj1hGsc+dnUM7V4qDeQQ4mHQkNcOYHWedyTuA/i/BrExzHnYW9v+V4WelUSxLkSReh8A1w==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: IA1PR11MB7386
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

Quoting Gustavo Sousa (2024-10-21 19:27:26-03:00)
>There are extra registers that require the DMC wakelock when specific
>dynamic DC states are in place. Add the table ranges for them and use
>the correct table depending on the allowed DC states.
>
>Bspec: 71583

For anyone who is reviewing this and doesn't find the ranges in that
Bspec page: I forgot to mention that the ranges are not yet listed there
and that I got them directly from the display hardware team with a note
that they would be updating the Bspec.

--
Gustavo Sousa

>Signed-off-by: Gustavo Sousa <gustavo.sousa@intel.com>
>---
> drivers/gpu/drm/i915/display/intel_dmc_wl.c | 112 +++++++++++++++++++-
> 1 file changed, 108 insertions(+), 4 deletions(-)
>
>diff --git a/drivers/gpu/drm/i915/display/intel_dmc_wl.c b/drivers/gpu/drm=
/i915/display/intel_dmc_wl.c
>index d597cc825f64..8bf2f32be859 100644
>--- a/drivers/gpu/drm/i915/display/intel_dmc_wl.c
>+++ b/drivers/gpu/drm/i915/display/intel_dmc_wl.c
>@@ -5,6 +5,7 @@
>=20
> #include <linux/kernel.h>
>=20
>+#include "i915_reg.h"
> #include "intel_de.h"
> #include "intel_dmc.h"
> #include "intel_dmc_regs.h"
>@@ -52,6 +53,87 @@ static struct intel_dmc_wl_range lnl_wl_range[] =3D {
>         {},
> };
>=20
>+static struct intel_dmc_wl_range xe3lpd_dc5_dc6_wl_ranges[] =3D {
>+        { .start =3D 0x45500, .end =3D 0x45500 }, /* DC_STATE_SEL */
>+        { .start =3D 0x457a0, .end =3D 0x457b0 }, /* DC*_RESIDENCY_COUNTE=
R */
>+        { .start =3D 0x45504, .end =3D 0x45504 }, /* DC_STATE_EN */
>+        { .start =3D 0x45400, .end =3D 0x4540c }, /* PWR_WELL_CTL_* */
>+        { .start =3D 0x454f0, .end =3D 0x454f0 }, /* RETENTION_CTRL */
>+
>+        /* DBUF_CTL_* */
>+        { .start =3D 0x44300, .end =3D 0x44300 },
>+        { .start =3D 0x44304, .end =3D 0x44304 },
>+        { .start =3D 0x44f00, .end =3D 0x44f00 },
>+        { .start =3D 0x44f04, .end =3D 0x44f04 },
>+        { .start =3D 0x44fe8, .end =3D 0x44fe8 },
>+        { .start =3D 0x45008, .end =3D 0x45008 },
>+
>+        { .start =3D 0x46070, .end =3D 0x46070 }, /* CDCLK_PLL_ENABLE */
>+        { .start =3D 0x46000, .end =3D 0x46000 }, /* CDCLK_CTL */
>+        { .start =3D 0x46008, .end =3D 0x46008 }, /* CDCLK_SQUASH_CTL */
>+
>+        /* TRANS_CMTG_CTL_* */
>+        { .start =3D 0x6fa88, .end =3D 0x6fa88 },
>+        { .start =3D 0x6fb88, .end =3D 0x6fb88 },
>+
>+        { .start =3D 0x46430, .end =3D 0x46430 }, /* CHICKEN_DCPR_1 */
>+        { .start =3D 0x46434, .end =3D 0x46434 }, /* CHICKEN_DCPR_2 */
>+        { .start =3D 0x454a0, .end =3D 0x454a0 }, /* CHICKEN_DCPR_4 */
>+        { .start =3D 0x42084, .end =3D 0x42084 }, /* CHICKEN_MISC_2 */
>+        { .start =3D 0x42088, .end =3D 0x42088 }, /* CHICKEN_MISC_3 */
>+        { .start =3D 0x46160, .end =3D 0x46160 }, /* CMTG_CLK_SEL */
>+        { .start =3D 0x8f000, .end =3D 0x8ffff }, /* Main DMC registers *=
/
>+
>+        {},
>+};
>+
>+static struct intel_dmc_wl_range xe3lpd_dc3co_wl_ranges[] =3D {
>+        { .start =3D 0x454a0, .end =3D 0x454a0 }, /* CHICKEN_DCPR_4 */
>+
>+        { .start =3D 0x45504, .end =3D 0x45504 }, /* DC_STATE_EN */
>+
>+        /* DBUF_CTL_* */
>+        { .start =3D 0x44300, .end =3D 0x44300 },
>+        { .start =3D 0x44304, .end =3D 0x44304 },
>+        { .start =3D 0x44f00, .end =3D 0x44f00 },
>+        { .start =3D 0x44f04, .end =3D 0x44f04 },
>+        { .start =3D 0x44fe8, .end =3D 0x44fe8 },
>+        { .start =3D 0x45008, .end =3D 0x45008 },
>+
>+        { .start =3D 0x46070, .end =3D 0x46070 }, /* CDCLK_PLL_ENABLE */
>+        { .start =3D 0x46000, .end =3D 0x46000 }, /* CDCLK_CTL */
>+        { .start =3D 0x46008, .end =3D 0x46008 }, /* CDCLK_SQUASH_CTL */
>+        { .start =3D 0x8f000, .end =3D 0x8ffff }, /* Main DMC registers *=
/
>+
>+        /* Scanline registers */
>+        { .start =3D 0x70000, .end =3D 0x70000 },
>+        { .start =3D 0x70004, .end =3D 0x70004 },
>+        { .start =3D 0x70014, .end =3D 0x70014 },
>+        { .start =3D 0x70018, .end =3D 0x70018 },
>+        { .start =3D 0x71000, .end =3D 0x71000 },
>+        { .start =3D 0x71004, .end =3D 0x71004 },
>+        { .start =3D 0x71014, .end =3D 0x71014 },
>+        { .start =3D 0x71018, .end =3D 0x71018 },
>+        { .start =3D 0x72000, .end =3D 0x72000 },
>+        { .start =3D 0x72004, .end =3D 0x72004 },
>+        { .start =3D 0x72014, .end =3D 0x72014 },
>+        { .start =3D 0x72018, .end =3D 0x72018 },
>+        { .start =3D 0x73000, .end =3D 0x73000 },
>+        { .start =3D 0x73004, .end =3D 0x73004 },
>+        { .start =3D 0x73014, .end =3D 0x73014 },
>+        { .start =3D 0x73018, .end =3D 0x73018 },
>+        { .start =3D 0x7b000, .end =3D 0x7b000 },
>+        { .start =3D 0x7b004, .end =3D 0x7b004 },
>+        { .start =3D 0x7b014, .end =3D 0x7b014 },
>+        { .start =3D 0x7b018, .end =3D 0x7b018 },
>+        { .start =3D 0x7c000, .end =3D 0x7c000 },
>+        { .start =3D 0x7c004, .end =3D 0x7c004 },
>+        { .start =3D 0x7c014, .end =3D 0x7c014 },
>+        { .start =3D 0x7c018, .end =3D 0x7c018 },
>+
>+        {},
>+};
>+
> static void __intel_dmc_wl_release(struct intel_display *display)
> {
>         struct drm_i915_private *i915 =3D to_i915(display->drm);
>@@ -106,9 +188,31 @@ static bool intel_dmc_wl_addr_in_range(u32 address,
>         return false;
> }
>=20
>-static bool intel_dmc_wl_check_range(u32 address)
>+static bool intel_dmc_wl_check_range(struct intel_display *display, u32 a=
ddress)
> {
>-        return intel_dmc_wl_addr_in_range(address, lnl_wl_range);
>+        const struct intel_dmc_wl_range *ranges;
>+
>+        ranges =3D lnl_wl_range;
>+
>+        if (intel_dmc_wl_addr_in_range(address, ranges))
>+                return true;
>+
>+        switch (display->power.domains.dc_state) {
>+        case DC_STATE_EN_DC3CO:
>+                ranges =3D xe3lpd_dc3co_wl_ranges;
>+                break;
>+        case DC_STATE_EN_UPTO_DC5:
>+        case DC_STATE_EN_UPTO_DC6:
>+                ranges =3D xe3lpd_dc5_dc6_wl_ranges;
>+                break;
>+        default:
>+                ranges =3D NULL;
>+        }
>+
>+        if (ranges && intel_dmc_wl_addr_in_range(address, ranges))
>+                return true;
>+
>+        return false;
> }
>=20
> static bool __intel_dmc_wl_supported(struct intel_display *display)
>@@ -195,7 +299,7 @@ void intel_dmc_wl_get(struct intel_display *display, i=
915_reg_t reg)
>         if (!__intel_dmc_wl_supported(display))
>                 return;
>=20
>-        if (i915_mmio_reg_valid(reg) && !intel_dmc_wl_check_range(reg.reg=
))
>+        if (i915_mmio_reg_valid(reg) && !intel_dmc_wl_check_range(display=
, reg.reg))
>                 return;
>=20
>         spin_lock_irqsave(&wl->lock, flags);
>@@ -247,7 +351,7 @@ void intel_dmc_wl_put(struct intel_display *display, i=
915_reg_t reg)
>         if (!__intel_dmc_wl_supported(display))
>                 return;
>=20
>-        if (i915_mmio_reg_valid(reg) && !intel_dmc_wl_check_range(reg.reg=
))
>+        if (i915_mmio_reg_valid(reg) && !intel_dmc_wl_check_range(display=
, reg.reg))
>                 return;
>=20
>         spin_lock_irqsave(&wl->lock, flags);
>--=20
>2.47.0
>
