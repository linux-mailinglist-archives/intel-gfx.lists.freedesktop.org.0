Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 5517B932069
	for <lists+intel-gfx@lfdr.de>; Tue, 16 Jul 2024 08:24:58 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id A271C10E57D;
	Tue, 16 Jul 2024 06:24:56 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="WowI/JrD";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.15])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 93D9A10E57D
 for <intel-gfx@lists.freedesktop.org>; Tue, 16 Jul 2024 06:24:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1721111094; x=1752647094;
 h=message-id:date:subject:to:cc:references:from:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=yDhCnQos7lLqAX+5VAK9vaIQptlKccgh0AgHB58yNsI=;
 b=WowI/JrDylbpWNV1SLtSXDveJmrHEVVLXd7Vy88cvJAs2jeUgUA+/RZe
 KFqZ5WDDJ1WwO9V1VDZ5/uKcQrwEU0ZmgMIQw+zbyO8r+F0BHfcAqmIR1
 AldxjKvrp6GtidrIx6svZjrxrttX5J/FPJs9LCmZ3K5AWeXgO0FtmuVWb
 QZjFEAGIsqIH2PR88/drCrX92fGGTdWd0M06bwPByiZBkYdDrtdHaoTrN
 Q1YcbK3bRzhGCDf5dwFfrVGc6UM+aYiFyOryet64tUlLYxuLIesJhyJat
 7ruCSPdKhptfqDd2GLZXfGQHfSt8A44aScorG65S+nbpVhZT/Z9osIf54 w==;
X-CSE-ConnectionGUID: X/+UrTo0Sma4Wwwn/Gcadg==
X-CSE-MsgGUID: CsyO7nrRSWaAjsppVsV5gg==
X-IronPort-AV: E=McAfee;i="6700,10204,11134"; a="18678951"
X-IronPort-AV: E=Sophos;i="6.09,211,1716274800"; d="scan'208";a="18678951"
Received: from fmviesa009.fm.intel.com ([10.60.135.149])
 by fmvoesa109.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 15 Jul 2024 23:24:54 -0700
X-CSE-ConnectionGUID: vD4sUrJQQ9CWAUaaerDIeQ==
X-CSE-MsgGUID: +oytjhP2S5ugHeSQBYaXwg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.09,211,1716274800"; d="scan'208";a="49824478"
Received: from orsmsx602.amr.corp.intel.com ([10.22.229.15])
 by fmviesa009.fm.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 15 Jul 2024 23:24:54 -0700
Received: from orsmsx601.amr.corp.intel.com (10.22.229.14) by
 ORSMSX602.amr.corp.intel.com (10.22.229.15) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39; Mon, 15 Jul 2024 23:24:52 -0700
Received: from orsedg603.ED.cps.intel.com (10.7.248.4) by
 orsmsx601.amr.corp.intel.com (10.22.229.14) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39 via Frontend Transport; Mon, 15 Jul 2024 23:24:52 -0700
Received: from NAM12-DM6-obe.outbound.protection.outlook.com (104.47.59.168)
 by edgegateway.intel.com (134.134.137.100) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.39; Mon, 15 Jul 2024 23:24:52 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=F42LNc/w8rbu8i4gctN52dSGaJkdrCNmMDZYaQc2zoed8d/jK+4Atp2fjUssG8ssBg6AtJcmh5CdRw73kwZi8p63KLUhU4pfkoPgAcRKXiTsHQ1TR9d43G9V/wUXAtZ179gOzU46dVgVocTSJDgEgqD9CLdhHQeA5aM94u8caIHM3N33Kyj+VqKg1y2I+/ppETbUKLDuL43IY8QomOej0kuuO2LnvVdHQDcPRZfNmAYolnUZFIFaExwXrb0C9TyCb+T1Uh4mrmgG4QeoCmokPOE2ju9IQRnUXewMEZjJ34xqahLh0mDfrvjrDDggudflNghbtjmTL7uSyMpYf/y4Cw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=Mymck62AWtJvB8jnciwJyou2ep+dqd/SWKDYL/zrkS0=;
 b=kriWNzNEWONa9kqS0jt+rVvht5HZSPuqytw2cG+D/1fUzK4v4PQbexTnj23o79jY+h9sJQP2UQip8y68fSEv4tJ+nL/7ZaIxExIsMh147Vc8ODU3QRIlrJ+IAwy4ASsY1Bk1v5RTnJ9/ePiu8W0n0Ln2mXqemPZQERxvFi/uxjlB0iSSbNM7AyEnDLw6N1vFTENVkRgEGZ3qHFs9uT3ES5V9TyNo92KZ5b2Q7ab3feCbMqHsKfadtfx7Opy0yov7/eCjE+gH2xMpDzsY9u+RUPSE5rSDW2Hatvz2iDUVaILyNDKXpkIJzEOkeYdwcYPSYNe8RmTiso9RfIyOrH9Hcw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from DM4PR11MB5341.namprd11.prod.outlook.com (2603:10b6:5:390::22)
 by LV3PR11MB8507.namprd11.prod.outlook.com (2603:10b6:408:1b0::19) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.7762.29; Tue, 16 Jul
 2024 06:24:50 +0000
