Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id D1C1EABD2F1
	for <lists+intel-gfx@lfdr.de>; Tue, 20 May 2025 11:14:06 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id A4F0210E4EB;
	Tue, 20 May 2025 09:14:04 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="dj9lESb2";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.18])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 968CA10E4DD;
 Tue, 20 May 2025 09:14:02 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1747732442; x=1779268442;
 h=message-id:date:subject:to:references:from:in-reply-to:
 content-transfer-encoding:mime-version;
 bh=hJfPuFLbXrIoGfnVm5Wd2nTzyE3Ow4Lgmoz+zAuPXSQ=;
 b=dj9lESb2YhkPxasUWqmz3MCQFz7G5Gmy+1OajtYXnPS3vWjkatE3lBLh
 4WX0+Q7GS5HiIsg+OO2RnT6g2Az9ERkSoOkSk6olOnP7IuJNqbI6uNym+
 wXtwEp4bmgKC/aYOh3hUNHFcro/LCW76CzcZmv8llCuVZr+ctJLJNmuz4
 FfWG3Ua0tra+vtNsMItee0yL/7fJVPVxL3rZfRU5NOyZaYyqU4S7PlJt9
 TFdV/dSmLmfPa5faDP3dCK5Jfv70x6MHhUmZsNc30MFMPVgTfPUK2XOxe
 YhBidjZCp9mx59BgYxErGd3L7zF4/MLKpepCT/qfV604czS0lS35Yi8x1 w==;
X-CSE-ConnectionGUID: BaXIXFAsTz2u6STNZckYgA==
X-CSE-MsgGUID: Ml8WxXzjQbG2hNPhchcTnQ==
X-IronPort-AV: E=McAfee;i="6700,10204,11438"; a="48908983"
X-IronPort-AV: E=Sophos;i="6.15,302,1739865600"; d="scan'208";a="48908983"
Received: from orviesa010.jf.intel.com ([10.64.159.150])
 by fmvoesa112.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 20 May 2025 02:14:02 -0700
X-CSE-ConnectionGUID: DLAGPkSsQ9Kpt+GcjUe0gQ==
X-CSE-MsgGUID: f1g2lQObQiOEK0ekqoAbcg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.15,302,1739865600"; d="scan'208";a="139474675"
Received: from orsmsx901.amr.corp.intel.com ([10.22.229.23])
 by orviesa010.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 20 May 2025 02:14:02 -0700
Received: from ORSMSX901.amr.corp.intel.com (10.22.229.23) by
 ORSMSX901.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1544.25; Tue, 20 May 2025 02:14:01 -0700
Received: from ORSEDG601.ED.cps.intel.com (10.7.248.6) by
 ORSMSX901.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1544.25 via Frontend Transport; Tue, 20 May 2025 02:14:01 -0700
Received: from NAM12-MW2-obe.outbound.protection.outlook.com (104.47.66.41) by
 edgegateway.intel.com (134.134.137.102) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.55; Tue, 20 May 2025 02:14:01 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=oE5gGmnNttpO67xUCQM5MEOBR0j+dNQp6NWKBSWTghZ+1k8vvO8lvRYVdL7Leo8asOWaFlKo5cfIPckZgJK0Srf86du0FgjEX6G1v/+yqHoqrdIBD0zECy0vjZulEcn90v35JSoQo/cYob87nWEwdonTlOKDnch5Y66+8UFpID67HFnuo1JIocC/O7LaiXVqIXvWUTwSpW+764mEtYdkPNrwsNhrJQ1b9wm08uwcnEeNDdXx2jbGugVrGKl5x/Y5Hy7S2Tv/c/fJNP/8gDSYLLy8YM5i/xeguy1NoKx90TI8T4eKn7HJTYjopR08QH/zyvRB00lmTh6QAZ2EeXobZw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=lUKEe1pLpY6J1SWZodK8u8WyKzPxQp6Z+ZRs42RdIik=;
 b=gcD9zH7k/5F8FKYQSVh10EnDD55YhsdX+nPpIYMrTDhvGYh+5aKcGLVWVmMKN+iupxHOveb+uCnO0dwngWVxINlT6RRY0BNwWZJFN9KS7n+BVCVqof9f8tOLhU7ksvOmkemRVgLZGJ5MDYecAmGnn/E7/+S4Fod9iwEofDaHustJ2fmQjeF917x3iHtEXQb8Qx1qedWgQuljgKH6llGkBpLOjGAYOrVcxVAJcWfquu1WlGNJ0qw3RLA31xv5lbAK4qHAD/5LISoFpMIa8ehOjJK2YRtceSYF0altPv1DUIzIY+tY31TfXbloAT3+BgpBKsqDt6qsV6zrKRnkLGrHww==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from DM4PR11MB5341.namprd11.prod.outlook.com (2603:10b6:5:390::22)
 by PH7PR11MB6553.namprd11.prod.outlook.com (2603:10b6:510:1a7::13) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.8746.30; Tue, 20 May
 2025 09:13:57 +0000
