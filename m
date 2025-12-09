Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 12829CAFF16
	for <lists+intel-gfx@lfdr.de>; Tue, 09 Dec 2025 13:34:24 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 91ACE10E536;
	Tue,  9 Dec 2025 12:34:22 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="caUGYmB/";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.14])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 63EE910E52E;
 Tue,  9 Dec 2025 12:34:20 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1765283660; x=1796819660;
 h=message-id:date:subject:to:references:from:in-reply-to:
 content-transfer-encoding:mime-version;
 bh=2/QJuMm9wM1wYPGFoDiro7io2MHm77unW3lJ3Nexh9g=;
 b=caUGYmB/aSHiTx/78kP/oKDSq8UlzTNjXc4tKdnsOTlC3qHWl+aI01ZN
 2cKclXsjKGsAcAtj9Mo8xMD+gmQewM592UGQmA9Vj0TlXg7ZqyXl/jm4n
 EvXCzhydTHxcFgTxRf+MusuldYOp3ZM3gg7NsmgxAZK1Z3raJ65s3L/90
 +t2tzmuuNQH5svDAdk7NSfnAKttbD6UB8brrO/WMN9WO2pLmOWHl6Ot4I
 3uw/DOK115FaUr22vTt5RrIGryvVr9aQWiH0oFWVdxj31c54HJhNJOKwQ
 3JaBbQ56sm6Sla+fMqfdtbJ9BSPanGWi82OYRhKqD/35ZemJumK1fb8yY g==;
X-CSE-ConnectionGUID: 0J/uK3ImQFaDU+z06vlDiQ==
X-CSE-MsgGUID: TMw7bOp2SFq+o3yPjAo3NQ==
X-IronPort-AV: E=McAfee;i="6800,10657,11637"; a="67274788"
X-IronPort-AV: E=Sophos;i="6.20,261,1758610800"; d="scan'208";a="67274788"
Received: from fmviesa004.fm.intel.com ([10.60.135.144])
 by fmvoesa108.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 09 Dec 2025 04:34:20 -0800
X-CSE-ConnectionGUID: OGcTMsiZTNqVyGNW1kNr1w==
X-CSE-MsgGUID: WxzHu7ltQvege+5dUaDwfw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.20,261,1758610800"; d="scan'208";a="201139611"
Received: from fmsmsx902.amr.corp.intel.com ([10.18.126.91])
 by fmviesa004.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 09 Dec 2025 04:34:20 -0800
Received: from FMSMSX902.amr.corp.intel.com (10.18.126.91) by
 fmsmsx902.amr.corp.intel.com (10.18.126.91) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.29; Tue, 9 Dec 2025 04:34:19 -0800
Received: from fmsedg901.ED.cps.intel.com (10.1.192.143) by
 FMSMSX902.amr.corp.intel.com (10.18.126.91) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.29 via Frontend Transport; Tue, 9 Dec 2025 04:34:19 -0800
Received: from BN1PR04CU002.outbound.protection.outlook.com (52.101.56.20) by
 edgegateway.intel.com (192.55.55.81) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.29; Tue, 9 Dec 2025 04:34:19 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=phHayFzpmL/ntxkUomVIsprxSHQ4JqT7eTxlESw+fWAo61m9u4cgl2IlpvuWmaZbHZwQ4pJU8OIzdJKDJKbl9hVmuksvLRcTq+k53KehF8YMyfvdntsiC5qsnVRy0t8NPwX/0DdbJ52iFybwdbQ0fwBXcDWBkwgYNlwHVk4gHeSPXfNp5L70o0OKvxfC5uYHo3V6IGbwBdGnxWW+WlyGGKgvVP8zDRj/SDgH9ng71g7GcYpXH/T4wgG22nrBlIAft6B46Nknk4Xy99AD9ZaL4adc3/iIv6MXgh0EXrMyA0tx3CPPFj04mI31Ri0jxIgBbqjF7RHLesjm+a4X2dNjgg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=Rg0+DVmaVbzGXuqLiPIJHKuzAhS550EHHkjpJUK+FnE=;
 b=PjlhJSBh4HGKBqCT8hdaR2KM2SXh1p46t6eZfm1/9V4l/cMGb5rBfmn8R5kJGfpquYjXcyO9ze+97x3xou3t+xWzNyBvopAscKBJwpNj+FU3kfC1Gkbrx+DkALXXz502DNaPyOUWVSUaysBaTRYghUbOfwFpHhxRj49d+oV2oUJe/LS2JER/UMynwUH9t3MvIkHQEVVR6DRPbhmxG6QI72/Ia91fAYO2mk/AES+62/X6TyGKFPi5UHnPyXz0lgugx06/+BNXocnGs6TBpwz4H5eyZ65gS+HhNiBO90LBAvuZpb/lCsjMENdTFmHHopvU31nUxlA0P9ToM++mJAKtuw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from SJ1PR11MB6129.namprd11.prod.outlook.com (2603:10b6:a03:488::12)
 by DS7PR11MB9451.namprd11.prod.outlook.com (2603:10b6:8:261::9) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9388.14; Tue, 9 Dec
 2025 12:34:17 +0000
