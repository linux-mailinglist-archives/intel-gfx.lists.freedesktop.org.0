Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 3D810A155E2
	for <lists+intel-gfx@lfdr.de>; Fri, 17 Jan 2025 18:42:14 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 51B7410E363;
	Fri, 17 Jan 2025 17:42:12 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="L6Os3aSk";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.16])
 by gabe.freedesktop.org (Postfix) with ESMTPS id B872D10E363
 for <intel-gfx@lists.freedesktop.org>; Fri, 17 Jan 2025 17:42:10 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1737135731; x=1768671731;
 h=date:from:to:cc:subject:message-id:references:
 in-reply-to:mime-version;
 bh=ygjbfUFLr09VDit8vhnGVZVCOfFnyYX+bKtrEhLilJc=;
 b=L6Os3aSkFIj3eureN5zN1Po9UlnVP0jovj13cOhZSNGJM1izoe3Hq3NA
 hJMWgA3XG7B4v/CY9NEHeMGvpkT5d204jB2xn7GmZ3TxPT8ZqVhS2+oY0
 14Z1lhbMSDqfdQI1N8kbb/dReBJ3Wn4Imt/guPLLKK8M0eXcAx/2cg1js
 IXz2l2DZXFzk2KnUZkh+xyVVhiQNamc9IWTH3apfD/Rsc6mB0aLm3qffj
 3t9A8YgDvcqYK4ygPRhS4hQZWUrqRsD/9VHnhqEKnvNvcZtYlCbAW8yJ7
 8v20widre5MbUGps331/VLe9wzIdFx3cwDgM7/Y5zzEAbXOn5PF+QZS5v w==;
X-CSE-ConnectionGUID: m3BodrN6QZmWp62wcdVkjg==
X-CSE-MsgGUID: WI5fj52pSQCp+f/FjSu7qw==
X-IronPort-AV: E=McAfee;i="6700,10204,11318"; a="37729813"
X-IronPort-AV: E=Sophos;i="6.13,212,1732608000"; d="scan'208";a="37729813"
Received: from orviesa010.jf.intel.com ([10.64.159.150])
 by orvoesa108.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 17 Jan 2025 09:42:10 -0800
X-CSE-ConnectionGUID: zLOn3XrySBObpPDbCJ/3Sg==
X-CSE-MsgGUID: zuRHTLW6Tp+E15XNmeysVQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.12,224,1728975600"; d="scan'208";a="105699478"
Received: from orsmsx601.amr.corp.intel.com ([10.22.229.14])
 by orviesa010.jf.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 17 Jan 2025 09:42:10 -0800
Received: from orsmsx601.amr.corp.intel.com (10.22.229.14) by
 ORSMSX601.amr.corp.intel.com (10.22.229.14) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.44; Fri, 17 Jan 2025 09:42:09 -0800
Received: from orsedg603.ED.cps.intel.com (10.7.248.4) by
 orsmsx601.amr.corp.intel.com (10.22.229.14) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.44 via Frontend Transport; Fri, 17 Jan 2025 09:42:09 -0800
Received: from NAM10-BN7-obe.outbound.protection.outlook.com (104.47.70.41) by
 edgegateway.intel.com (134.134.137.100) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.44; Fri, 17 Jan 2025 09:42:09 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=n1EZ7Ly5LP/qw2vBt7yB4H9tKzu97Sux/Y8a6GIFnVhu1CNjlR9hTaDXCz2Txscl1gWHj/PdWTmQkuFO+G6My8Zudm7rJvKqZ1hLWYgwsK7KeAEbsveKfYrEVQKzOIGY5nXfsbhd/7AOhFK6S9391DxoUHQ5bvYKQjrVGMpk1wEtVc0c1GlOxAkIg9DbhXlyPuEcfkv2YZ31tBzkRNde4I1mcThWQRhr0cCS8rHHWjP3+ZJrWvmFz8aBRZJSIUDrELyDAxFoYRi8szwlz0O66tgUED5O9hmSh5E7H8gKUDonQXHEFzP7rhqjlLJVzoRm5QoAYMPq2O2skyVTvtVUYg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=VheLG5TQM1k/IyUNVSQfULAlz2jp8JTHFp1tFz3hYDU=;
 b=IwvmV1OvWhoRPkvYKavHA4lOtXRUbXNn/Y8kN9qwFwTwCzS1+0zClfEBWXjJDc0Myiko13hwHjkebylFxOtDq0dybkCy4SuNtt+VC+B8HwjWaNVYDQej8csTGylRg0bLlvuMqpyOrmLBj1nMAfXYf6/Wqd1H6zbKjFL+pcpdQBfwMXQRuRkMzNzDEn7iArvA2tNft1mzpZG9G42x/xgHiN4TjN6uko+KZE9AM+rGqCgIgEGcV6sLgHbfNDa4gQOTiPHlBg2jlHUNQ8bbpn2glTgFaL3pPtCPfX4i1RPWdYFs4Cq8O9ytDXUlSRfBhnhnGSH0nT9UUiAJ4iw1Syrr0w==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from DS0PR11MB8019.namprd11.prod.outlook.com (2603:10b6:8:12e::18)
 by SJ2PR11MB8538.namprd11.prod.outlook.com (2603:10b6:a03:578::16) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.8356.13; Fri, 17 Jan
 2025 17:41:40 +0000
