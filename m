Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id B3EB9C88153
	for <lists+intel-gfx@lfdr.de>; Wed, 26 Nov 2025 05:45:51 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 913A910E510;
	Wed, 26 Nov 2025 04:45:49 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="CP37Y1T1";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.15])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 9812510E50D;
 Wed, 26 Nov 2025 04:45:48 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1764132349; x=1795668349;
 h=message-id:date:subject:to:cc:references:from:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=QVi5cbIOgHMf0CttlAUz854+PbtE50m1XsNYvEqLxwk=;
 b=CP37Y1T18GIQ2Qh6evv4JwwLPAK5yHr//AvdbnTYmvdpY6/5SB7gYuu9
 C8HdMKQLJjsGZ7aZYf9ShSyTaSw9fZnkvcXpaLZqX5mosjXDSgRo85P3O
 hdALHowVVIhdu5FHiy0djlUGBD3xuVqvWDJK0ay4lf3mUxbJr1kXHNP8s
 W5cpn9YriWO5SMUZbJmCXJJGqzNSWwz6d+9ol6E0sOLPlfNcmVMDQLE9Q
 MLFOJWTwtY+CSxzCZjYYmDy0GC5xCvNZZ1OTDZFeVKwKPhvzVKfYYdcOo
 bJfA4jNxW3w1syUagEPYmC8GRdpO1sHqA5Sr5z9lN0rpkWaR8cKCUuWeZ A==;
X-CSE-ConnectionGUID: NFuUaZf7QD2U3Wtz1XQHhg==
X-CSE-MsgGUID: Axi8+B7qTVehkPvLy4zEig==
X-IronPort-AV: E=McAfee;i="6800,10657,11624"; a="69783680"
X-IronPort-AV: E=Sophos;i="6.20,227,1758610800"; d="scan'208";a="69783680"
Received: from orviesa007.jf.intel.com ([10.64.159.147])
 by orvoesa107.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 25 Nov 2025 20:45:49 -0800
X-CSE-ConnectionGUID: WEARZai8RVeLKxxxSKicqA==
X-CSE-MsgGUID: oEMpg0zfTPmQJV1SNtJKtw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.20,227,1758610800"; d="scan'208";a="192854690"
Received: from fmsmsx901.amr.corp.intel.com ([10.18.126.90])
 by orviesa007.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 25 Nov 2025 20:45:48 -0800
Received: from FMSMSX903.amr.corp.intel.com (10.18.126.92) by
 fmsmsx901.amr.corp.intel.com (10.18.126.90) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.29; Tue, 25 Nov 2025 20:45:47 -0800
Received: from fmsedg901.ED.cps.intel.com (10.1.192.143) by
 FMSMSX903.amr.corp.intel.com (10.18.126.92) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.29 via Frontend Transport; Tue, 25 Nov 2025 20:45:47 -0800
Received: from MW6PR02CU001.outbound.protection.outlook.com (52.101.48.20) by
 edgegateway.intel.com (192.55.55.81) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.29; Tue, 25 Nov 2025 20:45:47 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=jwPEkOqihoCaVpU9Q38QGmJByjgisxBMQ8HkNFrYf5uDAg+28DCANMEO2+MX26Zwz2F+aNKKGXgNvr3DmCHUi54aPnfQKHfVRneHkdZsTceB89UF93QLZjbBK3+tHNZqLgfosE6HuQpQSZyOYG0lX+LEXrBSfPlaEOxNIHIUZ3y4+FWw+DPLDHRw1NLl8oeufgrcuMWznJRfeLJOXCBj8LnAibGvtaflX16VQnJX9nEF9ywT3iw7AqPwR2cFwLorEFH5NemZNvvyF0kvkww34QC+bLtLRhlVwLnDHAe4b6JI9jxq2TdTzdOp7iNuW1cUIBtFAkF/uuBsNviRs16EJw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=CytdSeHtn3L35A1RDtC/LEukiloMxbBpql2iMKcqAl4=;
 b=NYMcXp9d6ZnoG0DpDuok8yL8WhCB4m3v4rDl60lz9LetxSM7Up+LKciEbg/z/+KEvn2a7vqZ77xho2JWwU+/fgWQ6D5e3bojP+MCGaRlvEvy+aAeKm+RDxMG0DV/f9C9iQ2C5S79LQcqmW9g/rjXPyEWxOKMujKL9eyg+/GI98/EYiMLepEgax6tveOhdILhAfrl+lmhRCEmVgz0OEOh4dbvnn8nz5amBj5a8q+tMt6kHHqiQ20Gfb788bnqQJwogqioDSkRivPdG5/OTrRSre/1kVC7xAyYDMxJHx5EozpgSyGdkhL1e+c2v43TWmiWamBy4J5BOvWzLkHNPsS7KA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from DM4PR11MB5341.namprd11.prod.outlook.com (2603:10b6:5:390::22)
 by MN0PR11MB6086.namprd11.prod.outlook.com (2603:10b6:208:3ce::11) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9366.11; Wed, 26 Nov
 2025 04:45:42 +0000