Received: from SJ1PR11MB6129.namprd11.prod.outlook.com
 ([fe80::21c3:4b36:8cc5:b525]) by SJ1PR11MB6129.namprd11.prod.outlook.com
 ([fe80::21c3:4b36:8cc5:b525%5]) with mapi id 15.20.9412.005; Tue, 9 Dec 2025
 12:34:17 +0000
Message-ID: <c60163ac-bd8f-40a9-815c-80730801511d@intel.com>
Date: Tue, 9 Dec 2025 18:04:10 +0530
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH] drm/i915/crtc: move crtc initialization loop to
 intel_crtc.c
Content-Language: en-GB
To: Jani Nikula <jani.nikula@intel.com>, <intel-gfx@lists.freedesktop.org>,
 <intel-xe@lists.freedesktop.org>
References: <20251204143235.3138973-1-jani.nikula@intel.com>
From: "Borah, Chaitanya Kumar" <chaitanya.kumar.borah@intel.com>
In-Reply-To: <20251204143235.3138973-1-jani.nikula@intel.com>
Content-Type: text/plain; charset="UTF-8"; format=flowed
Content-Transfer-Encoding: 7bit
X-ClientProxiedBy: MA5PR01CA0123.INDPRD01.PROD.OUTLOOK.COM
 (2603:1096:a01:1a7::13) To SJ1PR11MB6129.namprd11.prod.outlook.com
 (2603:10b6:a03:488::12)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: SJ1PR11MB6129:EE_|DS7PR11MB9451:EE_