Received: from DM4PR11MB5341.namprd11.prod.outlook.com
 ([fe80::397:7566:d626:e839]) by DM4PR11MB5341.namprd11.prod.outlook.com
 ([fe80::397:7566:d626:e839%3]) with mapi id 15.20.8746.030; Tue, 20 May 2025
 09:13:57 +0000
Message-ID: <f5f19cba-1e96-4cc0-8ba4-99614948e51d@intel.com>
Date: Tue, 20 May 2025 14:43:47 +0530
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH 11/11] drm/i915/psr: Do not disable Panel Replay in case
 VRR is enabled
To: =?UTF-8?Q?Jouni_H=C3=B6gander?= <jouni.hogander@intel.com>,
 <intel-gfx@lists.freedesktop.org>, <intel-xe@lists.freedesktop.org>
References: <20250502085902.154740-1-jouni.hogander@intel.com>
 <20250502085902.154740-12-jouni.hogander@intel.com>
Content-Language: en-US
From: "Nautiyal, Ankit K" <ankit.k.nautiyal@intel.com>
In-Reply-To: <20250502085902.154740-12-jouni.hogander@intel.com>
Content-Type: text/plain; charset="UTF-8"; format=flowed
Content-Transfer-Encoding: 8bit
X-ClientProxiedBy: MA0PR01CA0049.INDPRD01.PROD.OUTLOOK.COM
 (2603:1096:a01:ac::10) To DM4PR11MB5341.namprd11.prod.outlook.com
 (2603:10b6:5:390::22)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: DM4PR11MB5341:EE_|PH7PR11MB6553:EE_
