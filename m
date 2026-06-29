Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id Qo0VB+l9Qmrb8QkAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Mon, 29 Jun 2026 16:15:05 +0200
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 9D7986DBD7C
	for <lists+intel-gfx@lfdr.de>; Mon, 29 Jun 2026 16:15:04 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=intel.com header.s=Intel header.b=J+CHOOwQ;
	spf=pass (mail.lfdr.de: domain of intel-gfx-bounces@lists.freedesktop.org designates 131.252.210.177 as permitted sender) smtp.mailfrom=intel-gfx-bounces@lists.freedesktop.org;
	dmarc=pass (policy=none) header.from=intel.com;
	arc=reject ("signature check failed: fail, {[1] = sig:microsoft.com:reject}")
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 2278A10E0B9;
	Mon, 29 Jun 2026 14:15:03 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.20])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 9841610E914;
 Mon, 29 Jun 2026 14:15:01 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1782742501; x=1814278501;
 h=date:from:to:cc:subject:message-id:references:
 in-reply-to:mime-version;
 bh=5oEneSyK5RVkaka7LBj87bDi6iHZRaYI451pv9d/TdE=;
 b=J+CHOOwQzMJptJTUobh/vMpN9TlwUB7cDoWPELH20v7qizkm8qSmCpkC
 0kYSH1sx78bdLGyKDcVxkDSbhKQUesv6EqZF1t9MKu3e9k/ANLWpdQJT9
 tqHTkpYghIxdrm3gRbKKU6RaXS2/s3t6RNvrEdV6eSy22ZqmEZ7LGc2vZ
 Qn6eL9h4MnW8YrubulQlj/5aQ2DGhXI2OyfniR5bUJEF7dECKAPaDl4ey
 eKJEEkc4IF0OKwfQYkpQuDE9z9P4K5ABjtcUEECms68ol/oUIwPyDPybZ
 DokhkD4T/ttGWytCM2tEa8lqGQWuIqHDxBpJ9nRHA4qd88GuMk1r0C94n g==;
X-CSE-ConnectionGUID: 4ZrQDC0gRM2etYaf7t69Wg==
X-CSE-MsgGUID: sfiY1CiOSJOd8v1396v1eg==
X-IronPort-AV: E=McAfee;i="6800,10657,11831"; a="83202386"
X-IronPort-AV: E=Sophos;i="6.24,232,1774335600"; d="scan'208";a="83202386"
Received: from orviesa003.jf.intel.com ([10.64.159.143])
 by orvoesa112.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 29 Jun 2026 07:15:01 -0700
X-CSE-ConnectionGUID: hnhoFFCZRFGM8Qwg2JSrDA==
X-CSE-MsgGUID: 35MStfP+R2qX0QJRhjwBJA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.24,232,1774335600"; d="scan'208";a="255568418"
Received: from orsmsx901.amr.corp.intel.com ([10.22.229.23])
 by orviesa003.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 29 Jun 2026 07:15:00 -0700
Received: from ORSMSX903.amr.corp.intel.com (10.22.229.25) by
 ORSMSX901.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.43; Mon, 29 Jun 2026 07:14:59 -0700
Received: from ORSEDG902.ED.cps.intel.com (10.7.248.12) by
 ORSMSX903.amr.corp.intel.com (10.22.229.25) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.43 via Frontend Transport; Mon, 29 Jun 2026 07:14:59 -0700