X-MS-Office365-Filtering-Correlation-Id: 3d7ce66c-b97e-494d-9a95-08de371f44eb
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|1800799024|376014|366016;
X-Microsoft-Antispam-Message-Info: =?utf-8?B?MDdNZ2VaZkxSK1NDSGhJUytqQkNQdVp4QjhQUkpMUzI1ejBhQktGU1Focmg4?=
 =?utf-8?B?aG9XV3J1Qk93TVVrUktuYVVHN3dpR2kvQytMMDcxR2NrUmJCU0hIY1RmYUJx?=
 =?utf-8?B?d3k5WXNkK0h5UzB2eWZDMW1HZEhUaE1hL0NqdFROZUFhQzZBeWNaYko2eUZU?=
 =?utf-8?B?NFcvc3FKWjJyV3R5cWVrcHVmYzVNbFI5ZXFVQ3EwaVFnTG12cHR6VzVBOGs5?=
 =?utf-8?B?MzR4VDVkMS9Fc3dERWYxaHFUT01zSTN2Q3RJWnR0M2hoRFQvUmh6eDRYL1V1?=
 =?utf-8?B?MCt2U0NxMkU5WVJnaVpGZ3JSWXpMcjFYYUlpYi9OOXZWTEkxQi9PTkNzQWNC?=
 =?utf-8?B?d01FaGtKRFFGdzJaYi8yRS9ndlkwSTNRUWhDcU1WWVFsMWpqRTRSMitkRUha?=
 =?utf-8?B?VDZSeFVvZkUwb1B5emFIV3dqbmVlaTlhcjlJTXdjOTJETmtPVFVkUGY0Z0dH?=
 =?utf-8?B?aDVNNFNPdGU1RlZiN2dCVzRwaGpjVEJieENVODNSZXVKMVZHMkUrclJlRGRX?=
 =?utf-8?B?N3ZzcCtMcGp5b3p0dUpUMTh6NVpyTERYY3Vjb3VQejA4U3pjK2JhRVBVZUlB?=
 =?utf-8?B?ZXlUQ1ByMVl4T0dYaEVDYm42WERYcHFiTEs3SVVxSmxXNVNWOU5VcjRBelZY?=
 =?utf-8?B?UmRGMzJXWmJuOEdYdytjM0ZwdGtCVlRuMG5qRWhocWFDVjJqWk5oa1crMGQ4?=
 =?utf-8?B?VkhJeXA4UmhLcloxdHZJdm5Qb2FBSXljMkhMamlObkx1NWdEWU5ac3BJZDI5?=
 =?utf-8?B?TFZGQkxlU1gvTjkzUTZVa3RMNmNQTnNCV3FtYnltb1J4UllhOXNIVkp2UC9s?=
 =?utf-8?B?Y3N2K0JuZzRWZjNKUEtkRm1wVnlGbHVMc1NqVzVqN3dTNFNQSnUwcDNwWDlL?=
 =?utf-8?B?NnJ6TTg5cFl3Z0R1M2plRDZSZ2poc0NiTXZ2SXIxL1VxN1YwUVo0UnEwVmE5?=
 =?utf-8?B?ZC9qT1pzYXhUY2ROTWFETCttVWM4RXRaMUtCSXVFdTBOV041UzR0N3JnYzVi?=
 =?utf-8?B?QXNad0gyU2J5UUJydytQRG1SMnNNZ2JGcWhvTGhHMmZXZSt0RWR4blVDMlJB?=
 =?utf-8?B?WXU3QWEzTFdFaXByUjNOaUoyYjlOMEt1K0JXN212em1UMm16SXk0NG9XNFhy?=
 =?utf-8?B?dGZRVGMzZEtoRkJFcFhXSDBjRlBaY1BvNnhhd0V3alpWeUh5bTdoc2hYRm1E?=
 =?utf-8?B?dytXbmZlTGJubllpU0IzMXVYNFdUWDA2aUJJR1Q5NkErZEhiTVQzZHpnSWRD?=
 =?utf-8?B?WEVVd3ZKdHVGU3BRbFhqN0pKMWYzaGxSSm83TzNYL29FM2NFblJKNXJXN3F1?=
 =?utf-8?B?a2RodDJpL2ZFdGRxZjVOVDEwOGNDT0pHcUhNZG1ZUTUwRWkwMGQ3akg4aTIx?=
 =?utf-8?B?SFRhbG82bERpd3MrM3o3eEV5OW0rV1RITXkzZysrOEFlcEUvcVdlS2s1bEQ5?=
 =?utf-8?B?ZzAxampkS3lKcEJuUVkrWVhremV5UGtuSkh4VVBlcTFweER4WXhieHhEOFhz?=
 =?utf-8?B?dy9OUVQ5Zjcvbk1DQjNialQ3TTFnRDl1RTdmZkU1YS84aFNYUWRmWGFIVnBF?=
 =?utf-8?B?RFBxRURVbkIzUDlkZjdGL2tITVd3eG5PdGlUZlpsL2V6ZERNYWVoL0VsY0w3?=
 =?utf-8?B?aVNZVjZRWkJqTWJGUEl3ZEs1RnNydnFHeC84ZGRWYVk5aEc1VDNLeUFPc2d1?=
 =?utf-8?B?b1BIOXN3bTJaUEpLeXYwaHYza3g1elRQSHJMSDRxUkhZbEwrSHZ6RmtqYlNT?=
 =?utf-8?B?THVWdEhha1Zib2piK3Z4bzNWZUZDTEl5MW1mVFc3OUdkZmJrY1hTQ01Eb1gv?=
 =?utf-8?B?REo3bXg0N3FrM0p1SkRoMnpHV2Q5bUxZMUowTjFLVWowNjlpWFJhV2grTkE3?=
 =?utf-8?B?a3JCYlNTUTRrdXFHWEVVTkcrQjhuUE8zK0w3VHZONk94TUgralZWRWdrNUkw?=
 =?utf-8?B?N255d0R1Rkp1K0t6amk4Z0ZiM0RPdWdIbEltZkxKSjhyaE0va0JZeG5CZDho?=
 =?utf-8?B?VEE2Q2JkSTZnPT0=?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:SJ1PR11MB6129.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(1800799024)(376014)(366016); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?bXdQYTlGaVl5TDN1TVRHR2RScm51V2M2a0t5V3ZPZDVpZGl4b29IZk9OdytQ?=
 =?utf-8?B?RkJJY0FTR1EraHpXUWMxOG1QUy83WXpWU2NWYi9OdnJBSi9pRXBjY2ViNDNF?=
 =?utf-8?B?THdNTWZRRTFjT0EydjJ3d1d4VGI0OFIzZzhObkFvQ01xUmxxRTBaUTZXSkhQ?=
 =?utf-8?B?NVpaYTBlZTRYUkVOZXU0ZHI2TTd6N2dDaGYrSFhTOTdhVzBrZXVtZXpRODVC?=
 =?utf-8?B?OFJiMkZDY09maEo2dUwzYlZWUmRob2FkZmxIKzRkVnA2OG0wVHpmZmVYVElz?=
 =?utf-8?B?VTBicmJMTWNsemVVazNvK0ZQUWRNZTFUL1dUK0Q1dmtuYkJSWWVhdGtIUnBH?=
 =?utf-8?B?RGRFTndyQjdMaWlIMHJ5YlRGZzhVNlpzVlJJMmlmVWYvcUhlWGNZQkE1VnlM?=
 =?utf-8?B?T0ZNR2RFSUVRT0JXN0VKdW1jV1AwZUVrcndsaE9TU1h4eTYraW5oL0toa3VR?=
 =?utf-8?B?N0JIcjIvNHppWHBYWmdHczBoUHd1ajJydWJSOTZkdWR4dWk5U3k0NmxOMGps?=
 =?utf-8?B?dlR0cS92Qit2UENQYmorb3huOThndWdzMmJnVHlyaFpYbGE1NUtpbVFua3Ft?=
 =?utf-8?B?NDdib3Y0MGZvVkdDcjVLc1p4ams0d2JvdXFJU0lZS20yNk1FTTF0anlGTXVN?=
 =?utf-8?B?UW5wa3NlenJhK0theFVINXVqN2Q1WlU3M0hhcVhyTWdsNWYyV2Z4Y2Q5dEJy?=
 =?utf-8?B?OGtSZXZaRkRSQW1OWDZ3Q1VuU3pIdzJWSFRteDR4b2VDYy84N2IxdHdCU002?=
 =?utf-8?B?V3FTdVRsTURCcXpvKzZVNTZwdEhRZGxBaU5ESHJxQnlhamFaMzdsMDZkM29P?=
 =?utf-8?B?WCtsSlliUFpmbXJnOWV6VUVKQXg4MkZlN1NPV1p0di9rZG1OaElUc25SeU1k?=
 =?utf-8?B?WG16a1ZJazBhU2JTc1RiNU9RTGhrUk13QmFCT3pGWHZ2aGxXY0VtVlVSVS9y?=
 =?utf-8?B?ZWplUjJxSXNJenRlS1lRSzZLZVgwMVQ1dXF4bEQzWW5Ea2lPTzAySEh5cFVE?=
 =?utf-8?B?ZitWQVBvL05aZHYyMjVOamZqTi9MWERRWitMQjNvM0hEL2pLeWpkaDdqVlhF?=
 =?utf-8?B?OVdIc0plbmJHNWJtN3lhRVEzMFJZa284MVQ0eVkrUmM5NEloTVpTcDlCQTBL?=
 =?utf-8?B?S2k4WWhiK2lNdFViSk5nQVNtTWZwaFBZRktBQTFidXlIYzh5VEFIeEVkMDhr?=
 =?utf-8?B?eTMxMU5QYnBZUHY2Q0dBcWdXUFh2Y0d1QTVnMnFrVnM3V3lEWGh5dmM4MjFP?=
 =?utf-8?B?Y1pncDBOV0hRdnY0ZE1yQ1VhZS9TaFNaV2RzVlphMmFGdnpMcUw4cUpZT0hN?=
 =?utf-8?B?NndqQVBJWGNYNXJQN3dZNHFIbXVLazJhNllnc2lSSlhpdlovMktibTkxVnlw?=
 =?utf-8?B?OEx1bkw4T1ZLUTNtcUo5L0h2Qks4RjVhd2hZVGNzY0RDVkkyeW13VkhNdzF6?=
 =?utf-8?B?amZ4ZEY5TTh3V1dRS3crdlB4UUY5USsxUndtRXVUaVg1TmJRNUpCUjJDaEwr?=
 =?utf-8?B?VGl0alFWVGtYajlSeTI4Y3orckdCZElVYzg3ODlRQUR0S0pJbzBLY2ZQQmxa?=
 =?utf-8?B?Q1N0Y3o3SFIwaHptV0xwNW1WUk52V243aHJLYWV2dm9yUHJZR1dUVEQzcnlN?=
 =?utf-8?B?Z3lVeU1DS3I3dzM3Q3dEczM5R001M1NuVXdRZFNVdVpHaC95T2d2U2M0N3pM?=
 =?utf-8?B?eEhwandpZzFyaTVjdHBBOEJrWXlBL0dEcUtEVnp4YkJVeTJMVC9PSVo3T2hC?=
 =?utf-8?B?UDQvVkpJOGpWai9uM1hSaFl2c29hQ3A4akQ4eGVMeE1XWGVyMXNOaSs4dkNJ?=
 =?utf-8?B?YVExNSs1TXhUNWc3Z0xRYSt2SThKaTliczlralNyN280Q0RtT3dhT3FIbmZh?=
 =?utf-8?B?THZ0VHkzWTRhNi9qZk1PazV4Rlo5STl0MHdKTjB5Njk4cmVSMUJRWTFPM0RQ?=
 =?utf-8?B?VkExYWpRWGJjRXVNQWpDa2l4cTBJS3ZHTXhtUXVWYlRqMllvdGVFQ1B1cXhk?=
 =?utf-8?B?ZFhRT3JQcUpwMENLVThEdTFBMVM0RnlIelpjMXN0aEwwOENvWlVBNFJ3clBE?=
 =?utf-8?B?OTJhdUJOMXJZREpXdTFRQjJuUU0xT1RvN2E0Q05UYWl1aWpJcFJrVFJ4eXo3?=
 =?utf-8?B?Wm4yWHp3TU5VV1AwRldPZzJlK3Z3UW9pN1JpU2NxUjJqMnBjdTlQZC80dUxT?=
 =?utf-8?Q?Gb7gG1LdavTlkpoQmgon32w=3D?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 3d7ce66c-b97e-494d-9a95-08de371f44eb
