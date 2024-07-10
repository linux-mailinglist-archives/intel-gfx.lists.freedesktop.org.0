Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 6B0FA92CD80
	for <lists+intel-gfx@lfdr.de>; Wed, 10 Jul 2024 10:51:12 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id F07CF10E09A;
	Wed, 10 Jul 2024 08:51:10 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="i7fxA1DW";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.18])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 698A810E09A;
 Wed, 10 Jul 2024 08:51:10 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1720601471; x=1752137471;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=bd8ux9paNql/cmiSWMtnnya8j4su9c25U6ij2Ap17hc=;
 b=i7fxA1DWZNLveAAtKUyMN6N8CebZvWkpw5xF+rbZVZrbtGpuy7Rmw7G/
 MK0v7QiyfdbMqoRwzJoHeBZz06V6N3jcj02PdtPGw/XF37PLgGcYeEK/z
 jjGb/ZWq4fhwCN/izqnqq5EFV2cPsVmsGPA8clv5pDaCDwMdW3/GAvJ93
 SuG3JbRX2oh2Ex76gZtpjXwzpr9kv7GbH7zM6B5R8XDkswqju5IajII2c
 5IWlsOeaE/J3VXCBBpXTaPU1iu5e2FLwEzp+pTCU1eY9ij33ammMIYGBH
 tSDbOxT6edghRmR2TNESlkXsoT4btVudiRf/Ooi2x7SMNyLtNYISIhPmv A==;
X-CSE-ConnectionGUID: Y4kIsbfKQUKMsqmHBx8TLw==
X-CSE-MsgGUID: 1nUNBSeMTf+wEUQAejmxPg==
X-IronPort-AV: E=McAfee;i="6700,10204,11128"; a="18044707"
X-IronPort-AV: E=Sophos;i="6.09,197,1716274800"; d="scan'208";a="18044707"
Received: from fmviesa004.fm.intel.com ([10.60.135.144])
 by orvoesa110.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 10 Jul 2024 01:51:10 -0700
X-CSE-ConnectionGUID: 8r1UeW6STv62S/3j1K6mfw==
X-CSE-MsgGUID: g8zjknYuR7KK41LrNf0GJw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.09,197,1716274800"; d="scan'208";a="52741866"
Received: from orsmsx602.amr.corp.intel.com ([10.22.229.15])
 by fmviesa004.fm.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 10 Jul 2024 01:51:10 -0700
Received: from orsmsx611.amr.corp.intel.com (10.22.229.24) by
 ORSMSX602.amr.corp.intel.com (10.22.229.15) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39; Wed, 10 Jul 2024 01:51:09 -0700
Received: from orsmsx610.amr.corp.intel.com (10.22.229.23) by
 ORSMSX611.amr.corp.intel.com (10.22.229.24) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39; Wed, 10 Jul 2024 01:51:09 -0700
Received: from ORSEDG602.ED.cps.intel.com (10.7.248.7) by
 orsmsx610.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39 via Frontend Transport; Wed, 10 Jul 2024 01:51:09 -0700
Received: from NAM02-DM3-obe.outbound.protection.outlook.com (104.47.56.41) by
 edgegateway.intel.com (134.134.137.103) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.39; Wed, 10 Jul 2024 01:51:08 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=UDiboMIqiLfnxR2XWYzgBEoZAF1mXbUzHoSQsiUMvdnlEe+okTtEW8+Sp8U3iucL7z57poDpVRtyikvxvXw6a7mvTpkuG+f8JAahLpExq5pG5dP77pyfe4f1XU8pbRQJNWvJeGoR29pJek24ME7My47r9vZzvCtzsBBlMSbYy/l4kv/Qr6xssNw37e8oWD2eOWokx9m0T5+HHn5uvavLco42cWwk09uDrBm8+qUsuDZZW9XoQW6O2f0kbY+LajWMt+dGGhefOS953M6AUZK5ppLIvbQC0bpnt4u+v1ZtTpBGUSebijS+Y9SsWlN902VAxzCmo2jY1NfenlzNzxq20g==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=bd8ux9paNql/cmiSWMtnnya8j4su9c25U6ij2Ap17hc=;
 b=Ajb5kQBUE7JdtkO5k3qW3btRxVI5WZiRdxJKzi+9F0rZNssbLasl40n2uw2AS0QONe6aWss7+7UK3ltWtsaj82A/bwKqM25SKei8Q/WyJkXUoSL80inTlvNDufUrqscUkNf/KzVXrqjGXCbj1hF3F0rxM77bP6VsDnJo1mMdRO9Zqg78N93YBBVckiwbpFPepui7j2aLhSuad2R6LC7DhZc3fMo7SUz0u7N6PmUD8+NU3OadbC8YZNAZsOBYPPoqVXeqedPsGbg6JWrqiizbRdm0ZMrxZ5J72iIi1K31quX2QVR/R+hoyx1FvL3qwOddvQMb3j9gq8uokepa0Jku3Q==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from DM4PR11MB6360.namprd11.prod.outlook.com (2603:10b6:8:bd::12) by
 PH8PR11MB8108.namprd11.prod.outlook.com (2603:10b6:510:257::6) with
 Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.7741.29; Wed, 10 Jul 2024 08:51:06 +0000
