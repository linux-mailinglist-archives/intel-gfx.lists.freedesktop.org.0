Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 68FF1D200C1
	for <lists+intel-gfx@lfdr.de>; Wed, 14 Jan 2026 17:04:54 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id F0AC310E584;
	Wed, 14 Jan 2026 16:04:52 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="IkrrcIMp";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.18])
 by gabe.freedesktop.org (Postfix) with ESMTPS id D404510E584
 for <intel-gfx@lists.freedesktop.org>; Wed, 14 Jan 2026 16:04:50 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1768406691; x=1799942691;
 h=date:from:to:cc:subject:message-id:mime-version;
 bh=29UMJ4OoOWTzOU/CM/YSqLSoQiCVQ+joO3io9s8LfOs=;
 b=IkrrcIMp6gVl9rA2M9rY4Llww+iIc3sRn1TG0t2jggp5QuMzE8Pfdt89
 G9KjX1KawEqEos+gYKKjGcVNDTCK8KunZpotRdr/Q8QwycTgQtE1Uw2Mu
 lSvIUNy+fE1s1gKq19CQKeN8aMpDiHmec28eyMT0+mWYLlVgLLcles9cE
 WuJT1ZP8ZVoL7iuJihyUCnmynlexmRgCo0RNudMWw0M9NzhgZ58znFilT
 AeWAFDNiNTPxO7Fy+HnBEQhI0/LHlSjpfDCa8oY/6OjYcdzDeHBFGvlIO
 hEgzNMOrXTcPPET6BO8swaFtsuqoK8+bPWbhff2gqIk5M2K4MYnIQAu2e Q==;
X-CSE-ConnectionGUID: tdIxrMmaQlCcykbHWATJ7w==
X-CSE-MsgGUID: A7k3NMLTS9yj9MV8/8rSAg==
X-IronPort-AV: E=McAfee;i="6800,10657,11671"; a="68917937"
X-IronPort-AV: E=Sophos;i="6.21,225,1763452800"; d="scan'208";a="68917937"
Received: from orviesa003.jf.intel.com ([10.64.159.143])
 by fmvoesa112.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 14 Jan 2026 08:04:46 -0800
X-CSE-ConnectionGUID: n6rtUy3GRzKqoawbpF0E+Q==
X-CSE-MsgGUID: jBXalOtuQNi0bGGFgg2BZw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.21,225,1763452800"; d="scan'208";a="208870219"
Received: from orsmsx902.amr.corp.intel.com ([10.22.229.24])
 by orviesa003.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 14 Jan 2026 08:04:46 -0800
Received: from ORSMSX901.amr.corp.intel.com (10.22.229.23) by
 ORSMSX902.amr.corp.intel.com (10.22.229.24) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.29; Wed, 14 Jan 2026 08:04:45 -0800
Received: from ORSEDG901.ED.cps.intel.com (10.7.248.11) by
 ORSMSX901.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.29 via Frontend Transport; Wed, 14 Jan 2026 08:04:45 -0800
