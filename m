Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 5EAAACF408B
	for <lists+intel-gfx@lfdr.de>; Mon, 05 Jan 2026 15:09:14 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id E62C110E3E8;
	Mon,  5 Jan 2026 14:09:12 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="ZQ9sFTxd";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.12])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 4181F10E3E8;
 Mon,  5 Jan 2026 14:09:11 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1767622151; x=1799158151;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=IeLJDBImBuBFrS8BczGrumnMd1CHPdB96EFNyuLn3ZQ=;
 b=ZQ9sFTxd8mvbx7qlcupm+YrPXOetm0Ddg6wNIfX3nCyCDIfEHYFB6lHn
 eSl/lW0mQQKKwxw2nnWCtpGIyOZI7G3O2lSkJ3GJGg9GjvBJlqsP3QlMM
 OLWdZL3Ume92Vjx3bRSdAC6BY+th3BUksorYWCNqjdeTlMpNhzHeMVX+r
 4ctEeHgp17sgiKXytJ5hE8oEADoxU5O6h3mVXL2DJxo8nInQhbLR6kIyK
 ocbGgIhMFTrFsl9LtvPGr3DE8I5KQAqevnSmo58fjPIOhfOgz6NrKkc2e
 gS3wzY5+KMBgnr1FXr8NEPnIaTUAdxjqfkJmqw57nbG4gY0p40nwxtFwq g==;
X-CSE-ConnectionGUID: eua/2TQWRSq52y4L5KoZMQ==
X-CSE-MsgGUID: yNp6TzjxQSqzGCnloVXGwA==
X-IronPort-AV: E=McAfee;i="6800,10657,11662"; a="72844836"
X-IronPort-AV: E=Sophos;i="6.21,203,1763452800"; d="scan'208";a="72844836"
Received: from orviesa010.jf.intel.com ([10.64.159.150])
 by fmvoesa106.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 05 Jan 2026 06:09:11 -0800
X-CSE-ConnectionGUID: Dl/LRAYvSQyM//+QZuUDgg==
X-CSE-MsgGUID: J2vkovyTS3m7DDxyw5+VVg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.21,203,1763452800"; d="scan'208";a="201639028"
Received: from fmsmsx903.amr.corp.intel.com ([10.18.126.92])
 by orviesa010.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 05 Jan 2026 06:09:10 -0800
Received: from FMSMSX902.amr.corp.intel.com (10.18.126.91) by
 fmsmsx903.amr.corp.intel.com (10.18.126.92) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.29; Mon, 5 Jan 2026 06:09:09 -0800
Received: from fmsedg902.ED.cps.intel.com (10.1.192.144) by
 FMSMSX902.amr.corp.intel.com (10.18.126.91) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.29 via Frontend Transport; Mon, 5 Jan 2026 06:09:09 -0800
Received: from PH8PR06CU001.outbound.protection.outlook.com (40.107.209.43) by
 edgegateway.intel.com (192.55.55.82) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.29; Mon, 5 Jan 2026 06:09:09 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=ZdvlDHPnkQkmtIE3a3gdw9NSrJNGYOxY0gXMrt1y5vSzisyHN7kYb4gOgrxBDh6Gu6jsoIip3twy4LcHuUTYzRJSmSys4y7BZDFXskWW4T93lGtDe/87KE5/b3sFaYlGBpDdFyW3yImW6NrkIiOeKrXfSAdHIobsvOSVmwckkGMHF0igF0pSHqLbOQQXzIaRROJ7Pgm6uFzT+zv9mBp2VS66YT8NgX73XFG7MXcDsTAMIMVj6/fe1WmYkE4HGXZCw4XTkFOAJj4mNfHPohg5b9y0mq6b694wzHjAufvp5ImaAPjTVLMpB8vDfGJ3i8wi0inAGsNmMLkTj5GrfFHUwA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=IeLJDBImBuBFrS8BczGrumnMd1CHPdB96EFNyuLn3ZQ=;
 b=ermP2Nw+aElzYeUZrZTeR+eTJLB6UF9oRTgpvS6j2/tZJ6RdAw/HQrXDM3jFuFhj0EyzpkDCb2fYUtuMdDx6lD4XSxLjX23pZOs2ddw5MO9ZsbM1UDJYO2vPVpCdVIFtypSc/z1Z1lqc5dXdOu1dKkmeJnnvS8p7TWhlJZBHNSS44yngrnBclNKRqOjuZhIr7fxa4XNgHv0wQ2f5QkmVjK2dvDcyXMVGHKHkHY0z1wYW4QQcfaOWmPoF2jSoNvhw1rDub0bSYjLY7xemNmi2MR3deFHVQ/SbbXf/WHKywS1mMRua5p47kCdUa6KbiYG4prRGDwdpLrvJjFBrsDXSUg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from IA1PR11MB6266.namprd11.prod.outlook.com (2603:10b6:208:3e6::12)
 by BY1PR11MB8005.namprd11.prod.outlook.com (2603:10b6:a03:523::18)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9478.4; Mon, 5 Jan
 2026 14:09:02 +0000
