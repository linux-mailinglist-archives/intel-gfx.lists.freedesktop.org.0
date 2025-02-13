Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 8D271A34EE7
	for <lists+intel-gfx@lfdr.de>; Thu, 13 Feb 2025 21:02:25 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 2AD5A10E087;
	Thu, 13 Feb 2025 20:02:22 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="njnnGhzj";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.17])
 by gabe.freedesktop.org (Postfix) with ESMTPS id DD8EF10E087;
 Thu, 13 Feb 2025 20:02:20 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1739476941; x=1771012941;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-id:content-transfer-encoding: mime-version;
 bh=Ba+fyqlUBQnjgZd4PclU/xk+KB8EgAdrMh3Whhx6GK4=;
 b=njnnGhzjz9eQnKhtq4AHgYsF355fHQ9tgPX8Jcx1YWv8TKXNFh2IZQBh
 zO+4gta5ygw56ain8Q8THflDLevXCrxFEwbHC7fqFXLd7ftpNKtbb0lgM
 NBfD1S3bOfl4Fa1axHg2PdCK3q2rmakz8zfbAWgYHXkrau7i+A4dCHHKu
 Q1dMqjqbP8qpQmgQaPZWg3tJEsfnwX7lGfmM3Rf34d6xNL+oxPA2MwRTB
 0nUdxcZ72S0QGEcBXSKbRJqlnoJv+km5XYzWzfHHAn2Jb42gDdHetTAYX
 RRnRn0TOh62ISS78EZkjan4hP+gl9DVas4TsHeYdbc63sZDgfHgLh6P8W w==;
X-CSE-ConnectionGUID: PVV7qFQNQ7GmciDJ9OZH3g==
X-CSE-MsgGUID: oCoqCPLxR7ed5YErXK7AhA==
X-IronPort-AV: E=McAfee;i="6700,10204,11344"; a="40079293"
X-IronPort-AV: E=Sophos;i="6.13,282,1732608000"; d="scan'208";a="40079293"
Received: from orviesa001.jf.intel.com ([10.64.159.141])
 by fmvoesa111.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 13 Feb 2025 12:02:20 -0800
X-CSE-ConnectionGUID: Jl164QI3SvCXkiwM0jzuvQ==
X-CSE-MsgGUID: 9kIBEWXwT6Ganqp4VgSe6Q==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.12,224,1728975600"; d="scan'208";a="150422124"
Received: from orsmsx603.amr.corp.intel.com ([10.22.229.16])
 by orviesa001.jf.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 13 Feb 2025 12:02:20 -0800
Received: from ORSMSX901.amr.corp.intel.com (10.22.229.23) by
 ORSMSX603.amr.corp.intel.com (10.22.229.16) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.44; Thu, 13 Feb 2025 12:02:19 -0800
Received: from ORSEDG602.ED.cps.intel.com (10.7.248.7) by
 ORSMSX901.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1544.14 via Frontend Transport; Thu, 13 Feb 2025 12:02:19 -0800
Received: from NAM11-DM6-obe.outbound.protection.outlook.com (104.47.57.170)
 by edgegateway.intel.com (134.134.137.103) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.44; Thu, 13 Feb 2025 12:02:19 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=uqgcdFOyR9EOriFr5KG4uOxSYvWNX/Jam4H5UCSWhX3tMkhLU3P+j+eN9mI12BzeI9BwhXSI6aeP8EDhGyQpYRyjYc1mqgM7ocDki8ONW2KdtL7YPTbpXOY2fNvBjtB0oJJcHm/E+9NClwvLOz+8HjUuKzxtKgQP4fPC44yqUhOUt0fMbptSw3NJlsEnXE0a119vG0YJp2xOxJE3oB7A0tBcgeLj3uJVs+RkmwhSFjGAaTCih8gSHOhYyhxDqjyKWXuTjPR9qPb+9nXz0jpT2spYHrmM6LtsRpAxrklsma6snsdCWk3i9XsiR2Uip86uGyv+8BlOsH0Hn5QGa+nw/w==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=Ba+fyqlUBQnjgZd4PclU/xk+KB8EgAdrMh3Whhx6GK4=;
 b=LxRIuohBqu7abnovHd+myHd94E887reji/PUtAgHLEEvr/+oeFnxJ5jRG2u6jx/pPZF9Xj6wDxA0eTYzYH+cK8BB0NPr2NoBe9YJBNwDjlgLdf1rZ1O0m5RAlnHWOatVeZxE0Krds8KRaEuilnGHn200MODXM+CzzQ5XCxs3lu+AmztzE2vNGS3HVZEiGJqH7N+fMziCUhlyWiu/jaGVssJ2MtjbfcpdQJ+9UxTfmymtuKxp9ZtPRSmexEcUdnm9FyEXVg76O29q6WxxSQMWJMuxxMkV4Mo/daxFzMYMF+3Ozanmb+VkAG4IN154kiBo+DDOfA8wXd2ZbB2euGkU9A==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from CY8PR11MB7777.namprd11.prod.outlook.com (2603:10b6:930:71::14)
 by SA1PR11MB8522.namprd11.prod.outlook.com (2603:10b6:806:3b1::19)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.8445.13; Thu, 13 Feb
 2025 20:02:17 +0000