Received: from DM4PR11MB5341.namprd11.prod.outlook.com
 ([fe80::397:7566:d626:e839]) by DM4PR11MB5341.namprd11.prod.outlook.com
 ([fe80::397:7566:d626:e839%7]) with mapi id 15.20.9366.009; Wed, 26 Nov 2025
 04:45:42 +0000
Message-ID: <eaf02350-1f23-4671-bd31-b0b656dbd834@intel.com>
Date: Wed, 26 Nov 2025 10:15:35 +0530
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v8 17/18] drm/i915/vrr: Enable DC Balance
To: Mitul Golani <mitulkumar.ajitkumar.golani@intel.com>,
 <intel-gfx@lists.freedesktop.org>
CC: <intel-xe@lists.freedesktop.org>, <ville.syrjala@linux.intel.com>
References: <20251117054442.4047665-1-mitulkumar.ajitkumar.golani@intel.com>
 <20251117054442.4047665-18-mitulkumar.ajitkumar.golani@intel.com>
Content-Language: en-US
From: "Nautiyal, Ankit K" <ankit.k.nautiyal@intel.com>
In-Reply-To: <20251117054442.4047665-18-mitulkumar.ajitkumar.golani@intel.com>
Content-Type: text/plain; charset="UTF-8"; format=flowed
Content-Transfer-Encoding: 7bit
X-ClientProxiedBy: MA5P287CA0184.INDP287.PROD.OUTLOOK.COM
 (2603:1096:a01:1b6::12) To DM4PR11MB5341.namprd11.prod.outlook.com
 (2603:10b6:5:390::22)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: DM4PR11MB5341:EE_|MN0PR11MB6086:EE_
