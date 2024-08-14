Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id A530B9514F2
	for <lists+intel-gfx@lfdr.de>; Wed, 14 Aug 2024 09:05:10 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 0FF3510E415;
	Wed, 14 Aug 2024 07:05:09 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="dJUvM+XQ";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.11])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 20D3D10E415
 for <intel-gfx@lists.freedesktop.org>; Wed, 14 Aug 2024 07:05:07 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1723619107; x=1755155107;
 h=message-id:date:subject:to:references:from:in-reply-to:
 content-transfer-encoding:mime-version;
 bh=9SHJIJjrry2mgHkZPM5IhjfcVjdFYIjnB6T/g7hzi80=;
 b=dJUvM+XQNgj/n9AsbZulQGtTw4vXmvtf9Xbkuw2beINEjKCHMm8Y+pcQ
 xFlui884HnKJW3+3+3VIvmpc82TLVgTG5i7ObdwGw2ASbUjvVqDBJvZmg
 qKh554+cNj3BMtNv+fv1nl3XnhaFIhnd/ZPg5f/b7jb+n5ahnWGcgpy6f
 pYyHEOFEdy35DawE6hhhCFmkNKapsaHBB/4aIwhlAMdBuM21Qjr1y/XJ8
 UpA1o7/qRA37cwRrbwcc5JjmeH/H+VPYKZCuCntFvLAzbLAjq0sT7ijm3
 UPj2wkjN9JQ1FJ5DrOjaPX2lUVJ/wSCrBl54nmyi2C1I9zqD6Q3Ps9bH3 g==;
X-CSE-ConnectionGUID: kL23hcioTnymjXjkw1aX8g==
X-CSE-MsgGUID: +fzc8eNPS1ak5yeB2aWQXw==
X-IronPort-AV: E=McAfee;i="6700,10204,11163"; a="32440770"
X-IronPort-AV: E=Sophos;i="6.09,288,1716274800"; d="scan'208";a="32440770"
Received: from fmviesa006.fm.intel.com ([10.60.135.146])
 by fmvoesa105.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 14 Aug 2024 00:05:06 -0700
X-CSE-ConnectionGUID: aMFOXq7lSDanjL4/TegcsA==
X-CSE-MsgGUID: YG9MQSfmQbmkmyiHN5J76A==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.09,288,1716274800"; d="scan'208";a="58556425"
Received: from orsmsx603.amr.corp.intel.com ([10.22.229.16])
 by fmviesa006.fm.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 14 Aug 2024 00:05:06 -0700
Received: from orsmsx612.amr.corp.intel.com (10.22.229.25) by
 ORSMSX603.amr.corp.intel.com (10.22.229.16) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39; Wed, 14 Aug 2024 00:05:05 -0700
Received: from orsmsx610.amr.corp.intel.com (10.22.229.23) by
 ORSMSX612.amr.corp.intel.com (10.22.229.25) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39; Wed, 14 Aug 2024 00:05:05 -0700
Received: from ORSEDG602.ED.cps.intel.com (10.7.248.7) by
 orsmsx610.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39 via Frontend Transport; Wed, 14 Aug 2024 00:05:05 -0700
Received: from NAM11-BN8-obe.outbound.protection.outlook.com (104.47.58.170)
 by edgegateway.intel.com (134.134.137.103) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.39; Wed, 14 Aug 2024 00:05:04 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=inWgzyHLfHe5RUW5JlgJqW0sgQzBetW6mFKkeRNLONB72kZhnYBUM6yXQfQpmgP/8WWcKm88VYP9oAo/ocM73mLVyOTZO6wqwsGAIuF21uMv1aQNfa4ADKLQg0yYyiZ8glhbEnvIYuG5r+d8JeZ0F8zAF2N/NeDivhVAhcLq2iHDAah45Lle7hfu8JnWOJoeuMoebQ/JmNKYv7T143NsbclWoGOwA3n3a78DNYnDqb8WFjlrZ/GHdSxaMOgw1exs0jJ17FgQq00HasXB16oiXzLjw1rIN35Oy9WSNLtoWIuU/+puuTd2bb1SqGzwv1xBgvfFqis9H40bEWj2JkCMDw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=btC4jXCn0zEf6nPLFtkjHMf6tM86g/PAWgqE77iuOyc=;
 b=rc+x5ECA3HCIE3opbNMXTdMOq0el08gnf6RgCsnKFzV54hdSQ/OokIhkqDDPhdAx1keWxHABr5gBLBiyjWBewHCyFawuuwl3QisyLAZINBoUCWTV3P8KD6U0Ga8wGHyXYTQ25dwWdC9wwkGs/r7gublF6Z3eN46miENcv7QkV3wuIUU5355usLPPetwLHt8ZvaX/vsaX+M3qKpFjm/77RcqCiVQGt485/LFVjusP0voXYjsa1bTJK9xyk0QAItYkCloSoGnjmBwhpjbrQ+KAqi7xiGlOBV/Y7nEyCteWxCTE9IP1VdLlE5Rw+wX47wIPRuYs2gFLPvg72s2sroipqA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from DM4PR11MB5341.namprd11.prod.outlook.com (2603:10b6:5:390::22)
 by PH8PR11MB7144.namprd11.prod.outlook.com (2603:10b6:510:22c::12) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.7875.17; Wed, 14 Aug
 2024 07:05:02 +0000
