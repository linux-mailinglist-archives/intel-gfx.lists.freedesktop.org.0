Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 81E3AA1BFF7
	for <lists+intel-gfx@lfdr.de>; Sat, 25 Jan 2025 01:46:28 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 111D010EA53;
	Sat, 25 Jan 2025 00:46:27 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="EVWbOI2k";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.11])
 by gabe.freedesktop.org (Postfix) with ESMTPS id DF83E10EA53
 for <intel-gfx@lists.freedesktop.org>; Sat, 25 Jan 2025 00:46:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1737765985; x=1769301985;
 h=date:from:to:cc:subject:message-id:references:
 content-transfer-encoding:in-reply-to:mime-version;
 bh=sVpmBBpEb2KDxLg5YcoWZIqmbj1O3aegZGUPL9nHjWU=;
 b=EVWbOI2kZoUcNiA4Owh4eprb1mCwB4z++eBs0Q0PjIYdyLwzZxnpPIAC
 HDp5p+KMNRL+NSSFkffOL9yLEJlQk2YTvp3+14fkS15Ifd5Y7xXpeUJ71
 xwyZ6EiPbvqZOPDRyzw7WxlOMGWFkNHZCNIeRPFiremtD77O6cfpOinKA
 jtXeStEw1ltvC9JAzqMSSlco/rZVWLiNEvzsqwHiQb7/JGyZrm1rMTxSP
 f9BiBk4i9BolxqSg29dCH+U9lQEmORGnBjjwghvbLm+azwObS5geYFVI9
 5SsdiTbXNJQnB/Jynf+KsDegV+Et6gu8S3eouz1s3wb6479q7fKHPKeJN w==;
X-CSE-ConnectionGUID: Rdg2S4ylTGmSQB1Ftu6DxA==
X-CSE-MsgGUID: mIM0B5X7RjONKMfYlGoa/g==
X-IronPort-AV: E=McAfee;i="6700,10204,11325"; a="48820389"
X-IronPort-AV: E=Sophos;i="6.13,232,1732608000"; d="scan'208";a="48820389"
Received: from orviesa004.jf.intel.com ([10.64.159.144])
 by orvoesa103.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 24 Jan 2025 16:46:25 -0800
X-CSE-ConnectionGUID: YsfY08jzQburbK0QeHsgNg==
X-CSE-MsgGUID: ISoVXTASR0Sk5234i0KRwQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.13,232,1732608000"; d="scan'208";a="112931915"
Received: from orsmsx601.amr.corp.intel.com ([10.22.229.14])
 by orviesa004.jf.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 24 Jan 2025 16:46:25 -0800
Received: from orsmsx601.amr.corp.intel.com (10.22.229.14) by
 ORSMSX601.amr.corp.intel.com (10.22.229.14) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.44; Fri, 24 Jan 2025 16:46:25 -0800
Received: from orsedg603.ED.cps.intel.com (10.7.248.4) by
 orsmsx601.amr.corp.intel.com (10.22.229.14) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.44 via Frontend Transport; Fri, 24 Jan 2025 16:46:25 -0800
Received: from NAM11-DM6-obe.outbound.protection.outlook.com (104.47.57.174)
 by edgegateway.intel.com (134.134.137.100) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.44; Fri, 24 Jan 2025 16:46:24 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=GxSEmtRohbRGpEfoLhDo+i9c7wdkxNtMzNGy58w2rnB+ec6ur2EIN5pbWItxLGtOfnbmpONoUuXJHsGR3yFlZqATIJPQtvAUeVJPC4U3z/wGfkL1PCk4IPqja/sbbTcR5dzx8Rw5OkeA9jKxQu4oWezRrtgLRvUt+C1T91MKrSE6iTkxV2LhgD65yZGiXb0j+ODalYBXeEFWXLybt61YMngvoKULCDXuEpN9by2hLvK7JJjdBoKfasb61Xt/1KgmqJzW0UDa6yLmXmGEVR01HjNUcW/TXUeeFcPx8ci7CNdCkrX0WLeRqUjIJeye5+CneFeBqe2TiJz6ctIzrkHMew==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=FmUoEsjx5Q9yYX+oDHzKPB1m5EjCbkJ48LS54ARrWFY=;
 b=xobmiu87xUI8moirsJsXcdeAdtdsJ/09OWF/dKCgkvCPetdYOW+yMGVHwoQZXYv/tAiqpLLq+dBnMnNrTm6d1oegJPBK/wNULavWRIWnOn3ufNbxjgytsQKnwizfOfmHlhBAUDxoPaSJlmAtfZ1JYrXhxyCqe+iDrD8MB7G9hE6HwChRg8p2aUmkKWWjL2rW12dGNvkq7m77IDEvX2LD+NyRlBXo+RGoz5/79GnJI7SR41d20LByVbtis1LPM01lF9CNlQRBasudRJdYultvPNU+O3J/asR3exf4FArZQdFTw/yaXqJpOfzhjr4MLFKjFR6CDGRTbemsYrDy+v8lAQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from DS0PR11MB7408.namprd11.prod.outlook.com (2603:10b6:8:136::15)
 by IA0PR11MB7933.namprd11.prod.outlook.com (2603:10b6:208:407::19) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.8377.17; Sat, 25 Jan
 2025 00:46:23 +0000