Received: from DM4PR11MB6360.namprd11.prod.outlook.com
 ([fe80::8648:3a6b:af5c:b6e6]) by DM4PR11MB6360.namprd11.prod.outlook.com
 ([fe80::8648:3a6b:af5c:b6e6%5]) with mapi id 15.20.7741.033; Wed, 10 Jul 2024
 08:51:06 +0000
From: "Shankar, Uma" <uma.shankar@intel.com>
To: Ville Syrjala <ville.syrjala@linux.intel.com>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>
CC: "intel-xe@lists.freedesktop.org" <intel-xe@lists.freedesktop.org>
Subject: RE: [PATCH 16/20] drm/i915/fbdev: Extract
 intel_fbdev_fb_prefer_stolen()
Thread-Topic: [PATCH 16/20] drm/i915/fbdev: Extract
 intel_fbdev_fb_prefer_stolen()
Thread-Index: AQHazusrSMEytAuIAk2GbgpSBmCTMrHvrVNg
Date: Wed, 10 Jul 2024 08:51:06 +0000
Message-ID: <DM4PR11MB6360B74E7E56F8207E7B6FC8F4A42@DM4PR11MB6360.namprd11.prod.outlook.com>
References: <20240705145254.3355-1-ville.syrjala@linux.intel.com>
 <20240705145254.3355-17-ville.syrjala@linux.intel.com>
