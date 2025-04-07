Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id C679CA7D8CB
	for <lists+intel-gfx@lfdr.de>; Mon,  7 Apr 2025 10:58:29 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 5099E10E3E0;
	Mon,  7 Apr 2025 08:58:28 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="nMZj9qbF";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.14])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 3C9C410E3E0
 for <intel-gfx@lists.freedesktop.org>; Mon,  7 Apr 2025 08:58:26 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1744016307; x=1775552307;
 h=message-id:date:subject:to:cc:references:from:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=cU2KIbRzk193YDg6YHFCdyt2j3Bn34e6MOWYa9XUdBI=;
 b=nMZj9qbFzbKmY2dqNH24oom4Ex/QQ7Ul6IMyieN/Rn8zt8W+Mgl1UrAH
 oytrIuqMMWP2eGWAzPLP5vNpFWRvqx7q7JmR2FVQsboqR1m4GnDgNvR0G
 NH+HZtehqspW3uGjPuyJZMOs/EUR62yqao8ulyHClM33gP74EVSadtkBa
 Uk4zDlZSoUJGnRi6WNOCxSLXScxy//D/UZKx/XcNSHAq2Elg/QiXdTuOl
 K3s60L0AjxjAg6VcVWB5I8SH6Hf5x1rZDEbKQEMtoNZGlZgh+mxaNZtsN
 i+AFglGdYnB5Eam4YmJbPGWntZMbMeqb4J/+JytZmBQyXv7CXF6FRxfJH A==;
X-CSE-ConnectionGUID: tWUwO7quRmmJyqOCelmW0Q==
X-CSE-MsgGUID: FZ3Q53TSTduYD5ZL9z/TLw==
X-IronPort-AV: E=McAfee;i="6700,10204,11396"; a="49182952"
X-IronPort-AV: E=Sophos;i="6.15,193,1739865600"; d="scan'208";a="49182952"
Received: from fmviesa004.fm.intel.com ([10.60.135.144])
 by orvoesa106.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 07 Apr 2025 01:58:26 -0700
X-CSE-ConnectionGUID: 544eGHS7QMWZHA6G0L7vDQ==
X-CSE-MsgGUID: x9Z3r9ybTrq0fQAcWGge3A==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.15,193,1739865600"; d="scan'208";a="133045315"
Received: from orsmsx901.amr.corp.intel.com ([10.22.229.23])
 by fmviesa004.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 07 Apr 2025 01:58:25 -0700
Received: from ORSMSX901.amr.corp.intel.com (10.22.229.23) by
 ORSMSX901.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1544.14; Mon, 7 Apr 2025 01:58:24 -0700
Received: from ORSEDG602.ED.cps.intel.com (10.7.248.7) by
 ORSMSX901.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1544.14 via Frontend Transport; Mon, 7 Apr 2025 01:58:24 -0700
