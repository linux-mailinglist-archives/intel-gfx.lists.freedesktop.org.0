Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 9E38799A45A
	for <lists+intel-gfx@lfdr.de>; Fri, 11 Oct 2024 15:03:46 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 1F26A10EADF;
	Fri, 11 Oct 2024 13:03:45 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="HfeDcQnJ";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.21])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 2026610E13F;
 Fri, 11 Oct 2024 13:03:43 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1728651823; x=1760187823;
 h=content-transfer-encoding:in-reply-to:references:subject:
 from:cc:to:date:message-id:mime-version;
 bh=g50XHg3fOFl1GYdphhO/SupAvJDAyjIQ1PQKbMuK0Ds=;
 b=HfeDcQnJPKVKvJm7AzLQErHcYPBSoOF0EdsfLAooz9SfOAn5hoprd2rK
 f5Z5ao181nqi6dqRAk0dD8JNnfiGA31uJfxARQv2h5fzezFHSJu/fCNLU
 PZIaWnjyY2Hpf/R0A4WoTFjOdgvPLw2mYuraASaSPJxnbpKgVetsYUnlX
 BrLOdrhmI7BQEdvYF2j3Ghk7pcvCgWroU7cWCAn6Es+RhTQRfDCN9Ftaj
 pK/Pla6K69CG6Fd0C9VVZio6SMzppkEnXBQVNKXAZIKwSEUu3ZrSXKtII
 DIk2RYQ09VqxMQnlclVYxAhK4mctb5EU0G47uDwLaCcBF8XyR3R16rtdp w==;
X-CSE-ConnectionGUID: Rh8F13T4QdCSMEQePX2qrg==
X-CSE-MsgGUID: Wvreu/FfS+eFctV9Nzzfcg==
X-IronPort-AV: E=McAfee;i="6700,10204,11221"; a="27994972"
X-IronPort-AV: E=Sophos;i="6.11,195,1725346800"; d="scan'208";a="27994972"
Received: from orviesa002.jf.intel.com ([10.64.159.142])
 by orvoesa113.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 11 Oct 2024 06:03:43 -0700
X-CSE-ConnectionGUID: cKXZ1iovRrOVdn+UerYGng==
X-CSE-MsgGUID: H7QXqsmlTBWIq9eIuejnPg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.11,195,1725346800"; d="scan'208";a="107756699"
Received: from fmsmsx602.amr.corp.intel.com ([10.18.126.82])
 by orviesa002.jf.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 11 Oct 2024 06:03:43 -0700
Received: from fmsmsx611.amr.corp.intel.com (10.18.126.91) by
 fmsmsx602.amr.corp.intel.com (10.18.126.82) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39; Fri, 11 Oct 2024 06:03:42 -0700
Received: from fmsmsx610.amr.corp.intel.com (10.18.126.90) by
 fmsmsx611.amr.corp.intel.com (10.18.126.91) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39; Fri, 11 Oct 2024 06:03:42 -0700
Received: from FMSEDG603.ED.cps.intel.com (10.1.192.133) by
 fmsmsx610.amr.corp.intel.com (10.18.126.90) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39 via Frontend Transport; Fri, 11 Oct 2024 06:03:42 -0700