Received: from SN4PR0501CU005.outbound.protection.outlook.com (40.93.194.13)
 by edgegateway.intel.com (134.134.137.112) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.43; Mon, 29 Jun 2026 07:14:56 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=KgNR6UUwsff6yL/aFSuIBzj4WCAq6F60t+FeA1HRgtnsk/O0KfTzp7qDKsnag8lc5tjI4AQ6mBETozaksK7HmsTjuygLHgrvBLeIaCwd9aUlHjqroZThsHccYK+D3tDhuwQB3OkBCkAEbYvzTpkQ7biuSgQESugcnEViCkZpyzPzwFbuZI9MUQwruz58LdRp3lThLPmD38lqCVF+LUnfSkxVzOPKmqll2JDIm7yhDI2UeWp+p4lWv7dbg+S2aTdjJA/qU3d/UkrxCeKqN9Im0KLN0JkzGMa2B7RxxtrmWU8KMaJIAkg5FFT1LpFVJ/A1jn7fapHJKC7pvZOM7WKiJQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=UfQqRiEVm5JPHcHH4ZIGBItg0FAzGgrAOdB1csXhx/4=;
 b=C9Obc+9RPaHqRrY8eJBMoAj2yAwyx+iuXQ872pJjs9W40uW2IB5Dks6XBMMyRakEX4sgQLQq32dzw53dy7vIJXxVnN9yQca/03NpZjBm/qQfpsNZT2Zb3bkN0HtmTNgF7qJOYC7xaY5sdHfIW50PPURrGhIzZN4HQHit1COTGMmB4niPddAUac7RiVzOYkvU3KeyC4ECx5u0DFq+rWMbc1NdkZvpHcOS89VQ5RBLbAv7agcELEJRb5jZZ0T8/UU/Bt5rtAvqnW7bVfA6DP0vIK2vTNfkGs1FGP4U++Yj6pMv9GM7+dWUFCjtcwXpj+7pgU1pFo5YL3bazy11l9B1EA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from PH0PR11MB7424.namprd11.prod.outlook.com (2603:10b6:510:287::7)
 by IA1PR11MB9472.namprd11.prod.outlook.com (2603:10b6:208:5ae::9)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.21.159.19; Mon, 29 Jun
 2026 14:14:48 +0000
Received: from PH0PR11MB7424.namprd11.prod.outlook.com
 ([fe80::c448:1138:6981:52e2]) by PH0PR11MB7424.namprd11.prod.outlook.com
 ([fe80::c448:1138:6981:52e2%5]) with mapi id 15.21.0159.018; Mon, 29 Jun 2026
 14:14:48 +0000
Date: Mon, 29 Jun 2026 14:14:37 +0000
From: Krzysztof Karas <krzysztof.karas@intel.com>
To: Robin Murphy <robin.murphy@arm.com>
CC: <intel-gfx@lists.freedesktop.org>, <dri-devel@lists.freedesktop.org>,
 <iommu@lists.linux.dev>, Andi Shyti <andi.shyti@linux.intel.com>, "Joerg
 Roedel" <joro@8bytes.org>, Janusz Krzysztofik
 <janusz.krzysztofik@linux.intel.com>, Sebastian Brzezinka
 <sebastian.brzezinka@intel.com>, Krzysztof Niemiec
 <krzysztof.niemiec@intel.com>
Subject: Re: [PATCH 1/3] drivers/iommu: Unroll unsuccessful mapping
Message-ID: <re32byv6gzvmzxruvasyicwq5r2ewolk6g2rq7dikga7ei5kmr@djuqgy4dqsz4>
"Organization: Intel Technology Poland sp. z o.o. - ul. Slowackiego 173,
 80-298 Gdansk - KRS 101882 - NIP 957-07-52-316"
References: <20260625134342.1102921-1-krzysztof.karas@intel.com>
 <20260625134342.1102921-2-krzysztof.karas@intel.com>
 <ce5f27fd-82be-4750-8592-2eeb31a54523@arm.com>
 <xajagmgqwrspthaza4zkxfgubatdg762k6icu6vwv2lzwzarh5@hxzhg7vkuc2g>
 <050f21ea-109c-4247-b6ad-cdef906f6175@arm.com>
Content-Type: text/plain; charset="utf-8"
Content-Disposition: inline
In-Reply-To: <050f21ea-109c-4247-b6ad-cdef906f6175@arm.com>
X-ClientProxiedBy: DUZPR01CA0179.eurprd01.prod.exchangelabs.com
 (2603:10a6:10:4b3::10) To PH0PR11MB7424.namprd11.prod.outlook.com
 (2603:10b6:510:287::7)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: PH0PR11MB7424:EE_|IA1PR11MB9472:EE_
X-MS-Office365-Filtering-Correlation-Id: 92f3c5d2-119a-4669-e82b-08ded5e8c6d0
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
 ARA:13230040|366016|23010399003|376014|1800799024|18002099003|22082099003|4143699003|11063799006|6133799003|56012099006;