Received: from DS0PR11MB7408.namprd11.prod.outlook.com
 ([fe80::6387:4b73:8906:7543]) by DS0PR11MB7408.namprd11.prod.outlook.com
 ([fe80::6387:4b73:8906:7543%3]) with mapi id 15.20.8377.009; Sat, 25 Jan 2025
 00:46:22 +0000
Date: Fri, 24 Jan 2025 16:46:21 -0800
From: Umesh Nerlige Ramappa <umesh.nerlige.ramappa@intel.com>
To: Lucas De Marchi <lucas.demarchi@intel.com>
CC: "Liang, Kan" <kan.liang@linux.intel.com>,
 <intel-gfx@lists.freedesktop.org>, "Peter Zijlstra (Intel)"
 <peterz@infradead.org>, Vinay Belgaumkar <vinay.belgaumkar@intel.com>
Subject: Re: [PATCH] drm/i915/pmu: Drop custom hotplug code
Message-ID: <Z5Q0XSmvs4PkXg7x@orsosgc001>
References: <20250116222426.77757-1-lucas.demarchi@intel.com>
 <aded1225-0022-4e86-845c-283641cf32a0@linux.intel.com>
 <pz7y2i25y5o2ox46s3ua3prsa5ap2mkqqb5chtebw3f2egwk6n@5m4xibw2h5yd>
 <6d4d7f82-7619-40bd-bbc8-58681de54a6a@linux.intel.com>
 <rtmoiu2z4vg42efvz6mwo45eaileyghqowibdzikob7mlnklbm@bz5cc5zkalcd>
 <e15c89bb-88d6-4caf-a199-2febd067634d@linux.intel.com>
 <szokgaqqg22wu7ufam4ab5fnnf47ei62urn6gpgv2rise4h4qt@a7zb3uqvyc3r>
Content-Type: text/plain; charset="utf-8"; format=flowed
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <szokgaqqg22wu7ufam4ab5fnnf47ei62urn6gpgv2rise4h4qt@a7zb3uqvyc3r>
X-ClientProxiedBy: MW4PR04CA0081.namprd04.prod.outlook.com
 (2603:10b6:303:6b::26) To DS0PR11MB7408.namprd11.prod.outlook.com
 (2603:10b6:8:136::15)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: DS0PR11MB7408:EE_|IA0PR11MB7933:EE_
