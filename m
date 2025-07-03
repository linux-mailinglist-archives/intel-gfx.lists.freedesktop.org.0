Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id A730CAF6EB2
	for <lists+intel-gfx@lfdr.de>; Thu,  3 Jul 2025 11:31:14 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 9649510E7F6;
	Thu,  3 Jul 2025 09:31:12 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="WwJtyBnc";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.12])
 by gabe.freedesktop.org (Postfix) with ESMTPS id ABE9A10E812;
 Thu,  3 Jul 2025 09:31:10 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1751535070; x=1783071070;
 h=message-id:date:subject:to:cc:references:from:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=8d58qw0gerOI/hXrOM4aK9j/L50Lu2a7ztngHfjwL78=;
 b=WwJtyBnc83Px6CmIJkp06TIvArQbh+F9C+l60c95bszBlcW+P23eoPJW
 8TD1bG0pHs0MdX9+nzFsdq/Z7s2iyhMyLCkECLQ6VMsO3JnBIw2bMa9Yx
 jG3pspW1Oe9w2Gop44Om4q2fmU0tGTvwx5ItCnHl3KcCPX2REY+G+DBgQ
 BAScIH38iiEwpxNMqN2x4qb88uNGGNAfKvnd2BTfFqe+EIEyMZ5PzxmXP
 tnOIOogr7mRj3wJ/5ttFteney0/JefcMF4t6taWJEWu4BI1P0R+8tJWvo
 P72M7xkgNbKSIy6H6XbnXgUCeB6aOD55j9zQN/cG1RbguXCFiiEBLoDrX w==;
X-CSE-ConnectionGUID: aVwMrVbRQcGam1GFw2QBYQ==
X-CSE-MsgGUID: Krzz+P64TtO7DQppiREt5g==
X-IronPort-AV: E=McAfee;i="6800,10657,11482"; a="57660002"
X-IronPort-AV: E=Sophos;i="6.16,283,1744095600"; d="scan'208";a="57660002"
Received: from orviesa002.jf.intel.com ([10.64.159.142])
 by fmvoesa106.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 03 Jul 2025 02:31:10 -0700
X-CSE-ConnectionGUID: WnT9/xWTRLmOYceZkWLtUg==
X-CSE-MsgGUID: CvmAJmeDTJSsov/CtcatQA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.16,283,1744095600"; d="scan'208";a="185341289"
Received: from orsmsx903.amr.corp.intel.com ([10.22.229.25])
 by orviesa002.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 03 Jul 2025 02:31:10 -0700
Received: from ORSMSX901.amr.corp.intel.com (10.22.229.23) by
 ORSMSX903.amr.corp.intel.com (10.22.229.25) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1544.25; Thu, 3 Jul 2025 02:31:09 -0700
Received: from ORSEDG901.ED.cps.intel.com (10.7.248.11) by
 ORSMSX901.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1544.25 via Frontend Transport; Thu, 3 Jul 2025 02:31:09 -0700
Received: from NAM02-DM3-obe.outbound.protection.outlook.com (40.107.95.78) by
 edgegateway.intel.com (134.134.137.111) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1544.25; Thu, 3 Jul 2025 02:31:08 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=xCKDvh8e1lyc8IYOBvOrn8TbQ4iIfSnCwqIjG0EkffmyPsla0sjqc7xuW9YjYJogezMFkoGVAR0+/Cd7SXZ61uDR0wZJp0l2UvdwLIZgDYfKWe9V1obn/1mmvnXDY2Lmmh8pKQiftuUJNo1Lzq8iqX+bqiHW1Vd99qX1l4JIb0H7KCX5aY08mVyKjh8N86Hk1wRzWSgrVPP6wP0Fz29L5sO/Fa75U76oIXTn5sMOrZHsN3Gqcu3I+CwZW54ypVhtex07KIKtmzLnHSVgg8wuHYxShQ65rnPT1AevgvJ2IuFoXf93eU3QDSnbU2DeLjbeAqO/I/BYMi3gGuIi2tC3Hw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=vitfA/O7bd0ehJAMkMi73nvl3AXsTrfaP4ORbq7sgwc=;
 b=pHFYWrqjcX4sBQQtKhO0FrkXXhFjDohEUkdQK0qLYqIxYCbOh4v5v8KN/9KVVtHu5z5KIhkY8bzGq699QwIvuCiDyKUpdj7paZ8hsvgImxVm/E6bajNz6q3WuV8py0Tg8Gq8dAx6OYM2bD6rQpHHtmiGgIwgFTgt3Vbc0VXVft56wm0uApAsxdXX3VA1e/odAsGpW+L82AT8JN+2wH9movvDc77hMDPUvhy6DJwmea5aeW66VA3aUcV2XobKj4SxiMT9MOpVKWl1kjse3P04WI41YYD4dQQG7o2WTzbxWWCMN6dxE29EuBGhxPidlk34gh2hQPNeRg4E0F+sTh0tOg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from DM4PR11MB5341.namprd11.prod.outlook.com (2603:10b6:5:390::22)
 by PH8PR11MB6829.namprd11.prod.outlook.com (2603:10b6:510:22f::8) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.8880.29; Thu, 3 Jul
 2025 09:30:26 +0000
