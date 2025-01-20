Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id A8EE0A16D42
	for <lists+intel-gfx@lfdr.de>; Mon, 20 Jan 2025 14:17:50 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 5778710E405;
	Mon, 20 Jan 2025 13:17:49 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="j5r2/cWY";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.11])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 3A0E110E40B
 for <intel-gfx@lists.freedesktop.org>; Mon, 20 Jan 2025 13:17:48 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1737379068; x=1768915068;
 h=date:from:to:cc:subject:message-id:references:
 in-reply-to:mime-version;
 bh=JlmUDqbuoQLtOupcVDC1mRxiLeg6ZusMNMwTo6FHjJs=;
 b=j5r2/cWYeRfXirhcSrAxVf4SOopn93ZjRzlcpVGHIQostIZCFtk7Spb/
 GPwPEMlHHFXrLMjS5NabYpJRXrEupSw/pIuxPK/VolWL0Dly3Edcgf/Ds
 ucxqLGyhrRXmoh1/OtHJ6NmBeBZB0gRYZ1H8w05g5mzYxIMXEPYHoUO4h
 6ncS4TnEVgsZZOhU9cCV0GTpV6Nqxv8aUXN9l2AsQmkRV1TRDy3XlGpgJ
 hwg7QAQbLYMVpYNIy7ZuZVJJZvtU6Du9y2SyE/5FGX9fCUYOgRtmXZMEg
 HwDWzhDPl1lrozNI36EHLeR4lFVQxi4USnvV4jgqDJlduC/MSqvgV6/JS g==;
X-CSE-ConnectionGUID: 6FyRvsChTKm40xmx5a+Rqg==
X-CSE-MsgGUID: LUpxQlKTSZym0dC0Egj6ZQ==
X-IronPort-AV: E=McAfee;i="6700,10204,11321"; a="48361561"
X-IronPort-AV: E=Sophos;i="6.13,219,1732608000"; d="scan'208";a="48361561"
Received: from fmviesa004.fm.intel.com ([10.60.135.144])
 by fmvoesa105.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 20 Jan 2025 05:17:48 -0800
X-CSE-ConnectionGUID: P6mIi54ESWal2ml/eXu4Yg==
X-CSE-MsgGUID: oeqLYPggToG3QovWIeRtGQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.13,219,1732608000"; d="scan'208";a="111499829"
Received: from orsmsx603.amr.corp.intel.com ([10.22.229.16])
 by fmviesa004.fm.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 20 Jan 2025 05:17:48 -0800
Received: from orsmsx601.amr.corp.intel.com (10.22.229.14) by
 ORSMSX603.amr.corp.intel.com (10.22.229.16) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.44; Mon, 20 Jan 2025 05:17:47 -0800
Received: from orsedg603.ED.cps.intel.com (10.7.248.4) by
 orsmsx601.amr.corp.intel.com (10.22.229.14) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.44 via Frontend Transport; Mon, 20 Jan 2025 05:17:47 -0800
