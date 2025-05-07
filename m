Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 9530FAADD25
	for <lists+intel-gfx@lfdr.de>; Wed,  7 May 2025 13:19:49 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 11ECA10E187;
	Wed,  7 May 2025 11:19:48 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="dDCcDZVe";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.15])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 4123010E187
 for <intel-gfx@lists.freedesktop.org>; Wed,  7 May 2025 11:19:46 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1746616786; x=1778152786;
 h=content-transfer-encoding:in-reply-to:references:subject:
 from:cc:to:date:message-id:mime-version;
 bh=6aoXY1mfCvkiEfuniZTisqYsiXnITSKsPlwE15LKrDc=;
 b=dDCcDZVevCzfi9T3DzxvPfgC+5ShImJCIhJ8HVfhxPz/DkDbgBzeOxQT
 s6nHYtfjfOgcmv8936jv1nENnesg2HSDuUMHyohwhxSwx77q86fFO2wGW
 oUXbGbnX5zKLnFgqEeDEUnXZ1gnlp8/rvG3Yz1DGOonB0LCYAAWgc7v5c
 HG4FK2LBLeBbjXY6rTPrIutm8hkE7Esbo8JOwXqPEh+d66sNUUtQ82el2
 efYKAiPlClSocnyBM6D7Iq57Hip0vdcLvk5KSEL+v9sWjpsTdOSWWkezs
 SzEkhT5ayCgdzIwyonx6wNgiTNVZj1PMvIRKH5B+Rd0VBLIp77/If+b62 A==;
X-CSE-ConnectionGUID: 7CDaZ6BpRlq6EHxoggGP9A==
X-CSE-MsgGUID: 9cgj0F/FT5GUYuYLHJrTlg==
X-IronPort-AV: E=McAfee;i="6700,10204,11425"; a="48477805"
X-IronPort-AV: E=Sophos;i="6.15,269,1739865600"; d="scan'208";a="48477805"
Received: from orviesa003.jf.intel.com ([10.64.159.143])
 by fmvoesa109.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 07 May 2025 04:19:36 -0700
X-CSE-ConnectionGUID: Gd+kRTzITi+p+H88DYXE/w==
X-CSE-MsgGUID: TuD5mnZNSBSX3+yYz8DVEg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.15,269,1739865600"; d="scan'208";a="140673877"
Received: from orsmsx903.amr.corp.intel.com ([10.22.229.25])
 by orviesa003.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 07 May 2025 04:19:36 -0700
Received: from ORSMSX901.amr.corp.intel.com (10.22.229.23) by
 ORSMSX903.amr.corp.intel.com (10.22.229.25) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1544.14; Wed, 7 May 2025 04:19:35 -0700
Received: from orsedg603.ED.cps.intel.com (10.7.248.4) by
 ORSMSX901.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1544.14 via Frontend Transport; Wed, 7 May 2025 04:19:35 -0700
Received: from NAM11-DM6-obe.outbound.protection.outlook.com (104.47.57.175)
 by edgegateway.intel.com (134.134.137.100) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.44; Wed, 7 May 2025 04:19:35 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=Z4J4JGExE8BKDRIwf5g3gpIlb/v9pQ0TONq90D3BVDaIUwCuHqRfsUV/o9hEcysu+M4J6IyBy/bbyrPxCI/fEHcBu33hTy+JBS97sJDeZNhvitXvI6GSX7w7j5vVJ6rsEUVSmUDI3b3QB6oGEwH/A441fUUsyBSW2/rPoah8ZgO0964wUcwQuqDNaT6ceZavabnIFMfeE5EUyjqyUxW8ZzIKT/3mpfBkKWXLnbG9Fh36qHxEtj8s/8v4FyHoSP9lmkzuaHXJ/6E9GUqPfBtuCwQ2Xm7X8ZzPn79fGOdRcNGrgDqtgKN4y9E2sI8Lv6NR+aUehoSr/5ouA7gF0zcALA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=5YiWsr2v9KRerJIgXuPJB7bTCSxA3laKEvXZDj7/xKI=;
 b=ckNkec73XT3pNrN0kEbS4lmcdwE8+aPQHer9sFoK7sH4LgJNF+dimInXr1TwvW4PAx7l1GI2q8F53xJFWzCCX0yTuk8OkxGV1I+U0Dnh8dbKirpzDd9+iM6jzRDZXGfXJCNj+GduH02c5M5STYe2SOot5LTZfRUF1Eyr81bz9plJuAf1f+sLxFstnVtNfyVxU7oYPOsGk+gLxch/bKPJI6pmboAEjqkJqaDGopcQF0KckCfKujUVRn86m9NxGzRRnyY1R1G1HZzy0Ih25p9HOBOGhtbrqhgQ9/T2rVuK6kFASslK4D/qbYBs1nAjrQN/R5W3tyFL45Jg0fiA3RxY7w==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from PH8PR11MB8287.namprd11.prod.outlook.com (2603:10b6:510:1c7::14)
 by IA4PR11MB9323.namprd11.prod.outlook.com (2603:10b6:208:565::16)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.8699.24; Wed, 7 May
 2025 11:18:48 +0000