Received: from DM4PR11MB5341.namprd11.prod.outlook.com
 ([fe80::397:7566:d626:e839]) by DM4PR11MB5341.namprd11.prod.outlook.com
 ([fe80::397:7566:d626:e839%2]) with mapi id 15.20.7828.031; Wed, 14 Aug 2024
 07:05:02 +0000
Message-ID: <44f63fde-c928-4b6c-a36e-735d33b0c8fd@intel.com>
Date: Wed, 14 Aug 2024 12:34:50 +0530
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH] drm/i915/hdcp: Use correct cp_irq_count
To: Suraj Kandpal <suraj.kandpal@intel.com>, <intel-gfx@lists.freedesktop.org>
References: <20240809054424.3938842-1-suraj.kandpal@intel.com>
 <20240809114127.3940699-2-suraj.kandpal@intel.com>
Content-Language: en-US
From: "Nautiyal, Ankit K" <ankit.k.nautiyal@intel.com>
In-Reply-To: <20240809114127.3940699-2-suraj.kandpal@intel.com>
Content-Type: text/plain; charset="UTF-8"; format=flowed
Content-Transfer-Encoding: 7bit
X-ClientProxiedBy: MA0PR01CA0063.INDPRD01.PROD.OUTLOOK.COM
 (2603:1096:a01:ac::17) To DM4PR11MB5341.namprd11.prod.outlook.com
 (2603:10b6:5:390::22)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: DM4PR11MB5341:EE_|PH8PR11MB7144:EE_
