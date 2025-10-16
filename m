Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id E099CBE4BE0
	for <lists+intel-gfx@lfdr.de>; Thu, 16 Oct 2025 19:01:13 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 01C5210E0A8;
	Thu, 16 Oct 2025 17:01:12 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="fXnNfMH+";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.10])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 81B9910E0A8;
 Thu, 16 Oct 2025 17:01:10 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1760634071; x=1792170071;
 h=from:to:subject:date:message-id:references:in-reply-to:
 content-id:content-transfer-encoding:mime-version;
 bh=MWp3gr3G5ceop2hpsZ6PUGYhICy08SIlM+LF2PEeWhs=;
 b=fXnNfMH+3oDBwmjhpykKHneXjyv6doSdbtkAw7OSIdYzl4jTXW01V4p9
 N++SwDIX/Vk2kDo7ZDNAgBhc4ySTh+jRU8LOYzcBNT0ubWUcm3VkjKHBO
 7RVxcysbg0hQDy3xaAzkXOijEYEx+sRFNbqbdI7FWT1S83yp5pUuyeALh
 vwdlCAz3OarF2E5t5jHfy8g/q2nuY/I8vqLq6orPhjnw2j3xGWkb4T8ad
 9epPcSwKCJDnNOaSJH+8enkk9a0PuZyTp2qbBrtPDI38ySKLsKCeH4tcX
 JMYrSpHwvj8+IB+67NI6hjNlExF0RqxXddvUPqph6qQhyUoWiLacXP9Uz Q==;
X-CSE-ConnectionGUID: 8UNAohATSZ6Y6LiYO/89Lg==
X-CSE-MsgGUID: flT3QJscS+6LuxW4ta6RHA==
X-IronPort-AV: E=McAfee;i="6800,10657,11584"; a="80281990"
X-IronPort-AV: E=Sophos;i="6.19,234,1754982000"; d="scan'208";a="80281990"
Received: from fmviesa010.fm.intel.com ([10.60.135.150])
 by orvoesa102.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 16 Oct 2025 10:01:11 -0700
X-CSE-ConnectionGUID: zjoY8+qdRrugUUjYusV47g==
X-CSE-MsgGUID: +sjBXo+SQQK/PGQ+4nme7w==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.19,234,1754982000"; d="scan'208";a="183314186"
Received: from fmsmsx902.amr.corp.intel.com ([10.18.126.91])
 by fmviesa010.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 16 Oct 2025 10:01:10 -0700
Received: from FMSMSX901.amr.corp.intel.com (10.18.126.90) by
 fmsmsx902.amr.corp.intel.com (10.18.126.91) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.27; Thu, 16 Oct 2025 10:01:09 -0700
Received: from fmsedg901.ED.cps.intel.com (10.1.192.143) by
 FMSMSX901.amr.corp.intel.com (10.18.126.90) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.27 via Frontend Transport; Thu, 16 Oct 2025 10:01:09 -0700
Received: from CH5PR02CU005.outbound.protection.outlook.com (40.107.200.40) by
 edgegateway.intel.com (192.55.55.81) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.27; Thu, 16 Oct 2025 10:01:08 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=MXF5vFV4yZQ4YSETTIVMJV3bss3qufYgo6bdLXphPVF8ZdyqQ7dzfTWs8CScxj/hXH3I/NbkXZzIq7bs76XXujUikh2ocVXkd77xVUtUSOZp1YUVUIxDBYWfRh1YZFgcjG8KtwufxQf6duj7dyMyezTFt3HrcuiAa3qO+yyGf0T0O/I8LtE3tjc4zjVogoTYw2s89RFHK/TFhwStcGKHZHh+6LbKYeNR79LRYrdZCKbO1B+R5GxHijT/vHnGT8iK0plRhwpNshfKScFQkH5meni5VrC7eyRVxXgxRDPYtB2sZCqim10KBZZkcr5o/2ILc5h67rMtMrMBIrG4YJVKvw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=MWp3gr3G5ceop2hpsZ6PUGYhICy08SIlM+LF2PEeWhs=;
 b=eMaFaDe8EqU8rbI3cxeZxOeTNQ5MfM3a8as7flhFj1Qk6iv2n+2jxiNrfSqhikvQhLT7aDqcewus1jceaTv9LKNBQxLnnmGGIbT0kUlxfOHjuYgYSoaQG7KcW2CXxfJRPjRpYq67jfPI87Xm2vxk/nabylmDO76z+gpE5AIdnxYymk9vT1AqH8OJKMYc6a2FMx5HtDxMJ/jzTIHMeUHOUWGZgj4dpFfA2ZRzGZQ1yMsOmStl+R1+IYThnSsY3RIgZ2DoTD5YBoD6UsdYMpXUCOcbjW6fGg4Mr8MeiIHMzm/OHLFS2w4NBP7Ek/5vZFun6lveo3Xx6rkNWHg723+XEw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from DM4PR11MB6019.namprd11.prod.outlook.com (2603:10b6:8:60::5) by
 PH0PR11MB4870.namprd11.prod.outlook.com (2603:10b6:510:34::16) with
 Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.9228.12; Thu, 16 Oct 2025 17:01:06 +0000