Received: from IA1PR11MB6266.namprd11.prod.outlook.com
 ([fe80::eda2:e570:4314:8720]) by IA1PR11MB6266.namprd11.prod.outlook.com
 ([fe80::eda2:e570:4314:8720%4]) with mapi id 15.20.9478.004; Mon, 5 Jan 2026
 14:09:01 +0000
From: "Bhadane, Dnyaneshwar" <dnyaneshwar.bhadane@intel.com>
To: "Sousa, Gustavo" <gustavo.sousa@intel.com>,
 "intel-xe@lists.freedesktop.org" <intel-xe@lists.freedesktop.org>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>
CC: "Sousa, Gustavo" <gustavo.sousa@intel.com>
Subject: RE: [PATCH 2/2] drm/i915/cdclk: Implement Wa_13012396614
Thread-Topic: [PATCH 2/2] drm/i915/cdclk: Implement Wa_13012396614
Thread-Index: AQHcc5ESVMn6Z1e480mq0m95bJdd4bVDsnAA
Date: Mon, 5 Jan 2026 14:09:00 +0000
Message-ID: <IA1PR11MB62666A307B3AA270DF201D9CE286A@IA1PR11MB6266.namprd11.prod.outlook.com>
References: <20251222-display-wa-13012396614-timing-of-mdclk-source-selection-v1-0-a2f7e9447f7a@intel.com>
 <20251222-display-wa-13012396614-timing-of-mdclk-source-selection-v1-2-a2f7e9447f7a@intel.com>
In-Reply-To: <20251222-display-wa-13012396614-timing-of-mdclk-source-selection-v1-2-a2f7e9447f7a@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: IA1PR11MB6266:EE_|BY1PR11MB8005:EE_
x-ms-office365-filtering-correlation-id: 7b1acb79-b4c3-46c4-fed9-08de4c63f9b6
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
 ARA:13230040|366016|376014|1800799024|38070700021|7053199007; 
