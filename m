Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id E60BDBFD097
	for <lists+intel-gfx@lfdr.de>; Wed, 22 Oct 2025 18:08:48 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 141F610E7D4;
	Wed, 22 Oct 2025 16:08:47 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="J1x60Gi8";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.15])
 by gabe.freedesktop.org (Postfix) with ESMTPS id E93F110E7FB;
 Wed, 22 Oct 2025 16:08:45 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1761149326; x=1792685326;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-id:content-transfer-encoding: mime-version;
 bh=GBtGhiR1hzGOS4ZAYDVjb+CfyMExLfXmRtDNp4FlLKc=;
 b=J1x60Gi8Okn4amtjhRpHqF1PrAnx9DdyFnZVWli9IipwOIk21hlMBLdZ
 Rd9TdLTSKNCFfrhv5Ds2QOeRYkyPVeob9/1dk7s4zPBbRzu5vsM7xaVBG
 l1fKW9tB9smPwOBkqeuGD3wBS0lgDLlfc0a8GwVRNwiiWQvgmvylSTd/I
 8aak3cTBh6nk1+fnsE9K96xvHcSD9Rkirc4g8BSbZpdhkVH5hP7/9n3lP
 ULb9Ybec/uzwNVjSnhZJ2WcsslME/U8j+0jd9DmaY+zximrgmABLgotWL
 0fSnpvarptjr+nNsibBnkqdgaPCGcdke7B2V4gcm5xKFbtBzws2ib/Fd4 Q==;
X-CSE-ConnectionGUID: m6BNfX3vRWKteL+Uh/oq+A==
X-CSE-MsgGUID: 3ZlCOfYtQ96Pg+Usg5hSXA==
X-IronPort-AV: E=McAfee;i="6800,10657,11586"; a="63399362"
X-IronPort-AV: E=Sophos;i="6.19,247,1754982000"; d="scan'208";a="63399362"
Received: from orviesa004.jf.intel.com ([10.64.159.144])
 by fmvoesa109.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 22 Oct 2025 09:08:46 -0700
X-CSE-ConnectionGUID: hJIcE44ETVy98OqgQlQMRg==
X-CSE-MsgGUID: 6orS86OGSLuZNesWr+eE4w==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.19,247,1754982000"; d="scan'208";a="188193939"
Received: from orsmsx902.amr.corp.intel.com ([10.22.229.24])
 by orviesa004.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 22 Oct 2025 09:08:45 -0700
Received: from ORSMSX903.amr.corp.intel.com (10.22.229.25) by
 ORSMSX902.amr.corp.intel.com (10.22.229.24) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.27; Wed, 22 Oct 2025 09:08:45 -0700
Received: from ORSEDG901.ED.cps.intel.com (10.7.248.11) by
 ORSMSX903.amr.corp.intel.com (10.22.229.25) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.27 via Frontend Transport; Wed, 22 Oct 2025 09:08:45 -0700
Received: from DM1PR04CU001.outbound.protection.outlook.com (52.101.61.57) by
 edgegateway.intel.com (134.134.137.111) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.27; Wed, 22 Oct 2025 09:08:44 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=nJao9/iWcG3SptAHqKzw02nels8ZGqtiZKjfR2gNHNkQTKDXKXrRaJfNbHsEQRkljvjoChJBNIROSFZ3ACgeSktlScM8hcKDO7HAQQnTAL2SkAlmnthAdBm35MRz0FwoUBjebbirt9GpVMJH+rmoL66Ftw2UK7nbcSTxoixvKVuknvSU5TOB/g0VFTk6yG4sv8x0zj5EEdWPP6oBLGGvv3GRPaAJLY+KiozJ9vH/23HynFcsqSr7BmJuN4T900Qn8AZihJ5KZddjJ+pSTVbSK5WjhAKaM6q5QOHplwuOSKbaY7Dfoo+h5Z4dRRjIAXlLVBQlhXF6FiRguXDicbJW4A==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=GBtGhiR1hzGOS4ZAYDVjb+CfyMExLfXmRtDNp4FlLKc=;
 b=P3ii5o/9VVDKAOPK0LSj1JOtC/80M0Q8ucwQZ1kMewzVnfr0i0UXb9BuA7i64gis5lCcu8miyDVUlR1csoMc+S1TzQeykU3s1LMHbDb6Ow5ejJe360yFpUNxuXJNGgZNTE4BA07lAAQci9pAPUSffJaajE1B2/n/U44Zf0QJ2tOpUnntdoxO8sIVZRcR2AnFlK8W0nmyU4rr4DEYfWTFJPoT9qIqIFu+5lwOV8miWxoq+pp/HGqge0oh8UJx6q2wNDXSg2yFAnq7j0YhYBwwD1QXgkCadcrWVbsuJV0Sy2BABjwoZhAHlNdPNq2lRF+U67mgOv8ggbYEl1xkhkohVg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from DM4PR11MB6019.namprd11.prod.outlook.com (2603:10b6:8:60::5) by
 DS4PPF6915D992B.namprd11.prod.outlook.com (2603:10b6:f:fc02::29) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9253.12; Wed, 22 Oct
 2025 16:08:42 +0000