Received: from CY8PR11MB7777.namprd11.prod.outlook.com
 ([fe80::60a1:eab8:65ee:6bb8]) by CY8PR11MB7777.namprd11.prod.outlook.com
 ([fe80::60a1:eab8:65ee:6bb8%4]) with mapi id 15.20.8445.013; Thu, 13 Feb 2025
 20:02:17 +0000
From: "Govindapillai, Vinod" <vinod.govindapillai@intel.com>
To: "ville.syrjala@linux.intel.com" <ville.syrjala@linux.intel.com>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>
CC: "intel-xe@lists.freedesktop.org" <intel-xe@lists.freedesktop.org>
Subject: Re: [PATCH 4/8] drm/i915: Hook in display GTT faults for IVB/HSW
Thread-Topic: [PATCH 4/8] drm/i915: Hook in display GTT faults for IVB/HSW
Thread-Index: AQHbaD7qGWVVUNVXS0ak55nB4f6x/rNF09yA
Date: Thu, 13 Feb 2025 20:02:17 +0000
Message-ID: <cbe403a8812524ba9db8eb093d612b1d9cefb921.camel@intel.com>
References: <20250116174758.18298-1-ville.syrjala@linux.intel.com>
 <20250116174758.18298-5-ville.syrjala@linux.intel.com>
