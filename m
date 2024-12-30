Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 77F889FE709
	for <lists+intel-gfx@lfdr.de>; Mon, 30 Dec 2024 15:26:29 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 1E5C610E4F1;
	Mon, 30 Dec 2024 14:26:28 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="bx9Sjzng";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.9])
 by gabe.freedesktop.org (Postfix) with ESMTPS id ACF7F10E0A2
 for <intel-gfx@lists.freedesktop.org>; Mon, 30 Dec 2024 14:26:26 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1735568786; x=1767104786;
 h=date:from:to:cc:subject:message-id:references:
 in-reply-to:mime-version;
 bh=BCE55m44auGrYhelinLim3q7SRsStsfPl3kVD7Yj5hE=;
 b=bx9SjzngvxcKYEN4JImTK89oHUU7pRIq0RVEnoeUz2MJ2MXCMXyUDKrl
 EFrcsmu6qr2Fc6VZzDKCipOUILKktVDldL7Xj2tbGqIB9q9qRdiizldxk
 ZhHqDpQKRKkVRkZnEV5i+ec4ndEkxUG/ujYPZAmADCnyg6id7GhF53cxk
 WTbEoNfHLf3mb/mxReoJBDFagJgXYEE9Tma4J66LJ6RPXAHxTS+JQhp8u
 MmJR9c6OUAOX9CL5+WV2q8CcfaIz6FwfihWNc33JIQgrYHFMxCp0CfTNx
 MCIhlgWAWtQihyKl6dhkEo1DDaegs7fEJ7zRgnjgr96YkK9kjUfWtexkz g==;
X-CSE-ConnectionGUID: S+VmV+OSSzaRMTa6UrNClA==
X-CSE-MsgGUID: tsf9fQQTQka3r61RezLGmg==
X-IronPort-AV: E=McAfee;i="6700,10204,11301"; a="58320115"
X-IronPort-AV: E=Sophos;i="6.12,276,1728975600"; d="scan'208";a="58320115"
Received: from orviesa002.jf.intel.com ([10.64.159.142])
 by orvoesa101.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 30 Dec 2024 06:26:26 -0800
X-CSE-ConnectionGUID: imy3o8PxQ+OxnzFGlFxCMQ==
X-CSE-MsgGUID: +dYaU54AQvusjebTN1MoGw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.12,276,1728975600"; d="scan'208";a="131654955"
Received: from orsmsx603.amr.corp.intel.com ([10.22.229.16])
 by orviesa002.jf.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 30 Dec 2024 06:26:26 -0800
Received: from orsmsx601.amr.corp.intel.com (10.22.229.14) by
 ORSMSX603.amr.corp.intel.com (10.22.229.16) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.44; Mon, 30 Dec 2024 06:26:26 -0800
Received: from orsedg603.ED.cps.intel.com (10.7.248.4) by
 orsmsx601.amr.corp.intel.com (10.22.229.14) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.44 via Frontend Transport; Mon, 30 Dec 2024 06:26:26 -0800
Received: from NAM10-DM6-obe.outbound.protection.outlook.com (104.47.58.48) by
 edgegateway.intel.com (134.134.137.100) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.44; Mon, 30 Dec 2024 06:26:25 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=YfV0sIJQ6dwfHblLwFgU/nzzj+aMBR5c1eHyftotZ8Gs/EcWO8EnABYLib3HM78OLdiL/4HC1JqbdmDRRhAf53kt6BHaxf/fEzqWWa2D611GwNBLKeRaxrimOmCI5Rb591OgXXNQhujDtKdA1y8VxQ7jbSYYMjZ430Fa6QbG4wAQTkTJOtA++a9447FSr0UGgiUUqjzySa0cFxmLcxWWi9WD6xmr4agYpVavqB53qcFPmjIgrY5T95K1y78Dioh3hWuIHsHtmBNrY1Sq+llFxknxVftjr1iUglpWhD94EvpvnpijqsxYdykGFi/T5OzvhFnXdjN4na+1Zv+Q2JqTUg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=lFm9Ny3L7Xqy+gJvgCydEGFGp93UK9motEv8Yq8s3e4=;
 b=ErezvF8tZ36zEunCLn6DDbIchiTtkSdvR46rEaNMeGMKBLK7/U9mk+1PscnwxPy59xTRPVFac8Su88WQzHGpnVgYmWpBRliQoE6rNJv5zsvCJgxC48BVpCtobvTWh6tjFQH7oxgp6FZVbm000ud680Pr9kxZFeFawZua+QKf7/OCjkDs0mFP8/rKJ+kh+5aDZwxgCAR+7To00FhZ1rcDWiYpLTnCxI2Q1Ns/DMbp0QxkROtGWRk5UGGVuWu+57Z2O2lnwapLPD1AEG19r6xatHpNG4qMcwFHXwfJiqhZbe0w1oOcUDZFB9FEESgGtRINa8CbsWn9QMX8UyaCQyPfEA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from CO1PR11MB5057.namprd11.prod.outlook.com (2603:10b6:303:6c::15)
 by SJ0PR11MB5919.namprd11.prod.outlook.com (2603:10b6:a03:42d::15)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.8293.18; Mon, 30 Dec
 2024 14:26:20 +0000