Received: from NAM12-BN8-obe.outbound.protection.outlook.com (104.47.55.169)
 by edgegateway.intel.com (192.55.55.68) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.39; Fri, 11 Oct 2024 06:03:41 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=MZIxaeA6kxbXnWwlnCvHlfGP14pUfi9zBN48HC+tAvnKw3eYLSrJLNe8HBeDsZnwDiSKV+6vesh9YfJp5TVXVxz/EgCqxnS9BOkQvpet5ImgeZsbJzpMDk+ksRpSqE1YcDpk9gsVYKAVApG0VraOENctk7BB8Nsoxl2QBX7araiimkGjtXDaNXAHL3pPrplqsbEB7psHJzh5dqhkyOXSSlfeyD1yv+XBNZ51GtmArSB7jA6UwWBVw4m/uAoLJUdhyT0JRkKpqO49+VIxqctwEOmXqJCS8ybHoJBeqWwvl4TrgNmIEsbmHYH4ewZxdMu9+D2CjjS2AbwGUSeurli7tw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=4eTsSA8WOjMFvroNnOHxdrzZ2jrMf3b5YSb87SX/bPw=;
 b=CIp9o41ZUL+12ciw5udz6cqGJ2rQpwqFXB5p0h2KQsacVz39yrvlAcBC8Yjez1s982CUkmvfaSId1maXe/K/VAMiEBMWF5XsyPSgvWKQTAtRfdwupOEQ1A5TBdiLKt3jr9ET7eW7ODKCDxZ5m/j8vODremptK1FrzB2CV8t9UsR89Nl5De0fA0vtSwYJN5c9WChyR0Y9GOAJ5gKBukwF6WZRGIvmjUQAG7eB5dxca/+RI1UF/y+R3XRa4kK15McabzNr8lUvebSgDmYeJsFgPC45HV+X0cutbGc4dwfeHSEyfENRJ42ME7+UauRnHTOPybtZdt5lxaBfyWevLqUa2Q==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from PH8PR11MB8287.namprd11.prod.outlook.com (2603:10b6:510:1c7::14)
 by DM4PR11MB6359.namprd11.prod.outlook.com (2603:10b6:8:b9::17) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.8048.18; Fri, 11 Oct
 2024 13:03:36 +0000
Received: from PH8PR11MB8287.namprd11.prod.outlook.com
 ([fe80::7e8b:2e5:8ce4:2350]) by PH8PR11MB8287.namprd11.prod.outlook.com
 ([fe80::7e8b:2e5:8ce4:2350%6]) with mapi id 15.20.8048.017; Fri, 11 Oct 2024
 13:03:35 +0000
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: quoted-printable
In-Reply-To: <20241010224311.50133-5-matthew.s.atwood@intel.com>
References: <20241010224311.50133-1-matthew.s.atwood@intel.com>
 <20241010224311.50133-5-matthew.s.atwood@intel.com>
Subject: Re: [PATCH v2 04/10] drm/i915/xe3lpd: Update pmdemand programming
From: Gustavo Sousa <gustavo.sousa@intel.com>
CC: Matt Roper <matthew.d.roper@intel.com>, Matt Atwood
 <matthew.s.atwood@intel.com>
To: Matt Atwood <matthew.s.atwood@intel.com>,
 <intel-gfx@lists.freedesktop.org>, <intel-xe@lists.freedesktop.org>
Date: Fri, 11 Oct 2024 10:03:30 -0300
Message-ID: <172865181015.4078.7821522187554009093@gjsousa-mobl2>
User-Agent: alot/0.10
X-ClientProxiedBy: MW4PR03CA0235.namprd03.prod.outlook.com
 (2603:10b6:303:b9::30) To PH8PR11MB8287.namprd11.prod.outlook.com
 (2603:10b6:510:1c7::14)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: PH8PR11MB8287:EE_|DM4PR11MB6359:EE_