In-Reply-To: <20250116174758.18298-5-ville.syrjala@linux.intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
user-agent: Evolution 3.52.3-0ubuntu1 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: CY8PR11MB7777:EE_|SA1PR11MB8522:EE_
x-ms-office365-filtering-correlation-id: e490e25d-43f0-420f-3979-08dd4c69510a
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0; ARA:13230040|1800799024|376014|366016|38070700018;
x-microsoft-antispam-message-info: =?utf-8?B?Wm5Bbm44Mko0YUFCT24relJqVXdadm5vSWxVaWFCM1U5NE9MS1BZTzR2RVRL?=
 =?utf-8?B?b0tSWDc4V05EWEFUK3Jrb3MwaXNjMmZYRzh1SWt4OUNRcmErazQzdXFNN0pa?=
 =?utf-8?B?T2l6UUFCREdiSXNhd1BsdWU4YXBqV3pnMHVmWHE4MWhYR2xGZU4xd0t6NzlZ?=
 =?utf-8?B?V1dEZUlOSjNwUjNYdkJkSTZBdGE1TFllbnByK295RXRmUDZIUzl4SWpBL1hl?=
 =?utf-8?B?dWZjRnM4a1BCNmtiQmtPQjF0S0svU2p1TFd0eGk0SXIrV1NFd1ZvR0Z1TFZO?=
 =?utf-8?B?b3pZNUxxT054QzZFZTBnNld5NVUvcTBOdWtyWENEVWo1U056REp0eXlLRUVn?=
 =?utf-8?B?dDdFRnlZc3NKbi8vQmR1c1pmRVFUM3pESElKZzU2ZmFXdzZPR296NjNrQ3or?=
 =?utf-8?B?dVhDYnNPS0JmaU5sSWdRMFQ2SkpxUHZRYTY4bXZYMnBaRlVJOVVaR2dQb1Zq?=
 =?utf-8?B?dmNVSHNoMGtYWm1Pa005cWZJYkljT0pZMFJUTmNaVTQrY3hLbXQwN3VaTHE1?=
 =?utf-8?B?Wk1EODJCVnZobThQMS82VWFpRThiV2pFTGtqS2ZXREtENE1GTk5HK2o5Q2R4?=
 =?utf-8?B?YkQ2cDZtbitGWFFkeDhBTXgwc3NvWW5FcHZaZ2x6OEZYU3FSV256Ynh1RmlK?=
 =?utf-8?B?bTBLYy9YUkFmbnJZTEp0RzhIK0JrQTFVZHJPZGIxVVVyUHVENkh4a2FSTFBu?=
 =?utf-8?B?SDlMeVFvWDRWM1lvSHFDVVhHV0J3K1VyQ2lhVGhFMEdKZU93UlVURDQwY203?=
 =?utf-8?B?SDVUdjc5OFNzNjh2d3hlTThlSHZQNEt3ZjBWUVhvNzdpNmhVZkhLRWtxV0VE?=
 =?utf-8?B?Um0xNnNvdjBuLzl6MjlWVVZsNDA3OCs3cC9IVVdDcHlBTERKRnR5ODZYUVYv?=
 =?utf-8?B?VmVMcUxVWmZSbFJ6R3kvR1FwUkZOZ0ZNWStQbWE4enQvL1JXTGJ3VkpES2VZ?=
 =?utf-8?B?cHdCcHpGZUVKNXRxOGtnaGdMNEhXaGdmUXQ0OHZXMzBOQWUvSWlkQkVoNDYr?=
 =?utf-8?B?U1FFY3BVQTA2UUpQeEllcWJMZnpMdzExTUFhZU0vMmZackV4UGZweGdmSExE?=
 =?utf-8?B?OFNBSG9WTmhmbk5sektacUJzK2YwL0tZZWtxT2FrQWdmY0NRYjFZVGRYUkJR?=
 =?utf-8?B?Y2ZiSGcvZnl5ZkxVTjJsQUpVS1M5NEgwSTl1QmlFamc4SmthbE00Vk9VbkQw?=
 =?utf-8?B?MmlNQlNPRTBmYUxqcnNNN0E4ZzlKZ3dBMER3QldET1YwVE1mSFRsMXUwYTIz?=
 =?utf-8?B?OEoyQzhZUzhiWmZIdkVGd0swTEFxWndzeFVvaXRDSHF1U2dDTWJ2eFFOR2ZK?=
 =?utf-8?B?bGJ1WmVNUEVwVHRoYWQwenNuMUowYVFwaEdlOWNnQk05TlJRL0Faa3ZYbFMz?=
 =?utf-8?B?MnlwdHVOMWs0Z1QrREFyOXFTVzV3Nk9FSFh0OHE2TEwwaDl1RDVobUJpbE5H?=
 =?utf-8?B?QlpzY3JlQkQxTWx6QUhkdGlKVXFHNXV6RjNjclNsSzJuMkE1Sng1Nkd4NUhU?=
 =?utf-8?B?ZVZDai9vcFFkVlBQbkQwNlNna2V5elA2by9yUFk1MzVHS0E2eUQxeWxFY21H?=
 =?utf-8?B?M2pQMlcvbExnRmd2SWpYUEZRU01tM2hESnNIWloyMlBoM0JBTzNad1VudTBz?=
 =?utf-8?B?bWFHcXNYdlo4dGlLOGNJeFJrSzJuTERnOVZBTm90S1o0VDZmNVFTcTVSSFZo?=
 =?utf-8?B?Q3J1VEpha3gxSXZjTm9vaVBaeGdxZzRQVDdPaDNLU09zaE5pSVM1VFJ6L1Rq?=
 =?utf-8?B?ZkphV2pRVUNla1ZpdXNuZVlwZzhObVFvQWd5T3I5SUdYdGx0dnM4VFJpWm8v?=
 =?utf-8?B?SUowNlZYeVNwdWVoOC9TTndGbm9ReCtFUHp4ZTVzR2svVEY4VG5iSXVOU3dk?=
 =?utf-8?B?M2hZMkh5SHVFYUlodGV0eDFzdUJMVlNvV3dPNmQvWk9NMHZvNTJQeEV1VW12?=
 =?utf-8?Q?lrWcdvCi6dSdVP67ZjJ/H+EU3aeGgOEd?=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:CY8PR11MB7777.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(1800799024)(376014)(366016)(38070700018); DIR:OUT; SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?utf-8?B?ZGtNYjlwcXd6OERPQnppR0dITXBDamlsVTIvWGpsVm85c2MyTlBoTGpEOUhO?=
 =?utf-8?B?SXlRbGZ4dGRhNEt5dzFmQUJZcGRBWFYwSjJyc1piM0RFRWFpVG1XLzNXRVdz?=
 =?utf-8?B?UXdJRjNwWUJSTks4a1BRSENiTW0zcWlYditZTTAyMVV5VGIxZ2xTWGJhenpm?=
 =?utf-8?B?MGdzKzJhV0h5OHgvdmtxNFpRaDZVODZtb2lKWjVpUk9jSkttZGovcTgrRit5?=
 =?utf-8?B?bVNQMm5sQTI1cFVERk1BZHB0bFJ0M3lRU1FTYnhUK3pFeWRtWFR5R2VGUGtR?=
 =?utf-8?B?S0NoV0lkU3RlZ2xwRUF6VHNqRldweFFvZ1VtNW9YL0Z4a0NZTjdxUzBNaTNV?=
 =?utf-8?B?MXNsWXE5T3ZGOUxKcDdFTVBqR3FLY2ZZM1NxWjM3U0ljcDJ1bTRaWFMrWW9q?=
 =?utf-8?B?eGhRdStJeEVWUDhQOEEwVmZBK2EyTGF0WHlMUnhLR05CVkVQNk00bXNRYWhS?=
 =?utf-8?B?bTNWMFhvTExCZHBtUURoZCtsVXovUk1RNm9pYmNBNHpwVkxZSmhyK3FIWlYr?=
 =?utf-8?B?SklYYWRNT2hESGRIRmFXOUhpZ2V4RCtZNnUzMmU1NXB5ajlSTlcweDVwSk1T?=
 =?utf-8?B?NERWTWIyQkJGV245dDdINEJDdXQ2YkYwNXFVdUhzTnplRHErQUIyalJHYitt?=
 =?utf-8?B?NU1JSnVzc29oMjcrRGMxSWtmOEJuVWdZYlFCR213bGtGUUFlQ0tLdDJkdlZ4?=
 =?utf-8?B?TTJibXRta2I0cWp3cTdXN3lGeEhHTTU0aGc0cDVNR3JGd3g2bGZycnpqVk9l?=
 =?utf-8?B?SUhLdUlhQ2JLVFU0YklzNDIzRDRkZDZYR3pGYlFnUE9TTlpzeVFiSDkyS1E5?=
 =?utf-8?B?bENxSktvM0NoZnRDMldaTFBQbXV3NkpSVWxyOUg1OEd4K0NSYkRabjlrd2F2?=
 =?utf-8?B?Q1R5QVhHdHU1a0d4MEJXaEZLOVdLN2dIZWVwbU5GQjhOZllxdFV5VlJTejNF?=
 =?utf-8?B?QVo4WkxpZ0Z4citiZWZKUHRwcUl3dGtiVjFvVi9CU0VYNHF1UUxUcndHdWh5?=
 =?utf-8?B?UUhiS0JjZkZON0V2Zk8yL3ZaalBwMHRDRkE5YTRMN2NuczczMkxSdzZ4MkFX?=
 =?utf-8?B?WlZFczFTbHYxUGlVSXdqYysyUEUrNEQyU2pwalJ1cUxsZ3dqSTh5blRvZlRv?=
 =?utf-8?B?cWd3YmNpUmRZczdKQ295aHlBYyt2YytuRWNNc1FhYTJuRXhBdXBpREpja1dH?=
 =?utf-8?B?OG4xQ0NQM0ZPNU9paVRKckZYUU56MjFxQWdBdXNTVU8xQlJCamFGbGNNLy9K?=
 =?utf-8?B?TUtxaDIrK3czOE14MzlxTzR2TU52UFYwZWxxaW1SQUdubDdUOXA0ODVXTkQw?=
 =?utf-8?B?Z1Q2U2dMbjVoYWVLamtXM21jbUN6eGQyeHgwaXVFdnQyWFdCR2xUTUVwdXFv?=
 =?utf-8?B?cFhMWWFNbFpmd00vNk1RaW4vSDZseVk4bVBwbngxRzMxKzg5aWpWaUJnb1Jw?=
 =?utf-8?B?Sk54M3pFNUFyTjU5blRTNE5vNmFpaXJrK2VwUGhBYW9mcEZVOXhQR0ZKR1F2?=
 =?utf-8?B?Rkpsayt5anVMRklUQ25YMEpXd1psUE1ZajhSS1FyaVlaQTlFZ2htQ0dEM05Y?=
 =?utf-8?B?bEF6emRKNXRqcHpSMG5ReGVjYVBJNU9MUFpqRytyVUxvemRyZk5IMVM2dlV4?=
 =?utf-8?B?cEVpaGVTMXlmNVVXam5XRGpXK0ZjeXg2aUJQemp5R1RkRHNGVERlR0NIWW9Z?=
 =?utf-8?B?K1RTMjZQUVNCT2VxaXdyTVJKNlprUy82L3A4OWEwWWZWVDJwYW96TENCSDZT?=
 =?utf-8?B?MkNWRzhTTVdOa1hiMXoyZURuRFJOcy85ZmxhNmF3bmhLSEtHNDNNbnFFT1Zl?=
 =?utf-8?B?THdpYlVQdmlWVkFwbURacE9ZUWQrZzh2YWtxWlcxZjloZkVoVGM3QVJ6M1Fz?=
 =?utf-8?B?VW8vMGgzcUdjR0syc0tTU09OWjlROU5rT09TNWlDSXloL0VOVXJlcklVQTQ1?=
 =?utf-8?B?UndRQ2l1OEVIM0NaaXE4bW15RWtCZE1jSVg3T0ZYdzBJczZRM1J5LzV1aG5J?=
 =?utf-8?B?UGtBRTdRT3dRekVaRitkKzB0Y3lSMXhZU2NEWHIzZDhTRGkrN2cxeFpVMm1R?=
 =?utf-8?B?NHFEczRRdlBCU2RWQzB6eFYwMXlTUC94RVMwNjBLTnFOMVBObzk2eHRFMm9D?=
 =?utf-8?B?Ky9UYTZ4QUV3V2FQNXhvdEU4eVNCeDQ5MEcyTUl3Um5BaTNkTlJSUWZjU3Z5?=
 =?utf-8?Q?anjuRRi8eSQQZi3Ap0m4Je0=3D?=