Received: from CO1PR11MB5057.namprd11.prod.outlook.com
 ([fe80::4610:6d6c:9af6:2548]) by CO1PR11MB5057.namprd11.prod.outlook.com
 ([fe80::4610:6d6c:9af6:2548%4]) with mapi id 15.20.8293.000; Mon, 30 Dec 2024
 14:26:20 +0000
Date: Mon, 30 Dec 2024 14:26:15 +0000
From: Krzysztof Karas <krzysztof.karas@intel.com>
To: <apoorva.singh@intel.com>
CC: <intel-gfx@lists.freedesktop.org>
Subject: Re: [PATCH] drm/i915/gt: Prevent uninitialized pointer reads
Message-ID: <udbmdtt36ycptlrcfncye7k44untrocfjfrws2mvhee7rcb7cd@iphnltlmrjma>
"Organization: Intel Technology Poland sp. z o.o. - ul. Slowackiego 173,
 80-298 Gdansk - KRS 101882 - NIP 957-07-52-316"
References: <20241227112920.1547592-1-apoorva.singh@intel.com>
Content-Type: text/plain; charset="utf-8"
Content-Disposition: inline
In-Reply-To: <20241227112920.1547592-1-apoorva.singh@intel.com>
X-ClientProxiedBy: DU2P250CA0017.EURP250.PROD.OUTLOOK.COM
 (2603:10a6:10:231::22) To CO1PR11MB5057.namprd11.prod.outlook.com
 (2603:10b6:303:6c::15)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: CO1PR11MB5057:EE_|SJ0PR11MB5919:EE_