Received: from DM4PR11MB5341.namprd11.prod.outlook.com
 ([fe80::397:7566:d626:e839]) by DM4PR11MB5341.namprd11.prod.outlook.com
 ([fe80::397:7566:d626:e839%2]) with mapi id 15.20.7762.027; Tue, 16 Jul 2024
 06:24:50 +0000
Message-ID: <5667b45e-dfc5-4a42-8e26-6938a34307ce@intel.com>
Date: Tue, 16 Jul 2024 11:54:42 +0530
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH 04/10] drm/i915/vrr: Compute vrr vsync if platforms
 support it
To: "Golani, Mitulkumar Ajitkumar" <mitulkumar.ajitkumar.golani@intel.com>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>
CC: "jani.nikula@linux.intel.com" <jani.nikula@linux.intel.com>,
 "ville.syrjala@linux.intel.com" <ville.syrjala@linux.intel.com>
References: <20240709032651.1824185-1-ankit.k.nautiyal@intel.com>
 <20240709032651.1824185-5-ankit.k.nautiyal@intel.com>
 <IA1PR11MB6348FFF145FC655B1DE4A520B2A22@IA1PR11MB6348.namprd11.prod.outlook.com>
Content-Language: en-US
From: "Nautiyal, Ankit K" <ankit.k.nautiyal@intel.com>
In-Reply-To: <IA1PR11MB6348FFF145FC655B1DE4A520B2A22@IA1PR11MB6348.namprd11.prod.outlook.com>
Content-Type: text/plain; charset="UTF-8"; format=flowed
Content-Transfer-Encoding: 7bit
X-ClientProxiedBy: MA1P287CA0009.INDP287.PROD.OUTLOOK.COM
 (2603:1096:a00:35::17) To DM4PR11MB5341.namprd11.prod.outlook.com
 (2603:10b6:5:390::22)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: DM4PR11MB5341:EE_|LV3PR11MB8507:EE_