X-MS-Office365-Filtering-Correlation-Id: c954c51c-74c9-4b6c-c320-08dcbc2f6a74
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|366016|1800799024|376014;
X-Microsoft-Antispam-Message-Info: =?utf-8?B?aVpGV0IrZW9SQndzTEVrN2hIOS9haUJvenB0RFM2cVkzdkpQczY0akVaSlBU?=
 =?utf-8?B?UkVLdWdLK3dpVHNabHFHbWkyWEloRHBuTmZyNHZKbFQ4RnMyQUY1dkcybzR3?=
 =?utf-8?B?WmZ0SzRoTzFWcmRIQmpPSWZmem9QWWU1ZXFsQ3RmbStpSVg1SW5tMmtMMlJ6?=
 =?utf-8?B?cmFuYmJWYzZsbDB0TGlTUmN0MEVOeHo1d05ibGc4cFo2R0xYM1BjbjF0NEFQ?=
 =?utf-8?B?b0JuOU1IOU1Vem5DRGZYVWNxSkN3STdIdUFKMm56bFA2d2JrYjh0NTM3WWpL?=
 =?utf-8?B?ZklNVm5HMmFFUjZzOHVETURpc1Npa3JsS1o2b1pyWkpjUUxuczJpUTMxTysv?=
 =?utf-8?B?bklvelI1UTUvWWJsRkZjRlNCM0QwOUM4cVFKR2pPbGJWZHNKbytOQUg2ZmVE?=
 =?utf-8?B?dm15WCtGcHFTNmUzNkhqQVhsYWpXT1NGR2x1TTREVUtPaEJiYkJyNUtPRzNM?=
 =?utf-8?B?Q1BkWVJDYm9hdzQ0U25pVzBlZlVSTjZETnpWajJILzBuK3FzYjBMRytnL3hT?=
 =?utf-8?B?OE9nMzhHT0xyZHZ0SVdJV0dvVDNuUnpxTExHS1BxNzAwTEd5VjZrREFaY1F4?=
 =?utf-8?B?d0ZsZkpTY2FRbzh4R0VJQjVpcGVDZ2dmVmV5aVo5K0tuRnRXVy9yWUUvTS9Y?=
 =?utf-8?B?WXNtVE4zTXVYQ0RZU3NwOEJVbUV6VGlPeEYyWEJuM3YrVlNpQlJ4cm9BTVYy?=
 =?utf-8?B?ZEdaU3NBY0NxVDBUTjFBektEK3dMa0F0R3FkWVYvMFZmeFUxbDRXQnBQQXJQ?=
 =?utf-8?B?dmgzT0hPb1R5dDB4am1XTnZhVnFBQkp3SzF2QXRLUDc4czdzT3kzN3hnVzdj?=
 =?utf-8?B?aWc3N0dBWm94UDF3akhzQzRyOFlHWm9vS1FCc0JLdlA0a2RhQmZLSUYxNyth?=
 =?utf-8?B?NUJJeDd3cjBOSG9pWVlFZmlKaXdTOVJtMlc3ZTlGaGtvbEUrTnoxYVFsMlh6?=
 =?utf-8?B?aTlQYzQrN0p4b1RXZFdaQ2lmSnI4ZzZidzl3bGl3YXZjOW1Tak5BR25mZWow?=
 =?utf-8?B?L2kwUURuVis0Mm5SMk9lZUZDVGZRaGQ3TExNTkF2NW9rQzNRQitudnUySGxi?=
 =?utf-8?B?VzZ2TnhXcEcvWTRFY3NTNXE1ZGdMbUlQNERxWFNXVVYzQm5PWHNMaU9qYVVy?=
 =?utf-8?B?cndNMS85WkpmTXl2YzZMTEtPQWN1Q3hxYzJVaXhCejBVNmhkdTgxaWw4bFFX?=
 =?utf-8?B?SWFOTjh1aXpjelhhTm1GTjdaNHVjcyttdElaSjltRkQ4U0Q0VHVpUmJvSmhS?=
 =?utf-8?B?M1JtS2l3bjRHRXNobkNJUWRWZUlqSlBiQWdFRnN0ZGZSMHBEaXN3OVpoWEQw?=
 =?utf-8?B?TWZ0bFMrenNmbEVxRU5mN01RZmxNMUNWK2ZzZDhLSDR3RStKbTFWZUxJaXp3?=
 =?utf-8?B?bXhRdUppZm9FTENPdkJNTkt6b1NPVUZwaE05cjJLb2hzR0ZZV2Y1T1V0YXQ4?=
 =?utf-8?B?M3dTRFZpMFUwamNlV0FLeHNRY0QyMEU4Ylg0dVBreW9HTW5qVWNYemx3Zk5L?=
 =?utf-8?B?Z0JVWjFrbXlPRGFJcVZpQ1FSbDA5MndsM0VXU1JwdXNXTU9seWc5bjF2NzdV?=
 =?utf-8?B?d0R6cTZXVXIveDcyd3p2S1NLNWJqWFZWazR0QTdXKzM2Q3ltaWh1MlBCTEc3?=
 =?utf-8?B?dmdZTHZvejA3dzBrdmNST3FNelhIaTBqMlRVTTdIMG9zKzlCYzF1c0tQNSta?=
 =?utf-8?B?ajArRWxxOEN1T0IrMjhlZEhhdE8zdFc5WVB0TDl5NjRkNzlrV0hERXVzbmV0?=
 =?utf-8?B?MUpwazN6Q2hhY0luVEtPSWNFd2pnSTFPYndZV3ZKdC9YVUFTWnkxQ1puOENJ?=
 =?utf-8?B?SU54YysreE50WlVWelJ2dz09?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM4PR11MB5341.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(366016)(1800799024)(376014); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?aUF0cDdXYmRSNXExNnhzVjdKeGlXSFZ3d0NLYmFlQzdubVU2MU9hQjNVUGx3?=
 =?utf-8?B?b2VucVdOZlQyYjdEUTB4ak4rZWtPc1FtWWhWbkt3Y25YSlI3cjRJbWRwdFhY?=
 =?utf-8?B?MW1aamtZeGFFSE1IUHBab1l3UCsrUkVIZjhHb0JDODVQdGhLN2RpUGNHVkds?=
 =?utf-8?B?bUJ3aUt0bG9LTmxVQkQxUEtRTDRZQllsS0t6Mm1xSWk1aDZzTEtBcVM3NnFh?=
 =?utf-8?B?YUFzOEkwckF1eFBwZW9IcTRrME9ld291VEJOK05JWEpraUlEY0RQQmNMM2h5?=
 =?utf-8?B?RWtTeDd5Rm9ZdE03eEhsUjN1WjdQY0E1bU44K1M1dk5vSm5RUk4vazdMeHAx?=
 =?utf-8?B?ZGh3MEpjNFlrdVlONmpCNWgwNWJKMk0yUXdtaCtLb3EreGI2UWc0VURERVN5?=
 =?utf-8?B?bGtmdytxdUhSZ0N3Y3JjbzBEcHVtREs5ZkM0ZmVNWnJCeTd4TkllYWNKMXJL?=
 =?utf-8?B?Y2hXV2hTOXJ0cm9jNHFUY2NoWHdtL3dEcVZwbnArUkt1dUlTQzFHUmk0V0dx?=
 =?utf-8?B?QUMxT0xkUno0d0VjbjVCYzhnejI2WnlmajFGRmVrT2duR05zU2RNbGZGWlRL?=
 =?utf-8?B?TXZ3UWVIdUNGaGJueHJWaHpyY0lNVUJsKzUzUHlWdDRCNHVxeE9CdTlVZFRu?=
 =?utf-8?B?cTZZVE9mbFllRUphenZBU3RpYXVFNS9rbFVCSkNPREYwUTBBL2pNZjZmRnVZ?=
 =?utf-8?B?NXdGREFrTHp2N1MzdEJJeDEzNm9NNmxEcmhLRVdXcWppdEFrTXpRbjJvUUZr?=
 =?utf-8?B?TzN4ME4vQ1hzVE5POGZNNDh3bnNJV3laQ3BqVndQcTdLNzFWcXNqNUkvS1g5?=
 =?utf-8?B?K1ZrZSt5bWYzS21nM2ZTdnZ6Mmgvc28zRnE5UE0zQ201WVZoQU92U1FHQ2RL?=
 =?utf-8?B?eUxsSk9LV0EwK0lyM0tTZ252Z2t2SzRaUHd5eSs3K1NzakZBcDZQWWJ6ZkVz?=
 =?utf-8?B?dFMzbHVjYVhUZG9EeFpzMGJES0RuM2x2QTFDbzdaQ0JXaXpoWmt1d3B5ZjRC?=
 =?utf-8?B?UVBXR2xTZnRzaXJzQlRaU0dISmVWcU5JVUgvc3pGNjJTeDg1NXZaVkdaTWN5?=
 =?utf-8?B?NUNLajlkNU5QcnJYaVNqMHB4VnM1a0lBVUtOa3V3clJvek9KeU5yZkhUUzZ3?=
 =?utf-8?B?aWJjY2lsbVVKZ2d4dElWa2RxLytGSHlLdjAzL2ljcXFHK0tLUVpVakJRVE42?=
 =?utf-8?B?NzdmQVJmUkREMkxRZmFubEdYcllnTk1zZFVaUHNZbTVyalpLSW8vSlZNWFJD?=
 =?utf-8?B?TmkzaWU0bksvM3NaLzFqMXk1K2picy9QSyt4c1gzdEtKLzFQTWh0eU1tUUNR?=
 =?utf-8?B?OFVHT2hwb0d1VUZ1SzkrSCs0TGxuV3EyeDZ4eFdSVzVsVWNKdFpYV0oxZFk5?=
 =?utf-8?B?b1IrVk9xeHNLY3FIellzTk1OL0NkZVAxdXBzNUU4NmRvNlJJY0ZDMlNrZEtz?=
 =?utf-8?B?Yms1RE9DNXlQd25mNExlcDVxY0k1Mm1icUN4SEVJUzk3M0tEVy9qeFEyeE83?=
 =?utf-8?B?UEJEdEFSN1dXTGJUNzFUSExLZEhDY1RaNllueVNjbWhrd3F0T1RpVWlSUExS?=
 =?utf-8?B?bDhLTlhXRUpEcFEyQ2R4ZE03c2UvaVd2MDJmT3I4MVBHSk9vb01ZOWdCVU5R?=
 =?utf-8?B?V0dlTWFTeUlVdk9heWNqc1IrbkFNWHhLUVNvOHdpemEvbEFwMUFmS0lRL1ZT?=
 =?utf-8?B?YzBjNkJzRmVmSDh1NUdGaHBkc1FrQTZ1NVQ4NGJVYjlVYXdnYUJCb3hqT3NO?=
 =?utf-8?B?RDNFNy9oMjRIMDkzbk1EcVFNNEdhOTN4djNqS25KUko3bkxPMWJVVkJrNDlW?=
 =?utf-8?B?N0grZ0tkZjJ1N3RmVC9maE9PMFdKdXI3cDB6Ukc1UFJrYXRUZStLcndLWGZV?=
 =?utf-8?B?QkJQdHJVT3J2SE90WmNma3VMcUNHVEtWTWZVdHVtWFV1UTZtck9DZnlpZ1RQ?=
 =?utf-8?B?SDdjOGpGRndoNkorV3Z1b3FMZnp5SXpqdFhhVU5pWDRHeEpYa1BMVWFLL2s2?=
 =?utf-8?B?V0FCeWJ4OVFRcHl6K0ZqOUQwOWt0dURhSGhDWnFjWWxvM1VmU1oyMlBXVlVD?=
 =?utf-8?B?WnhJbXRTWU83dEtSRTRXWDRnV1RCZVMrdHdweHRoRU9NclZ4a2xhZHpicHR2?=
 =?utf-8?B?dnk4cjNCSzdyVDhkcFVkQmFhTXNtOTd0bzNEQWtEUXZib3AvZ0ZxVFpxQ2xJ?=
 =?utf-8?B?enc9PQ==?=