X-MS-Office365-Filtering-Correlation-Id: e07e7df6-c9ba-4452-e0b4-08dd977ea657
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|376014|1800799024|366016;
X-Microsoft-Antispam-Message-Info: =?utf-8?B?MVV2VFZNWW95ZjZwbkRUNEtodlNQdHpKZml2ZGxhcC8vMHk0d0NpN3RwRlBK?=
 =?utf-8?B?bkNMMlB5S3FCVm4wUlpMdXNxbUI5OWNaUjd6ZnBZWitaR0RJL2E1WExiWnlk?=
 =?utf-8?B?RERJaEE1N2RvNStPS3YyNjhCOXJnVlZVYWZZRGgyeWQrWHJ3d0FNNzZ6Z3RO?=
 =?utf-8?B?aGQ4Y3pldUdWOUhleTF5Mnc2V0lEWTVuOFlQVUtNNVZ4RElPYzg0UG92L3Jk?=
 =?utf-8?B?eldsblc3aEE4SWNWVzRieFF6NEorTjJpaFlNVndRL3JBZVkvMitCZHpYNGJL?=
 =?utf-8?B?YmRGcmRRTnN6MVVJT0ZrQmNwZG9paG5VUk14eUFsQlcyMU5paTIrVTBOMWFQ?=
 =?utf-8?B?VjRrM093aVZaL1NCUzgwaTlBekJlZ0FhejR0S1lXZnlTcFhNTURCQzFiSzI3?=
 =?utf-8?B?VXozOThrTG1FVVFoVlo4QXBwSVoyeGlneXlJYWJtTjFMWVF6SVZmeDZHZ3BG?=
 =?utf-8?B?bzlQRHZNR3pGbEoweXVhMER6RmM2WU5FKzVVTUtaSnQ2Qk0wdVQ5L3lNTDA0?=
 =?utf-8?B?TDVCQ3dlNjlMNytDVUE2OXZ3Ris4SnRab3FzZWhoWmRWUC9TQlNKUEJJSnhl?=
 =?utf-8?B?MXFvQ1RldjE5akVoQWIwUnpRaVFHeEJSY0EwWlNnL2xCb0pFV1hCOHdUa3hM?=
 =?utf-8?B?Q2o5QmhZRlF0eER5Rk82My81N1hqcjhIWSt5WlRXTS95ek5BMjg2alQ3Wk5G?=
 =?utf-8?B?UEx6MXF1VkJOY3RLdS93VWUrOUFhYU9qdU85cll5MDJtNng0em1LSW41Yzg1?=
 =?utf-8?B?ZjQwMDZmMkJLNll5VXl4aVRWbytITFpheGN1OHZ0d0s2aU4rWW9NWGp2c1NF?=
 =?utf-8?B?Y005YTFTNHZEVkttemZ0bk1lV1dtOVVlZnJzbkRPbnQyc1p1L1pZSFFRZjU3?=
 =?utf-8?B?c2ZZdU5hRVZaMTI1SUVQRHNvVGdMKzZkNE1SeEk5ek8wUlplOWUra0xMbjdH?=
 =?utf-8?B?cU0xSG84eXJla1BRSmxaMjVkT0ptdmZsTUx4OFoxbityVnJqT2RYKzUyNWhC?=
 =?utf-8?B?TEt6NGhlYjdlWnhtSkk3cHp6bnR0TTVNUGVaZkZQQVV5T09HMmxIU1BFN2V0?=
 =?utf-8?B?K1dvZU40MHpkRG1oSGhqcDh0R0JROVlWcGh2aUM1NmhiYVRZVE8zT01FWlFR?=
 =?utf-8?B?Vzk5dS9icXZRZ3ZIZnVRekx4aFZZQk83R3RrNk4rM1R4MXJkQUtuQVFrRG5j?=
 =?utf-8?B?WTNRVDBrZjVibXZsUW51MFpmMWR0YXdodVR5WXluR1hzL3ZxZzNvWWhCZ283?=
 =?utf-8?B?ZmUzdlA3YmNHcWdNUG9QSHNBcGtYT3NJOFVvaW1XWE5UQWgvSDcvc1lmU1FR?=
 =?utf-8?B?TXVFTGJmQjhlQ0JRNTIxVXMyM242RlhJVjNkd0tUZEpFSXd6YWxabVZYeUxN?=
 =?utf-8?B?ZHQyUVBNUS90QVVrcXRIYUpIdUsvdnBIdG9CUGpVdkFBZ2pMaUZkbGJ2RWhD?=
 =?utf-8?B?akZITTBhd21WOCtDeHRmVW9QaUFQbXREdTdDZWIrbkx0Wk4wQjVlMStGUmt5?=
 =?utf-8?B?TzVlbUtZWU9wZXdsWjcrRjlDTm8wSXptUTg5aUJ0OHkrT1BXV1hreTRWY3Vq?=
 =?utf-8?B?aXdabmo2WFNiUkIwVnFFaXI2bXBRbWoyeFBlSlFadUtmWUVCLzlMY1B4M1Zr?=
 =?utf-8?B?SEVsU3hIRXpUdzV4bXp1QUFSazJDMTQ1dngwRG1VdVNrRXYwRGFxanRwb3Rw?=
 =?utf-8?B?ZnZ0TUJPRG5mY3U0YjkwME1BbkdZWm1KbUptRlZCOFVhUjB2elo3dmlYU0J5?=
 =?utf-8?B?cTZXVy81Q1l2SWFlcTM5ZkNKU3pxN01ueDZwREcyMU5MbHZxMzVsQS9RNlln?=
 =?utf-8?B?YWZIMWYxVTlHeEhuaHM2bUJJVlhSbGcwUFR1NUVjRWM1OWM2UWlOTmoxSHl4?=
 =?utf-8?B?U3hIYWhuc1FNYkdKdU5SWnB5WWlTWFNvTFFiOWRabzRlbkRpMWlkWFd3Rklr?=
 =?utf-8?Q?X1Sofk4XFFU=3D?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM4PR11MB5341.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(376014)(1800799024)(366016); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?clBObFE2ZmZFZmNRcE5WaXdmcmxqcS94eXA2N2NzdFhuMExHZCtQVUJKcXI4?=
 =?utf-8?B?bm0zVWVVZkp0RkhJN0RRTnhxNzJ0VDNqZkFmQXRGaFJKbVRVb1JaNVI1SGlL?=
 =?utf-8?B?UEtUTU5jODhmREoyUEFYMGFSNnJmd0oxa0FibzhwN1ZQUzI4Q2RIYk5xdE9G?=
 =?utf-8?B?M0cwQU9BQ3ZTQUQwYmNYbTlKN21pRkpub3pIc1crdDFBRnY3d1hUUEFQK3FI?=
 =?utf-8?B?alV2b3NnSXJ2S1ZoS2syRGNhVzJTakdDVHZNSjNKMEZUbDZ6eTdyRi9iZjdm?=
 =?utf-8?B?NXhFbnB2TmY4MlZyL0RMTHlCakRYbGl1RGVYVGdBdlZHNlRKSkZtd2tFemxM?=
 =?utf-8?B?NnREMXZ1UEZhQ0dZR1E5dTNodFNHcE5uM3p3S0hkVXBkU1E0eFhQb1VTbVBt?=
 =?utf-8?B?RU1sZGVqOGZWOUV1MmtYaGUxSmg4ZUlVMEFYdEt4SmREMkhBWFF2dHRBVDVW?=
 =?utf-8?B?UWhocXUySklpSzRSUDJqRVdLQyt2bVZVV05NQVZCSXc4SlNSNkExYldyaWFi?=
 =?utf-8?B?NVNxU1pZSjNYQkpxQ2ZZYWhDMkgrVm8wZHhZVStPRGZIK2tKY2wyQis1SENU?=
 =?utf-8?B?RVd5cktpTmI0VnBLUmlJdXNvL3Q4MDZyMG1qRkdKbm54VFA5TFduMmxpZ1pV?=
 =?utf-8?B?OXV3NU9lMFdONXVJMnlZSTcrSVYzZVNPNTJVRUZlVEx5dHJVVUdzUG1JSW5q?=
 =?utf-8?B?bmVnWW5pcWdsYmdxS3hyV1dpUGI2b2RQMzR0MnkzMHlYSHIyNElCS3hnUHJS?=
 =?utf-8?B?NW9TSnFOMVJBbVExZWp2UWlYZ2lGM1kxN2grTkFVVUM3VnFaYnRrMGxlR2Uz?=
 =?utf-8?B?OTBLWGdVRmZocDdSa2tNb1BIYkRtbUtyTG5YU1AwMEFYK0ZjR0Z3elJOZ1BR?=
 =?utf-8?B?VE9FTkIzbmtGZGpkZjFvUDIwZVFlQ2ZaYkNDNU0rM1FWbkk2WEU1SUVabC9s?=
 =?utf-8?B?ZXd2WjFzM0hPL0NiVEc1dE5lVm1GcjJhc1lMcmZMa0xHcmdPNWNJRVo0OGoy?=
 =?utf-8?B?cWk2SXB1Y0J1VVBNZlkzQ1J1dFlodStrSHp0VG5oTVVxNUtFcGRidXVzaWNM?=
 =?utf-8?B?emR5Qm51dzdTYWxPMWtSU01KWHl3M044UnFleW5ZcVJaSENrN3duMXF2K1Y5?=
 =?utf-8?B?czlGUjNtUzN0azNGTVp4Q3NZTktQR1l1YVZsUkh4QWJiQUVGNWhrSUdPdlh3?=
 =?utf-8?B?Rk8wV1JLcExFcTdlV0VORXZ1eUFnWmczSjBMZmtrR1lVOXpzSVF2UU1UcFJ6?=
 =?utf-8?B?V0FndnB4dCtmQ1lZZGIyMm9MMFdMUVk1eDE4c0dicUtiQ1BxSGc5ZTFYWDE0?=
 =?utf-8?B?NTdlQjVQMndRWEJGaFdTZ00rK2dhNlQ1MkZMcEZwMHFmbDRRdzJ6NUpBNlA0?=
 =?utf-8?B?MHZkdTJNYVVWNVp0Z09oMjl2QmlkK3kxSktsNnNsUGdJM3d4RXR4THdwTmcx?=
 =?utf-8?B?SUVLOXRvZW0rWGk0MmgzVm0zdTlXcm16YXRXanROdFp5VHBnaFZOZTRuU2lW?=
 =?utf-8?B?WVhyUTNhWWY5MWxQMXpYTmpFZXlxMXovRVRUSzd5NStWV01EeGpHMS9hVll1?=
 =?utf-8?B?ZUxpT1hIbkFRNVdnYTViRDZBRlc4T09HZU1IY29sU21mTFRHZUo3TVE1bG1o?=
 =?utf-8?B?UFFodFhuamNCUXlBbEFxemxZMlZNdTZ0eXYybndaMEg2TnZ1UXg0RThvNVZN?=
 =?utf-8?B?bHpJMG5rU25oR1lUei80eDRoc1FlRTg0R3IyNWc3U1dQbVdwOU5kRUt6bWd6?=
 =?utf-8?B?SjJtWTdxSlp5QXJMRkVzWTdJM212TlNIREoxTU5EQmY4djBSazFyQ0Y4VU9H?=
 =?utf-8?B?bFZ2WFFRMEp1aDNUVGhNb1cyb1p2VHBRWERjYnp0N1hScFZxVnFGZ1lSa1dR?=
 =?utf-8?B?enQvdmZxeWRGVnNqNTI3Vm5KZ0tsNFJTVTVYbTlPUy8rOUF0VWpHNmxOTXVX?=
 =?utf-8?B?MGR5R3lETnVaUUFHbXA5dkZQVWJ1YTJvYmMwbVZIaG02T3JyMUhQaWZRTXVv?=
 =?utf-8?B?YUtrUUxZaVRENGNDZVFJdXhGbHAvVmtEU3p3YjFFZjA3a2k2dm5veWpnWWhn?=
 =?utf-8?B?K2U1akU2dkRFdC9nZUhLSmhpSGNubE1JUHJNUGtTb3RENkI1YzFjNmlnK3Zi?=
 =?utf-8?B?Ykdzbkc4cmF4dVBGTmNLMzA4Vzl0RjUxVkNFQlRXMGhneUduRitBRXNTTW8y?=
 =?utf-8?B?Q3c9PQ==?=