Received: from NAM12-DM6-obe.outbound.protection.outlook.com (104.47.59.172)
 by edgegateway.intel.com (134.134.137.100) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.44; Mon, 20 Jan 2025 05:17:47 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=yZK9azISTuiNTHkKCvd5Jocf+Vqy0ufEDNRXhZOPYif+G7oQ9Au0TYUGk2bOh2sgDhWSm8kdTJLz575DDuhpQW076cMS5Gme2MHJTzVo2i0jVmsjUZgdZwTfjf6R0MWcHzlvTNWoGZrDJRXPJhERkDNXGE0qRYa4FeeFQ9QXC30jNUXy+IbuXGuqWEEviMBTow6YTvDxDAPW9vIkF7dFhz53MzUBOV6QmC8j0BrEOGyqNyGk5IY8y+kGm9BmE96Gy6oGjTQPrwj8Ls+PbiIPMt1UnL7S6KDzae2vkBWlMK7tqLthUoKTzjiXyMepLF008bRxv39i7LYx7cKhsu0OWQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=HJhs9GvL+rupjZCx001A07rK6vgi3p4OMtMkUAEM4xg=;
 b=E1+3ZeoIfwRetweu2X49E9PCJAX3Hq6emu0OgBikFzQjEr4+0ozMrb+m++vSHCUEzEl0Ih5jX4PP7iyRlxYkjRBTKTbpgswhTI5AUqoYfh9SYq7PImcZ7+ozVFmiclH5zHqXrPiDU3PEie7rQ2jhEAarRoPHDfMF0Ho6R25Cnar0xwNbRtRJl6b/SeKOH1VuV6PwSPgeN7s0WgCHS+p0bGvQ3+ZcPVvcR0+8A5FHyKLKP2t6cl4gJ6HHgW2cTZlG81PTn9kYBgIH64VQoQlp6i5ppSue/T1E99Yp6IYlS5E6sOO7nzWxopRURpi7GM3DxRYWLJOzwxogTTGUSTa1Tg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from DS0PR11MB8019.namprd11.prod.outlook.com (2603:10b6:8:12e::18)
 by CO1PR11MB5105.namprd11.prod.outlook.com (2603:10b6:303:9f::7) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.8356.21; Mon, 20 Jan
 2025 13:17:45 +0000
Received: from DS0PR11MB8019.namprd11.prod.outlook.com
 ([fe80::d2ab:ff8b:3430:b695]) by DS0PR11MB8019.namprd11.prod.outlook.com
 ([fe80::d2ab:ff8b:3430:b695%3]) with mapi id 15.20.8356.020; Mon, 20 Jan 2025
 13:17:45 +0000
Date: Mon, 20 Jan 2025 14:17:39 +0100
From: Krzysztof Niemiec <krzysztof.niemiec@intel.com>
To: Nitin Gote <nitin.r.gote@intel.com>
CC: <andi.shyti@intel.com>, <jani.nikula@linux.intel.com>,
 <intel-gfx@lists.freedesktop.org>
Subject: Re: [PATCH v4 7/8] drm/i915/display: fix typos in i915/display files
Message-ID: <6cxgl24wryybslbqnpztquuzca4d6lk4vvtnsnlmlmzptkprtc@adwjg4jg4ck6>
References: <20250120081517.3237326-1-nitin.r.gote@intel.com>
 <20250120081517.3237326-8-nitin.r.gote@intel.com>
Content-Type: text/plain; charset="utf-8"
Content-Disposition: inline
In-Reply-To: <20250120081517.3237326-8-nitin.r.gote@intel.com>
X-ClientProxiedBy: MI0P293CA0009.ITAP293.PROD.OUTLOOK.COM
 (2603:10a6:290:44::6) To DS0PR11MB8019.namprd11.prod.outlook.com
 (2603:10b6:8:12e::18)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: DS0PR11MB8019:EE_|CO1PR11MB5105:EE_