X-MS-Office365-Filtering-Correlation-Id: 2cbcd769-c5a5-4803-99bb-08de2ca6a714
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|366016|376014|1800799024;
X-Microsoft-Antispam-Message-Info: =?utf-8?B?VnhSVlRRTjErQUtYZHNBck9RTkZwQ3IzSkh5U3ZFUjRjaHNXSzlmQVkvS0pu?=
 =?utf-8?B?SmpNclNOd01kRGhJVXBFc21PN1NZMTUxV2JvYllTOVVDaC9CbGZZSUQzSjI2?=
 =?utf-8?B?ZHFJNVBURHBKV25UalkvZGJnanhEOGFvakJtcUEzL2NnVXFUWlJlMWlORThs?=
 =?utf-8?B?WU5EZGYzVUJteXVQTjZ2QVJRZkhaWnliZzVMVWEzT1RHWE4rKzFvN0swUk5Z?=
 =?utf-8?B?QnhvZHFMRzMzaU43dDFiSlpSVjcwSFBXdEJ1bGY2bmpCYTBoUlUzVThoQ1pp?=
 =?utf-8?B?alZPMHJpY2hsMkl4QkZHYnQ2RnZEeldpQjZRWGtxL3NmMUZQVDBCTExXdkpm?=
 =?utf-8?B?WnJsZDdSVFJLQnVYVlZ5UXc5bTBVMElZNFFKTGhhYjVYT0xBb2pCbU56RmlD?=
 =?utf-8?B?ODhTVHZqc0RnMFpvSVJUekdDMXN5RGFlRjlqcTV0VVJaS2xqWWJxV0cxSWY1?=
 =?utf-8?B?Tmd1WWZaUVd5Mi9mcEZCRXFEYk5HQkY3L3ByQ0diTStZOTFyOWZkMW9RSmhH?=
 =?utf-8?B?cGxYR2VFcndEME9Rb1czSTc1a1VVUjZlVU93SExSSXdSUlFXak5UejMvcVVy?=
 =?utf-8?B?Zk9yVTJkWFNmS21KT2xwQXl4S1d3clR4Y09qNWNyUjg0anQ3d2p2QW9WbG53?=
 =?utf-8?B?QWRER2luRllWb2NVbXQzMzgvYWF1S0I3VzVmeC9lZXJhVUw1aUpkeGwzbEtF?=
 =?utf-8?B?YzB0Zm9OMjU3ZHVoNnlKZUVLRlM0cDNQemVLalJ1dmVIQTloY2tDK2lNOURH?=
 =?utf-8?B?eG5vemgwcFFwZUFFR0UvUkl4T3hzNGpZNGlCaUExeEc1N3lPQXJhQlNWQ1ky?=
 =?utf-8?B?M3NSdEVOYUQ4YXV3blFwTFRrK3p6bVl1NDZiRmxDY2NEREZkYW4yTmhZSjY0?=
 =?utf-8?B?NHFGZUwxdE0rdUtLTGs3UDNDVVhzRWg3L014MWNXdGZETkl3TzV0OHFGQTRP?=
 =?utf-8?B?NDNBQ21jQmdWdStEZ2U3OHg0dG1nMks3cElWVCs3a2t1THdKRm1qWmt3VVBI?=
 =?utf-8?B?T09uc1UyMmZLWFhWR2E5d1JxdzdVdXFRdFppTlVHWVZ6bEFGUFl2bEp6OVFK?=
 =?utf-8?B?L2JpQ3RUb3doU3hMcjhCb1V1NThQR1FXTkNmakloWFJqTHVRUlhtSlRWa0d0?=
 =?utf-8?B?VlJrelpUOWNZbnp3ZnY1dDRkd0IvblVuVXB6ZUw4K2pNODY1am9QUXhtaHA2?=
 =?utf-8?B?NFFIZi9IT2xZNCtqYzhNT1IxcHVsVGp5NHJOWElZUXRYZmZENjgybGpQZHly?=
 =?utf-8?B?bU82WGphWXBXcS9KWmNNalZvbmUyQnlEOStpOVN2MGR0VjdCN2w1RDEwRlJJ?=
 =?utf-8?B?d3pFUHNoK0NIK0FwVDg4WURqS2tmN1R2Z3oxRkptMVhYOGFVTDIyc05kZDhO?=
 =?utf-8?B?blZXNGZhc2R3d05NVUYxazh5anFZQ1hBTlpSYjRxSmh2MHdWdlFYMHdwNmtN?=
 =?utf-8?B?aE0vU0FQTDdzREZRZWtGcXJ0SWNDUmNrZjdVaDhiVTlvdkM2QVRiVUNTb2Ni?=
 =?utf-8?B?eUZoWFJPNExxaC9nZGovNitpVXRuNzY1dDd0dy9BUDB1MHd3ZldiRzdaQjRL?=
 =?utf-8?B?TndicTBqVXdhdVUzcWcyQmJ6blpGT0IxWmNKVi9tS3RtTWkraTRzMEZLNmJj?=
 =?utf-8?B?MkpIUERpSVV5L05GMWNvTGE5UllLZ2l0d28reWJSb25ZUjRHelhuK2JEdnVB?=
 =?utf-8?B?czFUY2hCME01SG5Va0E4RGFVckp5N0tueVRsNmhOY3R1TTBvcThHbHJ5c3c0?=
 =?utf-8?B?cHB0bkduVXRWb3l0cTRkZmF1ZkFDWVpFellYS3NURkl4OXNhSmxXYUVQeFkx?=
 =?utf-8?B?TEw2RVZuK0piK21zMTBISWhRVHNOMDBHZU1DbnMvSUNuNWN3eXN5eXpwWmFq?=
 =?utf-8?B?QUNFMWUzWGZwZkNVK0hPTCswakY5cHFndFlSdkJ2azFBOEFjM01xbytZbzhD?=
 =?utf-8?Q?kkTVPScXikbwuUN4yHIMwBIjZtNGavLL?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM4PR11MB5341.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(366016)(376014)(1800799024); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?L2VWbXl2cXB2bzRrSFNQUENQa0NpT3VHYVE4SEw2bW9GTDRVOVVRTTQ3dldp?=
 =?utf-8?B?VENNSkFneTc4bTBDN1pNKzgvNjR3T0o2TEdmTVI3MklrYVgzMHZZeVpMUHhX?=
 =?utf-8?B?ZG8yOFp4RUVkeTJpRGdmeW5STitmYW1kYmFldU5nR2hTNFRPVjhUZCttSUVO?=
 =?utf-8?B?eHlQMlJEaWNjR3hZMXFidmJCYXlVci8vRlk1OTl5bys3Sm5xc2VqUFJOT3U4?=
 =?utf-8?B?L0JKVjZlTUkxZnBQNWRsNWxHZmlRQkhFT0dVc1pCbVEwcEFQTlpHWE5RbHpr?=
 =?utf-8?B?WEV1SGFSZk9PT1FHS3djT3RTMm81TllGQUVKQWRnQUs3U1pUNHBjOVprTjIy?=
 =?utf-8?B?MGE1eHZSY0EvMUhTLzU2MEtwVUhDUDRFRldmVzBqZ3R3THpDdHVScWQ1N0VT?=
 =?utf-8?B?ODI2ckFlVSt0NUY5Z3lWVzErOTRxOTlrZ0htZG1CWWo0TlJsSC9PZWZLSGRp?=
 =?utf-8?B?RENadTdjM29YeFVyb0o1djVQRkdaaHZsTEdZY3gzZFV1NWQ2cGZ5MkVNWXpx?=
 =?utf-8?B?L1VadHZyOW50ZER6aEhTRlZqdlFnSkZjUW93WVhSaWdaUWtlS09LUGJyTlBV?=
 =?utf-8?B?WXhxWExmSUR6YlQ4SktRNW1hZXlaWmFJNVR0NEQyTjdTOFVpTTltbzZCNHpw?=
 =?utf-8?B?U3dMbWlVeFpsWjNjNnBRWE1NQUljeS94bHNzNG1CMHJYWmlZL3k0YzJucG9L?=
 =?utf-8?B?Yjhrd2oxejdBdlQySElRTjY3T0EvaTBINnRRamIrcG9XRDBLQVRraE1yZlFU?=
 =?utf-8?B?enY4UU1SK25JZnNIQ3dLbHZOcUpia25hY3dwam1LTGgwTmI2dEZVcTBuenNH?=
 =?utf-8?B?eEVzQkF6dUFqTEx6NksrR3FJTk1vdlVITlJCZjZQS29jcVd5Ui9CZXZ2b09Q?=
 =?utf-8?B?ZCt5eEg0Rk11ZDhMbUlwMytjT1VyTkFMb281RDJSWjF1SDlmSTNiM0lEZ2ht?=
 =?utf-8?B?TVIxaEVhbTFZbSsyTEFWajVIS3BJZFZQdkZUbDg5VExra2M1ekZZVnVTZU9l?=
 =?utf-8?B?Y0oya2V2bGZFTjh4ZnhRS1hSMlFETWltQ1lUYlJnTDZvQ3FoZHdoTDVjSlVt?=
 =?utf-8?B?TkNjbmpFNUdDdkFhTnhlVFo4aXQzRHd3ZENHUDBmUEdrV2xIZDk5czgzY0V3?=
 =?utf-8?B?WklMNnc2Y0xsdUZQZFVmWjl3S0tGY3hGNGRoY1VaUWluaURaS0MxYXRrODZ5?=
 =?utf-8?B?REtqek9QeXhrMWpYYnJqZjNnN01ES2tRNWxYTC9sT0t1SjI3Y2lFUG9KUG9z?=
 =?utf-8?B?RFNqR0Rnb2ZvUUYrWmNxMmlDUDVwT3Rja1QzL2FlZjZxeFZSU0ExZnVjQlBR?=
 =?utf-8?B?cDI5ZU1hcE1oY1dXd2h0SENoY3kvVnhaNkU5SXphU2F1NkhySGxqUlRiSkJh?=
 =?utf-8?B?cnBMa3VSKzF4YmMzWUlIUURNNlRkZkRXRmpQNHUyRUI5b2c5QU9TamJwdkxG?=
 =?utf-8?B?czVTbHVqVis5R2N0REt0UEFtaHdERmlFcG5vaVBnNmd0NXpmMVk0S0pwL0s4?=
 =?utf-8?B?QS9FQUZLREhNUGYzVEd4ZVRhMVVndTQ4c1MxTjJ5ODM2ZUJHalM1R2JtcFR4?=
 =?utf-8?B?NWo2ZExPbmxQaXhBVngvRHRTcWlaajBSMlBQeXpYS2E0ZjBxb3hlNlZMY3Z1?=
 =?utf-8?B?Tk5raHJKdm42b1RoZjkwVkYzTnd6dEVwbmt2amF3a1VzVkZlbW5oL1RyMlZ4?=
 =?utf-8?B?YVJZN0NvQkpXZmhpbTJ1RGE2TU8vTHY4UTNXMmlUSFRySWZ5MktxbmFpVGhC?=
 =?utf-8?B?bHdHbnk2QlZJVEtmUUNQNWZEVi83MU5YTXhRRk5pRGRkSVVqekw5YXdyN3ZD?=
 =?utf-8?B?bWZWRTVIWFVrVTdXVEFEem5SNDQyNUxuSVlZTk5qa0VNRVl1cE41K25oS1Bk?=
 =?utf-8?B?alhFay90Y3NqUTZ3KzVvY0ZXellOaC9PQ0Q4L3R0YTI2TWNsVUluL1BVZnUz?=
 =?utf-8?B?VXpWbERyQVNFdDVLcHF2SGRpQlhZT294bGJwZTJFT1BGZDFVMVZRTEJLWkNJ?=
 =?utf-8?B?aDJSK00xUkdKQlVKeFBucHc4Wk9wdC94UlZ3eTlkMGpGRm4vVVBIVGpidTlj?=
 =?utf-8?B?WU52RWtaWmVuTWtGYUszRVVxVWRhU21FNDFGaGRPUE9QK2l6WmdKUjhKOG9z?=
 =?utf-8?B?Yjl6dzBNNjV3WHp1aTIvSFdpTURVdTAvWG8zQkhaSUpPZ3Q4RHU4TnEySGpK?=
 =?utf-8?B?MHc9PQ==?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 2cbcd769-c5a5-4803-99bb-08de2ca6a714