Received: from NAM12-BN8-obe.outbound.protection.outlook.com (104.47.55.174)
 by edgegateway.intel.com (134.134.137.103) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.44; Mon, 7 Apr 2025 01:58:24 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=yffYrdHABnVh3lNl9XnRrU2BvZJyEV3RhDk9g4FkDsxJQeaugMPryGk9fAXIUM3XLWzWqbKmETRL94a2kRdX4tR39qUB6j9PFdgYfRIttL2d6X2rmDLCpvLX2hSTiQDqKF5LyxLpBMszrk9VsgC2MPpmR9CJITGWPiDQbJK9zXo4zsqfNXd0Drn65B80oo2ynhokTwIFXaIwM8TCvvG7Rho6h7jWtQL0kQyHhhJIKRmsKVHB8NmQUmXkVNVdjW4k/8kiUdXf5mKG557D4a+Q2LNus363MbXtIKgKBQgR9hPKbdVnK6noVR0h/y7SLP/Py6HjeURflo9xkRcN17lAuQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=lICSvE9oHr40/TDNsRStjOWB0IwUvGJMioh0cPdilF8=;
 b=OVB7+MB0AT3Q57AfI6gUYvqS2JgFizaJ+7iri+yJNUZILN6BZPCyLLOnhy+hnphnHmYw/B32L4XPtjBlVYfwPkAvUp6FG+Y6smDUc10Jan3Uc01vhYyGrVZurOR/fWWkcmqU5X91E7b9OpFRPhJWO52YWBidNItNYQuN49M/1R0ww2/83SP4f/HWW1KrkTFBaazvydnFfq6plmkTMaKvmnuFBppfqr0yLIxntOoUvjvRquQ5gsA/8EL01xNThUIdJNzrekeMXBkD2gpqOsAekwAJ4Y4UAYXwb1ZByCzxpMWYeHTRwTqIuihDwPdHjoxGlbjJL3TrlVBznjGwoSENHw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from DM4PR11MB5341.namprd11.prod.outlook.com (2603:10b6:5:390::22)
 by DS7PR11MB7807.namprd11.prod.outlook.com (2603:10b6:8:e3::8) with Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.8606.34; Mon, 7 Apr 2025 08:58:22 +0000
Received: from DM4PR11MB5341.namprd11.prod.outlook.com
 ([fe80::397:7566:d626:e839]) by DM4PR11MB5341.namprd11.prod.outlook.com
 ([fe80::397:7566:d626:e839%5]) with mapi id 15.20.8606.033; Mon, 7 Apr 2025
 08:58:22 +0000
Message-ID: <f993964d-1234-48f8-9b56-520d0f93d9fa@intel.com>
Date: Mon, 7 Apr 2025 14:28:14 +0530
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH] drm/i915/vrr: Add vrr.vsync_{start,end} in
 vrr_params_changed
To: =?UTF-8?B?VmlsbGUgU3lyasOkbMOk?= <ville.syrjala@linux.intel.com>
CC: <intel-gfx@lists.freedesktop.org>, <jani.nikula@linux.intel.com>,
 <mitulkumar.ajitkumar.golani@intel.com>, <arun.r.murthy@intel.com>,
 <stable@vger.kernel.org>
References: <20250404080540.2059511-1-ankit.k.nautiyal@intel.com>
 <Z-_83ng-1KTFl_50@intel.com>
Content-Language: en-US
From: "Nautiyal, Ankit K" <ankit.k.nautiyal@intel.com>
In-Reply-To: <Z-_83ng-1KTFl_50@intel.com>
Content-Type: text/plain; charset="UTF-8"; format=flowed
Content-Transfer-Encoding: 8bit
X-ClientProxiedBy: MA0PR01CA0026.INDPRD01.PROD.OUTLOOK.COM
 (2603:1096:a01:b8::14) To DM4PR11MB5341.namprd11.prod.outlook.com
 (2603:10b6:5:390::22)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: DM4PR11MB5341:EE_|DS7PR11MB7807:EE_