X-MS-Office365-Filtering-Correlation-Id: 372738a7-0821-4d91-155d-08dca55fff3d
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|376014|1800799024|366016;
X-Microsoft-Antispam-Message-Info: =?utf-8?B?YSttZmllQXVjUTBncWhVb0lFdE5LRlcrUzg2aHVuU2wvK08ycUlzMGtaNlFF?=
 =?utf-8?B?RXE0WHFMaC9CVkRqbDlZSGwwTmVsYU8vMlZKaFpxZXA5RWZ4ZWFIU0hZdVJN?=
 =?utf-8?B?Ukg4ZE80cHZLQjM2TDlyQ0d0aHZvNUhSdzJkc04zUzc0VnUxUHZIa1FTL0Zv?=
 =?utf-8?B?MXNiSnhxN2JXUW9lS2xCbU10ZDhZamZtd3FNSkJMQ3lMVEhrWHlsN05nakJM?=
 =?utf-8?B?eTlBR0pTMDl3U1c0dlZwRnlVTmZSWm91Mk5CYWtmS0hESGVXRVNneDNOeFlt?=
 =?utf-8?B?SHU1d3IxUE9YOFh1OXR0OVBQOCtDZTUwZnJtRTJQaUkyV0lTOHU1TmFYUk0z?=
 =?utf-8?B?UnViR202UTdZWkJRQnU4R2FJUTVLRlphMFlXVkVBdW1ySllReEw5ZFIxV3Bh?=
 =?utf-8?B?NGtKZWorekY4SnNWZE5wb3Q5R3ZQQkdUT2t0VTMwTDY2OC9VOHREaVZpNFkz?=
 =?utf-8?B?TW1VYU9jQmM2elVEN0ZBaEYrS1NuYXZRcEcvdmtyb1BTc0dFSVNtTkJnbzhB?=
 =?utf-8?B?bWo1TitTSEk3SVhmM3lwdlNOOFhkMGlLZ3AvWWJkZzR0bEdia3ZtS3YzRSs3?=
 =?utf-8?B?dE9Eb05MMHB2VnZLM2ttR0JzaE14VWpuRWNTTWFRbkpuaDgzQy9QaUtOOFlU?=
 =?utf-8?B?UXJsbkIyK3BicDVGbS9rNVJIcjQvS0Y0RGVYVm5mQTBkWU4wOVNpamZ3WWZQ?=
 =?utf-8?B?dHAvQ3p4WVZDeW5IL1plSGJjSHArRmRVdjBhZzFoZUM0M3ErRUJvWnE5MUlm?=
 =?utf-8?B?NTMwYWkzYUlPU2kwZHBtK2Yxb2F0L2JzYU45QUVld3VJTlFFYWU4NGxTdFVI?=
 =?utf-8?B?OXZvaENlcW55RWVuT09aRmE3MjFReXV5V0hxUFNqQUdOcmhpemIvNzJOV1VU?=
 =?utf-8?B?bHhKdzhVeW1zOEpUZE1MNDJ0V0xtek5iQ3htelJjZitqREphREd2TjRUblZk?=
 =?utf-8?B?cmM1MEhLNmJOdHV6U0J3eWhGam9uaWp3eW14c0RDNG8rdGZnNlR1TXNrM1Zp?=
 =?utf-8?B?WHp2dHNwMmpOYmtvY0lyMnlJR3JoSDlyZGU3VWEyb05IcVBDczl3cWd0L2xk?=
 =?utf-8?B?QnJ4c0RXZjNpWloySEY5U05FRnY3WEIyUFd3akhLc1FScHhjSUlCSGRsYVBI?=
 =?utf-8?B?aFJ1RWQ0NVNQM1E4T3dEUUxlMEpQYVgwQk1ZYXl0aUdCb2RuMTRIOTRGUFEw?=
 =?utf-8?B?dUs5bVNlQlJJM2RUbG9KdGVRcE5yekg1THlHSEpNUDFjZVNYRFlXU2d4S1Ar?=
 =?utf-8?B?T0lWbVFsTlppaFZlUXk2WUJ5UTJwS3dYS0dqdjBOOVM5MzFLcUdNdlVtV1hj?=
 =?utf-8?B?dEIrOEcrT2I3VzJRaWhCMDNDOUY0U2JMZVpUVXJzK3J2dmladWN4V3ZLM3Aw?=
 =?utf-8?B?N005aEJFOE5PbkpUSldtR3MzUm5CQmluYjR6d1BzYTlmOUVLalk2Mm41S25P?=
 =?utf-8?B?bTVGa2JIZHBSQ1ErZ08zT243V0VGTzFSNmQ1Vk1CTlpaSG5LOWZWeVUxWE9W?=
 =?utf-8?B?c3YvZm9GY3FQVVRUZVpubkZZeXpLY1E1NmtadnpMNEJFaE9oVUJGbmVqcUxr?=
 =?utf-8?B?VkZOMDFjL2pwcGw2dnpIT1JJZDhJSVRWaUxEUDZjY2p0ZmpyWDJId29TQ3pT?=
 =?utf-8?B?bC9PRWJwK051RUY5TE13L3VRVFh3UTlpb3o0ejR0TE5OSEtacXUzdWNqN2tY?=
 =?utf-8?B?azhwL0ZTUmpjUVVvLzZ5THNJOTY1aXE5ZHJwM3RTZTA5blVtbkt0KzYvOFdk?=
 =?utf-8?B?QnVGcXlXTzNlbXc4VTVhZVgzSmo0UFpiS2dsSDZiamNQWktvdnVLc3hKOWh3?=
 =?utf-8?B?UGtRbVFTdStxRTNpamF3QT09?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM4PR11MB5341.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(376014)(1800799024)(366016); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?c1dvbE4rV1BzTWF1R1BMSklWaWk0QXk4S2xqK1VyK1h4eEFKbk1icWExSGJi?=
 =?utf-8?B?WTRNNGJZZFc1K1FXT1U3KzhPN1NwaWxwTzhDdjB5K1BSeThBeE9jS0F3d2RS?=
 =?utf-8?B?dTN0OFhnR1NGRlprZUsvRUZiWGhKZmUzWDVucDVBRzFmUldSNXN5YnZOczNy?=
 =?utf-8?B?RFFwZHJDVjRnQUE0RVduc0p5NmRZZGFFTlNFNzY1WWlLNEVPUDlobDQxOTVi?=
 =?utf-8?B?VHFxYzVDYVBhZU1uL1BoUFVQSHI4d3Q0YmJCU0pkTElWMkxmVzlGUm5Dbkg2?=
 =?utf-8?B?VXdrUGh0S3c2dnpEYmtQVzVHWGQ0bmRDeGdjYmJSU3Qzbkt0UVFPUXR0K1Mr?=
 =?utf-8?B?SzZVS1p4YUxIaC9IMWZ1aXh6UFYwOUZab3BqMzIxRlgwUXprenVQZGlYTkxt?=
 =?utf-8?B?SjlER0hQRHRLRHJsUkN0QmVIQXhuNWd5RXo3T1RtRnY0dVVPcjVQWm8vZTJj?=
 =?utf-8?B?OHhzZ2VRSG4zdHRHMmEyenZyUVlPTXJJK2RoTk81TDNBTXlBVnhleThjOHRt?=
 =?utf-8?B?NHBuRjYxWmNjamZsdTMzenVSaTBabHpkQTVSems2ZDQvcXVQUlVHcCtBQjNl?=
 =?utf-8?B?VGhGdTRVZmEzdVRhVjdYRFJadk50SVNBNlFxYTYzTnkxVFhrNzJudys2TEhK?=
 =?utf-8?B?a2JTdWxidkJiMVY3M3dHTjlrVi9KU21tVWZpM3IrL05wSHZISXlibFRIN2Yr?=
 =?utf-8?B?TC9jdlBaQXkyNVJZUjJWbVJ3dmdLbEJWL3NoVWRtL0VPYWZ3UDlRZHpnMTJE?=
 =?utf-8?B?eGNUTkY4dkh5SVo2R3FvK3pqZFJzRWsrN2pNTkxOVHV5ZitPN0RrdHFsZGdS?=
 =?utf-8?B?c25sN3F4OVYwZ3hGenIzVHNXQTFaUm1mY09XS0xtQ1d0eVJXMW1tMEdDNGZN?=
 =?utf-8?B?a25QQWNrK1FqUCtuZkw3VUR2a2JENUt2UXRudHROUUhCMDNiNzMybkZJUG1Z?=
 =?utf-8?B?aXJCOEJmeno0cCtKcUwzRVVzcUUzUlJ6WXhKcUY4Q3RDcjJVczc0TVlyUCtS?=
 =?utf-8?B?bEZJblZvbk1BVEY1MTBzT2JkK3RpVVJZRVpKSWZrZnJnUjN5dWZMbnpHNFZE?=
 =?utf-8?B?dzM4bktqaG1TeWZEdHM0bFA2L3NHQmJUT0hXWWxHYndNQVhVNkY3bkpPbUxx?=
 =?utf-8?B?akZGYkE5Qkd6cnNxRmVvNVg5WHZzMC92WXV0clBUYzcvbmQzMGV5ZWF3VFQw?=
 =?utf-8?B?YmM2ZVgzM0h3TkN4SzU4ZHhudWVWYmlab1craGZhSUtROTNkMkxSRkZLT0hn?=
 =?utf-8?B?SzZuZlNTd0x4QnZzNjVUUjJaYWdRTlJDRGVZYW5JSHptT0Q4Rlh2YnFpWlZM?=
 =?utf-8?B?RjhXMnptUER4NElWbXh6MU5pdTduVnJIWFV4UG5pd0FBZlJIZnVXZ2FTQ3Vi?=
 =?utf-8?B?c3duellUVytvSmJhdERHcUNxajl1YW9QVzBmejlvNFV4MkdRZ3ovVW1tNURz?=
 =?utf-8?B?Um9vVHhyWDNLUWFFZUNHeU5vYjZUd2c5MnVhUWdjdjBidytjQjByVWJXQ1FK?=
 =?utf-8?B?Vk0yR2daZVp5eTRJTGJZRDZLMUE0ZVU1L2xBYUNxUGlPd0xldm1mTlBGN3VJ?=
 =?utf-8?B?enRxejFuMkxNL0NLQzdlVm9xTmlYbDVTdEt4b2tTYkdxc0hrZEh2UlpxNkJY?=
 =?utf-8?B?WWRUQVl1aEREQ2FqQXFwRmJzcFNjUGxWM2JuNjcwMDRPRkppTE4yRnVpM0ZU?=
 =?utf-8?B?L1lQY3NnSHRCOG5VQzJTS0JmR3VMQVB0SkVHTHNkQ08wY1J4WXZ0MGx2Zkda?=
 =?utf-8?B?dFRiSHZBdnBFZVQvMEtQWXNIWnJYRFd0aHhkelFMcVV0TGxVUmFXc3lhTkhy?=
 =?utf-8?B?ME9qYmdDUWk0UENNcU5rM0NSSGg0SWl6S0trd2g3bHQ5eTNrZjNTZ2RYMzQ0?=
 =?utf-8?B?bUd0STV6c0xqSHRxUlBHNkJmRElVRzh6dU5EcEVRTmNybzE1WmppeUJSYWZp?=
 =?utf-8?B?RGRMbStJS2ZhZVNKZEJOai9RYjQ2OGw1L0NDVUFFUWJuQkFHNTEvblJBYWl6?=
 =?utf-8?B?ckRpNDc3REpLc1BNWHFjYjBSQVIxS2Q2Yml2QUtUQlhEdDdiZmRpTFpKV0NB?=
 =?utf-8?B?aFlQZG9sZ0xEempXQUdvSEF1UXFzNFVVeEpHc1dVMUloK3dhVjJicVptOVox?=
 =?utf-8?B?NFozMXhXcWtyaFdDZ1hrR201NE1EQXhZS3lZZWxaQ2ZOTDhzWHdKemwwamxO?=
 =?utf-8?B?OVE9PQ==?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 372738a7-0821-4d91-155d-08dca55fff3d
