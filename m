Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id wLKgKIPuemnn/wEAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Thu, 29 Jan 2026 06:22:11 +0100
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id B8399ABE45
	for <lists+intel-gfx@lfdr.de>; Thu, 29 Jan 2026 06:22:10 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 5738210E7C8;
	Thu, 29 Jan 2026 05:22:08 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="a9qL2qAU";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.11])
 by gabe.freedesktop.org (Postfix) with ESMTPS id B97B510E263;
 Thu, 29 Jan 2026 05:22:06 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1769664127; x=1801200127;
 h=message-id:date:subject:to:cc:references:from:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=/p5p+baB4mab6KBt4NBICPUJ/TZRebsJZr5MIkFJ2f0=;
 b=a9qL2qAUUMRWVp3JuuL7jSQqeUDQisfkx9QGZZRR+WHRAY53R5IxZ1B/
 Wii+R1VOvbhnMjy2MggCEpdu5qnm5DWHiJ3ED683aFaSyrP3vruQZoAUC
 EVmkBi96oqyD9Kjpb9eST2Ftbyg/cBKyvQWnqya+2buM8Z4fb8ciM6ZVd
 /J8aPvYKMff/Gb/ayyfZCJ5Y942qfwlQNNZyGY0RgNIck49e+4jvXnN2g
 0kJcCzHE8sgnQjN1egXuMkXFAp73G/f13uWRQL8Lrn1sI3OUAVzI3thJe
 tzWKjMEN6bKINYBF2Tnj/q39sosRFx4OLCNZlSdQAGxJcxftm1ZdehJi6 w==;
X-CSE-ConnectionGUID: AHN6PR5jQtK/+EtYAzeoZw==
X-CSE-MsgGUID: aIsfJC6mTdq6pexBHFCJKw==
X-IronPort-AV: E=McAfee;i="6800,10657,11685"; a="81206948"
X-IronPort-AV: E=Sophos;i="6.21,260,1763452800"; d="scan'208";a="81206948"
Received: from orviesa001.jf.intel.com ([10.64.159.141])
 by orvoesa103.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 28 Jan 2026 21:22:07 -0800
X-CSE-ConnectionGUID: VglFThwHTEi7Ld7fpDGgMw==
X-CSE-MsgGUID: kJLZM7mdRCelYJO2OY5v6g==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.21,260,1763452800"; d="scan'208";a="246077233"
Received: from orsmsx901.amr.corp.intel.com ([10.22.229.23])
 by orviesa001.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 28 Jan 2026 21:22:06 -0800
Received: from ORSMSX902.amr.corp.intel.com (10.22.229.24) by
 ORSMSX901.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.35; Wed, 28 Jan 2026 21:22:05 -0800
Received: from ORSEDG901.ED.cps.intel.com (10.7.248.11) by
 ORSMSX902.amr.corp.intel.com (10.22.229.24) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.35 via Frontend Transport; Wed, 28 Jan 2026 21:22:05 -0800
Received: from BN1PR04CU002.outbound.protection.outlook.com (52.101.56.9) by
 edgegateway.intel.com (134.134.137.111) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.35; Wed, 28 Jan 2026 21:22:04 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=ETIG5cbxpdhWzf55zaHkkU+2RiYLPWVqsA00RHnGflDxjXGC8otLn2ChEPwy6i1jwCQP6J5/E9Poo9tw85hpTv9vvdBNMUQS1VA8+x5X7icPJkGo5k9Jpr+ICz1DLWy1eN8b/JyoVwLtiFbd/bQltts9Jv90pkX2LdWWSSo2ymQmGOjOqcBCyclF1L14cfR73NmJxmpqecJ+zylZz0YSoXj62hOqDWztovrrYigod9KM8+ngU6giDUxCzhjKR5iKFPYu/8FIeKzw1zMMMLOIERLxfkv8THEoihjHevipTVKjMJqIG6VuQe74SngMa7ymIfoRXr5jVr+SnCWnNNhKXA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=QRtBO/S/ldqfaqm52LeGI9q6LhBGaCmx5i9Ur7sR25c=;
 b=fxxAyr9Fwc7qcLQRtrJ38Ddg97e0ReDiwm+YGFHXUPVNOQ93ZS08W3ZJKxrBW1A2/57cOZLtTiIg5opulKRhgJ6gKKTV+zQAHmtX9LU3w5oFR1blfjefo7bO7p/WmHWymkToLO9NbzygUxJXeC+kQiZG1NyuNNEOMY1lLfJHSO8Vh4VUb7WiTB4wTCvzfXFY8qRwzMPVJ3/8AH4t5+Epzcet16G/E/uWqObbs5zX/b7F0FV/VBVnpTtuFjXtxfK/cp7aLZkDctwvkTERGs4dSpbOBbPMYIFZ+smvhugsqg+pz1ALxGfrQrL/a3rYuHQ8I8IfbNwqfUk4KewwervYXg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from DM4PR11MB5341.namprd11.prod.outlook.com (2603:10b6:5:390::22)
 by IA0PR11MB7306.namprd11.prod.outlook.com (2603:10b6:208:438::18) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9564.7; Thu, 29 Jan
 2026 05:21:56 +0000