X-MS-Office365-Filtering-Correlation-Id: 612b1632-05a2-4031-0b43-08dd75b25950
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|1800799024|366016|376014;
X-Microsoft-Antispam-Message-Info: =?utf-8?B?TDE4c3NUcEhNMWpqZEVlTXVmQnIyQkhDbERSVnlNWDhVQ0RKTzRWSXV6WDVo?=
 =?utf-8?B?WU9IalFRVk15aVMvVjhqMHZTeXBDVUxpZ2xIeWpNYlJhMWZhOWc0Zm14aElS?=
 =?utf-8?B?ZnRNNUtUa29GdWNWMlE3elBnQUtkbWRXSEFGSDhFYkRmNWp4SDBnK0VqQndU?=
 =?utf-8?B?VlpUaHpENmo2WTI5cmwrdXZHbGFHUFRBRGZVUmxON0xISnhkaVRxa09yRTBm?=
 =?utf-8?B?aitDMXZFRWtDZkxtc2k0U3d5OHhoS1RaVlUzMC80UXNIdjc4dEhCWDBXa09n?=
 =?utf-8?B?M2J2UGdSZCtXRW5MQnVLdWFVQm1IWSt5dXZvdmtCcFJQejlRekNUOEpFU1FB?=
 =?utf-8?B?Y2MxZnpmSG5hdDRCeVlYL3B2RkwxbmtHU215Q3FSOGlaWVVDUFBlMWVYazdq?=
 =?utf-8?B?T1BPOGVubFZrZkcyalV0WGdoMFYxRzl0eGlVOXBKUUgzYnJKcmNvM1l6RVUx?=
 =?utf-8?B?b043VWRaKzFYUjd5L0dvdGROSksrTVZYT2RqUGZDRUpnaEJ3WmplcTRpc045?=
 =?utf-8?B?WmNPRms3dmYwQ05BWnkzZGlCUGpCVVE0ZmxZeW9sdGRZcHlyTzdmUTRjdDBV?=
 =?utf-8?B?aldieklqOGdMNHNxbDJFUFZFSUl0eUMwOVc3cmhhOWJqd3RlYjdkdGdWc3dO?=
 =?utf-8?B?NmcxNFpoenQvV3lxMlorVzFJUG5hbTN1QjBiM0JjL3RHMkdSd0NTcXRQVVB4?=
 =?utf-8?B?aFhuTUhnMXkxS1VrQ3gvSGN5SDhNSEtsZHBMQmlLS1FkRE5tRWRpSCthcmRB?=
 =?utf-8?B?OGtWZ0ppc2xoU1grVEFTMEd4cldXeVEzTUdIMkQyOVBBRnIrZExHaEJybTN6?=
 =?utf-8?B?SlpqaXdacFFiclMxb2xQTTErWG5BaHc5bXZaZlVZcEVQMU1UZ3FCYXVzTGh4?=
 =?utf-8?B?MXUxd1ZJM0F3ckplTzk1bXdMZG5kR015cTFReGY5byt6eUttc3FvdHlObEN3?=
 =?utf-8?B?a09oWHZXRXZ0RHBhZXdMdXBBUlovN251bFlQS3BaWlJvSHlVaDRxTGlyZTFy?=
 =?utf-8?B?RHdyMGpwbmxvY25aSEEwSHV5QTY4OWRsMGN3TVNOaTBYNFcvRWh1S0tKWGpB?=
 =?utf-8?B?ZEJVVGpPTDdwNDZmNU05SDdpaXMvQ2NKRC9wWVkxZHlldnpuZmwzYzQ4eWRw?=
 =?utf-8?B?UGFQTHRhWjFreUtqbVZvYVN6UmxERU5GNnZBcVVPMDNTeE0zS29XY2dxWEFB?=
 =?utf-8?B?UytYSDMzYkZGckY1c2ROWkx0QTBxaWQ1c3U1bWtiU3VRU24xR0xUSlRjZ2NE?=
 =?utf-8?B?eW56dndLNHJEeERaL0tmQUVoVE9oN2MyWWtzbmJUamExZ0d1dExpYnI1OXFU?=
 =?utf-8?B?R0xuU0twRnpPbmlES2x1VzlCL3JRUzZIK0VEaHFwMFpFRDdFQ3ZqSlZKK1Yw?=
 =?utf-8?B?RUNmbFE3SXZjYy9iQUdReG5YL2NRZmxrZS9oTDRMT0h6S0ZKVDI3bHFxVXNK?=
 =?utf-8?B?OVFlRmlqRmNUaDQxSnlvTVlVbms1dXB3c1UraEg0aDVlSXUwelBZYjU5dnBo?=
 =?utf-8?B?M1VCeks0RE5CRXVZSUtQZFFrTW10NnRkTWFkWTZnallnbkJNM1Z6d1hldVJt?=
 =?utf-8?B?WkJCNkdxMEp5dkFGbHMxY1NKSEdWK2NRRGF2NmFsWWh5eFBDcUZJUWdOd1B6?=
 =?utf-8?B?Z3VhNWZUakZTSlRqM2FQZVJEbXpHSWhwbFF4ZFI1TDVnMDZ2RXc5MTlwbTFw?=
 =?utf-8?B?UjJsMWF0Rm5wWlJYK2kxRlM5djNDeCtCUnF6Ui9QS3o4RmdhNUpqaGdJY1RR?=
 =?utf-8?Q?hZwRGMUVGEa6la8gBkTuxDxubx63qsr6T8LwkAm?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM4PR11MB5341.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(1800799024)(366016)(376014); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?RFFvUStsY21LTDU1dERtK0NiOHV0QWw0QnhyZmt1eFZBQmRROVVLSEw3THNF?=
 =?utf-8?B?V2RMN3R6QmZ0VEpEcmJHM0ZlQlRyTUlUN1hUN3Ntc1B5T3Q1ZjIrSDMrRWRD?=
 =?utf-8?B?b3VwNnUrZHZWRHNRdWZ1VEJMaWFSZHpIRnJySWg2bkI2YmJYNkxqTnpGTmhh?=
 =?utf-8?B?ekxURStJeThGWHFocFM3NU9WdjFSWVFJVXBkdU41b1I4YTVtbFhSUzl4VXAw?=
 =?utf-8?B?c3BwWnIzTGZId0JSOVF2Y1YrZ0c2YTRHdXhTWTZ2YXNiNG1LenJGQ1lIQmtW?=
 =?utf-8?B?dXdUTUloU3gzZmcvWTlVdWJwdkhUY2NORWJ1SXpZR1VIc1o3bFVsQWhkeUV0?=
 =?utf-8?B?dGNyQlFBMGM1K0swd3o2RDU2Z0o3cEx5b0dzRmF1RlEzVmQ1LytvTTJJVmU4?=
 =?utf-8?B?dzZlME8ybkVYRWtoUnRRT1ZybndzRTc1NytOcWIvbjRMZUMwZ0tSRVBoQWpJ?=
 =?utf-8?B?YTFQY1FWRXRDMUdVRi8yb0pZTEtBWmVSMVB0Rks4NHZsTDEzZTBMaXJoa1lH?=
 =?utf-8?B?bUdBRENxSHAzUTVjdVlrbVlHQ1NaOFp1eWtsQklVV1RyRGFCSk0rWVA5djJ5?=
 =?utf-8?B?NXFKZ0dGdm44c0U5UWwvWEszcVhTdDBmNjBqVGJZV1JZYTJvb0dHakdaTitK?=
 =?utf-8?B?eU11QWZWMDg5d3ZtZ3RHTkVwMFJySjlicjNYRUpEdFhtdmpLUGUzZmF1NjMw?=
 =?utf-8?B?bkpXWkI1Y0RReDhnRHdxWTZnKzU5RHNQWG4zT29rZXRZcHcrb0pwSlNqNk9S?=
 =?utf-8?B?UzhYRmlDZ1pqYWRodU45alBTNzhHbm8yTVREZlBrbTEzQmtMSjdnb29YQ0pv?=
 =?utf-8?B?eDVxOS9zZno0dW5ESlN2ZXZoYldOZ3d1TjNIbFNWR2VUQ2FIT1JYQzhqbjJv?=
 =?utf-8?B?Vnprc1pva3UwMFBnMUVkVkZ2NlJ1T0JGd1lwKyttZ0NTeC9UY0MwV0lnWFhR?=
 =?utf-8?B?MnJSd2sxUWJuVmZsYndtN0lUbTIrS2p4THRTTHozbnlMbEtMZ2VacGc5RFUv?=
 =?utf-8?B?WnFLTjNSenZQNnZGRkhFUkZMT3hpN1hPMlNLTHJMWlB6bWhrV1BmSDN3Z1VH?=
 =?utf-8?B?TlppajV2NTZTaTJLZ2lPc25RT2xKN2dETGtSZnFSaDFZWHlHMjZBbnJPbnha?=
 =?utf-8?B?c0E5R1FEb3RZaXJkZFJOaC9xZTI3em12NXRDR0hsamM1MVhOR1h4SWlyODVR?=
 =?utf-8?B?MC9yTHRGV2VIUlhucWVic3FYQUE3dUlYdjY2ckdqb3c5QXJDcE5xdVBMenFC?=
 =?utf-8?B?S1o1TXpzbXVhUXVEeVVncno3eUdEVWFVZVRhTFRHZVV3YVR0L25zMFl4NTBF?=
 =?utf-8?B?SE9lOHVYaURIOXFFckcrZlhhdXpJcWxMUTU0dHhncWJkWWVuaEZaNXZhYWRz?=
 =?utf-8?B?YzRFM21PZEhLZ1NlQnJOc3c4bjJNUDBrZnpXZkorclpOYWJULzNlMXNwZ0ly?=
 =?utf-8?B?UjlXd2QvSGNjWWlCeVhOaC9ZV25RV0xjMFlsSDB0dmxvQ0NxUHVuUWNJNmRX?=
 =?utf-8?B?KzhOVHVhSGpKOTA5a29CVEx6c0EzeEFkWTBYYXZlSDNTeDNPQjAzekJHOXhy?=
 =?utf-8?B?dHpGZjh6WEI1dzJ4Y1YxMEljVnNoMGpGdUxPcmRBUkQydHRjQnZIbnZGc1J3?=
 =?utf-8?B?dlRHeVpQT3hsOXNrV05TQmxFYi9yYXpid0ZNcHhsR2VDNzdTMmRSUUNFb3k3?=
 =?utf-8?B?V0dBYmtFOEsrVXpZcFNDaTFDcWpIdnhHRFJ6YjJySkk3RHhMdFZOTDkwdjE2?=
 =?utf-8?B?R2ozRWE5ZG5OemdwWWg3a21QU2VVYUpkUFNaSE1NSExidGNIT0dxRVRwSFB1?=
 =?utf-8?B?dmdmbkVZdUFGSEg4UlNINDV4MmpNa2J0R2g1bmQ2UnpEa0IveVFBbU92MmFU?=
 =?utf-8?B?allvaGF3VHJ6ckhvd0RtbGVDcDdBNDhkdU85WVhmWEg3RDBDa0czMmVZQmFm?=
 =?utf-8?B?R3hqRDIyOU4yL21RTzRKdWx6SmpFeG1YekZ4U1NUU1IyYjZaRVFrbEt3Tzln?=
 =?utf-8?B?by9zWFp2aFJNSlgwSGZKaVUwa1JkNXZUakV0QUt4S3loK3A1MmcvRmo4bTV2?=
 =?utf-8?B?T2Zza3lTY2dmakhuMFNGRFdSbWEwRTZqME1KMW8veElObjBkcm5KWkh4djVz?=
 =?utf-8?B?UmUvY3R3a1NUSGNMUHh6TmRVdkQzT3dGaWl3U1RwZm1ZQ0J0ZzdiMG55dDVX?=
 =?utf-8?B?RGc9PQ==?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 612b1632-05a2-4031-0b43-08dd75b25950