X-MS-Exchange-CrossTenant-Network-Message-Id: c954c51c-74c9-4b6c-c320-08dcbc2f6a74
X-MS-Exchange-CrossTenant-AuthSource: DM4PR11MB5341.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 14 Aug 2024 07:05:02.2941 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: 6G+d7zrnATL33yE2njY3J56Or+nMR6PHyDSmUFF4PgCyf+S+2FY9LMLRgcC/OSBudC2elO8og5PWjboej2YWBQn7SQAG6ZDQNfqPqsJjDHw=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: PH8PR11MB7144
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


On 8/9/2024 5:11 PM, Suraj Kandpal wrote:
> We are checking cp_irq_count from the wrong hdcp structure which
> ends up giving timed out errors. We only increment the cp_irq_count
> of the primary connector's hdcp structure but here in case of
> multidisplay setup we end up checking the secondary connector's hdcp
> structure, which will not have its cp_irq_count incremented. This leads
> to a timed out at CP_IRQ error even though a CP_IRQ was raised. Extract
> it from the correct intel_hdcp structure.

It would be good to have helpers to get the correct hdcp structure based 
on the context, perhaps as part of a separate series.

In any case, the change looks good to me.

Reviewed-by: Ankit Nautiyal <ankit.k.nautiyal@intel.com>