Received: from DM4PR11MB5341.namprd11.prod.outlook.com
 ([fe80::397:7566:d626:e839]) by DM4PR11MB5341.namprd11.prod.outlook.com
 ([fe80::397:7566:d626:e839%3]) with mapi id 15.20.9542.010; Thu, 29 Jan 2026
 05:21:56 +0000
Message-ID: <079b962e-c649-4abd-a75e-5c50800542be@intel.com>
Date: Thu, 29 Jan 2026 10:51:50 +0530
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH 04/16] drm/i915/dp: Rework pipe joiner logic in mode_valid
To: <imre.deak@intel.com>
CC: <intel-gfx@lists.freedesktop.org>, <intel-xe@lists.freedesktop.org>,
 <jani.nikula@linux.intel.com>
References: <20260128140636.3527799-1-ankit.k.nautiyal@intel.com>
 <20260128140636.3527799-5-ankit.k.nautiyal@intel.com>
 <aXo8dwGBqxY5vE6o@ideak-desk.lan>
Content-Language: en-US
From: "Nautiyal, Ankit K" <ankit.k.nautiyal@intel.com>
In-Reply-To: <aXo8dwGBqxY5vE6o@ideak-desk.lan>
Content-Type: text/plain; charset="UTF-8"; format=flowed
Content-Transfer-Encoding: 8bit
X-ClientProxiedBy: MA5P287CA0269.INDP287.PROD.OUTLOOK.COM
 (2603:1096:a01:1f2::12) To DM4PR11MB5341.namprd11.prod.outlook.com
 (2603:10b6:5:390::22)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: DM4PR11MB5341:EE_|IA0PR11MB7306:EE_