Received: from DM4PR11MB5341.namprd11.prod.outlook.com
 ([fe80::397:7566:d626:e839]) by DM4PR11MB5341.namprd11.prod.outlook.com
 ([fe80::397:7566:d626:e839%3]) with mapi id 15.20.8880.030; Thu, 3 Jul 2025
 09:30:26 +0000
Message-ID: <366899c2-e67d-48bb-8069-af77d78cdb0b@intel.com>
Date: Thu, 3 Jul 2025 15:00:19 +0530
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH 1/2] drm/i915/display_wa: Add helpers to check wa
To: =?UTF-8?B?VmlsbGUgU3lyasOkbMOk?= <ville.syrjala@linux.intel.com>, "Lucas
 De Marchi" <lucas.demarchi@intel.com>
CC: <intel-gfx@lists.freedesktop.org>, <intel-xe@lists.freedesktop.org>,
 <jani.nikula@linux.intel.com>, <gustavo.sousa@intel.com>, Jani Nikula
 <jani.nikula@intel.com>
References: <20250702084620.3837426-1-ankit.k.nautiyal@intel.com>
 <20250702084620.3837426-2-ankit.k.nautiyal@intel.com>
 <aGWLMinfzWd9IkFJ@intel.com>
 <fsyfxqbrzc5zogoyqew6xs7frdosjeewl4wj43yrduaetzdtlf@wm5utoxy2xeh>
 <aGWkwQZB_hSsjgQ4@intel.com> <aGWpag7dGRUAVZfU@intel.com>
Content-Language: en-US
From: "Nautiyal, Ankit K" <ankit.k.nautiyal@intel.com>
In-Reply-To: <aGWpag7dGRUAVZfU@intel.com>
Content-Type: text/plain; charset="UTF-8"; format=flowed
Content-Transfer-Encoding: 8bit
X-ClientProxiedBy: MA1PR01CA0151.INDPRD01.PROD.OUTLOOK.COM
 (2603:1096:a00:71::21) To DM4PR11MB5341.namprd11.prod.outlook.com
 (2603:10b6:5:390::22)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: DM4PR11MB5341:EE_|PH8PR11MB6829:EE_