Content-Type: text/plain; charset="utf-8"
Content-ID: <A89931DECBACE240B50A2B7CBC748E8E@namprd11.prod.outlook.com>
Content-Transfer-Encoding: base64
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: CY8PR11MB7777.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: e490e25d-43f0-420f-3979-08dd4c69510a
X-MS-Exchange-CrossTenant-originalarrivaltime: 13 Feb 2025 20:02:17.0887 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: uD7c+LVCOvoo7viKD6ytUvjKNfKHxsQfCT65D/K491Q9MPmN2NeueS2r5O8x8SU3CFA/DceR8+9hI4QAiuYnl34TAQatEaMERpJtdFQa2uc=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SA1PR11MB8522
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

T24gVGh1LCAyMDI1LTAxLTE2IGF0IDE5OjQ3ICswMjAwLCBWaWxsZSBTeXJqYWxhIHdyb3RlOg0K
PiBGcm9tOiBWaWxsZSBTeXJqw6Rsw6QgPHZpbGxlLnN5cmphbGFAbGludXguaW50ZWwuY29tPg0K
PiANCj4gRHVtcCBvdXQgdGhlIGRpc3BsYXkgZmF1bHQgaW5mb3JtYXRpb24gZnJvbSB0aGUgSVZC
L0hTVw0KPiBlcnJvciBpbnRlcnJ1cHQgaGFuZGxlci4NCj4gDQo+IFNpZ25lZC1vZmYtYnk6IFZp
bGxlIFN5cmrDpGzDpCA8dmlsbGUuc3lyamFsYUBsaW51eC5pbnRlbC5jb20+DQo+IC0tLQ0KPiDC
oC4uLi9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9kaXNwbGF5X2lycS5jwqAgfCA0NyArKysr
KysrKysrKysrKysrKysrDQo+IMKgZHJpdmVycy9ncHUvZHJtL2k5MTUvaTkxNV9yZWcuaMKgwqDC
oMKgwqDCoMKgwqDCoMKgwqDCoMKgwqAgfCAxMSArKysrKw0KPiDCoDIgZmlsZXMgY2hhbmdlZCwg
NTggaW5zZXJ0aW9ucygrKQ0KDQpCc3BlYyA4MjAzIHJlZmVyZW5jZSBtaWdodCBiZSBoZWxwZnVs
IEkgZ3Vlc3MuDQoNClJldmlld2VkLWJ5OiBWaW5vZCBHb3ZpbmRhcGlsbGFpIDx2aW5vZC5nb3Zp
bmRhcGlsbGFpQGludGVsLmNvbT4NCg0KDQo+IA0KPiBkaWZmIC0tZ2l0IGEvZHJpdmVycy9ncHUv
ZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9kaXNwbGF5X2lycS5jDQo+IGIvZHJpdmVycy9ncHUvZHJt
L2k5MTUvZGlzcGxheS9pbnRlbF9kaXNwbGF5X2lycS5jDQo+IGluZGV4IDFiM2I2YjhiYzc5NC4u
NzBlNTMyNmI4NmQwIDEwMDY0NA0KPiAtLS0gYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5
L2ludGVsX2Rpc3BsYXlfaXJxLmMNCj4gKysrIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxh
eS9pbnRlbF9kaXNwbGF5X2lycS5jDQo+IEBAIC02NjksMTUgKzY2OSw1NyBAQCBzdGF0aWMgdm9p
ZCBpYnhfaXJxX2hhbmRsZXIoc3RydWN0IGRybV9pOTE1X3ByaXZhdGUgKmRldl9wcml2LCB1MzIg
cGNoX2lpcikNCj4gwqAJCWludGVsX3BjaF9maWZvX3VuZGVycnVuX2lycV9oYW5kbGVyKGRldl9w
cml2LCBQSVBFX0IpOw0KPiDCoH0NCj4gwqANCj4gK3N0YXRpYyB1MzIgaXZiX2Vycl9pbnRfcGlw
ZV9mYXVsdF9tYXNrKGVudW0gcGlwZSBwaXBlKQ0KPiArew0KPiArCXN3aXRjaCAocGlwZSkgew0K
PiArCWNhc2UgUElQRV9BOg0KPiArCQlyZXR1cm4gRVJSX0lOVF9TUFJJVEVfQV9GQVVMVCB8DQo+
ICsJCQlFUlJfSU5UX1BSSU1BUllfQV9GQVVMVCB8DQo+ICsJCQlFUlJfSU5UX0NVUlNPUl9BX0ZB
VUxUOw0KPiArCWNhc2UgUElQRV9COg0KPiArCQlyZXR1cm4gRVJSX0lOVF9TUFJJVEVfQl9GQVVM
VCB8DQo+ICsJCQlFUlJfSU5UX1BSSU1BUllfQl9GQVVMVCB8DQo+ICsJCQlFUlJfSU5UX0NVUlNP
Ul9CX0ZBVUxUOw0KPiArCWNhc2UgUElQRV9DOg0KPiArCQlyZXR1cm4gRVJSX0lOVF9TUFJJVEVf
Q19GQVVMVCB8DQo+ICsJCQlFUlJfSU5UX1BSSU1BUllfQ19GQVVMVCB8DQo+ICsJCQlFUlJfSU5U
X0NVUlNPUl9DX0ZBVUxUOw0KPiArCWRlZmF1bHQ6DQo+ICsJCXJldHVybiAwOw0KPiArCX0NCj4g
K30NCj4gKw0KPiArc3RhdGljIGNvbnN0IHN0cnVjdCBwaXBlX2ZhdWx0X2hhbmRsZXIgaXZiX3Bp
cGVfZmF1bHRfaGFuZGxlcnNbXSA9IHsNCj4gKwl7IC5mYXVsdCA9IEVSUl9JTlRfU1BSSVRFX0Ff
RkFVTFQsIC5oYW5kbGUgPSBoYW5kbGVfcGxhbmVfZmF1bHQsIC5wbGFuZV9pZCA9DQo+IFBMQU5F
X1NQUklURTAsIH0sDQo+ICsJeyAuZmF1bHQgPSBFUlJfSU5UX1BSSU1BUllfQV9GQVVMVCwgLmhh
bmRsZSA9IGhhbmRsZV9wbGFuZV9mYXVsdCwgLnBsYW5lX2lkID0NCj4gUExBTkVfUFJJTUFSWSwg
fSwNCj4gKwl7IC5mYXVsdCA9IEVSUl9JTlRfQ1VSU09SX0FfRkFVTFQsIC5oYW5kbGUgPSBoYW5k
bGVfcGxhbmVfZmF1bHQsIC5wbGFuZV9pZCA9DQo+IFBMQU5FX0NVUlNPUiwgfSwNCj4gKwl7IC5m
YXVsdCA9IEVSUl9JTlRfU1BSSVRFX0JfRkFVTFQsIC5oYW5kbGUgPSBoYW5kbGVfcGxhbmVfZmF1
bHQsIC5wbGFuZV9pZCA9DQo+IFBMQU5FX1NQUklURTAsIH0sDQo+ICsJeyAuZmF1bHQgPSBFUlJf
SU5UX1BSSU1BUllfQl9GQVVMVCwgLmhhbmRsZSA9IGhhbmRsZV9wbGFuZV9mYXVsdCwgLnBsYW5l
X2lkID0NCj4gUExBTkVfUFJJTUFSWSwgfSwNCj4gKwl7IC5mYXVsdCA9IEVSUl9JTlRfQ1VSU09S
X0JfRkFVTFQsIC5oYW5kbGUgPSBoYW5kbGVfcGxhbmVfZmF1bHQsIC5wbGFuZV9pZCA9DQo+IFBM
QU5FX0NVUlNPUiwgfSwNCj4gKwl7IC5mYXVsdCA9IEVSUl9JTlRfU1BSSVRFX0NfRkFVTFQsIC5o
YW5kbGUgPSBoYW5kbGVfcGxhbmVfZmF1bHQsIC5wbGFuZV9pZCA9DQo+IFBMQU5FX1NQUklURTAs
IH0sDQo+ICsJeyAuZmF1bHQgPSBFUlJfSU5UX1BSSU1BUllfQ19GQVVMVCwgLmhhbmRsZSA9IGhh
bmRsZV9wbGFuZV9mYXVsdCwgLnBsYW5lX2lkID0NCj4gUExBTkVfUFJJTUFSWSwgfSwNCj4gKwl7
IC5mYXVsdCA9IEVSUl9JTlRfQ1VSU09SX0NfRkFVTFQsIC5oYW5kbGUgPSBoYW5kbGVfcGxhbmVf
ZmF1bHQsIC5wbGFuZV9pZCA9DQo+IFBMQU5FX0NVUlNPUiwgfSwNCj4gKwl7fQ0KPiArfTsNCj4g
Kw0KPiDCoHN0YXRpYyB2b2lkIGl2Yl9lcnJfaW50X2hhbmRsZXIoc3RydWN0IGRybV9pOTE1X3By
aXZhdGUgKmRldl9wcml2KQ0KPiDCoHsNCj4gKwlzdHJ1Y3QgaW50ZWxfZGlzcGxheSAqZGlzcGxh
eSA9ICZkZXZfcHJpdi0+ZGlzcGxheTsNCj4gwqAJdTMyIGVycl9pbnQgPSBpbnRlbF91bmNvcmVf
cmVhZCgmZGV2X3ByaXYtPnVuY29yZSwgR0VON19FUlJfSU5UKTsNCj4gwqAJZW51bSBwaXBlIHBp
cGU7DQo+IMKgDQo+IMKgCWlmIChlcnJfaW50ICYgRVJSX0lOVF9QT0lTT04pDQo+IMKgCQlkcm1f
ZXJyKCZkZXZfcHJpdi0+ZHJtLCAiUG9pc29uIGludGVycnVwdFxuIik7DQo+IMKgDQo+ICsJaWYg
KGVycl9pbnQgJiBFUlJfSU5UX0lOVkFMSURfR1RUX1BURSkNCj4gKwkJZHJtX2Vycl9yYXRlbGlt
aXRlZChkaXNwbGF5LT5kcm0sICJJbnZhbGlkIEdUVCBQVEVcbiIpOw0KPiArDQo+ICsJaWYgKGVy
cl9pbnQgJiBFUlJfSU5UX0lOVkFMSURfUFRFX0RBVEEpDQo+ICsJCWRybV9lcnJfcmF0ZWxpbWl0
ZWQoZGlzcGxheS0+ZHJtLCAiSW52YWxpZCBQVEUgZGF0YVxuIik7DQo+ICsNCj4gwqAJZm9yX2Vh
Y2hfcGlwZShkZXZfcHJpdiwgcGlwZSkgew0KPiArCQl1MzIgZmF1bHRfZXJyb3JzOw0KPiArDQo+
IMKgCQlpZiAoZXJyX2ludCAmIEVSUl9JTlRfRklGT19VTkRFUlJVTihwaXBlKSkNCj4gwqAJCQlp
bnRlbF9jcHVfZmlmb191bmRlcnJ1bl9pcnFfaGFuZGxlcihkZXZfcHJpdiwgcGlwZSk7DQo+IMKg
DQo+IEBAIC02ODcsNiArNzI5LDExIEBAIHN0YXRpYyB2b2lkIGl2Yl9lcnJfaW50X2hhbmRsZXIo
c3RydWN0IGRybV9pOTE1X3ByaXZhdGUgKmRldl9wcml2KQ0KPiDCoAkJCWVsc2UNCj4gwqAJCQkJ
aHN3X3BpcGVfY3JjX2lycV9oYW5kbGVyKGRldl9wcml2LCBwaXBlKTsNCj4gwqAJCX0NCj4gKw0K
PiArCQlmYXVsdF9lcnJvcnMgPSBlcnJfaW50ICYgaXZiX2Vycl9pbnRfcGlwZV9mYXVsdF9tYXNr
KHBpcGUpOw0KPiArCQlpZiAoZmF1bHRfZXJyb3JzKQ0KPiArCQkJaW50ZWxfcGlwZV9mYXVsdF9p
cnFfaGFuZGxlcihkaXNwbGF5LCBpdmJfcGlwZV9mYXVsdF9oYW5kbGVycywNCj4gKwkJCQkJCcKg
wqDCoMKgIHBpcGUsIGZhdWx0X2Vycm9ycyk7DQo+IMKgCX0NCj4gwqANCj4gwqAJaW50ZWxfdW5j
b3JlX3dyaXRlKCZkZXZfcHJpdi0+dW5jb3JlLCBHRU43X0VSUl9JTlQsIGVycl9pbnQpOw0KPiBk
aWZmIC0tZ2l0IGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvaTkxNV9yZWcuaCBiL2RyaXZlcnMvZ3B1
L2RybS9pOTE1L2k5MTVfcmVnLmgNCj4gaW5kZXggNzY1ZTZjMDUyOGZiLi45MDIxZjNlYWQ3ZTYg
MTAwNjQ0DQo+IC0tLSBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2k5MTVfcmVnLmgNCj4gKysrIGIv
ZHJpdmVycy9ncHUvZHJtL2k5MTUvaTkxNV9yZWcuaA0KPiBAQCAtMzc0LDYgKzM3NCwxNyBAQA0K
PiDCoA0KPiDCoCNkZWZpbmUgR0VON19FUlJfSU5UCV9NTUlPKDB4NDQwNDApDQo+IMKgI2RlZmlu
ZcKgwqAgRVJSX0lOVF9QT0lTT04JCSgxIDw8IDMxKQ0KPiArI2RlZmluZcKgwqAgRVJSX0lOVF9J
TlZBTElEX0dUVF9QVEUJKDEgPDwgMjkpDQo+ICsjZGVmaW5lwqDCoCBFUlJfSU5UX0lOVkFMSURf
UFRFX0RBVEEJKDEgPDwgMjgpDQo+ICsjZGVmaW5lwqDCoCBFUlJfSU5UX1NQUklURV9DX0ZBVUxU
CSgxIDw8IDIzKQ0KPiArI2RlZmluZcKgwqAgRVJSX0lOVF9QUklNQVJZX0NfRkFVTFQJKDEgPDwg
MjIpDQo+ICsjZGVmaW5lwqDCoCBFUlJfSU5UX0NVUlNPUl9DX0ZBVUxUCSgxIDw8IDIxKQ0KPiAr
I2RlZmluZcKgwqAgRVJSX0lOVF9TUFJJVEVfQl9GQVVMVAkoMSA8PCAyMCkNCj4gKyNkZWZpbmXC
oMKgIEVSUl9JTlRfUFJJTUFSWV9CX0ZBVUxUCSgxIDw8IDE5KQ0KPiArI2RlZmluZcKgwqAgRVJS
X0lOVF9DVVJTT1JfQl9GQVVMVAkoMSA8PCAxOCkNCj4gKyNkZWZpbmXCoMKgIEVSUl9JTlRfU1BS
SVRFX0FfRkFVTFQJKDEgPDwgMTcpDQo+ICsjZGVmaW5lwqDCoCBFUlJfSU5UX1BSSU1BUllfQV9G
QVVMVAkoMSA8PCAxNikNCj4gKyNkZWZpbmXCoMKgIEVSUl9JTlRfQ1VSU09SX0FfRkFVTFQJKDEg
PDwgMTUpDQo+IMKgI2RlZmluZcKgwqAgRVJSX0lOVF9NTUlPX1VOQ0xBSU1FRAkoMSA8PCAxMykN
Cj4gwqAjZGVmaW5lwqDCoCBFUlJfSU5UX1BJUEVfQ1JDX0RPTkVfQwkoMSA8PCA4KQ0KPiDCoCNk
ZWZpbmXCoMKgIEVSUl9JTlRfRklGT19VTkRFUlJVTl9DCSgxIDw8IDYpDQoNCg==