X-MS-Office365-Filtering-Correlation-Id: 26e0d8c7-ed59-47d2-dfc2-08dd3cd9b0c5
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|376014|366016|1800799024;
X-Microsoft-Antispam-Message-Info: =?utf-8?B?U2t3SU8zZHd4MTRES2owdzJUZVg3Ui9BVW9CL28zK3dOcjZwb1MvMEFabmc4?=
 =?utf-8?B?Vnhhc0JPak82ZDIvd1A5VS81NjlmMHExYWd4VU45VitmUUZEc2ZUS0ZGZEJD?=
 =?utf-8?B?TjMyeUdSeWt5Z1R6SU96WjY1ZVZJc0dlTjdzaVhKK0FBUnA0dFJ4S2EvS1p1?=
 =?utf-8?B?NzVpN0tZYkdYWjZ4YythK2cwZnU0bTNtWE5nL2lRbHREaFNSeDB3TnZMdHZw?=
 =?utf-8?B?cTMzbkFXZTE3dE0zb3JZZHpSYTJacWkrYk9mYVQ3NG5CaEV5bnFHcUdoSzVl?=
 =?utf-8?B?a0FQRWhOY05ZWmJxYWxtM1Z3aEZzQVdpMGRxa0ZWWENaNVd4V0hFeDJMTk1W?=
 =?utf-8?B?d2lIWWJNUWxBNk1JeW9OTkowNCt2cEd1YlFzQnV2UGM3M25XSDFtNm92cVNZ?=
 =?utf-8?B?U1Y5eE9BcnV6ZEl5OXFkaThyQnFuSjhpMHpPeTNjaVdQQ1ZiRlJuUUliUFJV?=
 =?utf-8?B?RW4ya25ZUkNvQmhCMzR2Q3U4dnFSY3U2ZTF5WDZSdVhMQVVwUEVWRkQ0QWtE?=
 =?utf-8?B?WngyalV0VVpIZW01UlpIS1NPSFR3Wm44Nm1CTklPS1k1aVJUMTJmdjdNTWlW?=
 =?utf-8?B?NStIa3FRZ2VTamNrR0NBVXNmcHZlK3RxNU52RWx4ZVVESHlic2UxNm5TaG5Z?=
 =?utf-8?B?YUhzalhDNnpoQmIrSGVMWDV5YnMzQU95MEdSamd2VzVsLzhxanlwQTdGaGYr?=
 =?utf-8?B?UWpxbGlDbjJyTEE5azgyeSthT01VV3pRRHFReWZSaHJJcFN6ektjd0cyaGZS?=
 =?utf-8?B?ZUFDZkJQdDFlY1BXWTdZUGV1YzZFeG9rT0xpMFQwbUhncTBCSER2N0tEM3JH?=
 =?utf-8?B?bjZRRzhpK29odzkzcUlodWpZNG12Y3lGb25NV0dYYVZpVXZrZk9abktRdVRn?=
 =?utf-8?B?by95NFNoSmt4UWNxUWtkemdPUW11TWJZSzRxN2xQOFEzL01nYVVtN3BDa2Vu?=
 =?utf-8?B?cGY1WGh4WHdCTTBUTFNma2RqY1lyQ01ZNUdRZ3lXRWh2TjZ2eGhyZW12Rytr?=
 =?utf-8?B?Ym9UbUpUc1FXSXVkYUErem1Mak1mVE9ldUVJeWtTeFp1cFZaOWJtM0lFQ1FW?=
 =?utf-8?B?RW5rMmx0dEo3ZG96b1Evd3ZUMHRKU0kvODZ4enlUanY0cXVUcWFadWdpeVZP?=
 =?utf-8?B?YW9vVWdBeVMvbEhuNFRMY2hwSkJSK2xXcnd5ak1yQlU5SHZZaHJCeHF4ZVZJ?=
 =?utf-8?B?N0J6S0szanVQbTNkR2F3UW1FM2wyY2dHWFVma096Y0hmM25nMFNrQkdFOStl?=
 =?utf-8?B?b2tqZkNyQ2JKemZVclBHTTFvRkcxN1NaYjZsZjVwemlNWW1keHVLcEFacXhF?=
 =?utf-8?B?UHNST3dnbW5ib1IvU29NNlowbkNObUFyWWpnMHRGYkdqREVNUzZKczUxOHRZ?=
 =?utf-8?B?aFNDUUVIN2JMMFpReUxWZWJocy8xNmI0VVhBd2ZOMkk3c0hyVlJVa2NJb3g0?=
 =?utf-8?B?bmtzYVVPWGVHcXFLa1R6c2tjckN2VGZTbFEzNVpQdFdwYkN5dUtBeFhpWFQ1?=
 =?utf-8?B?YklCR2cwdXpRTDRvbFNzalhTcmora2tpQ1RlNzYxZmFRSEc2cnlXRXNDN2Vz?=
 =?utf-8?B?UTFVejJqeFpnOHBURXNGT3VTVU4wOEVQUUxVeGZyb3ozWUV1Ui8wRUc4b2ZT?=
 =?utf-8?B?aThWR2lZWW1KL2FuOWJxUmFRUjJ4MGNSc3h3V3B2dmgrQmRHOWU4eVVZc1dX?=
 =?utf-8?B?RjdvLzYxWjNHYk4wVFhEcSs1ekR2c2JNK1kwUHZib3lHQnBnU2NLZENMSHJo?=
 =?utf-8?B?T210Q3JsbWUwdENPdnljMUZsaGlWdVlJZ0loeFhLSFJCamNZSmtYV1pmalZz?=
 =?utf-8?B?Z2JWcFdnTHVvVk0xU3VXdjZwM1FxOWErSnMzakFTRFdkTm9KT0phQURhRnpv?=
 =?utf-8?Q?7I5A/6f/4i1Nm?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DS0PR11MB7408.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(376014)(366016)(1800799024); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?WUxWK0FGbHVNQkxLUFZudVNuRnlxWFc2Y2xmOVAyT3pTbTczazVMZG5KYjZI?=
 =?utf-8?B?RTZueEpGbjIvVWlXdWJjTFBoK2NsbXNUOWJCWWZXdEgrdVcrUWNuVUIxY1Nl?=
 =?utf-8?B?NldVK1ZiYm5kbHFKbkRTUFNlUE84Y3VVbnFRL3pVc29uNVdnRVJ6YXRSb1VU?=
 =?utf-8?B?VGRnbXcvU013ZmNzdUs2NnBkUERNTzZJZGd2Q1dWMzFpYjlzK2dDZ3NteUQ1?=
 =?utf-8?B?SGtUNlJ0OEx0ZjBzQlYvc3MxdG5FQktZdnY2VDF2TTdQL1BiZzZvdEVycXVi?=
 =?utf-8?B?VzFpZFcwV0d3SGRtSjZreU5YTllIRE1PRzJZQ2lWRFp6WVJhcVN3Sy9EeVlQ?=
 =?utf-8?B?ZGhHRnRpRzhXL3ZZQWh6SElUZHVKblE0MUtLUkhaaXRaOThKWDEwNEtHODg5?=
 =?utf-8?B?WW5hd0RTdkYyakpkelVLTDk3bERORldFOHRyblRVYXdNK09yTFo5d0VlT3Qy?=
 =?utf-8?B?ZitiUGRnTlltczdHOUh4WXAvMTZVNGwreFI3aHYwVWxiYkJteTV5eXFMWEtY?=
 =?utf-8?B?RG1Yb3BmTy9xcS8vSkJIczFrVWIzamVkNzdQUTRYU3JFLzZTc2F0TG0vYUd0?=
 =?utf-8?B?MXVNZXptTzNFZlFLQ2Z3N2xMVWMvZ3RIdjJYMTloWXRPZ3VJNTZvN0tzMjYz?=
 =?utf-8?B?cExpM3U2TWdzUWtxNklGby8yM1RhNlNxOEMySm1zS1dybmQ3T3QvTGJzZXlk?=
 =?utf-8?B?eURVVXBKN3Axc2lPUFRMNFZSZkxLNDdBbk5WV1c3NGMvMTBaSjlweVA4VTVO?=
 =?utf-8?B?bXZzcDFzUk5JcFFGRlRWQXpFbHp2c3o5Q08xOW5aMzFsVHBJMnJWRFI5OXhk?=
 =?utf-8?B?d0F4N2hPR0VYMVdnQmUyU1dwanJBTzNvaXE1N29MQXFTOW5FelpoTllZcTVy?=
 =?utf-8?B?WFRoQUpFNDNhUXVtY1hkandLMUpvVnM4bHgraGRmRnVocEQyUktkelZKR25Z?=
 =?utf-8?B?ZU9qaGxMdDFxN0IyL1l6TExRMDJvcFpybVVEUjluVEZRRG8wUnZrb2F2d3Qv?=
 =?utf-8?B?ZEZueDVNdXpZSWlLaHh4Ny84NWtZUE54U0tGbjNucmR1UWJFT09MYU5nK1R2?=
 =?utf-8?B?UmhDN1FSZ1ZqZ200YjFkS0RDNzcwb0Z6V0pBM2Y0cEg5WFZMT2E0OGZzUEQv?=
 =?utf-8?B?Z1BodFhSeWFQeEJsRzh6akthdDJTT29wV3B3eHRDZnlENzlJV0U3MFlXeFdD?=
 =?utf-8?B?d1NYcHZLamNDaXhFQjMzRXFEcFZFYitYOHd6SHB2MHV5bldMN3dFS1g3bTNN?=
 =?utf-8?B?ZmJtME9JOE9ZRjJHb2FocGVvd3lNOHNUS255clkyb2Y5TXFsOGZ2bUgzUmpp?=
 =?utf-8?B?L0tLMlViUGpFNysyeFZWd3hBT0Z2a3Fjd0JmcHJkWVRFNjVPQ3RwUzdFMEJ5?=
 =?utf-8?B?NEZtWnpTaHliTGtwSkc0YmlXbWpLQTV1NnVaWS9nK0xKQy9sRzFTMi96bVQ0?=
 =?utf-8?B?K2cxalBqREs3Vm1nZ2kvUEpwbytEWEJiWXQzL3JhdGRyZldIZWQralVCRVIx?=
 =?utf-8?B?Qml6aG1SWitUb0VNVXhPSUR4WVpIRmxycUY2cEczWUc4Z2UzQkJCOThXOHIv?=
 =?utf-8?B?bmRxTXZkS2owZTlnR2gwL3lTL21oNnNFOG1SQUhiUUd6OTQzTWhjQlZRMWFI?=
 =?utf-8?B?TVprNTY4M1hLTW5xcGhpT3QzWkp4S1NTbzVJUGJaYXorTWVZbnpyZkRnRHV3?=
 =?utf-8?B?ZWgrdU9sMUVhUlFnem0zVUxYcEpZZHp4NGxvdDhzbTFGcjVvKytZVlpnY1kx?=
 =?utf-8?B?UmdyUUsrenZFQVdSOXZDckJhc1ZENXlCRW9yUDBmck9VSDFvNmJGTTBXL1Nx?=
 =?utf-8?B?M0x6WHBhaENvWUZjUFJHVUFSVm50MjRtYWVMai82VUNXQUVzNHM5MWtZRjVN?=
 =?utf-8?B?R2NIMlhjWU8xYk9ZSXFwb1hOMms4S29XbjBOSlhrNFNLM2xCTkhWem4rYnR4?=
 =?utf-8?B?aEZQdTNYSlhSQWZNdFp3NUVoSUo2eVRNZFpldVFuVkFMV0hHZ3Z3MEJhVWhB?=
 =?utf-8?B?alZQOE0vSkRXMysrc3ZOTFpKS2JwVldrZERCWlNMd20yOXoreU8ralJEb1g1?=
 =?utf-8?B?NUFwaHNGTVVKczl1dnliZW8ycVYvY1Rxb3UyZDhwSUFzRGlIRkRJdHN5NGVC?=
 =?utf-8?B?MWMvWENub2ZGa0QwUG9mUTRxQmxEV2FPVUF0OGttUTRhUkVIejZSTUVtdkJl?=
 =?utf-8?Q?vyV9wAAW2Md/jPr4eSI9Cjs=3D?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 26e0d8c7-ed59-47d2-dfc2-08dd3cd9b0c5