X-MS-Office365-Filtering-Correlation-Id: f9b6f592-f3f7-47b1-3df2-08ddba143e03
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|366016|1800799024|376014;
X-Microsoft-Antispam-Message-Info: =?utf-8?B?M0hjWFdNK1JCNUJWU1VaOHRmdEVPVUh3YXQvdnhaSjhnd0hhd1MzYm5FZURl?=
 =?utf-8?B?cjJ5ZXdTU0NzMkdrUTFUTlBQRVFoYlp1cVAxcEFVdjFaNlBWYVNsaVZKTjRH?=
 =?utf-8?B?K3dFa1VVZGJKUVhZelRGVlF3Wkdmb1NSSXhxdVJKZEtpRGcveVBVRWE1ekNz?=
 =?utf-8?B?dHR3OWdySUhiRGxpRlhxS0liWWtQNGhOOGtvNzB5N3lialdCZWZLMkVhWWt3?=
 =?utf-8?B?VlNZRHlCYi9sdjd2UEQ4Y2JRdDlsMXlKdUtTYTd2Sk5HRE9pM2htaVViYmky?=
 =?utf-8?B?dzVteVhzNzVtcXhpWVJrazR6NXZlbVE0Q0hiSW04LzBScVlEZmVUY3hpdGJB?=
 =?utf-8?B?czBON3V2RldvOXdFMXdjRjJMUWlLZDBWQUpoRzZHS3JSUTFJUEF2anNaeVcv?=
 =?utf-8?B?REx5aXFFa3RMQ2syUjhPUDlFR3NmUFI5SU1NemhqTGl4L0QwKzQwT2FhNzQ0?=
 =?utf-8?B?dnpUMFVkSEZHeVNWUWsyMWZSYkUwWmN5Y0d2M1lJTWs3UGlrc1QreTRybzFv?=
 =?utf-8?B?cFJmS1RoLzdvWjBPWlczcW5TazV5UWM5TTh6VFZKV1NNN0szR3FNZ282RmhF?=
 =?utf-8?B?YUtjYWJIZEZIRHcyQk1kWlRjeWlzVHhXRE5CR3RNMmIrVEdibTZDZHhLMkVG?=
 =?utf-8?B?QWdyc0NMWDVVbE5Vb1NHeUd0RmVrSjRvTCtBS2pQK0VxZitRTmdTcG9lQUdl?=
 =?utf-8?B?d0FCdGU2dkp3QkdEQUpVdTI4RlEvd212VkpVMld4V0MxQVBOanpsUGpVK2tO?=
 =?utf-8?B?ZmhVeEFSZjFYMWpxdExGMStWV2o5ZlNVbE9xaVhJaEFtNjJ2OWRJZGJ1ZCtn?=
 =?utf-8?B?Zkt2RGcwTTFhUnRlYmR3RVhoVHRqZkhiTTVyNTEvN0g2akg1TnJmNS9CcXpx?=
 =?utf-8?B?V2RTaEwvM1lnSkVVTUZxVU9NQXA1VDhqUDlBc3ZnRzA5VWloYk9EeEkzZVpp?=
 =?utf-8?B?TUQ5TVpNYUcvZk5keWdzSVg4SW5UMU50dEIyWHdUUXd0MituTzN5UVVHOGpn?=
 =?utf-8?B?dkRycVVsemNBcUwzZ0xLSG5QZzg2SGZpZGU1S0dJZ3NoejdpR0IrQWhDY2RF?=
 =?utf-8?B?VVZJaDA3NWZsUXhVc3JrUXdnRmx1Y2FTenZOVzF6UTJMVm5HTTdSQkN5RktB?=
 =?utf-8?B?akpPVmp4R3prVEdtdmptSFI0RWVZSDIybTcybGU2NVpvcHR1SHpFL3NSMmQ0?=
 =?utf-8?B?ZXVPSnFRbFpMM1IrNkhxL01vS1NqUTAwWUtlWXo1NEx6T3RaS0Exd1M1Q3pp?=
 =?utf-8?B?U2F4QjhQRUhLb05EcnMwSTQrazhuYW0yaW14cCtvcEZlRmV1TXFkazlvdzJv?=
 =?utf-8?B?ZmFKVTBwRzZVbld0NFdQY1FXdEhHZTNVV212ZG4vNjBBcVBhK1NoWmRXWmQr?=
 =?utf-8?B?UElLT1NIRThxRE40OGRYMGF3NS83Vk9jM0p0RGcyeVVMNFl1c0c0WVlSMVZF?=
 =?utf-8?B?VWNaRGo0SllKVHAzYU92R25pUVRvNGdsclBBZUZlQ29Pc0ZKUmFwa0Z3dGEy?=
 =?utf-8?B?VjhsMWxyeldDV1BwWlk2ekVUb2x2NmV5MnRyK1VkQUtKMm9tampjUGNRSFpu?=
 =?utf-8?B?VjlXNW5teElDVFdINFZGdGtpeWd5enN1QnNCNjRtdGthVTVROHB3ZHJ3QXlT?=
 =?utf-8?B?N3pIR0RJajlQNVZNcktpSnkycHIwMmMzVXJmaUwrb1NBNXREb25vNTQ2ZllJ?=
 =?utf-8?B?L1hXSVlXR3ppTEczZUR0bXlrRkhEOUxEeWFmMjZJVW1udFFZMmNGVG0xUTg3?=
 =?utf-8?B?QUplWXIrQU1iZFFsK3pTUldzd1FpaWZ5V0hPZHU1UGFxelBqVTVIc3ZaMWJI?=
 =?utf-8?B?bVNuOFlvOUlJQWsrRFBjWDg4dldtSTFOSnBPRGRhcVF0blJsNEQvS2dYd1hx?=
 =?utf-8?B?WEVPSmxGTWxQa0UvQXJDaHhKYmZ2ZkZFV3Nlb2Y3SGtRL3BLaFNGOURyd2pw?=
 =?utf-8?Q?63vVmCDhN3w=3D?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM4PR11MB5341.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(366016)(1800799024)(376014); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?VThTTVhnMCtYSGpSSjIxV3dibCtIVENFU3JnRkRoUHpZTmV4M3BoUWlvbmtK?=
 =?utf-8?B?Mm82M09wcm4wbVRZRlF6dGYxQjlRZDE5eWlzWDNsYXNrUEN5Q003UE54Vkxy?=
 =?utf-8?B?bzhFaFNBYnJ0Uk41cVNDYTZGdDU0UUlUNFU5TTZ4QzFOREpCQTl0b0k2WnRN?=
 =?utf-8?B?VGRuMkM3NmNMR3A4VWZKcWhrZW9McDFvRlJhOVdxd1VDUHJySHh2cVVQSGlM?=
 =?utf-8?B?dWFGcUJTSm5lRW02dzRPczViQ3dneEt4R0tEeEVZUnFwZmkwNkdobmNyQ3Fi?=
 =?utf-8?B?bEFTU2tlcGw2akhOamdtWm9ZRUQxSkMva0JyVHpLSGwvWDQ3Tm9Lb01OcmhK?=
 =?utf-8?B?ekw0NlhybXkrWlRSWlExWE1NOFdLdnFSdEhkSDZJRXBjbFRCbU11dVlLNlc2?=
 =?utf-8?B?NUhYdmdCN1lieWV3YXpnUzVRRnJ4UUNWTTJCblhUSFlzVmFwMG5BOUdaMGJ5?=
 =?utf-8?B?TzlscndIRDZiTzRwa1NoNkhRYi9nQlRKMFJvL2pqOHVGRXFnQVZkR0x5elVa?=
 =?utf-8?B?N3lkNGJtM0dRWHQ3cG1vcDF0L3BtZDBacTJaSE5KZDIyZWcvK0hkZGlIZ3R0?=
 =?utf-8?B?VEkzclBockxwOXRBU1FDbWNXWW1hdnJ2MXZIUVZPd2F2dlREK2F3aHllZnh3?=
 =?utf-8?B?c1lLRnd5alRoN25ybkNwYlFJN0syWWVIOHZPWk1RcVBLTDRhT1l4TktmU3o0?=
 =?utf-8?B?R1lNdEx0aXhmYXNOSVJoQ2Iyb0NDUThWR3hwZlJPY1VSYnRUaDlQVkFyNTJm?=
 =?utf-8?B?NnFxMG5EUDFCZEdadG5zZi9xK1BUc1B3RG9BcldiUE9jajJ1b2NhcTMxMlR2?=
 =?utf-8?B?b2I0aHU2TlpZMWlRWEUrVmlIRFJaWlNSOXpWdTRMYzExaE5VVHRSQ0plS0hY?=
 =?utf-8?B?VkliVXNCa1RmYVdWM1VOZzJ6UG42dWgyWmFQQU9KOFllMDlaaVhvbEI2Rjdn?=
 =?utf-8?B?NDd2T0Zyd0RDLzlzaGMycW9Pd01oeWtNdEl1Ymc4ZElYRXNjakpqb0I5OU9r?=
 =?utf-8?B?L2p5Z0JDOTRwdncyRk85SWpTRnJjandiRnN6RVpGWDZrMDBrd1NWbitSZEZq?=
 =?utf-8?B?ZEVPcHRnN3RvejZHV011MWgxbkdiOGh1UXJVam9HckdPV3pSMEVyUzBMUHlK?=
 =?utf-8?B?YkNEU2F2V3pjVW02aFZJTmVmd1ZIR05rVVBLb0xiQ00vOFIycVgrOExvSnRi?=
 =?utf-8?B?TGhCWXJXaFo1VklHYmRpb2VWZ0dZS2l6bE5PYjJ6aDZtdWFaOVhIYlg4Zjhl?=
 =?utf-8?B?RGwzNzU4dHRJdG1Sem9QaXNhOXlyTWVORWQ3UTBEQ1BFczZaZXdmV01NY0Z1?=
 =?utf-8?B?YUI1VGZhQ21ORVVrWFIzT3JoQktVekR1MXBvV1J3NHRwV1g2SCs1bEJVSVQz?=
 =?utf-8?B?WE9lenZWeU1zcmhkMk92NzBRZ1d0TjF3ZkhZVW5XbnFreS94alU1ZFRLSlVQ?=
 =?utf-8?B?RHliZDg4TUZXKzdqQ1p4YTRnVmF4OE81UU4ySmVQUVNqVTZTUW8vWm50VHl2?=
 =?utf-8?B?TndSTnY3TFFLYjhBNDhJaUpLVVdPOHQ0M0dqZVFnSDlROHh3cUVWSVFvNy9z?=
 =?utf-8?B?WWREK0NuSDlmUGVnUlllQ0dDRDdrbFBVNm1XVEhSeFNiS3FwT1dyS09BS3Nt?=
 =?utf-8?B?aFhxcEpXRVZ0Y0lxN0kxY3VBVUYzb3A4d25OYURCT3d2TFRRSy96b3hOdjZx?=
 =?utf-8?B?cHB6VHJJUmppOWxpRmtBSDVtaUFNNXVRdXhMU1AxSXgvYjZaMlV2VTQwY203?=
 =?utf-8?B?TXhGRU4vOStQZ2MzSHZaSHRWY204UDlwZ2toMTVSb2hyTEppL29IN3ZTWUx1?=
 =?utf-8?B?TTV2cEN3d3YwQWxzOWVpYnVYWDdxL0tNdDUydzdEQUh0VS84dUtXdXV1azQv?=
 =?utf-8?B?dnpoV0o0YldHTy84ZDhmZHQzdUEvaXJFTWlETC9MSFRZdlYxZm1HSnlDQkQ5?=
 =?utf-8?B?NW1OYkY1Sk5vNUcxWEVKYlI1TUE0em1TQVdJOXQ5eDE4UmZEOHQ2dnJnZmpk?=
 =?utf-8?B?eUtvdHpFUXh0R0NjL01kS1BSU2h5NDRGYmQ1OFMzRm5HYTlwYWtia0VJcUtD?=
 =?utf-8?B?dXU5bWxCU3Ira1NqR0dvaVpjVk9zYnNBaEpyaWlJOWJjSzFoQkZEa1BvZWhN?=
 =?utf-8?B?NjdjUTZvVlRvd1hRUjlObXdwbnBRQzhQTXBjLzRmVUFkSERldjZNQVRzT2Zz?=
 =?utf-8?B?ZVE9PQ==?=