In-Reply-To: <20240705145254.3355-17-ville.syrjala@linux.intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: DM4PR11MB6360:EE_|PH8PR11MB8108:EE_
x-ms-office365-filtering-correlation-id: 2a8d8bc2-e97b-4c02-3233-08dca0bd6fea
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0; ARA:13230040|376014|366016|1800799024|38070700018;
x-microsoft-antispam-message-info: =?utf-8?B?UGFnTU1HeU85WlJjMUh4YU5WSjBYbE9DOFV6QUU0ZktoTFZuQllUMHNrWjZJ?=
 =?utf-8?B?T1ZVL1lNL1loamFQMW0wMFRJZ0RWUXdiMkZCY3IyTVY2d2RqWHBSZ2YzaFBv?=
 =?utf-8?B?eGVlUGJ5SUE4SmpHYW9RbEl2aFpURkV6anhWV0dRL3lnbWEvWUkrbmpvam9B?=
 =?utf-8?B?dWlWeDdoYTVteWRUaENNb3hBNWt2S0FIdDZKeElNVTl6dWpZZ2JHSlZtbUlS?=
 =?utf-8?B?TndDbFFuYytOekhETG4zMVd2d3plaHFKeVRQcVJBcXV3enVFOHkrUGVUVXMx?=
 =?utf-8?B?a3U2dkVyTzBmZXpwQ1Mxeml2ZHZkSk9CeWtlbFQ0YWgrZTRRcXFRdXYyd0NJ?=
 =?utf-8?B?REJ3Mkp6YU5McXFaK0pjTU9RbmhULy9GeHJPRHRlU1padUlFOENwTURXL2p1?=
 =?utf-8?B?UGZRWXdwVUVUZ25oS2R5OG5Ma001N2ZocWZLVkVQNyt6SE9qTmV4OGJEQkk1?=
 =?utf-8?B?ZXZuQlRBN1FQLzIyNk1tMERzOUVYWVhvc0NKbWdsR1dhaWlvVnpzUFFQMkMz?=
 =?utf-8?B?L0lML0tGcm9pRjhPUGo2dGV6K25MdXBFbHZMejBOTTdJOUExeDF1ejZSNmRq?=
 =?utf-8?B?RmtiV0FDNWluQWNRYUN6bnp3czJzd01kRnlJZXA1bk1ORTBHb3dLaEs5U0po?=
 =?utf-8?B?Nlg0RnBLUGhQUzlFZ1NLNU5hVkd0eEx0SytjK295eEhTZW81VGRXZ0hZQUJa?=
 =?utf-8?B?eWlFeGpGM0hnSTJSbjdJWHYyUy9IN1ZkSnRCQVlGUkQ0UUpwZzlFWE01TDJL?=
 =?utf-8?B?VjNqclJUdStFdE8vQVRHa0FFOGtYbmFpVG1HMGZrUVp6c2FWOVlLUWdKU1U3?=
 =?utf-8?B?UG5WUTdTaGsyZ1N0TFJsQVJFNCtEQll5Yzd4Mk9lM2hqTkVwVkExM1dmdzc1?=
 =?utf-8?B?RExFUU9wNGFaZFFRQ043M1kzVnA1Wjg3ZnVnNWhEamFPdWJURlh0c3NkY2dp?=
 =?utf-8?B?N1gzbHpZbkU2bHNwZ05vWTBtSnNORC9HYzVqQnBrc2hFalFiVE1mSkxwTGp6?=
 =?utf-8?B?TnVvbDFJa3UwR0p1YWdMSnZhRTFsNVJWM0I1ZWJiQU9KbGRqKzFMUUpQSlla?=
 =?utf-8?B?bVdGbVdBWDROcldaN1Bnbzl4OGtOeHQrN0lNSFdybkJEMHFvdmdZM0ZEWjNs?=
 =?utf-8?B?NXg2MUUrVDRneHBXdWRqQXBabjZhQVlwZStvdy91cEl0clNEWDEvTjB3Z05v?=
 =?utf-8?B?SUlaZExtU3hmVitTbjIxd1FJdmZZUm9BR2hZcElIcFZiUWNYV3kvUkNwSHJN?=
 =?utf-8?B?S2V0ZWNhL1ZkNDMvVlR6bTJ3SmU4Y0dkRWNNSXJoZENQeFFrSnNXaWNpNHNR?=
 =?utf-8?B?OTdPdld2Z3BRQjVVclpwUDRFUmthRWs0cGNhTUVaWFM0eTlCYVVZekNIa3Nj?=
 =?utf-8?B?ekdQOVJ4cGdsWVBMNVB4TWF6WjAvaUlxWXhpWWpIU2NFK3luWlR2MVd6SE54?=
 =?utf-8?B?RWcwTEc5UHBGUEVhdEZWSjcwSXp5TVp0ci85Vmh1d0tYcGdKem9MNk9lU29P?=
 =?utf-8?B?QlJua1JJbm44K3VVUnZXdE9RUnIxMDZ3K3BsRWxkR29hVE1lM05hMnBDdWEw?=
 =?utf-8?B?aWY0Wm5ITFBGVGFJU0EvQWI1dlFRZEU5V1lLTSt0SDlpUUxnNDhlWCtXdlR4?=
 =?utf-8?B?elJpbWJKb1ZiVjduempxN3RDeCtDWTRlNWZaY0VjOEYwL25EdmlBTytZTVcv?=
 =?utf-8?B?VFYrZXFHdmozSTdOeWU4bmtvcVRWUGhvb0Fici90anMvS3VHazhTVmpkcUVO?=
 =?utf-8?B?eTdTZlQ5MDFuT1pJbCtZZkZ6YTBKZHpSZWgzY0FwZERNMnNrY1pPMkl5QnBB?=
 =?utf-8?B?dEFUMFR5WDBtbFMxekp2OW1UUUVIcjJiOWJINkNhWU5KSE5YWnNqUmM4dThn?=
 =?utf-8?B?RHAvb1RSVnh0U0VIai9QYmJxSjl6bEpXN3lSd3p4MWhGTFE9PQ==?=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM4PR11MB6360.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(376014)(366016)(1800799024)(38070700018); DIR:OUT; SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?utf-8?B?M3RoclJsVjg2b29wZ2NUR0dpNm1JOENqZFNwbHkrcXpSUjN5azZNL24wYWpp?=
 =?utf-8?B?SytFZy9VZmRIMldJaGFpYVlCSGtneWZwNUFJYk5tQkZWVWhZMTZSMHR5WXI1?=
 =?utf-8?B?cGp2bGhOMklsYUxmaFl6ZWpIbFl0MktWbVUvNURUaWYrRzM3TG05R0paeFhr?=
 =?utf-8?B?am9hMjRTVXpmMHVJb3BreW5OSmN5ZWJ2TzRmVzdOUVhGWDVhaThqM3o5akZy?=
 =?utf-8?B?S2Q3b3lzSnpzUVIyZHBpaVpETWNXelV5SWZhU1pxS0VGU2hXdWR4dWIvcDJD?=
 =?utf-8?B?ais0S2JiL2VlMFdGYmpsemJiM21xTmsvR2VJVDFRcEZNQlV4SGZwbkNyWU1W?=
 =?utf-8?B?aUhsN3liNHdoU3E4blp6ZzhxMXZmZ2NqVkEyTGRMb1Z6Ump2Y2xwT3VlbExU?=
 =?utf-8?B?ZTZOR3dORVUrVXRkeXllbWV5S1JVaW5uZ1dxR1ZaSmMycllmeDg0bUlhYWNP?=
 =?utf-8?B?cW9oRjRuUiszenFTczBBNlBBVmxyTDE3YzdUVk90SlowSTFCWGprYXFsbG9l?=
 =?utf-8?B?MCs0Q2gwMHZ3SGdUMXlnSUJWT2ptY0JENURsYlR2UmpJR2dDVFBPbW9lSTJv?=
 =?utf-8?B?Tmxpc1M4bUVuZWhSUzY0TExFZTY5UmVuM3hqWjR3aEdmRWxEcG9wQlJFNjFi?=
 =?utf-8?B?ZEYwUGFaK3dJRERhMFF5L0pBUG5sNFRROGtldERpZ0JIblNPeG0rWS8wRWNB?=
 =?utf-8?B?RU1DZlFBL3YxSE1EeC84T2IybVQ5VUdqcjJRa25KdlVZeUdWT243eENsQ29Q?=
 =?utf-8?B?RWoyMExWMFFEUmhublFJVEU0N2FSRmpaSGRuWDJiU0VvZEV0aURnQmpxRi84?=
 =?utf-8?B?VjZwRFR2Z3ZPcFRZQm5Wbm5hbG9GN3g0VGZnU3ZKb1EvaTdjVWZKV01ZQXov?=
 =?utf-8?B?UGFOeUFBWXdrVEVpcWczdFhta2xQWEg1TUJCNW1acHc5YlExMDhvZ1ZvZ25S?=
 =?utf-8?B?N0U3bXpFSmxEZjQ2QjJ1QUlybm9vOEhacnkyeHBSRmNjK241elJnVWRsT21q?=
 =?utf-8?B?aG5ZRFQ3Q2xFU1RRR0J2aDhQZUttRkZqMXlKU3pMa052YUlEcjEwL2hyRGlj?=
 =?utf-8?B?SnVlMkdBZGhXeGZGV0NubXdCOGo2MFZHeWp2MlhhTExLRGVQNmttWmtkTmFQ?=
 =?utf-8?B?VU9KNUhBcmN0dmRFTm5wU3RYT3dBbGpoeXo0a3BNVWNTMEc3aC9kZjBoU3NX?=
 =?utf-8?B?bXlKOFY5K1JHZzFFdmZiK2VyNW9UTGFieVNMSkhqb0l4V28vNHBOdHdkL0tY?=
 =?utf-8?B?bWVxT0ZpV3dodS9jZUlienozSVdNK29Jak1wclowTlF4TW14TFhEYzYxRjh5?=
 =?utf-8?B?bWxPU0E4K2t1aS9iV3p6TEs5dDJyd3VTelNidDZndUdMNk1nK0J1aGlvSlFv?=
 =?utf-8?B?bDBHdjJORVZ3cCtJRXp5WE1qNExSa1VHSTRwM2gvSklGOUVQNTZ4U3pVNDdV?=
 =?utf-8?B?QllUd2pvRll3YnJNUXhReEVrVjhJQU91L2pNT0dxaElpU3dTL0MrTEpVaW1Y?=
 =?utf-8?B?UkREbDRsdFJpV2RtZDVWZ1duSHBsQ2NNcDNQTktwQUxMOFBSUlNqakNIajJ6?=
 =?utf-8?B?VzN4c3BqLys3amVjcmVUdUQ3V1ZiWGlmUDVrL25peitjcFg2UXVRMlpyMVRW?=
 =?utf-8?B?NWlidk9FblNLUVVvRkg2QTMyalluYkc0L1NXeVRVNkRtc1lnRy9YeE9haEgz?=
 =?utf-8?B?ODl4ZjdrMW5YcTExS1FVM0JCc2ZORFNzQ2tkR1FiNWRSOGxKZDFXWHNBWVFo?=
 =?utf-8?B?Z3llTGhUYmo3WmFwczhJT2hUaGVEd2xhWm9NS0kxZUNQejVJM2syWHFhcDRE?=
 =?utf-8?B?amo4anFQNlJCQ3QyTUVVdHowUmhpQWRJOFVvVkVaNXJ1czdRUnZrR0NqYXE3?=
 =?utf-8?B?cVFwNEg1ZnlsamorbVFZT0dRUUNZZkRDNklvejZoYS82TTZVRDA4N0NHT0xB?=
 =?utf-8?B?d0xyMGN1cmFQYi9XZW02Q3EyVCtXVm1ZWTA2SmRuc09ndzZBbmVET1lkUzh2?=
 =?utf-8?B?ZFA5eTBZVjFHaHZvNEZhQ25kMFZJTVdkNGpEZGxTc0xHMU01UkJmRXRTZnl4?=
 =?utf-8?B?K2RhdUVJWmNaTnk5ZENPYUpTNnlJcU1LU3REZzMxWHVqeFpUeFhOTDROS0V6?=
 =?utf-8?Q?up34iFP///5Jl2uSoI7nLeeGm?=
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: DM4PR11MB6360.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 2a8d8bc2-e97b-4c02-3233-08dca0bd6fea
X-MS-Exchange-CrossTenant-originalarrivaltime: 10 Jul 2024 08:51:06.6294 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: Qjix4ogoj1skTjaHfYnB6qzRYBYhelu75wbFnCd36ezp6CVL8/zkgQtqAk/ZY3J1qpWgUYDkwtxct/+ZMh+IUQ==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: PH8PR11MB8108
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