Received: from PH8PR11MB8287.namprd11.prod.outlook.com
 ([fe80::7e8b:2e5:8ce4:2350]) by PH8PR11MB8287.namprd11.prod.outlook.com
 ([fe80::7e8b:2e5:8ce4:2350%4]) with mapi id 15.20.8699.022; Wed, 7 May 2025
 11:18:48 +0000
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: quoted-printable
In-Reply-To: <20250507083136.1987023-1-jani.nikula@intel.com>
References: <20250507083136.1987023-1-jani.nikula@intel.com>
Subject: Re: [PATCH] drm/i915/rps: fix stale reference to i915->irq_lock
From: Gustavo Sousa <gustavo.sousa@intel.com>
CC: <jani.nikula@intel.com>
To: Jani Nikula <jani.nikula@intel.com>, <intel-gfx@lists.freedesktop.org>
Date: Wed, 7 May 2025 08:18:43 -0300
Message-ID: <174661672327.2473.16493793651989710991@intel.com>
User-Agent: alot/0.12.dev27+gd21c920b07eb
X-ClientProxiedBy: SJ0PR03CA0080.namprd03.prod.outlook.com
 (2603:10b6:a03:331::25) To PH8PR11MB8287.namprd11.prod.outlook.com
 (2603:10b6:510:1c7::14)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: PH8PR11MB8287:EE_|IA4PR11MB9323:EE_