X-MS-Exchange-CrossTenant-Network-Message-Id: f9b6f592-f3f7-47b1-3df2-08ddba143e03
X-MS-Exchange-CrossTenant-AuthSource: DM4PR11MB5341.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 03 Jul 2025 09:30:26.4195 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: jtqp8auAp5+LRBtwRapzil5I6rE2W4qhXYyflfmNqrJO3uLLMvA6YXm5w6ryMYdTr8BHsT/BTS1pjQFZW2gbF8FD9sQjKvJk+bzwUXyXwpI=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: PH8PR11MB6829
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


On 7/3/2025 3:19 AM, Ville Syrjälä wrote:
> On Thu, Jul 03, 2025 at 12:29:37AM +0300, Ville Syrjälä wrote:
>> On Wed, Jul 02, 2025 at 03:25:21PM -0500, Lucas De Marchi wrote:
>>> On Wed, Jul 02, 2025 at 10:40:34PM +0300, Ville Syrjälä wrote:
>>>> On Wed, Jul 02, 2025 at 02:16:18PM +0530, Ankit Nautiyal wrote:
>>>>> Introduce a generic helper to check display workarounds using an enum.
>>>>>
>>>>> Convert Wa_16023588340 to use the new interface, simplifying WA checks
>>>>> and making future additions easier.
>>>>>
>>>>> v2: Use drm_WARN instead of MISSING_CASE and simplify intel_display_wa
>>>>> macro. (Jani)
>>>>>
>>>>> Suggested-by: Jani Nikula <jani.nikula@intel.com>
>>>>> Signed-off-by: Ankit Nautiyal <ankit.k.nautiyal@intel.com>
>>>>> ---
>>>>>   drivers/gpu/drm/i915/display/intel_display_wa.c | 15 +++++++++++++++
>>>>>   drivers/gpu/drm/i915/display/intel_display_wa.h |  9 +++++++++
>>>>>   drivers/gpu/drm/i915/display/intel_fbc.c        |  2 +-
>>>>>   3 files changed, 25 insertions(+), 1 deletion(-)
>>>>>
>>>>> diff --git a/drivers/gpu/drm/i915/display/intel_display_wa.c b/drivers/gpu/drm/i915/display/intel_display_wa.c
>>>>> index f57280e9d041..f5e8d58d9a68 100644
>>>>> --- a/drivers/gpu/drm/i915/display/intel_display_wa.c
>>>>> +++ b/drivers/gpu/drm/i915/display/intel_display_wa.c
>>>>> @@ -3,6 +3,8 @@
>>>>>    * Copyright © 2023 Intel Corporation
>>>>>    */
>>>>>
>>>>> +#include "drm/drm_print.h"
>>>>> +
>>>>>   #include "i915_reg.h"
>>>>>   #include "intel_de.h"
>>>>>   #include "intel_display_core.h"
>>>>> @@ -39,3 +41,16 @@ void intel_display_wa_apply(struct intel_display *display)
>>>>>   	else if (DISPLAY_VER(display) == 11)
>>>>>   		gen11_display_wa_apply(display);
>>>>>   }
>>>>> +
>>>>> +bool __intel_display_wa(struct intel_display *display, enum intel_display_wa wa)
>>>>> +{
>>>>> +	switch (wa) {
>>>>> +	case INTEL_DISPLAY_WA_16023588340:
>>>>> +		return intel_display_needs_wa_16023588340(display);
>>>>> +	default:
>>>>> +		drm_WARN(display->drm, 1, "Missing Wa number: %d\n", wa);
>>>>> +		break;
>>>>> +	}
>>>>> +
>>>>> +	return false;
>>>>> +}
>>>>> diff --git a/drivers/gpu/drm/i915/display/intel_display_wa.h b/drivers/gpu/drm/i915/display/intel_display_wa.h
>>>>> index babd9d16603d..146ee70d66f7 100644
>>>>> --- a/drivers/gpu/drm/i915/display/intel_display_wa.h
>>>>> +++ b/drivers/gpu/drm/i915/display/intel_display_wa.h
>>>>> @@ -21,4 +21,13 @@ static inline bool intel_display_needs_wa_16023588340(struct intel_display *disp
>>>>>   bool intel_display_needs_wa_16023588340(struct intel_display *display);
>>>>>   #endif
>>>>>
>>>>> +enum intel_display_wa {
>>>>> +	INTEL_DISPLAY_WA_16023588340,
>>>> How is anyone supposed to keep track of these random numbers
>>>> and what they mean?
>>> they mean there's a h/w workaround that requires that and this is the id
>>> if you need to find more details about it or what platforms/IPs use
>>> that.
>> I don't want to go look up all the details in the common case.
>> I just want to read the code and see that it generally makes
>> sense without having to trawl through the spec/hsd for an
>> hour every time.
>>
>>>> The only time I want to see these numbers is if I really have to
>>>> open the spec/hsd for it to double check some details. Othwerwise
>>>> it just seems like pointless noise that makes it harder to follow
>>>> the code/figure out what the heck is going on.
>>> what is the alternative? The current status quo checking by platform
>>> and/or IP version, dissociated from the WA numbers?
>> I find it easiest if everything is in one place. I think every
>> w/a generally should have these:
>> - which hardware is affected
>> - what other runtime conditions are required to hit the issue
>> - what is being done to avoid the issue
>> - a short human readable explanation of the issue
>> - the w/a number for looking up futher details
>>
>> Splitting it all up into random bits and pieces just means more
>> jumping around all the time, which I find annoying at best.
> I suppose one could argue for a more formal thing for these three:
> - which hardware is affected
> - a short human readable explanation of the issue
> - the w/a number for looking up futher details

Whether adding comments with platform and relevant information about Wa 
would be sufficient?

Something like:

/*
  * Wa_16025573575: PTL/WCL
  * Fix issue with bitbashing on PTL.
  * Set masks bits in GPIO CTL and preserve it during bitbashing sequence.
  */
static bool intel_display_needs_wa_16025573575(struct intel_display 
*display)
{
         return DISPLAY_VER(display) == 30;
}

Or we want to have some wa_struct with fields for platforms and stuff?


Regards,

Ankit

>
> Might be still a real pain to deal with that due to having to jump
> around, but at least it could be used to force people to document
> each w/a a bit better.
>
> Basically anything that avoids having to wait for the spec/hsd to
> load is a good thing in my book.
>
> There's also the question of what to do with duplicates, as in often
> it seems the same issue is present on multiple platforms under different
> w/a numbers.
>