Received: from DS0PR11MB8019.namprd11.prod.outlook.com
 ([fe80::d2ab:ff8b:3430:b695]) by DS0PR11MB8019.namprd11.prod.outlook.com
 ([fe80::d2ab:ff8b:3430:b695%3]) with mapi id 15.20.8356.010; Fri, 17 Jan 2025
 17:41:40 +0000
Date: Fri, 17 Jan 2025 18:41:34 +0100
From: Krzysztof Niemiec <krzysztof.niemiec@intel.com>
To: Nitin Gote <nitin.r.gote@intel.com>
CC: <andi.shyti@intel.com>, <jani.nikula@linux.intel.com>,
 <intel-gfx@lists.freedesktop.org>
Subject: Re: [PATCH v3 7/8] drm/i915/display: fix typos in i915/display files
Message-ID: <ugaobixew6oom6kmic4o7yjuzfyv4doee2j3dmynufqa6d5t6d@e2jxj4fa45wp>
References: <20250113184318.2549653-1-nitin.r.gote@intel.com>
 <20250113184318.2549653-8-nitin.r.gote@intel.com>
Content-Type: text/plain; charset="utf-8"
Content-Disposition: inline
In-Reply-To: <20250113184318.2549653-8-nitin.r.gote@intel.com>
X-ClientProxiedBy: VI1PR06CA0094.eurprd06.prod.outlook.com
 (2603:10a6:803:8c::23) To DS0PR11MB8019.namprd11.prod.outlook.com
 (2603:10b6:8:12e::18)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: DS0PR11MB8019:EE_|SJ2PR11MB8538:EE_