X-MS-Office365-Filtering-Correlation-Id: 57f6a87b-f8df-4881-bb84-08dd28ddede3
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|366016|376014|1800799024|27256017;
X-Microsoft-Antispam-Message-Info: =?utf-8?B?RWp6YUFPakVDczNoMVdXakhsQ1BxNWVUUEkzUVJaVzRmSVN4TjZrcElucStS?=
 =?utf-8?B?WmZiOWVFMGFuVnhsL2puZGVFcjl4NFVUQnZCSDRycVU0ZWJuYmY3VzV4V2ZJ?=
 =?utf-8?B?aDVzTkpCcHUzeXN0QWM1Q29iKzBGMU4rUGQzamJQOHlmS09MUFo2YVoycmR6?=
 =?utf-8?B?MktPTVRhdmpZZ0xqZEEwNGszYktlbEM5aFNub2hXTHl0Ry8zNTdzU2laOVMw?=
 =?utf-8?B?M1RZdDJLTHRoNUVTenhnWXpCWlBMcmp1N1QzUkZxTG5UdVJSOWs3R1NxMGhU?=
 =?utf-8?B?ajNjV1crSTcwRS9wcEJyTDJaRGNuVXAzdEsyOVdWSDJuaXYyYlBwb29nZXEv?=
 =?utf-8?B?UU44K2oxOE9pTmV5MW95MExmYUUyVXFLeVJneko4eWxjVXkzb1ZPckZmMS9k?=
 =?utf-8?B?OXRLc2hJdG1RWUVCTVdOMVBXa2IxTXBIY2lTSWd1V1cyeDB3WWN3RXQwSUpq?=
 =?utf-8?B?WWhXbkNDZHFRS0hiRFljbVdIMzErTENaT2pUUy9jYlVtQk9MeldoeDlsaG4y?=
 =?utf-8?B?cWo3djZPRXQrbU5PZE9VVDh3WjNQNWlQN0EwVWl2NTh4N0Zzd3JnQkxKUlhV?=
 =?utf-8?B?dVVKUnRlVzZRUFhyVzJVUFNwMVVzSEt4VThZYVpFZ1ptU2plU242UVNyTnJr?=
 =?utf-8?B?enlJNko0TVpqM1B0Tlp6L2w4MkRuQUxrQ2tDNHJTeldXVU1NcFBkMkR2cmZD?=
 =?utf-8?B?N3Bid0Y0aVhSTjJDVzlac1F6L3BUN0xkVFdRK0RuK2hCdWFtdkFicDI2TWZ4?=
 =?utf-8?B?VFkxVGk3MnQ0VFA1TW5VREJDMnF2ZzIzM0liVmRHQ3JpRXlzUUpha0lkVmhP?=
 =?utf-8?B?dzhFYjZUN01EZjlCcFFVTmZwNDE3cWN6ZGpuSE9ETjhpOUhRa1Z2bitHUTJ4?=
 =?utf-8?B?eVlqM011Z0dsaHNEUlMzemhxUWlTNUtwRk9TUklubVByMzZSSXJhNGJzempR?=
 =?utf-8?B?dnVlWHhseUdacXlpSXVCY3NaRCtPV2pHTWVTUWdSWkd2emlvTFNwRHZwQWZx?=
 =?utf-8?B?Nk5CaExXck1oTmJaZXpQQjUwdFg5ZDNnUElrYWNrVEJkMW9wWnc0c0ROWXRE?=
 =?utf-8?B?OU5PSTU0QkpqZWJQMnNhdjNySnhCb2FMWFptWWVubzFRWDZWdGlhc04rSzhQ?=
 =?utf-8?B?LzRYY01rWFVOWnBRVGJLYnRBNElQWktMSzgweTQ1TjJkK0pWVU5ZSW8wUkl5?=
 =?utf-8?B?cGZkRWVRWGdHMGEwM1FhNjRGUUI2Z0V2N3BvRHc3RGMrYVo5cEpweVNGTDN1?=
 =?utf-8?B?Q2RzK2o5Y3RZc2s3WldkZVhQWEhhQmMyaDdaK1ZnSEhkWWhEUEdmMlBwbzlF?=
 =?utf-8?B?anlIdVlsMjhBSGRLUHZ5dFF4ZlhXM0dHR1RXT3JneVRSQjBmNzR3WDU1bFFP?=
 =?utf-8?B?SmExRDZtOWF5N1E4SEU5K2lwbS92MGw5MmlCZURubHhQREsxU3NQT2tjVzdW?=
 =?utf-8?B?N0RyWEVISDkxcVpadlgyNWpVMmJkYUxQZlpXTjN6OVVuN20yUmlKaFFHL3lD?=
 =?utf-8?B?QzNrdFpVdHArdGlxYkRxNXVUWllNcHFqcm9NQ1NoT0FCUkFpNTVNYmFDTXBr?=
 =?utf-8?B?WVNsR1YrTDROdS92TGN2dTBGcFdFa2FTNWlvRytVVU92YmdGcDM1bS9XNDRD?=
 =?utf-8?B?K3RyMFpRSWs2OFEydUpKWk5rZWIvdkZ3NmFCWW9jODN3R2RHNElwZ3dXRk52?=
 =?utf-8?B?ZXkvcEoyS3JuMW1NdGs2UTZDQ2hKcjhDZXc3b2JZSEZNY0xubXZicHRaV1oy?=
 =?utf-8?B?aVg4MHJkR1BtYTZLSm0rd2RUZVdHbDZUOXB2dCtMN01taFBGOURlRzRndllM?=
 =?utf-8?B?M1NKRW9iVGhRa3ZTallUbi8wcVlYSkswQkdJcUdEaG5jN3VKOUxQUk5Zd3la?=
 =?utf-8?B?emxJU2JLbWdTM1hOSit3NGxmSzBIZ1RkcG9tMEk4YjJ3RHlQeG0wSUVocnNU?=
 =?utf-8?Q?BrVqV2wr0gM=3D?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:CO1PR11MB5057.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(366016)(376014)(1800799024)(27256017); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?Smtrbmp2MkJRUURtRTN6Znk0Y3BpM2lscE9LOHFZRGlJZmRxWXdvdmlDbDF0?=
 =?utf-8?B?b1Y4eDVyUUp0Qm0ybU9hbiswVDFXZXJJZ3FHdEsyZFZBNk9JYjh3TVhkMGNs?=
 =?utf-8?B?RytwbDI4cUN5SGROMDVkRU90em84VVRtbW8rRU1Lb2tBQk45azRZZWdXMFBC?=
 =?utf-8?B?bktrakhIUFBUR29YeUlBcmRQbTc1c04rdTFjT0RaVTk4TXRnWjdkWmpsMytS?=
 =?utf-8?B?Nk1FTkd0Vmw2SDY2Mmw1YUpkamtOOUtyV2VKNzhYTVJkWG5wQkNLbHFFVGxr?=
 =?utf-8?B?TCtMbng5U3hFWENjclVGci9JbE5jeWE4SkVPL3ZUdkZJZDIxSk9yWW91K2Jo?=
 =?utf-8?B?OHRLWHRKbWEySmRHYzZhaVVpdkZEN3JCcmgrVGgySk4rR0pTa3pHKzlGU0pp?=
 =?utf-8?B?RnNKME5pczJpTm9oeXRRVmdtY1JFNm1NaWJGSkplUmpRYkZBU1BraW1aODZo?=
 =?utf-8?B?UXl3TDYrZnJ3Z1FCZkNyd0RZL3Q1Um9oZnJkSEVjdzhmdkhDMm5ZczVQSWxF?=
 =?utf-8?B?bDZlSTB5aStYdGZDUUM3TFBFckFLNDVuMFZrckJqdGp1bkZwNElZNHUrZnNo?=
 =?utf-8?B?LzB5bVNmTHZpRGRzVHV2T2ZnTUpkaFBCYmhRcEhkbk5ucHVmVWJUVFcrNlpB?=
 =?utf-8?B?cmRieFNPc21LRHpySW0vdWZoeHFZSHVKWDlDVjM3cGFRcTdpdmJJRUYrNHVF?=
 =?utf-8?B?dk5yNEtVT3lHemc1b1pHNnNKdkg3c2QzMk9KVERjVkRJU0pNWEdXbS9pNjNV?=
 =?utf-8?B?RzlMVjFORXorVElTd2pGRnp1TUVIUW5vSkF5TUQ5MUozRGpBL01oMDhEN2hq?=
 =?utf-8?B?T3FtUS95U3NRMzZETFhKTlQ5T3BpUFhaT04zZm8rZmxTKzJMQnJCVTBsMFZB?=
 =?utf-8?B?VEFpT3F2V1ZoQmh3SnJlaFRaTDVRK2o3aWRzLzl2bGRmdXovNWx3TzdZOVUx?=
 =?utf-8?B?VVE0bmNWY1djUDVPRnhZVEd2U2pzQndxRldrT3FoQ2YwRXgwWmRpejZDNE1T?=
 =?utf-8?B?ZXlJVlRGWTMzZmIyR2tGT3JGbVd4K3VRVThwbk5EQnpqcmY2STBrTHhxdzFJ?=
 =?utf-8?B?N3ZzekdER1J0UDN1cFZXUFdiVDZFWXMzUENUbTNFNGdIVHAyNXhKR3RxK21E?=
 =?utf-8?B?WWhKVVhhU1B0TUVBWi90a1lhc05SWmlKSGF0Nk5RUUloU2RHOGVGU2FKQU1q?=
 =?utf-8?B?RXBlYUtRMndoV2FsOTg3TTF2NW9EM2RwN3dHNmtHU1hHVFFjNzc4d0R1Nmtk?=
 =?utf-8?B?S3FIUE92WFV0Tk5ubzh4MW13Y0pvMVFkZytpWEJxS1Bwa2YxVkEyZG5XdFB0?=
 =?utf-8?B?eG9veVJ5Um9YSlBSSFNwbjBxL2dwNExqTE9SY1A1cUQ0cUF1Q2tZRVd0Mnlp?=
 =?utf-8?B?VDd2amppVGg4bUlzd1NMZmI3cTdBZmxMRWpOK1k1R3grRmZVd2NJaWRZcEl4?=
 =?utf-8?B?YUtVcUd5eTlVUGJuekl4TlpTdjlsL3drNVcvLzdzcVcyWjBEakhjYldYYUR5?=
 =?utf-8?B?TS9CZlRCbVptSkpIVkVQRzVBdG5ZL1JJTzdHTDRyS3kyRHdOMDZmaDhjT1g5?=
 =?utf-8?B?Sjc2NVNVYzJjQVlwS1VOMFVkaFFjc0xIVDM0R2xxZGVmQ1c3bVFMMmR6ZWZi?=
 =?utf-8?B?SGVuOGNrQU5xejJtQTJPS0J4OGR5M3NSTXRma2hwOWs4UVhzenFlV003cmdF?=
 =?utf-8?B?ckt4NnpkMmpSYWpjdS9ibHA5Tm8xRFdZOXJUdDNuRzhPRXNKS0FHaGU1Mzgy?=
 =?utf-8?B?UDExeDBFTGt2VWxYT2tTZmxDb0VCb2JaTFRYRUFJWlhDWTFra0dScE9USmFX?=
 =?utf-8?B?NVBhOEhuL1dpM1dZajJ2YVMwdnJSdU5CVEUrNTQ5YUJLdkcwdThxKzFYME02?=
 =?utf-8?B?SHk1a3RIbHlRSHdTQ0ZSQ09lZ1h2cWgvMHVuQW5mZDJGMmVmYmlFMGJ2RjdC?=
 =?utf-8?B?OWhFQ1lXdnJHWDNBMW8zY1BDOTNHeTdrcFF5RU5Waml3eEJUc3QwWGpXZ1ZM?=
 =?utf-8?B?MTR5T1U5S003c0ZVNkdXQkFkMTdyOFhROXdCbU5NMU1rb2JLOFZNUGVPZmc5?=
 =?utf-8?B?SS9QYWJhQlBOWFQrS0pDbHJEdzBFWFZsWUNCbytscE5XdnpKenlDRUNKK09s?=
 =?utf-8?B?QThKOVVLM0IrN1VtU3g0OUM2TXNnZlpVR1AvVDFRUFZJTHF0aTJjaTFOWnQw?=
 =?utf-8?B?VWc9PQ==?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 57f6a87b-f8df-4881-bb84-08dd28ddede3