Received: from DM4PR11MB6019.namprd11.prod.outlook.com
 ([fe80::fc1:e80f:134c:5ed2]) by DM4PR11MB6019.namprd11.prod.outlook.com
 ([fe80::fc1:e80f:134c:5ed2%5]) with mapi id 15.20.9228.016; Wed, 22 Oct 2025
 16:08:42 +0000
From: "Hogander, Jouni" <jouni.hogander@intel.com>
To: "ville.syrjala@linux.intel.com" <ville.syrjala@linux.intel.com>
CC: "intel-xe@lists.freedesktop.org" <intel-xe@lists.freedesktop.org>,
 "Nautiyal, Ankit K" <ankit.k.nautiyal@intel.com>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>
Subject: Re: [PATCH] drm/i915/display: Take into account AS SDP in
 intel_dp_sdp_min_guardband
Thread-Topic: [PATCH] drm/i915/display: Take into account AS SDP in
 intel_dp_sdp_min_guardband
Thread-Index: AQHcQ08VQazebzb2NUetBIrKpSGW7rTOTN4AgAAIx4A=
Date: Wed, 22 Oct 2025 16:08:42 +0000
Message-ID: <de1cdae9a3695ac130bcd913ebe6c1e78d49f96d.camel@intel.com>
References: <20251022122552.890090-1-jouni.hogander@intel.com>
 <aPj6LCMluIBg5J1W@intel.com>
In-Reply-To: <aPj6LCMluIBg5J1W@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: DM4PR11MB6019:EE_|DS4PPF6915D992B:EE_
x-ms-office365-filtering-correlation-id: 207731f9-9407-46a1-31a4-08de11854550
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
 ARA:13230040|10070799003|366016|376014|1800799024|38070700021; 