Received: from CH4PR04CU002.outbound.protection.outlook.com (40.107.201.0) by
 edgegateway.intel.com (134.134.137.111) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.29; Wed, 14 Jan 2026 08:04:44 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=n1VdmCqOj6fLDx4CpKyVGvshHS2laINyF0hkUlmfhzTiCTAfeLOmrBGyD3l9+hVsW+pEwAfReEfDIz0blHQnoMlmEuVWrtJFyXg3yJiSUKhcKi2Bu9Bc1OKl88HEYQ8wW2QPdNBCDiu8p4bJwzfcjDspI/A903MbWd29Jbd3WhVQLiv2r2mg+p1f+9itphLh1ToOvIHymiJMUrZRF2evUhCcaTvBhrDnMiLAWlGk5zuWH+4WM7D/eTnCZgzGagaNDEXScjYZRmZ/RK1f7G0nTezb3W6eNk0kI6t6YFWKAJHvcqlL/8tnxbdxhwDqfh/zNHxAuk6NNOGkMwsH5J0ZtQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=kBMg0jRV7WnoxWYp1eXlkUb7+kfdpgZUwPgUvhq8U84=;
 b=OObFwpWGObj+TaF0RxuRPoZAtFogSMm4mqYyIcWfk6j1fgXZfikEC2DlV5JWcUS6ZtLbJbap/cym81rO9vKcfBHdaoOHKlHKd10QcL1ogWfQhp6RxH5cA03xzxhhY9Z3DbGyow9LfboeHhojFryuo+LIJoILf2RNTR1Mh23CnzzGNNs4pn8qao9iWW+SUl/hWDERyOl+xjtLPOvStC+44mqDk5LQk5CzEKQxiP51ZNxXJZFM3wXIURqk+vj69nvz5woGWFlwSrGwM5+WVKMVHvcGR6gP8nkYn64KVFkaDQkM8oOogzDCS6hPVj9/oIUeSd9HFms9QruHgfhmhvP41g==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from CO1PR11MB5057.namprd11.prod.outlook.com (2603:10b6:303:6c::15)
 by SJ2PR11MB7454.namprd11.prod.outlook.com (2603:10b6:a03:4cc::12)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9520.5; Wed, 14 Jan
 2026 16:04:32 +0000
Received: from CO1PR11MB5057.namprd11.prod.outlook.com
 ([fe80::3b75:a8d2:464e:30cc]) by CO1PR11MB5057.namprd11.prod.outlook.com
 ([fe80::3b75:a8d2:464e:30cc%3]) with mapi id 15.20.9499.005; Wed, 14 Jan 2026
 16:04:32 +0000
Date: Wed, 14 Jan 2026 16:04:21 +0000
From: Krzysztof Karas <krzysztof.karas@intel.com>
To: <intel-gfx@lists.freedesktop.org>
CC: Jani Nikula <jani.nikula@linux.intel.com>, Matthew Auld
 <matthew.auld@intel.com>, Chris Wilson <chris.p.wilson@linux.intel.com>,
 "Andi Shyti" <andi.shyti@linux.intel.com>, Krzysztof Niemiec
 <krzysztof.niemiec@intel.com>, Sebastian Brzezinka
 <sebastian.brzezinka@intel.com>, Krzysztof Karas <krzysztof.karas@intel.com>
Subject: [PATCH v6] drm/i915/selftests: Keep mock file open during
 unfaultable migrate with fill
Message-ID: <6xc74s3mbmtliqxihtxbok32jobhc26vfm5mu6cod4ywov6utf@ujp3rmqcwmr3>
"Organization: Intel Technology Poland sp. z o.o. - ul. Slowackiego 173,
 80-298 Gdansk - KRS 101882 - NIP 957-07-52-316"
Content-Type: text/plain; charset="utf-8"
Content-Disposition: inline
X-ClientProxiedBy: WA2P291CA0048.POLP291.PROD.OUTLOOK.COM
 (2603:10a6:1d0:1f::10) To CO1PR11MB5057.namprd11.prod.outlook.com
 (2603:10b6:303:6c::15)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: CO1PR11MB5057:EE_|SJ2PR11MB7454:EE_