X-MS-Office365-Filtering-Correlation-Id: 880fa5a0-b176-45a4-df65-08dce9f51dc4
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|376014|366016|1800799024;
X-Microsoft-Antispam-Message-Info: =?utf-8?B?WFNvcmcrZmRHV3dJTEZWVnE5MVJCbENDL3cvNlpiMW54YTJCRFVHS2ZER3cx?=
 =?utf-8?B?Vm16aW9QSzNIcm1qNmhuM0VudHh4Zlh0NlVLNktFUWM4WFBwVjFzVjlDSG9M?=
 =?utf-8?B?TXFjRXc3SzBGMnpnNHR0YWtDNDIrdVRWTTFSTGNCTUM3ZTVSemYrU1ByODlC?=
 =?utf-8?B?aGxiY0I2TG9aZDBmTUtJdHkwVUdQdlM2RXF4c2VPd0k3SnZIcDVUSThrN0Vk?=
 =?utf-8?B?VmhkK1ZkYkhDWllJK0pVVXNkMHlSV0VwcnBzMDBISUFXUVpwSjkzc3VrWjBP?=
 =?utf-8?B?SHpKSk5GSHphSkVyUUgwTUt3VjdlNVN4UzFDR0lFUnVqYzk3MjIzbTJWSGpB?=
 =?utf-8?B?R1dYQ3hnNHY5emhpOXJQVS82aDVldEIyTXFBcFZmWURLWUNoMmVodkpFaGp5?=
 =?utf-8?B?L2F6cEFzbWI4Q1ZaZDl2bnZQSWRmZVdjZmkvL0ZsZDhWUzlrbjJUWkZnMWFN?=
 =?utf-8?B?ZVZsWXpxUGowRWhuZ3IvUEpRTlB1dWozT1JWZE1icGdlNWtTbDY0S1ZhTXkx?=
 =?utf-8?B?R3I1cVZvdjJmczFUVGpUdXUxSGpYTzl6UzJSMm5kbzNqS0V0TUVQTmNHNkU1?=
 =?utf-8?B?S3RwMnJJRlRBb0NrWjFrcjJzZjREekE3UUNQbzRSU2tJMXZIdW5XRW5jSFZC?=
 =?utf-8?B?RjA3dU1nMHJSVGYzbm1WZ0hqZWhkWGlhOGNDWEhUcHdjRlQ1ZnQrNGxjblpG?=
 =?utf-8?B?NmZtT3A0UVd5L2liYnhXZVp3cUV2alU4ZGx2eFp1Z2F1ZjNUOEVhVk0rRFhK?=
 =?utf-8?B?T1lJNDhmWnFqQ0dOVnRxYmI4b2dUQzltemlHK0ZrS3MzbkRZbjNJNFRTOXQz?=
 =?utf-8?B?ZjZPUUVOa3V4Y3F0QVozTXVzMDBmdk9Cbml5S2FNQVQ5LzZmQ3Z1QnpoR29M?=
 =?utf-8?B?UDFKbGxQaUdrU01PUzVVL2ZSZW95U3lmN1VaclF4OU4xb3ZzRXRrSCt4Z0dW?=
 =?utf-8?B?VU1IMFB2NUhyUkZnREFJSGZsNVR3SWZIY0xFSENRQnlBcm5sQmNxd05XK0Q3?=
 =?utf-8?B?elJYNnRrQzdPc2MzYUxMMUU1ekhYaSs1aWhHYWFMZURGZVZvdVhnWlVCSmh6?=
 =?utf-8?B?WjZjeWRNRlhLLzlVcHVqTHY0NU4yS1VnUXRKMHVGYk1sU0V2U2xhTS9DQXlS?=
 =?utf-8?B?Z2VyMWJCTHVRUG9CMmFucFRqUjBJbnZLNkRCNjlrNXhFSFkwdzd5OEczK1lL?=
 =?utf-8?B?VE9RYUQrVEtQUDVuc2FCRXZLZm4rVytFaVpRaTE2UDRKSnJBYmZkbloxQ25F?=
 =?utf-8?B?Uld6TFNDcTZuNFJzSzJROWEvNWVNenU1cEF2SVZDUVp4K2Exbjl4dk5NbWpa?=
 =?utf-8?B?cWpnWnRETmhxeldxU3NQQXlHQ09XK3NMaFljSjRNeXR2QlQvRXdYYVA1MlZU?=
 =?utf-8?B?U1g0a2cvZnJTeDFiYjJkZVR3QTdrRGpYcXRJdDNSUkVWcGNyZDJUc2s2RGVM?=
 =?utf-8?B?NUlZNjhPajhPWGZ3TE5FSjE2bWZUSm1wb05GS3hpZVNuQVpXS3ArTHhGQ3lM?=
 =?utf-8?B?RnRCdk92TmZ6OWtJS3p1dDlnRm8rRUFISDJkQ0tVaVJvYjQ1RDFlWm5mU3Vi?=
 =?utf-8?B?WFF1MWFKaHBPenRYajV1L2doVUFjZkNicmZiMVlrbVZXZzVZR2g0ZERPaDNi?=
 =?utf-8?B?YjkwR1kvdVhTOHkzWUNqMElVcEhNK2NudTl2TFJhQXpYNjFRb1h3OWRTdXVL?=
 =?utf-8?B?MVorUVYwbjgxdWFNaGQ2akkxWnVqbGxuTmw1VXpJVjM2QVJ0dGtVdTFnPT0=?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:PH8PR11MB8287.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(376014)(366016)(1800799024); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?MW5YSGtidUsrOWVQT3Fvb2VNVHR1dVN0dDFDTkw4TlJiVUlFY0ROSS9LSEh2?=
 =?utf-8?B?TUIvM1NyVVkzNFk5b1FEVlpLN2FaRE5tM0ZLVlprMTcybkY4SVpPOXRXRnhM?=
 =?utf-8?B?ZGNhTkp6RytOR0xsa3gxMDdST1Q2U0NxL0xNY0NCeDV3M0JwMGhabktzVEZU?=
 =?utf-8?B?NWFpQmM0czVTNDlZV2ZNWm0xNi9OdGtVeHcxRjd4Q3B3ajF3ZG1lTVhFYTNW?=
 =?utf-8?B?bnI2cHg1bXdnOFVLeXFHRFhLZk91MzZMSUdnVHk2Sm1sYkFoUERPbzhEUUx0?=
 =?utf-8?B?eFRZWmthOE1VTjlNeWVSSEZnblJzNzM3bkxpY0h1Y20rakpmbngzU1orZWp0?=
 =?utf-8?B?cDhNeVlIRmFCeGtJWWNPWGJIRTRjdEZrZC9RUmVsR0tEb0NWUUdyM1hlZ1V6?=
 =?utf-8?B?eTc1cXBXVFZ4TjRFUExSRkVWcUZhQ3FyYU02akR5eFFwWVpWdm1TSmJIK1dx?=
 =?utf-8?B?Y1hCYURNbWNDNk1EQVNNZlFEa2hVMFNLcVFNb1dKZWN5OGdVU2U4REtnYzRZ?=
 =?utf-8?B?WE41REtlZ25TTlVPbXlRK0FaUUpEVFl6S3RUbFVZSVV5eVRTRFJuKzgzbnBU?=
 =?utf-8?B?N1JYK1IvS3ZFV3MwT2pLRGZaaVk0bUtRbXliakxWVEd0TDlWY3h2RWdobWtx?=
 =?utf-8?B?VzJXTmJZSG5WN21SaVdLSWxXWENuNTFNWnZBbkpzbzc4SEk3WW52RVcycEZD?=
 =?utf-8?B?bDByeUpvamtreEV5VUJVVWl1czNMNjA3ajdMNys0WHdIOWF0ekNsaWNML3po?=
 =?utf-8?B?Unl3SGpyTU9xenlHOUJaZVZSRTBIdHZZOUJ3NDlXckJPZ1cyMnpna2FVQi9W?=
 =?utf-8?B?MDRYOTR2ZnNIREhoRXFTWkk1eWRMTmsrcDc1MjVXWUVRVEtKaDlLT0NmcTA3?=
 =?utf-8?B?WTZVNkFFMDNPd3VuTWk0WS9veHg5Q2NNdG9jZ3RLWXo5d2FNTmpDS0djamJn?=
 =?utf-8?B?TW01VUcwb0ZiMWxYZjlqMEFKL1RGMFQzYjk0QkhqZmx3TCt0M2ZFcnUwdTF5?=
 =?utf-8?B?bFRhaXBNWG5XcFZFUkltR21CdzdIV0dNVUJQNU5nOG9RcGpKOUNHTG1LcmJG?=
 =?utf-8?B?UkxIdFh1QmdVQURWaHNJWUZVUFRYQUliUDFoWkRHZzhoQUt2S2lRSENNMVha?=
 =?utf-8?B?VTc4MEc2R25UTkVEWFJJbC9IVk9yU0F1RzljUzZYclk3clkwODRzejIxVGxQ?=
 =?utf-8?B?Tkl0YWswYTh0TUJZTys1L25BR2FudmdWOWJuT1VVaC9MV0lncHZ6WU9HWkJI?=
 =?utf-8?B?Q0lIeXB4KzJTRHp2WTV2YVQwQ1U5QVd2NDlPb3pFWXhtdjBybVNlanlvUVkx?=
 =?utf-8?B?NlMrZzhoOVllV0NqZlpoQmNWYVplVGFIZ0pqWS9RMWYxOCtKV0FrTkRBa0J5?=
 =?utf-8?B?NGFDSWZEWlpVN1QrSkY1aFJPNzFyQXY3TU1uSkExZlhNSjFEekNkSk5aeFR5?=
 =?utf-8?B?WHFxWWVyTGE0em40Mk0rRHBiUEdSL2xHUEhwUDhRVitLMDloRktNSXo2UDRD?=
 =?utf-8?B?R0FGTkNRWTFSUlBxSEJlWFo2VmZXUklQeG5EdSs5SEw2Y2NHN0VReXpMekxN?=
 =?utf-8?B?dmVoT2ZjZlJaYUEyWkR0NnlrSGU4Y3J6UHRlaXdSZVZkdDRHaVlnVXM5U1RR?=
 =?utf-8?B?T2E0NmlsUnpxYll3V0xlOVFURCtiZUJ2N0s3b3VBaEZnU2RvNnp4ZUpGTmpL?=
 =?utf-8?B?Qk9UNHpaZytlb0k3VXB5UW5paDRPdTRxNEhtM2dlSUUwZUNReUIyVlRPbnlh?=
 =?utf-8?B?K1YyRnBJRmU1bVRZNzNoOWU2eVN0YnVLQjh4djIwd0VhMGJITFJyUFc0NnQx?=
 =?utf-8?B?QnB0VXNTOG5tb3dqam53clZOZ2NMU3YzcDdhVGZxSWNHUlErVDZIT3Y5OEVK?=
 =?utf-8?B?LzdYbURTdFhnV214eUpwekFWR1BtUVR1dXB5eXhSNU12SFZEQmp3eTFaZzZ6?=
 =?utf-8?B?eXFBU0lDeTk5Q09IZkFyZG5RRTJBTFVmTXNlMjBxUGtYbkJtcUJ1R2Nad3dX?=
 =?utf-8?B?cC9FckNvN1pGRGNZV3Axcm5VNjJ0ZDRuUi9lbWJybFZaaUdxY0lPQ3lQRDJ2?=
 =?utf-8?B?RUdoTkpWTkFUOWRoem9ZaGt5QVNsbGVuVzlzN2VYbWVzZENxYVBUSmlYSXcv?=
 =?utf-8?B?OVRFdUxHZ1hpUlpPZXJyak5rbDFXZTh1TW1nMXprTUF0Vzg4bXhQTkxCaHlx?=
 =?utf-8?B?RWc9PQ==?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 880fa5a0-b176-45a4-df65-08dce9f51dc4