Received: from DM4PR11MB6019.namprd11.prod.outlook.com
 ([fe80::fc1:e80f:134c:5ed2]) by DM4PR11MB6019.namprd11.prod.outlook.com
 ([fe80::fc1:e80f:134c:5ed2%5]) with mapi id 15.20.9228.010; Thu, 16 Oct 2025
 17:01:06 +0000
From: "Hogander, Jouni" <jouni.hogander@intel.com>
To: "intel-xe@lists.freedesktop.org" <intel-xe@lists.freedesktop.org>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>, "Deak,
 Imre" <imre.deak@intel.com>
Subject: Re: [PATCH v2 5/7] drm/i915/dp_mst: Track DSC enabled status on the
 MST link
Thread-Topic: [PATCH v2 5/7] drm/i915/dp_mst: Track DSC enabled status on the
 MST link
Thread-Index: AQHcPe+m2MXOSrNNMk2f4RNwuVU5P7TFAQuA
Date: Thu, 16 Oct 2025 17:01:06 +0000
Message-ID: <5607f4eba94de8d369621969540c38beb4dc0768.camel@intel.com>
References: <20251015161934.262108-1-imre.deak@intel.com>
 <20251015161934.262108-6-imre.deak@intel.com>
In-Reply-To: <20251015161934.262108-6-imre.deak@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: DM4PR11MB6019:EE_|PH0PR11MB4870:EE_
x-ms-office365-filtering-correlation-id: 1bcf8f09-bb17-446f-b38f-08de0cd59905
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
 ARA:13230040|10070799003|366016|1800799024|376014|38070700021; 