X-MS-Exchange-CrossTenant-Network-Message-Id: e07e7df6-c9ba-4452-e0b4-08dd977ea657
X-MS-Exchange-CrossTenant-AuthSource: DM4PR11MB5341.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 20 May 2025 09:13:57.2910 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: ARIxFFIdXzssMbPdS28Nx4f3TP2YybBpTZ3i9DRlUBMAXAGi15iGYCnYDUA5c32puOVGrMvpNEaDMKLPHY9oEPgXrS8D6xT05CAZoFty9h0=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: PH7PR11MB6553
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


On 5/2/2025 2:29 PM, Jouni Högander wrote:
> This patch is allowing Panel Replay with VRR. All VRR modes are supposed to

Lets drop `patch` as it will no longer will remain patch after commit.


> work with Panel Replay.
>
> Bspec: 68920, 68925
> Signed-off-by: Jouni Högander <jouni.hogander@intel.com>

LGTM.

Reviewed-by: Ankit Nautiyal <ankit.k.nautiyal@intel.com>

> ---
>   drivers/gpu/drm/i915/display/intel_psr.c | 12 ++++++------
>   1 file changed, 6 insertions(+), 6 deletions(-)
>
> diff --git a/drivers/gpu/drm/i915/display/intel_psr.c b/drivers/gpu/drm/i915/display/intel_psr.c
> index 8d8fe1c34479d..3657dd5800f9a 100644
> --- a/drivers/gpu/drm/i915/display/intel_psr.c
> +++ b/drivers/gpu/drm/i915/display/intel_psr.c
> @@ -1572,6 +1572,12 @@ static bool _psr_compute_config(struct intel_dp *intel_dp,
>   	if (!CAN_PSR(intel_dp))
>   		return false;
>   
> +	/*
> +	 * Currently PSR doesn't work reliably with VRR enabled.
> +	 */
> +	if (crtc_state->vrr.enable)
> +		return false;
> +
>   	entry_setup_frames = intel_psr_entry_setup_frames(intel_dp, adjusted_mode);
>   
>   	if (entry_setup_frames >= 0) {
> @@ -1689,12 +1695,6 @@ void intel_psr_compute_config(struct intel_dp *intel_dp,
>   		return;
>   	}
>   
> -	/*
> -	 * Currently PSR/PR doesn't work reliably with VRR enabled.
> -	 */
> -	if (crtc_state->vrr.enable)
> -		return;
> -
>   	crtc_state->has_panel_replay = _panel_replay_compute_config(intel_dp,
>   								    crtc_state,
>   								    conn_state);