X-MS-Exchange-CrossTenant-AuthSource: SJ1PR11MB6129.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 09 Dec 2025 12:34:17.6172 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: 715FHEs6hurpav9W/zFke+f8kkjhBy0HSKguFFIXdbMDVBWvl/DWyic1V7tXJdsbgIQi0DUed+rlEwVhjzrVtqGq6GwBHtbiNtGDbBLOZbs=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DS7PR11MB9451
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



On 12/4/2025 8:02 PM, Jani Nikula wrote:
> intel_display_driver_probe_nogem() is too high of an abstraction level
> to be looping and initializing individual CRTCs. Move this to
> intel_crtc.c and repurpose intel_crtc_init() to initialize all
> CRTCs. Make the original a static __intel_crtc_init() for ininitializing
> a single CRTC.
> 

typo: s/ininitializing/initializing

Other than that, LGTM

Reviewed-by: Chaitanya Kumar Borah <chaitanya.kumar.borah@intel.com>

> Signed-off-by: Jani Nikula <jani.nikula@intel.com>
> 
> ---
> 
> This is prep for doing [1] in a nicer way, without divulging the details
> at the high level.
> 
> [1] https://lore.kernel.org/r/20251119153321.2640969-1-jani.nikula@intel.com
> ---
>   drivers/gpu/drm/i915/display/intel_crtc.c     | 19 ++++++++++++++++++-
>   drivers/gpu/drm/i915/display/intel_crtc.h     |  2 +-
>   .../drm/i915/display/intel_display_driver.c   | 13 +++----------
>   3 files changed, 22 insertions(+), 12 deletions(-)
> 
> diff --git a/drivers/gpu/drm/i915/display/intel_crtc.c b/drivers/gpu/drm/i915/display/intel_crtc.c
> index 5e1e02c8d9d4..778ebc5095c3 100644
> --- a/drivers/gpu/drm/i915/display/intel_crtc.c
> +++ b/drivers/gpu/drm/i915/display/intel_crtc.c
> @@ -308,7 +308,7 @@ static const struct drm_crtc_funcs i8xx_crtc_funcs = {
>   	.get_vblank_timestamp = intel_crtc_get_vblank_timestamp,
>   };
>   
> -int intel_crtc_init(struct intel_display *display, enum pipe pipe)
> +static int __intel_crtc_init(struct intel_display *display, enum pipe pipe)
>   {
>   	struct intel_plane *primary, *cursor;
>   	const struct drm_crtc_funcs *funcs;
> @@ -406,6 +406,23 @@ int intel_crtc_init(struct intel_display *display, enum pipe pipe)
>   	return ret;
>   }
>   
> +int intel_crtc_init(struct intel_display *display)
> +{
> +	enum pipe pipe;
> +	int ret;
> +
> +	drm_dbg_kms(display->drm, "%d display pipe%s available.\n",
> +		    INTEL_NUM_PIPES(display), str_plural(INTEL_NUM_PIPES(display)));
> +
> +	for_each_pipe(display, pipe) {
> +		ret = __intel_crtc_init(display, pipe);
> +		if (ret)
> +			return ret;
> +	}
> +
> +	return 0;
> +}
> +
>   int intel_crtc_get_pipe_from_crtc_id_ioctl(struct drm_device *dev, void *data,
>   					   struct drm_file *file)
>   {
> diff --git a/drivers/gpu/drm/i915/display/intel_crtc.h b/drivers/gpu/drm/i915/display/intel_crtc.h
> index 07917e8a9ae3..12507b51ee77 100644
> --- a/drivers/gpu/drm/i915/display/intel_crtc.h
> +++ b/drivers/gpu/drm/i915/display/intel_crtc.h
> @@ -37,7 +37,7 @@ void intel_crtc_arm_vblank_event(struct intel_crtc_state *crtc_state);
>   void intel_crtc_prepare_vblank_event(struct intel_crtc_state *crtc_state,
>   				     struct drm_pending_vblank_event **event);
>   u32 intel_crtc_max_vblank_count(const struct intel_crtc_state *crtc_state);
> -int intel_crtc_init(struct intel_display *display, enum pipe pipe);
> +int intel_crtc_init(struct intel_display *display);
>   int intel_crtc_get_pipe_from_crtc_id_ioctl(struct drm_device *dev, void *data,
>   					   struct drm_file *file_priv);
>   struct intel_crtc_state *intel_crtc_state_alloc(struct intel_crtc *crtc);
> diff --git a/drivers/gpu/drm/i915/display/intel_display_driver.c b/drivers/gpu/drm/i915/display/intel_display_driver.c
> index 7e000ba3e08b..e282b533d5b6 100644
> --- a/drivers/gpu/drm/i915/display/intel_display_driver.c
> +++ b/drivers/gpu/drm/i915/display/intel_display_driver.c
> @@ -452,7 +452,6 @@ bool intel_display_driver_check_access(struct intel_display *display)
>   /* part #2: call after irq install, but before gem init */
>   int intel_display_driver_probe_nogem(struct intel_display *display)
>   {
> -	enum pipe pipe;
>   	int ret;
>   
>   	if (!HAS_DISPLAY(display))
> @@ -466,15 +465,9 @@ int intel_display_driver_probe_nogem(struct intel_display *display)
>   
>   	intel_gmbus_setup(display);
>   
> -	drm_dbg_kms(display->drm, "%d display pipe%s available.\n",
> -		    INTEL_NUM_PIPES(display),
> -		    INTEL_NUM_PIPES(display) > 1 ? "s" : "");
> -
> -	for_each_pipe(display, pipe) {
> -		ret = intel_crtc_init(display, pipe);
> -		if (ret)
> -			goto err_mode_config;
> -	}
> +	ret = intel_crtc_init(display);
> +	if (ret)
> +		goto err_mode_config;
>   
>   	intel_plane_possible_crtcs_init(display);
>   	intel_dpll_init(display);