X-MS-Office365-Filtering-Correlation-Id: ceaf33fd-5032-4122-5f19-08de53869ac6
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|366016|1800799024|376014;
X-Microsoft-Antispam-Message-Info: =?utf-8?B?Ym5Od3JKeXNBUlhhRGVaQ21NWjdtY0swczFUZ28ydzV2aEMxMHZuYUVqZUpn?=
 =?utf-8?B?Wk5ja3VZbXlYZHhZV3o1dGc3bU5xa09zODNOUTA4MHJHNmN1bnFEekVLbnhN?=
 =?utf-8?B?eVJCM3k3U2FRSmZsY2puN1o2NnRQOVEyc1QrYnJadDlycXlUQXVnVlJlYll5?=
 =?utf-8?B?N3dYWE9nTHZXOFV0NHBKNFZNQkFWR2dVUFpTbVVCbE8yUlJwMG1sS1pxZCtN?=
 =?utf-8?B?MCtMenlVUUUxYm1YTnZJT1F0NDJOVzNpOHRUckJ4R3AxN1RxcXRFT0N4SFBW?=
 =?utf-8?B?ZlNuc2RDcnJYaStJTnhnSHN4Rkx0TGpSQTF1Zkg5UnhWTzh0ZzhhYTgrenoz?=
 =?utf-8?B?dHdmMlJYMnR5U3ZBSlBiV1NvYXUrL3BwRkgySGdQS1dXVHBiMGUxbGNyWHNV?=
 =?utf-8?B?S3JKRnBhcnp4bDQ4aFgzMTdmMmRMaytWdmtYTFBYQTNraGdYbDY3Z1Y5eHl4?=
 =?utf-8?B?bE1oTjF5ak5WVy9DTlMweUMrQmxCTUVaSnJuQnZMWHhnK056MkREK2J1bzdT?=
 =?utf-8?B?UkUyT3JZVnJoQm1DQTM2MXpEUzRYZUwwL2NNRWlVcGI1cXJIRnRndG1kOTFv?=
 =?utf-8?B?WnZrWElkKyt1aUV6M1JRWUVoSTBsWmpRbUg2QlMvMlUreUF4dnpxZXNwLy9J?=
 =?utf-8?B?K0hPdzhockNQS3BVanIxL1J5M1BvZnE1M2N2dXA3TDlxZE8yZ0dGMnliYWlF?=
 =?utf-8?B?K2dJR1JieGxNakRmWHBqS0hWM1RaSjh5eE1RK3hLSnh4RHFzTlErL0hmSUJF?=
 =?utf-8?B?dG5UV2NKWXRiMlNVbVJyU1RUb2lyM05YMWR1QkVvME16MkhnT2p5Q3VBaDFa?=
 =?utf-8?B?eHRMckxwOVVyOXhFUTJwTWg0R0MvLy9XTVYyeFlYS0R0L2ErMFZiNlZUbHRQ?=
 =?utf-8?B?a1BENEdqVEhGek1YbDM3eWl1MkNxUU1oY3RFYm5KZzdGMUdtZ2JCY0V5SUZr?=
 =?utf-8?B?Q0hNUmdueWZjekU2c2I2eXVHVmNWcWtXZ3pHQkVod0tsRW56YWhTVjh6NGxn?=
 =?utf-8?B?dEJUZEx3am5IY2JRZkpqOGNvd3BRWHZWdXlUVU5CK2FZVjBKNE5ySS80WkFL?=
 =?utf-8?B?Mkx6ek01QU5ZVGdLM3ZXVCs1am1UZ0lqNjV5TE9lTWlIRVFtRmoySTd1WTk0?=
 =?utf-8?B?bkpmbzZMMGExeGZTOG4rQkZta0VqOU1vcWI3bmxyL2lPSTBOSHl5MnI2VURC?=
 =?utf-8?B?eHNHVmpOZWxnMXhSdnhkU0lReDJhODQzbFZmeWZZZnBmSU5iak5xc0dlSWRp?=
 =?utf-8?B?RTFkaXJxT3lab3pYYXl2Q2JIY2pvMFd3RjQ2YlQ3ZnFQUDQ4cEYyQmt4bmFp?=
 =?utf-8?B?NjViM3RQeVBveXBicGwrSkM5ejRTVjBxblMrT2NMR04wLzQxNlhramovQndM?=
 =?utf-8?B?ZE8rcTMvbHRETzRUZmtXQ3VKK0NwckxmUW9sbXpEcmNTWW04Z3JWODRTem8y?=
 =?utf-8?B?dUFZZlR2ZlZhVCt6dWRSUGIxV0FXZ2d4SHNXV2lIdll5RTFZeEl2WjRlZlNY?=
 =?utf-8?B?dUtOckNjTmxJQnRRL1V5U0s0cnduWEpURytySis2R256U2pCUXJCdXdUVDc4?=
 =?utf-8?B?RVRiVTZYaXpuYzZTYmVwR2lVWUVwV1FGSU1aU0o4bTA0MXNKdjFsUTY1ZmJr?=
 =?utf-8?B?N0pYbkRVZ3kwVlQrV1NLUTVKSURydWxOVVYzSk1jM1lsTjJQcnExcnpFVlFv?=
 =?utf-8?B?T0NNejBhTEM5c3FkWVFlSUtUZjg5QTBPTU5ZKzJ2T1lrTHB2enVxRUx6RXAy?=
 =?utf-8?B?RS8vcnlCVm95OTBJYmRVUmZQWngyZWQ5c3ZVa0wvYTZqdWU0dWg0bmU5Mmti?=
 =?utf-8?B?RHFmSkwrV2JuMHBQTkY5Z1hDaDJEekk4NkJDb1dacUsxbmxpQ1NPYjZuOEpO?=
 =?utf-8?B?dHBuakF5bWVNN1dGeGZEc3ZmY013N3U1YUhGN0JnT0VKM21VdmFaeWJHeFdM?=
 =?utf-8?B?cXdJK0dTcjdCWUV0RFdxejNlYkpTMUwrSHpqOGlxWXBURTA2dkZ5Ym1SZkdJ?=
 =?utf-8?B?MzJkbE9yd3VtZEFycUY0bUhic1dOQkx4SW55MFJadkxvTk5wRFhUSFFzNWE4?=
 =?utf-8?Q?RQ5ZlW?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:CO1PR11MB5057.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(366016)(1800799024)(376014); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?ZTJKYTROb0w4VlYyTXp3emt2NGdTdWh5c0Q1WCtlM2tTVFF3RGJib2FSd0Rm?=
 =?utf-8?B?YkV6ZkMzSlRSQ0swZ2s2MjFFT3JZVVhERk9HcFdRNkIvZkhMcUtjUDBjMUlZ?=
 =?utf-8?B?V1dsTlpqTy9PQkR4NmdnRDUrS0hLUFBuNmhYUXZYQzJYbEY4Y0FxbWxJSHRQ?=
 =?utf-8?B?V0dlOWduM0tlZ0w4QWtqdDhpNTdpb2V4L1BGakZTMWxTWC9XVFE3RnZQQ0d4?=
 =?utf-8?B?ZmN1UVl4QzZjNGs0aXF3dHFMVnZMd3M2aHQ0L1dXTUlvUnpiMjRPTzVrdnZU?=
 =?utf-8?B?RlpkSThNeFVoemh1UHNuZms5d2Q0dExLNzZVZVdwbXM0U29jOGNKdnpENVJ0?=
 =?utf-8?B?eUNsdklGWi8vMWc0b1dUcGFTdHBlSVhWNzc0dlg0WUprbUNWUGxsd1R1S0tF?=
 =?utf-8?B?L0JyS0RzQWRmUGZJRDZhanF6RW5jTWRoNjNzUndUcENNZ3hsSXdaS3l4NmJ4?=
 =?utf-8?B?R0xYaHB3T3JyUWFtQ0E3WVZlY3FMVjVEVXZlcHRIUGJIOCtNR3d4WkkxRG1J?=
 =?utf-8?B?S0lRZWVzLy9vdks4d1JPcllBajRqZUdMa0Q5ZmZXUUlNNmtEL1U4OVNzbSts?=
 =?utf-8?B?RE9JU09xLzhwZWYrTFhSWFQ1aXYya0huTzBiNHI1NXNXK3NXcktYRGtxZWM4?=
 =?utf-8?B?VXdhOFNPcE5nSllNNFJKVFdGNGpka3Nrc2FocHh4YUhMVE1zRkYwdDVkdndz?=
 =?utf-8?B?L0tLM2NGbEpwdVg1YzdzMEF0QmhFVTdvOUMwQjlwZzYxSFFaeFlGZkJmQ1k4?=
 =?utf-8?B?bFBXdUFDbi9qaUhlcVlzMisxSXhDSm1WREFIbEpEMCtNRkloa1VrMkYzby8v?=
 =?utf-8?B?MnlYZ3kvck5sT0NUMExzUHQ2Y3BjWlB6azNUUldXWXJwWmh4ZklLc3pwZ3Nt?=
 =?utf-8?B?dXFkREppYmh0YytQSFA2YkhyNSs3SmwwZUFCTUNnRlAwQmJaMG52RHI3SVFQ?=
 =?utf-8?B?TjNZRW1IWWt6blhHREwwOGlyRkYwRk9xeVdwSkh1WmxwdisrRksycnh4ZzUv?=
 =?utf-8?B?MXZtdmtiRGtLNDFlQVFPYWd1QTVtNnUrNm12aWgva2RkQXM1YTVuN3FNSVhW?=
 =?utf-8?B?VGIzWWxqQzVqK1loTjJaL0NYbTZ3WmpBeXVTaTI1d0pLaUkxU2JtUUN3cUJS?=
 =?utf-8?B?amRWeWF3eVFxaXFvQzBHdjZXNnVoaHQ4RGdYMDkyUUwyMWhHZlcxbUlzaEJY?=
 =?utf-8?B?NU1LKzdNTjdKU3pIazNoM1ZiOXJWd0taeTdobFlqaEhzczJHd1FXT281M3Zp?=
 =?utf-8?B?YkVmWFRxcVE4NytQSk9FR3J5SE1OVER1MEIxRTdoYzVJczdxTkMvUjRHYXps?=
 =?utf-8?B?bnp2ZnZQeUZuMkNvUlBnSGhMQkxQT3Z1dTRwN0x0MXRtNXd2NVA0dEFveDVI?=
 =?utf-8?B?ZCtKdm9JZ1FNR1JRdjNHTzI0b05teTE5YUMybVFCYVVyZVAyZ2JTWDdiZnF3?=
 =?utf-8?B?Y3hwcDhkRjF6M0tXK0s1WEUvUm13VEgybURnR1lJMVBtdHZoVXdCNy95ZStz?=
 =?utf-8?B?RGIxL29oYTJXWTh1VXpzalZQRlFFVXBFcTh0SmszSStnY05XUTFia0dNVnRD?=
 =?utf-8?B?d2JVZzNhMVBlZk9NeEExVVZlZ29CdTM4NmFBbm1LMFhKR2pwUU5NTDNyYm5G?=
 =?utf-8?B?dHJnSndvQ1RvRnZ0NE9VQStyMUxOSVdJMnJLZE5DMWxhYUQvZUl2eHp0K3VX?=
 =?utf-8?B?SVFHTmdtRkJ1eVNnRGI3NnpwaWZaaytzckFRcmVYZ0tCVUwvbDVuYjRIbGlt?=
 =?utf-8?B?akZCRTNSMnlwY2NaSmIxUW1EL0hzWllOOXFEMHlQelR0UURZQVU2U1FtamlN?=
 =?utf-8?B?aHF2NjlEK2hvSit4MWZ1d3FFNGUyN2FQclNXSzB2T0hGZko5OW9KVllCNVJM?=
 =?utf-8?B?VThMZ1dQQlhuYXErZG5ndWwxaUlWK002TVlmWHNWOWtMQVN2UWNIQ3Q3OWNm?=
 =?utf-8?B?SU1WUktCSlh2bUVlT3hLelZQQ0NaYUNmbjRNVHhVZ3hqZFFoYVNnREFHK3hL?=
 =?utf-8?B?c29LSURQRDMwaTRiYkRxaUlUazhtRkxiT09GVEFaL2pIajdqZEhuWVJyN3Bj?=
 =?utf-8?B?MkxHQVNrQmxzbUNLbWkvVTVaaE8xbTE3akRMb2gyUkJLUzFvRHVGRTI4RmdV?=
 =?utf-8?B?WkE3NTZIYjNJRk1OMXpoRGRoQzk1aFpGMkNpdkpvMEdMWnZKOVZGV29ubGtC?=
 =?utf-8?B?bUplQ3VudFkwMU5rRlkrUERFcE5DS0NYSXBIUUsvUVJVTGlhTFJYTFZXazlJ?=
 =?utf-8?B?bmlGT05UOS82VXkvQlVPMUpUVENVd3ArRHI2RXEwYXFUK1Z6bkxEdlFONWs5?=
 =?utf-8?B?ZEJWREFQVTM3MGs4amYzUEZ2b2FXb0c3UGc2dzRKaWVMU2dIeGlCQ0dUMlNO?=
 =?utf-8?Q?WxfI+ibmRAs5TEUw=3D?=