X-MS-Exchange-CrossTenant-AuthSource: DM4PR11MB5341.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 16 Jul 2024 06:24:50.5344 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: XcPRg1zguMfEbeyjSArdKI1Dw/ioDRFdIaT1/FW4B7yq1ceX7/KCVUBygHJNdfUWo7DXDI0IrAMGRnqgHztGUxZGSWm2s5CktmlHda7hAg0=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: LV3PR11MB8507
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


On 7/16/2024 9:36 AM, Golani, Mitulkumar Ajitkumar wrote:
>
>> -----Original Message-----
>> From: Nautiyal, Ankit K <ankit.k.nautiyal@intel.com>
>> Sent: Tuesday, July 9, 2024 8:57 AM
>> To: intel-gfx@lists.freedesktop.org
>> Cc: jani.nikula@linux.intel.com; ville.syrjala@linux.intel.com; Golani,
>> Mitulkumar Ajitkumar <mitulkumar.ajitkumar.golani@intel.com>
>> Subject: [PATCH 04/10] drm/i915/vrr: Compute vrr vsync if platforms support it
>>
>> Previously, TRANS_VRR_VSYNC was exclusively used for panels with adaptive-
>> sync SDP support in VRR scenarios. However, to drive fixed refresh rates using
>> the VRR Timing generator, we now need to program TRANS_VRR_VSYNC
>> regardless of adaptive sync SDP support. Therefore, let's remove the adaptive
> In this case still do we need to add source check for HAS_AS_SDP(i915) ?