X-MS-Exchange-CrossTenant-AuthSource: DM4PR11MB5341.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 26 Nov 2025 04:45:42.0030 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: RDy2rxduRaYWNGETAniDgec9euXWiTbTQVc+DtqxHiB+5lU5wzjCcsvSI7aXT/F1qWsYCwN+kpzNDs50PijTGwUCwYAmTniAGlequsAEo0c=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: MN0PR11MB6086
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


On 11/17/2025 11:14 AM, Mitul Golani wrote:
> Enable DC Balance from vrr compute config and related hw flag.
>
> --v2:
> - Use dc balance check instead of source restriction.
>
> Signed-off-by: Mitul Golani <mitulkumar.ajitkumar.golani@intel.com>
> ---
>   drivers/gpu/drm/i915/display/intel_vrr.c | 9 +++++++++
>   1 file changed, 9 insertions(+)
>
> diff --git a/drivers/gpu/drm/i915/display/intel_vrr.c b/drivers/gpu/drm/i915/display/intel_vrr.c
> index 74a6d5243f00..87945b031a7d 100644
> --- a/drivers/gpu/drm/i915/display/intel_vrr.c
> +++ b/drivers/gpu/drm/i915/display/intel_vrr.c
> @@ -266,12 +266,17 @@ static
>   void intel_vrr_compute_vrr_timings(struct intel_crtc_state *crtc_state,
>   				   int vmin, int vmax)
>   {
> +	struct intel_display *display = to_intel_display(crtc_state);
> +
>   	crtc_state->vrr.vmax = vmax;
>   	crtc_state->vrr.vmin = vmin;
>   	crtc_state->vrr.flipline = crtc_state->vrr.vmin;
>   
>   	crtc_state->vrr.enable = true;
>   	crtc_state->mode_flags |= I915_MODE_FLAG_VRR;
> +
> +	if (HAS_VRR_DC_BALANCE(display))
> +		crtc_state->vrr.dc_balance.enable = true;
>   }
>   
>   static
> @@ -892,6 +897,10 @@ static void intel_vrr_tg_enable(const struct intel_crtc_state *crtc_state,
>   		vrr_ctl |= VRR_CTL_CMRR_ENABLE;
>   
>   	intel_vrr_enable_dc_balancing(crtc_state);
> +
> +	if (crtc_state->vrr.dc_balance.enable)
> +		vrr_ctl |= VRR_CTL_DCB_ADJ_ENABLE;
> +


I meant about these lines in the second part of my previous comments. 
Re-iterating:

This should be in vrr_enable() and this bit should be reset in
vrr_disable().


Should be part of intel_vrr_{enable/disable}_dc_balancing()


Regards,

Ankit



>   	intel_de_write(display, TRANS_VRR_CTL(display, cpu_transcoder), vrr_ctl);
>   }
>   