X-MS-Office365-Filtering-Correlation-Id: 2e9baaf3-18d2-4f93-2285-08dd371e32e3
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|1800799024|366016|376014;
X-Microsoft-Antispam-Message-Info: =?utf-8?B?dDgzZ2xPYmRJQnVaVlVLYXI3ajZ2UjBMZUJJVis2aDd1UXdDVXN1Vk1wYUVq?=
 =?utf-8?B?NEdwMnZ5NTlYRWt3Sm1pZ25oRlRhNWNjU3ZWQVIyVTl4OEpDZFhOd2xTcmhj?=
 =?utf-8?B?TzAxOW9sU2pKSXJrL3JGYWNYS0paL1JzeUlpc2ozLzBvZnpiNDVtdDZvNFgy?=
 =?utf-8?B?V0lLMW5wTFFMQ0FwaWhlQmEvcm01WmkrQnoyYnAvbElSZDNMN0tKYjN6Y2ZB?=
 =?utf-8?B?OEpJNjJUMEtXdnFtL0IwdVpTSWhKc1pUYjVlZkxUUWs2MXpDVFZHRFBVV2No?=
 =?utf-8?B?RkFERTkzNXNOVFJLVGtDTVA1c0s0cjJhRXF3ZTJzNVJ2VU5yN05SQVpPQndR?=
 =?utf-8?B?cExBR29vYnd1aGYvNDhPdGdGL0dpb2h4NjVrSk13Rlg3UHB2a0xPVXpOK0Rl?=
 =?utf-8?B?cDdYS0FKWEJrWHpJSlhOSmp3VXlzeDNENmM3NktjZlNvRlFXYzVZWEs0QTJ5?=
 =?utf-8?B?TmFISSsxTDB5UmxPdmF6bFpiSFladzFuL2t2REcxOHdFN1RtZVd0cDlDWHBG?=
 =?utf-8?B?UDk1dUFkcE51RjRmUzhlQ25PTlpOUVZnVUd3UmwvaFNhMVAxZllpQW4yaGNC?=
 =?utf-8?B?RGMrQy96OTIycVp5WHp0T1RJUFZIYU9tbDc2blB3TUM4VlQyMzRVRTQrY3V4?=
 =?utf-8?B?UEY0dWhqbmxzRk04WEt0ZDA3Ymw5a1RHRnliTHRpQzdpaGV1b2IzempyVXB3?=
 =?utf-8?B?UGZWVG5aSXZFQmg2a09KeDM2QTFzZ2NsR0pzMDdnRjVFbk85RkF2YU1FMVZ0?=
 =?utf-8?B?MmJzSmMrSGp1RVVReVJBT1BubVRiYUt4c2o2RUNTTlR0UUdHbzJkcjU1WGEy?=
 =?utf-8?B?VE5mSENGZlVWeTNvZ2I3clRhQnFuZDJNRzVGb2VtbUFCRW5VZmdlQzZud0VM?=
 =?utf-8?B?RzNSTytXNTJON2FydFBxUzJFUy9TUDFiYmVETDFUay9wbGNqZnJjZE9PSCtN?=
 =?utf-8?B?dHZsRG43Zzg0WHBLTVlUSzRWVDZJR1krejQvamM3ODdkQjRQdGV3Zjl2aXNM?=
 =?utf-8?B?WFprQWpHL3RRUStWV3l4Yjc3c2RaL1FObk5ScmxsU3hneDc1ZjZWL09yUXBz?=
 =?utf-8?B?VnU4VjVRa2E2WU83Ky9mMjRtUGQ2cFduOEtJRlAzZmIzQ21SenExenA2d0Zk?=
 =?utf-8?B?a0RUSzlkMFNPQjVITkZmMjI1UTg3ckRYYnMwdFF1Z05adFRMeEhVSTVxR0hl?=
 =?utf-8?B?V1FqWTJ2dzBINzF5OVdBWFZYMEN6VFdpTnN3VXRXczlFSTdiVEhBWDMyQjJh?=
 =?utf-8?B?ZUE3LzljRGNnOE8vd2pQREpEZkk5NDFXSUYrbG1xQ1JHTmdDbVZoNXpzRTF3?=
 =?utf-8?B?V0R0RnF2UzRvYm03Qmo1aHZPRTJGc1dhRmFCaUMrWkIwUzNEckR1b1BTT3Zo?=
 =?utf-8?B?d2F1SVI5bWtmd1ltTXlka2xEbE9VWDBFYXE5WWhtblhOVGxrV1NCaTNVQ1Zm?=
 =?utf-8?B?cFV5R2VaWTkwRHdReWxrOTdaMnJZalZ3TUlIanJWY2djeU9EZWlIRzhSanlG?=
 =?utf-8?B?azFSOEpPMkg5bHNoRnhPejlSNlF5MTVjWitPcHhzMU51Y0ZEMVliY3R4QWR6?=
 =?utf-8?B?WGtUbElRc2lzUWFHa243K0pRem15RGFVSEcvQll0bklqYTZIc2RHMlhSWEti?=
 =?utf-8?B?MWJUY3FnR0lROFFJWDdLQ2gvbjNxU1hzWmMweEtTTk1NajVCVHZYaGVNUVFY?=
 =?utf-8?B?dy9tbzhDMm90andIVlltNmxLTzZyUkRhRjVCOWhtLzYvOTViRHhxaU9ScW9Y?=
 =?utf-8?B?SDloSWZFKzFaVlpZeVUxMitSMVFsVWRrekVzb2tUZXAvTjJwV2prSjhBTkRJ?=
 =?utf-8?B?YXlUUG52ZURuWG90bmJuQ1NKQnRpVXBlUDFDM2hNempQVGdOWmFpclNJanE3?=
 =?utf-8?Q?rY5An5KjPVc0n?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DS0PR11MB8019.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(1800799024)(366016)(376014); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?WWZRRzQ4ZUxlTDNYVm9vU0FDMEh6TDgvZWtzZjE0WmlkSDFjUzRCUm84Tzhu?=
 =?utf-8?B?K3grK3E1dk9FcmZ2d3piVDV2dk1vcGFhK3JqdW9KSlMyUTlKT1JmL0o3R0Nr?=
 =?utf-8?B?U2tEa0ltbjB4V0pCVWFEdXpxTVJQaytoaUJmajE3TnRpTm9kbjNIV1JDRzJS?=
 =?utf-8?B?NnIxdlRjQklPY0RhR3JHbm5FMzZwcy9qMHJkVjRvZEdtOG00UEMxYmVLRGMx?=
 =?utf-8?B?d2UyWEsxcEdvUGNIWmR5WFZ5VDB2TEl1b2lGSkRRY29GSlc3YnllSGNyVzRl?=
 =?utf-8?B?QzdudkZoTTVWdldrRHNobUxmdG95eDhRR2Vvc3dlV2RCR3RzaHYrejJJWExn?=
 =?utf-8?B?bWpjd3k0eEJHRjVuN01BS1E2SnJQUlEyUnZIdEhQNVlMR0RNckNFSVNqSzEz?=
 =?utf-8?B?U011QWd5WDRlMTZHemNyTVlmcks5VlZzaUUxSzJSZXUvckxHYU93TE1RWUc2?=
 =?utf-8?B?K1J1Um92WXZkcmp6TkZZYkpidFR3N0dpTHROTzhESDJPWXhNeWhJSERXakl1?=
 =?utf-8?B?a1plaXQwRTd2OWQvR1VDRlovOS9YZVo1RGREakZFNWtuTG9kenN0V0t3TUV3?=
 =?utf-8?B?a3lXUFhNck02ZTltOFcrYlRDbUpMUlNQS1pmczB0SnM5UWVpbXAranNwdmNK?=
 =?utf-8?B?aTJ0VXlsT2JrdEEvTnY1aUk4UnZpMlE0QWUydy85YnlDTjdvcmVGeFhYUW15?=
 =?utf-8?B?blpSUnlNMlhXNFhxQ2szMjFYSG5Sa1JqdEtqVXk5eTVsak05V1JLUFl0d0lk?=
 =?utf-8?B?amlPS0hqTDcrdmwvay8vSUx1RTFUT2dMWGNkTjhzcnRZcEpLS0Nxb1h3WW9G?=
 =?utf-8?B?dy9qU21IMlQ0YmY5YnY0UDE0dVI1V3pRdms5aURsRTFrZU0yUDlNUjNyOWFi?=
 =?utf-8?B?NWhWMFJRZzUzQ2F1Y3VlNDFmZkgzLzN6VnlucXlqUHBFMjZTM3FlRmdxcUJJ?=
 =?utf-8?B?aitRSHFDeG1wUEIvVkRScE5NUVBzcnU4dEFuTEd2aXI3NCtYMVZRZ2RQTUd4?=
 =?utf-8?B?M3UvbFRjZUh2bVpVb2NyTktHZkQ3U0tOK3dIb0MydXpJdXVZb09TZ25hUGtH?=
 =?utf-8?B?aERySlg0bXlKeS90THRvaGhYaHA0QnNmMWZQSG96NjZlQUxSVnNsSzVGT2th?=
 =?utf-8?B?dXkwTEg0RFZuNFlrSW4rV2ZadU9YckFTejJNQmVGS0M3YnJ1djhieWNQTDVM?=
 =?utf-8?B?Sm1ra2dLc3dzRHR6enRCbTlOUkVaQjVFUi9QV2xiQmZFUDZWOEVwRFYydzY4?=
 =?utf-8?B?YkQrSUo1ZnhhaTRjdHczQ1pjdklENmZJbUw1SzRWNTJYb2xaVC80QnFTWHF5?=
 =?utf-8?B?UGxUVWV4S0ZCUGRRYmJOMGxCNEwrRVloWHZGL2tMWWlMakVqQXFZTG42eDVP?=
 =?utf-8?B?QlcxODY0S2c2cThaTnNZZnhVbzRBS016M1JpNEN2dmVhbjJEUmR1ekZENzhB?=
 =?utf-8?B?WGQzWFllcEFxYm0rY2w5YURtVmpmTUpoU0w2TFo3RmJ5N3M0TTNWbXl2Qk80?=
 =?utf-8?B?U0x2Qnd5cHN6cnRMNjJEU3JZRTZMZmFscHBaNXFEaUV3SlBJelA3c2RTc0J6?=
 =?utf-8?B?M0toTHZPZXhtNGZXMUJwNmgxWmVLY0drWmJSRGNLdXllNzV1b2dSR0d6VFRh?=
 =?utf-8?B?c0ZqM3lRODNZclhRdXBCd3U2RlA1VHZ1TzhsTXVhVms3akJmYnFSVWp6aDJD?=
 =?utf-8?B?SXRkQWdCQUM3ZGhkcDBwYWErbVRhVS9iYnV2SnVDRzFvK2dtQjBheWpuN1Ev?=
 =?utf-8?B?bWtjWnB0bkhZVnQ1QU5aaVlDd3RQN2lJeDMrTUIrS2JoOGEvU3ArUkx1Zzlv?=
 =?utf-8?B?TFlkay9XQmE5T0g3aGo0MWNESkhJRUJoKzB1N1NzNE5FaGcyNGd6aFY5SDdk?=
 =?utf-8?B?Y1dHMlZQTm5hc0RrQm9SUjFyYi85Q2swK052N0tUemhqc3J0MXZCYVVRaFRE?=
 =?utf-8?B?UENzSG96S3ZXT3VzWFZYajVDT1M2OHBURnpnQ0ZTeHFOZkpNSS82UXZJKzZs?=
 =?utf-8?B?VTZ3ZzZtS2M1ZEpYR3JQdy9haVNUOFVLa3VKQ2s0aUlLcWJ6MEJRRThMV01o?=
 =?utf-8?B?ZjlsYVFsdCt0TXRQaENxS3pkQnVlbDhGQkZRNDNRRnpVTEo2Zm5qV3ZKOUlv?=
 =?utf-8?B?VGFqb2NCOW9MMVFwRHN5MWVyK0Vmd2srMnZYcUNBazBDSVc4d3lKVUk0RmYy?=
 =?utf-8?B?NEE9PQ==?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 2e9baaf3-18d2-4f93-2285-08dd371e32e3