x-microsoft-antispam-message-info: =?utf-8?B?VjJyWHhvYXFNOU5SNGswZzdLcnZrdGo1cVlwdFlVZ0xtTmZ1Nm5hempjbkVz?=
 =?utf-8?B?anVHVEFNRS83Qy8wM3lJNVNwVFpSQzAzS3JkU0dHbkJHYVFXTUxqTDcxdm9B?=
 =?utf-8?B?YXZGVmNPUVAxczJWSGo2OVJoL1NydnkwQWVsbHlVbnBKKzRqUzNJTGxIUGZK?=
 =?utf-8?B?SUxrVmp2VjIvVGxPaHdnT2F5cm83a1R1U3JqbXJVWUIyZzFYZExpRE01TzA4?=
 =?utf-8?B?UzNVSHcvVWNwaEVYTU9UQ2MxMFJUMlg4b0VvNmNXMjBhWnRPT01XaXJhOHlj?=
 =?utf-8?B?T0pQTlVaRmNiMjhxNFNCR2NrdHpnblBEemNUTU9kb1FGZUI5SmRzY04vaEpB?=
 =?utf-8?B?b1gvc1ZxSWkrV2ZjTm5UbHBpVXArT29hdCt0M3lXWUVTa2F2Y3l5UHBRaFVY?=
 =?utf-8?B?cmtpZEIxMXd6V1VtWXZXK3RoRjRYQUZqaW9nSVg4VXBLL1dnbldRajFRZWVW?=
 =?utf-8?B?TnZBblMwWmZYSEZZRUhjTUFGYWt4R1IxYWNBbzBnVDYwUGxQNFZYM0w0L1Zh?=
 =?utf-8?B?YXFNWlRac29RTDhPSk9veG5JUjExQlBSaVVVYkp0TjF2WlB4eFFCTWxKZG1Y?=
 =?utf-8?B?RlBjM21WN1RiSVdadlhQcm5uc1kxeDR4TkpQRGJhTnVVbzlSZm9BM3RjNG9J?=
 =?utf-8?B?ZVpnYW9BMDlNTXlkSkdqK0gzYjRGT0ZuNE5VNDcwbGlSUUxBL2YrUFgyUGFQ?=
 =?utf-8?B?V2JpVWtCQUM2RTlCMXVCL1l6emZIT2JjY0lVSVo5c2RSdGsrbTUxYXNHZ08v?=
 =?utf-8?B?SWFTdFpxOUNSSGJ0MGZCVzFmVWw1cmd1QzVmbTBPMFJBL3B0WTBKcjdUbEFk?=
 =?utf-8?B?amo0d3hnVUJ0U2JxRWFRQWRyU2dsQm1VWEI3TlNyWDNoeHVBbjdlV2VheHIv?=
 =?utf-8?B?RFRYN3praGhIVS9pcEZWeDlRRUxJckJjaGhSZGFNbnVqR05UZTVsLzlnZERR?=
 =?utf-8?B?dmhaaFZxanJLQXh5c2dRMnZ5dVdaVmk2N3hwa0hQeVJWTUNaTXQ1ZUhBV0JX?=
 =?utf-8?B?OGVDMlk3N0tYdHlOR0R2cWFqOTh3R09TUHEvVW5NaHE4R1JscVh5MUR4MjZF?=
 =?utf-8?B?Z3NuTmZuSFVXaVl5OVczRy9pUEpUdm9uN0FDSm52Rnp6a2FJYmtWM3hrQVBS?=
 =?utf-8?B?VC9zLzd5bjFOdkF5dFZDd1E3dzd3UjJBc29qWm1nZDdQY2VEdCtsekZVK0Fz?=
 =?utf-8?B?eFZmOGYxL1Z3dHJCME92eTBqeEZVY0JKWDR6VDM3MDJDNnFnZHZUdGxJdHYv?=
 =?utf-8?B?L2t5OVd0N1Ira01vV0MyMlhiRzFxYThPaFI0cVFVcllwNkJBUGVuZ05sU1Nt?=
 =?utf-8?B?ZWxrdnhqNGZMZFJYSCtpckRRazJRcDRMZ3Q5T1lwV2E2YkdpZ0F4ZmV6ZWxy?=
 =?utf-8?B?alN4YTZRaU83YkpodlZtaUdXWlZ1UzFsaitRVkQ0bTBadXB0OWVIS3RGK1kv?=
 =?utf-8?B?cmYyMGJjMWZuc3F5bUpCbmVsaHkyUmNnUU50VkdzeHRGSkk0VS81eHRORDQw?=
 =?utf-8?B?Kzd1WmwzZEwwWmFIR2NwZ2FoVVcxaXhrSk51RXhHOVlPZTZaSXFnd0loUzEr?=
 =?utf-8?B?UXlFNUFrWXc0ZjFrc01lc203ZzlGNG53WjdZVlNDRDZCSE41UExxYzVVNGt5?=
 =?utf-8?B?dUVWVEtNOGw4Smg2cUdxYmVZZlNYcCtmMStOUzdtaHIzb28wdFpkUUdrTlhx?=
 =?utf-8?B?aDF1VXhNc044Q00zVU5mbzAwVnJUOXJpQlR2SDFlcXJSY1hIQ3hxdEVUNFBL?=
 =?utf-8?B?aE5QN0VubkFoMzhoaFZobGpYaUtqNE5Ua1R1Zzl5S3JyTEtjemYyWVJnK0t3?=
 =?utf-8?B?Vm5XSmEwRzFpbTVmcHpRNEdoTWU1NGh2RVB3SlJqcXQweS9oMFhYS3Bmakl5?=
 =?utf-8?B?YThpb21QTUJGVDBDRC9SeGd4NUdUN2JWZUR3dnNUZU1OSXRXWER6QjJVVU92?=
 =?utf-8?B?dCsxV0RuOERPcTMxWnF2WTJVbUlGYWhmZGFQS2tsUnJWdjRoRkh3TFd3K2c5?=
 =?utf-8?B?bEFKRkJjV2wzZ0s1MlYyQTJvOEo0U0hpQmVLYkU3YUpOUlUyN1A3RWc3VEMx?=
 =?utf-8?Q?s2+Egx?=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:IA1PR11MB6266.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(366016)(376014)(1800799024)(38070700021)(7053199007); DIR:OUT;
 SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?utf-8?B?YWZBcFQ4dFRZMWRkdDNoNjNnOGtvNjBpdXRDRGd3cE1UNFVYR3RWQjluQTVY?=
 =?utf-8?B?bU5tMjR5aGhscVBCbTh2WXhoRDRzMHNqNGlEZ09GRG5HMG01aitpOWFxV0xv?=
 =?utf-8?B?VHhNb0dicldFdzRRNmZnUVQ3VFZXWk1rMDhCd01wOVBRcFlFaENGaldRWGpJ?=
 =?utf-8?B?dVV4KzhtbWNEWmlJZGJic1VicVBFOTRaRFQrSHc4eHFWNmxUdUNVUEFyeHRa?=
 =?utf-8?B?WkM3NHUyUGdhbEl5V1Y2ZjRVV09OVDNoWWlMNGRKajUySzRGN2ltOUNsRUxX?=
 =?utf-8?B?cFZlekdRSGpReVFiQTcvc2gxY2paUjZhdXRIOVIvVlIxRHVTdjV3NWdjMkdz?=
 =?utf-8?B?dmtiWGZ5QnJQMTNONmxYNlJPbk9kOCtVN3JZMHM2RGFvYkJkT0ZHV1ZaV3hk?=
 =?utf-8?B?MEJvbWR3OFNZV0NPa2s2dkhlK3N3T240bkJTcERFVys3REE2eERSUkh1NERK?=
 =?utf-8?B?c3haZzlLcDkrdFI2SXhLMVUvdFBnQWJhckJLZE5lT3YxUEhKTDFRaGQ1anBj?=
 =?utf-8?B?NWZLdm9YYXQraGk1Y2RERlY0OVhNTWxsMlpZOUQ4QmZqOXpwYXRNanJJR1Bq?=
 =?utf-8?B?d1ZDU0Vhd0xvY25ic2ZnSU9MU2RoTUtYcU9KL214S3ZsM2E4aG9rK3JGM2p5?=
 =?utf-8?B?NGw4Y2s5ZFU5cm82a0NONEdmcUszbk1IeVgrMzlMMXRYVkMvRU9MYzhYM05C?=
 =?utf-8?B?OGw2VUdFNEl3bURsRnZocmpLTzkyemwySmQyQ3d3TzBwaFdaQWdoT2NnVW9N?=
 =?utf-8?B?VVpPMDBveUl0Wml2cUdmT2V5RVhkbnRSckFtQW9KcWZDdjBrR09ZNlFidDJE?=
 =?utf-8?B?Zkx1RmkrcTdSQXkzTWpWbmpQRFBUb2l1UkxXbnF2VjBnemtvYjI5dzdLNFAv?=
 =?utf-8?B?eVpJWGdiZDBjTmY1TmdNY2FRb096Qy9OSFMvaFRnQ0J4dTdYZTVTZEVveHNa?=
 =?utf-8?B?V29WWXJGdEJDaEJMT0ovZk93VWp2ZDN5Yy85OEpWcXZjNWZYL0duMmF0dmZr?=
 =?utf-8?B?NjAwWTcxSnJvRVBNRE9HUSt3a1lLTFV0eEFFdmx1eFhXTXV4cXdpQkpyV3Bt?=
 =?utf-8?B?OWdSeEFqZStzRTE2QW4vbmtvZmcvbUVKY3RaZWlkaXlBZmY5QkFhNWZVa25w?=
 =?utf-8?B?NkFwcDhPVU1QUktTSitzaTRYZEN0cXNha0FDS2FJS2h2OXVVeHlKOFZ3QW1C?=
 =?utf-8?B?YnlubGtJenVpS0RBMFhFODNTU0RGdUdpN3EzSHgvNTd0aEtibGRPTVdhYVJQ?=
 =?utf-8?B?emp2LzFFQ1FRa0tKTjJZSXRjejVPbUpzSGRmaFNHMWNaUk5vQXlGNGxSM1dv?=
 =?utf-8?B?SjlpYXczVWtLZXpQUDIrTnRmaEp1ZGtheHd5SjJxY0JQQk0wOWJSamxkYmFH?=
 =?utf-8?B?Nnh5UUlKNldDWVp2aXpOZUl6M0dTc1hsY1V3b3VSYmxFa3dLUWxHbVIxQ2Jv?=
 =?utf-8?B?Tys0VFg0VXM3SHpTVjQyYjR6Q2tIRWp4UVhncS83aGM5TnZTRXZPeGpjazdH?=
 =?utf-8?B?bHNESmpVa3ZxeVF1dDF0UmdGSXhnZUZrQ1dhaHRaS2NrMldieDI3SE9hQ3F5?=
 =?utf-8?B?NnpkQWRWV1FHTG8vVWhXQWU3VFBFQzA1WmZ0YzQ1NVo0a2toMlUxSDJaWkNk?=
 =?utf-8?B?R3EvTHpnenhvSngrTjZJdWk0KzV2NDhoYWhiODF2MlpqQ1ZQZ3ExTXJPYm1o?=
 =?utf-8?B?MkdnMnZXSW4wN25TVGpmbFRwanNDVjBjaFlZVEwxSFcrYTVHQml0TEVwTitR?=
 =?utf-8?B?WFRmcnRlTndPWXZsb1lUSU9rbVhtbGxnNjRPa2o3ZEdWQUFVSFNEMU1EZ01k?=
 =?utf-8?B?Y2ptZlZwcFRYUVdha3kwYlpRY0dPQ3hpb1RyZjk4OGNRUlV4SEpJVGVjQndz?=
 =?utf-8?B?TmNnYnAwM3FvcnJTb2d0N2wzdjhwUlBaRlh4RUpmRXBzUVRmdzc3a25DcVdG?=
 =?utf-8?B?TldCL0NkSGNVN0xMYWJyQWUzYkcwdDhjVXgzK1J3aldHWXNUM3FmRGU4b1Vk?=
 =?utf-8?B?WVZXYzJZS014VyszR0xnS1lMbzF3Sk1Bb1J2R0w1TmFhTWs1cXBKTFl4MlRC?=
 =?utf-8?B?SHdGcXdhZ05lMzlZeHpzQzlpRkljc1FvNFlhSlRNcGRrZ0VkbGx2VUdhYWlQ?=
 =?utf-8?B?QThBd3c0Wm9GeVczU05hVE9vdlNPL3h6MUc3WjBzU2xtSktaVGpSYWZldnBa?=
 =?utf-8?B?OTRDVHhiVk1UZ1ZReisvcTV5MlFHNkZmMTF0YStNcmRhTXYwQjBTcEdiTFNw?=
 =?utf-8?B?TTljT0grd2ZMcTJkZEo3TE5tVHFNWmt0V2s2dUJnbmpydnFWeUxxeGpyR0cr?=
 =?utf-8?B?WWozaU8xYjBkbG1PWVU0TlRxb0FrWXdrQ3AyZEZJVHBSMjVubHpydz09?=
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: IA1PR11MB6266.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 7b1acb79-b4c3-46c4-fed9-08de4c63f9b6
X-MS-Exchange-CrossTenant-originalarrivaltime: 05 Jan 2026 14:09:00.6703 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: x6LqnsQ+scZmQ9da+/jWFCMNqgxi09iiVsfKWSkm+CcFrw8oenyS2Dqv4kRxB7LOsT175ZTtH6o4eVIbkOdUQpd8IACiow1e2OHssO2Moz0=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: BY1PR11MB8005
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