We still need to ensure that we do not write this for platforms where it 
is not supported.

I have added the check, as this was introduced for AS SDP originally for 
DISPLAY >= 13

Regards,

Ankit

>
> Regards,
> Mitul
>
>> sync SDP check and program TRANS_VRR_VSYNC for platforms where VRR
>> timing generator is used.
>>
>> Signed-off-by: Ankit Nautiyal <ankit.k.nautiyal@intel.com>
>> ---
>>   drivers/gpu/drm/i915/display/intel_vrr.c | 3 +--
>>   1 file changed, 1 insertion(+), 2 deletions(-)
>>
>> diff --git a/drivers/gpu/drm/i915/display/intel_vrr.c
>> b/drivers/gpu/drm/i915/display/intel_vrr.c
>> index 24568dae717a..43b772f91556 100644
>> --- a/drivers/gpu/drm/i915/display/intel_vrr.c
>> +++ b/drivers/gpu/drm/i915/display/intel_vrr.c
>> @@ -233,8 +233,7 @@ intel_vrr_compute_config(struct intel_crtc_state
>> *crtc_state,
>>   		crtc_state->mode_flags |= I915_MODE_FLAG_VRR;
>>   	}
>>
>> -	if (intel_dp_as_sdp_supported(intel_dp) &&
>> -	    crtc_state->vrr.enable) {
>> +	if (HAS_AS_SDP(i915) && crtc_state->vrr.enable) {
>>   		crtc_state->vrr.vsync_start =
>>   			(crtc_state->hw.adjusted_mode.crtc_vtotal -
>>   			 crtc_state->hw.adjusted_mode.vsync_start);
>> --
>> 2.40.1