X-MS-Office365-Filtering-Correlation-Id: cbf1f672-d966-4a87-0708-08de5ef651fa
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|1800799024|366016|376014;
X-Microsoft-Antispam-Message-Info: =?utf-8?B?bXUyaHNuRDNmRy9URzM5UUMwdU5RTWtFK2phWVBBbXlRbjNNQjJmNVhzaHZ4?=
 =?utf-8?B?dGtSUGp3aDVsd3RNVW5XelZjbzBxRXl2SUNaOXZ3ZTFlOTE0b0VnNkcvNjFy?=
 =?utf-8?B?bXVGUlFxTzZCcXZkQmJ3MlYyTGpVeThlVG12U25sWU53WnEybTgzcW1MQ25t?=
 =?utf-8?B?S3puRW1zY0ZFS2IzQ2FOQiszWkVmamtGOEp1RG0zZFMrU0VyUElGZG1sc2cx?=
 =?utf-8?B?S3lUc09qaVpMdE9LejZOQjVGdDl2Qnh3cUM1a3pKcFRpU1QycFhsR2dWL2FG?=
 =?utf-8?B?UkN2bEJPWG1MRTBLTGxXaWNwSkRELytXUytEdlMxcWpIdjJqQ0JWaGR1ay9K?=
 =?utf-8?B?NmFNZWtZbVA5S3lRTG0wSCsvNkpZZ2NCa2hxbUFld3ZhYUh5TlRvMkZlRHBa?=
 =?utf-8?B?MWdHOWxHNzVaTkhEMGVaSDNRcmZnSDNJTzJLTWxXZWNaUkpXREpRZkwrcUQz?=
 =?utf-8?B?RWhhcFllNktWb3JZNmhWbFVtZCsrYkxqbWJGTVVZTERVUkd4NVdBZjdVM215?=
 =?utf-8?B?RjRCM3VNOGV4QU9pMHZOaDVyaDFIT245eEtYbkRLd3FhdWo1TXl3Z3NCS3RV?=
 =?utf-8?B?bnZNSURZMTRleUxsNmNpUTZ1c2hQU0lScVNmb3YxbGxZbUExSlJzcEhvSW0r?=
 =?utf-8?B?Ky9URlZYUENTQ1RDNjhVbGNTS2NSeDFUK1k1Ykt5S01hdlY4WEJUQVRRMUZM?=
 =?utf-8?B?NHpPRlZHUktFMjNtVm14ejhkZi9zaHBCUy9kNUl6L3UyQnRNYUw1SWorbjBj?=
 =?utf-8?B?bHFwQ3ZCMmk5ajl1Zk9DT0dsbnRzdUNzR3c0cXlDRTFTRHQrems0VHl2Z3dv?=
 =?utf-8?B?R3JrOExyRWhSVzVtN2gxSVl5aFRYQzlsUEE5YU1wRExGTTh6Rnp6OWdub20x?=
 =?utf-8?B?ejd0R3pxMWptZWhWNEtzSGxzZlE3WXRWZzZObnpZY01peVNLSXM1VVh3bXph?=
 =?utf-8?B?SjZwUzJxMkFsbFdHNlVTZmkxdGs2UXhDOHlhdEw4a3JTM1EyZkQ3Z0s5WVhT?=
 =?utf-8?B?dkJwTjN5M1BmQ0FOMW9zSStnSDU5Nzl0b0R1V01hM1NyZFZtZ0tJRnBtL2dD?=
 =?utf-8?B?ZHVvVDZTYmprWGhjOTZtb1UrMmthRGtnbTcvTWJKOTgvZXlvQ1lTcGJseGpU?=
 =?utf-8?B?OEYxaXJIVGZaRUcwNW5VZ1ZjeXNRUGVKUVI0UlBDM2dlMWFlSHV5OXRJcGRU?=
 =?utf-8?B?S0xFdk55QnZJeHdHRnBSQWl0Q2lmZ2VERTlZeG12TzFWaFhFdk0vSWp1clVK?=
 =?utf-8?B?ZVJkSXBEbFJnZGtNS3BOMy9JeUtSNDRCYTUwQkVGWDdlYzR0eVJDMStYMlFk?=
 =?utf-8?B?bUlEbFY5ZEVYMlBERWRoTmIwT0c2VTVTU01RdXR6QU9Qb1ZSVXNydEt4a1ZN?=
 =?utf-8?B?czU5WGRlTkwxOWVTRk9YSEZrYVZ6SU5MbFVRTUp1NHZlTUFpYmdEd2wwYkFE?=
 =?utf-8?B?cVRLUklqL1RudlN0TE9FM1llZ0RhZWEwQWdmcEowcHV6eG0vOG5yS0tWQ0w3?=
 =?utf-8?B?VEl1ZC94dnRCdFRoQ05hQXJCYlhDeVFQKzFYekdXbUhNNXBSWmE0a04xT1p2?=
 =?utf-8?B?eEZLTGN1NFM2b25Ocytrb2huS2pFc3FoRzBrK0VQK0F1OXQwTDJHdG5HSFA1?=
 =?utf-8?B?MXh3eTFNOUZ4SzBLMCtEQmFvc29YZjVtUThDRlA2N2tLYlVpYngvY3pSb2xi?=
 =?utf-8?B?VG5BRlhoQlllOCtTTmpOSWlYS1pyN3dyaDdUT2RRbm1pZUh4QVZ4U3lZaUVQ?=
 =?utf-8?B?clNrdkVRMmRGZU03bmJVbmFqUDF1QjVHREJFeEJ0am5nS1pEenZObUtGNHp6?=
 =?utf-8?B?NnErSjJiSHVEb05qN25TYkNqSTZOcXdPS3BXb2RTWFNSeE1LVm1hZUY3VUd2?=
 =?utf-8?B?T2xBSHVzYVJQUjZRSnA3MVNoM01KY2cxOUxqSGFrMERseER3SWFCV2VDU210?=
 =?utf-8?B?Q21xWllpMVRsWXdZdTdraWZ0Vko1NEllalRoeVBCQ2Y3TVB1TmEyKzRvL1E0?=
 =?utf-8?B?N2ZwS3VOT3dTUlNVTWRlOU8zYk1rcEFweENRZ2pWRE9ETmh2NksvWjBCdE1L?=
 =?utf-8?B?UStXNHZKaFI1dm1hQlNxVzZzdnJGRHdNSmZ6NzJIOFJoekN2R3ppRUJtRjB0?=
 =?utf-8?Q?yN1w=3D?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM4PR11MB5341.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(1800799024)(366016)(376014); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?Y2JVU0lLT3lzbjE1Q2JpV3R4UGJ5UjA3ZzNxV0dpb1lnaElQc28zVXZpaVlN?=
 =?utf-8?B?ZlZDTmZXNlpEdys0NU0vTXRPS0NJTk15UVBLMDErczZtdTRYMlNZbWFyMzRL?=
 =?utf-8?B?c2N1NjBwcjc5UjJCRUUrNjE2M2ZJbThFVG84R08zUmpGVncyVFlOeURjSHJk?=
 =?utf-8?B?QmIreFBiTDdnZnVUMElrcFdIYjlPaWdsbThKTHljMkJkVTRxVGVYcUxnR2dj?=
 =?utf-8?B?NlpPS0ZPeTBtMTdYVzhoNWFHV0NwMWQwZFZ4Y3F1T2RvdktKRmUrbEEyWm00?=
 =?utf-8?B?bmduTHVFZ1ZvcTNpUUxQYzFNSjIwMEQycG1wVXN3TFVpbkQ0N1JtTHByUFpU?=
 =?utf-8?B?U1ZPNmd5cjdONHAxWTBMZGNGcTJYNEtYNFpraTBCbkxVcGJEK1lub0Ntb1Nj?=
 =?utf-8?B?YlM5SDY4bHk3bXc3OVp1OWErT2RYYTYvaDcvS3FqeVBSOU5xTFl3NXFsYXA1?=
 =?utf-8?B?bFlxVkdJODRPcnNRSU4rZ3lIWk9ITFc2eEVRd0RQSkV5S2JnR2p2Y1BnRTZW?=
 =?utf-8?B?VlRKTVViall3QmJwR2JVZTM2Nnd0Q1hDK1RWbjJOa3A4TjZSaVZPQVVDK0RN?=
 =?utf-8?B?QTBpVjVmbXd4RUdXenl0TGhGUEx3NUlxUGZQR1F4MEp2REJrdW5saGRiWWhQ?=
 =?utf-8?B?ZWZHOVhUcTBZUDZsWnpJbHJrSjlhd2dSbHhCbzFBQlErZ0twQW1HR0VxZG5M?=
 =?utf-8?B?ZG5ueGJJZHlmWWF3eEorTFh2V2F0bGZLRHFjZzltUlMySWFFanlKVXdxeXRK?=
 =?utf-8?B?bnd1Y2txbmJJN3h1ZzZRT3JjM0NOUmNCYnRDaU5jNDMwem55ZGRKcUJTV2tE?=
 =?utf-8?B?WVI0MTA0QzlnRGszUlFWUGtVL3JKOTFsU2JvRDlVRjFyckg5cWthQWxGMkRS?=
 =?utf-8?B?TU5qd2YrU2crZHk4cjMwZWtNaVVNc1hIU1A5MGVsNVU5Rk1YbFdPYmo4U3pQ?=
 =?utf-8?B?NUMvY3hqV2xkWGRJQkVIVVlGOWxSYytWMnJjeStFeEdlRTdsY3o4Q1ZkTVc5?=
 =?utf-8?B?K2IveVdVaEtlYXA1Z1A1MlpLVnVLRW9mZWxld2dwWXhmL0VOUFB4SzZUakIr?=
 =?utf-8?B?SS9zZDh6L2M1R1FQZlV4YXk2dDhlM0h3cTcrbURVdWtPWFQrWkR4NWZidHdi?=
 =?utf-8?B?eEMvcFRlK294L3o4QThCUllzTFBCOGNld1Azc0VVZzhxMWt5OWhQRldMOTFU?=
 =?utf-8?B?bENKTGNUR0h3SW5kYlFOdDBvbUxBeGZsL0J5VTdjVDJqdk1VeTVNVk9FSU9H?=
 =?utf-8?B?TmJmaVpCZnFnNmZFcDlYS2Q4RnFzRjR3bVVBb3NXSDVaOXpyQjdUUm9qVTBJ?=
 =?utf-8?B?ZndxaXlnR0x2allSVzlGOUlRWUxJNFV0a1A3Y3pxNzY0bElQK2w1TjZXL0l0?=
 =?utf-8?B?VEhIS0NlcWh1NHNQTVQ4YS9OSElVZnNTUTF1V0ZzR1h2d2N0aWNRTVhmKzBL?=
 =?utf-8?B?eUJvN2E3QnhYcXpwaTRFTmVJak9pRStjT2RDUURyZExlazVFcHZZQitKbUl2?=
 =?utf-8?B?Wk5TYzdSMkRENnc5Wm5DZHZGb1Z4SkRwNmNicDNzQkYyL01TSnp0WTV6VDFv?=
 =?utf-8?B?V2prR0kwbjRMa1NNZVlsVk9Td1BMdENZS1hQSTg2UTRST3doSDFaQVBXcG42?=
 =?utf-8?B?UUVXaVRScXNzSkhBb2xCUXRRaS91UEZoalMxUWlscktVRlFKSGN5WHc0T3BI?=
 =?utf-8?B?QjVQNmVCWk1Vd0p0RHp5bXpURFNlaUdkd3BzQWcxaUEwQWdvY25kZWRWdGNn?=
 =?utf-8?B?eDFHMkc5TzZtTDI4a3hHbXQvb0JGZTJqSjNDWVNIeDVOQ1F5aUhWNGg5WFoy?=
 =?utf-8?B?anhpTllTbjJ1RVphNTl1WVZLdUFTb0pqYmdSM0YrUTVFMkRRUnBHMi96WDZS?=
 =?utf-8?B?RGlVSVF0NVRrbktEUDhnbXpJckRHT1hia0N5K3pYQ1hRTWZSWTA2c3Z2T3lN?=
 =?utf-8?B?WmZibnFiMElodHR2cEhSUE9TV3UxamFFM0RObkMwczB0ZGhRdEl2eWpVWTF1?=
 =?utf-8?B?dmZOU2JMeWxmc05aQzZPT0llNWt0Y0Y3MFNmc3JNd2QrVnFJVGlLcUs5MEph?=
 =?utf-8?B?ejRmMXR6MXUxVEdvSXIwOTk2bjA2cVpMTTJsQ1dMUHdMSWtLOFF2MkF3cEdK?=
 =?utf-8?B?M2pta3hpWldBNGlBNWg1eDFSYkNTMThUSGRmQjQwUUhINmRYS2F3Q1pSTHBo?=
 =?utf-8?B?VHhnOE1pclZUTFlSMi9wS21aOFhzSnQ2ZGcrWjZWc2NsajB3dUtOLzJ1dUxT?=
 =?utf-8?B?bHBzRWEvWlQzWU0reEtvdUM5azNXU0R0MXNDajF5cDA2Wk5uV0xNb2QxclZw?=
 =?utf-8?B?eGpYazUxVXkzSnBOemJBeGdlZWc0bGQ5QU15bEdWclhMVTZST1h6WlN5WTIr?=
 =?utf-8?Q?henGNB0DAuxd5VgY=3D?=