X-MS-Office365-Filtering-Correlation-Id: 5d0f4232-de82-49c9-9f45-08dd3954d3e1
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|366016|1800799024|376014;
X-Microsoft-Antispam-Message-Info: =?utf-8?B?S2hpWG9lcTZpZ2NmR2tYNWpvSDBsRThzaUNYTnFDNHMvUndsV0tGV2M1WjZi?=
 =?utf-8?B?eVAyN1kydk5MZ1BMenUyL2FuWjJGcEcwazVtdVhqejI1dFBFdzRwWWlHOWNR?=
 =?utf-8?B?aFRkM3c2WDhXSUZYVWdQMDR1VUpnTk05M1UwTUxSNTg5U3VoTHhLMFlQNzBB?=
 =?utf-8?B?T1YvZlhjQ0pXUi8zSWI2c2pGY21hU1NOUWoxNnNaaFhaOTBPakZsWWM1UUxM?=
 =?utf-8?B?U2NkdU0wV0ExeVRwQTBncmxnVlpBck04Z1cvMGZxVU1DOXB5bGV5ekVIRS9y?=
 =?utf-8?B?ZkZuUWxpSWZFZi9PdjF0SmE2RVdaVjZZenIyMGNiWGludlFtNlcxdU5Kc3ND?=
 =?utf-8?B?eS9ZOXJ6WkFPV2NrTjZUU1dJdlpOelR3OVo2UEZQUDBic3QxQ05ZSHlIRFhn?=
 =?utf-8?B?eUVock44S29HVldrcDZ0SjJJbjl4Mmx1WDRqYXdSVEQzc1NqVDQ2UFJiemhD?=
 =?utf-8?B?QzNiN1lMVFk5VUE4N25sOUJYTHpuWStFSVhwNGczTy85TTI3ZjJoTTdqMXlZ?=
 =?utf-8?B?S3NybFJBU3ZKcG9FUWNFMXMvaHhpRkxyOUp3Y1E3cndJVkIwRWh3L2FTaGxI?=
 =?utf-8?B?dlZBRkxPQy82V1pNUDZubmJBTDlGU0FvcVlRcVJJZFhPR1JYNHFUVm5nQzlZ?=
 =?utf-8?B?RVZURXc1elZYYm1wczRLWkpxZVlTWG1aWEdVT1MydDRRdnZzYUxZL0pmNERF?=
 =?utf-8?B?TjE1R3p1YnQ1NTg4OVpZbUpQTi9xY3p2YU8zaURtVFhoZ3NnK3pKNU5sNUE2?=
 =?utf-8?B?UUVoOUdEQ25RNThubnQ0OVNQeUdNNk1RWDU4dzNXVmN6ZnRPRngvU2ZTbndq?=
 =?utf-8?B?eWRTUFdDV1NyVG0yMFk2VUZHait1UmJMbDBSNW1mVWdEWmZuVTBubmg1a21B?=
 =?utf-8?B?aVVGNGJUWDBvM1g4Wnhub1dCRHdFWm5sbmdoNm9RN0QrZ0JOR0ZyMTZVWE9h?=
 =?utf-8?B?dHczOE9JcjVsVVBBeWxhWjV1NGszeUR0SytHTGNxSkVMclJaSUZqKy9jaGpK?=
 =?utf-8?B?U3NGaWcrWTRobGxIb1YwVVVlTW9lZVVTdW9UcGhvcEkycllodHJnUWQ3VHdV?=
 =?utf-8?B?cGRwQVNBcnlCTmJlZldxTXU5VVlyQkpOOXJIVDdSWGVya0Y5QmFraURmUkJq?=
 =?utf-8?B?bDBtc0lXZGd3OU42dU1UUGlKemcycjBxRCs0RFNlTEExSStBUjZTd1Y4Nm02?=
 =?utf-8?B?QzFjd0MxME55dlRQT0ZMbUlGK0d1aUROa05PQXhMTkp2WlU1cUtnQmY3bWg5?=
 =?utf-8?B?cEVnblhoRzZnSkZ2emxRTG9MWDhBbDlQVDBIbEVRMWRsamt1Mm5jK3J5WmNR?=
 =?utf-8?B?c0VQb3J5amxzVmRQK3pKVThmNHdLUFpraW5GdmlHODY5ZC9LVXl3dkZScVF3?=
 =?utf-8?B?clo2TnA2QmkrOUFCemtWdDlRU01tNzJ4WjhpZlhEc2pLNDZNYXdjU0dTM2dS?=
 =?utf-8?B?ZkNWelh4VTRZUTNJV1p4bzRUOVVmYWRWT0tKYVhtcUVqSzBld2FJSS9mQmxv?=
 =?utf-8?B?YVlReFpxS3RDZGxrM1B5WUN5TWhvZElXTThNNTMwOHhzSVNMLzVOYlpkb215?=
 =?utf-8?B?NDFZaFV6U2dSMXBqZDk3YzFzLzQ3VjYzSDRsVXY2K2ozUnhZOTB5NUJaMHZh?=
 =?utf-8?B?dzE2TVJqMkV2N2grTThPNGsyNlExRTJ6Rm5ER25FLzN6MU4yYTZ2Z1kzSHY3?=
 =?utf-8?B?UnJhK05qQ0RtdEFNTVk1WFFzaTBoNDV0YmFWS2o3YjNaTVpJeS9wZm1VUG1U?=
 =?utf-8?B?T1UzczBCdlRtT2Z4Qld4d3V2Wk9CSHlFdTFKM29mZTR5cWVmRmhqNjE4Q3V3?=
 =?utf-8?B?Qms5dWpEanBTS1BqR3pZdWtCT3kvTndIV1pCQk5SNWpWL1pyVk9qZVdRWnEw?=
 =?utf-8?Q?CMBWDdBdWquKg?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DS0PR11MB8019.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(366016)(1800799024)(376014); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?UGF1WG9CR0JQVlEwSHprZFYzcjJYZ3gwc2xGMmxzSm41MExxQ3lqdFhFcjJt?=
 =?utf-8?B?c3luWk1qSzk0WkpXZkV6V2p6aXMwbWxnM3dyNmgvcGdrTFhnTSttOHBtOUY5?=
 =?utf-8?B?SXF4SnhUOEkwR1I2SUR2T21YR1lqQ1lleWFVTE9Id3R4bFdzVERmdVhxdFVR?=
 =?utf-8?B?NStncFNnS1BtZVdwdnpSRlcreUt3cVQ0NWx4VlFOODVVSGQ1STZMd2RmT1Bo?=
 =?utf-8?B?a1FaTFVUek5MZkwxS1gvSzZJZXJ2bExkVlJNdkdDZkpDK1pReEhzS0Q2VUxz?=
 =?utf-8?B?MlBOOVNhV2poOXhLOHB5MDlDZXdwM3FZVGJxK09qNFRwejNIUGNmK1Y3L1RZ?=
 =?utf-8?B?ay9VZ1U1OGgzblNqcFZoZnY1SEY0UzllU3BGS2VVKzF0VjZGcjhoVEdSTTNL?=
 =?utf-8?B?WDhnOWd3OVErbjNEMmxhNzVMYUNLdmlkTjlscGFiWm8vZ29mRlNPT0pIYVRY?=
 =?utf-8?B?ZmJrNjQxb09ESTM4VDF4OHEwTERwS0QyUU02Rzg0Z1F3NSsxenVHWWlzSDNn?=
 =?utf-8?B?eGV6Mm8vSEJHVk5tbEUwclQyYXY1UWhOZDBKNnRiMmhCWFFsTnpaTVl1YlFx?=
 =?utf-8?B?TnRabWZ6THZ2aEZ4QWNkbFBJNVhFWng4NnFMM3psUVoxdkc2aU9TZDNScVd4?=
 =?utf-8?B?Um1pU3NST2FRODhHSDRRVVN4bURCUFM5elRvWVM4U3dyTVk2UUZTMzdRSlpr?=
 =?utf-8?B?c2JjeFlVM1NUNjF6VC92ZW0vZ09GeEtNc2N4V3k5anAxdTZjYzVFNmVyL1hH?=
 =?utf-8?B?YnBRdlo1eG9JeDI4NUYxNyszaFhDUloyQ3czMDJkUkZuR1ZxR0c5NWFxNmlJ?=
 =?utf-8?B?cENGVGxxdFNITVJxWUVCcDRTNmRxV3F6dWJlMUFqYlZDYUJZbVF2WnoxeGd0?=
 =?utf-8?B?UXdHaHliY3krN2pkR0dUNWd1Y2hBNFJOQ2RUZXFWckw5NUZKWitNUDBkZWxY?=
 =?utf-8?B?QnFPcktXbGRSWWhQZ2lHMHE0L1ExcDdNbWpxbnlTVklNZFJ4NXREL2F0SGtx?=
 =?utf-8?B?RjBNOTlrTXBVZS9tWEZDVFFTNXR6dVU2K1VUYkd5aXlVdzF2ekVUSURwL2ps?=
 =?utf-8?B?UEtIMWpjc2lQUkthd1BGRHpHc1gyeWVuUklOYUxsaWdDUHlnMm81MGZvenFW?=
 =?utf-8?B?ZDdzK1RmOVp2ZkgzVnJ0ejhtUGs5YVgvS1duMjlEWlI0NWJYUkd5b1oyNTRN?=
 =?utf-8?B?S3RLczcxc3FqdkEyQVR5OGJ3MDFUZmU4TzRZa1E4aWZTWjhTSlhNUnI1dFJN?=
 =?utf-8?B?QUMvTThHUE9SeHpQcFhZSitQZ1VmNVZ4TldsbmxxWWVNYndQUTVPYUo5c0Yy?=
 =?utf-8?B?VUlXN0lJWFE0enUvMFhXYjJ3QWt4NTdvSE5DLytyY1I1bURlWUJFQWpSOGU5?=
 =?utf-8?B?RkJnUVFwcDFQZ3lGWWZZTnlLN3lOZUNnd0UxaW9PbXFqT0FodnQwc3RVQmha?=
 =?utf-8?B?amNJajdaTExyZ3p2dFlmVUNaV2x4SCs1VGYwaE55VnFEMVFHSlFiWG5neE8x?=
 =?utf-8?B?cFNMZFNSWkswbXNKQVRyU0ZuMjdZRUN2VDZCUmR2YmUwWkp6QjQ3K3BPVUFT?=
 =?utf-8?B?MDRyNHExRDJCWUFLL2xibysyOS9lUUM1Tnh1VFJIS1pTWk9GWWVyWmwvdUg5?=
 =?utf-8?B?Y1luckoxQWdrbFlPcjcrK0ttd200QWY0YXpYQXp0VkMvdXpUOCtINHlBQnJs?=
 =?utf-8?B?UHVRL0FoQU01ZlVZZkhlNndzMk5UREFwMHRqbjlJaTlXUWhpQmpBdFBZMmF6?=
 =?utf-8?B?Qk5HYW44VmFOQUJQaVhlZWdzT3hsWmZHVEZrbzZhWEF1ZFBmWU5ZNnJYTlhW?=
 =?utf-8?B?QzlQTHhRMUNjS2xNV0pVeFo4SXAzaFliOW15Y3BSVG9pUjFBYjgyUUFWcU5r?=
 =?utf-8?B?STVpRzBuNEl0Y25UU20rZkxJaGZKT3dVaFlLd1JJdm5yMndVNG9QME9IVlZn?=
 =?utf-8?B?N1JGTkNXVUVZZEhYeVpiZzJsb3hjVXlzWlcvUDJBczNtY2E4YUptaDZmaHdr?=
 =?utf-8?B?Q3I1d0VNT0U4cmpzZElUNUxtRjcrLzdRUUpZNFROQkRyTmFJWVVoVjBMenEz?=
 =?utf-8?B?NjRKdHVVZDdldVdPZmRKN3hpOGhWS0FFS3Y0UjhFNDcxRDF5U0xIbk5OMkVN?=
 =?utf-8?B?N250L3JOZnVFMVJiandJd0R0bVhJRjl2Z0k5YmkxM3RZbXNEWU9xL1RvU1lC?=
 =?utf-8?B?OVE9PQ==?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 5d0f4232-de82-49c9-9f45-08dd3954d3e1
X-MS-Exchange-CrossTenant-AuthSource: DS0PR11MB8019.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 20 Jan 2025 13:17:45.2287 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: 5XJ0ZCjM67sm/zk5e+HmBFhQALIQdFfNKNX3Rh7i/wSrHMdmQOijgAnbYXqGl2NejCuEzpdOoHHkQpfN8o7FP6GK8VTAmaqV3NakTNAjDZ8=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: CO1PR11MB5105
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

Hi Nitin,

On 2025-01-20 at 13:45:16 GMT, Nitin Gote wrote:
> Fix all typos in files under drm/i915/display reported by codespell tool.
> 
> v2:
>   - Include british and american spelling, as those are
>     not typos.
>   - Fix commenting style. <Jani>
> 
> v3: Fix "In case" wrongly capitalized and
>     also fix comment style. <Krzysztof Niemiec>
> 
> Signed-off-by: Nitin Gote <nitin.r.gote@intel.com>

Reviewed-by: Krzysztof Niemiec <krzysztof.niemiec@intel.com>

Thanks
Krzysztof