X-MS-Office365-Filtering-Correlation-Id: 08312f2d-46fc-4a00-37cb-08dd8d58f05a
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|1800799024|376014|366016;
X-Microsoft-Antispam-Message-Info: =?utf-8?B?eFIvenVmaGNhR1ppZkxENVZZRVIrUyt1Z2g4NTRMVEZWZmdtZDBqUkcrL29X?=
 =?utf-8?B?NWVHcjdPcUF1enIwWW9OSk1QM2ozVkVUQm9FK0Q3cUhGbVE0VlVFS3RnR1RN?=
 =?utf-8?B?OHJNNEltbGk0NUpRUkptdFFTWityZldQWldOLzJnMHRxWDRrTy9aUy80YkIw?=
 =?utf-8?B?bVRDbGlsRms5dGhIaHV2NkdTNnhldzRzb0ZRUnh5SnBlUUJ5SUpEajJqSGlR?=
 =?utf-8?B?d0svMXlSbndmMlg2UXpVVm1jYldyOEdnQTcyeFZScnNVaDhtd1BNcFpVZnJM?=
 =?utf-8?B?NjBhL3Z4MDkxd1MzcXF4c1hwZzZzdnpBZmlkd0cxQ0JMWWVYa05JTHFDTjUz?=
 =?utf-8?B?cGdsc2k4YithbllIc2kvVEpJN09zOEpJQ3N3K2xPRjRINTRBUW9xNjljWkdq?=
 =?utf-8?B?dThYVU5GVDkxQnVJQmU4MVY4UnQ1R2JxcXpYS1R1S3VRek0wQ25MbUpQTjNv?=
 =?utf-8?B?b2FpV1JTemd0cTMyV3p3OUdIOWVEZ3JUOUF3d3RLeTNwbi9xa0N0SzNpYStH?=
 =?utf-8?B?Ykk5bUJ5NVBGWktVaG11ZUs4U0Q0Tk85T2RDcml5cUNPbHFJQ0lrOGxnSzRz?=
 =?utf-8?B?UUtyUmR6RlNGSCtsYjdVNlFkYWlHWlE1QUJnMXprcy9kUHJWQkhSOU4zaUtR?=
 =?utf-8?B?NjE3TzNrV2RGRWYxNG5WMmZiM3ZkN3hXeTQ4Yml2b1ROUm9XcmZlcktWbUVC?=
 =?utf-8?B?WVNUTlNSVCtDS1l4NWFkVHNkQmdmZEcvK2RtcUFtK0srN0ZiNkFRODNLQ0dU?=
 =?utf-8?B?WEkrQUdmQ1lJT3FEZVRONStPZU45R1FaZVdIakFWemNjVkRuWFBpNXAxaEJk?=
 =?utf-8?B?WFRhdXRvbDhMeG9pRzVZTUVVQ0IrVUNrcytseFVpd3I5VXJHcHVGclpzUUVw?=
 =?utf-8?B?Qjg2SXdYYlNYcUFMeFVsaklNZUhiaVNPQ09FTVhmNWhNcG5XQlpORUtNNGh2?=
 =?utf-8?B?eExLdzlWVGx0NU96MlVWU2g4VnRsTSt4RXU4OTFXUUtmVGtGTGFFd0N1R0dr?=
 =?utf-8?B?QkdhMEhUcGJzcUwvWldIUFdLZjBDWVpVWHRCVFE4Z0xLZmpYMzFBQi82VzVu?=
 =?utf-8?B?eWZKcVJXUnIyZE5ZTUNkMXZYemVQcGtiYjlsQ1FYSUxESXh5Q21rZEZ0WkFs?=
 =?utf-8?B?QldXYld0YnRTdFNicFZWWFk1QWRTeVZoUGluNWxZa0l6aDFiT1AxUk1uUjVw?=
 =?utf-8?B?NTZ0a0I5MGVabkRFdUtJNnNwbjB3bWZhTE1lZXdIY2dCK0loYXRUVzQzL0V6?=
 =?utf-8?B?Z2FGOTl2TjFNMVVucmxPMDMvdmJxS0JFRHYySm5TU2tEMDZzZXVjSk8vdHMr?=
 =?utf-8?B?a0xUY0J2Qkt6UlpyQUJvM3JWaTJjS0ZabVFITUxGTXVubVM2WTdqUDR3QzRG?=
 =?utf-8?B?b3V5QVdVY0dFaUhIb29kREJCOCtOOTZLWE5paGxhRUdoWGM3Mk00VW1mT2RC?=
 =?utf-8?B?WTRXeW1QQVBBbmFvcUdnQmJzb25lNXlyNFcrY052MkNvTW1EdDhCUFpmdGor?=
 =?utf-8?B?a3pxNjdxOTAxb2JmT09CaUNiQys0a3FqU1ZQVnArckFoV3dZS2ZJOVp4K29H?=
 =?utf-8?B?Q0ZhS29QSitSNmRobEdzZHNWUVBUTmNVRDFHWUhnelBUeklyZEdGMldabXFn?=
 =?utf-8?B?bDRQUW1OeldHdDVnalR2RUVCSWdnRHJYZFBsanVlZEFOcHZjdUw4bndTd0dt?=
 =?utf-8?B?RFpTYkxjVDBHVkNMaXlLVXlYaUF6RHdZT05LTVVTTTh6UTNyQ2c4MDdhWXpD?=
 =?utf-8?B?bVBORDUrN3ZkRDNlcG12eHN5QmJiS2xkZS9EMmUzRjVzN3g4ZjFnNjlsUE9s?=
 =?utf-8?B?dXZXOHBvcHZFMFB4NjdZS0RvTElpaGlRcmtRVEhhcUhFcmhhTjhLSFFqSWh0?=
 =?utf-8?B?UjVlVnFKRjVrdzR6K3B1ZHpPL3YyTm12aHkwK3duemFDb29qQlU1TFFmZWtl?=
 =?utf-8?Q?covsE+zFKY8=3D?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:PH8PR11MB8287.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(1800799024)(376014)(366016); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?bHcraGg4L2thdmpIU3gzWGRJYUhMemhtaXJ1Z1hzMHFKVnI4RFRLSzZDSkw4?=
 =?utf-8?B?ejZ0N2Jvc3JycVlEZittaVo4N3hhRjhyVk5NQVZaTmZqNjJLZlB0ZHQrUVBq?=
 =?utf-8?B?TnZRN1hPTlk1cGZuODVRcmRzQW9JRVQwY2FDb09DNTU2b2QyWUgvQ3RwTDZo?=
 =?utf-8?B?eGY2eFdnSGRic1ZvaTVyMnFWMHlRb0ZVV1ltNythWklrckU3WmRybU9pQ1Nv?=
 =?utf-8?B?MTRZRFFNVXdiSFVwZ1FaaGhKQlNMNlhrWkFzOC94cWxDZ0J0TFp2N21vMUdG?=
 =?utf-8?B?SVZ0K0FtOTlxVkt4ZlQ4UU5scGNJVFp3d0V3V1pBeXR4N1E3a2tmNEdDNUVw?=
 =?utf-8?B?dlFjT01tWmRkam1LMDRxaTJ0RjhXMTAvcldONjhsTjFqODV5cHJuSGVRZDdr?=
 =?utf-8?B?Wll3VDRwNUw1TWdQWUVyQUZiWnZ6SXpGSTNuaitrRnNjSG9kK2U3d1AxU2JZ?=
 =?utf-8?B?TzdKMDJYa2hybmV2eGQ0ZjVnb3JYcENXdE1zZGhReXJ3Y3dMcUJEbmtDTVBy?=
 =?utf-8?B?eW84bjBtNUlNbHpja1dMVEZpVXhlY0FhQnBaZ3ArVW5YeWUyMndzd1diMkl3?=
 =?utf-8?B?a3JjbmRRaXAzOGpFMFdIMWt0dnl6TWc0b1V6eGFMbVhVQ20zNEh2dDRyMWN0?=
 =?utf-8?B?QjlwUDYwekYzb01JdFhDd0FwMC8vTll2QjlLaldSb3hTWkV2YnFwZVRJbEln?=
 =?utf-8?B?R0dIQTgzWUZxdFVjQjFwUlgwRnRyMHdxeEhIeDNkRzZHSForNE5CV3R5OTNa?=
 =?utf-8?B?dzNkNTVGZ1RiSEV4bFVOT0NHUitHUzUrc1p5TEU2cDdweVBDZElPRnRSYkFE?=
 =?utf-8?B?a1dITzB6bHF1ZlJzM0FSbXJSOWJ5MHZuM0RzOFl3U2crVzVVamloNzk0dzdh?=
 =?utf-8?B?dzloUmowRkQweGJySXFXOU9kYWp4MW9SSVU1aGc5NGhKWHlvbG81VDBCOXhC?=
 =?utf-8?B?Y2puaXhZNnZ1dkVqbzRaaEFJMXF6VFBnN3hpZUpCTWttRGhSa3pKdkh2SW5t?=
 =?utf-8?B?enBpT204VFVoemxPME5BQXIzZ2FqcTZPMEk1NGpmZCtYRzUzUVJGN0kzWkxS?=
 =?utf-8?B?aHBpa243aXRSbnozZGpLR1VpWXh5a3VXelQ2VjZZT09XdGNsWU1qajlLVkJk?=
 =?utf-8?B?RmRqMnlwcXFpVjNCY3hkRERPSysyckJOejNZZHZVcTVVMGx6L0NBMVdyNzZ2?=
 =?utf-8?B?NnFlNi80ZCtORjNMMlJ6blB0V2NhdC8rVzdsRENVRnRic3R0L2ZoRVBKMFVN?=
 =?utf-8?B?VEtiNWd0SUxZdldFcVk0N1JlQmhKUmlLOHpEaFVmK0wrQlRNRWowQnNYQ0R2?=
 =?utf-8?B?dkZsYnhqNjg4WHpId3V2K3BISVBMcHJ1bUgwckNVYUtBdURDYXFQTnVIZmNI?=
 =?utf-8?B?T0RiWTBUS2p5MVNrUXBUR2E1LzZqaHVTdkpVODFzcVNadGRCWU1zT0hMWEc5?=
 =?utf-8?B?WFpnVHhZbXI2b3kyamx3OElKcVR5cExKRHpjWXVOcko2dTVrcEJrOEV0T2h3?=
 =?utf-8?B?QUlVVW5idFJGQnZZaFM3UDNRTXhNTXBKV1Q3R1dGbkJmaGtqYmRkTFNZRmt0?=
 =?utf-8?B?M2oyWU9UbWcyS2lidDdsSGZpZEpWVWZPaW5XRjZQZDJkREg2VHRFM1R3MUtI?=
 =?utf-8?B?TU9ab1ZNSEJUVTJDSUJZR2xoSkNGcmJRU2FRaCtzd1NJT1E0VTk3ZUx3R0Y2?=
 =?utf-8?B?SHBYQ1RUNmRqRHV4UDc5UHBPU3B5Snpub0FuVU9QOWdZbGRSMDc3V1U2L1NR?=
 =?utf-8?B?eFJUK1NLZTBHNVMxRUpqVHEvajhZRnE0NFBIQ2VXcit6dDFxSVpqNUV1U3Jv?=
 =?utf-8?B?RjNaeEJKeExabjRhZEt6OGt1REtJdldiaTBYUE5KZUUxSmdmOGlSZmRxbExK?=
 =?utf-8?B?M1NtSXJONm5RSVlDQkZyMjFZOE5DWUFHYnNTdEhJa05yZ1phY2FrcHhEbSt3?=
 =?utf-8?B?S3lCWktOUUkxWERCQncxa0xHR3JXVlV5b1V0TjUzZVE1Zm1WbEpUb2o1MUZl?=
 =?utf-8?B?SlFOQkIzQmMyUXBTSllZOUNFR3U3UGJJR1oxS1JjUWFEdzI3UElTK3IvQmE4?=
 =?utf-8?B?N0N5a24zWS9vRDlSMGMvZG1jbkpwMHZUNTArd3haM1FRMlJPSXFERFhzeElR?=
 =?utf-8?B?d1hDZVZvMGNIOTVuTmFnandmMVNtd3c5QXlzeStzaHdBa0JTRFBoMHZCRWhE?=
 =?utf-8?B?K2c9PQ==?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 08312f2d-46fc-4a00-37cb-08dd8d58f05a