X-MS-Exchange-CrossTenant-Network-Message-Id: cbf1f672-d966-4a87-0708-08de5ef651fa
X-MS-Exchange-CrossTenant-AuthSource: DM4PR11MB5341.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 29 Jan 2026 05:21:56.6932 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: o5UwAfBDaLVFJtLY7llg6qftQmAMNpulhBmSfPrYmUnwOurh229FKBH8kivEjy5fXALu6aoSQsmR21m29AF7BUs8D38rCt+1AiEgFboj2AY=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: IA0PR11MB7306
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
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-0.31 / 15.00];
	ARC_REJECT(1.00)[signature check failed: fail, {[1] = sig:microsoft.com:reject}];
	DMARC_POLICY_ALLOW(-0.50)[intel.com,none];
	R_SPF_ALLOW(-0.20)[+ip4:131.252.210.177:c];
	MAILLIST(-0.20)[mailman];
	R_DKIM_ALLOW(-0.20)[intel.com:s=Intel];
	MIME_GOOD(-0.10)[text/plain];
	RWL_MAILSPIKE_GOOD(-0.10)[131.252.210.177:from];
	HAS_LIST_UNSUB(-0.01)[];
	MIME_TRACE(0.00)[0:+];
	TAGGED_RCPT(0.00)[intel-gfx];
	ASN(0.00)[asn:6366, ipnet:131.252.0.0/16, country:US];
	FORGED_SENDER_MAILLIST(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[gabe.freedesktop.org:helo,gabe.freedesktop.org:rdns,intel.com:email,intel.com:dkim,intel.com:mid];
	MID_RHS_MATCH_FROM(0.00)[];
	DKIM_TRACE(0.00)[intel.com:+];
	RCPT_COUNT_THREE(0.00)[4];
	FROM_NEQ_ENVFROM(0.00)[ankit.k.nautiyal@intel.com,intel-gfx-bounces@lists.freedesktop.org];
	FROM_HAS_DN(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	TO_DN_NONE(0.00)[];
	RCVD_COUNT_SEVEN(0.00)[9]
X-Rspamd-Queue-Id: B8399ABE45
X-Rspamd-Action: no action


On 1/28/2026 10:16 PM, Imre Deak wrote:
> On Wed, Jan 28, 2026 at 07:36:24PM +0530, Ankit Nautiyal wrote:
>> Currently in intel_dp_mode_valid(), we compute the number of joined pipes
>> required before deciding whether DSC is needed. This ordering prevents us
>> from accounting for DSC-related overhead when determining pipe
>> requirements.
>>
>> It is not possible to first decide whether DSC is needed and then compute
>> the required number of joined pipes, because the two depend on each other:
>>
>>   - DSC need is a function of the pipe count (e.g., 4‑pipe always requires
>>     DSC; 2‑pipe may require it if uncompressed joiner is unavailable).
>>
>>   - Whether a given pipe‑join configuration is sufficient depends on
>>     effective bandwidth, which itself changes when DSC is used.
>>
>> As a result, the only correct approach is to iterate candidate pipe counts.
>>
>> So, refactor the logic to start with a single pipe and incrementally try
>> additional pipes only if needed. While DSC overhead is not yet computed
>> here, this restructuring prepares the code to support that in a follow-up
>> changes.
>>
>> Additionally, if a forced joiner configuration is present, we first check
>> whether it satisfies the bandwidth and timing constraints. If it does not,
>> we fall back to evaluating configurations with 1, 2, or 4 pipes joined
>> and prune or keep the mode accordingly.
>>
>> v2:
>>   - Iterate over number of pipes to be joined instead of joiner
>>     candidates. (Jani)
>>   - Document the rationale of iterating over number of joined pipes.
>>     (Imre)
>>
>> Signed-off-by: Ankit Nautiyal <ankit.k.nautiyal@intel.com>
>> ---
>>   drivers/gpu/drm/i915/display/intel_dp.c | 158 +++++++++++++++---------
>>   1 file changed, 103 insertions(+), 55 deletions(-)
>>
>> diff --git a/drivers/gpu/drm/i915/display/intel_dp.c b/drivers/gpu/drm/i915/display/intel_dp.c
>> index 4c3a1b6d0015..599965a6e1a6 100644
>> --- a/drivers/gpu/drm/i915/display/intel_dp.c
>> +++ b/drivers/gpu/drm/i915/display/intel_dp.c
>> @@ -1434,6 +1434,23 @@ bool intel_dp_has_dsc(const struct intel_connector *connector)
>>   	return true;
>>   }
>>   
>> +static
>> +bool intel_dp_can_join(struct intel_display *display,
>> +		       int num_joined_pipes)
>> +{
>> +	switch (num_joined_pipes) {
>> +	case 1:
>> +		return true;
>> +	case 2:
>> +		return HAS_BIGJOINER(display) ||
>> +		       HAS_UNCOMPRESSED_JOINER(display);
>> +	case 4:
>> +		return HAS_ULTRAJOINER(display);
>> +	default:
>> +		return false;
>> +	}
>> +}
>> +
>>   static enum drm_mode_status
>>   intel_dp_mode_valid(struct drm_connector *_connector,
>>   		    const struct drm_display_mode *mode)
>> @@ -1445,13 +1462,13 @@ intel_dp_mode_valid(struct drm_connector *_connector,
>>   	const struct drm_display_mode *fixed_mode;
>>   	int target_clock = mode->clock;
>>   	int max_rate, mode_rate, max_lanes, max_link_clock;
>> -	int max_dotclk = display->cdclk.max_dotclk_freq;
>>   	u16 dsc_max_compressed_bpp = 0;
>>   	u8 dsc_slice_count = 0;
>>   	enum drm_mode_status status;
>>   	bool dsc = false;
>>   	int num_joined_pipes;
>>   	int link_bpp_x16;
>> +	int num_pipes;
>>   
>>   	status = intel_cpu_transcoder_mode_valid(display, mode);
>>   	if (status != MODE_OK)
>> @@ -1488,67 +1505,98 @@ intel_dp_mode_valid(struct drm_connector *_connector,
>>   					   target_clock, mode->hdisplay,
>>   					   link_bpp_x16, 0);
>>   
>> -	num_joined_pipes = intel_dp_num_joined_pipes(intel_dp, connector,
>> -						     mode->hdisplay, target_clock);
>> -	max_dotclk *= num_joined_pipes;
>> -
>> -	if (target_clock > max_dotclk)
>> -		return MODE_CLOCK_HIGH;
>> -
>> -	status = intel_pfit_mode_valid(display, mode, output_format, num_joined_pipes);
>> -	if (status != MODE_OK)
>> -		return status;
>> -
>> -	if (intel_dp_has_dsc(connector)) {
>> -		int pipe_bpp;
>> -
>> -		/*
>> -		 * TBD pass the connector BPC,
>> -		 * for now U8_MAX so that max BPC on that platform would be picked
>> -		 */
>> -		pipe_bpp = intel_dp_dsc_compute_max_bpp(connector, U8_MAX);
>> -
>> -		/*
>> -		 * Output bpp is stored in 6.4 format so right shift by 4 to get the
>> -		 * integer value since we support only integer values of bpp.
>> -		 */
>> -		if (intel_dp_is_edp(intel_dp)) {
>> -			dsc_max_compressed_bpp =
>> -				drm_edp_dsc_sink_output_bpp(connector->dp.dsc_dpcd) >> 4;
>> -
>> -			dsc_slice_count =
>> -				intel_dp_dsc_get_slice_count(connector,
>> -							     target_clock,
>> -							     mode->hdisplay,
>> -							     num_joined_pipes);
>> -
>> -			dsc = dsc_max_compressed_bpp && dsc_slice_count;
>> -		} else if (drm_dp_sink_supports_fec(connector->dp.fec_capability)) {
>> -			unsigned long bw_overhead_flags = 0;
>> -
>> -			if (!drm_dp_is_uhbr_rate(max_link_clock))
>> -				bw_overhead_flags |= DRM_DP_BW_OVERHEAD_FEC;
>> -
>> -			dsc = intel_dp_mode_valid_with_dsc(connector,
>> -							   max_link_clock, max_lanes,
>> -							   target_clock, mode->hdisplay,
>> -							   num_joined_pipes,
>> -							   output_format, pipe_bpp,
>> -							   bw_overhead_flags);
>> +	/*
>> +	 * We cannot determine the required pipe‑join count before knowing whether
>> +	 * DSC is needed, nor can we determine DSC need without knowing the pipe
>> +	 * count.
>> +	 * Because of this dependency cycle, the only correct approach is to iterate
>> +	 * over candidate pipe counts and evaluate each combination.
>> +	 */
>> +	for (num_pipes = 0; num_pipes < I915_MAX_PIPES; num_pipes++) {
>> +		int max_dotclk = display->cdclk.max_dotclk_freq;
>> +
>> +		status = MODE_CLOCK_HIGH;
>> +
>> +		if (num_pipes == 0) {
>> +			if (!connector->force_joined_pipes)
>> +				continue;
>> +			num_joined_pipes = connector->force_joined_pipes;
>> +		} else {
>> +			num_joined_pipes = num_pipes;
>> +		}
> The current way is to try connector->force_joined_pipes and fail the
> commit if that doesn't work. Here you'd change that to fall back trying
> non-forced pipe-joined configs in that case. If that's needed (not sure
> if that's a good idea, since then the user wouldn't know which case
> succeeded or failed), it should be a separate change. Here it could be
> simply an if (forced_joined_pipes && num_pipes != forced_joined_pipes)
> continue and then use num_pipes instead of num_joined_pipes later in the
> loop.


Hmm Yeah the initial thought process was to try force joiner thing 
first, if succeed well and good, if not we do our usual thing.

But I see your point. I think we can just fail the commit if forced 
joiner doesn't work.

This will also help simplify the loop and will allow to have an iterator 
macro as you have mentioned in the later patch.


>
>> +
>> +		if (!intel_dp_can_join(display, num_joined_pipes))
>> +			continue;
>> +
>> +		if (mode->hdisplay > num_joined_pipes * intel_dp_max_hdisplay_per_pipe(display))
>> +			continue;
>> +
>> +		status = intel_pfit_mode_valid(display, mode, output_format, num_joined_pipes);
>> +		if (status != MODE_OK)
>> +			continue;
>> +
>> +		if (intel_dp_has_dsc(connector)) {
>> +			int pipe_bpp;
>> +
>> +			/*
>> +			 * TBD pass the connector BPC,
>> +			 * for now U8_MAX so that max BPC on that platform would be picked
>> +			 */
>> +			pipe_bpp = intel_dp_dsc_compute_max_bpp(connector, U8_MAX);
>> +
>> +			/*
>> +			 * Output bpp is stored in 6.4 format so right shift by 4 to get the
>> +			 * integer value since we support only integer values of bpp.
>> +			 */
>> +			if (intel_dp_is_edp(intel_dp)) {
>> +				dsc_max_compressed_bpp =
>> +					drm_edp_dsc_sink_output_bpp(connector->dp.dsc_dpcd) >> 4;
>> +
>> +				dsc_slice_count =
>> +					intel_dp_dsc_get_slice_count(connector,
>> +								     target_clock,
>> +								     mode->hdisplay,
>> +								     num_joined_pipes);
>> +
>> +				dsc = dsc_max_compressed_bpp && dsc_slice_count;
>> +			} else if (drm_dp_sink_supports_fec(connector->dp.fec_capability)) {
>> +				unsigned long bw_overhead_flags = 0;
>> +
>> +				if (!drm_dp_is_uhbr_rate(max_link_clock))
>> +					bw_overhead_flags |= DRM_DP_BW_OVERHEAD_FEC;
>> +
>> +				dsc = intel_dp_mode_valid_with_dsc(connector,
>> +								   max_link_clock, max_lanes,
>> +								   target_clock, mode->hdisplay,
>> +								   num_joined_pipes,
>> +								   output_format, pipe_bpp,
>> +								   bw_overhead_flags);
>> +			}
>> +		}
>> +
>> +		if (intel_dp_joiner_needs_dsc(display, num_joined_pipes) && !dsc)
>> +			continue;
>> +
>> +		if (mode_rate > max_rate && !dsc)
>> +			continue;
>> +
>> +		status = intel_mode_valid_max_plane_size(display, mode, num_joined_pipes);
>> +		if (status != MODE_OK)
>> +			continue;
>> +
>> +		max_dotclk *= num_joined_pipes;
>> +
>> +		if (target_clock <= max_dotclk) {
>> +			status = MODE_OK;
> status stays MODE_OK if target_clock > max_dotclk.

Oh yes.. will fix this.


>
>> +			break;
>>   		}
>>   	}
>>   
>> -	if (intel_dp_joiner_needs_dsc(display, num_joined_pipes) && !dsc)
>> -		return MODE_CLOCK_HIGH;
>> -
>> -	status = intel_mode_valid_max_plane_size(display, mode, num_joined_pipes);
>>   	if (status != MODE_OK)
>>   		return status;
>>   
>> -	if (mode_rate > max_rate && !dsc)
>> -		return MODE_CLOCK_HIGH;
>> -
>>   	return intel_dp_mode_valid_downstream(connector, mode, target_clock);
>> +
> Extra w/s.

Will drop this extra line.


Thanks & Regards,

Ankit

>>   }
>>   
>>   bool intel_dp_source_supports_tps3(struct intel_display *display)
>> -- 
>> 2.45.2
>>