X-MS-Exchange-CrossTenant-AuthSource: PH8PR11MB8287.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 11 Oct 2024 13:03:35.8367 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: D6p0MJbQbDe5dXdFsP78EiC5SSANnK2hulk8PlkIlgf73RDG073Q24lUlyTdqXV/wwrXcWx1MmLEPR7b6zf8YA==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DM4PR11MB6359
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

Quoting Matt Atwood (2024-10-10 19:43:05-03:00)
>From: Matt Roper <matthew.d.roper@intel.com>
>
>There are some minor changes to pmdemand handling on Xe3:
> - Active scalers are no longer tracked.  We can simply skip the readout
>   and programming of this field.
> - Active dbuf slices are no longer tracked.  We should skip the readout
>   and programming of this field and also make sure that it stays 0 in
>   our software bookkeeping so that we won't erroneously return true
>   from intel_pmdemand_needs_update() due to mismatches.
> - Even though there aren't enough pipes to utilize them, the size of
>   the 'active pipes' field has expanded to four bits, taking over the
>   register bits previously used for dbuf slices.  Since the lower bits
>   of the mask have moved, we need to update our reads/writes to handle
>   this properly.
>
>v2: active pipes is no longer always max 3, add in the ability to go to
>4 for PTL.
>
>Bspec: 68883, 69125
>Signed-off-by: Matt Roper <matthew.d.roper@intel.com>
>Signed-off-by: Matt Atwood <matthew.s.atwood@intel.com>
>---
> drivers/gpu/drm/i915/display/intel_pmdemand.c | 65 +++++++++++++------
> drivers/gpu/drm/i915/display/intel_pmdemand.h |  4 +-
> drivers/gpu/drm/i915/i915_reg.h               |  1 +
> 3 files changed, 48 insertions(+), 22 deletions(-)
>
>diff --git a/drivers/gpu/drm/i915/display/intel_pmdemand.c b/drivers/gpu/d=
rm/i915/display/intel_pmdemand.c
>index ceaf9e3147da..3a820dd53b13 100644
>--- a/drivers/gpu/drm/i915/display/intel_pmdemand.c
>+++ b/drivers/gpu/drm/i915/display/intel_pmdemand.c
>@@ -258,6 +258,7 @@ intel_pmdemand_connector_needs_update(struct intel_ato=
mic_state *state)
>=20
> static bool intel_pmdemand_needs_update(struct intel_atomic_state *state)
> {
>+        struct drm_i915_private *i915 =3D to_i915(state->base.dev);
>         const struct intel_bw_state *new_bw_state, *old_bw_state;
>         const struct intel_cdclk_state *new_cdclk_state, *old_cdclk_state=
;
>         const struct intel_crtc_state *new_crtc_state, *old_crtc_state;
>@@ -274,12 +275,16 @@ static bool intel_pmdemand_needs_update(struct intel=
_atomic_state *state)
>         new_dbuf_state =3D intel_atomic_get_new_dbuf_state(state);
>         old_dbuf_state =3D intel_atomic_get_old_dbuf_state(state);
>         if (new_dbuf_state &&
>-            (new_dbuf_state->active_pipes !=3D
>-             old_dbuf_state->active_pipes ||
>-             new_dbuf_state->enabled_slices !=3D
>-             old_dbuf_state->enabled_slices))
>+            new_dbuf_state->active_pipes !=3D old_dbuf_state->active_pipe=
s)
>                 return true;
>=20
>+        if (DISPLAY_VER(i915) < 30) {
>+                if (new_dbuf_state &&
>+                    new_dbuf_state->enabled_slices !=3D
>+                    old_dbuf_state->enabled_slices)
>+                        return true;
>+        }
>+
>         new_cdclk_state =3D intel_atomic_get_new_cdclk_state(state);
>         old_cdclk_state =3D intel_atomic_get_old_cdclk_state(state);
>         if (new_cdclk_state &&
>@@ -304,6 +309,7 @@ int intel_pmdemand_atomic_check(struct intel_atomic_st=
ate *state)
>         const struct intel_cdclk_state *new_cdclk_state;
>         const struct intel_dbuf_state *new_dbuf_state;
>         struct intel_pmdemand_state *new_pmdemand_state;
>+        int max_active_pipes =3D 3;
>=20
>         if (DISPLAY_VER(i915) < 14)
>                 return 0;
>@@ -327,10 +333,13 @@ int intel_pmdemand_atomic_check(struct intel_atomic_=
state *state)
>         if (IS_ERR(new_dbuf_state))
>                 return PTR_ERR(new_dbuf_state);
>=20
>+        if (DISPLAY_VER(i915) >=3D 30) max_active_pipes =3D 4;

We should be using INTEL_NUM_PIPES(i915) to get the correct runtime
value (to account for the case of any pipe fused-off).

--
Gustavo Sousa

>         new_pmdemand_state->params.active_pipes =3D
>-                min_t(u8, hweight8(new_dbuf_state->active_pipes), 3);
>-        new_pmdemand_state->params.active_dbufs =3D
>-                min_t(u8, hweight8(new_dbuf_state->enabled_slices), 3);
>+                min_t(u8, hweight8(new_dbuf_state->active_pipes), max_act=
ive_pipes);
>+
>+        if (DISPLAY_VER(i915) < 30)
>+                new_pmdemand_state->params.active_dbufs =3D
>+                        min_t(u8, hweight8(new_dbuf_state->enabled_slices=
), 3);
>=20
>         new_cdclk_state =3D intel_atomic_get_cdclk_state(state);
>         if (IS_ERR(new_cdclk_state))
>@@ -395,27 +404,32 @@ intel_pmdemand_init_pmdemand_params(struct drm_i915_=
private *i915,
>=20
>         reg2 =3D intel_de_read(i915, XELPDP_INITIATE_PMDEMAND_REQUEST(1))=
;
>=20
>-        /* Set 1*/
>         pmdemand_state->params.qclk_gv_bw =3D
>                 REG_FIELD_GET(XELPDP_PMDEMAND_QCLK_GV_BW_MASK, reg1);
>         pmdemand_state->params.voltage_index =3D
>                 REG_FIELD_GET(XELPDP_PMDEMAND_VOLTAGE_INDEX_MASK, reg1);
>         pmdemand_state->params.qclk_gv_index =3D
>                 REG_FIELD_GET(XELPDP_PMDEMAND_QCLK_GV_INDEX_MASK, reg1);
>-        pmdemand_state->params.active_pipes =3D
>-                REG_FIELD_GET(XELPDP_PMDEMAND_PIPES_MASK, reg1);
>-        pmdemand_state->params.active_dbufs =3D
>-                REG_FIELD_GET(XELPDP_PMDEMAND_DBUFS_MASK, reg1);
>         pmdemand_state->params.active_phys =3D
>                 REG_FIELD_GET(XELPDP_PMDEMAND_PHYS_MASK, reg1);
>=20
>-        /* Set 2*/
>         pmdemand_state->params.cdclk_freq_mhz =3D
>                 REG_FIELD_GET(XELPDP_PMDEMAND_CDCLK_FREQ_MASK, reg2);
>         pmdemand_state->params.ddiclk_max =3D
>                 REG_FIELD_GET(XELPDP_PMDEMAND_DDICLK_FREQ_MASK, reg2);
>-        pmdemand_state->params.scalers =3D
>-                REG_FIELD_GET(XELPDP_PMDEMAND_SCALERS_MASK, reg2);
>+
>+        if (DISPLAY_VER(i915) >=3D 30) {
>+                pmdemand_state->params.active_pipes =3D
>+                        REG_FIELD_GET(XE3_PMDEMAND_PIPES_MASK, reg1);
>+        } else {
>+                pmdemand_state->params.active_pipes =3D
>+                        REG_FIELD_GET(XELPDP_PMDEMAND_PIPES_MASK, reg1);
>+                pmdemand_state->params.active_dbufs =3D
>+                        REG_FIELD_GET(XELPDP_PMDEMAND_DBUFS_MASK, reg1);
>+
>+                pmdemand_state->params.scalers =3D
>+                        REG_FIELD_GET(XELPDP_PMDEMAND_SCALERS_MASK, reg2)=
;
>+        }
>=20
> unlock:
>         mutex_unlock(&i915->display.pmdemand.lock);
>@@ -442,6 +456,10 @@ void intel_pmdemand_program_dbuf(struct drm_i915_priv=
ate *i915,
> {
>         u32 dbufs =3D min_t(u32, hweight8(dbuf_slices), 3);
>=20
>+        /* PM Demand only tracks active dbufs on pre-Xe3 platforms */
>+        if (DISPLAY_VER(i915) >=3D 30)
>+                return;
>+
>         mutex_lock(&i915->display.pmdemand.lock);
>         if (drm_WARN_ON(&i915->drm,
>                         !intel_pmdemand_check_prev_transaction(i915)))
>@@ -460,7 +478,8 @@ void intel_pmdemand_program_dbuf(struct drm_i915_priva=
te *i915,
> }
>=20
> static void
>-intel_pmdemand_update_params(const struct intel_pmdemand_state *new,
>+intel_pmdemand_update_params(struct drm_i915_private *i915,
>+                             const struct intel_pmdemand_state *new,
>                              const struct intel_pmdemand_state *old,
>                              u32 *reg1, u32 *reg2, bool serialized)
> {
>@@ -495,16 +514,22 @@ intel_pmdemand_update_params(const struct intel_pmde=
mand_state *new,
>         update_reg(reg1, qclk_gv_bw, XELPDP_PMDEMAND_QCLK_GV_BW_MASK);
>         update_reg(reg1, voltage_index, XELPDP_PMDEMAND_VOLTAGE_INDEX_MAS=
K);
>         update_reg(reg1, qclk_gv_index, XELPDP_PMDEMAND_QCLK_GV_INDEX_MAS=
K);
>-        update_reg(reg1, active_pipes, XELPDP_PMDEMAND_PIPES_MASK);
>-        update_reg(reg1, active_dbufs, XELPDP_PMDEMAND_DBUFS_MASK);
>         update_reg(reg1, active_phys, XELPDP_PMDEMAND_PHYS_MASK);
>=20
>         /* Set 2*/
>         update_reg(reg2, cdclk_freq_mhz, XELPDP_PMDEMAND_CDCLK_FREQ_MASK)=
;
>         update_reg(reg2, ddiclk_max, XELPDP_PMDEMAND_DDICLK_FREQ_MASK);
>-        update_reg(reg2, scalers, XELPDP_PMDEMAND_SCALERS_MASK);
>         update_reg(reg2, plls, XELPDP_PMDEMAND_PLLS_MASK);
>=20
>+        if (DISPLAY_VER(i915) >=3D 30) {
>+                update_reg(reg1, active_pipes, XE3_PMDEMAND_PIPES_MASK);
>+        } else {
>+                update_reg(reg1, active_pipes, XELPDP_PMDEMAND_PIPES_MASK=
);
>+                update_reg(reg1, active_dbufs, XELPDP_PMDEMAND_DBUFS_MASK=
);
>+
>+                update_reg(reg2, scalers, XELPDP_PMDEMAND_SCALERS_MASK);
>+        }
>+
> #undef update_reg
> }
>=20
>@@ -529,7 +554,7 @@ intel_pmdemand_program_params(struct drm_i915_private =
*i915,
>         reg2 =3D intel_de_read(i915, XELPDP_INITIATE_PMDEMAND_REQUEST(1))=
;
>         mod_reg2 =3D reg2;
>=20
>-        intel_pmdemand_update_params(new, old, &mod_reg1, &mod_reg2,
>+        intel_pmdemand_update_params(i915, new, old, &mod_reg1, &mod_reg2=
,
>                                      serialized);
>=20
>         if (reg1 !=3D mod_reg1) {
>diff --git a/drivers/gpu/drm/i915/display/intel_pmdemand.h b/drivers/gpu/d=
rm/i915/display/intel_pmdemand.h
>index 128fd61f8f14..a1c49efdc493 100644
>--- a/drivers/gpu/drm/i915/display/intel_pmdemand.h
>+++ b/drivers/gpu/drm/i915/display/intel_pmdemand.h
>@@ -20,14 +20,14 @@ struct pmdemand_params {
>         u8 voltage_index;
>         u8 qclk_gv_index;
>         u8 active_pipes;
>-        u8 active_dbufs;
>+        u8 active_dbufs;        /* pre-Xe3 only */
>         /* Total number of non type C active phys from active_phys_mask *=
/
>         u8 active_phys;
>         u8 plls;
>         u16 cdclk_freq_mhz;
>         /* max from ddi_clocks[] */
>         u16 ddiclk_max;
>-        u8 scalers;
>+        u8 scalers;                /* pre-Xe3 only */
> };
>=20
> struct intel_pmdemand_state {
>diff --git a/drivers/gpu/drm/i915/i915_reg.h b/drivers/gpu/drm/i915/i915_r=
eg.h
>index 818142f5a10c..d30459f8d1cb 100644
>--- a/drivers/gpu/drm/i915/i915_reg.h
>+++ b/drivers/gpu/drm/i915/i915_reg.h
>@@ -2705,6 +2705,7 @@
> #define  XELPDP_PMDEMAND_QCLK_GV_BW_MASK                REG_GENMASK(31, 1=
6)
> #define  XELPDP_PMDEMAND_VOLTAGE_INDEX_MASK                REG_GENMASK(14=
, 12)
> #define  XELPDP_PMDEMAND_QCLK_GV_INDEX_MASK                REG_GENMASK(11=
, 8)
>+#define  XE3_PMDEMAND_PIPES_MASK                        REG_GENMASK(7, 4)
> #define  XELPDP_PMDEMAND_PIPES_MASK                        REG_GENMASK(7,=
 6)
> #define  XELPDP_PMDEMAND_DBUFS_MASK                        REG_GENMASK(5,=
 4)
> #define  XELPDP_PMDEMAND_PHYS_MASK                        REG_GENMASK(2, =
0)
>--=20
>2.45.0
>