DQoNCj4gLS0tLS1PcmlnaW5hbCBNZXNzYWdlLS0tLS0NCj4gRnJvbTogSW50ZWwteGUgPGludGVs
LXhlLWJvdW5jZXNAbGlzdHMuZnJlZWRlc2t0b3Aub3JnPiBPbiBCZWhhbGYgT2YgVmlsbGUgU3ly
amFsYQ0KPiBTZW50OiBGcmlkYXksIEp1bHkgNSwgMjAyNCA4OjIzIFBNDQo+IFRvOiBpbnRlbC1n
ZnhAbGlzdHMuZnJlZWRlc2t0b3Aub3JnDQo+IENjOiBpbnRlbC14ZUBsaXN0cy5mcmVlZGVza3Rv
cC5vcmcNCj4gU3ViamVjdDogW1BBVENIIDE2LzIwXSBkcm0vaTkxNS9mYmRldjogRXh0cmFjdCBp
bnRlbF9mYmRldl9mYl9wcmVmZXJfc3RvbGVuKCkNCj4gDQo+IEZyb206IFZpbGxlIFN5cmrDpGzD
pCA8dmlsbGUuc3lyamFsYUBsaW51eC5pbnRlbC5jb20+DQo+IA0KPiBDb25zb2xpZGF0ZSB0aGUg
InNob3VsZCB3ZSBhbGxvY2F0ZSBmYmRldiBmYiBpbiBzdG9sZW4/Ig0KPiBjaGVjayBpbnRvIGEg
aGVscGVyIGZ1bmN0aW9uLiBNYWtlcyBpdCBlYXNpZXIgdG8gY2hhbmdlIHRoZSBoZXVyaXN0aWNz
IHdpdGhvdXQNCj4gaGF2aW5nIHRvIGNoYW5nZSBzbyBtYW55IHBsYWNlcy4NCj4gDQo+IFNpZ25l
ZC1vZmYtYnk6IFZpbGxlIFN5cmrDpGzDpCA8dmlsbGUuc3lyamFsYUBsaW51eC5pbnRlbC5jb20+
DQo+IC0tLQ0KPiAgZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9mYmRldl9mYi5j
IHwgMjQgKysrKysrKysrKysrLS0tLS0tLQ0KPiBkcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5
L2ludGVsX2ZiZGV2X2ZiLmggfCAgNSArKystDQo+ICAuLi4vZHJtL2k5MTUvZGlzcGxheS9pbnRl
bF9wbGFuZV9pbml0aWFsLmMgICAgfCAxMCArKystLS0tLQ0KPiAgMyBmaWxlcyBjaGFuZ2VkLCAy
MyBpbnNlcnRpb25zKCspLCAxNiBkZWxldGlvbnMoLSkNCj4gDQo+IGRpZmYgLS1naXQgYS9kcml2
ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2ZiZGV2X2ZiLmMNCj4gYi9kcml2ZXJzL2dw
dS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2ZiZGV2X2ZiLmMNCj4gaW5kZXggNDk3NTI1ZWY5NjY4
Li4wYTY0NDVhY2IxMDAgMTAwNjQ0DQo+IC0tLSBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3Bs
YXkvaW50ZWxfZmJkZXZfZmIuYw0KPiArKysgYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5
L2ludGVsX2ZiZGV2X2ZiLmMNCj4gQEAgLTExLDYgKzExLDE5IEBADQo+ICAjaW5jbHVkZSAiaW50
ZWxfZGlzcGxheV90eXBlcy5oIg0KPiAgI2luY2x1ZGUgImludGVsX2ZiZGV2X2ZiLmgiDQo+IA0K
PiArYm9vbCBpbnRlbF9mYmRldl9mYl9wcmVmZXJfc3RvbGVuKHN0cnVjdCBpbnRlbF9kaXNwbGF5
ICpkaXNwbGF5LA0KPiArCQkJCSAgdW5zaWduZWQgaW50IHNpemUpDQo+ICt7DQo+ICsJc3RydWN0
IGRybV9pOTE1X3ByaXZhdGUgKmk5MTUgPSB0b19pOTE1KGRpc3BsYXktPmRybSk7DQo+ICsNCj4g
KwkvKg0KPiArCSAqIElmIHRoZSBGQiBpcyB0b28gYmlnLCBqdXN0IGRvbid0IHVzZSBpdCBzaW5j
ZSBmYmRldiBpcyBub3QgdmVyeQ0KPiArCSAqIGltcG9ydGFudCBhbmQgd2Ugc2hvdWxkIHByb2Jh
Ymx5IHVzZSB0aGF0IHNwYWNlIHdpdGggRkJDIG9yIG90aGVyDQo+ICsJICogZmVhdHVyZXMuDQo+
ICsJICovDQo+ICsJcmV0dXJuIGk5MTUtPmRzbS51c2FibGVfc2l6ZSA+PSBzaXplICogMjsgfQ0K
PiArDQo+ICBzdHJ1Y3QgaW50ZWxfZnJhbWVidWZmZXIgKmludGVsX2ZiZGV2X2ZiX2FsbG9jKHN0
cnVjdCBkcm1fZmJfaGVscGVyICpoZWxwZXIsDQo+ICAJCQkJCSAgICAgICBzdHJ1Y3QgZHJtX2Zi
X2hlbHBlcl9zdXJmYWNlX3NpemUNCj4gKnNpemVzKSAgeyBAQCAtNDIsMTQgKzU1LDkgQEAgc3Ry
dWN0IGludGVsX2ZyYW1lYnVmZmVyDQo+ICppbnRlbF9mYmRldl9mYl9hbGxvYyhzdHJ1Y3QgZHJt
X2ZiX2hlbHBlciAqaGVscGVyLA0KPiANCj4gSTkxNV9CT19BTExPQ19DT05USUdVT1VTIHwNCj4g
IAkJCQkJCSAgSTkxNV9CT19BTExPQ19VU0VSKTsNCj4gIAl9IGVsc2Ugew0KPiAtCQkvKg0KPiAt
CQkgKiBJZiB0aGUgRkIgaXMgdG9vIGJpZywganVzdCBkb24ndCB1c2UgaXQgc2luY2UgZmJkZXYg
aXMgbm90IHZlcnkNCj4gLQkJICogaW1wb3J0YW50IGFuZCB3ZSBzaG91bGQgcHJvYmFibHkgdXNl
IHRoYXQgc3BhY2Ugd2l0aCBGQkMgb3INCj4gb3RoZXINCj4gLQkJICogZmVhdHVyZXMuDQo+IC0J
CSAqDQo+IC0JCSAqIEFsc28gc2tpcCBzdG9sZW4gb24gTVRMIGFzIFdhXzIyMDE4NDQ0MDc0IG1p
dGlnYXRpb24uDQo+IC0JCSAqLw0KPiAtCQlpZiAoIShJU19NRVRFT1JMQUtFKGRldl9wcml2KSkg
JiYgc2l6ZSAqIDIgPCBkZXZfcHJpdi0NCj4gPmRzbS51c2FibGVfc2l6ZSkNCj4gKwkJLyogc2tp
cCBzdG9sZW4gb24gTVRMIGFzIFdhXzIyMDE4NDQ0MDc0IG1pdGlnYXRpb24gKi8NCj4gKwkJaWYg
KCFJU19NRVRFT1JMQUtFKGRldl9wcml2KSAmJg0KDQpJdHMgYmV0dGVyIHRvIG1vdmUgdGhpcyBw
bGF0Zm9ybSBjaGVjayBhcyB3ZWxsIHRvIHRoZSBoZWxwZXIuDQoNCkFsc28gbWF5YmUgd2UgY2Fu
IGV4dGVuZCB0aGlzIHRvIExOTCsgYXMgd2VsbCBnaXZlbiB0aGUgbGltaXRhdGlvbnMgKGNhbiBi
ZSBhIHNlcGFyYXRlIGNoYW5nZSB0aG91Z2gpLg0KVGhvdWdodHMgPw0KDQo+ICsJCSAgICBpbnRl
bF9mYmRldl9mYl9wcmVmZXJfc3RvbGVuKCZkZXZfcHJpdi0+ZGlzcGxheSwgc2l6ZSkpDQo+ICAJ
CQlvYmogPSBpOTE1X2dlbV9vYmplY3RfY3JlYXRlX3N0b2xlbihkZXZfcHJpdiwgc2l6ZSk7DQo+
ICAJCWlmIChJU19FUlIob2JqKSkNCj4gIAkJCW9iaiA9IGk5MTVfZ2VtX29iamVjdF9jcmVhdGVf
c2htZW0oZGV2X3ByaXYsIHNpemUpOw0KPiBkaWZmIC0tZ2l0IGEvZHJpdmVycy9ncHUvZHJtL2k5
MTUvZGlzcGxheS9pbnRlbF9mYmRldl9mYi5oDQo+IGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlz
cGxheS9pbnRlbF9mYmRldl9mYi5oDQo+IGluZGV4IDQ4MzJmZTY4OGZiZi4uM2I5MDMzYmQyMTYw
IDEwMDY0NA0KPiAtLS0gYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2ZiZGV2
X2ZiLmgNCj4gKysrIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9mYmRldl9m
Yi5oDQo+IEBAIC02LDE2ICs2LDE5IEBADQo+ICAjaWZuZGVmIF9fSU5URUxfRkJERVZfRkJfSF9f
DQo+ICAjZGVmaW5lIF9fSU5URUxfRkJERVZfRkJfSF9fDQo+IA0KPiArI2luY2x1ZGUgPGxpbnV4
L3R5cGVzLmg+DQo+ICsNCj4gIHN0cnVjdCBkcm1fZmJfaGVscGVyOw0KPiAgc3RydWN0IGRybV9m
Yl9oZWxwZXJfc3VyZmFjZV9zaXplOw0KPiAgc3RydWN0IGRybV9pOTE1X2dlbV9vYmplY3Q7DQo+
ICBzdHJ1Y3QgZHJtX2k5MTVfcHJpdmF0ZTsNCj4gIHN0cnVjdCBmYl9pbmZvOw0KPiAgc3RydWN0
IGk5MTVfdm1hOw0KPiArc3RydWN0IGludGVsX2Rpc3BsYXk7DQo+IA0KPiAgc3RydWN0IGludGVs
X2ZyYW1lYnVmZmVyICppbnRlbF9mYmRldl9mYl9hbGxvYyhzdHJ1Y3QgZHJtX2ZiX2hlbHBlciAq
aGVscGVyLA0KPiAgCQkJCQkgICAgICAgc3RydWN0IGRybV9mYl9oZWxwZXJfc3VyZmFjZV9zaXpl
DQo+ICpzaXplcyk7ICBpbnQgaW50ZWxfZmJkZXZfZmJfZmlsbF9pbmZvKHN0cnVjdCBkcm1faTkx
NV9wcml2YXRlICppOTE1LCBzdHJ1Y3QgZmJfaW5mbw0KPiAqaW5mbywNCj4gIAkJCSAgICAgc3Ry
dWN0IGRybV9pOTE1X2dlbV9vYmplY3QgKm9iaiwgc3RydWN0IGk5MTVfdm1hDQo+ICp2bWEpOw0K
PiAtDQo+ICtib29sIGludGVsX2ZiZGV2X2ZiX3ByZWZlcl9zdG9sZW4oc3RydWN0IGludGVsX2Rp
c3BsYXkgKmRpc3BsYXksDQo+ICt1bnNpZ25lZCBpbnQgc2l6ZSk7DQo+ICAjZW5kaWYNCj4gZGlm
ZiAtLWdpdCBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfcGxhbmVfaW5pdGlh
bC5jDQo+IGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9wbGFuZV9pbml0aWFs
LmMNCj4gaW5kZXggYWRhMTc5MmRmNWIzLi40NjIyYmI1ZjM0MjYgMTAwNjQ0DQo+IC0tLSBhL2Ry
aXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfcGxhbmVfaW5pdGlhbC5jDQo+ICsrKyBi
L2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfcGxhbmVfaW5pdGlhbC5jDQo+IEBA
IC0xMSw2ICsxMSw3IEBADQo+ICAjaW5jbHVkZSAiaW50ZWxfZGlzcGxheS5oIg0KPiAgI2luY2x1
ZGUgImludGVsX2Rpc3BsYXlfdHlwZXMuaCINCj4gICNpbmNsdWRlICJpbnRlbF9mYi5oIg0KPiAr
I2luY2x1ZGUgImludGVsX2ZiZGV2X2ZiLmgiDQo+ICAjaW5jbHVkZSAiaW50ZWxfZnJvbnRidWZm
ZXIuaCINCj4gICNpbmNsdWRlICJpbnRlbF9wbGFuZV9pbml0aWFsLmgiDQo+IA0KPiBAQCAtMTYw
LDE1ICsxNjEsMTAgQEAgaW5pdGlhbF9wbGFuZV92bWEoc3RydWN0IGRybV9pOTE1X3ByaXZhdGUg
Kmk5MTUsDQo+ICAJCQltZW0tPm1pbl9wYWdlX3NpemUpOw0KPiAgCXNpemUgLT0gYmFzZTsNCj4g
DQo+IC0JLyoNCj4gLQkgKiBJZiB0aGUgRkIgaXMgdG9vIGJpZywganVzdCBkb24ndCB1c2UgaXQg
c2luY2UgZmJkZXYgaXMgbm90IHZlcnkNCj4gLQkgKiBpbXBvcnRhbnQgYW5kIHdlIHNob3VsZCBw
cm9iYWJseSB1c2UgdGhhdCBzcGFjZSB3aXRoIEZCQyBvciBvdGhlcg0KPiAtCSAqIGZlYXR1cmVz
Lg0KPiAtCSAqLw0KPiAgCWlmIChJU19FTkFCTEVEKENPTkZJR19GUkFNRUJVRkZFUl9DT05TT0xF
KSAmJg0KPiAgCSAgICBtZW0gPT0gaTkxNS0+bW0uc3RvbGVuX3JlZ2lvbiAmJg0KPiAtCSAgICBz
aXplICogMiA+IGk5MTUtPmRzbS51c2FibGVfc2l6ZSkgew0KPiAtCQlkcm1fZGJnX2ttcygmaTkx
NS0+ZHJtLCAiSW5pdGlhbCBGQiBzaXplIGV4Y2VlZHMgaGFsZiBvZiBzdG9sZW4sDQo+IGRpc2Nh
cmRpbmdcbiIpOw0KPiArCSAgICAhaW50ZWxfZmJkZXZfZmJfcHJlZmVyX3N0b2xlbigmaTkxNS0+
ZGlzcGxheSwgc2l6ZSkpIHsNCj4gKwkJZHJtX2RiZ19rbXMoJmk5MTUtPmRybSwgIkluaXRpYWwg
RkIgc2l6ZSB1c2VzIHRvbyBtdWNoIHN0b2xlbiwNCj4gK2Rpc2NhcmRpbmdcbiIpOw0KPiAgCQly
ZXR1cm4gTlVMTDsNCj4gIAl9DQo+IA0KPiAtLQ0KPiAyLjQ0LjINCg0K