X-Microsoft-Antispam-Message-Info: RahVPDnYgBaNgJuY9LrQTQu1+rs8PCeQi8ih9DWNVlLFoT/kxICIe/0BoT9HTZg+v+2zlR7PO9XnTJRzGH775IM2sKs+DhDAWA/0FTV1XxPXG4GaaG/uwmAj9fqzFPuf+tLmSIn8jHHIjYQrFsD+pWpsETs1ZIoT91PhltazFRlLs1P4iRNZlFBdvzmUv1/7ptsGaMR5Pnkf3KqyVWOz+3FGQww+r6yyYekic4ZvIHnsO3iF77ETKL3xZXsCq6nlGWYCZkqGBsv3u5tA3H6Nb37uxsQLqNuXfYmTRKMlYinqdSVDbgVYPxmqv4clp+fH51GPa/LL46TUklbL+LmHVTg4190LCUaEJjZx6jMUCIj1/hApbL233jOUlWcKUIhJCaXlbQfCB7HMqTa0Lyz+RMEEeuH7dV+PBtsfNAxk0S+CTTm6BTCTka4Eo+cr8mZxKF5TOFHXhHD85hEgAQMPdt67SZBTauNlfeubmOmexcUGSDkmL9ePGLGuQmeRmve5xbWBPYJASNuk8eEs1/VQzZv6KQOt4yhtUfkr/YqdZdYWEyXNvrpqQrgo6/hQ+OPMrjEo06Z1/EZCZFJFqwK09kBOf7Y4+2fRaqP3PV44UBDtUQ4dDIb6N8WuXGYY5SH76pxBPblswqavsZ0emufy3Wd7WGBcrhdeVLcbAyBLhe4=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:PH0PR11MB7424.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(366016)(23010399003)(376014)(1800799024)(18002099003)(22082099003)(4143699003)(11063799006)(6133799003)(56012099006);
 DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?dXBnc3NMVEpBN2tDY3I3TksxVWFQN0xxWlJGdHBucnVQTEdhcHRpRG1pYStR?=
 =?utf-8?B?WnpuQ1lNMi96QmZoY1E0cWJCTy80bU5HaHVoVzdPUW5ZeExMZG9oaHlhUDlj?=
 =?utf-8?B?azVFMHpkRHhpR2N0LzRaNjROOG9OVGVFbVF6RkFoejBsdDBmRzBWUzRYUHF3?=
 =?utf-8?B?eFlxZTB4aHN0eUxrWU9LTEFvUzVyRFAxQ2s5M0V4cHM5ZHgrSTQ1clFNZEJm?=
 =?utf-8?B?cDNFVTV2cVBpVnFKWlV6WmV3VUU4bXVGSDdpelJBNk55VVlHcUFzT3JGSzR2?=
 =?utf-8?B?OXNKelB3NU4yemh1M0s2eWxqSDJWelFSWTE2UjdORUtyS2U4M1hoWHBSTDhZ?=
 =?utf-8?B?bVpERzVNVmNvTENkbUVvMFB3RW1BbStrb0RNNHYwNDB6azBLUUxNei9uK0NN?=
 =?utf-8?B?VjljZldWTytYbmttYjFxMm0veDdXaTcyOFlZRUVVdW9lNE9QMTNpTGw3TCsx?=
 =?utf-8?B?RkVKcXpRdFovb1pCbWRuYlRXQnFGN2s0UCsvdUJ5QUhSb3A1d0ptNnRSbVRI?=
 =?utf-8?B?Vm11T2FwRmJLRGdjMUZRck9NVE9oZmZ5TSt1OHoyVTZsaXBNOEhiVGJXS0F3?=
 =?utf-8?B?d2dMbTZQSVZzM3Z4Rks4SkRxalU2bHd4SzB3aGRyNWkyays2UTl3ZGdnMk5z?=
 =?utf-8?B?ckh4Qmk5ZC8xdDVqVnBTWVZqYUJncG9BQWhCZVFFNUdIclNMS1ZhL1JGYmRQ?=
 =?utf-8?B?UlUrUW1lVDY5YXpxWVU1QlBuZmZIWmNUalBwRnVqeVdpOXJOVjFjc3V2Q21S?=
 =?utf-8?B?Y1dtTGl3VzNMR21Hc3QxRkNqdE0wQU5vTitsZFFWNHppQW8zaW5CS01EOU5X?=
 =?utf-8?B?SjVQU05Iei9LNGYvblZGQkdvUzhqbDdLVisvcVBUSm84ak5hekViU0Fxc0tJ?=
 =?utf-8?B?Q3UrUTZpRGpCWDFvaFhlNkVvLzJ5V3hXOCtxaUVXN1FmZ3lDb3llOTRMaGlO?=
 =?utf-8?B?QklqUXZ3VHIvVzArNGE4ZVphcGdPa2doN281TlFpZG1HclZ5SGc2SGRIalpS?=
 =?utf-8?B?djRHV0p0WngxZEs0Sm5halpKbVgya0h3TWFIMUdmcEJWYXpzMzQrbHNxSGQv?=
 =?utf-8?B?RTFibmMxNFR0bDhaYnNhUXlXNDBCT0lqQ0w5eG1PUHBkcWIrRzd4aFpmZTVN?=
 =?utf-8?B?OU9wN05STWlzUEFFMFJtTXhQeHJ4NmJVT3hLWjltVGhiUWt5U2ZOZWtiRklU?=
 =?utf-8?B?dGdyaWhtUktkQVdOd21zbXBmNVFEdUZkS0YvWHFIb1lreDVVNG9mNEp3SUNm?=
 =?utf-8?B?S0I3d09DNDIzZEx0K3R3NEN2MTNpcnh2VGVnUFh1NUxPYmI2dVZWS2gxUlYy?=
 =?utf-8?B?NUdTcU5TaEpqTTJNY3pYa1NwTWZydzVCMGxhQmh1VDlKTXdUUXF1SVZOMlRR?=
 =?utf-8?B?Vy91eWw5T21SUjB4ZnhLQytmN1ZZdE5vS3dVRXgzcXhkaVUyV0xsUDBhOWFC?=
 =?utf-8?B?OVdmWm9lUGhCdE1nWG04TEhYVXd1WHNJeEF0Rk1KNk81U3NEQ1ZUR0o4SkdH?=
 =?utf-8?B?cng4VGJSMUp6WVNtL2RFS3Q2S3Z0TC9EWERCU3BXeUJ1Q3hDZjBlR28xbUVB?=
 =?utf-8?B?enE3TnJBczc1alZKNmRxeHRKTm9xK0ZpWlh6WGFXTkFNVmhvVzVZWmdqeUhh?=
 =?utf-8?B?TE9FUVRnd3ZnK1JGS0ZoOWIxVHNnRklWakY1bDhtSGRueHpCVU40MGY5TGRk?=
 =?utf-8?B?R1R5bXllQWFEOERGdldQZHlPVEJmcGhwbXFSRmdHNTRXOGlJMlBnRFZHU0c2?=
 =?utf-8?B?NVBTTFJaUXA4RXFKNC9JakxrYk1UeUZJMHUxRXNtK3pLc2h4dHhrUnozMGVW?=
 =?utf-8?B?R3BzS0FLamZ3dXlsbzRYeGxRQkp5ZHVUaW9MUG9kQkJwY2xLa2h3ZTFLTWwz?=
 =?utf-8?B?SENXa2lGaS94bWZ5d1RvVFdlSjNib2ZOYVJZaEJHaE9jS01TMXVRUTNCb3Vi?=
 =?utf-8?B?YVhHY0dZMzhQYkpNMzJML3pwdC91MFgzR0Y4bDRjaXdSSjN3RWU2V3k2d0Nn?=
 =?utf-8?B?OEhTTEl1bmpKOXd6Rm03OVRHeEE3YjE0cHVkOVp2UkIwbDA0M1gvVzZtREdF?=
 =?utf-8?B?Z1JjY2ZjaWZIY0doblZmUVBjNUVrRUQxY0hpcGhyRkJEcFFlTG8zMzRmUmpO?=
 =?utf-8?B?T3kvN0ZWcUNZZmlYcXI1Y055T1F4ZnpxYjVFYlk0YlpvNXJCR0pmUHg1OXBk?=
 =?utf-8?B?aUNqNXBpajBkSTZjc0p6RjMrVjUxTFplZ1E1OFBmaDd0ZzdFdFE3bkliWmww?=
 =?utf-8?B?VHVyNVFHQlBYN016Rmx4YzF2djV5TmlVZzVPN1AwbEV0aWNGTG9hSVhMNHo0?=
 =?utf-8?B?Q3g3NENSdVFIWUt5ZlpYSjJITVQrRFNwS0RXd2JkRFhqZDdsaElXeWlrL3R1?=
 =?utf-8?Q?INnlEHY+227CImCA=3D?=