DQoNCj4gLS0tLS1PcmlnaW5hbCBNZXNzYWdlLS0tLS0NCj4gRnJvbTogSW50ZWwtZ2Z4IDxpbnRl
bC1nZngtYm91bmNlc0BsaXN0cy5mcmVlZGVza3RvcC5vcmc+IE9uIEJlaGFsZiBPZiBHdXN0YXZv
DQo+IFNvdXNhDQo+IFNlbnQ6IFR1ZXNkYXksIERlY2VtYmVyIDIzLCAyMDI1IDM6NDkgQU0NCj4g
VG86IGludGVsLXhlQGxpc3RzLmZyZWVkZXNrdG9wLm9yZzsgaW50ZWwtZ2Z4QGxpc3RzLmZyZWVk
ZXNrdG9wLm9yZw0KPiBDYzogU291c2EsIEd1c3Rhdm8gPGd1c3Rhdm8uc291c2FAaW50ZWwuY29t
Pg0KPiBTdWJqZWN0OiBbUEFUQ0ggMi8yXSBkcm0vaTkxNS9jZGNsazogSW1wbGVtZW50IFdhXzEz
MDEyMzk2NjE0DQo+IA0KPiBBIG5ldyB3b3JrYXJvdW5kIHdhcyBkZWZpbmVkIGZvciBYZTNfTFBE
LCB3aGljaCByZXF1aXJlcyBhIHR3ZWFrIG9uIGhvdyB3ZQ0KPiBoYW5kbGUgTURDTEsgc2VsZWN0
aW9uLiAgSW1wbGVtZW50IGl0Lg0KPiANCj4gU2lnbmVkLW9mZi1ieTogR3VzdGF2byBTb3VzYSA8
Z3VzdGF2by5zb3VzYUBpbnRlbC5jb20+DQoNCkxHVE0sDQpSZXZpZXdlZC1ieTogRG55YW5lc2h3
YXIgQmhhZGFuZSA8ZG55YW5lc2h3YXIuYmhhZGFuZUBpbnRlbC5jb20+DQoNCg0KPiAtLS0NCj4g
IGRyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfY2RjbGsuYyAgICAgIHwgMzEgKysr
KysrKysrKysrKysrKysrKysrKy0tLQ0KPiAgZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9p
bnRlbF9kaXNwbGF5X3dhLmMgfCAgMiArKw0KPiBkcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5
L2ludGVsX2Rpc3BsYXlfd2EuaCB8ICAxICsNCj4gIDMgZmlsZXMgY2hhbmdlZCwgMzEgaW5zZXJ0
aW9ucygrKSwgMyBkZWxldGlvbnMoLSkNCj4gDQo+IGRpZmYgLS1naXQgYS9kcml2ZXJzL2dwdS9k
cm0vaTkxNS9kaXNwbGF5L2ludGVsX2NkY2xrLmMNCj4gYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9k
aXNwbGF5L2ludGVsX2NkY2xrLmMNCj4gaW5kZXggMGFhNTlkNjI0MDk1Li43NDQzZTUyODU5NDIg
MTAwNjQ0DQo+IC0tLSBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfY2RjbGsu
Yw0KPiArKysgYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2NkY2xrLmMNCj4g
QEAgLTM5LDYgKzM5LDcgQEANCj4gICNpbmNsdWRlICJpbnRlbF9kaXNwbGF5X3JlZ3MuaCINCj4g
ICNpbmNsdWRlICJpbnRlbF9kaXNwbGF5X3R5cGVzLmgiDQo+ICAjaW5jbHVkZSAiaW50ZWxfZGlz
cGxheV91dGlscy5oIg0KPiArI2luY2x1ZGUgImludGVsX2Rpc3BsYXlfd2EuaCINCj4gICNpbmNs
dWRlICJpbnRlbF9kcmFtLmgiDQo+ICAjaW5jbHVkZSAiaW50ZWxfbWNoYmFyX3JlZ3MuaCINCj4g
ICNpbmNsdWRlICJpbnRlbF9wY2lfY29uZmlnLmgiDQo+IEBAIC0xODU4LDYgKzE4NTksMjAgQEAg
c3RhdGljIHZvaWQgYnh0X2RlX3BsbF9lbmFibGUoc3RydWN0IGludGVsX2Rpc3BsYXkNCj4gKmRp
c3BsYXksIGludCB2Y28pDQo+IA0KPiAgc3RhdGljIHZvaWQgaWNsX2NkY2xrX3BsbF9kaXNhYmxl
KHN0cnVjdCBpbnRlbF9kaXNwbGF5ICpkaXNwbGF5KSAgew0KPiArCS8qDQo+ICsJICogV2FfMTMw
MTIzOTY2MTQ6DQo+ICsJICogRml4ZXM6IEEgc3BvcmFkaWMgcmFjZSBjb25kaXRpb24gYmV0d2Vl
biBNRENMSyBzZWxlY3Rpb24gYW5kIFBMTA0KPiArCSAqICAgICAgICBlbmFibGluZy4NCj4gKwkg
KiBXb3JrYXJvdW5kOg0KPiArCSAqICAgQ2hhbmdlIHByb2dyYW1taW5nIG9mIE1EQ0xLIHNvdXJj
ZSBzZWxlY3Rpb24gaW4gQ0RDTEtfQ1RMOg0KPiArCSAqICAgIC0gV2hlbiBkaXNhYmxpbmcgdGhl
IENEQ0xLIFBMTCwgZmlyc3Qgc2V0IE1EQ0xLIHNvdXJjZSB0byBiZQ0KPiBDRDJYQ0xLLg0KPiAr
CSAqICAgIC0gV2hlbiBlbmFibGluZyB0aGUgQ0RDTEsgUExMLCB1cGRhdGUgTURDTEsgc291cmNl
IHNlbGVjdGlvbiBvbmx5DQo+ICsJICogICAgICBhZnRlciB0aGUgUExMIGlzIGVuYWJsZWQgKHdo
aWNoIGlzIGFscmVhZHkgZG9uZSBhcyBwYXJ0IG9mIHRoZQ0KPiArCSAqICAgICAgbm9ybWFsIGZs
b3cgb2YgX2J4dF9zZXRfY2RjbGsoKSkuDQo+ICsJICovDQo+ICsJaWYgKGludGVsX2Rpc3BsYXlf
d2EoZGlzcGxheSwgMTMwMTIzOTY2MTQpKQ0KPiArCQlpbnRlbF9kZV9ybXcoZGlzcGxheSwgQ0RD
TEtfQ1RMLCBNRENMS19TT1VSQ0VfU0VMX01BU0ssDQo+ICtNRENMS19TT1VSQ0VfU0VMX0NEMlhD
TEspOw0KPiArDQo+ICAJaW50ZWxfZGVfcm13KGRpc3BsYXksIEJYVF9ERV9QTExfRU5BQkxFLA0K
PiAgCQkgICAgIEJYVF9ERV9QTExfUExMX0VOQUJMRSwgMCk7DQo+IA0KPiBAQCAtMjE0NywxMCAr
MjE2MiwyMCBAQCBzdGF0aWMgdTMyIGJ4dF9jZGNsa19jdGwoc3RydWN0IGludGVsX2Rpc3BsYXkg
KmRpc3BsYXksDQo+ICAJICAgIGNkY2xrID49IDUwMDAwMCkNCj4gIAkJdmFsIHw9IEJYVF9DRENM
S19TU0FfUFJFQ0hBUkdFX0VOQUJMRTsNCj4gDQo+IC0JaWYgKERJU1BMQVlfVkVSKGRpc3BsYXkp
ID49IDIwKQ0KPiAtCQl2YWwgfD0geGUybHBkX21kY2xrX3NvdXJjZV9zZWwoZGlzcGxheSk7DQo+
IC0JZWxzZQ0KPiArCWlmIChESVNQTEFZX1ZFUihkaXNwbGF5KSA+PSAyMCkgew0KPiArCQkvKg0K
PiArCQkgKiBXYV8xMzAxMjM5NjYxNCByZXF1aXJlcyBzZWxlY3RpbmcgQ0QyWENMSyBhcyBNRENM
Sw0KPiBzb3VyY2UNCj4gKwkJICogcHJpb3IgdG8gZGlzYWJsaW5nIHRoZSBQTEwsIHdoaWNoIGlz
IGFscmVhZHkgaGFuZGxlZCBieQ0KPiArCQkgKiBpY2xfY2RjbGtfcGxsX2Rpc2FibGUoKS4gIEhl
cmUgd2UgYXJlIGp1c3QgbWFraW5nIHN1cmUNCj4gKwkJICogd2Uga2VlcCB0aGUgZXhwZWN0ZWQg
dmFsdWUuDQo+ICsJCSAqLw0KPiArCQlpZiAoaW50ZWxfZGlzcGxheV93YShkaXNwbGF5LCAxMzAx
MjM5NjYxNCkgJiYgdmNvID09IDApDQo+ICsJCQl2YWwgfD0gTURDTEtfU09VUkNFX1NFTF9DRDJY
Q0xLOw0KPiArCQllbHNlDQo+ICsJCQl2YWwgfD0geGUybHBkX21kY2xrX3NvdXJjZV9zZWwoZGlz
cGxheSk7DQo+ICsJfSBlbHNlIHsNCj4gIAkJdmFsIHw9IHNrbF9jZGNsa19kZWNpbWFsKGNkY2xr
KTsNCj4gKwl9DQo+IA0KPiAgCXJldHVybiB2YWw7DQo+ICB9DQo+IGRpZmYgLS1naXQgYS9kcml2
ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2Rpc3BsYXlfd2EuYw0KPiBiL2RyaXZlcnMv
Z3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfZGlzcGxheV93YS5jDQo+IGluZGV4IDJiMzYwNDQ3
ZTkyZS4uNTgxZDk0M2I5YmRjIDEwMDY0NA0KPiAtLS0gYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9k
aXNwbGF5L2ludGVsX2Rpc3BsYXlfd2EuYw0KPiArKysgYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9k
aXNwbGF5L2ludGVsX2Rpc3BsYXlfd2EuYw0KPiBAQCAtNjIsNiArNjIsOCBAQCBzdGF0aWMgYm9v
bCBpbnRlbF9kaXNwbGF5X25lZWRzX3dhXzE2MDI1NTczNTc1KHN0cnVjdA0KPiBpbnRlbF9kaXNw
bGF5ICpkaXNwbGF5KSAgYm9vbCBfX2ludGVsX2Rpc3BsYXlfd2Eoc3RydWN0IGludGVsX2Rpc3Bs
YXkgKmRpc3BsYXksDQo+IGVudW0gaW50ZWxfZGlzcGxheV93YSB3YSwgY29uc3QgY2hhciAqbmFt
ZSkgIHsNCj4gIAlzd2l0Y2ggKHdhKSB7DQo+ICsJY2FzZSBJTlRFTF9ESVNQTEFZX1dBXzEzMDEy
Mzk2NjE0Og0KPiArCQlyZXR1cm4gRElTUExBWV9WRVJ4MTAwKGRpc3BsYXkpID09IDMwMDA7DQo+
ICAJY2FzZSBJTlRFTF9ESVNQTEFZX1dBXzE0MDExNTAzMTE3Og0KPiAgCQlyZXR1cm4gRElTUExB
WV9WRVIoZGlzcGxheSkgPT0gMTM7DQo+ICAJY2FzZSBJTlRFTF9ESVNQTEFZX1dBXzE0MDI1NzY5
OTc4Og0KPiBkaWZmIC0tZ2l0IGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9k
aXNwbGF5X3dhLmgNCj4gYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2Rpc3Bs
YXlfd2EuaA0KPiBpbmRleCA1NmI1ODZlMzgzMDYuLjQwZjk4OWYxOWRmMSAxMDA2NDQNCj4gLS0t
IGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9kaXNwbGF5X3dhLmgNCj4gKysr
IGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9kaXNwbGF5X3dhLmgNCj4gQEAg
LTI3LDYgKzI3LDcgQEAgYm9vbCBpbnRlbF9kaXNwbGF5X25lZWRzX3dhXzE2MDIzNTg4MzQwKHN0
cnVjdA0KPiBpbnRlbF9kaXNwbGF5ICpkaXNwbGF5KTsNCj4gICAqIG51bWJlci4NCj4gICAqLw0K
PiAgZW51bSBpbnRlbF9kaXNwbGF5X3dhIHsNCj4gKwlJTlRFTF9ESVNQTEFZX1dBXzEzMDEyMzk2
NjE0LA0KPiAgCUlOVEVMX0RJU1BMQVlfV0FfMTQwMTE1MDMxMTcsDQo+ICAJSU5URUxfRElTUExB
WV9XQV8xNDAyNTc2OTk3OCwNCj4gIAlJTlRFTF9ESVNQTEFZX1dBXzE1MDE4MzI2NTA2LA0KPiAN
Cj4gLS0NCj4gMi41Mi4wDQoNCg==