x-microsoft-antispam-message-info: =?utf-8?B?NEVudGsyT1RmRWtOTUJUcVBicVE3MGFWdFg5WnlwQUtsbURXOGtRd2FYVTFN?=
 =?utf-8?B?VXU3WXlEK0ZhQzltK2c5cW5jQ0ZSNVp0RFloZDkxdmRCMDFFOTNhQzRpZXFJ?=
 =?utf-8?B?OUorbVZsR3NnYmJqZlJIRHowS3JKaFd4eUZIRitJdzFGcE54WGpyMUVYNVEw?=
 =?utf-8?B?cUkxeXRsdytoaG15bUEwcm92UWhNT0pPZ1ZJSnRkcVBaTFhrQndIZUxmVzBP?=
 =?utf-8?B?OUJIbHpXa2pEN01tQWpRYjU4ZHBOVCtrVEhCaHJkaWZwcFV6UXBTeEZsZ1M2?=
 =?utf-8?B?TXR5QmhCaUY0QktpWUZ4azNLbUc3blg3cndNTytITXhDS2ltbXJ2cVQ0dGZG?=
 =?utf-8?B?cTRPYm1MMGlMSmZQMWNRUDRYM09xcnYySVdnUlI3d3k2MmxTZTRHYXhoWjh4?=
 =?utf-8?B?cVBWSTdEdGZNN3ZOZ0xGeHIwTk53K1hxYTcrMFppeVgrZUdETlZCZ1Y0VUw5?=
 =?utf-8?B?TU1wSFN6NkkzVmVqTnNFLzlBcFBVOWNDb2l0MzdjMGpGQkZtUndqT3g0UjBF?=
 =?utf-8?B?UlpXMFNmL0IwT25TczNUd28vbUJ0WnFnRFFiQUNkRUhzbmFOM1dJTGJ0NGxO?=
 =?utf-8?B?OXR2eG1nV3A4ZFpiRGZTcFlaS0wvQ3BxWjRWYndudjFTSm1JbkJMNUdnMW54?=
 =?utf-8?B?NmJRcTVYbFQxZ3IrVDFTMVg3UlZTcHhhSzNXN0dZV3dDMzFQV0p3YUg1OXB4?=
 =?utf-8?B?Y1lLaUlPb3VyOThkQ1ZRTmlma2J4N3M2c0xSZzBOWjQ2eVMzZDR2ZFNabVZl?=
 =?utf-8?B?Q2NXTGF1MVJodWdtZGNYWHl4Vkg4RlE1QkQ2QWZqWFgxbmd2dDA2MU9mTk5u?=
 =?utf-8?B?b24zeVFhVkpSR1FWc3pLOWdRMjF4SWFBdlU0Nm1STE92L1dZQ2hNL0RJOFI1?=
 =?utf-8?B?WXhzUm54WkFQbkFCd1g2bTI1WFZvT1YwcjhrUzA4R0p1NG50UVI5MGRWeFpK?=
 =?utf-8?B?VkNoNHlZYkhYc1ZjUzN4WFgvWWozWE1NRlFYVmdoZzRIRWU4dTFoUzc0Z1V0?=
 =?utf-8?B?eTFWQllxTUVub1Z0U0hFRzZySWlad2xaK1VDMjcvK1RWc05jdTdLM3M4TU9W?=
 =?utf-8?B?ektjLzhqRmRBWDFOVjZTOExDRkdHMklnUWJFVjZzNWpkc0pKUDdkSDZMclFu?=
 =?utf-8?B?ZXhMR1F4a3Q1ZFljWjBZQ0dKVDVoeS80d2FVYWlpK1pSSitRYnZwdmVCeHVk?=
 =?utf-8?B?L083aW9oS003MDRkSHdQZVFKbnBwMmRZdmdoSlhTanY0YTdFdnlVa1pZWkhz?=
 =?utf-8?B?TUJxTDMvN3d5RjJ0UVNVVEFCajF6UTBTeGpDcEhJQmVpS2lWeVJRT1U5b1hh?=
 =?utf-8?B?OCtwMlhDekFsQUM1c1FsSkcySXF2Q09GaTBqYkpRVHMzOVo1cnM5UFQxV3hI?=
 =?utf-8?B?eUY3NTdIeUhUY0dZaHd2UTJoSEVXSWQ2bjQzUG5Tbk1vRWRLSFNtalo0d2g0?=
 =?utf-8?B?ZzR5NHFISDRjOG05SVpnd1ZkVDZZeW1MYWdFZ2Mwd2luZzdNUFZ0SHBMSzNR?=
 =?utf-8?B?U2FORUZNK2RqRUNOUjM0ZzdrS3NaL2NNMFBpamhwZHpFUm9lNTZpYVh3RVFm?=
 =?utf-8?B?a2dFSnNRcmpabjlsNWJZalVyOXA4eWVlM3hUZDFlV3BIdUhkWURESVMwcXRj?=
 =?utf-8?B?UzJybEFXT0JCSFdYRWtKU1h1WG9HZkhNamoxVDg5Q0tHZFJwSGcweHhTZGh3?=
 =?utf-8?B?bVMwM3FBTXUxdVMvaGVZNE4vN1hmdW5FbklPWnY4MFVYQ0IwY1BncnlaZ3Q3?=
 =?utf-8?B?V1BjZVcyN1BPZUozR1RkcjFnZDdqR05McUFUZ3hFL1Aza2pzaWlEUmtMN1Q0?=
 =?utf-8?B?czBYZi8wRXlVb0tkUkk4cXN4cnI2amIvSDBHR20xeFoyZWQwdDVIVmJHWWg4?=
 =?utf-8?B?SDZWV1d3SlYvVklaLzJwWU1oMyt2dEIyek5ZLzBKR3U2Vnl3d0V0RG9MZ2Jz?=
 =?utf-8?B?ZVRMRXJyTW5TOEd0ZExBdjZkVnJKcC9WOTg1MUQ5M0ozZnljQ2pYV2FkQTlx?=
 =?utf-8?B?Z013MjdrVVA2ZE5SMXBVSmxRWllOSHpRT0VDaFM5TEZaRCtoK1pUeXVwd2Ir?=
 =?utf-8?Q?jqKZp/?=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM4PR11MB6019.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(10070799003)(366016)(376014)(1800799024)(38070700021); DIR:OUT;
 SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?utf-8?B?OEtyS0hvTTdIUzZ3M1VBWXFvNHVmZlFJRHBHWloyNjZKUHNYOWVCZU5zSGFp?=
 =?utf-8?B?ZnJQM3BDUkthWmRFWFlxcGZCUkxDQ2ZYMEI4VFkrRndXY3hmdVd0MjBpSGRz?=
 =?utf-8?B?emxzblBDUnVaTnlhYkl0SkhOQTNWTTY5VnljOUN5MlN2TUlqb1pldTZwYkxQ?=
 =?utf-8?B?NG5qRzJOQm9LVVFiTlZyak1hTGNEbDJqaFlMQTc4bDV4alUxY2J6RWsrWXN5?=
 =?utf-8?B?L3J4Um9wVWZhL1BRNTF0ek1RdDIra0l2R2ZuZXRUa1ovUjhFMit5VGxXd2pl?=
 =?utf-8?B?NVVJYzcrQTFNUDI4MldxcjFTZ3dRR2RDaEgxRFloN0FXQS8wU0NiZ3pBRys2?=
 =?utf-8?B?RzZON2NhQ3FnTmRNaGF4b252TDdmeWtoTG91UEdmTTNScFZETFJ6UWZnY3Jl?=
 =?utf-8?B?RnFscno2RGx3ZXVjcXloN3FaZ3cxZ0xLcEl3c0FzUENmZHIyYythUWlUZFV4?=
 =?utf-8?B?ZkNSQ1Z2ZUYxdXZVcDRwTndjTjI2STgwdDhyRXR3bEd2aUdkd3huejdYRXNI?=
 =?utf-8?B?WnVkaklwZjVwWDA5bG5UWlE4QmNQc1Fhc0VzdkpCK1V2Y3RpZnBrS3dSVGI2?=
 =?utf-8?B?WSs0Mlk1c2l5RUNNU2hzWm5MUmZRc0hxcFFicHhpNEpNenpHbzZrcDF4dW12?=
 =?utf-8?B?N0pTVm0wdGFBYnNJNkhNSUJkcFZSVENtN1lGWmsvY3hKS0s2VyswVUNXSGc0?=
 =?utf-8?B?dy8rY3ozNlZEWE9SbTBxanRZRXBlMDlLdDh1UXluREJEK1hjUU1pTHJvdlRT?=
 =?utf-8?B?YWZNc0kzc1RRSnVQSnlGQXNIYjdNN296eEpma0dkZUpJMFA4am9ZRnlyaUlR?=
 =?utf-8?B?U2VKdVF2cW9uRFJCaUxzZmZlTFNHZU9qOWVCSklaUmtMNlFuZlZ4TTg4SUVT?=
 =?utf-8?B?ZDU3RzBja0MwTmVUY3FhMEF0QlY3TUhpOEZ3ZVUxNGtad3crNEQybTFNM2VS?=
 =?utf-8?B?T2MrR3BXdU02eml3TUxqS29lVWtPcFhwdFlTY3ZtZUhsNFNmbTJGV3kyUEZ1?=
 =?utf-8?B?amhic0pXNWRwaXYxaU1wWVZRK2tIQWdhenBscTNiSU5YVVlGdnliM25TVERw?=
 =?utf-8?B?WVN4Z2tsTTVJV0ZWYVZBTGRNOHVuRitZNG5PYW4wYVdtZXhwckVwL0dWSVRS?=
 =?utf-8?B?TFRyWFRNQmlaN3JYQ0dTTnN2NGhBZm1vdFNkQjZQRGFZd1lYTUNxL0Qyc1N0?=
 =?utf-8?B?cHdWRyt1TFFwYXRqSXN4RytsMkdSQ3YxVGFSV0VJMWpLanRyVG5MY1luTDBv?=
 =?utf-8?B?UzgrcVJraUFxOEJFc1RzYkRBTytGcmJwbXhYdDFJWE5TOWd3YVQzdVUyYit6?=
 =?utf-8?B?Qk9CWXYxZG95anB2SXVOcU9tZjRFZDEvZ2FrNXZvT05CeFFhOHd1NWlRZFI1?=
 =?utf-8?B?QXRNWUZSTzJmTWpTc2ZzemFXUElPdnZwMFZWcE9Kc3I0N3VXclh4MHB3TjBr?=
 =?utf-8?B?c3FWSVFGOFNJQ2dmS0dBTGtUeFVtV0xDNHA5ZUNhY1JwWTR1elAzalBoeUc5?=
 =?utf-8?B?ZTBtYTZXcnlBYkZxSklxK0RyRGY0Ujc3MUtqcU0xRVBRK0wwTHNxYU5pYWhZ?=
 =?utf-8?B?QmxCL0hhTWdXWWpWUUdSdncydWRDUEZXUUFqSitESXp2a2QzY1diKzdKOUNo?=
 =?utf-8?B?ZTZlZ1RlKzdmVHcwWnlPWGVKZVVPeElqb0dmeVVCMmNVc2hadCtOUjlXOWpF?=
 =?utf-8?B?ZVBKTW52OGpBaW9rc21qb1doaWMvY1FydDBtdk1zSVBwRWs0NXg5WXhUa0Nh?=
 =?utf-8?B?VHIxVnUvMXZPaHRnVERwTm9yZDc4bi93VEJMeVZ4enhGOGFwRTBJZ1gzd1Vh?=
 =?utf-8?B?YUNvRkRxejhsVC9KTHZQeWwzRHA2TSs5YzN4S0NLM2N5TnNvVnJOeHJZckl0?=
 =?utf-8?B?WHJYUVRwUDVsTUgyaXo5T0s2UEpJNC8rbkV3T3Y1b2N4VGdZdXBBTUxYdjdX?=
 =?utf-8?B?MnVCQkVGMnJaZlYxTVNFWmlBRUF5NkY1VjZjRndyaXltOGsyWHlLZDBNbkFh?=
 =?utf-8?B?d2pvZlpCUUx0V21TRTNmNWJDbXlQcUY1SnVtM3RrQ1FlVjlkWDZBd0tITWd6?=
 =?utf-8?B?Si8rdG1CTUtSRW1MazFDNm1INkFsTThnKzJsYVlIYmowN0JpdjNkeURXaUh1?=
 =?utf-8?B?Mnp3Z3NIUVVCVUtQdWpNbGZBNnNtaVdVNnlsTHhiL0l1cXZRK3NFNnVpVFha?=
 =?utf-8?B?U1hvVWExR2w4UnZYT21TZFZvU2NzUTd2djN5KzU3U3BFWUVNM1ZHRjlGaFQz?=
 =?utf-8?B?NEtQRGlvWk9OUzJHaWo1c1ZPSDZnPT0=?=