X-MS-Exchange-CrossTenant-AuthSource: DS0PR11MB7408.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 25 Jan 2025 00:46:22.9015 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: BvYpLl4NzEvpvCzgmNPyVUWeZ7gTCr5D8EErn60bIC3qEV8CvUbKX00V+uqCYJm295PodygtiDTcDB2LpwuiPXgAnJTZJph9BZBMgIrCqnQ=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: IA0PR11MB7933
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

Hi Lucas,

Mostly a bunch of questions since I think I am missing something.

On Tue, Jan 21, 2025 at 10:59:08AM -0600, Lucas De Marchi wrote:
>On Tue, Jan 21, 2025 at 10:53:31AM -0500, Liang, Kan wrote:
>>
>>
>>On 2025-01-21 9:29 a.m., Lucas De Marchi wrote:
>>>On Mon, Jan 20, 2025 at 08:42:41PM -0500, Liang, Kan wrote:
>>>>>>>-static int i915_pmu_cpu_offline(unsigned int cpu, struct hlist_node
>>>>>>>*node)
>>>>>>>-{
>>>>>>>-    struct i915_pmu *pmu = hlist_entry_safe(node, typeof(*pmu),
>>>>>>>cpuhp.node);
>>>>>>>-    unsigned int target = i915_pmu_target_cpu;
>>>>>>>-
>>>>>>>-    /*
>>>>>>>-     * Unregistering an instance generates a CPU offline event which
>>>>>>>we must
>>>>>>>-     * ignore to avoid incorrectly modifying the shared
>>>>>>>i915_pmu_cpumask.
>>>>>>>-     */
>>>>>>>-    if (!pmu->registered)
>>>>>>>-        return 0;
>>>>>>>-
>>>>>>>-    if (cpumask_test_and_clear_cpu(cpu, &i915_pmu_cpumask)) {
>>>>>>>-        target = cpumask_any_but(topology_sibling_cpumask(cpu), cpu);
>>>>>>>-
>>>>>>
>>>>>>I'm not familar with the i915 PMU, but it seems suggest a core scope
>>>>>>PMU, not a system-wide scope.
>>>>>
>>>>>counter is in a complete separate device - it doesn't depend on core or
>>>>>die or pkg - not sure why it cared about topology_sibling_cpumask here.
>>>>
>>>>OK. But it's still a behavior change. Please make it clear in the
>>>>description that the patch also changes/fixes the scope from core scope
>>>>to system-wide.
>>>
>>>sure... do you have a suggestion how to test the hotplug? For testing
>>>purposes, can I force the perf cpu assigned to be something other than
>>>the cpu0?
>>
>>Yes, it's a bit tricky to verify the hotplug if the assigned CPU is
>>CPU0. I don't know a way to force another CPU without changing the code.
>>You may have to instrument the code for the test.
>>
>>Another test you may want to do is the perf system-wide test, e.g., perf
>>stat -a -e i915/actual-frequency/ sleep 1.
>>
>>The existing code assumes the counter is core scope. So the result
>>should be huge, since perf will read the counter on each core and add
>>them up.
>
>that is not allowed and it simply fails to init the counter:
>
>static int i915_pmu_event_init(struct perf_event *event)
>	...
>	if (event->cpu < 0)
>		return -EINVAL;
>	if (!cpumask_test_cpu(event->cpu, &i915_pmu_cpumask))
>		return -EINVAL;
>	...
>}
>
>event only succeeds the initialization in the assigned cpu. I see no

Confused here - The above code check (cpumask_test_cpu) is removed in 
this patch. Are you explaining how it was behaving before this patch?

>differences in results (using i915/interrupts/ since freq is harder to
>compare):
>
>$ sudo perf stat -e i915/interrupts/  sleep 1
>
> Performance counter stats for 'system wide':
>
>               253      i915/interrupts/
>
>       1.002215175 seconds time elapsed
>
>$ sudo perf stat -a  -e i915/interrupts/  sleep 1
>
> Performance counter stats for 'system wide':
>
>               251      i915/interrupts/
>
>       1.000900818 seconds time elapsed
>
>Note that our cpumask attr already returns just the assigned cpu and

I don't see the cpumask attr anymore since this patch remove that, so 
still confused on this part.

>perf-stat only tries to open on that cpu:
>
>$ strace --follow -s 1024 -e perf_event_open --  perf stat -a  -e i915/interrupts/  sleep 1
>
>[pid 55777] perf_event_open({type=0x24 /* PERF_TYPE_??? */, size=0x88 /* PERF_ATTR_SIZE_??? */, config=0x100002, sample_period=0, sample_type=PERF_SAMPLE_IDENTIFIER, read_format=PERF_FORMAT_TOTAL_TIME_ENABLED|PERF_FORMAT_TOTAL_TIME_RUNNING, disabled=1, inherit=1, precise_ip=0 /* arbitrary skid */, exclude_guest=1, ...}, -1, 0, -1, PERF_FLAG_FD_CLOEXEC) = 3
>
>Lucas De Marchi
>
>>But this patch claims that the counter is system-wide. With the patch,
>>the same perf command should only read the counter on the assigned CPU.
>>
>>Please also post the test results in the changelog. That's the reason
>>why the scope has to be changed.
>
>it seems that migration code is simply wrong, not that we are changing
>the scope here - it was already considered system-wide. I can add a
>paragraph in the commit message explaining it.

The prior code was enforcing one CPU assignment to all the i915 events.  
If the event was read from some other CPU it would fail (based on this 
check in event initialization).

	if (!cpumask_test_cpu(event->cpu, &i915_pmu_cpumask))
		return -EINVAL;

That's not the case anymore. Right? If yes, how do counters read from 
different CPUs get reported to the user? Sum of all counts on different 
CPUs?

Thanks,
Umesh

>
>thanks
>Lucas De Marchi
>
>>
>>Thanks,
>>Kan
>>
>>