x-microsoft-antispam-message-info: =?utf-8?B?Y0tNQnU2WmpxUS83RWtvZ0RacjAyYU1tcEpOalNqZHQzMno0ZjRKeFBoQjVW?=
 =?utf-8?B?YjBHSlN0Y1NhWGtIYTc2a1BDekd6WmZrMHdCUkNtbUg5RGlVME5aczRSWk5m?=
 =?utf-8?B?WXJSU3QxbFBwOEFyV3pOK3A0UzQrQmxPT3VtUCtnNHc5T3pMaUxIeGJsVk1R?=
 =?utf-8?B?VzNDRjhwR2wvMXd2azVjdVlWYURpd2JpMjV3QXJWZmdyRlA1R3h5Rk1UZERa?=
 =?utf-8?B?UHhFbzhJVXY5V2w3TjJMWnFlOU1sV1pHaUx6cXhYR2lLbTY5cnVoZEs2a0tR?=
 =?utf-8?B?VFNqK3YxZ285bVNCVnRTVGRkZllwNFlDZGJWbUx0cm1oYStLS0tLQjNQbUpn?=
 =?utf-8?B?TFZIdzVkQmRjWE4xdmtjbkp0Tlk0ZkI4Rlc0RXkxc2g0TDczV0xJRVZNWHVy?=
 =?utf-8?B?c3ZCZnNiTjd3bE83TFpXcld2bUFpS3djUGxpREtLMUM1OCt4OFhRU21SaVFX?=
 =?utf-8?B?cUR3STVOeEdpMVplSXArM0hPdVRrYWlRWGN3S1FrVUdsR00yOTZDUkZvbkhD?=
 =?utf-8?B?cEdWTzRYcE01S1A2elgyVFd0bUVSK1VTWG5VekhueGtyWUFrMXQzd2NnOEc2?=
 =?utf-8?B?YWw1RHpjT21DTFlFbitFT3RCNnZzTStJVTloV1ZBWDNuRkxqSmppcmVLVm1C?=
 =?utf-8?B?eitZV2oyL2ZiSnBHeUp6L3FXbHR2WlducncyVXF3aDYwdG1Mb1JXZ2RZYU1K?=
 =?utf-8?B?ZExqR3BEZTlIT0JKdXlsRFB0QTBZL0hVa0pHWkROeFRTa0dSV2FkdFp1bjVn?=
 =?utf-8?B?NXBpRXduUndVWDh4b2VtZU5VMjBEZzNwWDNEc0I1Vkp0UUdGT0pqNDJiR2FP?=
 =?utf-8?B?NjJUS1VRYzZMWGpkNFdwQk9ZOGZ6N2FpSjlCNFdYTFVwbml0aFdnV2dDRGZv?=
 =?utf-8?B?WWFBNUNKcldqS21LNTJuekRVQWJnYnNobUUyY05TbUNHU3k0NzhzckJNTHBx?=
 =?utf-8?B?Z1FlRm5wNHJublREMGxhc0NTTGhqVkhOcXMzV2krajZvUWNHTWZXWHBQK045?=
 =?utf-8?B?eWovNVA2WU1GZllsTWFXbmk4dXAycjl1anBxQ2syS1Y0NUFWTms3ZHg5ZC9N?=
 =?utf-8?B?Vm9pS2dLbURNM25zMjJ2U2tuOEtVc0ozK3BxamRuUktIWTBaYVRvQWlWMnFr?=
 =?utf-8?B?cGZLelYvTGNNSmNpV1BiaUpXcEd4U3VRQlNaajJWTlRuQlNPbXU1ZUdkb2RJ?=
 =?utf-8?B?SXBjWmdTcDQxU0o0cDl2TGdHN05OYUZmWEZ0V0x0dmNaQmEzY3JMTS9LUDlr?=
 =?utf-8?B?cWtldU8vYUNVVU8yMHdmVUV5Q2ZpRG8vR1doVEFSbTZZYWgwUENqVWtpQmxQ?=
 =?utf-8?B?dVk3cU9GRExFcFY4UGlnN2ZNcFFxVlNWbHBBLzRGT0ZvWjdKWENWWll4Sjhi?=
 =?utf-8?B?SmZhTjVGNnMySEdPRmdoZXhoTjl6eWgvbE9HVVdQWVQ5d1d4MnAwWExzVkFo?=
 =?utf-8?B?UnQxVzBmb0hpMG9XcENrcXRWMkY4cUZUWGRaa1BqUXdLc2pZSExvcmhaUzkr?=
 =?utf-8?B?UE44Q25KbFVuYlQ1dStsTnROK3dZekVPMng0Vnl4RjdjRnVvWEJMVkFNc0Js?=
 =?utf-8?B?V3YxejNrZjhZRTllR2pJY3Q0ZCs0T1RKNUl0VWxCYlVxNUhIWks5VXZsS0lS?=
 =?utf-8?B?Y1lla0QzaGtQRWJoZ2ZsUUxiUG9kaTliSmE2NDhPWEM5TUZOZGVXSWNtWWJp?=
 =?utf-8?B?NUc2MElxdVl0NGtUVE5EZGhyMGpIaU1QSG1UWXBFVFVjNWtwdVU1NFdTdmRV?=
 =?utf-8?B?YmxELytIQklFbWd3RWc1ME9mcitncWxmcDhRWjZ4YXd0QmYrd1d5aFlIaE9r?=
 =?utf-8?B?emJyenY3TXlxa3pRUFpjVmJoSjc5cVBDS3JzcGFObUYwRlVEMUw4L00ybXQ4?=
 =?utf-8?B?TWtNaGxrTWcyUzl5WTVob2Zsald4TkdYZzdRM1JDemhVcWkxZVpWajdhc0pJ?=
 =?utf-8?B?SXlON0pXblNkVURoQS9wSitqYnlqMW9qbmxPc2V6d0ljTmpMa3hPU2R2ckJK?=
 =?utf-8?B?bVVEejNIZ29KUjhuOENTNmFtdm04bnRvY29Ja1YycmxpMUZsS1NzbDlBUzJj?=
 =?utf-8?Q?gDfmQ/?=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM4PR11MB6019.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(10070799003)(366016)(1800799024)(376014)(38070700021); DIR:OUT;
 SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?utf-8?B?U3hVNkZWL2VTcUV1YStLTzE3U0JnWE1tbFgyRzlsL2tVVTlZSGo3NFFKWkFQ?=
 =?utf-8?B?UjVKSmtkNHRoWnJoMEdoVnJaVHRyYWVnYUcwbkVkWW1uSjlTTUpLL0FyUmVw?=
 =?utf-8?B?TDBtQUpUVFRDdDdtOXB1OTBaTWRGZWZSRDh0bk5iWW1OcVZjYU8xUzFnSDZZ?=
 =?utf-8?B?c3BhbDhCTlJsTHpZL1liNEhvaWYyeUM4dUxZSGU5d2VabTNCRXJLZTNKaWJO?=
 =?utf-8?B?NU4vcktwQkJDMmNKSFNyZ3V6d3ROT3ZLR3Yrdkh0RmkzeVFhL0M2ZVJBWG5M?=
 =?utf-8?B?cllTdXJpSFlIek9IdjFBb3IzSktxNVU1UlhaOTdTZ1lMRmVhMVVxaHkyUUxD?=
 =?utf-8?B?bUNIUXE0RUp5Nk9XS0E2UStya3JIZzh0b294TUQwUGpoWU10ZnRQNjBleVlS?=
 =?utf-8?B?bmNEbWNpSkV1dEthSlhGL1lUdVdjaDFhczlOY3FuSDdBeHhOQkxzZ284ZmdR?=
 =?utf-8?B?bVU2ZE1zQ3lzMURsbThsNzNSM0ZqL09DNWlFWVdOSklyZXRTT1lUR0pSUThI?=
 =?utf-8?B?eDRNTU9iUTJycTY5b1RMNzV0T1NEZnRJWm40UU1uTEFMY1JZVDZhSWtXMmh1?=
 =?utf-8?B?QmJtQ1Z5RGxSZUJrS1lCM28xK09wRVRpd1lLeThHK2tWY3kwTCtnMlkvbUw0?=
 =?utf-8?B?ajNhT21UKzFhL3JuZWFCVDBwdzZyOHdmWlROdnhFNXZmaEx3YTNjTWxvU09l?=
 =?utf-8?B?RDFRcGFwakdKS0w5VnlVcmlGZGNXYUxreFU5NE1XeVFSWmViMHJqV2Q2aEdN?=
 =?utf-8?B?eFdJTU5YQklBTnA3QzZTTHhreGthNjg3MHBRSldwZWpkMUx6V3RhdUh4QzdF?=
 =?utf-8?B?aDlxOS9VZWQ2eWhGOStJbnMzTU03WjNOQUxXSDE5UVc2ZWtCNGVGbC9heXNJ?=
 =?utf-8?B?Y2xMbXNyNDF4cFRqODFxMS9qbnE0bEFnNlppS3lGZEthZEFxVnpvamx1UHJI?=
 =?utf-8?B?VGwvSGo2L3RGa29VdFFFOEJnZ2VqZG9SZUNKZ0VSRk9DS2lIK214bU9uRWFD?=
 =?utf-8?B?ZEJaWmJadGRWczRzMTlEZ29CeWx4eVVwbVZiQW56TkhHNVpoS2gvTU1SR3Ir?=
 =?utf-8?B?UTZ3QktkZytISEQzVnRLaEhnc2ZmK2FXZHRTL2NLMENGRmhCRUZUSXcyUHB0?=
 =?utf-8?B?YTcvdGtXQmNJcnBQcjJaM1hqQ1BrWE5EN1JjYTJFZGRHVlhLcGxmSk9XWGw3?=
 =?utf-8?B?dTBZNVluUHJNYzl6aFF6WDM2eVlZTHExUS9mNkJEWEl0RTJiazV3OUZHMEdU?=
 =?utf-8?B?OGhzVElEM2MvNElVY0pVV0t5enJWa3NtaVZBWnBlT2h4YWVOa0I1Rjl2VENI?=
 =?utf-8?B?SFo0WERUKzNPNk84ZVhCSDlrbTIwZUtxeGNtRHBWUDBmOUNpUWZYcndieUh5?=
 =?utf-8?B?TGRDYWFJeUF1Nm9XYlN4QVIrUHE3SHlXL0VRM0gwUjRjTndjMXRtWVQrekth?=
 =?utf-8?B?QURwazA4VlBXdTN5M2ZTNEMxbklScms2K1pkVnh6MmJSQkpjUXNoNHBpV1JH?=
 =?utf-8?B?Mm81R3ROZ3c0SE0vUllaRUs2TW1ISFhkbW5MQVFvcHU5QmNpdmlMb3EzWU1i?=
 =?utf-8?B?d1pNM2dic3pYYjBGa3ZkYlUvNSsyRDRsdlk4VjZRMjZOdU13RHhHUUVQQ3RZ?=
 =?utf-8?B?bWxqTVZDWUxqaTFyRGc0anhaNmFOaVlKeGN2SHJqRzBkOWZsbXQ5aWRyNVBv?=
 =?utf-8?B?QTFzRW81bkdOd0R1cEl5NjRrVW1RUWVrdHFkZmRpejFlS09DYUJqNHcrSHZ1?=
 =?utf-8?B?dTRRd0JNTmo1dVlhaVhTVXJPemFRS2NaVE5acDdVYzVLZitBdGFmTnMveE5P?=
 =?utf-8?B?ajRxdjFFMkd2TGNidktyRkZjbXFockRjTWdQNEtJaEFWcXUwdC90WWF3VXJI?=
 =?utf-8?B?RllsclhRdHJVUDNkUlFRQUZveTVtRTZ0Rk42ZDZWeWJzaTdCdnFZMjBlQTl2?=
 =?utf-8?B?T3YwZEJrWFJJUGZ6QnJBUkdabU90RW5DbVgreDVDNW1QM1laZEFDK1Jmdloy?=
 =?utf-8?B?dHBQQTBDQUpvaTFGN3BZb0k5UHZTOUQzYlU3SzNhaXVld0w1bkxXRlZVYUg0?=
 =?utf-8?B?bENXWWJPdnVJcGpRbFhWTEVydUVwZ3FhSHk2Q2NlZFhxNkFQRm03Rk53cmRh?=
 =?utf-8?B?T1RTbHoxNWZZUnJDeEtxekJ4SktkcTdoQ0pjYktKODdyS0MvTko4NUM2OGE3?=
 =?utf-8?B?NkVuY05yRlVBelRQbHBXTmxwMENPc2dPODIxSzlYZmpDZlpBYnFBbWExRDRW?=
 =?utf-8?B?QVhTTGl5emRVMytKTjNMbWZHdmtBPT0=?=