X-MS-Exchange-CrossTenant-AuthSource: PH8PR11MB8287.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 07 May 2025 11:18:48.6750 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: anT/pXvCcAC0UxGK38qOkVwj9TpETgkr7IRVLCsfFFVqO2X4w0g35nZl3AzYe3ao0YPiBN5GuIPOho1FekrkLA==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: IA4PR11MB9323
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

Quoting Jani Nikula (2025-05-07 05:31:36-03:00)
>The RPS code has been switched from using i915->irq_lock to gt->irq_lock
>years ago in commit d762043f7ab1 ("drm/i915: Extract GT powermanagement
>interrupt handling"). Fix the stale comment referencing i915->irq_lock,
>which has also ceased to exist.
>
>Reported-by: Gustavo Sousa <gustavo.sousa@intel.com>
>Closes: https://lore.kernel.org/r/174656703321.1401.8627403371256302933@in=
tel.com
>Signed-off-by: Jani Nikula <jani.nikula@intel.com>

Reviewed-by: Gustavo Sousa <gustavo.sousa@intel.com>

>---
> drivers/gpu/drm/i915/gt/intel_rps_types.h | 2 +-
> 1 file changed, 1 insertion(+), 1 deletion(-)
>
>diff --git a/drivers/gpu/drm/i915/gt/intel_rps_types.h b/drivers/gpu/drm/i=
915/gt/intel_rps_types.h
>index 5135b90a2a40..ece445109305 100644
>--- a/drivers/gpu/drm/i915/gt/intel_rps_types.h
>+++ b/drivers/gpu/drm/i915/gt/intel_rps_types.h
>@@ -57,7 +57,7 @@ struct intel_rps {
>=20
>         /*
>          * work, interrupts_enabled and pm_iir are protected by
>-         * i915->irq_lock
>+         * gt->irq_lock
>          */
>         struct timer_list timer;
>         struct work_struct work;
>--=20
>2.39.5
>