X-MS-Exchange-CrossTenant-AuthSource: CO1PR11MB5057.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 30 Dec 2024 14:26:20.1257 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: YNw1l8Uv8ZojYLp3/NGDFQbSkwn4Ycwn9clrc3W2rs6AonAbH6xRMKJg4diZPni3t+rFrf0JDRHWnWSF+nmLVbrd2+0dipj7HuYRmEe5Khs=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SJ0PR11MB5919
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

Hi Apoorva,

> From: Apoorva Singh <apoorva.singh@intel.com>
> 
> Initialize rq to NULL to prevent uninitialized pointer reads.
> 
> Signed-off-by: Apoorva Singh <apoorva.singh@intel.com>
> ---
>  drivers/gpu/drm/i915/gt/selftest_migrate.c | 2 +-
>  1 file changed, 1 insertion(+), 1 deletion(-)
> 
> diff --git a/drivers/gpu/drm/i915/gt/selftest_migrate.c b/drivers/gpu/drm/i915/gt/selftest_migrate.c
> index ca460cee4f8b..1bf7b88d9a9d 100644
> --- a/drivers/gpu/drm/i915/gt/selftest_migrate.c
> +++ b/drivers/gpu/drm/i915/gt/selftest_migrate.c
> @@ -262,7 +262,7 @@ static int clear(struct intel_migrate *migrate,
>  {
>  	struct drm_i915_private *i915 = migrate->context->engine->i915;
>  	struct drm_i915_gem_object *obj;
> -	struct i915_request *rq;
> +	struct i915_request *rq = NULL;
>  	struct i915_gem_ww_ctx ww;
>  	u32 *vaddr, val = 0;
>  	bool ccs_cap = false;
> -- 
> 2.34.1

Looks good to me

Reviewed-by: Krzysztof Karas <krzysztof.karas@intel.com>

Krzysztof