Content-Type: text/plain; charset="utf-8"
Content-ID: <A96360E9BEBAB64EA9B33A39949B2A69@namprd11.prod.outlook.com>
Content-Transfer-Encoding: base64
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: DM4PR11MB6019.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 207731f9-9407-46a1-31a4-08de11854550
X-MS-Exchange-CrossTenant-originalarrivaltime: 22 Oct 2025 16:08:42.4122 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: KZsZfsNuBbT5JL8UKlL+TSR1bh2H/0gG0d9mjqMwPGNf0LxoEPCS848clNhsOR3+noM0J5cViO/R8pRLS8Pbk673DKDHRpsKwy3jXEN/DFE=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DS4PPF6915D992B
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

T24gV2VkLCAyMDI1LTEwLTIyIGF0IDE4OjM3ICswMzAwLCBWaWxsZSBTeXJqw6Rsw6Qgd3JvdGU6
DQo+IE9uIFdlZCwgT2N0IDIyLCAyMDI1IGF0IDAzOjI1OjUyUE0gKzAzMDAsIEpvdW5pIEjDtmdh
bmRlciB3cm90ZToNCj4gPiBXZSBzdGFydGVkIHNlZWluZyAiW2RybV0gKkVSUk9SKiBUaW1lZCBv
dXQgd2FpdGluZyBQU1IgaWRsZSBzdGF0ZSINCj4gPiBhZnRlcg0KPiA+IHRha2luZyBvcHRpbWl6
ZWQgZ3VhcmRiYW5kIGludG8gdXNlLiBUaGVzZSBhcmUgc2VlbiBiZWNhdXNlIFZTQw0KPiA+IFNE
UHMgYXJlDQo+ID4gc2VudCBvbiBzYW1lIGxpbmUgYXMgQVMgU0RQcyB3aGVuIEFTIFNEUCBpcyBl
bmFibGVkLiBBUyBTRFAgaXMgc2VudA0KPiA+IG9uIGxpbmUNCj4gPiBjb25maWd1cmVkIGluIEVN
UF9BU19TRFBfVEwgcmVnaXN0ZXIuIFdlIGFyZSBjb25maWd1cmluZw0KPiA+IGNydGNfc3RhdGUt
PnZyci52c3luY19zdGFydCBpbnRvIHRoYXQgcmVnaXN0ZXIuDQo+ID4gDQo+ID4gRml4IHRoaXMg
YnkgZW5zdXJpbmcgQVMgU0RQIGlzIHNlbnQgb24gbGluZSB3aGljaCBpcyB3aXRoaW4NCj4gPiBn
dWFyZGJhbmQuIEZyb20gdGhlIGJzcGVjOg0KPiA+IA0KPiA+IEVNUF9BU19TRFBfVEwgPCBTQ0wg
KyBHdWFyZGJhbmQNCj4gPiANCj4gPiBCc3BlYzogNzExOTcNCj4gPiANCj4gPiBGaXhlczogNTJl
Y2Q0OGI4ZDNmICgiZHJtL2k5MTUvZHA6IEFkZCBoZWxwZXIgdG8gZ2V0IG1pbiBzZHANCj4gPiBn
dWFyZGJhbmQiKQ0KPiA+IENjOiBBbmtpdCBOYXV0aXlhbCA8YW5raXQuay5uYXV0aXlhbEBpbnRl
bC5jb20+DQo+ID4gU2lnbmVkLW9mZi1ieTogSm91bmkgSMO2Z2FuZGVyIDxqb3VuaS5ob2dhbmRl
ckBpbnRlbC5jb20+DQo+ID4gLS0tDQo+ID4gwqBkcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5
L2ludGVsX2RwLmMgfCAxNSArKysrKysrKysrKystLS0NCj4gPiDCoDEgZmlsZSBjaGFuZ2VkLCAx
MiBpbnNlcnRpb25zKCspLCAzIGRlbGV0aW9ucygtKQ0KPiA+IA0KPiA+IGRpZmYgLS1naXQgYS9k
cml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2RwLmMNCj4gPiBiL2RyaXZlcnMvZ3B1
L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfZHAuYw0KPiA+IGluZGV4IGIwYWViNmMyZGU4NmMuLjU0
YjVlMDYwYmU4MmEgMTAwNjQ0DQo+ID4gLS0tIGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxh
eS9pbnRlbF9kcC5jDQo+ID4gKysrIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRl
bF9kcC5jDQo+ID4gQEAgLTcwMjYsNyArNzAyNiw3IEBAIGludCBpbnRlbF9kcF9jb21wdXRlX2Nv
bmZpZ19sYXRlKHN0cnVjdA0KPiA+IGludGVsX2VuY29kZXIgKmVuY29kZXIsDQo+ID4gwqB9DQo+
ID4gwqANCj4gPiDCoHN0YXRpYw0KPiA+IC1pbnQgaW50ZWxfZHBfZ2V0X2xpbmVzX2Zvcl9zZHAo
dTMyIHR5cGUpDQo+ID4gK2ludCBpbnRlbF9kcF9nZXRfbGluZXNfZm9yX3NkcChjb25zdCBzdHJ1
Y3QgaW50ZWxfY3J0Y19zdGF0ZQ0KPiA+ICpjcnRjX3N0YXRlLCB1MzIgdHlwZSkNCj4gPiDCoHsN
Cj4gPiDCoAlzd2l0Y2ggKHR5cGUpIHsNCj4gPiDCoAljYXNlIERQX1NEUF9WU0NfRVhUX1ZFU0E6
DQo+ID4gQEAgLTcwMzYsNiArNzAzNiw4IEBAIGludCBpbnRlbF9kcF9nZXRfbGluZXNfZm9yX3Nk
cCh1MzIgdHlwZSkNCj4gPiDCoAkJcmV0dXJuIDg7DQo+ID4gwqAJY2FzZSBEUF9TRFBfUFBTOg0K
PiA+IMKgCQlyZXR1cm4gNzsNCj4gPiArCWNhc2UgRFBfU0RQX0FEQVBUSVZFX1NZTkM6DQo+ID4g
KwkJcmV0dXJuIGNydGNfc3RhdGUtPnZyci52c3luY19zdGFydCArIDE7DQo+IA0KPiBJcyB0aGUg
KzEgYWN0dWFsbHkgbmVlZGVkPyBJIGdldCB0aGUgaW1wcmVzc2lvbiB0aGUgYnNwZWMgcGFnZSBp
c24ndA0KPiBiZWluZyB2ZXJ5IGFjY3VyYXRlIHdpdGggdGhlICc8JyB1c2FnZS4NCj4gDQo+IEht
bSwgdGhlcmUgaXMgYW4gZXh0cmEgbm90ZSBpbiB0aGUgRU1QX0FTX1NEUF9UTCByZWdpc3RlcjoN
Cj4gIkZvciBEUC9lRFAsIGlmIHRoZXJlIGlzIGEgc2V0IGNvbnRleHQgbGF0ZW5jeSAoU0NMKSB3
aW5kb3csIHRoZW4gaXQNCj4gwqBjYW5ub3QgYmUgdGhlIGZpcnN0IGxpbmUgb2YgU0NMDQo+IMKg
Rm9yIERQL2VEUCwgaWYgdGhlcmUgaXMgbm8gU0NMIHdpbmRvdywgdGhlbiBpdCBjYW5ub3QgYmUg
dGhlIGZpcnN0DQo+IGxpbmUgDQo+IMKgb2YgdGhlIERlbGF5ZWQgVi4gQmxhbmsiDQo+IFNvIEkg
Z3Vlc3MgdGhlcmUgbWlnaHQgYmUgYSByZWFsIHJlYXNvbiBmb3IgdGhhdCBleHRyYSBsaW5lLg0K
DQpJIGFjdHVhbGx5IHRlc3RlZCB3aXRob3V0IHRoYXQgKzEgYW5kIEkgc3RpbGwgc2F3IHRob3Nl
IHRpbWVvdXRzLiBTbw0KdGhhdCBhbHNvIHN1cHBvcnRzIHRoZSBpZGVhIHdlIG5lZWQgdGhhdC4N
Cg0KPiANCj4gVGhvdWdoIEknbSBwcmV0dHkgc3VyZSBubyBvbmUgaGFzIGV2ZW4gY29uZmlybWVk
IHRoYXQgd2UgZG9uJ3QgaGF2ZQ0KPiBhbnkNCj4gb2ZmIGJ5IG9uZSBlcnJvcnMgaW4gRU1QX0FT
X1NEUF9UTC9ldGMuIFNob3VsZCBkbyB0aGF0IGF0IHNvbWUNCj4gcG9pbnQuLi4NCj4gDQo+ID4g
wqAJZGVmYXVsdDoNCj4gPiDCoAkJYnJlYWs7DQo+ID4gwqAJfQ0KPiA+IEBAIC03MDUyLDExICs3
MDU0LDE4IEBAIGludCBpbnRlbF9kcF9zZHBfbWluX2d1YXJkYmFuZChjb25zdCBzdHJ1Y3QNCj4g
PiBpbnRlbF9jcnRjX3N0YXRlICpjcnRjX3N0YXRlLA0KPiA+IMKgCcKgwqDCoCBjcnRjX3N0YXRl
LT5pbmZvZnJhbWVzLmVuYWJsZSAmDQo+ID4gwqAJwqDCoMKgDQo+ID4gaW50ZWxfaGRtaV9pbmZv
ZnJhbWVfZW5hYmxlKEhETUlfUEFDS0VUX1RZUEVfR0FNVVRfTUVUQURBVEEpKQ0KPiA+IMKgCQlz
ZHBfZ3VhcmRiYW5kID0gbWF4KHNkcF9ndWFyZGJhbmQsDQo+ID4gLQkJCQnCoMKgwqANCj4gPiBp
bnRlbF9kcF9nZXRfbGluZXNfZm9yX3NkcChIRE1JX1BBQ0tFVF9UWVBFX0dBTVVUX01FVEFEQVRB
KSk7DQo+ID4gKwkJCQnCoMKgwqANCj4gPiBpbnRlbF9kcF9nZXRfbGluZXNfZm9yX3NkcChjcnRj
X3N0YXRlLA0KPiA+ICsJCQkJCQkJwqDCoMKgwqDCoMKgDQo+ID4gSERNSV9QQUNLRVRfVFlQRV9H
QU1VVF9NRVRBREFUQSkpOw0KPiA+IMKgDQo+ID4gwqAJaWYgKGFzc3VtZV9hbGxfZW5hYmxlZCB8
fA0KPiA+IMKgCcKgwqDCoCBjcnRjX3N0YXRlLT5kc2MuY29tcHJlc3Npb25fZW5hYmxlKQ0KPiA+
IC0JCXNkcF9ndWFyZGJhbmQgPSBtYXgoc2RwX2d1YXJkYmFuZCwNCj4gPiBpbnRlbF9kcF9nZXRf
bGluZXNfZm9yX3NkcChEUF9TRFBfUFBTKSk7DQo+ID4gKwkJc2RwX2d1YXJkYmFuZCA9IG1heChz
ZHBfZ3VhcmRiYW5kLA0KPiA+ICsJCQkJwqDCoMKgDQo+ID4gaW50ZWxfZHBfZ2V0X2xpbmVzX2Zv
cl9zZHAoY3J0Y19zdGF0ZSwgRFBfU0RQX1BQUykpOw0KPiA+ICsNCj4gPiArCWlmIChhc3N1bWVf
YWxsX2VuYWJsZWQgfHwNCj4gDQo+IGFzc3VtZV9hbGxfZW5hYmxlICYmIEhBU19BU19TRFAoKSA/
DQoNCk9rLCBJIHdpbGwgY2hhbmdlIHRoaXMuDQoNCkJSLA0KDQpKb3VuaSBIw7ZnYW5kZXINCg0K
PiANCj4gPiArCcKgwqDCoCBjcnRjX3N0YXRlLT5pbmZvZnJhbWVzLmVuYWJsZSAmDQo+ID4gaW50
ZWxfaGRtaV9pbmZvZnJhbWVfZW5hYmxlKERQX1NEUF9BREFQVElWRV9TWU5DKSkNCj4gPiArCQlz
ZHBfZ3VhcmRiYW5kID0gbWF4KHNkcF9ndWFyZGJhbmQsDQo+ID4gKwkJCQnCoMKgwqANCj4gPiBp
bnRlbF9kcF9nZXRfbGluZXNfZm9yX3NkcChjcnRjX3N0YXRlLCBEUF9TRFBfQURBUFRJVkVfU1lO
QykpOw0KPiA+IMKgDQo+ID4gwqAJcmV0dXJuIHNkcF9ndWFyZGJhbmQ7DQo+ID4gwqB9DQo+ID4g
LS0gDQo+ID4gMi40My4wDQo+IA0KDQo=