Content-Type: text/plain; charset="utf-8"
Content-ID: <C1F2E6744D14F14EA9EB5A833FDFC82C@namprd11.prod.outlook.com>
Content-Transfer-Encoding: base64
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: DM4PR11MB6019.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 1bcf8f09-bb17-446f-b38f-08de0cd59905
X-MS-Exchange-CrossTenant-originalarrivaltime: 16 Oct 2025 17:01:06.7618 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: /DlBzwSPejNsbgp+yIbRKm3FeNQlqk+XAYxbV3V11udg6wo1MTuGiVvpt2yZJRFsr6hTTYTcQAw1ZRc9JurwJPKR6MfN1lFfmd03BQv4CwQ=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: PH0PR11MB4870
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

T24gV2VkLCAyMDI1LTEwLTE1IGF0IDE5OjE5ICswMzAwLCBJbXJlIERlYWsgd3JvdGU6DQo+IFRy
YWNrIHdoZXRoZXIgRFNDIGlzIGVuYWJsZWQgb24gYW55IENSVEMgb24gYSBsaW5rLiBPbiBEUC1T
U1QgKGFuZA0KPiBEU0kpDQo+IHRoaXMgd2lsbCBhbHdheXMgbWF0Y2ggdGhlIENSVEMncyBEU0Mg
c3RhdGUsIHRob3NlIGxpbmtzIGhhdmluZyBvbmx5DQo+IGENCj4gc2luZ2xlIHN0cmVhbSAoYWth
IENSVEMpLiBGb3IgaW5zdGFuY2UsIG9uIERQLU1TVCBpZiBEU0MgaXMgZW5hYmxlZA0KPiBmb3IN
Cj4gQ1JUQyMwLCBidXQgZGlzYWJsZWQgZm9yIENSVEMjMSwgdGhlIERTQy9GRUMgc3RhdGUgZm9y
IHRoZXNlIENSVENzDQo+IHdpbGwNCj4gYmUgYXMgZm9sbG93czoNCj4gDQo+IENSVEMjMDoNCj4g
wqAtIGNvbXByZXNzaW9uX2VuYWJsZSA9IHRydWUNCj4gwqAtIGNvbXByZXNzaW9uX2VuYWJsZWRf
b25fbGluayA9IHRydWUNCj4gwqAtIGZlY19lbmFibGUgPSB0cnVlIGZvciA4YjEwYiwgZmFsc2Ug
Zm9yIDEyOGIxMzJiDQo+IA0KPiBDUlRDIzE6DQo+IMKgLSBjb21wcmVzc2lvbl9lbmFibGUgPSBm
YWxzZQ0KPiDCoC0gY29tcHJlc3Npb25fZW5hYmxlZF9vbl9saW5rID0gdHJ1ZQ0KPiDCoC0gZmVj
X2VuYWJsZSA9IHRydWUgZm9yIDhiMTBiLCBmYWxzZSBmb3IgMTI4YjEzMmINCj4gDQo+IFRoaXMg
cGF0Y2ggb25seSBzZXRzIGNvbXByZXNzaW9uX2VuYWJsZWRfb25fbGluayBmb3IgQ1JUQyMwIGFi
b3ZlIGFuZA0KPiBlbmFibGVzIEZFQyBvbiBDUlRDIzAgaWYgRFNDIHdhcyBlbmFibGVkIG9uIGFu
eSBvdGhlciBDUlRDIG9uIHRoZQ0KPiA4YjEwYg0KPiBNU1QgbGluay4gQSBmb2xsb3ctdXAgY2hh
bmdlIHdpbGwgbWFrZSBzdXJlIHRoYXQgdGhlIHN0YXRlIG9mIGFsbCB0aGUNCj4gQ1JUQ3MgKENS
VEMjMSBhYm92ZSkgb24gYW4gTVNUIGxpbmsgaXMgcmVjb21wdXRlZCBpZiBEU0MgZ2V0cyBlbmFi
bGVkDQo+IG9uDQo+IGFueSBDUlRDLCBzZXR0aW5nIGNvbXByZXNzaW9uX2VuYWJsZWRfb25fbGlu
ayBhbmQgZmVjX2VuYWJsZSBmb3INCj4gdGhlc2UuDQo+IA0KPiBTaWduZWQtb2ZmLWJ5OiBJbXJl
IERlYWsgPGltcmUuZGVha0BpbnRlbC5jb20+DQoNClJldmlld2VkLWJ5OiBKb3VuaSBIw7ZnYW5k
ZXIgPGpvdW5pLmhvZ2FuZGVyQGludGVsLmNvbT4NCg0KPiAtLS0NCj4gwqBkcml2ZXJzL2dwdS9k
cm0vaTkxNS9kaXNwbGF5L2ludGVsX2Rpc3BsYXlfdHlwZXMuaCB8wqAgMiArKw0KPiDCoGRyaXZl
cnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfZHAuY8KgwqDCoMKgwqDCoMKgwqDCoMKgwqAg
fMKgIDIgKy0NCj4gwqBkcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX3Zkc2MuY8Kg
wqDCoMKgwqDCoMKgwqDCoCB8IDExICsrKysrKysrKysrDQo+IMKgZHJpdmVycy9ncHUvZHJtL2k5
MTUvZGlzcGxheS9pbnRlbF92ZHNjLmjCoMKgwqDCoMKgwqDCoMKgwqAgfMKgIDEgKw0KPiDCoDQg
ZmlsZXMgY2hhbmdlZCwgMTUgaW5zZXJ0aW9ucygrKSwgMSBkZWxldGlvbigtKQ0KPiANCj4gZGlm
ZiAtLWdpdCBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfZGlzcGxheV90eXBl
cy5oDQo+IGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9kaXNwbGF5X3R5cGVz
LmgNCj4gaW5kZXggODdiN2NlYzM1MzIwZi4uNTgzMDgxNDY2OTdmZiAxMDA2NDQNCj4gLS0tIGEv
ZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9kaXNwbGF5X3R5cGVzLmgNCj4gKysr
IGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9kaXNwbGF5X3R5cGVzLmgNCj4g
QEAgLTEyNzcsNiArMTI3Nyw4IEBAIHN0cnVjdCBpbnRlbF9jcnRjX3N0YXRlIHsNCj4gwqANCj4g
wqAJLyogRGlzcGxheSBTdHJlYW0gY29tcHJlc3Npb24gc3RhdGUgKi8NCj4gwqAJc3RydWN0IHsN
Cj4gKwkJLyogT25seSB1c2VkIGZvciBzdGF0ZSBjb21wdXRhdGlvbiwgbm90IHJlYWQgb3V0DQo+
IGZyb20gdGhlIEhXLiAqLw0KPiArCQlib29sIGNvbXByZXNzaW9uX2VuYWJsZWRfb25fbGluazsN
Cj4gwqAJCWJvb2wgY29tcHJlc3Npb25fZW5hYmxlOw0KPiDCoAkJaW50IG51bV9zdHJlYW1zOw0K
PiDCoAkJLyogQ29tcHJlc3NlZCBCcHAgaW4gVTYuNCBmb3JtYXQgKGZpcnN0IDQgYml0cyBmb3IN
Cj4gZnJhY3Rpb25hbCBwYXJ0KSAqLw0KPiBkaWZmIC0tZ2l0IGEvZHJpdmVycy9ncHUvZHJtL2k5
MTUvZGlzcGxheS9pbnRlbF9kcC5jDQo+IGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9p
bnRlbF9kcC5jDQo+IGluZGV4IDNmZmIwMTUwMDRjNTQuLjhiYTkzMTIwNGNiNTIgMTAwNjQ0DQo+
IC0tLSBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfZHAuYw0KPiArKysgYi9k
cml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2RwLmMNCj4gQEAgLTIzODcsNyArMjM4
Nyw3IEBAIGJvb2wgaW50ZWxfZHBfbmVlZHNfOGIxMGJfZmVjKGNvbnN0IHN0cnVjdA0KPiBpbnRl
bF9jcnRjX3N0YXRlICpjcnRjX3N0YXRlLA0KPiDCoAlpZiAoaW50ZWxfY3J0Y19oYXNfdHlwZShj
cnRjX3N0YXRlLCBJTlRFTF9PVVRQVVRfRURQKSkNCj4gwqAJCXJldHVybiBmYWxzZTsNCj4gwqAN
Cj4gLQlyZXR1cm4gZHNjX2VuYWJsZWRfb25fY3J0YzsNCj4gKwlyZXR1cm4gZHNjX2VuYWJsZWRf
b25fY3J0YyB8fA0KPiBpbnRlbF9kc2NfZW5hYmxlZF9vbl9saW5rKGNydGNfc3RhdGUpOw0KPiDC
oH0NCj4gwqANCj4gwqBpbnQgaW50ZWxfZHBfZHNjX2NvbXB1dGVfY29uZmlnKHN0cnVjdCBpbnRl
bF9kcCAqaW50ZWxfZHAsDQo+IGRpZmYgLS1naXQgYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNw
bGF5L2ludGVsX3Zkc2MuYw0KPiBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxf
dmRzYy5jDQo+IGluZGV4IDY0YTFlOWYwYTE4OTMuLjMxNjc1MzIwNWFjNDUgMTAwNjQ0DQo+IC0t
LSBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfdmRzYy5jDQo+ICsrKyBiL2Ry
aXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfdmRzYy5jDQo+IEBAIC0zNzQsOSArMzc0
LDIwIEBAIGludCBpbnRlbF9kc2NfY29tcHV0ZV9wYXJhbXMoc3RydWN0DQo+IGludGVsX2NydGNf
c3RhdGUgKnBpcGVfY29uZmlnKQ0KPiDCoA0KPiDCoHZvaWQgaW50ZWxfZHNjX2VuYWJsZV9vbl9j
cnRjKHN0cnVjdCBpbnRlbF9jcnRjX3N0YXRlICpjcnRjX3N0YXRlKQ0KPiDCoHsNCj4gKwljcnRj
X3N0YXRlLT5kc2MuY29tcHJlc3Npb25fZW5hYmxlZF9vbl9saW5rID0gdHJ1ZTsNCj4gwqAJY3J0
Y19zdGF0ZS0+ZHNjLmNvbXByZXNzaW9uX2VuYWJsZSA9IHRydWU7DQo+IMKgfQ0KPiDCoA0KPiAr
Ym9vbCBpbnRlbF9kc2NfZW5hYmxlZF9vbl9saW5rKGNvbnN0IHN0cnVjdCBpbnRlbF9jcnRjX3N0
YXRlDQo+ICpjcnRjX3N0YXRlKQ0KPiArew0KPiArCXN0cnVjdCBpbnRlbF9kaXNwbGF5ICpkaXNw
bGF5ID0NCj4gdG9faW50ZWxfZGlzcGxheShjcnRjX3N0YXRlKTsNCj4gKw0KPiArCWRybV9XQVJO
X09OKGRpc3BsYXktPmRybSwgY3J0Y19zdGF0ZS0+ZHNjLmNvbXByZXNzaW9uX2VuYWJsZQ0KPiAm
Jg0KPiArCQnCoMKgwqAgIWNydGNfc3RhdGUtPmRzYy5jb21wcmVzc2lvbl9lbmFibGVkX29uX2xp
bmspOw0KPiArDQo+ICsJcmV0dXJuIGNydGNfc3RhdGUtPmRzYy5jb21wcmVzc2lvbl9lbmFibGVk
X29uX2xpbms7DQo+ICt9DQo+ICsNCj4gwqBlbnVtIGludGVsX2Rpc3BsYXlfcG93ZXJfZG9tYWlu
DQo+IMKgaW50ZWxfZHNjX3Bvd2VyX2RvbWFpbihzdHJ1Y3QgaW50ZWxfY3J0YyAqY3J0YywgZW51
bSB0cmFuc2NvZGVyDQo+IGNwdV90cmFuc2NvZGVyKQ0KPiDCoHsNCj4gZGlmZiAtLWdpdCBhL2Ry
aXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfdmRzYy5oDQo+IGIvZHJpdmVycy9ncHUv
ZHJtL2k5MTUvZGlzcGxheS9pbnRlbF92ZHNjLmgNCj4gaW5kZXggMjQwYmVmODJkMzU3Ni4uOWM1
MmVjZTAwMjdjMyAxMDA2NDQNCj4gLS0tIGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9p
bnRlbF92ZHNjLmgNCj4gKysrIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF92
ZHNjLmgNCj4gQEAgLTIxLDYgKzIxLDcgQEAgdm9pZCBpbnRlbF9kc2NfZW5hYmxlKGNvbnN0IHN0
cnVjdCBpbnRlbF9jcnRjX3N0YXRlDQo+ICpjcnRjX3N0YXRlKTsNCj4gwqB2b2lkIGludGVsX2Rz
Y19kaXNhYmxlKGNvbnN0IHN0cnVjdCBpbnRlbF9jcnRjX3N0YXRlICpjcnRjX3N0YXRlKTsNCj4g
wqBpbnQgaW50ZWxfZHNjX2NvbXB1dGVfcGFyYW1zKHN0cnVjdCBpbnRlbF9jcnRjX3N0YXRlICpw
aXBlX2NvbmZpZyk7DQo+IMKgdm9pZCBpbnRlbF9kc2NfZW5hYmxlX29uX2NydGMoc3RydWN0IGlu
dGVsX2NydGNfc3RhdGUgKmNydGNfc3RhdGUpOw0KPiArYm9vbCBpbnRlbF9kc2NfZW5hYmxlZF9v
bl9saW5rKGNvbnN0IHN0cnVjdCBpbnRlbF9jcnRjX3N0YXRlDQo+ICpjcnRjX3N0YXRlKTsNCj4g
wqB2b2lkIGludGVsX2RzY19nZXRfY29uZmlnKHN0cnVjdCBpbnRlbF9jcnRjX3N0YXRlICpjcnRj
X3N0YXRlKTsNCj4gwqBlbnVtIGludGVsX2Rpc3BsYXlfcG93ZXJfZG9tYWluDQo+IMKgaW50ZWxf
ZHNjX3Bvd2VyX2RvbWFpbihzdHJ1Y3QgaW50ZWxfY3J0YyAqY3J0YywgZW51bSB0cmFuc2NvZGVy
DQo+IGNwdV90cmFuc2NvZGVyKTsNCg0K