X-Exchange-RoutingPolicyChecked: i/sBR0CylhCUsQK/8kBbnxynFpq1B7Fo01EI1j45e3cDWOFds1L8X0BDMeQZVFMzQmUJhid0ypNbtXRxMUcZZV3yeUQn5Vo327FUfpNfq7pyboooZiaFZwY9wSb49pPy+eqqR+Kh3nDoEWp72Sy269vX76c6Hkq91+0vByE/ox1ySpgOoUYyGu68neDAO0h3+nEhLx9tAe5fNPmGSqn3WK6huUf2yFiFo/Wg2rLbsSeZqlcVtI/4gSzTw3tpSQi0JrOourRjH0glmcS0fbGvMCbLSkrLJGTVbADk1bjRPIqAbZ7OMu4w9UrNeanaLc0PaomMtTbC+R435+318G71RQ==
X-MS-Exchange-CrossTenant-Network-Message-Id: 92f3c5d2-119a-4669-e82b-08ded5e8c6d0
X-MS-Exchange-CrossTenant-AuthSource: PH0PR11MB7424.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 29 Jun 2026 14:14:47.9548 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: hGu8YRABAnm0X8bJ01HRRvm4mD2CUxTa8LFoeaMf+aoHgiu6SHQjBPejjqtJzzWMHA9eN4dfj+AbU8QBzhHQYyvd5otyeZ2PzpjDbG5y4kM=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: IA1PR11MB9472
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
X-Rspamd-Action: no action
X-Spamd-Result: default: False [0.19 / 15.00];
	ARC_REJECT(1.00)[signature check failed: fail, {[1] = sig:microsoft.com:reject}];
	MID_RHS_NOT_FQDN(0.50)[];
	DMARC_POLICY_ALLOW(-0.50)[intel.com,none];
	R_DKIM_ALLOW(-0.20)[intel.com:s=Intel];
	MAILLIST(-0.20)[mailman];
	R_SPF_ALLOW(-0.20)[+ip4:131.252.210.177:c];
	MIME_GOOD(-0.10)[text/plain];
	RWL_MAILSPIKE_GOOD(-0.10)[131.252.210.177:from];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[gabe.freedesktop.org:rdns,gabe.freedesktop.org:helo,lists.freedesktop.org:from_smtp,intel.com:dkim,intel.com:from_mime];
	MIME_TRACE(0.00)[0:+];
	FORGED_SENDER_MAILLIST(0.00)[];
	DKIM_TRACE(0.00)[intel.com:+];
	MISSING_XM_UA(0.00)[];
	TO_DN_SOME(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[krzysztof.karas@intel.com,intel-gfx-bounces@lists.freedesktop.org];
	FROM_HAS_DN(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	ALIAS_RESOLVED(0.00)[];
	TAGGED_RCPT(0.00)[intel-gfx];
	RCPT_COUNT_SEVEN(0.00)[9];
	ASN(0.00)[asn:6366, ipnet:131.252.0.0/16, country:US];
	RCVD_COUNT_SEVEN(0.00)[9]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: 9D7986DBD7C

On 2026-06-29 at 11:49:56 +0100, Robin Murphy wrote:
> On 29/06/2026 11:12 am, Krzysztof Karas wrote:
> > Hi Robin,
> > 
> > thanks for looking at this.
> > 
> > On 2026-06-25 at 15:29:10 +0100, Robin Murphy wrote:
> > > On 25/06/2026 2:43 pm, Krzysztof Karas wrote:
> > > > Currently, if iommu maps fewer bytes than requested (iova_len),
> > > > it proceeds to free the iova, but never tries to unmap already
> > > > touched bytes. This behavior may cause memory hogging down the
> > > > line.
> > > 
> > > Huh? iommu_map_sg() has always unmapped internally upon any error - can you
> > > clarify how you've seen it returning a short mapping in a non-error case?
> > Yes. I applied some debug logging:
> > 
> > diff --git a/drivers/iommu/dma-iommu.c b/drivers/iommu/dma-iommu.c
> > index 381b60d9e7ce..f166cd31d68f 100644
> > --- a/drivers/iommu/dma-iommu.c
> > +++ b/drivers/iommu/dma-iommu.c
> > @@ -1515,8 +1515,10 @@ int iommu_dma_map_sg(struct device *dev, struct scatterlist *sg, int nents,
> >           * implementation - it knows better than we do.
> >           */
> >          ret = iommu_map_sg(domain, iova, sg, nents, prot, GFP_ATOMIC);
> > -       if (ret < 0 || ret < iova_len)
> > +       if (ret < 0 || ret < iova_len) {
> > +               printk("%s: ret = %zd, iova_len = %lu\n", __func__, ret, iova_len);
> >                  goto out_free_iova;
> > +       }
> >          return __finalise_sg(dev, sg, nents, iova);
> > @@ -1525,8 +1527,10 @@ int iommu_dma_map_sg(struct device *dev, struct scatterlist *sg, int nents,
> >   out_restore_sg:
> >          __invalidate_sg(sg, nents);
> >   out:
> > -       if (ret != -ENOMEM && ret != -EREMOTEIO)
> > +       if (ret != -ENOMEM && ret != -EREMOTEIO) {
> > +               printk("%s: returning -EINVAL\n", __func__);
> >                  return -EINVAL;
> > +       }
> >          return ret;
> >   }
> > diff --git a/drivers/iommu/iommu.c b/drivers/iommu/iommu.c
> > index d1a9e713d3a0..59163ad0bce3 100644
> > --- a/drivers/iommu/iommu.c
> > +++ b/drivers/iommu/iommu.c
> > @@ -2900,6 +2900,7 @@ ssize_t iommu_map_sg(struct iommu_domain *domain, unsigned long iova,
> >          return mapped;
> >   out_err:
> > +       printk("%s: Calling iommu_unmap()\n", __func__);
> >          /* undo mappings already done */
> >          iommu_unmap(domain, iova, mapped);
> > 
> > 
> > and ran "gem_exec_big" with subtest "single" from igt-gpu-tools
> > (./igt-gpu-tools/build/tests/gem_exec_big --run-subtest single)
> > on a Tiger Lake platform. I observed:
> > 
> > [   77.494513] [IGT] gem_exec_big: executing
> > [   77.513162] [IGT] gem_exec_big: starting subtest single
> > [   77.513739] gem_exec_big (2863): drop_caches: 4
> > [   79.912199] i915 0000:00:02.0: Using 39-bit DMA addresses
> > [   79.915571] iommu_dma_map_sg: ret = 7138717696, iova_len = 20023619584   <<===
> 
> OK, yeah, something weird is happening there... Given that you're apparently
> trying to map over 20GB in a single scatterlist, I suspect we might be
> running into some 32-bit integer overflow somewhere - we've certainly hit
> issues with gigantic individual segments in the past - which is then leading
> to the IOVA calculation and/or field-swizzling in iommu_dma_map_sg() itself
> going wrong, or the merging logic in iommu_map_sg(), or perhaps both.
> 
> I'd agree there definitely appears to be a bug here, but ultimately it's
> that iommu_map_sg() is somehow returning a short mapping when it should not,
> so papering over that in iommu-dma is not the solution.
Hmm, so possible overflow and better to dig deeper, got it.
Thanks for your input!

> 
> > [   79.915581] iommu_dma_map_sg: returning -EINVAL
> > [   82.680323] [IGT] gem_exec_big: finished subtest single, SUCCESS
> > [   82.682692] [IGT] gem_exec_big: exiting, ret=0
> > 
> > on a first test execution and then subsequent runs would result
> > DMA remap failures:
> 
> Indeed once the pagetables _have_ got out of sync with the IOVA allocator
> then this is expected behaviour - -EADDRINUSE is generic_pt refusing to map
> over an unexpectedly-present PTE, unlike the old intel-iommu code which
> would have just silently replaced it and succeeded, so if you're only seeing
> these subsequent failures since 6.19, that's probably a factor too.
I do not know when this issue was first introduced, because I
ran into it while debugging other problems addressed in this
series, but since you have a suspicion about 6.19 I'll stick to
that.

-- 
Best Regards,
Krzysztof