X-MS-Exchange-CrossTenant-Network-Message-Id: ceaf33fd-5032-4122-5f19-08de53869ac6
X-MS-Exchange-CrossTenant-AuthSource: CO1PR11MB5057.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 14 Jan 2026 16:04:32.2223 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: q3X+TkrJi9a2DzpMbztM42iPYmemtbpEdn+oyJYEqxffAr4Pi8F1PSMum+ejsZUVDY/Veh8o3An/khovbrqqIPva/7wmZINygSvM3GvfOqM=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SJ2PR11MB7454
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

igt_mmap_migrate() tests migration with various parameters.
In one of the cases, where FILL and UNFAULTABLE flags are set,
during first stages of this test, a mock file is opened in
igt_mmap_offset(), which results in allocating GEM objects for
page table structures and scratch in GPU mappable memory.

Then, also in igt_mmap_offset(), the file is closed (fput) and
the cleanup of these objects is scheduled on a delayed worqueue,
which is designed to execute after unspecified amount of time.

Next, the test calls igt_fill_mappable() to fill mappable GPU
memory. At this point, three scenarios are possible
(N = max size of GPU memory for this test in MiB):
 1) the objects allocated for the mock file get cleaned up after
    crucial part of the test is over, so the memory is full with
    the 1 MiB they occupy and N - 1 MiB added by
    igt_fill_mappable(), so the migration fails properly;
 2) the object cleanup fires before igt_fill_mappable()
    completes, so the whole memory is populated with N MiB from
    igt_fill_mappable(), so migration fails as well;
 3) the object cleanup is performed right after fill is done,
    so only N - 1 MiB are in the mappable portion of GPU memory,
    allowing the migration to succeed - we'd expect no space
    left to perform migration, but an object was able to fit in
    the remaining 1 MiB, which caused get_user() to succeed, so
    a page fault did not fail.