>
> --v2
> -Explain why it was the wrong hdcp structure [Jani]
>
> Fixes: 8c9e4f68b861 ("drm/i915/hdcp: Use per-device debugs")
> Signed-off-by: Suraj Kandpal <suraj.kandpal@intel.com>
> ---
>   drivers/gpu/drm/i915/display/intel_dp_hdcp.c | 4 +++-
>   1 file changed, 3 insertions(+), 1 deletion(-)
>
> diff --git a/drivers/gpu/drm/i915/display/intel_dp_hdcp.c b/drivers/gpu/drm/i915/display/intel_dp_hdcp.c
> index ec357d2670f1..3425b3643143 100644
> --- a/drivers/gpu/drm/i915/display/intel_dp_hdcp.c
> +++ b/drivers/gpu/drm/i915/display/intel_dp_hdcp.c
> @@ -39,7 +39,9 @@ static u32 transcoder_to_stream_enc_status(enum transcoder cpu_transcoder)
>   static void intel_dp_hdcp_wait_for_cp_irq(struct intel_connector *connector,
>   					  int timeout)
>   {
> -	struct intel_hdcp *hdcp = &connector->hdcp;
> +	struct intel_digital_port *dig_port = intel_attached_dig_port(connector);
> +	struct intel_dp *dp = &dig_port->dp;
> +	struct intel_hdcp *hdcp = &dp->attached_connector->hdcp;
>   	long ret;
>   
>   #define C (hdcp->cp_irq_count_cached != atomic_read(&hdcp->cp_irq_count))