X-MS-Exchange-CrossTenant-AuthSource: DS0PR11MB8019.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 17 Jan 2025 17:41:39.9884 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: MBvFOql7iQ/L3nita1kHIGDufm9/Hl5Qb+YYccImtSPVG95MVXzbykF7EIzuaNxAC9F78QGOPoPRI0Vcq5SCE1qrf4NpL1/3i2nm6zQExk4=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SJ2PR11MB8538
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

...

> diff --git a/drivers/gpu/drm/i915/display/intel_crtc.c b/drivers/gpu/drm/i915/display/intel_crtc.c
> index c910168602d2..14fdaf675636 100644
> --- a/drivers/gpu/drm/i915/display/intel_crtc.c
> +++ b/drivers/gpu/drm/i915/display/intel_crtc.c
> @@ -96,7 +96,7 @@ u32 intel_crtc_max_vblank_count(const struct intel_crtc_state *crtc_state)
>  	struct drm_i915_private *dev_priv = to_i915(crtc_state->uapi.crtc->dev);
>  
>  	/*
> -	 * From Gen 11, In case of dsi cmd mode, frame counter wouldnt
> +	 * From Gen 11, In case of dsi cmd mode, frame counter wouldn't

"In case" is wrongly capitalized here.

>  	 * have updated at the beginning of TE, if we want to use
>  	 * the hw counter, then we would find it updated in only
>  	 * the next TE, hence switching to sw counter.

...

> diff --git a/drivers/gpu/drm/i915/display/intel_pps.c b/drivers/gpu/drm/i915/display/intel_pps.c
> index eb35f0249f2b..f2c1280b51c9 100644
> --- a/drivers/gpu/drm/i915/display/intel_pps.c
> +++ b/drivers/gpu/drm/i915/display/intel_pps.c
> @@ -1502,7 +1502,7 @@ static void pps_init_delays_vbt(struct intel_dp *intel_dp,
>  		return;
>  
>  	/* On Toshiba Satellite P50-C-18C system the VBT T12 delay

You can fix the comment style here.

> -	 * of 500ms appears to be too short. Ocassionally the panel
> +	 * of 500ms appears to be too short. Occasionally the panel
>  	 * just fails to power back on. Increasing the delay to 800ms
>  	 * seems sufficient to avoid this problem.
>  	 */

Thanks
Krzysztof