The test incorrectly assumes that the GPU mappable memory state
is unchanging during the test. Amend this by keeping the mock
file open until migration and page fault checking is complete.

Closes: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/13929
Signed-off-by: Krzysztof Karas <krzysztof.karas@intel.com>
---
There are 7 GEM objects in total allocated as a result of mock
file creation:
a) 1 object from __i915_gem_object_create_lmem_with_ps()
 -> i915_gem_object_create_region(),
b) 3 objects from i915_vm_alloc_pt_stash() -> alloc_pt()
 -> alloc_pt_lmem(),
c) 3 objects from i915_vm_alloc_pt_stash() -> alloc_pd()
 -> alloc_pt_lmem().

I inspected the behavior of this test on ATS-M and DG2
platforms. The latter always freed the GEM objects originating
from mock file creation at the end of the test. ATS-M, on the
other hand, performed the release much sooner - around the time
a call to igt_fill_mappable() would be returning, so there was
not much leeway in the timing. I confirmed this by delaying the
fill operation by one second and that did away with the issue.
On the other end, adding a delay to __i915_gem_free_objects()
produced 100% reproduction rate. However, I felt that juggling
delays would not have resolved the problem, only decreased the
probability of this race, so I decided to increase control over
the contents of mappable memory instead.

Chris Wilson had a suspicion that this patch papers over leaking
vm_area struct, which was addressed in
f768ebbba9110846c9f986a96109d70154d60b5d, but that did not
resolve the original issue.