X-MS-Exchange-CrossTenant-AuthSource: DM4PR11MB5341.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 07 Apr 2025 08:58:22.1227 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: v7WRYz36/C51dMOznI2cRw8q9TFp9uf+q4R90wDR5CGlz5VwkQd3MoptyKe6uNppNzojGdvRnHMi8S0PMOzML1vaHTtfPVtfsf0+90v1caI=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DS7PR11MB7807
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


On 4/4/2025 9:08 PM, Ville Syrjälä wrote:
> On Fri, Apr 04, 2025 at 01:35:40PM +0530, Ankit Nautiyal wrote:
>> Add the missing vrr parameters in vrr_params_changed() helper.
>> This ensures that changes in vrr.vsync_{start,end} trigger a call to
>> appropriate helpers to update the VRR registers.
>>
>> Fixes: e8cd188e91bb ("drm/i915/display: Compute vrr_vsync params")
>> Cc: Mitul Golani <mitulkumar.ajitkumar.golani@intel.com>
>> Cc: Arun R Murthy <arun.r.murthy@intel.com>
>> Cc: Ankit Nautiyal <ankit.k.nautiyal@intel.com>
>> Cc: Jani Nikula <jani.nikula@linux.intel.com>
>> Cc: <stable@vger.kernel.org> # v6.10+
>> Signed-off-by: Ankit Nautiyal <ankit.k.nautiyal@intel.com>
>> ---
>>   drivers/gpu/drm/i915/display/intel_display.c | 4 +++-
>>   1 file changed, 3 insertions(+), 1 deletion(-)
>>
>> diff --git a/drivers/gpu/drm/i915/display/intel_display.c b/drivers/gpu/drm/i915/display/intel_display.c
>> index c540e2cae1f0..ced8ba0f8d6d 100644
>> --- a/drivers/gpu/drm/i915/display/intel_display.c
>> +++ b/drivers/gpu/drm/i915/display/intel_display.c
>> @@ -969,7 +969,9 @@ static bool vrr_params_changed(const struct intel_crtc_state *old_crtc_state,
>>   		old_crtc_state->vrr.vmin != new_crtc_state->vrr.vmin ||
>>   		old_crtc_state->vrr.vmax != new_crtc_state->vrr.vmax ||
>>   		old_crtc_state->vrr.guardband != new_crtc_state->vrr.guardband ||
>> -		old_crtc_state->vrr.pipeline_full != new_crtc_state->vrr.pipeline_full;
>> +		old_crtc_state->vrr.pipeline_full != new_crtc_state->vrr.pipeline_full ||
>> +		old_crtc_state->vrr.vsync_start != new_crtc_state->vrr.vsync_start ||
>> +		old_crtc_state->vrr.vsync_end != new_crtc_state->vrr.vsync_end;
> These seem to yet another set of values that are potentially problematic
> for the always_use_vrr_tg()==true case. I'm not sure how careful we
> should be with this stuff...

Hmm as per bspec:68925 for LNL : it mentions "This register should not 
be changed while VRR with adaptive sync is enabled on this transcoder."

This line is removed for PTL from which we are having 
always_use_vrr_tg()==true and replaced with: This register should not be 
changed while the refresh rate is changing.

Don't know if it will give issue when we switch from fixed RR case to 
VRR for PTL.



>
> And the whole encoder->update_pipe()/infoframe fastset stuff needs to
> be rewritten to make sure the all the changes it does are either atomic
> or happen on the correct side of the actual commit. Right now, for AS
> SDP specifically, we enable/disable the infoframe potentially before
> the actual commit, which I think is wrong at least for the disable case.

Yeah this need to be looked into. Will check this.


>
> Also we still seem to be missing EMP_AS_SDP_TL completely.

I have some basic change in pipeline for this, will test and submit for 
review : 
https://patchwork.freedesktop.org/patch/647092/?series=147304&rev=1

For Panel Replay + VRR there seem to be few other things which need to 
be taken care for AS SDP.

>
> Anyways, this patch isn't wrong at least so
> Reviewed-by: Ville Syrjälä <ville.syrjala@linux.intel.com>


Thanks Ville for the review.

Regards,

Ankit

>
>>   }
>>   
>>   static bool cmrr_params_changed(const struct intel_crtc_state *old_crtc_state,
>> -- 
>> 2.45.2