v2:
* change ownership of the file used in igt_mmap_offset*
  functions to the caller (Krzysztof, Sebastian);
* rename igt_mmap_offset_get_file() to
  igt_mmap_offset_with_file();

v3:
* remove double fput() call (Krzysztof);

v4:
* extend the comment above mock_drm_getfile();
* reword commit message to contain information about GEM
  objects;
* rebase;

v5:
* skip checking if file exists in igt_mmap_offset_with_file()
(Jani);

v6:
* add a new label for fput() (Andi);
* rebase;

 .../drm/i915/gem/selftests/i915_gem_mman.c    | 27 ++++++++----
 drivers/gpu/drm/i915/selftests/igt_mmap.c     | 41 ++++++++++++-------
 drivers/gpu/drm/i915/selftests/igt_mmap.h     |  8 ++++
 3 files changed, 55 insertions(+), 21 deletions(-)

diff --git a/drivers/gpu/drm/i915/gem/selftests/i915_gem_mman.c b/drivers/gpu/drm/i915/gem/selftests/i915_gem_mman.c
index 0d250d57496a..032bc2f17685 100644
--- a/drivers/gpu/drm/i915/gem/selftests/i915_gem_mman.c
+++ b/drivers/gpu/drm/i915/gem/selftests/i915_gem_mman.c
@@ -1159,6 +1159,7 @@ static int __igt_mmap_migrate(struct intel_memory_region **placements,
 	struct drm_i915_gem_object *obj;
 	struct i915_request *rq = NULL;
 	struct vm_area_struct *area;
+	struct file *mock_file;
 	unsigned long addr;
 	LIST_HEAD(objects);
 	u64 offset;
@@ -1178,16 +1179,25 @@ static int __igt_mmap_migrate(struct intel_memory_region **placements,
 		goto out_put;
 
 	/*
-	 * This will eventually create a GEM context, due to opening dummy drm
-	 * file, which needs a tiny amount of mappable device memory for the top
-	 * level paging structures(and perhaps scratch), so make sure we
-	 * allocate early, to avoid tears.
+	 * Pretend to open("/dev/dri/card0"), which will eventually create a GEM
+	 * context along with multiple GEM objects (for paging structures and
+	 * scratch) that are placed in mappable portion of GPU memory.
+	 * Calling fput() on the file places objects' cleanup routines in delayed
+	 * worqueues, which execute after unspecified amount of time.
+	 * Keep the file open until migration and page fault checks are done to
+	 * make sure object cleanup is not executed after igt_fill_mappable()
+	 * finishes and before migration is attempted - that would leave a gap
+	 * large enough for the migration to succeed, when we'd expect it to fail.
 	 */
-	addr = igt_mmap_offset(i915, offset, obj->base.size,
-			       PROT_WRITE, MAP_SHARED);
+	mock_file = mock_drm_getfile(i915->drm.primary, O_RDWR);
+	if (IS_ERR(mock_file))
+		return PTR_ERR(mock_file);
+
+	addr = igt_mmap_offset_with_file(i915, offset, obj->base.size,
+					 PROT_WRITE, MAP_SHARED, mock_file);
 	if (IS_ERR_VALUE(addr)) {
 		err = addr;
-		goto out_put;
+		goto out_fput;
 	}
 
 	mmap_read_lock(current->mm);
@@ -1294,6 +1304,9 @@ static int __igt_mmap_migrate(struct intel_memory_region **placements,
 out_addr:
 	vm_munmap(addr, obj->base.size);
 
+out_fput:
+	fput(mock_file);
+
 out_put:
 	i915_gem_object_put(obj);
 	igt_close_objects(i915, &objects);
diff --git a/drivers/gpu/drm/i915/selftests/igt_mmap.c b/drivers/gpu/drm/i915/selftests/igt_mmap.c
index e920a461bd36..106d5c0dfcbc 100644
--- a/drivers/gpu/drm/i915/selftests/igt_mmap.c
+++ b/drivers/gpu/drm/i915/selftests/igt_mmap.c
@@ -9,14 +9,14 @@
 #include "i915_drv.h"
 #include "igt_mmap.h"
 
-unsigned long igt_mmap_offset(struct drm_i915_private *i915,
-			      u64 offset,
-			      unsigned long size,
-			      unsigned long prot,
-			      unsigned long flags)
+unsigned long igt_mmap_offset_with_file(struct drm_i915_private *i915,
+					u64 offset,
+					unsigned long size,
+					unsigned long prot,
+					unsigned long flags,
+					struct file *file)
 {
 	struct drm_vma_offset_node *node;
-	struct file *file;
 	unsigned long addr;
 	int err;
 
@@ -31,22 +31,35 @@ unsigned long igt_mmap_offset(struct drm_i915_private *i915,
 		return -ENOENT;
 	}
 
-	/* Pretend to open("/dev/dri/card0") */
-	file = mock_drm_getfile(i915->drm.primary, O_RDWR);
-	if (IS_ERR(file))
-		return PTR_ERR(file);
-
 	err = drm_vma_node_allow(node, file->private_data);
 	if (err) {
-		addr = err;
-		goto out_file;
+		return err;
 	}
 
 	addr = vm_mmap(file, 0, drm_vma_node_size(node) << PAGE_SHIFT,
 		       prot, flags, drm_vma_node_offset_addr(node));
 
 	drm_vma_node_revoke(node, file->private_data);
-out_file:
+
+	return addr;
+}
+
+unsigned long igt_mmap_offset(struct drm_i915_private *i915,
+			      u64 offset,
+			      unsigned long size,
+			      unsigned long prot,
+			      unsigned long flags)
+{
+	struct file *file;
+	unsigned long addr;
+
+	/* Pretend to open("/dev/dri/card0") */
+	file = mock_drm_getfile(i915->drm.primary, O_RDWR);
+	if (IS_ERR(file))
+		return PTR_ERR(file);
+
+	addr = igt_mmap_offset_with_file(i915, offset, size, prot, flags, file);
 	fput(file);
+
 	return addr;
 }
diff --git a/drivers/gpu/drm/i915/selftests/igt_mmap.h b/drivers/gpu/drm/i915/selftests/igt_mmap.h
index acbe34d81a6d..7b177b44cd3c 100644
--- a/drivers/gpu/drm/i915/selftests/igt_mmap.h
+++ b/drivers/gpu/drm/i915/selftests/igt_mmap.h
@@ -11,6 +11,7 @@
 
 struct drm_i915_private;
 struct drm_vma_offset_node;
+struct file;
 
 unsigned long igt_mmap_offset(struct drm_i915_private *i915,
 			      u64 offset,
@@ -18,4 +19,11 @@ unsigned long igt_mmap_offset(struct drm_i915_private *i915,
 			      unsigned long prot,
 			      unsigned long flags);
 
+unsigned long igt_mmap_offset_with_file(struct drm_i915_private *i915,
+					u64 offset,
+					unsigned long size,
+					unsigned long prot,
+					unsigned long flags,
+					struct file *file);
+
 #endif /* IGT_MMAP_H */
-- 
2.43.0

-- 
Best Regards,
Krzysztof
